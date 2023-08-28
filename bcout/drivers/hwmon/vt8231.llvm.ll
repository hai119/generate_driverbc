; ModuleID = '../bcout/drivers/hwmon/vt8231.llvm.bc'
source_filename = "drivers/hwmon/vt8231.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_sm_vt8231_init6:\09\09\09"
module asm ".long\09sm_vt8231_init - .\09\09\09"
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
%struct.vt8231_data = type { i16, i8*, %struct.mutex, %struct.device*, i8, i64, [6 x i8], [6 x i8], [6 x i8], [6 x i16], [6 x i8], [6 x i8], [2 x i8], [2 x i8], [2 x i8], i16, i8 }

@__param_str_force_addr = internal constant [18 x i8] c"vt8231.force_addr\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@force_addr = internal global i32 0, align 4, !dbg !3937
@__param_force_addr = internal constant %struct.kernel_param { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__param_str_force_addr, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @force_addr to i8*) } }, section "__param", align 8, !dbg !3848
@__UNIQUE_ID_force_addrtype238 = internal constant [31 x i8] c"vt8231.parmtype=force_addr:int\00", section ".modinfo", align 1, !dbg !3900
@__UNIQUE_ID_force_addr239 = internal constant [66 x i8] c"vt8231.parm=force_addr:Initialize the base address of the sensors\00", section ".modinfo", align 1, !dbg !3905
@vt8231_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([2 x %struct.pci_device_id], [2 x %struct.pci_device_id]* @vt8231_pci_ids, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @vt8231_pci_probe, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !4246
@s_bridge = internal global %struct.pci_dev* null, align 8, !dbg !3980
@pdev = internal global %struct.platform_device* null, align 8, !dbg !3939
@vt8231_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @vt8231_probe, i32 (%struct.platform_device*)* @vt8231_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !4251
@__UNIQUE_ID_author292 = internal constant [54 x i8] c"vt8231.author=Roger Lucas <vt8231@hiddenengine.co.uk>\00", section ".modinfo", align 1, !dbg !3910
@__UNIQUE_ID_description293 = internal constant [34 x i8] c"vt8231.description=VT8231 sensors\00", section ".modinfo", align 1, !dbg !3915
@__UNIQUE_ID_file294 = internal constant [33 x i8] c"vt8231.file=drivers/hwmon/vt8231\00", section ".modinfo", align 1, !dbg !3920
@__UNIQUE_ID_license295 = internal constant [19 x i8] c"vt8231.license=GPL\00", section ".modinfo", align 1, !dbg !3925
@__UNIQUE_ID___addressable_sm_vt8231_init296 = internal global i8* bitcast (i32 ()* @sm_vt8231_init to i8*), section ".discard.addressable", align 8, !dbg !3930
@__exitcall_sm_vt8231_exit = internal global void ()* @sm_vt8231_exit, section ".exitcall.exit", align 8, !dbg !3932
@.str = private unnamed_addr constant [7 x i8] c"vt8231\00", align 1
@vt8231_pci_ids = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4358, i32 33333, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4248
@.str.1 = private unnamed_addr constant [26 x i8] c"Forcing ISA address 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"base address not set - upgrade BIOS or use force_addr=0xaddr\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"enabling sensors\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\013vt8231: Device allocation failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"\013vt8231: Device resource addition failed (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"\013vt8231: Device addition failed (%d)\0A\00", align 1
@ioport_resource = external dso_local global %struct.resource, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"Region 0x%lx-0x%lx already in use!\0A\00", align 1
@vt8231_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4272
@.str.8 = private unnamed_addr constant [19 x i8] c"&data->update_lock\00", align 1
@vt8231_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([11 x %struct.attribute*], [11 x %struct.attribute*]* @vt8231_attributes, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !4275
@vt8231_group_temps = internal constant [6 x %struct.attribute_group] [%struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([6 x [5 x %struct.attribute*]], [6 x [5 x %struct.attribute*]]* @vt8231_attributes_temps, i32 0, i32 0, i32 0), %struct.bin_attribute** null }, %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [5 x %struct.attribute*]]* @vt8231_attributes_temps to i8*), i64 40) to %struct.attribute**), %struct.bin_attribute** null }, %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [5 x %struct.attribute*]]* @vt8231_attributes_temps to i8*), i64 80) to %struct.attribute**), %struct.bin_attribute** null }, %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [5 x %struct.attribute*]]* @vt8231_attributes_temps to i8*), i64 120) to %struct.attribute**), %struct.bin_attribute** null }, %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [5 x %struct.attribute*]]* @vt8231_attributes_temps to i8*), i64 160) to %struct.attribute**), %struct.bin_attribute** null }, %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [5 x %struct.attribute*]]* @vt8231_attributes_temps to i8*), i64 200) to %struct.attribute**), %struct.bin_attribute** null }], align 16, !dbg !4316
@vt8231_group_volts = internal constant [6 x %struct.attribute_group] [%struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([6 x [5 x %struct.attribute*]], [6 x [5 x %struct.attribute*]]* @vt8231_attributes_volts, i32 0, i32 0, i32 0), %struct.bin_attribute** null }, %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [5 x %struct.attribute*]]* @vt8231_attributes_volts to i8*), i64 40) to %struct.attribute**), %struct.bin_attribute** null }, %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [5 x %struct.attribute*]]* @vt8231_attributes_volts to i8*), i64 80) to %struct.attribute**), %struct.bin_attribute** null }, %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [5 x %struct.attribute*]]* @vt8231_attributes_volts to i8*), i64 120) to %struct.attribute**), %struct.bin_attribute** null }, %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [5 x %struct.attribute*]]* @vt8231_attributes_volts to i8*), i64 160) to %struct.attribute**), %struct.bin_attribute** null }, %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [5 x %struct.attribute*]]* @vt8231_attributes_volts to i8*), i64 200) to %struct.attribute**), %struct.bin_attribute** null }], align 16, !dbg !4372
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@vt8231_attributes = internal global [11 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan1_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan2_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan1_min, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan2_min, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan1_div, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan2_div, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan1_alarm, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan2_alarm, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_alarms, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_name, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !4277
@sensor_dev_attr_fan1_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @fan_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 0 }, align 8, !dbg !4282
@sensor_dev_attr_fan2_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @fan_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 1 }, align 8, !dbg !4298
@sensor_dev_attr_fan1_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @fan_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_min_store }, i32 0 }, align 8, !dbg !4300
@sensor_dev_attr_fan2_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @fan_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_min_store }, i32 1 }, align 8, !dbg !4302
@sensor_dev_attr_fan1_div = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @fan_div_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_div_store }, i32 0 }, align 8, !dbg !4304
@sensor_dev_attr_fan2_div = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @fan_div_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_div_store }, i32 1 }, align 8, !dbg !4306
@sensor_dev_attr_fan1_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 6 }, align 8, !dbg !4308
@sensor_dev_attr_fan2_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 7 }, align 8, !dbg !4310
@dev_attr_alarms = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarms_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4312
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @name_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4314
@.str.9 = private unnamed_addr constant [11 x i8] c"fan1_input\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@jiffies = external dso_local global i64, align 8
@regvolt = internal constant [6 x i8] c"!\22#$%&", align 1, !dbg !4284
@regvoltmin = internal constant [6 x i8] c">,.024", align 1, !dbg !4288
@regvoltmax = internal constant [6 x i8] c"=+-/13", align 1, !dbg !4290
@regtemp = internal constant [6 x i8] c"\1F!\22#$%", align 1, !dbg !4292
@regtempmax = internal constant [6 x i8] c"9=+-/1", align 1, !dbg !4294
@regtempmin = internal constant [6 x i8] c":>,.02", align 1, !dbg !4296
@.str.11 = private unnamed_addr constant [11 x i8] c"fan2_input\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"fan1_min\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"fan2_min\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"fan1_div\00", align 1
@.str.15 = private unnamed_addr constant [62 x i8] c"fan_div value %ld not supported. Choose one of 1, 2, 4 or 8!\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"fan2_div\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"fan1_alarm\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"fan2_alarm\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"alarms\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@vt8231_attributes_temps = internal global [6 x [5 x %struct.attribute*]] [[5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_temp1_input, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_temp1_max_hyst, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_temp1_max, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp1_alarm, i32 0, i32 0, i32 0), %struct.attribute* null], [5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp2_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp2_max_hyst, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp2_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp2_alarm, i32 0, i32 0, i32 0), %struct.attribute* null], [5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp3_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp3_max_hyst, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp3_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp3_alarm, i32 0, i32 0, i32 0), %struct.attribute* null], [5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp4_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp4_max_hyst, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp4_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp4_alarm, i32 0, i32 0, i32 0), %struct.attribute* null], [5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp5_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp5_max_hyst, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp5_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp5_alarm, i32 0, i32 0, i32 0), %struct.attribute* null], [5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp6_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp6_max_hyst, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp6_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp6_alarm, i32 0, i32 0, i32 0), %struct.attribute* null]], align 16, !dbg !4319
@dev_attr_temp1_input = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp1_input_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4324
@dev_attr_temp1_max_hyst = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp1_max_hyst_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp1_max_hyst_store }, align 8, !dbg !4326
@dev_attr_temp1_max = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp1_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp1_max_store }, align 8, !dbg !4328
@sensor_dev_attr_temp1_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 4 }, align 8, !dbg !4330
@sensor_dev_attr_temp2_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 1 }, align 8, !dbg !4332
@sensor_dev_attr_temp2_max_hyst = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_min_store }, i32 1 }, align 8, !dbg !4334
@sensor_dev_attr_temp2_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_max_store }, i32 1 }, align 8, !dbg !4336
@sensor_dev_attr_temp2_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 11 }, align 8, !dbg !4338
@sensor_dev_attr_temp3_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 2 }, align 8, !dbg !4340
@sensor_dev_attr_temp3_max_hyst = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_min_store }, i32 2 }, align 8, !dbg !4342
@sensor_dev_attr_temp3_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_max_store }, i32 2 }, align 8, !dbg !4344
@sensor_dev_attr_temp3_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 0 }, align 8, !dbg !4346
@sensor_dev_attr_temp4_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 3 }, align 8, !dbg !4348
@sensor_dev_attr_temp4_max_hyst = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_min_store }, i32 3 }, align 8, !dbg !4350
@sensor_dev_attr_temp4_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_max_store }, i32 3 }, align 8, !dbg !4352
@sensor_dev_attr_temp4_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 1 }, align 8, !dbg !4354
@sensor_dev_attr_temp5_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 4 }, align 8, !dbg !4356
@sensor_dev_attr_temp5_max_hyst = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_min_store }, i32 4 }, align 8, !dbg !4358
@sensor_dev_attr_temp5_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_max_store }, i32 4 }, align 8, !dbg !4360
@sensor_dev_attr_temp5_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 3 }, align 8, !dbg !4362
@sensor_dev_attr_temp6_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 5 }, align 8, !dbg !4364
@sensor_dev_attr_temp6_max_hyst = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_min_store }, i32 5 }, align 8, !dbg !4366
@sensor_dev_attr_temp6_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_max_store }, i32 5 }, align 8, !dbg !4368
@sensor_dev_attr_temp6_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 8 }, align 8, !dbg !4370
@.str.23 = private unnamed_addr constant [12 x i8] c"temp1_input\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"temp1_max_hyst\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"temp1_max\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"temp1_alarm\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"temp2_input\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"temp2_max_hyst\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"temp2_max\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"temp2_alarm\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"temp3_input\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"temp3_max_hyst\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"temp3_max\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"temp3_alarm\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"temp4_input\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"temp4_max_hyst\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"temp4_max\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"temp4_alarm\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"temp5_input\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"temp5_max_hyst\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"temp5_max\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"temp5_alarm\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"temp6_input\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"temp6_max_hyst\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"temp6_max\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"temp6_alarm\00", align 1
@vt8231_attributes_volts = internal global [6 x [5 x %struct.attribute*]] [[5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in0_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in0_min, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in0_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in0_alarm, i32 0, i32 0, i32 0), %struct.attribute* null], [5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in1_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in1_min, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in1_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in1_alarm, i32 0, i32 0, i32 0), %struct.attribute* null], [5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in2_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in2_min, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in2_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in2_alarm, i32 0, i32 0, i32 0), %struct.attribute* null], [5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in3_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in3_min, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in3_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in3_alarm, i32 0, i32 0, i32 0), %struct.attribute* null], [5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in4_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in4_min, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in4_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in4_alarm, i32 0, i32 0, i32 0), %struct.attribute* null], [5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_in5_input, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_in5_min, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_in5_max, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in5_alarm, i32 0, i32 0, i32 0), %struct.attribute* null]], align 16, !dbg !4374
@sensor_dev_attr_in0_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 0 }, align 8, !dbg !4376
@sensor_dev_attr_in0_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_min_store }, i32 0 }, align 8, !dbg !4378
@sensor_dev_attr_in0_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_max_store }, i32 0 }, align 8, !dbg !4380
@sensor_dev_attr_in0_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 11 }, align 8, !dbg !4382
@sensor_dev_attr_in1_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 1 }, align 8, !dbg !4384
@sensor_dev_attr_in1_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_min_store }, i32 1 }, align 8, !dbg !4386
@sensor_dev_attr_in1_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_max_store }, i32 1 }, align 8, !dbg !4388
@sensor_dev_attr_in1_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 0 }, align 8, !dbg !4390
@sensor_dev_attr_in2_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 2 }, align 8, !dbg !4392
@sensor_dev_attr_in2_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_min_store }, i32 2 }, align 8, !dbg !4394
@sensor_dev_attr_in2_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_max_store }, i32 2 }, align 8, !dbg !4396
@sensor_dev_attr_in2_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 1 }, align 8, !dbg !4398
@sensor_dev_attr_in3_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 3 }, align 8, !dbg !4400
@sensor_dev_attr_in3_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_min_store }, i32 3 }, align 8, !dbg !4402
@sensor_dev_attr_in3_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_max_store }, i32 3 }, align 8, !dbg !4404
@sensor_dev_attr_in3_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 3 }, align 8, !dbg !4406
@sensor_dev_attr_in4_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 4 }, align 8, !dbg !4408
@sensor_dev_attr_in4_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_min_store }, i32 4 }, align 8, !dbg !4410
@sensor_dev_attr_in4_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_max_store }, i32 4 }, align 8, !dbg !4412
@sensor_dev_attr_in4_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 8 }, align 8, !dbg !4414
@dev_attr_in5_input = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in5_input_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4416
@dev_attr_in5_min = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in5_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in5_min_store }, align 8, !dbg !4418
@dev_attr_in5_max = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in5_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in5_max_store }, align 8, !dbg !4420
@sensor_dev_attr_in5_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 2 }, align 8, !dbg !4422
@.str.47 = private unnamed_addr constant [10 x i8] c"in0_input\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"in0_min\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"in0_max\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"in0_alarm\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"in1_input\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"in1_min\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"in1_max\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"in1_alarm\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"in2_input\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"in2_min\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"in2_max\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"in2_alarm\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"in3_input\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"in3_min\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"in3_max\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"in3_alarm\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"in4_input\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"in4_min\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"in4_max\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"in4_alarm\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"in5_input\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"in5_min\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"in5_max\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"in5_alarm\00", align 1
@llvm.used = appending global [10 x i8*] [i8* bitcast (%struct.kernel_param* @__param_force_addr to i8*), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__UNIQUE_ID_force_addrtype238, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__UNIQUE_ID_force_addr239, i32 0, i32 0), i8* bitcast (void ()* @sm_vt8231_exit to i8*), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__UNIQUE_ID_author292, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_description293, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__UNIQUE_ID_file294, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license295, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_sm_vt8231_init296 to i8*), i8* bitcast (void ()** @__exitcall_sm_vt8231_exit to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @sm_vt8231_exit() #0 section ".exit.text" !dbg !4432 {
entry:
  call void @pci_unregister_driver(%struct.pci_driver* @vt8231_pci_driver) #5, !dbg !4433
  %0 = load %struct.pci_dev*, %struct.pci_dev** @s_bridge, align 8, !dbg !4434
  %cmp = icmp ne %struct.pci_dev* %0, null, !dbg !4436
  br i1 %cmp, label %if.then, label %if.end, !dbg !4437

if.then:                                          ; preds = %entry
  %1 = load %struct.platform_device*, %struct.platform_device** @pdev, align 8, !dbg !4438
  call void @platform_device_unregister(%struct.platform_device* %1) #5, !dbg !4440
  call void @platform_driver_unregister(%struct.platform_driver* @vt8231_driver) #5, !dbg !4441
  %2 = load %struct.pci_dev*, %struct.pci_dev** @s_bridge, align 8, !dbg !4442
  call void @pci_dev_put(%struct.pci_dev* %2) #5, !dbg !4443
  store %struct.pci_dev* null, %struct.pci_dev** @s_bridge, align 8, !dbg !4444
  br label %if.end, !dbg !4445

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4446
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
define internal i32 @sm_vt8231_init() #0 section ".init.text" !dbg !4447 {
entry:
  %call = call i32 @__pci_register_driver(%struct.pci_driver* @vt8231_pci_driver, %struct.module* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #5, !dbg !4450
  ret i32 %call, !dbg !4451
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vt8231_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !4452 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  %address = alloca i16, align 2
  %val = alloca i16, align 2
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4453, metadata !DIExpression()), !dbg !4454
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !4455, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.declare(metadata i16* %address, metadata !4457, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.declare(metadata i16* %val, metadata !4459, metadata !DIExpression()), !dbg !4460
  %0 = load i32, i32* @force_addr, align 4, !dbg !4461
  %tobool = icmp ne i32 %0, 0, !dbg !4461
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4463

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @force_addr, align 4, !dbg !4464
  %and = and i32 %1, 65280, !dbg !4466
  %conv = trunc i32 %and to i16, !dbg !4464
  store i16 %conv, i16* %address, align 2, !dbg !4467
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4468
  %dev1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 41, !dbg !4468
  %3 = load i16, i16* %address, align 2, !dbg !4468
  %conv2 = zext i16 %3 to i32, !dbg !4468
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %conv2) #6, !dbg !4468
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4469
  %5 = load i16, i16* %address, align 2, !dbg !4471
  %conv3 = zext i16 %5 to i32, !dbg !4471
  %or = or i32 %conv3, 1, !dbg !4472
  %conv4 = trunc i32 %or to i16, !dbg !4471
  %call = call i32 @pci_write_config_word(%struct.pci_dev* %4, i32 112, i16 zeroext %conv4) #5, !dbg !4473
  %cmp = icmp ne i32 0, %call, !dbg !4474
  br i1 %cmp, label %if.then6, label %if.end, !dbg !4475

if.then6:                                         ; preds = %if.then
  store i32 -19, i32* %retval, align 4, !dbg !4476
  br label %return, !dbg !4476

if.end:                                           ; preds = %if.then
  br label %if.end7, !dbg !4477

if.end7:                                          ; preds = %if.end, %entry
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4478
  %call8 = call i32 @pci_read_config_word(%struct.pci_dev* %6, i32 112, i16* %val) #5, !dbg !4479
  %7 = load i16, i16* %val, align 2, !dbg !4480
  %conv9 = zext i16 %7 to i32, !dbg !4480
  %cmp10 = icmp eq i32 %conv9, 65535, !dbg !4482
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !4483

if.then12:                                        ; preds = %if.end7
  store i32 -19, i32* %retval, align 4, !dbg !4484
  br label %return, !dbg !4484

if.end13:                                         ; preds = %if.end7
  %8 = load i16, i16* %val, align 2, !dbg !4485
  %conv14 = zext i16 %8 to i32, !dbg !4485
  %and15 = and i32 %conv14, -128, !dbg !4486
  %conv16 = trunc i32 %and15 to i16, !dbg !4485
  store i16 %conv16, i16* %address, align 2, !dbg !4487
  %9 = load i16, i16* %address, align 2, !dbg !4488
  %conv17 = zext i16 %9 to i32, !dbg !4488
  %cmp18 = icmp eq i32 %conv17, 0, !dbg !4490
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !4491

if.then20:                                        ; preds = %if.end13
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4492
  %dev21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 41, !dbg !4492
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev21, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4492
  store i32 -19, i32* %retval, align 4, !dbg !4494
  br label %return, !dbg !4494

if.end22:                                         ; preds = %if.end13
  %11 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4495
  %call23 = call i32 @pci_read_config_word(%struct.pci_dev* %11, i32 116, i16* %val) #5, !dbg !4496
  %12 = load i16, i16* %val, align 2, !dbg !4497
  %conv24 = zext i16 %12 to i32, !dbg !4497
  %cmp25 = icmp eq i32 %conv24, 65535, !dbg !4499
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !4500

if.then27:                                        ; preds = %if.end22
  store i32 -19, i32* %retval, align 4, !dbg !4501
  br label %return, !dbg !4501

if.end28:                                         ; preds = %if.end22
  %13 = load i16, i16* %val, align 2, !dbg !4502
  %conv29 = zext i16 %13 to i32, !dbg !4502
  %and30 = and i32 %conv29, 1, !dbg !4504
  %tobool31 = icmp ne i32 %and30, 0, !dbg !4504
  br i1 %tobool31, label %if.end42, label %if.then32, !dbg !4505

if.then32:                                        ; preds = %if.end28
  %14 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4506
  %dev33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 41, !dbg !4506
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4506
  %15 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4508
  %16 = load i16, i16* %val, align 2, !dbg !4510
  %conv34 = zext i16 %16 to i32, !dbg !4510
  %or35 = or i32 %conv34, 1, !dbg !4511
  %conv36 = trunc i32 %or35 to i16, !dbg !4510
  %call37 = call i32 @pci_write_config_word(%struct.pci_dev* %15, i32 116, i16 zeroext %conv36) #5, !dbg !4512
  %cmp38 = icmp ne i32 0, %call37, !dbg !4513
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !4514

if.then40:                                        ; preds = %if.then32
  store i32 -19, i32* %retval, align 4, !dbg !4515
  br label %return, !dbg !4515

if.end41:                                         ; preds = %if.then32
  br label %if.end42, !dbg !4516

if.end42:                                         ; preds = %if.end41, %if.end28
  %call43 = call i32 @__platform_driver_register(%struct.platform_driver* @vt8231_driver, %struct.module* null) #5, !dbg !4517
  %tobool44 = icmp ne i32 %call43, 0, !dbg !4517
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !4519

if.then45:                                        ; preds = %if.end42
  br label %exit, !dbg !4520

if.end46:                                         ; preds = %if.end42
  %17 = load i16, i16* %address, align 2, !dbg !4521
  %call47 = call i32 @vt8231_device_add(i16 zeroext %17) #5, !dbg !4523
  %tobool48 = icmp ne i32 %call47, 0, !dbg !4523
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !4524

if.then49:                                        ; preds = %if.end46
  br label %exit_unregister, !dbg !4525

if.end50:                                         ; preds = %if.end46
  %18 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4526
  %call51 = call %struct.pci_dev* @pci_dev_get(%struct.pci_dev* %18) #5, !dbg !4527
  store %struct.pci_dev* %call51, %struct.pci_dev** @s_bridge, align 8, !dbg !4528
  store i32 -19, i32* %retval, align 4, !dbg !4529
  br label %return, !dbg !4529

exit_unregister:                                  ; preds = %if.then49
  call void @llvm.dbg.label(metadata !4530), !dbg !4531
  call void @platform_driver_unregister(%struct.platform_driver* @vt8231_driver) #5, !dbg !4532
  br label %exit, !dbg !4532

exit:                                             ; preds = %exit_unregister, %if.then45
  call void @llvm.dbg.label(metadata !4533), !dbg !4534
  store i32 -19, i32* %retval, align 4, !dbg !4535
  br label %return, !dbg !4535

return:                                           ; preds = %exit, %if.end50, %if.then40, %if.then27, %if.then20, %if.then12, %if.then6
  %19 = load i32, i32* %retval, align 4, !dbg !4536
  ret i32 %19, !dbg !4536
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i16 zeroext) #1

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i16*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vt8231_device_add(i16 zeroext %address) #2 !dbg !4537 {
entry:
  %retval = alloca i32, align 4
  %address.addr = alloca i16, align 2
  %res = alloca %struct.resource, align 8
  %err = alloca i32, align 4
  store i16 %address, i16* %address.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %address.addr, metadata !4540, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.declare(metadata %struct.resource* %res, metadata !4542, metadata !DIExpression()), !dbg !4543
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 0, !dbg !4544
  %0 = load i16, i16* %address.addr, align 2, !dbg !4545
  %conv = zext i16 %0 to i64, !dbg !4545
  store i64 %conv, i64* %start, align 8, !dbg !4544
  %end = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 1, !dbg !4544
  %1 = load i16, i16* %address.addr, align 2, !dbg !4546
  %conv1 = zext i16 %1 to i32, !dbg !4546
  %add = add i32 %conv1, 128, !dbg !4547
  %sub = sub i32 %add, 1, !dbg !4548
  %conv2 = sext i32 %sub to i64, !dbg !4546
  store i64 %conv2, i64* %end, align 8, !dbg !4544
  %name = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 2, !dbg !4544
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %name, align 8, !dbg !4544
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 3, !dbg !4544
  store i64 256, i64* %flags, align 8, !dbg !4544
  %desc = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 4, !dbg !4544
  store i64 0, i64* %desc, align 8, !dbg !4544
  %parent = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 5, !dbg !4544
  store %struct.resource* null, %struct.resource** %parent, align 8, !dbg !4544
  %sibling = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 6, !dbg !4544
  store %struct.resource* null, %struct.resource** %sibling, align 8, !dbg !4544
  %child = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 7, !dbg !4544
  store %struct.resource* null, %struct.resource** %child, align 8, !dbg !4544
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4549, metadata !DIExpression()), !dbg !4550
  %call = call i32 @acpi_check_resource_conflict(%struct.resource* %res) #5, !dbg !4551
  store i32 %call, i32* %err, align 4, !dbg !4552
  %2 = load i32, i32* %err, align 4, !dbg !4553
  %tobool = icmp ne i32 %2, 0, !dbg !4553
  br i1 %tobool, label %if.then, label %if.end, !dbg !4555

if.then:                                          ; preds = %entry
  br label %exit, !dbg !4556

if.end:                                           ; preds = %entry
  %3 = load i16, i16* %address.addr, align 2, !dbg !4557
  %conv3 = zext i16 %3 to i32, !dbg !4557
  %call4 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %conv3) #5, !dbg !4558
  store %struct.platform_device* %call4, %struct.platform_device** @pdev, align 8, !dbg !4559
  %4 = load %struct.platform_device*, %struct.platform_device** @pdev, align 8, !dbg !4560
  %tobool5 = icmp ne %struct.platform_device* %4, null, !dbg !4560
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !4562

if.then6:                                         ; preds = %if.end
  store i32 -12, i32* %err, align 4, !dbg !4563
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !4565
  br label %exit, !dbg !4566

if.end8:                                          ; preds = %if.end
  %5 = load %struct.platform_device*, %struct.platform_device** @pdev, align 8, !dbg !4567
  %call9 = call i32 @platform_device_add_resources(%struct.platform_device* %5, %struct.resource* %res, i32 1) #5, !dbg !4568
  store i32 %call9, i32* %err, align 4, !dbg !4569
  %6 = load i32, i32* %err, align 4, !dbg !4570
  %tobool10 = icmp ne i32 %6, 0, !dbg !4570
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !4572

if.then11:                                        ; preds = %if.end8
  %7 = load i32, i32* %err, align 4, !dbg !4573
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %7) #6, !dbg !4573
  br label %exit_device_put, !dbg !4575

if.end13:                                         ; preds = %if.end8
  %8 = load %struct.platform_device*, %struct.platform_device** @pdev, align 8, !dbg !4576
  %call14 = call i32 @platform_device_add(%struct.platform_device* %8) #5, !dbg !4577
  store i32 %call14, i32* %err, align 4, !dbg !4578
  %9 = load i32, i32* %err, align 4, !dbg !4579
  %tobool15 = icmp ne i32 %9, 0, !dbg !4579
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !4581

if.then16:                                        ; preds = %if.end13
  %10 = load i32, i32* %err, align 4, !dbg !4582
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %10) #6, !dbg !4582
  br label %exit_device_put, !dbg !4584

if.end18:                                         ; preds = %if.end13
  store i32 0, i32* %retval, align 4, !dbg !4585
  br label %return, !dbg !4585

exit_device_put:                                  ; preds = %if.then16, %if.then11
  call void @llvm.dbg.label(metadata !4586), !dbg !4587
  %11 = load %struct.platform_device*, %struct.platform_device** @pdev, align 8, !dbg !4588
  call void @platform_device_put(%struct.platform_device* %11) #5, !dbg !4589
  br label %exit, !dbg !4589

exit:                                             ; preds = %exit_device_put, %if.then6, %if.then
  call void @llvm.dbg.label(metadata !4590), !dbg !4591
  %12 = load i32, i32* %err, align 4, !dbg !4592
  store i32 %12, i32* %retval, align 4, !dbg !4593
  br label %return, !dbg !4593

return:                                           ; preds = %exit, %if.end18
  %13 = load i32, i32* %retval, align 4, !dbg !4594
  ret i32 %13, !dbg !4594
}

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @pci_dev_get(%struct.pci_dev*) #1

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
define internal i32 @vt8231_probe(%struct.platform_device* %pdev) #2 !dbg !4274 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %res = alloca %struct.resource*, align 8
  %data = alloca %struct.vt8231_data*, align 8
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !4595, metadata !DIExpression()), !dbg !4596
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !4597, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !4599, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4624, metadata !DIExpression()), !dbg !4625
  store i32 0, i32* %err, align 4, !dbg !4625
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4626, metadata !DIExpression()), !dbg !4627
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4628
  %call = call %struct.resource* @platform_get_resource(%struct.platform_device* %0, i32 256, i32 0) #5, !dbg !4629
  store %struct.resource* %call, %struct.resource** %res, align 8, !dbg !4630
  %1 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4631
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %1, i32 0, i32 3, !dbg !4631
  %2 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4631
  %start = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 0, !dbg !4631
  %3 = load i64, i64* %start, align 8, !dbg !4631
  %4 = load i8*, i8** getelementptr inbounds (%struct.platform_driver, %struct.platform_driver* @vt8231_driver, i32 0, i32 5, i32 0), align 8, !dbg !4631
  %call1 = call %struct.resource* @__devm_request_region(%struct.device* %dev, %struct.resource* @ioport_resource, i64 %3, i64 128, i8* %4) #5, !dbg !4631
  %tobool = icmp ne %struct.resource* %call1, null, !dbg !4631
  br i1 %tobool, label %if.end, label %if.then, !dbg !4633

if.then:                                          ; preds = %entry
  %5 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4634
  %dev2 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 3, !dbg !4634
  %6 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4634
  %start3 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0, !dbg !4634
  %7 = load i64, i64* %start3, align 8, !dbg !4634
  %8 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4634
  %end = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 1, !dbg !4634
  %9 = load i64, i64* %end, align 8, !dbg !4634
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i64 %7, i64 %9) #6, !dbg !4634
  store i32 -19, i32* %retval, align 4, !dbg !4636
  br label %return, !dbg !4636

if.end:                                           ; preds = %entry
  %10 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4637
  %dev4 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 3, !dbg !4638
  %call5 = call i8* @devm_kzalloc(%struct.device* %dev4, i64 120, i32 3264) #5, !dbg !4639
  %11 = bitcast i8* %call5 to %struct.vt8231_data*, !dbg !4639
  store %struct.vt8231_data* %11, %struct.vt8231_data** %data, align 8, !dbg !4640
  %12 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !4641
  %tobool6 = icmp ne %struct.vt8231_data* %12, null, !dbg !4641
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4643

if.then7:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4644
  br label %return, !dbg !4644

if.end8:                                          ; preds = %if.end
  %13 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4645
  %14 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !4646
  %15 = bitcast %struct.vt8231_data* %14 to i8*, !dbg !4646
  call void @platform_set_drvdata(%struct.platform_device* %13, i8* %15) #5, !dbg !4647
  %16 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4648
  %start9 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 0, !dbg !4649
  %17 = load i64, i64* %start9, align 8, !dbg !4649
  %conv = trunc i64 %17 to i16, !dbg !4648
  %18 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !4650
  %addr = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %18, i32 0, i32 0, !dbg !4651
  store i16 %conv, i16* %addr, align 8, !dbg !4652
  %19 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !4653
  %name = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %19, i32 0, i32 1, !dbg !4654
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %name, align 8, !dbg !4655
  br label %do.body, !dbg !4656

do.body:                                          ; preds = %if.end8
  %20 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !4657
  %update_lock = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %20, i32 0, i32 2, !dbg !4657
  call void @__mutex_init(%struct.mutex* %update_lock, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), %struct.lock_class_key* @vt8231_probe.__key) #5, !dbg !4657
  br label %do.end, !dbg !4657

do.end:                                           ; preds = %do.body
  %21 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !4659
  call void @vt8231_init_device(%struct.vt8231_data* %21) #5, !dbg !4660
  %22 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4661
  %dev10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 3, !dbg !4662
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev10, i32 0, i32 0, !dbg !4663
  %call11 = call i32 @sysfs_create_group(%struct.kobject* %kobj, %struct.attribute_group* @vt8231_group) #5, !dbg !4664
  store i32 %call11, i32* %err, align 4, !dbg !4665
  %23 = load i32, i32* %err, align 4, !dbg !4666
  %tobool12 = icmp ne i32 %23, 0, !dbg !4666
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4668

if.then13:                                        ; preds = %do.end
  %24 = load i32, i32* %err, align 4, !dbg !4669
  store i32 %24, i32* %retval, align 4, !dbg !4670
  br label %return, !dbg !4670

if.end14:                                         ; preds = %do.end
  %25 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !4671
  %call15 = call i32 @vt8231_read_value(%struct.vt8231_data* %25, i8 zeroext 74) #5, !dbg !4672
  %conv16 = trunc i32 %call15 to i8, !dbg !4672
  %26 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !4673
  %uch_config = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %26, i32 0, i32 16, !dbg !4674
  store i8 %conv16, i8* %uch_config, align 2, !dbg !4675
  store i32 0, i32* %i, align 4, !dbg !4676
  br label %for.cond, !dbg !4678

for.cond:                                         ; preds = %for.inc, %if.end14
  %27 = load i32, i32* %i, align 4, !dbg !4679
  %conv17 = sext i32 %27 to i64, !dbg !4679
  %cmp = icmp ult i64 %conv17, 6, !dbg !4681
  br i1 %cmp, label %for.body, label %for.end, !dbg !4682

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4, !dbg !4683
  %cmp19 = icmp eq i32 %28, 0, !dbg !4683
  br i1 %cmp19, label %cond.true, label %cond.false, !dbg !4686

cond.true:                                        ; preds = %for.body
  br i1 true, label %if.then24, label %if.end31, !dbg !4683

cond.false:                                       ; preds = %for.body
  %29 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !4683
  %uch_config21 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %29, i32 0, i32 16, !dbg !4683
  %30 = load i8, i8* %uch_config21, align 2, !dbg !4683
  %conv22 = zext i8 %30 to i32, !dbg !4683
  %31 = load i32, i32* %i, align 4, !dbg !4683
  %add = add i32 %31, 1, !dbg !4683
  %shr = ashr i32 %conv22, %add, !dbg !4683
  %and = and i32 %shr, 1, !dbg !4683
  %tobool23 = icmp ne i32 %and, 0, !dbg !4683
  br i1 %tobool23, label %if.then24, label %if.end31, !dbg !4686

if.then24:                                        ; preds = %cond.false, %cond.true
  %32 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4687
  %dev25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 3, !dbg !4689
  %kobj26 = getelementptr inbounds %struct.device, %struct.device* %dev25, i32 0, i32 0, !dbg !4690
  %33 = load i32, i32* %i, align 4, !dbg !4691
  %idxprom = sext i32 %33 to i64, !dbg !4692
  %arrayidx = getelementptr [6 x %struct.attribute_group], [6 x %struct.attribute_group]* @vt8231_group_temps, i64 0, i64 %idxprom, !dbg !4692
  %call27 = call i32 @sysfs_create_group(%struct.kobject* %kobj26, %struct.attribute_group* %arrayidx) #5, !dbg !4693
  store i32 %call27, i32* %err, align 4, !dbg !4694
  %34 = load i32, i32* %err, align 4, !dbg !4695
  %tobool28 = icmp ne i32 %34, 0, !dbg !4695
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !4697

if.then29:                                        ; preds = %if.then24
  br label %exit_remove_files, !dbg !4698

if.end30:                                         ; preds = %if.then24
  br label %if.end31, !dbg !4699

if.end31:                                         ; preds = %if.end30, %cond.false, %cond.true
  br label %for.inc, !dbg !4700

for.inc:                                          ; preds = %if.end31
  %35 = load i32, i32* %i, align 4, !dbg !4701
  %inc = add i32 %35, 1, !dbg !4701
  store i32 %inc, i32* %i, align 4, !dbg !4701
  br label %for.cond, !dbg !4702, !llvm.loop !4703

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !4705
  br label %for.cond32, !dbg !4707

for.cond32:                                       ; preds = %for.inc57, %for.end
  %36 = load i32, i32* %i, align 4, !dbg !4708
  %conv33 = sext i32 %36 to i64, !dbg !4708
  %cmp34 = icmp ult i64 %conv33, 6, !dbg !4710
  br i1 %cmp34, label %for.body36, label %for.end59, !dbg !4711

for.body36:                                       ; preds = %for.cond32
  %37 = load i32, i32* %i, align 4, !dbg !4712
  %cmp37 = icmp eq i32 %37, 5, !dbg !4712
  br i1 %cmp37, label %cond.true39, label %cond.false40, !dbg !4715

cond.true39:                                      ; preds = %for.body36
  br i1 true, label %if.then47, label %if.end56, !dbg !4712

cond.false40:                                     ; preds = %for.body36
  %38 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !4712
  %uch_config41 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %38, i32 0, i32 16, !dbg !4712
  %39 = load i8, i8* %uch_config41, align 2, !dbg !4712
  %conv42 = zext i8 %39 to i32, !dbg !4712
  %40 = load i32, i32* %i, align 4, !dbg !4712
  %add43 = add i32 %40, 2, !dbg !4712
  %shr44 = ashr i32 %conv42, %add43, !dbg !4712
  %and45 = and i32 %shr44, 1, !dbg !4712
  %tobool46 = icmp ne i32 %and45, 0, !dbg !4712
  br i1 %tobool46, label %if.end56, label %if.then47, !dbg !4715

if.then47:                                        ; preds = %cond.false40, %cond.true39
  %41 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4716
  %dev48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 3, !dbg !4718
  %kobj49 = getelementptr inbounds %struct.device, %struct.device* %dev48, i32 0, i32 0, !dbg !4719
  %42 = load i32, i32* %i, align 4, !dbg !4720
  %idxprom50 = sext i32 %42 to i64, !dbg !4721
  %arrayidx51 = getelementptr [6 x %struct.attribute_group], [6 x %struct.attribute_group]* @vt8231_group_volts, i64 0, i64 %idxprom50, !dbg !4721
  %call52 = call i32 @sysfs_create_group(%struct.kobject* %kobj49, %struct.attribute_group* %arrayidx51) #5, !dbg !4722
  store i32 %call52, i32* %err, align 4, !dbg !4723
  %43 = load i32, i32* %err, align 4, !dbg !4724
  %tobool53 = icmp ne i32 %43, 0, !dbg !4724
  br i1 %tobool53, label %if.then54, label %if.end55, !dbg !4726

if.then54:                                        ; preds = %if.then47
  br label %exit_remove_files, !dbg !4727

if.end55:                                         ; preds = %if.then47
  br label %if.end56, !dbg !4728

if.end56:                                         ; preds = %if.end55, %cond.false40, %cond.true39
  br label %for.inc57, !dbg !4729

for.inc57:                                        ; preds = %if.end56
  %44 = load i32, i32* %i, align 4, !dbg !4730
  %inc58 = add i32 %44, 1, !dbg !4730
  store i32 %inc58, i32* %i, align 4, !dbg !4730
  br label %for.cond32, !dbg !4731, !llvm.loop !4732

for.end59:                                        ; preds = %for.cond32
  %45 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4734
  %dev60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 3, !dbg !4735
  %call61 = call %struct.device* @hwmon_device_register(%struct.device* %dev60) #5, !dbg !4736
  %46 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !4737
  %hwmon_dev = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %46, i32 0, i32 3, !dbg !4738
  store %struct.device* %call61, %struct.device** %hwmon_dev, align 8, !dbg !4739
  %47 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !4740
  %hwmon_dev62 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %47, i32 0, i32 3, !dbg !4742
  %48 = load %struct.device*, %struct.device** %hwmon_dev62, align 8, !dbg !4742
  %49 = bitcast %struct.device* %48 to i8*, !dbg !4740
  %call63 = call zeroext i1 @IS_ERR(i8* %49) #5, !dbg !4743
  br i1 %call63, label %if.then64, label %if.end68, !dbg !4744

if.then64:                                        ; preds = %for.end59
  %50 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !4745
  %hwmon_dev65 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %50, i32 0, i32 3, !dbg !4747
  %51 = load %struct.device*, %struct.device** %hwmon_dev65, align 8, !dbg !4747
  %52 = bitcast %struct.device* %51 to i8*, !dbg !4745
  %call66 = call i64 @PTR_ERR(i8* %52) #5, !dbg !4748
  %conv67 = trunc i64 %call66 to i32, !dbg !4748
  store i32 %conv67, i32* %err, align 4, !dbg !4749
  br label %exit_remove_files, !dbg !4750

if.end68:                                         ; preds = %for.end59
  store i32 0, i32* %retval, align 4, !dbg !4751
  br label %return, !dbg !4751

exit_remove_files:                                ; preds = %if.then64, %if.then54, %if.then29
  call void @llvm.dbg.label(metadata !4752), !dbg !4753
  store i32 0, i32* %i, align 4, !dbg !4754
  br label %for.cond69, !dbg !4756

for.cond69:                                       ; preds = %for.inc78, %exit_remove_files
  %53 = load i32, i32* %i, align 4, !dbg !4757
  %conv70 = sext i32 %53 to i64, !dbg !4757
  %cmp71 = icmp ult i64 %conv70, 6, !dbg !4759
  br i1 %cmp71, label %for.body73, label %for.end80, !dbg !4760

for.body73:                                       ; preds = %for.cond69
  %54 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4761
  %dev74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 3, !dbg !4762
  %kobj75 = getelementptr inbounds %struct.device, %struct.device* %dev74, i32 0, i32 0, !dbg !4763
  %55 = load i32, i32* %i, align 4, !dbg !4764
  %idxprom76 = sext i32 %55 to i64, !dbg !4765
  %arrayidx77 = getelementptr [6 x %struct.attribute_group], [6 x %struct.attribute_group]* @vt8231_group_volts, i64 0, i64 %idxprom76, !dbg !4765
  call void @sysfs_remove_group(%struct.kobject* %kobj75, %struct.attribute_group* %arrayidx77) #5, !dbg !4766
  br label %for.inc78, !dbg !4766

for.inc78:                                        ; preds = %for.body73
  %56 = load i32, i32* %i, align 4, !dbg !4767
  %inc79 = add i32 %56, 1, !dbg !4767
  store i32 %inc79, i32* %i, align 4, !dbg !4767
  br label %for.cond69, !dbg !4768, !llvm.loop !4769

for.end80:                                        ; preds = %for.cond69
  store i32 0, i32* %i, align 4, !dbg !4771
  br label %for.cond81, !dbg !4773

for.cond81:                                       ; preds = %for.inc90, %for.end80
  %57 = load i32, i32* %i, align 4, !dbg !4774
  %conv82 = sext i32 %57 to i64, !dbg !4774
  %cmp83 = icmp ult i64 %conv82, 6, !dbg !4776
  br i1 %cmp83, label %for.body85, label %for.end92, !dbg !4777

for.body85:                                       ; preds = %for.cond81
  %58 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4778
  %dev86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 3, !dbg !4779
  %kobj87 = getelementptr inbounds %struct.device, %struct.device* %dev86, i32 0, i32 0, !dbg !4780
  %59 = load i32, i32* %i, align 4, !dbg !4781
  %idxprom88 = sext i32 %59 to i64, !dbg !4782
  %arrayidx89 = getelementptr [6 x %struct.attribute_group], [6 x %struct.attribute_group]* @vt8231_group_temps, i64 0, i64 %idxprom88, !dbg !4782
  call void @sysfs_remove_group(%struct.kobject* %kobj87, %struct.attribute_group* %arrayidx89) #5, !dbg !4783
  br label %for.inc90, !dbg !4783

for.inc90:                                        ; preds = %for.body85
  %60 = load i32, i32* %i, align 4, !dbg !4784
  %inc91 = add i32 %60, 1, !dbg !4784
  store i32 %inc91, i32* %i, align 4, !dbg !4784
  br label %for.cond81, !dbg !4785, !llvm.loop !4786

for.end92:                                        ; preds = %for.cond81
  %61 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4788
  %dev93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 3, !dbg !4789
  %kobj94 = getelementptr inbounds %struct.device, %struct.device* %dev93, i32 0, i32 0, !dbg !4790
  call void @sysfs_remove_group(%struct.kobject* %kobj94, %struct.attribute_group* @vt8231_group) #5, !dbg !4791
  %62 = load i32, i32* %err, align 4, !dbg !4792
  store i32 %62, i32* %retval, align 4, !dbg !4793
  br label %return, !dbg !4793

return:                                           ; preds = %for.end92, %if.end68, %if.then13, %if.then7, %if.then
  %63 = load i32, i32* %retval, align 4, !dbg !4794
  ret i32 %63, !dbg !4794
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vt8231_remove(%struct.platform_device* %pdev) #2 !dbg !4795 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data = alloca %struct.vt8231_data*, align 8
  %i = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !4796, metadata !DIExpression()), !dbg !4797
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !4798, metadata !DIExpression()), !dbg !4799
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4800
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #5, !dbg !4801
  %1 = bitcast i8* %call to %struct.vt8231_data*, !dbg !4801
  store %struct.vt8231_data* %1, %struct.vt8231_data** %data, align 8, !dbg !4799
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4802, metadata !DIExpression()), !dbg !4803
  %2 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !4804
  %hwmon_dev = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %2, i32 0, i32 3, !dbg !4805
  %3 = load %struct.device*, %struct.device** %hwmon_dev, align 8, !dbg !4805
  call void @hwmon_device_unregister(%struct.device* %3) #5, !dbg !4806
  store i32 0, i32* %i, align 4, !dbg !4807
  br label %for.cond, !dbg !4809

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !4810
  %conv = sext i32 %4 to i64, !dbg !4810
  %cmp = icmp ult i64 %conv, 6, !dbg !4812
  br i1 %cmp, label %for.body, label %for.end, !dbg !4813

for.body:                                         ; preds = %for.cond
  %5 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4814
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 3, !dbg !4815
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 0, !dbg !4816
  %6 = load i32, i32* %i, align 4, !dbg !4817
  %idxprom = sext i32 %6 to i64, !dbg !4818
  %arrayidx = getelementptr [6 x %struct.attribute_group], [6 x %struct.attribute_group]* @vt8231_group_volts, i64 0, i64 %idxprom, !dbg !4818
  call void @sysfs_remove_group(%struct.kobject* %kobj, %struct.attribute_group* %arrayidx) #5, !dbg !4819
  br label %for.inc, !dbg !4819

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !4820
  %inc = add i32 %7, 1, !dbg !4820
  store i32 %inc, i32* %i, align 4, !dbg !4820
  br label %for.cond, !dbg !4821, !llvm.loop !4822

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !4824
  br label %for.cond2, !dbg !4826

for.cond2:                                        ; preds = %for.inc11, %for.end
  %8 = load i32, i32* %i, align 4, !dbg !4827
  %conv3 = sext i32 %8 to i64, !dbg !4827
  %cmp4 = icmp ult i64 %conv3, 6, !dbg !4829
  br i1 %cmp4, label %for.body6, label %for.end13, !dbg !4830

for.body6:                                        ; preds = %for.cond2
  %9 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4831
  %dev7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 3, !dbg !4832
  %kobj8 = getelementptr inbounds %struct.device, %struct.device* %dev7, i32 0, i32 0, !dbg !4833
  %10 = load i32, i32* %i, align 4, !dbg !4834
  %idxprom9 = sext i32 %10 to i64, !dbg !4835
  %arrayidx10 = getelementptr [6 x %struct.attribute_group], [6 x %struct.attribute_group]* @vt8231_group_temps, i64 0, i64 %idxprom9, !dbg !4835
  call void @sysfs_remove_group(%struct.kobject* %kobj8, %struct.attribute_group* %arrayidx10) #5, !dbg !4836
  br label %for.inc11, !dbg !4836

for.inc11:                                        ; preds = %for.body6
  %11 = load i32, i32* %i, align 4, !dbg !4837
  %inc12 = add i32 %11, 1, !dbg !4837
  store i32 %inc12, i32* %i, align 4, !dbg !4837
  br label %for.cond2, !dbg !4838, !llvm.loop !4839

for.end13:                                        ; preds = %for.cond2
  %12 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4841
  %dev14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 3, !dbg !4842
  %kobj15 = getelementptr inbounds %struct.device, %struct.device* %dev14, i32 0, i32 0, !dbg !4843
  call void @sysfs_remove_group(%struct.kobject* %kobj15, %struct.attribute_group* @vt8231_group) #5, !dbg !4844
  ret i32 0, !dbg !4845
}

; Function Attrs: noredzone
declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

; Function Attrs: noredzone
declare dso_local %struct.resource* @__devm_request_region(%struct.device*, %struct.resource*, i64, i64, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !4846 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4849, metadata !DIExpression()), !dbg !4850
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4851, metadata !DIExpression()), !dbg !4852
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !4853, metadata !DIExpression()), !dbg !4854
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4855
  %1 = load i64, i64* %size.addr, align 8, !dbg !4856
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !4857
  %or = or i32 %2, 256, !dbg !4858
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #5, !dbg !4859
  ret i8* %call, !dbg !4860
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !4861 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !4864, metadata !DIExpression()), !dbg !4865
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4866, metadata !DIExpression()), !dbg !4867
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4868
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !4869
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4870
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #5, !dbg !4871
  ret void, !dbg !4872
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vt8231_init_device(%struct.vt8231_data* %data) #2 !dbg !4873 {
entry:
  %data.addr = alloca %struct.vt8231_data*, align 8
  store %struct.vt8231_data* %data, %struct.vt8231_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data.addr, metadata !4876, metadata !DIExpression()), !dbg !4877
  %0 = load %struct.vt8231_data*, %struct.vt8231_data** %data.addr, align 8, !dbg !4878
  call void @vt8231_write_value(%struct.vt8231_data* %0, i8 zeroext 75, i8 zeroext 0) #5, !dbg !4879
  %1 = load %struct.vt8231_data*, %struct.vt8231_data** %data.addr, align 8, !dbg !4880
  call void @vt8231_write_value(%struct.vt8231_data* %1, i8 zeroext 76, i8 zeroext 0) #5, !dbg !4881
  ret void, !dbg !4882
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_group(%struct.kobject*, %struct.attribute_group*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vt8231_read_value(%struct.vt8231_data* %data, i8 zeroext %reg) #2 !dbg !4883 {
entry:
  %data.addr = alloca %struct.vt8231_data*, align 8
  %reg.addr = alloca i8, align 1
  store %struct.vt8231_data* %data, %struct.vt8231_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data.addr, metadata !4886, metadata !DIExpression()), !dbg !4887
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4888, metadata !DIExpression()), !dbg !4889
  %0 = load %struct.vt8231_data*, %struct.vt8231_data** %data.addr, align 8, !dbg !4890
  %addr = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %0, i32 0, i32 0, !dbg !4891
  %1 = load i16, i16* %addr, align 8, !dbg !4891
  %conv = zext i16 %1 to i32, !dbg !4890
  %2 = load i8, i8* %reg.addr, align 1, !dbg !4892
  %conv1 = zext i8 %2 to i32, !dbg !4892
  %add = add i32 %conv, %conv1, !dbg !4893
  %call = call zeroext i8 @inb_p(i32 %add) #5, !dbg !4894
  %conv2 = zext i8 %call to i32, !dbg !4894
  ret i32 %conv2, !dbg !4895
}

; Function Attrs: noredzone
declare dso_local %struct.device* @hwmon_device_register(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !4896 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4900, metadata !DIExpression()), !dbg !4901
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4902
  %1 = ptrtoint i8* %0 to i64, !dbg !4902
  %2 = inttoptr i64 %1 to i8*, !dbg !4902
  %3 = ptrtoint i8* %2 to i64, !dbg !4902
  %cmp = icmp uge i64 %3, -4095, !dbg !4902
  %lnot = xor i1 %cmp, true, !dbg !4902
  %lnot1 = xor i1 %lnot, true, !dbg !4902
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4902
  %conv = sext i32 %lnot.ext to i64, !dbg !4902
  %tobool = icmp ne i64 %conv, 0, !dbg !4902
  ret i1 %tobool, !dbg !4903
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !4904 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4907, metadata !DIExpression()), !dbg !4908
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4909
  %1 = ptrtoint i8* %0 to i64, !dbg !4910
  ret i64 %1, !dbg !4911
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_group(%struct.kobject*, %struct.attribute_group*) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !4912 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4915, metadata !DIExpression()), !dbg !4916
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4917, metadata !DIExpression()), !dbg !4918
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4919
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4920
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !4921
  store i8* %0, i8** %driver_data, align 8, !dbg !4922
  ret void, !dbg !4923
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vt8231_write_value(%struct.vt8231_data* %data, i8 zeroext %reg, i8 zeroext %value) #2 !dbg !4924 {
entry:
  %data.addr = alloca %struct.vt8231_data*, align 8
  %reg.addr = alloca i8, align 1
  %value.addr = alloca i8, align 1
  store %struct.vt8231_data* %data, %struct.vt8231_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data.addr, metadata !4927, metadata !DIExpression()), !dbg !4928
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4929, metadata !DIExpression()), !dbg !4930
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !4931, metadata !DIExpression()), !dbg !4932
  %0 = load i8, i8* %value.addr, align 1, !dbg !4933
  %1 = load %struct.vt8231_data*, %struct.vt8231_data** %data.addr, align 8, !dbg !4934
  %addr = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %1, i32 0, i32 0, !dbg !4935
  %2 = load i16, i16* %addr, align 8, !dbg !4935
  %conv = zext i16 %2 to i32, !dbg !4934
  %3 = load i8, i8* %reg.addr, align 1, !dbg !4936
  %conv1 = zext i8 %3 to i32, !dbg !4936
  %add = add i32 %conv, %conv1, !dbg !4937
  call void @outb_p(i8 zeroext %0, i32 %add) #5, !dbg !4938
  ret void, !dbg !4939
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb_p(i8 zeroext %value, i32 %port) #2 !dbg !4940 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !4944, metadata !DIExpression()), !dbg !4945
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4946, metadata !DIExpression()), !dbg !4945
  %0 = load i8, i8* %value.addr, align 1, !dbg !4945
  %1 = load i32, i32* %port.addr, align 4, !dbg !4945
  call void @outb(i8 zeroext %0, i32 %1) #5, !dbg !4945
  call void @slow_down_io() #5, !dbg !4945
  ret void, !dbg !4945
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb(i8 zeroext %value, i32 %port) #2 !dbg !4947 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !4948, metadata !DIExpression()), !dbg !4949
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4950, metadata !DIExpression()), !dbg !4949
  %0 = load i8, i8* %value.addr, align 1, !dbg !4949
  %1 = load i32, i32* %port.addr, align 4, !dbg !4949
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i32 %1) #7, !dbg !4949, !srcloc !4951
  ret void, !dbg !4949
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @slow_down_io() #2 !dbg !4952 {
entry:
  %0 = load void ()*, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 0), align 8, !dbg !4954
  call void %0() #5, !dbg !4955
  ret void, !dbg !4956
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @fan_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !4957 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %sensor_attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %data = alloca %struct.vt8231_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4958, metadata !DIExpression()), !dbg !4959
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4960, metadata !DIExpression()), !dbg !4961
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4962, metadata !DIExpression()), !dbg !4963
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %sensor_attr, metadata !4964, metadata !DIExpression()), !dbg !4965
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4966, metadata !DIExpression()), !dbg !4968
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !4968
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !4968
  store i8* %1, i8** %__mptr, align 8, !dbg !4968
  br label %do.body, !dbg !4968

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4969

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4968
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4968
  %3 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !4968
  store %struct.sensor_device_attribute* %3, %struct.sensor_device_attribute** %tmp, align 8, !dbg !4969
  %4 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !4968
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !4965
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !4971, metadata !DIExpression()), !dbg !4972
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !4973
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %5, i32 0, i32 1, !dbg !4974
  %6 = load i32, i32* %index, align 8, !dbg !4974
  store i32 %6, i32* %nr, align 4, !dbg !4972
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !4975, metadata !DIExpression()), !dbg !4976
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4977
  %call = call %struct.vt8231_data* @vt8231_update_device(%struct.device* %7) #5, !dbg !4978
  store %struct.vt8231_data* %call, %struct.vt8231_data** %data, align 8, !dbg !4976
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !4979
  %9 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !4980
  %fan = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %9, i32 0, i32 12, !dbg !4980
  %10 = load i32, i32* %nr, align 4, !dbg !4980
  %idxprom = sext i32 %10 to i64, !dbg !4980
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %fan, i64 0, i64 %idxprom, !dbg !4980
  %11 = load i8, i8* %arrayidx, align 1, !dbg !4980
  %conv = zext i8 %11 to i32, !dbg !4980
  %cmp = icmp eq i32 %conv, 0, !dbg !4980
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4980

cond.true:                                        ; preds = %do.end
  br label %cond.end, !dbg !4980

cond.false:                                       ; preds = %do.end
  %12 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !4980
  %fan2 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %12, i32 0, i32 12, !dbg !4980
  %13 = load i32, i32* %nr, align 4, !dbg !4980
  %idxprom3 = sext i32 %13 to i64, !dbg !4980
  %arrayidx4 = getelementptr [2 x i8], [2 x i8]* %fan2, i64 0, i64 %idxprom3, !dbg !4980
  %14 = load i8, i8* %arrayidx4, align 1, !dbg !4980
  %conv5 = zext i8 %14 to i32, !dbg !4980
  %15 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !4980
  %fan_div = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %15, i32 0, i32 14, !dbg !4980
  %16 = load i32, i32* %nr, align 4, !dbg !4980
  %idxprom6 = sext i32 %16 to i64, !dbg !4980
  %arrayidx7 = getelementptr [2 x i8], [2 x i8]* %fan_div, i64 0, i64 %idxprom6, !dbg !4980
  %17 = load i8, i8* %arrayidx7, align 1, !dbg !4980
  %conv8 = zext i8 %17 to i32, !dbg !4980
  %shl = shl i32 1, %conv8, !dbg !4980
  %mul = mul i32 %conv5, %shl, !dbg !4980
  %div = sdiv i32 1310720, %mul, !dbg !4980
  br label %cond.end, !dbg !4980

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %div, %cond.false ], !dbg !4980
  %call9 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %cond) #5, !dbg !4981
  %conv10 = sext i32 %call9 to i64, !dbg !4981
  ret i64 %conv10, !dbg !4982
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.vt8231_data* @vt8231_update_device(%struct.device* %dev) #2 !dbg !4983 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data = alloca %struct.vt8231_data*, align 8
  %i = alloca i32, align 4
  %low = alloca i16, align 2
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4986, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !4988, metadata !DIExpression()), !dbg !4989
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4990
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !4991
  %1 = bitcast i8* %call to %struct.vt8231_data*, !dbg !4991
  store %struct.vt8231_data* %1, %struct.vt8231_data** %data, align 8, !dbg !4989
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4992, metadata !DIExpression()), !dbg !4993
  call void @llvm.dbg.declare(metadata i16* %low, metadata !4994, metadata !DIExpression()), !dbg !4995
  %2 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !4996
  %update_lock = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %2, i32 0, i32 2, !dbg !4997
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !4998
  %3 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !4999
  %last_updated = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %3, i32 0, i32 5, !dbg !4999
  %4 = load i64, i64* %last_updated, align 8, !dbg !4999
  %add = add i64 %4, 250, !dbg !4999
  %add1 = add i64 %add, 125, !dbg !4999
  %5 = load volatile i64, i64* @jiffies, align 8, !dbg !4999
  %sub = sub i64 %add1, %5, !dbg !4999
  %cmp = icmp slt i64 %sub, 0, !dbg !4999
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5001

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5002
  %valid = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %6, i32 0, i32 4, !dbg !5003
  %7 = load i8, i8* %valid, align 8, !dbg !5003
  %tobool = icmp ne i8 %7, 0, !dbg !5002
  br i1 %tobool, label %if.end166, label %if.then, !dbg !5004

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %i, align 4, !dbg !5005
  br label %for.cond, !dbg !5008

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4, !dbg !5009
  %cmp2 = icmp slt i32 %8, 6, !dbg !5011
  br i1 %cmp2, label %for.body, label %for.end, !dbg !5012

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !5013
  %cmp3 = icmp eq i32 %9, 5, !dbg !5013
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !5016

cond.true:                                        ; preds = %for.body
  br i1 true, label %if.then6, label %if.end, !dbg !5013

cond.false:                                       ; preds = %for.body
  %10 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5013
  %uch_config = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %10, i32 0, i32 16, !dbg !5013
  %11 = load i8, i8* %uch_config, align 2, !dbg !5013
  %conv = zext i8 %11 to i32, !dbg !5013
  %12 = load i32, i32* %i, align 4, !dbg !5013
  %add4 = add i32 %12, 2, !dbg !5013
  %shr = ashr i32 %conv, %add4, !dbg !5013
  %and = and i32 %shr, 1, !dbg !5013
  %tobool5 = icmp ne i32 %and, 0, !dbg !5013
  br i1 %tobool5, label %if.end, label %if.then6, !dbg !5016

if.then6:                                         ; preds = %cond.false, %cond.true
  %13 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5017
  %14 = load i32, i32* %i, align 4, !dbg !5019
  %idxprom = sext i32 %14 to i64, !dbg !5020
  %arrayidx = getelementptr [6 x i8], [6 x i8]* @regvolt, i64 0, i64 %idxprom, !dbg !5020
  %15 = load i8, i8* %arrayidx, align 1, !dbg !5020
  %call7 = call i32 @vt8231_read_value(%struct.vt8231_data* %13, i8 zeroext %15) #5, !dbg !5021
  %conv8 = trunc i32 %call7 to i8, !dbg !5021
  %16 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5022
  %in = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %16, i32 0, i32 6, !dbg !5023
  %17 = load i32, i32* %i, align 4, !dbg !5024
  %idxprom9 = sext i32 %17 to i64, !dbg !5022
  %arrayidx10 = getelementptr [6 x i8], [6 x i8]* %in, i64 0, i64 %idxprom9, !dbg !5022
  store i8 %conv8, i8* %arrayidx10, align 1, !dbg !5025
  %18 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5026
  %19 = load i32, i32* %i, align 4, !dbg !5027
  %idxprom11 = sext i32 %19 to i64, !dbg !5028
  %arrayidx12 = getelementptr [6 x i8], [6 x i8]* @regvoltmin, i64 0, i64 %idxprom11, !dbg !5028
  %20 = load i8, i8* %arrayidx12, align 1, !dbg !5028
  %call13 = call i32 @vt8231_read_value(%struct.vt8231_data* %18, i8 zeroext %20) #5, !dbg !5029
  %conv14 = trunc i32 %call13 to i8, !dbg !5029
  %21 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5030
  %in_min = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %21, i32 0, i32 8, !dbg !5031
  %22 = load i32, i32* %i, align 4, !dbg !5032
  %idxprom15 = sext i32 %22 to i64, !dbg !5030
  %arrayidx16 = getelementptr [6 x i8], [6 x i8]* %in_min, i64 0, i64 %idxprom15, !dbg !5030
  store i8 %conv14, i8* %arrayidx16, align 1, !dbg !5033
  %23 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5034
  %24 = load i32, i32* %i, align 4, !dbg !5035
  %idxprom17 = sext i32 %24 to i64, !dbg !5036
  %arrayidx18 = getelementptr [6 x i8], [6 x i8]* @regvoltmax, i64 0, i64 %idxprom17, !dbg !5036
  %25 = load i8, i8* %arrayidx18, align 1, !dbg !5036
  %call19 = call i32 @vt8231_read_value(%struct.vt8231_data* %23, i8 zeroext %25) #5, !dbg !5037
  %conv20 = trunc i32 %call19 to i8, !dbg !5037
  %26 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5038
  %in_max = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %26, i32 0, i32 7, !dbg !5039
  %27 = load i32, i32* %i, align 4, !dbg !5040
  %idxprom21 = sext i32 %27 to i64, !dbg !5038
  %arrayidx22 = getelementptr [6 x i8], [6 x i8]* %in_max, i64 0, i64 %idxprom21, !dbg !5038
  store i8 %conv20, i8* %arrayidx22, align 1, !dbg !5041
  br label %if.end, !dbg !5042

if.end:                                           ; preds = %if.then6, %cond.false, %cond.true
  br label %for.inc, !dbg !5043

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %i, align 4, !dbg !5044
  %inc = add i32 %28, 1, !dbg !5044
  store i32 %inc, i32* %i, align 4, !dbg !5044
  br label %for.cond, !dbg !5045, !llvm.loop !5046

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !5048
  br label %for.cond23, !dbg !5050

for.cond23:                                       ; preds = %for.inc39, %for.end
  %29 = load i32, i32* %i, align 4, !dbg !5051
  %cmp24 = icmp slt i32 %29, 2, !dbg !5053
  br i1 %cmp24, label %for.body26, label %for.end41, !dbg !5054

for.body26:                                       ; preds = %for.cond23
  %30 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5055
  %31 = load i32, i32* %i, align 4, !dbg !5057
  %add27 = add i32 41, %31, !dbg !5057
  %conv28 = trunc i32 %add27 to i8, !dbg !5057
  %call29 = call i32 @vt8231_read_value(%struct.vt8231_data* %30, i8 zeroext %conv28) #5, !dbg !5058
  %conv30 = trunc i32 %call29 to i8, !dbg !5058
  %32 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5059
  %fan = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %32, i32 0, i32 12, !dbg !5060
  %33 = load i32, i32* %i, align 4, !dbg !5061
  %idxprom31 = sext i32 %33 to i64, !dbg !5059
  %arrayidx32 = getelementptr [2 x i8], [2 x i8]* %fan, i64 0, i64 %idxprom31, !dbg !5059
  store i8 %conv30, i8* %arrayidx32, align 1, !dbg !5062
  %34 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5063
  %35 = load i32, i32* %i, align 4, !dbg !5064
  %add33 = add i32 59, %35, !dbg !5064
  %conv34 = trunc i32 %add33 to i8, !dbg !5064
  %call35 = call i32 @vt8231_read_value(%struct.vt8231_data* %34, i8 zeroext %conv34) #5, !dbg !5065
  %conv36 = trunc i32 %call35 to i8, !dbg !5065
  %36 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5066
  %fan_min = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %36, i32 0, i32 13, !dbg !5067
  %37 = load i32, i32* %i, align 4, !dbg !5068
  %idxprom37 = sext i32 %37 to i64, !dbg !5066
  %arrayidx38 = getelementptr [2 x i8], [2 x i8]* %fan_min, i64 0, i64 %idxprom37, !dbg !5066
  store i8 %conv36, i8* %arrayidx38, align 1, !dbg !5069
  br label %for.inc39, !dbg !5070

for.inc39:                                        ; preds = %for.body26
  %38 = load i32, i32* %i, align 4, !dbg !5071
  %inc40 = add i32 %38, 1, !dbg !5071
  store i32 %inc40, i32* %i, align 4, !dbg !5071
  br label %for.cond23, !dbg !5072, !llvm.loop !5073

for.end41:                                        ; preds = %for.cond23
  %39 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5075
  %call42 = call i32 @vt8231_read_value(%struct.vt8231_data* %39, i8 zeroext 73) #5, !dbg !5076
  %conv43 = trunc i32 %call42 to i16, !dbg !5076
  store i16 %conv43, i16* %low, align 2, !dbg !5077
  %40 = load i16, i16* %low, align 2, !dbg !5078
  %conv44 = zext i16 %40 to i32, !dbg !5078
  %shr45 = ashr i32 %conv44, 6, !dbg !5079
  %41 = load i16, i16* %low, align 2, !dbg !5080
  %conv46 = zext i16 %41 to i32, !dbg !5080
  %and47 = and i32 %conv46, 48, !dbg !5081
  %shr48 = ashr i32 %and47, 2, !dbg !5082
  %or = or i32 %shr45, %shr48, !dbg !5083
  %42 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5084
  %call49 = call i32 @vt8231_read_value(%struct.vt8231_data* %42, i8 zeroext 77) #5, !dbg !5085
  %shl = shl i32 %call49, 4, !dbg !5086
  %or50 = or i32 %or, %shl, !dbg !5087
  %conv51 = trunc i32 %or50 to i16, !dbg !5088
  store i16 %conv51, i16* %low, align 2, !dbg !5089
  store i32 0, i32* %i, align 4, !dbg !5090
  br label %for.cond52, !dbg !5092

for.cond52:                                       ; preds = %for.inc91, %for.end41
  %43 = load i32, i32* %i, align 4, !dbg !5093
  %cmp53 = icmp slt i32 %43, 6, !dbg !5095
  br i1 %cmp53, label %for.body55, label %for.end93, !dbg !5096

for.body55:                                       ; preds = %for.cond52
  %44 = load i32, i32* %i, align 4, !dbg !5097
  %cmp56 = icmp eq i32 %44, 0, !dbg !5097
  br i1 %cmp56, label %cond.true58, label %cond.false59, !dbg !5100

cond.true58:                                      ; preds = %for.body55
  br i1 true, label %if.then66, label %if.end90, !dbg !5097

cond.false59:                                     ; preds = %for.body55
  %45 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5097
  %uch_config60 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %45, i32 0, i32 16, !dbg !5097
  %46 = load i8, i8* %uch_config60, align 2, !dbg !5097
  %conv61 = zext i8 %46 to i32, !dbg !5097
  %47 = load i32, i32* %i, align 4, !dbg !5097
  %add62 = add i32 %47, 1, !dbg !5097
  %shr63 = ashr i32 %conv61, %add62, !dbg !5097
  %and64 = and i32 %shr63, 1, !dbg !5097
  %tobool65 = icmp ne i32 %and64, 0, !dbg !5097
  br i1 %tobool65, label %if.then66, label %if.end90, !dbg !5100

if.then66:                                        ; preds = %cond.false59, %cond.true58
  %48 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5101
  %49 = load i32, i32* %i, align 4, !dbg !5103
  %idxprom67 = sext i32 %49 to i64, !dbg !5104
  %arrayidx68 = getelementptr [6 x i8], [6 x i8]* @regtemp, i64 0, i64 %idxprom67, !dbg !5104
  %50 = load i8, i8* %arrayidx68, align 1, !dbg !5104
  %call69 = call i32 @vt8231_read_value(%struct.vt8231_data* %48, i8 zeroext %50) #5, !dbg !5105
  %shl70 = shl i32 %call69, 2, !dbg !5106
  %51 = load i16, i16* %low, align 2, !dbg !5107
  %conv71 = zext i16 %51 to i32, !dbg !5107
  %52 = load i32, i32* %i, align 4, !dbg !5108
  %mul = mul i32 2, %52, !dbg !5109
  %shr72 = ashr i32 %conv71, %mul, !dbg !5110
  %and73 = and i32 %shr72, 3, !dbg !5111
  %or74 = or i32 %shl70, %and73, !dbg !5112
  %conv75 = trunc i32 %or74 to i16, !dbg !5113
  %53 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5114
  %temp = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %53, i32 0, i32 9, !dbg !5115
  %54 = load i32, i32* %i, align 4, !dbg !5116
  %idxprom76 = sext i32 %54 to i64, !dbg !5114
  %arrayidx77 = getelementptr [6 x i16], [6 x i16]* %temp, i64 0, i64 %idxprom76, !dbg !5114
  store i16 %conv75, i16* %arrayidx77, align 2, !dbg !5117
  %55 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5118
  %56 = load i32, i32* %i, align 4, !dbg !5119
  %idxprom78 = sext i32 %56 to i64, !dbg !5120
  %arrayidx79 = getelementptr [6 x i8], [6 x i8]* @regtempmax, i64 0, i64 %idxprom78, !dbg !5120
  %57 = load i8, i8* %arrayidx79, align 1, !dbg !5120
  %call80 = call i32 @vt8231_read_value(%struct.vt8231_data* %55, i8 zeroext %57) #5, !dbg !5121
  %conv81 = trunc i32 %call80 to i8, !dbg !5121
  %58 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5122
  %temp_max = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %58, i32 0, i32 10, !dbg !5123
  %59 = load i32, i32* %i, align 4, !dbg !5124
  %idxprom82 = sext i32 %59 to i64, !dbg !5122
  %arrayidx83 = getelementptr [6 x i8], [6 x i8]* %temp_max, i64 0, i64 %idxprom82, !dbg !5122
  store i8 %conv81, i8* %arrayidx83, align 1, !dbg !5125
  %60 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5126
  %61 = load i32, i32* %i, align 4, !dbg !5127
  %idxprom84 = sext i32 %61 to i64, !dbg !5128
  %arrayidx85 = getelementptr [6 x i8], [6 x i8]* @regtempmin, i64 0, i64 %idxprom84, !dbg !5128
  %62 = load i8, i8* %arrayidx85, align 1, !dbg !5128
  %call86 = call i32 @vt8231_read_value(%struct.vt8231_data* %60, i8 zeroext %62) #5, !dbg !5129
  %conv87 = trunc i32 %call86 to i8, !dbg !5129
  %63 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5130
  %temp_min = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %63, i32 0, i32 11, !dbg !5131
  %64 = load i32, i32* %i, align 4, !dbg !5132
  %idxprom88 = sext i32 %64 to i64, !dbg !5130
  %arrayidx89 = getelementptr [6 x i8], [6 x i8]* %temp_min, i64 0, i64 %idxprom88, !dbg !5130
  store i8 %conv87, i8* %arrayidx89, align 1, !dbg !5133
  br label %if.end90, !dbg !5134

if.end90:                                         ; preds = %if.then66, %cond.false59, %cond.true58
  br label %for.inc91, !dbg !5135

for.inc91:                                        ; preds = %if.end90
  %65 = load i32, i32* %i, align 4, !dbg !5136
  %inc92 = add i32 %65, 1, !dbg !5136
  store i32 %inc92, i32* %i, align 4, !dbg !5136
  br label %for.cond52, !dbg !5137, !llvm.loop !5138

for.end93:                                        ; preds = %for.cond52
  %66 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5140
  %call94 = call i32 @vt8231_read_value(%struct.vt8231_data* %66, i8 zeroext 71) #5, !dbg !5141
  store i32 %call94, i32* %i, align 4, !dbg !5142
  %67 = load i32, i32* %i, align 4, !dbg !5143
  %shr95 = ashr i32 %67, 4, !dbg !5144
  %and96 = and i32 %shr95, 3, !dbg !5145
  %conv97 = trunc i32 %and96 to i8, !dbg !5146
  %68 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5147
  %fan_div = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %68, i32 0, i32 14, !dbg !5148
  %arrayidx98 = getelementptr [2 x i8], [2 x i8]* %fan_div, i64 0, i64 0, !dbg !5147
  store i8 %conv97, i8* %arrayidx98, align 2, !dbg !5149
  %69 = load i32, i32* %i, align 4, !dbg !5150
  %shr99 = ashr i32 %69, 6, !dbg !5151
  %conv100 = trunc i32 %shr99 to i8, !dbg !5150
  %70 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5152
  %fan_div101 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %70, i32 0, i32 14, !dbg !5153
  %arrayidx102 = getelementptr [2 x i8], [2 x i8]* %fan_div101, i64 0, i64 1, !dbg !5152
  store i8 %conv100, i8* %arrayidx102, align 1, !dbg !5154
  %71 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5155
  %call103 = call i32 @vt8231_read_value(%struct.vt8231_data* %71, i8 zeroext 65) #5, !dbg !5156
  %72 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5157
  %call104 = call i32 @vt8231_read_value(%struct.vt8231_data* %72, i8 zeroext 66) #5, !dbg !5158
  %shl105 = shl i32 %call104, 8, !dbg !5159
  %or106 = or i32 %call103, %shl105, !dbg !5160
  %conv107 = trunc i32 %or106 to i16, !dbg !5156
  %73 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5161
  %alarms = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %73, i32 0, i32 15, !dbg !5162
  store i16 %conv107, i16* %alarms, align 8, !dbg !5163
  %74 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5164
  %fan108 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %74, i32 0, i32 12, !dbg !5166
  %arrayidx109 = getelementptr [2 x i8], [2 x i8]* %fan108, i64 0, i64 0, !dbg !5164
  %75 = load i8, i8* %arrayidx109, align 2, !dbg !5164
  %tobool110 = icmp ne i8 %75, 0, !dbg !5164
  br i1 %tobool110, label %if.else, label %land.lhs.true, !dbg !5167

land.lhs.true:                                    ; preds = %for.end93
  %76 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5168
  %fan_min111 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %76, i32 0, i32 13, !dbg !5169
  %arrayidx112 = getelementptr [2 x i8], [2 x i8]* %fan_min111, i64 0, i64 0, !dbg !5168
  %77 = load i8, i8* %arrayidx112, align 4, !dbg !5168
  %conv113 = zext i8 %77 to i32, !dbg !5168
  %tobool114 = icmp ne i32 %conv113, 0, !dbg !5168
  br i1 %tobool114, label %if.then115, label %if.else, !dbg !5170

if.then115:                                       ; preds = %land.lhs.true
  %78 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5171
  %alarms116 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %78, i32 0, i32 15, !dbg !5172
  %79 = load i16, i16* %alarms116, align 8, !dbg !5173
  %conv117 = zext i16 %79 to i32, !dbg !5173
  %or118 = or i32 %conv117, 64, !dbg !5173
  %conv119 = trunc i32 %or118 to i16, !dbg !5173
  store i16 %conv119, i16* %alarms116, align 8, !dbg !5173
  br label %if.end134, !dbg !5171

if.else:                                          ; preds = %land.lhs.true, %for.end93
  %80 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5174
  %fan120 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %80, i32 0, i32 12, !dbg !5176
  %arrayidx121 = getelementptr [2 x i8], [2 x i8]* %fan120, i64 0, i64 0, !dbg !5174
  %81 = load i8, i8* %arrayidx121, align 2, !dbg !5174
  %conv122 = zext i8 %81 to i32, !dbg !5174
  %tobool123 = icmp ne i32 %conv122, 0, !dbg !5174
  br i1 %tobool123, label %land.lhs.true124, label %if.end133, !dbg !5177

land.lhs.true124:                                 ; preds = %if.else
  %82 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5178
  %fan_min125 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %82, i32 0, i32 13, !dbg !5179
  %arrayidx126 = getelementptr [2 x i8], [2 x i8]* %fan_min125, i64 0, i64 0, !dbg !5178
  %83 = load i8, i8* %arrayidx126, align 4, !dbg !5178
  %tobool127 = icmp ne i8 %83, 0, !dbg !5178
  br i1 %tobool127, label %if.end133, label %if.then128, !dbg !5180

if.then128:                                       ; preds = %land.lhs.true124
  %84 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5181
  %alarms129 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %84, i32 0, i32 15, !dbg !5182
  %85 = load i16, i16* %alarms129, align 8, !dbg !5183
  %conv130 = zext i16 %85 to i32, !dbg !5183
  %and131 = and i32 %conv130, -65, !dbg !5183
  %conv132 = trunc i32 %and131 to i16, !dbg !5183
  store i16 %conv132, i16* %alarms129, align 8, !dbg !5183
  br label %if.end133, !dbg !5181

if.end133:                                        ; preds = %if.then128, %land.lhs.true124, %if.else
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.then115
  %86 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5184
  %fan135 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %86, i32 0, i32 12, !dbg !5186
  %arrayidx136 = getelementptr [2 x i8], [2 x i8]* %fan135, i64 0, i64 1, !dbg !5184
  %87 = load i8, i8* %arrayidx136, align 1, !dbg !5184
  %tobool137 = icmp ne i8 %87, 0, !dbg !5184
  br i1 %tobool137, label %if.else148, label %land.lhs.true138, !dbg !5187

land.lhs.true138:                                 ; preds = %if.end134
  %88 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5188
  %fan_min139 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %88, i32 0, i32 13, !dbg !5189
  %arrayidx140 = getelementptr [2 x i8], [2 x i8]* %fan_min139, i64 0, i64 1, !dbg !5188
  %89 = load i8, i8* %arrayidx140, align 1, !dbg !5188
  %conv141 = zext i8 %89 to i32, !dbg !5188
  %tobool142 = icmp ne i32 %conv141, 0, !dbg !5188
  br i1 %tobool142, label %if.then143, label %if.else148, !dbg !5190

if.then143:                                       ; preds = %land.lhs.true138
  %90 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5191
  %alarms144 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %90, i32 0, i32 15, !dbg !5192
  %91 = load i16, i16* %alarms144, align 8, !dbg !5193
  %conv145 = zext i16 %91 to i32, !dbg !5193
  %or146 = or i32 %conv145, 128, !dbg !5193
  %conv147 = trunc i32 %or146 to i16, !dbg !5193
  store i16 %conv147, i16* %alarms144, align 8, !dbg !5193
  br label %if.end163, !dbg !5191

if.else148:                                       ; preds = %land.lhs.true138, %if.end134
  %92 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5194
  %fan149 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %92, i32 0, i32 12, !dbg !5196
  %arrayidx150 = getelementptr [2 x i8], [2 x i8]* %fan149, i64 0, i64 1, !dbg !5194
  %93 = load i8, i8* %arrayidx150, align 1, !dbg !5194
  %conv151 = zext i8 %93 to i32, !dbg !5194
  %tobool152 = icmp ne i32 %conv151, 0, !dbg !5194
  br i1 %tobool152, label %land.lhs.true153, label %if.end162, !dbg !5197

land.lhs.true153:                                 ; preds = %if.else148
  %94 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5198
  %fan_min154 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %94, i32 0, i32 13, !dbg !5199
  %arrayidx155 = getelementptr [2 x i8], [2 x i8]* %fan_min154, i64 0, i64 1, !dbg !5198
  %95 = load i8, i8* %arrayidx155, align 1, !dbg !5198
  %tobool156 = icmp ne i8 %95, 0, !dbg !5198
  br i1 %tobool156, label %if.end162, label %if.then157, !dbg !5200

if.then157:                                       ; preds = %land.lhs.true153
  %96 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5201
  %alarms158 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %96, i32 0, i32 15, !dbg !5202
  %97 = load i16, i16* %alarms158, align 8, !dbg !5203
  %conv159 = zext i16 %97 to i32, !dbg !5203
  %and160 = and i32 %conv159, -129, !dbg !5203
  %conv161 = trunc i32 %and160 to i16, !dbg !5203
  store i16 %conv161, i16* %alarms158, align 8, !dbg !5203
  br label %if.end162, !dbg !5201

if.end162:                                        ; preds = %if.then157, %land.lhs.true153, %if.else148
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.then143
  %98 = load volatile i64, i64* @jiffies, align 8, !dbg !5204
  %99 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5205
  %last_updated164 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %99, i32 0, i32 5, !dbg !5206
  store i64 %98, i64* %last_updated164, align 8, !dbg !5207
  %100 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5208
  %valid165 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %100, i32 0, i32 4, !dbg !5209
  store i8 1, i8* %valid165, align 8, !dbg !5210
  br label %if.end166, !dbg !5211

if.end166:                                        ; preds = %if.end163, %lor.lhs.false
  %101 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5212
  %update_lock167 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %101, i32 0, i32 2, !dbg !5213
  call void @mutex_unlock(%struct.mutex* %update_lock167) #5, !dbg !5214
  %102 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5215
  ret %struct.vt8231_data* %102, !dbg !5216
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5217 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5220, metadata !DIExpression()), !dbg !5221
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5222
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5223
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5223
  ret i8* %1, !dbg !5224
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @fan_min_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5225 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %sensor_attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %data = alloca %struct.vt8231_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5226, metadata !DIExpression()), !dbg !5227
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5228, metadata !DIExpression()), !dbg !5229
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5230, metadata !DIExpression()), !dbg !5231
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %sensor_attr, metadata !5232, metadata !DIExpression()), !dbg !5233
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5234, metadata !DIExpression()), !dbg !5236
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !5236
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !5236
  store i8* %1, i8** %__mptr, align 8, !dbg !5236
  br label %do.body, !dbg !5236

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5237

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5236
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5236
  %3 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5236
  store %struct.sensor_device_attribute* %3, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5237
  %4 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5236
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5233
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5239, metadata !DIExpression()), !dbg !5240
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5241
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %5, i32 0, i32 1, !dbg !5242
  %6 = load i32, i32* %index, align 8, !dbg !5242
  store i32 %6, i32* %nr, align 4, !dbg !5240
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !5243, metadata !DIExpression()), !dbg !5244
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5245
  %call = call %struct.vt8231_data* @vt8231_update_device(%struct.device* %7) #5, !dbg !5246
  store %struct.vt8231_data* %call, %struct.vt8231_data** %data, align 8, !dbg !5244
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5247
  %9 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5248
  %fan_min = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %9, i32 0, i32 13, !dbg !5248
  %10 = load i32, i32* %nr, align 4, !dbg !5248
  %idxprom = sext i32 %10 to i64, !dbg !5248
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %fan_min, i64 0, i64 %idxprom, !dbg !5248
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5248
  %conv = zext i8 %11 to i32, !dbg !5248
  %cmp = icmp eq i32 %conv, 0, !dbg !5248
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5248

cond.true:                                        ; preds = %do.end
  br label %cond.end, !dbg !5248

cond.false:                                       ; preds = %do.end
  %12 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5248
  %fan_min2 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %12, i32 0, i32 13, !dbg !5248
  %13 = load i32, i32* %nr, align 4, !dbg !5248
  %idxprom3 = sext i32 %13 to i64, !dbg !5248
  %arrayidx4 = getelementptr [2 x i8], [2 x i8]* %fan_min2, i64 0, i64 %idxprom3, !dbg !5248
  %14 = load i8, i8* %arrayidx4, align 1, !dbg !5248
  %conv5 = zext i8 %14 to i32, !dbg !5248
  %15 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5248
  %fan_div = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %15, i32 0, i32 14, !dbg !5248
  %16 = load i32, i32* %nr, align 4, !dbg !5248
  %idxprom6 = sext i32 %16 to i64, !dbg !5248
  %arrayidx7 = getelementptr [2 x i8], [2 x i8]* %fan_div, i64 0, i64 %idxprom6, !dbg !5248
  %17 = load i8, i8* %arrayidx7, align 1, !dbg !5248
  %conv8 = zext i8 %17 to i32, !dbg !5248
  %shl = shl i32 1, %conv8, !dbg !5248
  %mul = mul i32 %conv5, %shl, !dbg !5248
  %div = sdiv i32 1310720, %mul, !dbg !5248
  br label %cond.end, !dbg !5248

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %div, %cond.false ], !dbg !5248
  %call9 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %cond) #5, !dbg !5249
  %conv10 = sext i32 %call9 to i64, !dbg !5249
  ret i64 %conv10, !dbg !5250
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @fan_min_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !5251 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %sensor_attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %data = alloca %struct.vt8231_data*, align 8
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5252, metadata !DIExpression()), !dbg !5253
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5254, metadata !DIExpression()), !dbg !5255
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5256, metadata !DIExpression()), !dbg !5257
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5258, metadata !DIExpression()), !dbg !5259
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %sensor_attr, metadata !5260, metadata !DIExpression()), !dbg !5261
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5262, metadata !DIExpression()), !dbg !5264
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !5264
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !5264
  store i8* %1, i8** %__mptr, align 8, !dbg !5264
  br label %do.body, !dbg !5264

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5265

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5264
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5264
  %3 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5264
  store %struct.sensor_device_attribute* %3, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5265
  %4 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5264
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5261
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5267, metadata !DIExpression()), !dbg !5268
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5269
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %5, i32 0, i32 1, !dbg !5270
  %6 = load i32, i32* %index, align 8, !dbg !5270
  store i32 %6, i32* %nr, align 4, !dbg !5268
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !5271, metadata !DIExpression()), !dbg !5272
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5273
  %call = call i8* @dev_get_drvdata(%struct.device* %7) #5, !dbg !5274
  %8 = bitcast i8* %call to %struct.vt8231_data*, !dbg !5274
  store %struct.vt8231_data* %8, %struct.vt8231_data** %data, align 8, !dbg !5272
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5275, metadata !DIExpression()), !dbg !5276
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5277, metadata !DIExpression()), !dbg !5278
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !5279
  %call1 = call i32 @kstrtoul(i8* %9, i32 10, i64* %val) #5, !dbg !5280
  store i32 %call1, i32* %err, align 4, !dbg !5281
  %10 = load i32, i32* %err, align 4, !dbg !5282
  %tobool = icmp ne i32 %10, 0, !dbg !5282
  br i1 %tobool, label %if.then, label %if.end, !dbg !5284

if.then:                                          ; preds = %do.end
  %11 = load i32, i32* %err, align 4, !dbg !5285
  %conv = sext i32 %11 to i64, !dbg !5285
  store i64 %conv, i64* %retval, align 8, !dbg !5286
  br label %return, !dbg !5286

if.end:                                           ; preds = %do.end
  %12 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5287
  %update_lock = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %12, i32 0, i32 2, !dbg !5288
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !5289
  %13 = load i64, i64* %val, align 8, !dbg !5290
  %14 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5291
  %fan_div = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %14, i32 0, i32 14, !dbg !5291
  %15 = load i32, i32* %nr, align 4, !dbg !5291
  %idxprom = sext i32 %15 to i64, !dbg !5291
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %fan_div, i64 0, i64 %idxprom, !dbg !5291
  %16 = load i8, i8* %arrayidx, align 1, !dbg !5291
  %conv2 = zext i8 %16 to i32, !dbg !5291
  %shl = shl i32 1, %conv2, !dbg !5291
  %call3 = call zeroext i8 @FAN_TO_REG(i64 %13, i32 %shl) #5, !dbg !5292
  %17 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5293
  %fan_min = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %17, i32 0, i32 13, !dbg !5294
  %18 = load i32, i32* %nr, align 4, !dbg !5295
  %idxprom4 = sext i32 %18 to i64, !dbg !5293
  %arrayidx5 = getelementptr [2 x i8], [2 x i8]* %fan_min, i64 0, i64 %idxprom4, !dbg !5293
  store i8 %call3, i8* %arrayidx5, align 1, !dbg !5296
  %19 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5297
  %20 = load i32, i32* %nr, align 4, !dbg !5298
  %add = add i32 59, %20, !dbg !5298
  %conv6 = trunc i32 %add to i8, !dbg !5298
  %21 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5299
  %fan_min7 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %21, i32 0, i32 13, !dbg !5300
  %22 = load i32, i32* %nr, align 4, !dbg !5301
  %idxprom8 = sext i32 %22 to i64, !dbg !5299
  %arrayidx9 = getelementptr [2 x i8], [2 x i8]* %fan_min7, i64 0, i64 %idxprom8, !dbg !5299
  %23 = load i8, i8* %arrayidx9, align 1, !dbg !5299
  call void @vt8231_write_value(%struct.vt8231_data* %19, i8 zeroext %conv6, i8 zeroext %23) #5, !dbg !5302
  %24 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5303
  %update_lock10 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %24, i32 0, i32 2, !dbg !5304
  call void @mutex_unlock(%struct.mutex* %update_lock10) #5, !dbg !5305
  %25 = load i64, i64* %count.addr, align 8, !dbg !5306
  store i64 %25, i64* %retval, align 8, !dbg !5307
  br label %return, !dbg !5307

return:                                           ; preds = %if.end, %if.then
  %26 = load i64, i64* %retval, align 8, !dbg !5308
  ret i64 %26, !dbg !5308
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtoul(i8* %s, i32 %base, i64* %res) #2 !dbg !5309 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i64*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !5313, metadata !DIExpression()), !dbg !5314
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !5315, metadata !DIExpression()), !dbg !5316
  store i64* %res, i64** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %res.addr, metadata !5317, metadata !DIExpression()), !dbg !5318
  %0 = load i8*, i8** %s.addr, align 8, !dbg !5319
  %1 = load i32, i32* %base.addr, align 4, !dbg !5321
  %2 = load i64*, i64** %res.addr, align 8, !dbg !5322
  %call = call i32 @kstrtoull(i8* %0, i32 %1, i64* %2) #5, !dbg !5323
  ret i32 %call, !dbg !5324
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @FAN_TO_REG(i64 %rpm, i32 %div) #2 !dbg !5325 {
entry:
  %retval = alloca i8, align 1
  %rpm.addr = alloca i64, align 8
  %div.addr = alloca i32, align 4
  %__UNIQUE_ID___x242 = alloca i64, align 8
  %__UNIQUE_ID___x240 = alloca i64, align 8
  %__UNIQUE_ID___y241 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___y243 = alloca i64, align 8
  %tmp5 = alloca i64, align 8
  store i64 %rpm, i64* %rpm.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rpm.addr, metadata !5328, metadata !DIExpression()), !dbg !5329
  store i32 %div, i32* %div.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %div.addr, metadata !5330, metadata !DIExpression()), !dbg !5331
  %0 = load i64, i64* %rpm.addr, align 8, !dbg !5332
  %cmp = icmp sle i64 %0, 0, !dbg !5334
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5335

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %rpm.addr, align 8, !dbg !5336
  %cmp1 = icmp sgt i64 %1, 1310720, !dbg !5337
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5338

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 0, i8* %retval, align 1, !dbg !5339
  br label %return, !dbg !5339

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x242, metadata !5340, metadata !DIExpression()), !dbg !5342
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x240, metadata !5343, metadata !DIExpression()), !dbg !5345
  %2 = load i64, i64* %rpm.addr, align 8, !dbg !5345
  %3 = load i32, i32* %div.addr, align 4, !dbg !5345
  %conv = sext i32 %3 to i64, !dbg !5345
  %mul = mul i64 %2, %conv, !dbg !5345
  %div2 = sdiv i64 1310720, %mul, !dbg !5345
  store i64 %div2, i64* %__UNIQUE_ID___x240, align 8, !dbg !5345
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y241, metadata !5346, metadata !DIExpression()), !dbg !5345
  store i64 1, i64* %__UNIQUE_ID___y241, align 8, !dbg !5345
  %4 = load i64, i64* %__UNIQUE_ID___x240, align 8, !dbg !5345
  %5 = load i64, i64* %__UNIQUE_ID___y241, align 8, !dbg !5345
  %cmp3 = icmp sgt i64 %4, %5, !dbg !5345
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !5345

cond.true:                                        ; preds = %if.end
  %6 = load i64, i64* %__UNIQUE_ID___x240, align 8, !dbg !5345
  br label %cond.end, !dbg !5345

cond.false:                                       ; preds = %if.end
  %7 = load i64, i64* %__UNIQUE_ID___y241, align 8, !dbg !5345
  br label %cond.end, !dbg !5345

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !5345
  store i64 %cond, i64* %tmp, align 8, !dbg !5345
  %8 = load i64, i64* %tmp, align 8, !dbg !5345
  store i64 %8, i64* %__UNIQUE_ID___x242, align 8, !dbg !5342
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y243, metadata !5347, metadata !DIExpression()), !dbg !5342
  store i64 255, i64* %__UNIQUE_ID___y243, align 8, !dbg !5342
  %9 = load i64, i64* %__UNIQUE_ID___x242, align 8, !dbg !5342
  %10 = load i64, i64* %__UNIQUE_ID___y243, align 8, !dbg !5342
  %cmp6 = icmp slt i64 %9, %10, !dbg !5342
  br i1 %cmp6, label %cond.true8, label %cond.false9, !dbg !5342

cond.true8:                                       ; preds = %cond.end
  %11 = load i64, i64* %__UNIQUE_ID___x242, align 8, !dbg !5342
  br label %cond.end10, !dbg !5342

cond.false9:                                      ; preds = %cond.end
  %12 = load i64, i64* %__UNIQUE_ID___y243, align 8, !dbg !5342
  br label %cond.end10, !dbg !5342

cond.end10:                                       ; preds = %cond.false9, %cond.true8
  %cond11 = phi i64 [ %11, %cond.true8 ], [ %12, %cond.false9 ], !dbg !5342
  store i64 %cond11, i64* %tmp5, align 8, !dbg !5342
  %13 = load i64, i64* %tmp5, align 8, !dbg !5342
  %conv12 = trunc i64 %13 to i8, !dbg !5348
  store i8 %conv12, i8* %retval, align 1, !dbg !5349
  br label %return, !dbg !5349

return:                                           ; preds = %cond.end10, %if.then
  %14 = load i8, i8* %retval, align 1, !dbg !5350
  ret i8 %14, !dbg !5350
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtoull(i8*, i32, i64*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @fan_div_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5351 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %sensor_attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %data = alloca %struct.vt8231_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5352, metadata !DIExpression()), !dbg !5353
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5354, metadata !DIExpression()), !dbg !5355
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5356, metadata !DIExpression()), !dbg !5357
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %sensor_attr, metadata !5358, metadata !DIExpression()), !dbg !5359
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5360, metadata !DIExpression()), !dbg !5362
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !5362
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !5362
  store i8* %1, i8** %__mptr, align 8, !dbg !5362
  br label %do.body, !dbg !5362

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5363

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5362
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5362
  %3 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5362
  store %struct.sensor_device_attribute* %3, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5363
  %4 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5362
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5359
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5365, metadata !DIExpression()), !dbg !5366
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5367
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %5, i32 0, i32 1, !dbg !5368
  %6 = load i32, i32* %index, align 8, !dbg !5368
  store i32 %6, i32* %nr, align 4, !dbg !5366
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !5369, metadata !DIExpression()), !dbg !5370
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5371
  %call = call %struct.vt8231_data* @vt8231_update_device(%struct.device* %7) #5, !dbg !5372
  store %struct.vt8231_data* %call, %struct.vt8231_data** %data, align 8, !dbg !5370
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5373
  %9 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5374
  %fan_div = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %9, i32 0, i32 14, !dbg !5374
  %10 = load i32, i32* %nr, align 4, !dbg !5374
  %idxprom = sext i32 %10 to i64, !dbg !5374
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %fan_div, i64 0, i64 %idxprom, !dbg !5374
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5374
  %conv = zext i8 %11 to i32, !dbg !5374
  %shl = shl i32 1, %conv, !dbg !5374
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %shl) #5, !dbg !5375
  %conv2 = sext i32 %call1 to i64, !dbg !5375
  ret i64 %conv2, !dbg !5376
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @fan_div_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !5377 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %data = alloca %struct.vt8231_data*, align 8
  %sensor_attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %val = alloca i64, align 8
  %nr = alloca i32, align 4
  %old = alloca i32, align 4
  %min = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5378, metadata !DIExpression()), !dbg !5379
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5380, metadata !DIExpression()), !dbg !5381
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5382, metadata !DIExpression()), !dbg !5383
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5384, metadata !DIExpression()), !dbg !5385
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !5386, metadata !DIExpression()), !dbg !5387
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5388
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !5389
  %1 = bitcast i8* %call to %struct.vt8231_data*, !dbg !5389
  store %struct.vt8231_data* %1, %struct.vt8231_data** %data, align 8, !dbg !5387
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %sensor_attr, metadata !5390, metadata !DIExpression()), !dbg !5391
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5392, metadata !DIExpression()), !dbg !5394
  %2 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !5394
  %3 = bitcast %struct.device_attribute* %2 to i8*, !dbg !5394
  store i8* %3, i8** %__mptr, align 8, !dbg !5394
  br label %do.body, !dbg !5394

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5395

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5394
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !5394
  %5 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5394
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5395
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5394
  store %struct.sensor_device_attribute* %6, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5391
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5397, metadata !DIExpression()), !dbg !5398
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5399, metadata !DIExpression()), !dbg !5400
  %7 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5401
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %7, i32 0, i32 1, !dbg !5402
  %8 = load i32, i32* %index, align 8, !dbg !5402
  store i32 %8, i32* %nr, align 4, !dbg !5400
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5403, metadata !DIExpression()), !dbg !5404
  %9 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5405
  %call1 = call i32 @vt8231_read_value(%struct.vt8231_data* %9, i8 zeroext 71) #5, !dbg !5406
  store i32 %call1, i32* %old, align 4, !dbg !5404
  call void @llvm.dbg.declare(metadata i64* %min, metadata !5407, metadata !DIExpression()), !dbg !5408
  %10 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5409
  %fan_min = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %10, i32 0, i32 13, !dbg !5409
  %11 = load i32, i32* %nr, align 4, !dbg !5409
  %idxprom = sext i32 %11 to i64, !dbg !5409
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %fan_min, i64 0, i64 %idxprom, !dbg !5409
  %12 = load i8, i8* %arrayidx, align 1, !dbg !5409
  %conv = zext i8 %12 to i32, !dbg !5409
  %cmp = icmp eq i32 %conv, 0, !dbg !5409
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5409

cond.true:                                        ; preds = %do.end
  br label %cond.end, !dbg !5409

cond.false:                                       ; preds = %do.end
  %13 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5409
  %fan_min3 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %13, i32 0, i32 13, !dbg !5409
  %14 = load i32, i32* %nr, align 4, !dbg !5409
  %idxprom4 = sext i32 %14 to i64, !dbg !5409
  %arrayidx5 = getelementptr [2 x i8], [2 x i8]* %fan_min3, i64 0, i64 %idxprom4, !dbg !5409
  %15 = load i8, i8* %arrayidx5, align 1, !dbg !5409
  %conv6 = zext i8 %15 to i32, !dbg !5409
  %16 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5409
  %fan_div = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %16, i32 0, i32 14, !dbg !5409
  %17 = load i32, i32* %nr, align 4, !dbg !5409
  %idxprom7 = sext i32 %17 to i64, !dbg !5409
  %arrayidx8 = getelementptr [2 x i8], [2 x i8]* %fan_div, i64 0, i64 %idxprom7, !dbg !5409
  %18 = load i8, i8* %arrayidx8, align 1, !dbg !5409
  %conv9 = zext i8 %18 to i32, !dbg !5409
  %shl = shl i32 1, %conv9, !dbg !5409
  %mul = mul i32 %conv6, %shl, !dbg !5409
  %div = sdiv i32 1310720, %mul, !dbg !5409
  br label %cond.end, !dbg !5409

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %div, %cond.false ], !dbg !5409
  %conv10 = sext i32 %cond to i64, !dbg !5409
  store i64 %conv10, i64* %min, align 8, !dbg !5408
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5410, metadata !DIExpression()), !dbg !5411
  %19 = load i8*, i8** %buf.addr, align 8, !dbg !5412
  %call11 = call i32 @kstrtoul(i8* %19, i32 10, i64* %val) #5, !dbg !5413
  store i32 %call11, i32* %err, align 4, !dbg !5414
  %20 = load i32, i32* %err, align 4, !dbg !5415
  %tobool = icmp ne i32 %20, 0, !dbg !5415
  br i1 %tobool, label %if.then, label %if.end, !dbg !5417

if.then:                                          ; preds = %cond.end
  %21 = load i32, i32* %err, align 4, !dbg !5418
  %conv12 = sext i32 %21 to i64, !dbg !5418
  store i64 %conv12, i64* %retval, align 8, !dbg !5419
  br label %return, !dbg !5419

if.end:                                           ; preds = %cond.end
  %22 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5420
  %update_lock = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %22, i32 0, i32 2, !dbg !5421
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !5422
  %23 = load i64, i64* %val, align 8, !dbg !5423
  switch i64 %23, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb16
    i64 4, label %sw.bb20
    i64 8, label %sw.bb24
  ], !dbg !5424

sw.bb:                                            ; preds = %if.end
  %24 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5425
  %fan_div13 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %24, i32 0, i32 14, !dbg !5427
  %25 = load i32, i32* %nr, align 4, !dbg !5428
  %idxprom14 = sext i32 %25 to i64, !dbg !5425
  %arrayidx15 = getelementptr [2 x i8], [2 x i8]* %fan_div13, i64 0, i64 %idxprom14, !dbg !5425
  store i8 0, i8* %arrayidx15, align 1, !dbg !5429
  br label %sw.epilog, !dbg !5430

sw.bb16:                                          ; preds = %if.end
  %26 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5431
  %fan_div17 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %26, i32 0, i32 14, !dbg !5432
  %27 = load i32, i32* %nr, align 4, !dbg !5433
  %idxprom18 = sext i32 %27 to i64, !dbg !5431
  %arrayidx19 = getelementptr [2 x i8], [2 x i8]* %fan_div17, i64 0, i64 %idxprom18, !dbg !5431
  store i8 1, i8* %arrayidx19, align 1, !dbg !5434
  br label %sw.epilog, !dbg !5435

sw.bb20:                                          ; preds = %if.end
  %28 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5436
  %fan_div21 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %28, i32 0, i32 14, !dbg !5437
  %29 = load i32, i32* %nr, align 4, !dbg !5438
  %idxprom22 = sext i32 %29 to i64, !dbg !5436
  %arrayidx23 = getelementptr [2 x i8], [2 x i8]* %fan_div21, i64 0, i64 %idxprom22, !dbg !5436
  store i8 2, i8* %arrayidx23, align 1, !dbg !5439
  br label %sw.epilog, !dbg !5440

sw.bb24:                                          ; preds = %if.end
  %30 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5441
  %fan_div25 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %30, i32 0, i32 14, !dbg !5442
  %31 = load i32, i32* %nr, align 4, !dbg !5443
  %idxprom26 = sext i32 %31 to i64, !dbg !5441
  %arrayidx27 = getelementptr [2 x i8], [2 x i8]* %fan_div25, i64 0, i64 %idxprom26, !dbg !5441
  store i8 3, i8* %arrayidx27, align 1, !dbg !5444
  br label %sw.epilog, !dbg !5445

sw.default:                                       ; preds = %if.end
  %32 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5446
  %33 = load i64, i64* %val, align 8, !dbg !5446
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %32, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.15, i64 0, i64 0), i64 %33) #6, !dbg !5446
  %34 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5447
  %update_lock28 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %34, i32 0, i32 2, !dbg !5448
  call void @mutex_unlock(%struct.mutex* %update_lock28) #5, !dbg !5449
  store i64 -22, i64* %retval, align 8, !dbg !5450
  br label %return, !dbg !5450

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb20, %sw.bb16, %sw.bb
  %35 = load i64, i64* %min, align 8, !dbg !5451
  %36 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5452
  %fan_div29 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %36, i32 0, i32 14, !dbg !5452
  %37 = load i32, i32* %nr, align 4, !dbg !5452
  %idxprom30 = sext i32 %37 to i64, !dbg !5452
  %arrayidx31 = getelementptr [2 x i8], [2 x i8]* %fan_div29, i64 0, i64 %idxprom30, !dbg !5452
  %38 = load i8, i8* %arrayidx31, align 1, !dbg !5452
  %conv32 = zext i8 %38 to i32, !dbg !5452
  %shl33 = shl i32 1, %conv32, !dbg !5452
  %call34 = call zeroext i8 @FAN_TO_REG(i64 %35, i32 %shl33) #5, !dbg !5453
  %39 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5454
  %fan_min35 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %39, i32 0, i32 13, !dbg !5455
  %40 = load i32, i32* %nr, align 4, !dbg !5456
  %idxprom36 = sext i32 %40 to i64, !dbg !5454
  %arrayidx37 = getelementptr [2 x i8], [2 x i8]* %fan_min35, i64 0, i64 %idxprom36, !dbg !5454
  store i8 %call34, i8* %arrayidx37, align 1, !dbg !5457
  %41 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5458
  %42 = load i32, i32* %nr, align 4, !dbg !5459
  %add = add i32 59, %42, !dbg !5459
  %conv38 = trunc i32 %add to i8, !dbg !5459
  %43 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5460
  %fan_min39 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %43, i32 0, i32 13, !dbg !5461
  %44 = load i32, i32* %nr, align 4, !dbg !5462
  %idxprom40 = sext i32 %44 to i64, !dbg !5460
  %arrayidx41 = getelementptr [2 x i8], [2 x i8]* %fan_min39, i64 0, i64 %idxprom40, !dbg !5460
  %45 = load i8, i8* %arrayidx41, align 1, !dbg !5460
  call void @vt8231_write_value(%struct.vt8231_data* %41, i8 zeroext %conv38, i8 zeroext %45) #5, !dbg !5463
  %46 = load i32, i32* %old, align 4, !dbg !5464
  %and = and i32 %46, 15, !dbg !5465
  %47 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5466
  %fan_div42 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %47, i32 0, i32 14, !dbg !5467
  %arrayidx43 = getelementptr [2 x i8], [2 x i8]* %fan_div42, i64 0, i64 1, !dbg !5466
  %48 = load i8, i8* %arrayidx43, align 1, !dbg !5466
  %conv44 = zext i8 %48 to i32, !dbg !5466
  %shl45 = shl i32 %conv44, 6, !dbg !5468
  %or = or i32 %and, %shl45, !dbg !5469
  %49 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5470
  %fan_div46 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %49, i32 0, i32 14, !dbg !5471
  %arrayidx47 = getelementptr [2 x i8], [2 x i8]* %fan_div46, i64 0, i64 0, !dbg !5470
  %50 = load i8, i8* %arrayidx47, align 2, !dbg !5470
  %conv48 = zext i8 %50 to i32, !dbg !5470
  %shl49 = shl i32 %conv48, 4, !dbg !5472
  %or50 = or i32 %or, %shl49, !dbg !5473
  store i32 %or50, i32* %old, align 4, !dbg !5474
  %51 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5475
  %52 = load i32, i32* %old, align 4, !dbg !5476
  %conv51 = trunc i32 %52 to i8, !dbg !5476
  call void @vt8231_write_value(%struct.vt8231_data* %51, i8 zeroext 71, i8 zeroext %conv51) #5, !dbg !5477
  %53 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5478
  %update_lock52 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %53, i32 0, i32 2, !dbg !5479
  call void @mutex_unlock(%struct.mutex* %update_lock52) #5, !dbg !5480
  %54 = load i64, i64* %count.addr, align 8, !dbg !5481
  store i64 %54, i64* %retval, align 8, !dbg !5482
  br label %return, !dbg !5482

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %55 = load i64, i64* %retval, align 8, !dbg !5483
  ret i64 %55, !dbg !5483
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @alarm_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5484 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %bitnr = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %data = alloca %struct.vt8231_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5485, metadata !DIExpression()), !dbg !5486
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5487, metadata !DIExpression()), !dbg !5488
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5489, metadata !DIExpression()), !dbg !5490
  call void @llvm.dbg.declare(metadata i32* %bitnr, metadata !5491, metadata !DIExpression()), !dbg !5492
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5493, metadata !DIExpression()), !dbg !5495
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !5495
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !5495
  store i8* %1, i8** %__mptr, align 8, !dbg !5495
  br label %do.body, !dbg !5495

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5496

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5495
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5495
  %3 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5495
  store %struct.sensor_device_attribute* %3, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5496
  %4 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5495
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %4, i32 0, i32 1, !dbg !5498
  %5 = load i32, i32* %index, align 8, !dbg !5498
  store i32 %5, i32* %bitnr, align 4, !dbg !5492
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !5499, metadata !DIExpression()), !dbg !5500
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5501
  %call = call %struct.vt8231_data* @vt8231_update_device(%struct.device* %6) #5, !dbg !5502
  store %struct.vt8231_data* %call, %struct.vt8231_data** %data, align 8, !dbg !5500
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !5503
  %8 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5504
  %alarms = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %8, i32 0, i32 15, !dbg !5505
  %9 = load i16, i16* %alarms, align 8, !dbg !5505
  %conv = zext i16 %9 to i32, !dbg !5504
  %10 = load i32, i32* %bitnr, align 4, !dbg !5506
  %shr = ashr i32 %conv, %10, !dbg !5507
  %and = and i32 %shr, 1, !dbg !5508
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %and) #5, !dbg !5509
  %conv2 = sext i32 %call1 to i64, !dbg !5509
  ret i64 %conv2, !dbg !5510
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @alarms_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5511 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.vt8231_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5512, metadata !DIExpression()), !dbg !5513
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5514, metadata !DIExpression()), !dbg !5515
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5516, metadata !DIExpression()), !dbg !5517
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !5518, metadata !DIExpression()), !dbg !5519
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5520
  %call = call %struct.vt8231_data* @vt8231_update_device(%struct.device* %0) #5, !dbg !5521
  store %struct.vt8231_data* %call, %struct.vt8231_data** %data, align 8, !dbg !5519
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !5522
  %2 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5523
  %alarms = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %2, i32 0, i32 15, !dbg !5524
  %3 = load i16, i16* %alarms, align 8, !dbg !5524
  %conv = zext i16 %3 to i32, !dbg !5523
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %conv) #5, !dbg !5525
  %conv2 = sext i32 %call1 to i64, !dbg !5525
  ret i64 %conv2, !dbg !5526
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @name_show(%struct.device* %dev, %struct.device_attribute* %devattr, i8* %buf) #2 !dbg !5527 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %devattr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.vt8231_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5528, metadata !DIExpression()), !dbg !5529
  store %struct.device_attribute* %devattr, %struct.device_attribute** %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %devattr.addr, metadata !5530, metadata !DIExpression()), !dbg !5531
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5532, metadata !DIExpression()), !dbg !5533
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !5534, metadata !DIExpression()), !dbg !5535
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5536
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !5537
  %1 = bitcast i8* %call to %struct.vt8231_data*, !dbg !5537
  store %struct.vt8231_data* %1, %struct.vt8231_data** %data, align 8, !dbg !5535
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5538
  %3 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5539
  %name = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %3, i32 0, i32 1, !dbg !5540
  %4 = load i8*, i8** %name, align 8, !dbg !5540
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* %4) #5, !dbg !5541
  %conv = sext i32 %call1 to i64, !dbg !5541
  ret i64 %conv, !dbg !5542
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb_p(i32 %port) #2 !dbg !5543 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5546, metadata !DIExpression()), !dbg !5547
  call void @llvm.dbg.declare(metadata i8* %value, metadata !5548, metadata !DIExpression()), !dbg !5547
  %0 = load i32, i32* %port.addr, align 4, !dbg !5547
  %call = call zeroext i8 @inb(i32 %0) #5, !dbg !5547
  store i8 %call, i8* %value, align 1, !dbg !5547
  call void @slow_down_io() #5, !dbg !5547
  %1 = load i8, i8* %value, align 1, !dbg !5547
  ret i8 %1, !dbg !5547
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb(i32 %port) #2 !dbg !5549 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5550, metadata !DIExpression()), !dbg !5551
  call void @llvm.dbg.declare(metadata i8* %value, metadata !5552, metadata !DIExpression()), !dbg !5551
  %0 = load i32, i32* %port.addr, align 4, !dbg !5551
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #7, !dbg !5551, !srcloc !5553
  store i8 %1, i8* %value, align 1, !dbg !5551
  %2 = load i8, i8* %value, align 1, !dbg !5551
  ret i8 %2, !dbg !5551
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp1_input_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5554 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.vt8231_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5555, metadata !DIExpression()), !dbg !5556
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5557, metadata !DIExpression()), !dbg !5558
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5559, metadata !DIExpression()), !dbg !5560
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !5561, metadata !DIExpression()), !dbg !5562
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5563
  %call = call %struct.vt8231_data* @vt8231_update_device(%struct.device* %0) #5, !dbg !5564
  store %struct.vt8231_data* %call, %struct.vt8231_data** %data, align 8, !dbg !5562
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !5565
  %2 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5566
  %temp = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %2, i32 0, i32 9, !dbg !5567
  %arrayidx = getelementptr [6 x i16], [6 x i16]* %temp, i64 0, i64 0, !dbg !5566
  %3 = load i16, i16* %arrayidx, align 2, !dbg !5566
  %conv = zext i16 %3 to i32, !dbg !5566
  %mul = mul i32 %conv, 250, !dbg !5568
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %mul) #5, !dbg !5569
  %conv2 = sext i32 %call1 to i64, !dbg !5569
  ret i64 %conv2, !dbg !5570
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp1_max_hyst_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5571 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.vt8231_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5572, metadata !DIExpression()), !dbg !5573
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5574, metadata !DIExpression()), !dbg !5575
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5576, metadata !DIExpression()), !dbg !5577
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !5578, metadata !DIExpression()), !dbg !5579
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5580
  %call = call %struct.vt8231_data* @vt8231_update_device(%struct.device* %0) #5, !dbg !5581
  store %struct.vt8231_data* %call, %struct.vt8231_data** %data, align 8, !dbg !5579
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !5582
  %2 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5583
  %temp_min = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %2, i32 0, i32 11, !dbg !5584
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %temp_min, i64 0, i64 0, !dbg !5583
  %3 = load i8, i8* %arrayidx, align 4, !dbg !5583
  %conv = zext i8 %3 to i32, !dbg !5583
  %mul = mul i32 %conv, 1000, !dbg !5585
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %mul) #5, !dbg !5586
  %conv2 = sext i32 %call1 to i64, !dbg !5586
  ret i64 %conv2, !dbg !5587
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp1_max_hyst_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !5588 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %data = alloca %struct.vt8231_data*, align 8
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  %__UNIQUE_ID___x271 = alloca i64, align 8
  %__UNIQUE_ID___x269 = alloca i64, align 8
  %__UNIQUE_ID___y270 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___y272 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5589, metadata !DIExpression()), !dbg !5590
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5591, metadata !DIExpression()), !dbg !5592
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5593, metadata !DIExpression()), !dbg !5594
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5595, metadata !DIExpression()), !dbg !5596
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !5597, metadata !DIExpression()), !dbg !5598
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5599
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !5600
  %1 = bitcast i8* %call to %struct.vt8231_data*, !dbg !5600
  store %struct.vt8231_data* %1, %struct.vt8231_data** %data, align 8, !dbg !5598
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5601, metadata !DIExpression()), !dbg !5602
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5603, metadata !DIExpression()), !dbg !5604
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5605
  %call1 = call i32 @kstrtol(i8* %2, i32 10, i64* %val) #5, !dbg !5606
  store i32 %call1, i32* %err, align 4, !dbg !5607
  %3 = load i32, i32* %err, align 4, !dbg !5608
  %tobool = icmp ne i32 %3, 0, !dbg !5608
  br i1 %tobool, label %if.then, label %if.end, !dbg !5610

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %err, align 4, !dbg !5611
  %conv = sext i32 %4 to i64, !dbg !5611
  store i64 %conv, i64* %retval, align 8, !dbg !5612
  br label %return, !dbg !5612

if.end:                                           ; preds = %entry
  %5 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5613
  %update_lock = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %5, i32 0, i32 2, !dbg !5614
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !5615
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x271, metadata !5616, metadata !DIExpression()), !dbg !5618
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x269, metadata !5619, metadata !DIExpression()), !dbg !5621
  %6 = load i64, i64* %val, align 8, !dbg !5621
  %add = add i64 %6, 500, !dbg !5621
  %div = sdiv i64 %add, 1000, !dbg !5621
  store i64 %div, i64* %__UNIQUE_ID___x269, align 8, !dbg !5621
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y270, metadata !5622, metadata !DIExpression()), !dbg !5621
  store i64 0, i64* %__UNIQUE_ID___y270, align 8, !dbg !5621
  %7 = load i64, i64* %__UNIQUE_ID___x269, align 8, !dbg !5621
  %8 = load i64, i64* %__UNIQUE_ID___y270, align 8, !dbg !5621
  %cmp = icmp sgt i64 %7, %8, !dbg !5621
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5621

cond.true:                                        ; preds = %if.end
  %9 = load i64, i64* %__UNIQUE_ID___x269, align 8, !dbg !5621
  br label %cond.end, !dbg !5621

cond.false:                                       ; preds = %if.end
  %10 = load i64, i64* %__UNIQUE_ID___y270, align 8, !dbg !5621
  br label %cond.end, !dbg !5621

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %10, %cond.false ], !dbg !5621
  store i64 %cond, i64* %tmp, align 8, !dbg !5621
  %11 = load i64, i64* %tmp, align 8, !dbg !5621
  store i64 %11, i64* %__UNIQUE_ID___x271, align 8, !dbg !5618
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y272, metadata !5623, metadata !DIExpression()), !dbg !5618
  store i64 255, i64* %__UNIQUE_ID___y272, align 8, !dbg !5618
  %12 = load i64, i64* %__UNIQUE_ID___x271, align 8, !dbg !5618
  %13 = load i64, i64* %__UNIQUE_ID___y272, align 8, !dbg !5618
  %cmp4 = icmp slt i64 %12, %13, !dbg !5618
  br i1 %cmp4, label %cond.true6, label %cond.false7, !dbg !5618

cond.true6:                                       ; preds = %cond.end
  %14 = load i64, i64* %__UNIQUE_ID___x271, align 8, !dbg !5618
  br label %cond.end8, !dbg !5618

cond.false7:                                      ; preds = %cond.end
  %15 = load i64, i64* %__UNIQUE_ID___y272, align 8, !dbg !5618
  br label %cond.end8, !dbg !5618

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi i64 [ %14, %cond.true6 ], [ %15, %cond.false7 ], !dbg !5618
  store i64 %cond9, i64* %tmp3, align 8, !dbg !5618
  %16 = load i64, i64* %tmp3, align 8, !dbg !5618
  %conv10 = trunc i64 %16 to i8, !dbg !5624
  %17 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5625
  %temp_min = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %17, i32 0, i32 11, !dbg !5626
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %temp_min, i64 0, i64 0, !dbg !5625
  store i8 %conv10, i8* %arrayidx, align 4, !dbg !5627
  %18 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5628
  %19 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @regtempmin, i64 0, i64 0), align 1, !dbg !5629
  %20 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5630
  %temp_min11 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %20, i32 0, i32 11, !dbg !5631
  %arrayidx12 = getelementptr [6 x i8], [6 x i8]* %temp_min11, i64 0, i64 0, !dbg !5630
  %21 = load i8, i8* %arrayidx12, align 4, !dbg !5630
  call void @vt8231_write_value(%struct.vt8231_data* %18, i8 zeroext %19, i8 zeroext %21) #5, !dbg !5632
  %22 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5633
  %update_lock13 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %22, i32 0, i32 2, !dbg !5634
  call void @mutex_unlock(%struct.mutex* %update_lock13) #5, !dbg !5635
  %23 = load i64, i64* %count.addr, align 8, !dbg !5636
  store i64 %23, i64* %retval, align 8, !dbg !5637
  br label %return, !dbg !5637

return:                                           ; preds = %cond.end8, %if.then
  %24 = load i64, i64* %retval, align 8, !dbg !5638
  ret i64 %24, !dbg !5638
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtol(i8* %s, i32 %base, i64* %res) #2 !dbg !5639 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i64*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !5643, metadata !DIExpression()), !dbg !5644
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !5645, metadata !DIExpression()), !dbg !5646
  store i64* %res, i64** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %res.addr, metadata !5647, metadata !DIExpression()), !dbg !5648
  %0 = load i8*, i8** %s.addr, align 8, !dbg !5649
  %1 = load i32, i32* %base.addr, align 4, !dbg !5651
  %2 = load i64*, i64** %res.addr, align 8, !dbg !5652
  %call = call i32 @kstrtoll(i8* %0, i32 %1, i64* %2) #5, !dbg !5653
  ret i32 %call, !dbg !5654
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtoll(i8*, i32, i64*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp1_max_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5655 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.vt8231_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5656, metadata !DIExpression()), !dbg !5657
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5658, metadata !DIExpression()), !dbg !5659
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5660, metadata !DIExpression()), !dbg !5661
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !5662, metadata !DIExpression()), !dbg !5663
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5664
  %call = call %struct.vt8231_data* @vt8231_update_device(%struct.device* %0) #5, !dbg !5665
  store %struct.vt8231_data* %call, %struct.vt8231_data** %data, align 8, !dbg !5663
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !5666
  %2 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5667
  %temp_max = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %2, i32 0, i32 10, !dbg !5668
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %temp_max, i64 0, i64 0, !dbg !5667
  %3 = load i8, i8* %arrayidx, align 2, !dbg !5667
  %conv = zext i8 %3 to i32, !dbg !5667
  %mul = mul i32 %conv, 1000, !dbg !5669
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %mul) #5, !dbg !5670
  %conv2 = sext i32 %call1 to i64, !dbg !5670
  ret i64 %conv2, !dbg !5671
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp1_max_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !5672 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %data = alloca %struct.vt8231_data*, align 8
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  %__UNIQUE_ID___x267 = alloca i64, align 8
  %__UNIQUE_ID___x265 = alloca i64, align 8
  %__UNIQUE_ID___y266 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___y268 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5673, metadata !DIExpression()), !dbg !5674
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5675, metadata !DIExpression()), !dbg !5676
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5677, metadata !DIExpression()), !dbg !5678
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5679, metadata !DIExpression()), !dbg !5680
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !5681, metadata !DIExpression()), !dbg !5682
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5683
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !5684
  %1 = bitcast i8* %call to %struct.vt8231_data*, !dbg !5684
  store %struct.vt8231_data* %1, %struct.vt8231_data** %data, align 8, !dbg !5682
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5685, metadata !DIExpression()), !dbg !5686
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5687, metadata !DIExpression()), !dbg !5688
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5689
  %call1 = call i32 @kstrtol(i8* %2, i32 10, i64* %val) #5, !dbg !5690
  store i32 %call1, i32* %err, align 4, !dbg !5691
  %3 = load i32, i32* %err, align 4, !dbg !5692
  %tobool = icmp ne i32 %3, 0, !dbg !5692
  br i1 %tobool, label %if.then, label %if.end, !dbg !5694

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %err, align 4, !dbg !5695
  %conv = sext i32 %4 to i64, !dbg !5695
  store i64 %conv, i64* %retval, align 8, !dbg !5696
  br label %return, !dbg !5696

if.end:                                           ; preds = %entry
  %5 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5697
  %update_lock = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %5, i32 0, i32 2, !dbg !5698
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !5699
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x267, metadata !5700, metadata !DIExpression()), !dbg !5702
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x265, metadata !5703, metadata !DIExpression()), !dbg !5705
  %6 = load i64, i64* %val, align 8, !dbg !5705
  %add = add i64 %6, 500, !dbg !5705
  %div = sdiv i64 %add, 1000, !dbg !5705
  store i64 %div, i64* %__UNIQUE_ID___x265, align 8, !dbg !5705
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y266, metadata !5706, metadata !DIExpression()), !dbg !5705
  store i64 0, i64* %__UNIQUE_ID___y266, align 8, !dbg !5705
  %7 = load i64, i64* %__UNIQUE_ID___x265, align 8, !dbg !5705
  %8 = load i64, i64* %__UNIQUE_ID___y266, align 8, !dbg !5705
  %cmp = icmp sgt i64 %7, %8, !dbg !5705
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5705

cond.true:                                        ; preds = %if.end
  %9 = load i64, i64* %__UNIQUE_ID___x265, align 8, !dbg !5705
  br label %cond.end, !dbg !5705

cond.false:                                       ; preds = %if.end
  %10 = load i64, i64* %__UNIQUE_ID___y266, align 8, !dbg !5705
  br label %cond.end, !dbg !5705

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %10, %cond.false ], !dbg !5705
  store i64 %cond, i64* %tmp, align 8, !dbg !5705
  %11 = load i64, i64* %tmp, align 8, !dbg !5705
  store i64 %11, i64* %__UNIQUE_ID___x267, align 8, !dbg !5702
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y268, metadata !5707, metadata !DIExpression()), !dbg !5702
  store i64 255, i64* %__UNIQUE_ID___y268, align 8, !dbg !5702
  %12 = load i64, i64* %__UNIQUE_ID___x267, align 8, !dbg !5702
  %13 = load i64, i64* %__UNIQUE_ID___y268, align 8, !dbg !5702
  %cmp4 = icmp slt i64 %12, %13, !dbg !5702
  br i1 %cmp4, label %cond.true6, label %cond.false7, !dbg !5702

cond.true6:                                       ; preds = %cond.end
  %14 = load i64, i64* %__UNIQUE_ID___x267, align 8, !dbg !5702
  br label %cond.end8, !dbg !5702

cond.false7:                                      ; preds = %cond.end
  %15 = load i64, i64* %__UNIQUE_ID___y268, align 8, !dbg !5702
  br label %cond.end8, !dbg !5702

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi i64 [ %14, %cond.true6 ], [ %15, %cond.false7 ], !dbg !5702
  store i64 %cond9, i64* %tmp3, align 8, !dbg !5702
  %16 = load i64, i64* %tmp3, align 8, !dbg !5702
  %conv10 = trunc i64 %16 to i8, !dbg !5708
  %17 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5709
  %temp_max = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %17, i32 0, i32 10, !dbg !5710
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %temp_max, i64 0, i64 0, !dbg !5709
  store i8 %conv10, i8* %arrayidx, align 2, !dbg !5711
  %18 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5712
  %19 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @regtempmax, i64 0, i64 0), align 1, !dbg !5713
  %20 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5714
  %temp_max11 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %20, i32 0, i32 10, !dbg !5715
  %arrayidx12 = getelementptr [6 x i8], [6 x i8]* %temp_max11, i64 0, i64 0, !dbg !5714
  %21 = load i8, i8* %arrayidx12, align 2, !dbg !5714
  call void @vt8231_write_value(%struct.vt8231_data* %18, i8 zeroext %19, i8 zeroext %21) #5, !dbg !5716
  %22 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5717
  %update_lock13 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %22, i32 0, i32 2, !dbg !5718
  call void @mutex_unlock(%struct.mutex* %update_lock13) #5, !dbg !5719
  %23 = load i64, i64* %count.addr, align 8, !dbg !5720
  store i64 %23, i64* %retval, align 8, !dbg !5721
  br label %return, !dbg !5721

return:                                           ; preds = %cond.end8, %if.then
  %24 = load i64, i64* %retval, align 8, !dbg !5722
  ret i64 %24, !dbg !5722
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5723 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %sensor_attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %data = alloca %struct.vt8231_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5724, metadata !DIExpression()), !dbg !5725
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5726, metadata !DIExpression()), !dbg !5727
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5728, metadata !DIExpression()), !dbg !5729
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %sensor_attr, metadata !5730, metadata !DIExpression()), !dbg !5731
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5732, metadata !DIExpression()), !dbg !5734
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !5734
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !5734
  store i8* %1, i8** %__mptr, align 8, !dbg !5734
  br label %do.body, !dbg !5734

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5735

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5734
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5734
  %3 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5734
  store %struct.sensor_device_attribute* %3, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5735
  %4 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5734
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5731
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5737, metadata !DIExpression()), !dbg !5738
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5739
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %5, i32 0, i32 1, !dbg !5740
  %6 = load i32, i32* %index, align 8, !dbg !5740
  store i32 %6, i32* %nr, align 4, !dbg !5738
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !5741, metadata !DIExpression()), !dbg !5742
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5743
  %call = call %struct.vt8231_data* @vt8231_update_device(%struct.device* %7) #5, !dbg !5744
  store %struct.vt8231_data* %call, %struct.vt8231_data** %data, align 8, !dbg !5742
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5745
  %9 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5746
  %temp = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %9, i32 0, i32 9, !dbg !5746
  %10 = load i32, i32* %nr, align 4, !dbg !5746
  %idxprom = sext i32 %10 to i64, !dbg !5746
  %arrayidx = getelementptr [6 x i16], [6 x i16]* %temp, i64 0, i64 %idxprom, !dbg !5746
  %11 = load i16, i16* %arrayidx, align 2, !dbg !5746
  %conv = zext i16 %11 to i32, !dbg !5746
  %sub = sub i32 1012, %conv, !dbg !5746
  %mul = mul i32 %sub, 550, !dbg !5746
  %add = add i32 %mul, 105, !dbg !5746
  %div = sdiv i32 %add, 210, !dbg !5746
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %div) #5, !dbg !5747
  %conv2 = sext i32 %call1 to i64, !dbg !5747
  ret i64 %conv2, !dbg !5748
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp_min_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5749 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %sensor_attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %data = alloca %struct.vt8231_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5750, metadata !DIExpression()), !dbg !5751
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5752, metadata !DIExpression()), !dbg !5753
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5754, metadata !DIExpression()), !dbg !5755
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %sensor_attr, metadata !5756, metadata !DIExpression()), !dbg !5757
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5758, metadata !DIExpression()), !dbg !5760
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !5760
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !5760
  store i8* %1, i8** %__mptr, align 8, !dbg !5760
  br label %do.body, !dbg !5760

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5761

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5760
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5760
  %3 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5760
  store %struct.sensor_device_attribute* %3, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5761
  %4 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5760
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5757
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5763, metadata !DIExpression()), !dbg !5764
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5765
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %5, i32 0, i32 1, !dbg !5766
  %6 = load i32, i32* %index, align 8, !dbg !5766
  store i32 %6, i32* %nr, align 4, !dbg !5764
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !5767, metadata !DIExpression()), !dbg !5768
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5769
  %call = call %struct.vt8231_data* @vt8231_update_device(%struct.device* %7) #5, !dbg !5770
  store %struct.vt8231_data* %call, %struct.vt8231_data** %data, align 8, !dbg !5768
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5771
  %9 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5772
  %temp_min = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %9, i32 0, i32 11, !dbg !5772
  %10 = load i32, i32* %nr, align 4, !dbg !5772
  %idxprom = sext i32 %10 to i64, !dbg !5772
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %temp_min, i64 0, i64 %idxprom, !dbg !5772
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5772
  %conv = zext i8 %11 to i32, !dbg !5772
  %sub = sub i32 253, %conv, !dbg !5772
  %mul = mul i32 %sub, 2200, !dbg !5772
  %add = add i32 %mul, 105, !dbg !5772
  %div = sdiv i32 %add, 210, !dbg !5772
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %div) #5, !dbg !5773
  %conv2 = sext i32 %call1 to i64, !dbg !5773
  ret i64 %conv2, !dbg !5774
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp_min_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !5775 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %sensor_attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %data = alloca %struct.vt8231_data*, align 8
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  %__UNIQUE_ID___x284 = alloca i64, align 8
  %__UNIQUE_ID___x282 = alloca i64, align 8
  %__UNIQUE_ID___y283 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %__UNIQUE_ID___y285 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5776, metadata !DIExpression()), !dbg !5777
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5778, metadata !DIExpression()), !dbg !5779
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5780, metadata !DIExpression()), !dbg !5781
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5782, metadata !DIExpression()), !dbg !5783
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %sensor_attr, metadata !5784, metadata !DIExpression()), !dbg !5785
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5786, metadata !DIExpression()), !dbg !5788
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !5788
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !5788
  store i8* %1, i8** %__mptr, align 8, !dbg !5788
  br label %do.body, !dbg !5788

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5789

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5788
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5788
  %3 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5788
  store %struct.sensor_device_attribute* %3, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5789
  %4 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5788
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5785
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5791, metadata !DIExpression()), !dbg !5792
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5793
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %5, i32 0, i32 1, !dbg !5794
  %6 = load i32, i32* %index, align 8, !dbg !5794
  store i32 %6, i32* %nr, align 4, !dbg !5792
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !5795, metadata !DIExpression()), !dbg !5796
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5797
  %call = call i8* @dev_get_drvdata(%struct.device* %7) #5, !dbg !5798
  %8 = bitcast i8* %call to %struct.vt8231_data*, !dbg !5798
  store %struct.vt8231_data* %8, %struct.vt8231_data** %data, align 8, !dbg !5796
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5799, metadata !DIExpression()), !dbg !5800
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5801, metadata !DIExpression()), !dbg !5802
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !5803
  %call1 = call i32 @kstrtol(i8* %9, i32 10, i64* %val) #5, !dbg !5804
  store i32 %call1, i32* %err, align 4, !dbg !5805
  %10 = load i32, i32* %err, align 4, !dbg !5806
  %tobool = icmp ne i32 %10, 0, !dbg !5806
  br i1 %tobool, label %if.then, label %if.end, !dbg !5808

if.then:                                          ; preds = %do.end
  %11 = load i32, i32* %err, align 4, !dbg !5809
  %conv = sext i32 %11 to i64, !dbg !5809
  store i64 %conv, i64* %retval, align 8, !dbg !5810
  br label %return, !dbg !5810

if.end:                                           ; preds = %do.end
  %12 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5811
  %update_lock = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %12, i32 0, i32 2, !dbg !5812
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !5813
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x284, metadata !5814, metadata !DIExpression()), !dbg !5816
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x282, metadata !5817, metadata !DIExpression()), !dbg !5819
  %13 = load i64, i64* %val, align 8, !dbg !5819
  %mul = mul i64 %13, 210, !dbg !5819
  %add = add i64 %mul, 1100, !dbg !5819
  %div = sdiv i64 %add, 2200, !dbg !5819
  %sub = sub i64 253, %div, !dbg !5819
  store i64 %sub, i64* %__UNIQUE_ID___x282, align 8, !dbg !5819
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y283, metadata !5820, metadata !DIExpression()), !dbg !5819
  store i64 0, i64* %__UNIQUE_ID___y283, align 8, !dbg !5819
  %14 = load i64, i64* %__UNIQUE_ID___x282, align 8, !dbg !5819
  %15 = load i64, i64* %__UNIQUE_ID___y283, align 8, !dbg !5819
  %cmp = icmp sgt i64 %14, %15, !dbg !5819
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5819

cond.true:                                        ; preds = %if.end
  %16 = load i64, i64* %__UNIQUE_ID___x282, align 8, !dbg !5819
  br label %cond.end, !dbg !5819

cond.false:                                       ; preds = %if.end
  %17 = load i64, i64* %__UNIQUE_ID___y283, align 8, !dbg !5819
  br label %cond.end, !dbg !5819

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !5819
  store i64 %cond, i64* %tmp2, align 8, !dbg !5819
  %18 = load i64, i64* %tmp2, align 8, !dbg !5819
  store i64 %18, i64* %__UNIQUE_ID___x284, align 8, !dbg !5816
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y285, metadata !5821, metadata !DIExpression()), !dbg !5816
  store i64 255, i64* %__UNIQUE_ID___y285, align 8, !dbg !5816
  %19 = load i64, i64* %__UNIQUE_ID___x284, align 8, !dbg !5816
  %20 = load i64, i64* %__UNIQUE_ID___y285, align 8, !dbg !5816
  %cmp5 = icmp slt i64 %19, %20, !dbg !5816
  br i1 %cmp5, label %cond.true7, label %cond.false8, !dbg !5816

cond.true7:                                       ; preds = %cond.end
  %21 = load i64, i64* %__UNIQUE_ID___x284, align 8, !dbg !5816
  br label %cond.end9, !dbg !5816

cond.false8:                                      ; preds = %cond.end
  %22 = load i64, i64* %__UNIQUE_ID___y285, align 8, !dbg !5816
  br label %cond.end9, !dbg !5816

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi i64 [ %21, %cond.true7 ], [ %22, %cond.false8 ], !dbg !5816
  store i64 %cond10, i64* %tmp4, align 8, !dbg !5816
  %23 = load i64, i64* %tmp4, align 8, !dbg !5816
  %conv11 = trunc i64 %23 to i8, !dbg !5822
  %24 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5823
  %temp_min = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %24, i32 0, i32 11, !dbg !5824
  %25 = load i32, i32* %nr, align 4, !dbg !5825
  %idxprom = sext i32 %25 to i64, !dbg !5823
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %temp_min, i64 0, i64 %idxprom, !dbg !5823
  store i8 %conv11, i8* %arrayidx, align 1, !dbg !5826
  %26 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5827
  %27 = load i32, i32* %nr, align 4, !dbg !5828
  %idxprom12 = sext i32 %27 to i64, !dbg !5829
  %arrayidx13 = getelementptr [6 x i8], [6 x i8]* @regtempmin, i64 0, i64 %idxprom12, !dbg !5829
  %28 = load i8, i8* %arrayidx13, align 1, !dbg !5829
  %29 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5830
  %temp_min14 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %29, i32 0, i32 11, !dbg !5831
  %30 = load i32, i32* %nr, align 4, !dbg !5832
  %idxprom15 = sext i32 %30 to i64, !dbg !5830
  %arrayidx16 = getelementptr [6 x i8], [6 x i8]* %temp_min14, i64 0, i64 %idxprom15, !dbg !5830
  %31 = load i8, i8* %arrayidx16, align 1, !dbg !5830
  call void @vt8231_write_value(%struct.vt8231_data* %26, i8 zeroext %28, i8 zeroext %31) #5, !dbg !5833
  %32 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5834
  %update_lock17 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %32, i32 0, i32 2, !dbg !5835
  call void @mutex_unlock(%struct.mutex* %update_lock17) #5, !dbg !5836
  %33 = load i64, i64* %count.addr, align 8, !dbg !5837
  store i64 %33, i64* %retval, align 8, !dbg !5838
  br label %return, !dbg !5838

return:                                           ; preds = %cond.end9, %if.then
  %34 = load i64, i64* %retval, align 8, !dbg !5839
  ret i64 %34, !dbg !5839
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp_max_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5840 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %sensor_attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %data = alloca %struct.vt8231_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5841, metadata !DIExpression()), !dbg !5842
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5843, metadata !DIExpression()), !dbg !5844
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5845, metadata !DIExpression()), !dbg !5846
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %sensor_attr, metadata !5847, metadata !DIExpression()), !dbg !5848
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5849, metadata !DIExpression()), !dbg !5851
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !5851
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !5851
  store i8* %1, i8** %__mptr, align 8, !dbg !5851
  br label %do.body, !dbg !5851

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5852

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5851
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5851
  %3 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5851
  store %struct.sensor_device_attribute* %3, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5852
  %4 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5851
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5848
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5854, metadata !DIExpression()), !dbg !5855
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5856
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %5, i32 0, i32 1, !dbg !5857
  %6 = load i32, i32* %index, align 8, !dbg !5857
  store i32 %6, i32* %nr, align 4, !dbg !5855
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !5858, metadata !DIExpression()), !dbg !5859
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5860
  %call = call %struct.vt8231_data* @vt8231_update_device(%struct.device* %7) #5, !dbg !5861
  store %struct.vt8231_data* %call, %struct.vt8231_data** %data, align 8, !dbg !5859
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5862
  %9 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5863
  %temp_max = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %9, i32 0, i32 10, !dbg !5863
  %10 = load i32, i32* %nr, align 4, !dbg !5863
  %idxprom = sext i32 %10 to i64, !dbg !5863
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %temp_max, i64 0, i64 %idxprom, !dbg !5863
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5863
  %conv = zext i8 %11 to i32, !dbg !5863
  %sub = sub i32 253, %conv, !dbg !5863
  %mul = mul i32 %sub, 2200, !dbg !5863
  %add = add i32 %mul, 105, !dbg !5863
  %div = sdiv i32 %add, 210, !dbg !5863
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %div) #5, !dbg !5864
  %conv2 = sext i32 %call1 to i64, !dbg !5864
  ret i64 %conv2, !dbg !5865
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp_max_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !5866 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %sensor_attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %data = alloca %struct.vt8231_data*, align 8
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  %__UNIQUE_ID___x279 = alloca i64, align 8
  %__UNIQUE_ID___x277 = alloca i64, align 8
  %__UNIQUE_ID___y278 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %__UNIQUE_ID___y280 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5867, metadata !DIExpression()), !dbg !5868
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5869, metadata !DIExpression()), !dbg !5870
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5871, metadata !DIExpression()), !dbg !5872
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5873, metadata !DIExpression()), !dbg !5874
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %sensor_attr, metadata !5875, metadata !DIExpression()), !dbg !5876
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5877, metadata !DIExpression()), !dbg !5879
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !5879
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !5879
  store i8* %1, i8** %__mptr, align 8, !dbg !5879
  br label %do.body, !dbg !5879

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5880

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5879
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5879
  %3 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5879
  store %struct.sensor_device_attribute* %3, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5880
  %4 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5879
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5876
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5882, metadata !DIExpression()), !dbg !5883
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5884
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %5, i32 0, i32 1, !dbg !5885
  %6 = load i32, i32* %index, align 8, !dbg !5885
  store i32 %6, i32* %nr, align 4, !dbg !5883
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !5886, metadata !DIExpression()), !dbg !5887
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5888
  %call = call i8* @dev_get_drvdata(%struct.device* %7) #5, !dbg !5889
  %8 = bitcast i8* %call to %struct.vt8231_data*, !dbg !5889
  store %struct.vt8231_data* %8, %struct.vt8231_data** %data, align 8, !dbg !5887
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5890, metadata !DIExpression()), !dbg !5891
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5892, metadata !DIExpression()), !dbg !5893
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !5894
  %call1 = call i32 @kstrtol(i8* %9, i32 10, i64* %val) #5, !dbg !5895
  store i32 %call1, i32* %err, align 4, !dbg !5896
  %10 = load i32, i32* %err, align 4, !dbg !5897
  %tobool = icmp ne i32 %10, 0, !dbg !5897
  br i1 %tobool, label %if.then, label %if.end, !dbg !5899

if.then:                                          ; preds = %do.end
  %11 = load i32, i32* %err, align 4, !dbg !5900
  %conv = sext i32 %11 to i64, !dbg !5900
  store i64 %conv, i64* %retval, align 8, !dbg !5901
  br label %return, !dbg !5901

if.end:                                           ; preds = %do.end
  %12 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5902
  %update_lock = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %12, i32 0, i32 2, !dbg !5903
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !5904
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x279, metadata !5905, metadata !DIExpression()), !dbg !5907
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x277, metadata !5908, metadata !DIExpression()), !dbg !5910
  %13 = load i64, i64* %val, align 8, !dbg !5910
  %mul = mul i64 %13, 210, !dbg !5910
  %add = add i64 %mul, 1100, !dbg !5910
  %div = sdiv i64 %add, 2200, !dbg !5910
  %sub = sub i64 253, %div, !dbg !5910
  store i64 %sub, i64* %__UNIQUE_ID___x277, align 8, !dbg !5910
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y278, metadata !5911, metadata !DIExpression()), !dbg !5910
  store i64 0, i64* %__UNIQUE_ID___y278, align 8, !dbg !5910
  %14 = load i64, i64* %__UNIQUE_ID___x277, align 8, !dbg !5910
  %15 = load i64, i64* %__UNIQUE_ID___y278, align 8, !dbg !5910
  %cmp = icmp sgt i64 %14, %15, !dbg !5910
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5910

cond.true:                                        ; preds = %if.end
  %16 = load i64, i64* %__UNIQUE_ID___x277, align 8, !dbg !5910
  br label %cond.end, !dbg !5910

cond.false:                                       ; preds = %if.end
  %17 = load i64, i64* %__UNIQUE_ID___y278, align 8, !dbg !5910
  br label %cond.end, !dbg !5910

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !5910
  store i64 %cond, i64* %tmp2, align 8, !dbg !5910
  %18 = load i64, i64* %tmp2, align 8, !dbg !5910
  store i64 %18, i64* %__UNIQUE_ID___x279, align 8, !dbg !5907
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y280, metadata !5912, metadata !DIExpression()), !dbg !5907
  store i64 255, i64* %__UNIQUE_ID___y280, align 8, !dbg !5907
  %19 = load i64, i64* %__UNIQUE_ID___x279, align 8, !dbg !5907
  %20 = load i64, i64* %__UNIQUE_ID___y280, align 8, !dbg !5907
  %cmp5 = icmp slt i64 %19, %20, !dbg !5907
  br i1 %cmp5, label %cond.true7, label %cond.false8, !dbg !5907

cond.true7:                                       ; preds = %cond.end
  %21 = load i64, i64* %__UNIQUE_ID___x279, align 8, !dbg !5907
  br label %cond.end9, !dbg !5907

cond.false8:                                      ; preds = %cond.end
  %22 = load i64, i64* %__UNIQUE_ID___y280, align 8, !dbg !5907
  br label %cond.end9, !dbg !5907

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi i64 [ %21, %cond.true7 ], [ %22, %cond.false8 ], !dbg !5907
  store i64 %cond10, i64* %tmp4, align 8, !dbg !5907
  %23 = load i64, i64* %tmp4, align 8, !dbg !5907
  %conv11 = trunc i64 %23 to i8, !dbg !5913
  %24 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5914
  %temp_max = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %24, i32 0, i32 10, !dbg !5915
  %25 = load i32, i32* %nr, align 4, !dbg !5916
  %idxprom = sext i32 %25 to i64, !dbg !5914
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %temp_max, i64 0, i64 %idxprom, !dbg !5914
  store i8 %conv11, i8* %arrayidx, align 1, !dbg !5917
  %26 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5918
  %27 = load i32, i32* %nr, align 4, !dbg !5919
  %idxprom12 = sext i32 %27 to i64, !dbg !5920
  %arrayidx13 = getelementptr [6 x i8], [6 x i8]* @regtempmax, i64 0, i64 %idxprom12, !dbg !5920
  %28 = load i8, i8* %arrayidx13, align 1, !dbg !5920
  %29 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5921
  %temp_max14 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %29, i32 0, i32 10, !dbg !5922
  %30 = load i32, i32* %nr, align 4, !dbg !5923
  %idxprom15 = sext i32 %30 to i64, !dbg !5921
  %arrayidx16 = getelementptr [6 x i8], [6 x i8]* %temp_max14, i64 0, i64 %idxprom15, !dbg !5921
  %31 = load i8, i8* %arrayidx16, align 1, !dbg !5921
  call void @vt8231_write_value(%struct.vt8231_data* %26, i8 zeroext %28, i8 zeroext %31) #5, !dbg !5924
  %32 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5925
  %update_lock17 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %32, i32 0, i32 2, !dbg !5926
  call void @mutex_unlock(%struct.mutex* %update_lock17) #5, !dbg !5927
  %33 = load i64, i64* %count.addr, align 8, !dbg !5928
  store i64 %33, i64* %retval, align 8, !dbg !5929
  br label %return, !dbg !5929

return:                                           ; preds = %cond.end9, %if.then
  %34 = load i64, i64* %retval, align 8, !dbg !5930
  ret i64 %34, !dbg !5930
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @in_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5931 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %sensor_attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %data = alloca %struct.vt8231_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5932, metadata !DIExpression()), !dbg !5933
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5934, metadata !DIExpression()), !dbg !5935
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5936, metadata !DIExpression()), !dbg !5937
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %sensor_attr, metadata !5938, metadata !DIExpression()), !dbg !5939
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5940, metadata !DIExpression()), !dbg !5942
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !5942
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !5942
  store i8* %1, i8** %__mptr, align 8, !dbg !5942
  br label %do.body, !dbg !5942

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5943

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5942
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5942
  %3 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5942
  store %struct.sensor_device_attribute* %3, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5943
  %4 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5942
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5939
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5945, metadata !DIExpression()), !dbg !5946
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5947
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %5, i32 0, i32 1, !dbg !5948
  %6 = load i32, i32* %index, align 8, !dbg !5948
  store i32 %6, i32* %nr, align 4, !dbg !5946
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !5949, metadata !DIExpression()), !dbg !5950
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5951
  %call = call %struct.vt8231_data* @vt8231_update_device(%struct.device* %7) #5, !dbg !5952
  store %struct.vt8231_data* %call, %struct.vt8231_data** %data, align 8, !dbg !5950
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5953
  %9 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5954
  %in = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %9, i32 0, i32 6, !dbg !5955
  %10 = load i32, i32* %nr, align 4, !dbg !5956
  %idxprom = sext i32 %10 to i64, !dbg !5954
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %in, i64 0, i64 %idxprom, !dbg !5954
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5954
  %conv = zext i8 %11 to i32, !dbg !5954
  %sub = sub i32 %conv, 3, !dbg !5957
  %mul = mul i32 %sub, 10000, !dbg !5958
  %div = sdiv i32 %mul, 958, !dbg !5959
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %div) #5, !dbg !5960
  %conv2 = sext i32 %call1 to i64, !dbg !5960
  ret i64 %conv2, !dbg !5961
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @in_min_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5962 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %sensor_attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %data = alloca %struct.vt8231_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5963, metadata !DIExpression()), !dbg !5964
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5965, metadata !DIExpression()), !dbg !5966
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5967, metadata !DIExpression()), !dbg !5968
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %sensor_attr, metadata !5969, metadata !DIExpression()), !dbg !5970
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5971, metadata !DIExpression()), !dbg !5973
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !5973
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !5973
  store i8* %1, i8** %__mptr, align 8, !dbg !5973
  br label %do.body, !dbg !5973

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5974

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5973
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5973
  %3 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5973
  store %struct.sensor_device_attribute* %3, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5974
  %4 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5973
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5970
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5976, metadata !DIExpression()), !dbg !5977
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !5978
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %5, i32 0, i32 1, !dbg !5979
  %6 = load i32, i32* %index, align 8, !dbg !5979
  store i32 %6, i32* %nr, align 4, !dbg !5977
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !5980, metadata !DIExpression()), !dbg !5981
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5982
  %call = call %struct.vt8231_data* @vt8231_update_device(%struct.device* %7) #5, !dbg !5983
  store %struct.vt8231_data* %call, %struct.vt8231_data** %data, align 8, !dbg !5981
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5984
  %9 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !5985
  %in_min = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %9, i32 0, i32 8, !dbg !5986
  %10 = load i32, i32* %nr, align 4, !dbg !5987
  %idxprom = sext i32 %10 to i64, !dbg !5985
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %in_min, i64 0, i64 %idxprom, !dbg !5985
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5985
  %conv = zext i8 %11 to i32, !dbg !5985
  %sub = sub i32 %conv, 3, !dbg !5988
  %mul = mul i32 %sub, 10000, !dbg !5989
  %div = sdiv i32 %mul, 958, !dbg !5990
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %div) #5, !dbg !5991
  %conv2 = sext i32 %call1 to i64, !dbg !5991
  ret i64 %conv2, !dbg !5992
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @in_min_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !5993 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %sensor_attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %data = alloca %struct.vt8231_data*, align 8
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  %__UNIQUE_ID___x250 = alloca i64, align 8
  %__UNIQUE_ID___x248 = alloca i64, align 8
  %__UNIQUE_ID___y249 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %__UNIQUE_ID___y251 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5994, metadata !DIExpression()), !dbg !5995
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5996, metadata !DIExpression()), !dbg !5997
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5998, metadata !DIExpression()), !dbg !5999
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !6000, metadata !DIExpression()), !dbg !6001
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %sensor_attr, metadata !6002, metadata !DIExpression()), !dbg !6003
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6004, metadata !DIExpression()), !dbg !6006
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !6006
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !6006
  store i8* %1, i8** %__mptr, align 8, !dbg !6006
  br label %do.body, !dbg !6006

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6007

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6006
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !6006
  %3 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !6006
  store %struct.sensor_device_attribute* %3, %struct.sensor_device_attribute** %tmp, align 8, !dbg !6007
  %4 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !6006
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !6003
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !6009, metadata !DIExpression()), !dbg !6010
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !6011
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %5, i32 0, i32 1, !dbg !6012
  %6 = load i32, i32* %index, align 8, !dbg !6012
  store i32 %6, i32* %nr, align 4, !dbg !6010
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !6013, metadata !DIExpression()), !dbg !6014
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6015
  %call = call i8* @dev_get_drvdata(%struct.device* %7) #5, !dbg !6016
  %8 = bitcast i8* %call to %struct.vt8231_data*, !dbg !6016
  store %struct.vt8231_data* %8, %struct.vt8231_data** %data, align 8, !dbg !6014
  call void @llvm.dbg.declare(metadata i64* %val, metadata !6017, metadata !DIExpression()), !dbg !6018
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6019, metadata !DIExpression()), !dbg !6020
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !6021
  %call1 = call i32 @kstrtoul(i8* %9, i32 10, i64* %val) #5, !dbg !6022
  store i32 %call1, i32* %err, align 4, !dbg !6023
  %10 = load i32, i32* %err, align 4, !dbg !6024
  %tobool = icmp ne i32 %10, 0, !dbg !6024
  br i1 %tobool, label %if.then, label %if.end, !dbg !6026

if.then:                                          ; preds = %do.end
  %11 = load i32, i32* %err, align 4, !dbg !6027
  %conv = sext i32 %11 to i64, !dbg !6027
  store i64 %conv, i64* %retval, align 8, !dbg !6028
  br label %return, !dbg !6028

if.end:                                           ; preds = %do.end
  %12 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6029
  %update_lock = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %12, i32 0, i32 2, !dbg !6030
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !6031
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x250, metadata !6032, metadata !DIExpression()), !dbg !6034
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x248, metadata !6035, metadata !DIExpression()), !dbg !6037
  %13 = load i64, i64* %val, align 8, !dbg !6037
  %mul = mul i64 %13, 958, !dbg !6037
  %div = udiv i64 %mul, 10000, !dbg !6037
  %add = add i64 %div, 3, !dbg !6037
  store i64 %add, i64* %__UNIQUE_ID___x248, align 8, !dbg !6037
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y249, metadata !6038, metadata !DIExpression()), !dbg !6037
  store i64 0, i64* %__UNIQUE_ID___y249, align 8, !dbg !6037
  %14 = load i64, i64* %__UNIQUE_ID___x248, align 8, !dbg !6037
  %15 = load i64, i64* %__UNIQUE_ID___y249, align 8, !dbg !6037
  %cmp = icmp ugt i64 %14, %15, !dbg !6037
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6037

cond.true:                                        ; preds = %if.end
  %16 = load i64, i64* %__UNIQUE_ID___x248, align 8, !dbg !6037
  br label %cond.end, !dbg !6037

cond.false:                                       ; preds = %if.end
  %17 = load i64, i64* %__UNIQUE_ID___y249, align 8, !dbg !6037
  br label %cond.end, !dbg !6037

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !6037
  store i64 %cond, i64* %tmp2, align 8, !dbg !6037
  %18 = load i64, i64* %tmp2, align 8, !dbg !6037
  store i64 %18, i64* %__UNIQUE_ID___x250, align 8, !dbg !6034
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y251, metadata !6039, metadata !DIExpression()), !dbg !6034
  store i64 255, i64* %__UNIQUE_ID___y251, align 8, !dbg !6034
  %19 = load i64, i64* %__UNIQUE_ID___x250, align 8, !dbg !6034
  %20 = load i64, i64* %__UNIQUE_ID___y251, align 8, !dbg !6034
  %cmp5 = icmp ult i64 %19, %20, !dbg !6034
  br i1 %cmp5, label %cond.true7, label %cond.false8, !dbg !6034

cond.true7:                                       ; preds = %cond.end
  %21 = load i64, i64* %__UNIQUE_ID___x250, align 8, !dbg !6034
  br label %cond.end9, !dbg !6034

cond.false8:                                      ; preds = %cond.end
  %22 = load i64, i64* %__UNIQUE_ID___y251, align 8, !dbg !6034
  br label %cond.end9, !dbg !6034

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi i64 [ %21, %cond.true7 ], [ %22, %cond.false8 ], !dbg !6034
  store i64 %cond10, i64* %tmp4, align 8, !dbg !6034
  %23 = load i64, i64* %tmp4, align 8, !dbg !6034
  %conv11 = trunc i64 %23 to i8, !dbg !6040
  %24 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6041
  %in_min = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %24, i32 0, i32 8, !dbg !6042
  %25 = load i32, i32* %nr, align 4, !dbg !6043
  %idxprom = sext i32 %25 to i64, !dbg !6041
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %in_min, i64 0, i64 %idxprom, !dbg !6041
  store i8 %conv11, i8* %arrayidx, align 1, !dbg !6044
  %26 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6045
  %27 = load i32, i32* %nr, align 4, !dbg !6046
  %idxprom12 = sext i32 %27 to i64, !dbg !6047
  %arrayidx13 = getelementptr [6 x i8], [6 x i8]* @regvoltmin, i64 0, i64 %idxprom12, !dbg !6047
  %28 = load i8, i8* %arrayidx13, align 1, !dbg !6047
  %29 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6048
  %in_min14 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %29, i32 0, i32 8, !dbg !6049
  %30 = load i32, i32* %nr, align 4, !dbg !6050
  %idxprom15 = sext i32 %30 to i64, !dbg !6048
  %arrayidx16 = getelementptr [6 x i8], [6 x i8]* %in_min14, i64 0, i64 %idxprom15, !dbg !6048
  %31 = load i8, i8* %arrayidx16, align 1, !dbg !6048
  call void @vt8231_write_value(%struct.vt8231_data* %26, i8 zeroext %28, i8 zeroext %31) #5, !dbg !6051
  %32 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6052
  %update_lock17 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %32, i32 0, i32 2, !dbg !6053
  call void @mutex_unlock(%struct.mutex* %update_lock17) #5, !dbg !6054
  %33 = load i64, i64* %count.addr, align 8, !dbg !6055
  store i64 %33, i64* %retval, align 8, !dbg !6056
  br label %return, !dbg !6056

return:                                           ; preds = %cond.end9, %if.then
  %34 = load i64, i64* %retval, align 8, !dbg !6057
  ret i64 %34, !dbg !6057
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @in_max_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !6058 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %sensor_attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %data = alloca %struct.vt8231_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6059, metadata !DIExpression()), !dbg !6060
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6061, metadata !DIExpression()), !dbg !6062
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6063, metadata !DIExpression()), !dbg !6064
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %sensor_attr, metadata !6065, metadata !DIExpression()), !dbg !6066
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6067, metadata !DIExpression()), !dbg !6069
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !6069
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !6069
  store i8* %1, i8** %__mptr, align 8, !dbg !6069
  br label %do.body, !dbg !6069

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6070

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6069
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !6069
  %3 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !6069
  store %struct.sensor_device_attribute* %3, %struct.sensor_device_attribute** %tmp, align 8, !dbg !6070
  %4 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !6069
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !6066
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !6072, metadata !DIExpression()), !dbg !6073
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !6074
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %5, i32 0, i32 1, !dbg !6075
  %6 = load i32, i32* %index, align 8, !dbg !6075
  store i32 %6, i32* %nr, align 4, !dbg !6073
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !6076, metadata !DIExpression()), !dbg !6077
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6078
  %call = call %struct.vt8231_data* @vt8231_update_device(%struct.device* %7) #5, !dbg !6079
  store %struct.vt8231_data* %call, %struct.vt8231_data** %data, align 8, !dbg !6077
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !6080
  %9 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6081
  %in_max = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %9, i32 0, i32 7, !dbg !6082
  %10 = load i32, i32* %nr, align 4, !dbg !6083
  %idxprom = sext i32 %10 to i64, !dbg !6081
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %in_max, i64 0, i64 %idxprom, !dbg !6081
  %11 = load i8, i8* %arrayidx, align 1, !dbg !6081
  %conv = zext i8 %11 to i32, !dbg !6081
  %sub = sub i32 %conv, 3, !dbg !6084
  %mul = mul i32 %sub, 10000, !dbg !6085
  %div = sdiv i32 %mul, 958, !dbg !6086
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %div) #5, !dbg !6087
  %conv2 = sext i32 %call1 to i64, !dbg !6087
  ret i64 %conv2, !dbg !6088
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @in_max_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !6089 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %sensor_attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %data = alloca %struct.vt8231_data*, align 8
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  %__UNIQUE_ID___x255 = alloca i64, align 8
  %__UNIQUE_ID___x253 = alloca i64, align 8
  %__UNIQUE_ID___y254 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %__UNIQUE_ID___y256 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6090, metadata !DIExpression()), !dbg !6091
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6092, metadata !DIExpression()), !dbg !6093
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6094, metadata !DIExpression()), !dbg !6095
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !6096, metadata !DIExpression()), !dbg !6097
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %sensor_attr, metadata !6098, metadata !DIExpression()), !dbg !6099
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6100, metadata !DIExpression()), !dbg !6102
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !6102
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !6102
  store i8* %1, i8** %__mptr, align 8, !dbg !6102
  br label %do.body, !dbg !6102

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6103

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6102
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !6102
  %3 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !6102
  store %struct.sensor_device_attribute* %3, %struct.sensor_device_attribute** %tmp, align 8, !dbg !6103
  %4 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !6102
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !6099
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !6105, metadata !DIExpression()), !dbg !6106
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %sensor_attr, align 8, !dbg !6107
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %5, i32 0, i32 1, !dbg !6108
  %6 = load i32, i32* %index, align 8, !dbg !6108
  store i32 %6, i32* %nr, align 4, !dbg !6106
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !6109, metadata !DIExpression()), !dbg !6110
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6111
  %call = call i8* @dev_get_drvdata(%struct.device* %7) #5, !dbg !6112
  %8 = bitcast i8* %call to %struct.vt8231_data*, !dbg !6112
  store %struct.vt8231_data* %8, %struct.vt8231_data** %data, align 8, !dbg !6110
  call void @llvm.dbg.declare(metadata i64* %val, metadata !6113, metadata !DIExpression()), !dbg !6114
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6115, metadata !DIExpression()), !dbg !6116
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !6117
  %call1 = call i32 @kstrtoul(i8* %9, i32 10, i64* %val) #5, !dbg !6118
  store i32 %call1, i32* %err, align 4, !dbg !6119
  %10 = load i32, i32* %err, align 4, !dbg !6120
  %tobool = icmp ne i32 %10, 0, !dbg !6120
  br i1 %tobool, label %if.then, label %if.end, !dbg !6122

if.then:                                          ; preds = %do.end
  %11 = load i32, i32* %err, align 4, !dbg !6123
  %conv = sext i32 %11 to i64, !dbg !6123
  store i64 %conv, i64* %retval, align 8, !dbg !6124
  br label %return, !dbg !6124

if.end:                                           ; preds = %do.end
  %12 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6125
  %update_lock = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %12, i32 0, i32 2, !dbg !6126
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !6127
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x255, metadata !6128, metadata !DIExpression()), !dbg !6130
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x253, metadata !6131, metadata !DIExpression()), !dbg !6133
  %13 = load i64, i64* %val, align 8, !dbg !6133
  %mul = mul i64 %13, 958, !dbg !6133
  %div = udiv i64 %mul, 10000, !dbg !6133
  %add = add i64 %div, 3, !dbg !6133
  store i64 %add, i64* %__UNIQUE_ID___x253, align 8, !dbg !6133
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y254, metadata !6134, metadata !DIExpression()), !dbg !6133
  store i64 0, i64* %__UNIQUE_ID___y254, align 8, !dbg !6133
  %14 = load i64, i64* %__UNIQUE_ID___x253, align 8, !dbg !6133
  %15 = load i64, i64* %__UNIQUE_ID___y254, align 8, !dbg !6133
  %cmp = icmp ugt i64 %14, %15, !dbg !6133
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6133

cond.true:                                        ; preds = %if.end
  %16 = load i64, i64* %__UNIQUE_ID___x253, align 8, !dbg !6133
  br label %cond.end, !dbg !6133

cond.false:                                       ; preds = %if.end
  %17 = load i64, i64* %__UNIQUE_ID___y254, align 8, !dbg !6133
  br label %cond.end, !dbg !6133

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !6133
  store i64 %cond, i64* %tmp2, align 8, !dbg !6133
  %18 = load i64, i64* %tmp2, align 8, !dbg !6133
  store i64 %18, i64* %__UNIQUE_ID___x255, align 8, !dbg !6130
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y256, metadata !6135, metadata !DIExpression()), !dbg !6130
  store i64 255, i64* %__UNIQUE_ID___y256, align 8, !dbg !6130
  %19 = load i64, i64* %__UNIQUE_ID___x255, align 8, !dbg !6130
  %20 = load i64, i64* %__UNIQUE_ID___y256, align 8, !dbg !6130
  %cmp5 = icmp ult i64 %19, %20, !dbg !6130
  br i1 %cmp5, label %cond.true7, label %cond.false8, !dbg !6130

cond.true7:                                       ; preds = %cond.end
  %21 = load i64, i64* %__UNIQUE_ID___x255, align 8, !dbg !6130
  br label %cond.end9, !dbg !6130

cond.false8:                                      ; preds = %cond.end
  %22 = load i64, i64* %__UNIQUE_ID___y256, align 8, !dbg !6130
  br label %cond.end9, !dbg !6130

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi i64 [ %21, %cond.true7 ], [ %22, %cond.false8 ], !dbg !6130
  store i64 %cond10, i64* %tmp4, align 8, !dbg !6130
  %23 = load i64, i64* %tmp4, align 8, !dbg !6130
  %conv11 = trunc i64 %23 to i8, !dbg !6136
  %24 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6137
  %in_max = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %24, i32 0, i32 7, !dbg !6138
  %25 = load i32, i32* %nr, align 4, !dbg !6139
  %idxprom = sext i32 %25 to i64, !dbg !6137
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %in_max, i64 0, i64 %idxprom, !dbg !6137
  store i8 %conv11, i8* %arrayidx, align 1, !dbg !6140
  %26 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6141
  %27 = load i32, i32* %nr, align 4, !dbg !6142
  %idxprom12 = sext i32 %27 to i64, !dbg !6143
  %arrayidx13 = getelementptr [6 x i8], [6 x i8]* @regvoltmax, i64 0, i64 %idxprom12, !dbg !6143
  %28 = load i8, i8* %arrayidx13, align 1, !dbg !6143
  %29 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6144
  %in_max14 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %29, i32 0, i32 7, !dbg !6145
  %30 = load i32, i32* %nr, align 4, !dbg !6146
  %idxprom15 = sext i32 %30 to i64, !dbg !6144
  %arrayidx16 = getelementptr [6 x i8], [6 x i8]* %in_max14, i64 0, i64 %idxprom15, !dbg !6144
  %31 = load i8, i8* %arrayidx16, align 1, !dbg !6144
  call void @vt8231_write_value(%struct.vt8231_data* %26, i8 zeroext %28, i8 zeroext %31) #5, !dbg !6147
  %32 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6148
  %update_lock17 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %32, i32 0, i32 2, !dbg !6149
  call void @mutex_unlock(%struct.mutex* %update_lock17) #5, !dbg !6150
  %33 = load i64, i64* %count.addr, align 8, !dbg !6151
  store i64 %33, i64* %retval, align 8, !dbg !6152
  br label %return, !dbg !6152

return:                                           ; preds = %cond.end9, %if.then
  %34 = load i64, i64* %retval, align 8, !dbg !6153
  ret i64 %34, !dbg !6153
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @in5_input_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !6154 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.vt8231_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6155, metadata !DIExpression()), !dbg !6156
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6157, metadata !DIExpression()), !dbg !6158
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6159, metadata !DIExpression()), !dbg !6160
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !6161, metadata !DIExpression()), !dbg !6162
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6163
  %call = call %struct.vt8231_data* @vt8231_update_device(%struct.device* %0) #5, !dbg !6164
  store %struct.vt8231_data* %call, %struct.vt8231_data** %data, align 8, !dbg !6162
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !6165
  %2 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6166
  %in = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %2, i32 0, i32 6, !dbg !6167
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %in, i64 0, i64 5, !dbg !6166
  %3 = load i8, i8* %arrayidx, align 1, !dbg !6166
  %conv = zext i8 %3 to i32, !dbg !6166
  %sub = sub i32 %conv, 3, !dbg !6168
  %mul = mul i32 %sub, 10000, !dbg !6169
  %mul1 = mul i32 %mul, 54, !dbg !6170
  %div = sdiv i32 %mul1, 32572, !dbg !6171
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %div) #5, !dbg !6172
  %conv3 = sext i32 %call2 to i64, !dbg !6172
  ret i64 %conv3, !dbg !6173
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @in5_min_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !6174 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.vt8231_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6175, metadata !DIExpression()), !dbg !6176
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6177, metadata !DIExpression()), !dbg !6178
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6179, metadata !DIExpression()), !dbg !6180
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !6181, metadata !DIExpression()), !dbg !6182
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6183
  %call = call %struct.vt8231_data* @vt8231_update_device(%struct.device* %0) #5, !dbg !6184
  store %struct.vt8231_data* %call, %struct.vt8231_data** %data, align 8, !dbg !6182
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !6185
  %2 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6186
  %in_min = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %2, i32 0, i32 8, !dbg !6187
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %in_min, i64 0, i64 5, !dbg !6186
  %3 = load i8, i8* %arrayidx, align 1, !dbg !6186
  %conv = zext i8 %3 to i32, !dbg !6186
  %sub = sub i32 %conv, 3, !dbg !6188
  %mul = mul i32 %sub, 10000, !dbg !6189
  %mul1 = mul i32 %mul, 54, !dbg !6190
  %div = sdiv i32 %mul1, 32572, !dbg !6191
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %div) #5, !dbg !6192
  %conv3 = sext i32 %call2 to i64, !dbg !6192
  ret i64 %conv3, !dbg !6193
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @in5_min_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !6194 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %data = alloca %struct.vt8231_data*, align 8
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  %__UNIQUE_ID___x259 = alloca i64, align 8
  %__UNIQUE_ID___x257 = alloca i64, align 8
  %__UNIQUE_ID___y258 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___y260 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6195, metadata !DIExpression()), !dbg !6196
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6197, metadata !DIExpression()), !dbg !6198
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6199, metadata !DIExpression()), !dbg !6200
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !6201, metadata !DIExpression()), !dbg !6202
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !6203, metadata !DIExpression()), !dbg !6204
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6205
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !6206
  %1 = bitcast i8* %call to %struct.vt8231_data*, !dbg !6206
  store %struct.vt8231_data* %1, %struct.vt8231_data** %data, align 8, !dbg !6204
  call void @llvm.dbg.declare(metadata i64* %val, metadata !6207, metadata !DIExpression()), !dbg !6208
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6209, metadata !DIExpression()), !dbg !6210
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !6211
  %call1 = call i32 @kstrtoul(i8* %2, i32 10, i64* %val) #5, !dbg !6212
  store i32 %call1, i32* %err, align 4, !dbg !6213
  %3 = load i32, i32* %err, align 4, !dbg !6214
  %tobool = icmp ne i32 %3, 0, !dbg !6214
  br i1 %tobool, label %if.then, label %if.end, !dbg !6216

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %err, align 4, !dbg !6217
  %conv = sext i32 %4 to i64, !dbg !6217
  store i64 %conv, i64* %retval, align 8, !dbg !6218
  br label %return, !dbg !6218

if.end:                                           ; preds = %entry
  %5 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6219
  %update_lock = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %5, i32 0, i32 2, !dbg !6220
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !6221
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x259, metadata !6222, metadata !DIExpression()), !dbg !6224
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x257, metadata !6225, metadata !DIExpression()), !dbg !6227
  %6 = load i64, i64* %val, align 8, !dbg !6227
  %mul = mul i64 %6, 958, !dbg !6227
  %mul2 = mul i64 %mul, 34, !dbg !6227
  %div = udiv i64 %mul2, 540000, !dbg !6227
  %add = add i64 %div, 3, !dbg !6227
  store i64 %add, i64* %__UNIQUE_ID___x257, align 8, !dbg !6227
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y258, metadata !6228, metadata !DIExpression()), !dbg !6227
  store i64 0, i64* %__UNIQUE_ID___y258, align 8, !dbg !6227
  %7 = load i64, i64* %__UNIQUE_ID___x257, align 8, !dbg !6227
  %8 = load i64, i64* %__UNIQUE_ID___y258, align 8, !dbg !6227
  %cmp = icmp ugt i64 %7, %8, !dbg !6227
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6227

cond.true:                                        ; preds = %if.end
  %9 = load i64, i64* %__UNIQUE_ID___x257, align 8, !dbg !6227
  br label %cond.end, !dbg !6227

cond.false:                                       ; preds = %if.end
  %10 = load i64, i64* %__UNIQUE_ID___y258, align 8, !dbg !6227
  br label %cond.end, !dbg !6227

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %10, %cond.false ], !dbg !6227
  store i64 %cond, i64* %tmp, align 8, !dbg !6227
  %11 = load i64, i64* %tmp, align 8, !dbg !6227
  store i64 %11, i64* %__UNIQUE_ID___x259, align 8, !dbg !6224
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y260, metadata !6229, metadata !DIExpression()), !dbg !6224
  store i64 255, i64* %__UNIQUE_ID___y260, align 8, !dbg !6224
  %12 = load i64, i64* %__UNIQUE_ID___x259, align 8, !dbg !6224
  %13 = load i64, i64* %__UNIQUE_ID___y260, align 8, !dbg !6224
  %cmp5 = icmp ult i64 %12, %13, !dbg !6224
  br i1 %cmp5, label %cond.true7, label %cond.false8, !dbg !6224

cond.true7:                                       ; preds = %cond.end
  %14 = load i64, i64* %__UNIQUE_ID___x259, align 8, !dbg !6224
  br label %cond.end9, !dbg !6224

cond.false8:                                      ; preds = %cond.end
  %15 = load i64, i64* %__UNIQUE_ID___y260, align 8, !dbg !6224
  br label %cond.end9, !dbg !6224

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi i64 [ %14, %cond.true7 ], [ %15, %cond.false8 ], !dbg !6224
  store i64 %cond10, i64* %tmp4, align 8, !dbg !6224
  %16 = load i64, i64* %tmp4, align 8, !dbg !6224
  %conv11 = trunc i64 %16 to i8, !dbg !6230
  %17 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6231
  %in_min = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %17, i32 0, i32 8, !dbg !6232
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %in_min, i64 0, i64 5, !dbg !6231
  store i8 %conv11, i8* %arrayidx, align 1, !dbg !6233
  %18 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6234
  %19 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @regvoltmin, i64 0, i64 5), align 1, !dbg !6235
  %20 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6236
  %in_min12 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %20, i32 0, i32 8, !dbg !6237
  %arrayidx13 = getelementptr [6 x i8], [6 x i8]* %in_min12, i64 0, i64 5, !dbg !6236
  %21 = load i8, i8* %arrayidx13, align 1, !dbg !6236
  call void @vt8231_write_value(%struct.vt8231_data* %18, i8 zeroext %19, i8 zeroext %21) #5, !dbg !6238
  %22 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6239
  %update_lock14 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %22, i32 0, i32 2, !dbg !6240
  call void @mutex_unlock(%struct.mutex* %update_lock14) #5, !dbg !6241
  %23 = load i64, i64* %count.addr, align 8, !dbg !6242
  store i64 %23, i64* %retval, align 8, !dbg !6243
  br label %return, !dbg !6243

return:                                           ; preds = %cond.end9, %if.then
  %24 = load i64, i64* %retval, align 8, !dbg !6244
  ret i64 %24, !dbg !6244
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @in5_max_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !6245 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.vt8231_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6246, metadata !DIExpression()), !dbg !6247
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6248, metadata !DIExpression()), !dbg !6249
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6250, metadata !DIExpression()), !dbg !6251
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !6252, metadata !DIExpression()), !dbg !6253
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6254
  %call = call %struct.vt8231_data* @vt8231_update_device(%struct.device* %0) #5, !dbg !6255
  store %struct.vt8231_data* %call, %struct.vt8231_data** %data, align 8, !dbg !6253
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !6256
  %2 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6257
  %in_max = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %2, i32 0, i32 7, !dbg !6258
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %in_max, i64 0, i64 5, !dbg !6257
  %3 = load i8, i8* %arrayidx, align 1, !dbg !6257
  %conv = zext i8 %3 to i32, !dbg !6257
  %sub = sub i32 %conv, 3, !dbg !6259
  %mul = mul i32 %sub, 10000, !dbg !6260
  %mul1 = mul i32 %mul, 54, !dbg !6261
  %div = sdiv i32 %mul1, 32572, !dbg !6262
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %div) #5, !dbg !6263
  %conv3 = sext i32 %call2 to i64, !dbg !6263
  ret i64 %conv3, !dbg !6264
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @in5_max_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !6265 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %data = alloca %struct.vt8231_data*, align 8
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  %__UNIQUE_ID___x263 = alloca i64, align 8
  %__UNIQUE_ID___x261 = alloca i64, align 8
  %__UNIQUE_ID___y262 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___y264 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6266, metadata !DIExpression()), !dbg !6267
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6268, metadata !DIExpression()), !dbg !6269
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6270, metadata !DIExpression()), !dbg !6271
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !6272, metadata !DIExpression()), !dbg !6273
  call void @llvm.dbg.declare(metadata %struct.vt8231_data** %data, metadata !6274, metadata !DIExpression()), !dbg !6275
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6276
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !6277
  %1 = bitcast i8* %call to %struct.vt8231_data*, !dbg !6277
  store %struct.vt8231_data* %1, %struct.vt8231_data** %data, align 8, !dbg !6275
  call void @llvm.dbg.declare(metadata i64* %val, metadata !6278, metadata !DIExpression()), !dbg !6279
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6280, metadata !DIExpression()), !dbg !6281
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !6282
  %call1 = call i32 @kstrtoul(i8* %2, i32 10, i64* %val) #5, !dbg !6283
  store i32 %call1, i32* %err, align 4, !dbg !6284
  %3 = load i32, i32* %err, align 4, !dbg !6285
  %tobool = icmp ne i32 %3, 0, !dbg !6285
  br i1 %tobool, label %if.then, label %if.end, !dbg !6287

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %err, align 4, !dbg !6288
  %conv = sext i32 %4 to i64, !dbg !6288
  store i64 %conv, i64* %retval, align 8, !dbg !6289
  br label %return, !dbg !6289

if.end:                                           ; preds = %entry
  %5 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6290
  %update_lock = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %5, i32 0, i32 2, !dbg !6291
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !6292
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x263, metadata !6293, metadata !DIExpression()), !dbg !6295
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x261, metadata !6296, metadata !DIExpression()), !dbg !6298
  %6 = load i64, i64* %val, align 8, !dbg !6298
  %mul = mul i64 %6, 958, !dbg !6298
  %mul2 = mul i64 %mul, 34, !dbg !6298
  %div = udiv i64 %mul2, 540000, !dbg !6298
  %add = add i64 %div, 3, !dbg !6298
  store i64 %add, i64* %__UNIQUE_ID___x261, align 8, !dbg !6298
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y262, metadata !6299, metadata !DIExpression()), !dbg !6298
  store i64 0, i64* %__UNIQUE_ID___y262, align 8, !dbg !6298
  %7 = load i64, i64* %__UNIQUE_ID___x261, align 8, !dbg !6298
  %8 = load i64, i64* %__UNIQUE_ID___y262, align 8, !dbg !6298
  %cmp = icmp ugt i64 %7, %8, !dbg !6298
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6298

cond.true:                                        ; preds = %if.end
  %9 = load i64, i64* %__UNIQUE_ID___x261, align 8, !dbg !6298
  br label %cond.end, !dbg !6298

cond.false:                                       ; preds = %if.end
  %10 = load i64, i64* %__UNIQUE_ID___y262, align 8, !dbg !6298
  br label %cond.end, !dbg !6298

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %10, %cond.false ], !dbg !6298
  store i64 %cond, i64* %tmp, align 8, !dbg !6298
  %11 = load i64, i64* %tmp, align 8, !dbg !6298
  store i64 %11, i64* %__UNIQUE_ID___x263, align 8, !dbg !6295
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y264, metadata !6300, metadata !DIExpression()), !dbg !6295
  store i64 255, i64* %__UNIQUE_ID___y264, align 8, !dbg !6295
  %12 = load i64, i64* %__UNIQUE_ID___x263, align 8, !dbg !6295
  %13 = load i64, i64* %__UNIQUE_ID___y264, align 8, !dbg !6295
  %cmp5 = icmp ult i64 %12, %13, !dbg !6295
  br i1 %cmp5, label %cond.true7, label %cond.false8, !dbg !6295

cond.true7:                                       ; preds = %cond.end
  %14 = load i64, i64* %__UNIQUE_ID___x263, align 8, !dbg !6295
  br label %cond.end9, !dbg !6295

cond.false8:                                      ; preds = %cond.end
  %15 = load i64, i64* %__UNIQUE_ID___y264, align 8, !dbg !6295
  br label %cond.end9, !dbg !6295

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi i64 [ %14, %cond.true7 ], [ %15, %cond.false8 ], !dbg !6295
  store i64 %cond10, i64* %tmp4, align 8, !dbg !6295
  %16 = load i64, i64* %tmp4, align 8, !dbg !6295
  %conv11 = trunc i64 %16 to i8, !dbg !6301
  %17 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6302
  %in_max = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %17, i32 0, i32 7, !dbg !6303
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %in_max, i64 0, i64 5, !dbg !6302
  store i8 %conv11, i8* %arrayidx, align 1, !dbg !6304
  %18 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6305
  %19 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @regvoltmax, i64 0, i64 5), align 1, !dbg !6306
  %20 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6307
  %in_max12 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %20, i32 0, i32 7, !dbg !6308
  %arrayidx13 = getelementptr [6 x i8], [6 x i8]* %in_max12, i64 0, i64 5, !dbg !6307
  %21 = load i8, i8* %arrayidx13, align 1, !dbg !6307
  call void @vt8231_write_value(%struct.vt8231_data* %18, i8 zeroext %19, i8 zeroext %21) #5, !dbg !6309
  %22 = load %struct.vt8231_data*, %struct.vt8231_data** %data, align 8, !dbg !6310
  %update_lock14 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %22, i32 0, i32 2, !dbg !6311
  call void @mutex_unlock(%struct.mutex* %update_lock14) #5, !dbg !6312
  %23 = load i64, i64* %count.addr, align 8, !dbg !6313
  store i64 %23, i64* %retval, align 8, !dbg !6314
  br label %return, !dbg !6314

return:                                           ; preds = %cond.end9, %if.then
  %24 = load i64, i64* %retval, align 8, !dbg !6315
  ret i64 %24, !dbg !6315
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !6316 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !6321, metadata !DIExpression()), !dbg !6322
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !6323
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !6324
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #5, !dbg !6325
  ret i8* %call, !dbg !6326
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
!llvm.module.flags = !{!4427, !4428, !4429, !4430}
!llvm.ident = !{!4431}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_force_addr", scope: !2, file: !3, line: 32, type: !4424, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !107, globals: !3847, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/hwmon/vt8231.c", directory: "/home/lizy2001/genbc/linux")
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
!107 = !{!108, !109, !114, !117, !118, !120, !121, !146, !3845, !3846}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !110, line: 19, baseType: !111)
!110 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !112, line: 24, baseType: !113)
!112 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!113 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !116, line: 76, flags: DIFlagFwdDecl)
!116 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!117 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !119, line: 148, baseType: !7)
!119 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!120 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sensor_device_attribute", file: !123, line: 12, size: 320, elements: !124)
!123 = !DIFile(filename: "./include/linux/hwmon-sysfs.h", directory: "/home/lizy2001/genbc/linux")
!124 = !{!125, !3844}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "dev_attr", scope: !122, file: !123, line: 13, baseType: !126, size: 256)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !73, line: 99, size: 256, elements: !127)
!127 = !{!128, !138, !3840}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !126, file: !73, line: 100, baseType: !129, size: 128)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !130, line: 30, size: 128, elements: !131)
!130 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!131 = !{!132, !136}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !129, file: !130, line: 31, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!135 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !129, file: !130, line: 32, baseType: !137, size: 16, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !119, line: 19, baseType: !113)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !126, file: !73, line: 101, baseType: !139, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!142, !147, !3839, !210}
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !119, line: 60, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !144, line: 73, baseType: !145)
!144 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !144, line: 15, baseType: !146)
!146 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !149)
!149 = !{!150, !3293, !3294, !3297, !3298, !3349, !3440, !3441, !3442, !3443, !3444, !3453, !3558, !3571, !3766, !3767, !3771, !3773, !3774, !3775, !3779, !3785, !3786, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3827, !3828, !3829, !3832, !3835, !3836, !3837, !3838}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !148, file: !73, line: 462, baseType: !151, size: 512)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !152, line: 64, size: 512, elements: !153)
!152 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!153 = !{!154, !155, !161, !163, !223, !3144, !3283, !3288, !3289, !3290, !3291, !3292}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !151, file: !152, line: 65, baseType: !133, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !151, file: !152, line: 66, baseType: !156, size: 128, offset: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !119, line: 178, size: 128, elements: !157)
!157 = !{!158, !160}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !156, file: !119, line: 179, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !156, file: !119, line: 179, baseType: !159, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !151, file: !152, line: 67, baseType: !162, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !151, file: !152, line: 68, baseType: !164, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !152, line: 192, size: 704, elements: !166)
!166 = !{!167, !168, !184, !185}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !165, file: !152, line: 193, baseType: !156, size: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !165, file: !152, line: 194, baseType: !169, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !170, line: 83, baseType: !171)
!170 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !170, line: 71, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, scope: !171, file: !170, line: 72, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !170, line: 72, elements: !175)
!175 = !{!176}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !174, file: !170, line: 73, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !170, line: 20, elements: !178)
!178 = !{!179}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !177, file: !170, line: 21, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !181, line: 25, baseType: !182)
!181 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !181, line: 25, elements: !183)
!183 = !{}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !165, file: !152, line: 195, baseType: !151, size: 512, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !165, file: !152, line: 196, baseType: !186, size: 64, offset: 640)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !152, line: 156, size: 192, elements: !189)
!189 = !{!190, !195, !200}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !188, file: !152, line: 157, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!120, !164, !162}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !188, file: !152, line: 158, baseType: !196, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!133, !164, !162}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !188, file: !152, line: 159, baseType: !201, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!120, !164, !162, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !152, line: 148, size: 20736, elements: !207)
!207 = !{!208, !213, !217, !218, !222}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !206, file: !152, line: 149, baseType: !209, size: 192)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 192, elements: !211)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!211 = !{!212}
!212 = !DISubrange(count: 3)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !206, file: !152, line: 150, baseType: !214, size: 4096, offset: 192)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 4096, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !206, file: !152, line: 151, baseType: !120, size: 32, offset: 4288)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !206, file: !152, line: 152, baseType: !219, size: 16384, offset: 4320)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 16384, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 2048)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !206, file: !152, line: 153, baseType: !120, size: 32, offset: 20704)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !151, file: !152, line: 69, baseType: !224, size: 64, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !152, line: 138, size: 448, elements: !226)
!226 = !{!227, !231, !248, !250, !3106, !3134, !3138}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !225, file: !152, line: 139, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !162}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !225, file: !152, line: 140, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !130, line: 230, size: 128, elements: !235)
!235 = !{!236, !241}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !234, file: !130, line: 231, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!142, !162, !240, !210}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !234, file: !130, line: 232, baseType: !242, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!142, !162, !240, !133, !245}
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !119, line: 55, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !144, line: 72, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !144, line: 16, baseType: !117)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !225, file: !152, line: 141, baseType: !249, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !225, file: !152, line: 142, baseType: !251, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !130, line: 84, size: 320, elements: !255)
!255 = !{!256, !257, !261, !3103, !3104}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !254, file: !130, line: 85, baseType: !133, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !254, file: !130, line: 86, baseType: !258, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!137, !162, !240, !120}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !254, file: !130, line: 88, baseType: !262, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!137, !162, !265, !120}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !130, line: 168, size: 448, elements: !267)
!267 = !{!268, !269, !270, !271, !3098, !3099}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !266, file: !130, line: 169, baseType: !129, size: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !266, file: !130, line: 170, baseType: !245, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !266, file: !130, line: 171, baseType: !108, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !266, file: !130, line: 172, baseType: !272, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!142, !275, !162, !265, !210, !452, !245}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !277)
!277 = !{!278, !296, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3081, !3082, !3091, !3092, !3093, !3094, !3095, !3096, !3097}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !276, file: !44, line: 920, baseType: !279, size: 128)
!279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !276, file: !44, line: 917, size: 128, elements: !280)
!280 = !{!281, !287}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !279, file: !44, line: 918, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !283, line: 58, size: 64, elements: !284)
!283 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!284 = !{!285}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !282, file: !283, line: 59, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !279, file: !44, line: 919, baseType: !288, size: 128, align: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !119, line: 216, size: 128, align: 64, elements: !289)
!289 = !{!290, !292}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !119, line: 217, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !288, file: !119, line: 218, baseType: !293, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !291}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !276, file: !44, line: 921, baseType: !297, size: 128, offset: 128)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !298, line: 8, size: 128, elements: !299)
!298 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!299 = !{!300, !304}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !297, file: !298, line: 9, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !303, line: 18, flags: DIFlagFwdDecl)
!303 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!304 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !297, file: !298, line: 10, baseType: !305, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !303, line: 89, size: 1536, elements: !307)
!307 = !{!308, !309, !319, !327, !328, !349, !3031, !3033, !3045, !3046, !3047, !3048, !3049, !3055, !3056, !3057}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !306, file: !303, line: 91, baseType: !7, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !306, file: !303, line: 92, baseType: !310, size: 32, offset: 32)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !311, line: 277, baseType: !312)
!311 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !311, line: 277, size: 32, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !312, file: !311, line: 277, baseType: !315, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !311, line: 70, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !311, line: 65, size: 32, elements: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !316, file: !311, line: 66, baseType: !7, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !306, file: !303, line: 93, baseType: !320, size: 128, offset: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !321, line: 38, size: 128, elements: !322)
!321 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!322 = !{!323, !325}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !321, line: 39, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !320, file: !321, line: 39, baseType: !326, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !306, file: !303, line: 94, baseType: !305, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !306, file: !303, line: 95, baseType: !329, size: 128, offset: 256)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !303, line: 47, size: 128, elements: !330)
!330 = !{!331, !345}
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !329, file: !303, line: 48, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !329, file: !303, line: 48, size: 64, elements: !333)
!333 = !{!334, !341}
!334 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !303, line: 49, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !332, file: !303, line: 49, size: 64, elements: !336)
!336 = !{!337, !340}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !335, file: !303, line: 50, baseType: !338, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !110, line: 21, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !112, line: 27, baseType: !7)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !335, file: !303, line: 50, baseType: !338, size: 32, offset: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !332, file: !303, line: 52, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !110, line: 23, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !112, line: 31, baseType: !344)
!344 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !329, file: !303, line: 54, baseType: !346, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !306, file: !303, line: 96, baseType: !350, size: 64, offset: 384)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !352)
!352 = !{!353, !354, !355, !363, !370, !371, !519, !2742, !2743, !2744, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !3007, !3015, !3016, !3017, !3027, !3028, !3029, !3030}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !351, file: !44, line: 611, baseType: !137, size: 16)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !351, file: !44, line: 612, baseType: !113, size: 16, offset: 16)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !351, file: !44, line: 613, baseType: !356, size: 32, offset: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !357, line: 23, baseType: !358)
!357 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !357, line: 21, size: 32, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !358, file: !357, line: 22, baseType: !361, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !119, line: 32, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !144, line: 49, baseType: !7)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !351, file: !44, line: 614, baseType: !364, size: 32, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !357, line: 28, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !357, line: 26, size: 32, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !365, file: !357, line: 27, baseType: !368, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !119, line: 33, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !144, line: 50, baseType: !7)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !351, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !351, file: !44, line: 622, baseType: !372, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !375)
!375 = !{!376, !380, !393, !397, !403, !407, !413, !417, !421, !425, !429, !430, !436, !440, !466, !495, !499, !505, !510, !514, !515}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !374, file: !44, line: 1865, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!305, !350, !305, !7}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !374, file: !44, line: 1866, baseType: !381, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!133, !305, !350, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !386, line: 10, size: 128, elements: !387)
!386 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!387 = !{!388, !392}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !385, file: !386, line: 11, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !108}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !385, file: !386, line: 12, baseType: !108, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !374, file: !44, line: 1867, baseType: !394, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!120, !350, !120}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !374, file: !44, line: 1868, baseType: !398, size: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!401, !350, !120}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !374, file: !44, line: 1870, baseType: !404, size: 64, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!120, !305, !210, !120}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !374, file: !44, line: 1872, baseType: !408, size: 64, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!120, !350, !305, !137, !411}
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !119, line: 30, baseType: !412)
!412 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !374, file: !44, line: 1873, baseType: !414, size: 64, offset: 384)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!120, !305, !350, !305}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !374, file: !44, line: 1874, baseType: !418, size: 64, offset: 448)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!120, !350, !305}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !374, file: !44, line: 1875, baseType: !422, size: 64, offset: 512)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!120, !350, !305, !133}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !374, file: !44, line: 1876, baseType: !426, size: 64, offset: 576)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!120, !350, !305, !137}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !374, file: !44, line: 1877, baseType: !418, size: 64, offset: 640)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !374, file: !44, line: 1878, baseType: !431, size: 64, offset: 704)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!120, !350, !305, !137, !434}
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !119, line: 16, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !119, line: 13, baseType: !338)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !374, file: !44, line: 1879, baseType: !437, size: 64, offset: 768)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!120, !350, !305, !350, !305, !7}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !374, file: !44, line: 1881, baseType: !441, size: 64, offset: 832)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!120, !305, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !446)
!446 = !{!447, !448, !449, !450, !451, !455, !463, !464, !465}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !445, file: !44, line: 220, baseType: !7, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !445, file: !44, line: 221, baseType: !137, size: 16, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !445, file: !44, line: 222, baseType: !356, size: 32, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !445, file: !44, line: 223, baseType: !364, size: 32, offset: 96)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !445, file: !44, line: 224, baseType: !452, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !119, line: 46, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !144, line: 88, baseType: !454)
!454 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !445, file: !44, line: 225, baseType: !456, size: 128, offset: 192)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !457, line: 13, size: 128, elements: !458)
!457 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!458 = !{!459, !462}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !456, file: !457, line: 14, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !457, line: 8, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !112, line: 30, baseType: !454)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !456, file: !457, line: 15, baseType: !146, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !445, file: !44, line: 226, baseType: !456, size: 128, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !445, file: !44, line: 227, baseType: !456, size: 128, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !445, file: !44, line: 234, baseType: !275, size: 64, offset: 576)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !374, file: !44, line: 1882, baseType: !467, size: 64, offset: 896)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!120, !470, !472, !338, !7}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !474, line: 22, size: 1152, elements: !475)
!474 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!475 = !{!476, !477, !478, !479, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !473, file: !474, line: 23, baseType: !338, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !473, file: !474, line: 24, baseType: !137, size: 16, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !473, file: !474, line: 25, baseType: !7, size: 32, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !473, file: !474, line: 26, baseType: !480, size: 32, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !119, line: 104, baseType: !338)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !473, file: !474, line: 27, baseType: !342, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !473, file: !474, line: 28, baseType: !342, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !473, file: !474, line: 37, baseType: !342, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !473, file: !474, line: 38, baseType: !434, size: 32, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !473, file: !474, line: 39, baseType: !434, size: 32, offset: 352)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !473, file: !474, line: 40, baseType: !356, size: 32, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !473, file: !474, line: 41, baseType: !364, size: 32, offset: 416)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !473, file: !474, line: 42, baseType: !452, size: 64, offset: 448)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !473, file: !474, line: 43, baseType: !456, size: 128, offset: 512)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !473, file: !474, line: 44, baseType: !456, size: 128, offset: 640)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !473, file: !474, line: 45, baseType: !456, size: 128, offset: 768)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !473, file: !474, line: 46, baseType: !456, size: 128, offset: 896)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !473, file: !474, line: 47, baseType: !342, size: 64, offset: 1024)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !473, file: !474, line: 48, baseType: !342, size: 64, offset: 1088)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !374, file: !44, line: 1883, baseType: !496, size: 64, offset: 960)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!142, !305, !210, !245}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !374, file: !44, line: 1884, baseType: !500, size: 64, offset: 1024)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!120, !350, !503, !342, !342}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !374, file: !44, line: 1886, baseType: !506, size: 64, offset: 1088)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!120, !350, !509, !120}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !374, file: !44, line: 1887, baseType: !511, size: 64, offset: 1152)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!120, !350, !305, !275, !7, !137}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !374, file: !44, line: 1890, baseType: !426, size: 64, offset: 1216)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !374, file: !44, line: 1891, baseType: !516, size: 64, offset: 1280)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!120, !350, !401, !120}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !351, file: !44, line: 623, baseType: !520, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !522)
!522 = !{!523, !524, !525, !526, !527, !528, !575, !2349, !2431, !2514, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2530, !2534, !2535, !2538, !2539, !2542, !2543, !2544, !2585, !2612, !2613, !2614, !2615, !2616, !2617, !2620, !2622, !2629, !2630, !2632, !2633, !2634, !2693, !2694, !2709, !2710, !2711, !2712, !2713, !2716, !2717, !2718, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !521, file: !44, line: 1417, baseType: !156, size: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !521, file: !44, line: 1418, baseType: !434, size: 32, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !521, file: !44, line: 1419, baseType: !348, size: 8, offset: 160)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !521, file: !44, line: 1420, baseType: !117, size: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !521, file: !44, line: 1421, baseType: !452, size: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !521, file: !44, line: 1422, baseType: !529, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !531)
!531 = !{!532, !533, !534, !541, !545, !549, !553, !554, !555, !565, !568, !569, !570, !572, !573, !574}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !530, file: !44, line: 2229, baseType: !133, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !530, file: !44, line: 2230, baseType: !120, size: 32, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !530, file: !44, line: 2238, baseType: !535, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!120, !538}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !540, line: 28, flags: DIFlagFwdDecl)
!540 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!541 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !530, file: !44, line: 2239, baseType: !542, size: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !530, file: !44, line: 2240, baseType: !546, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!305, !529, !120, !133, !108}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !530, file: !44, line: 2242, baseType: !550, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !520}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !530, file: !44, line: 2243, baseType: !114, size: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !530, file: !44, line: 2244, baseType: !529, size: 64, offset: 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !530, file: !44, line: 2245, baseType: !556, size: 64, offset: 512)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !119, line: 182, size: 64, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !556, file: !119, line: 183, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !119, line: 186, size: 128, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !560, file: !119, line: 187, baseType: !559, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !560, file: !119, line: 187, baseType: !564, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !530, file: !44, line: 2247, baseType: !566, offset: 576)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !567, line: 187, elements: !183)
!567 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!568 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !530, file: !44, line: 2248, baseType: !566, offset: 576)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !530, file: !44, line: 2249, baseType: !566, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !530, file: !44, line: 2250, baseType: !571, offset: 576)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, elements: !211)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !530, file: !44, line: 2252, baseType: !566, offset: 576)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !530, file: !44, line: 2253, baseType: !566, offset: 576)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !530, file: !44, line: 2254, baseType: !566, offset: 576)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !521, file: !44, line: 1423, baseType: !576, size: 64, offset: 384)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !578)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !579)
!579 = !{!580, !584, !588, !589, !593, !599, !603, !604, !605, !609, !613, !614, !615, !616, !622, !627, !628, !635, !636, !637, !638, !2333, !2348}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !578, file: !44, line: 1936, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!350, !520}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !578, file: !44, line: 1937, baseType: !585, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !350}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !578, file: !44, line: 1938, baseType: !585, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !578, file: !44, line: 1940, baseType: !590, size: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !350, !120}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !578, file: !44, line: 1941, baseType: !594, size: 64, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!120, !350, !597}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !578, file: !44, line: 1942, baseType: !600, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!120, !350}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !578, file: !44, line: 1943, baseType: !585, size: 64, offset: 384)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !578, file: !44, line: 1944, baseType: !550, size: 64, offset: 448)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !578, file: !44, line: 1945, baseType: !606, size: 64, offset: 512)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!120, !520, !120}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !578, file: !44, line: 1946, baseType: !610, size: 64, offset: 576)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!120, !520}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !578, file: !44, line: 1947, baseType: !610, size: 64, offset: 640)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !578, file: !44, line: 1948, baseType: !610, size: 64, offset: 704)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !578, file: !44, line: 1949, baseType: !610, size: 64, offset: 768)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !578, file: !44, line: 1950, baseType: !617, size: 64, offset: 832)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!120, !305, !620}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !578, file: !44, line: 1951, baseType: !623, size: 64, offset: 896)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!120, !520, !626, !210}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !578, file: !44, line: 1952, baseType: !550, size: 64, offset: 960)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !578, file: !44, line: 1954, baseType: !629, size: 64, offset: 1024)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!120, !632, !305}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !634, line: 539, flags: DIFlagFwdDecl)
!634 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!635 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !578, file: !44, line: 1955, baseType: !629, size: 64, offset: 1088)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !578, file: !44, line: 1956, baseType: !629, size: 64, offset: 1152)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !578, file: !44, line: 1957, baseType: !629, size: 64, offset: 1216)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !578, file: !44, line: 1963, baseType: !639, size: 64, offset: 1280)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!120, !520, !642, !118}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !644, line: 68, size: 512, align: 128, elements: !645)
!644 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!645 = !{!646, !647, !2325, !2332}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !643, file: !644, line: 69, baseType: !117, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, scope: !643, file: !644, line: 77, baseType: !648, size: 320, offset: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !643, file: !644, line: 77, size: 320, elements: !649)
!649 = !{!650, !835, !840, !868, !876, !882, !2256, !2324}
!650 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !644, line: 78, baseType: !651, size: 320)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !648, file: !644, line: 78, size: 320, elements: !652)
!652 = !{!653, !654, !833, !834}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !651, file: !644, line: 84, baseType: !156, size: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !651, file: !644, line: 86, baseType: !655, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !657)
!657 = !{!658, !659, !666, !667, !672, !687, !703, !704, !705, !706, !826, !827, !830, !831, !832}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !656, file: !44, line: 452, baseType: !350, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !656, file: !44, line: 453, baseType: !660, size: 128, offset: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !661, line: 292, size: 128, elements: !662)
!661 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!662 = !{!663, !664, !665}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !660, file: !661, line: 293, baseType: !169)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !660, file: !661, line: 295, baseType: !118, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !660, file: !661, line: 296, baseType: !108, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !656, file: !44, line: 454, baseType: !118, size: 32, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !656, file: !44, line: 455, baseType: !668, size: 32, offset: 224)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !119, line: 168, baseType: !669)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 166, size: 32, elements: !670)
!670 = !{!671}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !669, file: !119, line: 167, baseType: !120, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !656, file: !44, line: 460, baseType: !673, size: 128, offset: 256)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !674, line: 125, size: 128, elements: !675)
!674 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!675 = !{!676, !686}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !673, file: !674, line: 126, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !674, line: 31, size: 64, elements: !678)
!678 = !{!679}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !677, file: !674, line: 32, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !674, line: 24, size: 192, align: 64, elements: !682)
!682 = !{!683, !684, !685}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !681, file: !674, line: 25, baseType: !117, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !681, file: !674, line: 26, baseType: !680, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !681, file: !674, line: 27, baseType: !680, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !673, file: !674, line: 127, baseType: !680, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !656, file: !44, line: 461, baseType: !688, size: 256, offset: 384)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !689, line: 35, size: 256, elements: !690)
!689 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!690 = !{!691, !699, !700, !702}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !688, file: !689, line: 36, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !693, line: 13, baseType: !694)
!693 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !119, line: 175, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 173, size: 64, elements: !696)
!696 = !{!697}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !695, file: !119, line: 174, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !110, line: 22, baseType: !461)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !688, file: !689, line: 42, baseType: !692, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !688, file: !689, line: 46, baseType: !701, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !170, line: 29, baseType: !177)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !688, file: !689, line: 47, baseType: !156, size: 128, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !656, file: !44, line: 462, baseType: !117, size: 64, offset: 640)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !656, file: !44, line: 463, baseType: !117, size: 64, offset: 704)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !656, file: !44, line: 464, baseType: !117, size: 64, offset: 768)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !656, file: !44, line: 465, baseType: !707, size: 64, offset: 832)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !710)
!710 = !{!711, !715, !719, !723, !727, !731, !737, !743, !747, !752, !756, !760, !764, !790, !794, !800, !801, !802, !806, !811, !815, !822}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !709, file: !44, line: 368, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!120, !642, !597}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !709, file: !44, line: 369, baseType: !716, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!120, !275, !642}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !709, file: !44, line: 372, baseType: !720, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!120, !655, !597}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !709, file: !44, line: 375, baseType: !724, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!120, !642}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !709, file: !44, line: 381, baseType: !728, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!120, !275, !655, !159, !7}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !709, file: !44, line: 383, baseType: !732, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !735}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !709, file: !44, line: 385, baseType: !738, size: 64, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!120, !275, !655, !452, !7, !7, !741, !742}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !709, file: !44, line: 388, baseType: !744, size: 64, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!120, !275, !655, !452, !7, !7, !642, !108}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !709, file: !44, line: 393, baseType: !748, size: 64, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!751, !655, !751}
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !119, line: 125, baseType: !342)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !709, file: !44, line: 394, baseType: !753, size: 64, offset: 576)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{null, !642, !7, !7}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !709, file: !44, line: 395, baseType: !757, size: 64, offset: 640)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!120, !642, !118}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !709, file: !44, line: 396, baseType: !761, size: 64, offset: 704)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !642}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !709, file: !44, line: 397, baseType: !765, size: 64, offset: 768)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!142, !768, !788}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !770)
!770 = !{!771, !772, !773, !777, !778, !779, !780, !781}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !769, file: !44, line: 321, baseType: !275, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !769, file: !44, line: 326, baseType: !452, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !769, file: !44, line: 327, baseType: !774, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !768, !146, !146}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !769, file: !44, line: 328, baseType: !108, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !769, file: !44, line: 329, baseType: !120, size: 32, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !769, file: !44, line: 330, baseType: !109, size: 16, offset: 288)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !769, file: !44, line: 331, baseType: !109, size: 16, offset: 304)
!781 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !44, line: 332, baseType: !782, size: 64, offset: 320)
!782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !769, file: !44, line: 332, size: 64, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !782, file: !44, line: 333, baseType: !7, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !782, file: !44, line: 334, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !709, file: !44, line: 402, baseType: !791, size: 64, offset: 832)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!120, !655, !642, !642, !5}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !709, file: !44, line: 404, baseType: !795, size: 64, offset: 896)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!411, !642, !798}
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !799, line: 305, baseType: !7)
!799 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!800 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !709, file: !44, line: 405, baseType: !761, size: 64, offset: 960)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !709, file: !44, line: 406, baseType: !724, size: 64, offset: 1024)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !709, file: !44, line: 407, baseType: !803, size: 64, offset: 1088)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!120, !642, !117, !117}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !709, file: !44, line: 409, baseType: !807, size: 64, offset: 1152)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !642, !810, !810}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !709, file: !44, line: 410, baseType: !812, size: 64, offset: 1216)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!120, !655, !642}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !709, file: !44, line: 413, baseType: !816, size: 64, offset: 1280)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!120, !819, !275, !821}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !709, file: !44, line: 415, baseType: !823, size: 64, offset: 1344)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !275}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !656, file: !44, line: 466, baseType: !117, size: 64, offset: 896)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !656, file: !44, line: 467, baseType: !828, size: 32, offset: 960)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !829, line: 8, baseType: !338)
!829 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!830 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !656, file: !44, line: 468, baseType: !169, offset: 992)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !656, file: !44, line: 469, baseType: !156, size: 128, offset: 1024)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !656, file: !44, line: 470, baseType: !108, size: 64, offset: 1152)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !651, file: !644, line: 87, baseType: !117, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !651, file: !644, line: 94, baseType: !117, size: 64, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !644, line: 96, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !648, file: !644, line: 96, size: 64, elements: !837)
!837 = !{!838}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !836, file: !644, line: 101, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !119, line: 143, baseType: !342)
!840 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !644, line: 103, baseType: !841, size: 320)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !648, file: !644, line: 103, size: 320, elements: !842)
!842 = !{!843, !853, !856, !857}
!843 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !644, line: 104, baseType: !844, size: 128)
!844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !841, file: !644, line: 104, size: 128, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !844, file: !644, line: 105, baseType: !156, size: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !644, line: 106, baseType: !848, size: 128)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !844, file: !644, line: 106, size: 128, elements: !849)
!849 = !{!850, !851, !852}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !848, file: !644, line: 107, baseType: !642, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !848, file: !644, line: 109, baseType: !120, size: 32, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !848, file: !644, line: 110, baseType: !120, size: 32, offset: 96)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !841, file: !644, line: 117, baseType: !854, size: 64, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !644, line: 117, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !841, file: !644, line: 119, baseType: !108, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !644, line: 120, baseType: !858, size: 64, offset: 256)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !841, file: !644, line: 120, size: 64, elements: !859)
!859 = !{!860, !861, !862}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !858, file: !644, line: 121, baseType: !108, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !858, file: !644, line: 122, baseType: !117, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !644, line: 123, baseType: !863, size: 32)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !858, file: !644, line: 123, size: 32, elements: !864)
!864 = !{!865, !866, !867}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !863, file: !644, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !863, file: !644, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !863, file: !644, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!868 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !644, line: 130, baseType: !869, size: 192)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !648, file: !644, line: 130, size: 192, elements: !870)
!870 = !{!871, !872, !873, !874, !875}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !869, file: !644, line: 131, baseType: !117, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !869, file: !644, line: 134, baseType: !348, size: 8, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !869, file: !644, line: 135, baseType: !348, size: 8, offset: 72)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !869, file: !644, line: 136, baseType: !668, size: 32, offset: 96)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !869, file: !644, line: 137, baseType: !7, size: 32, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !644, line: 139, baseType: !877, size: 256)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !648, file: !644, line: 139, size: 256, elements: !878)
!878 = !{!879, !880, !881}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !877, file: !644, line: 140, baseType: !117, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !877, file: !644, line: 141, baseType: !668, size: 32, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !877, file: !644, line: 143, baseType: !156, size: 128, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !644, line: 145, baseType: !883, size: 256)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !648, file: !644, line: 145, size: 256, elements: !884)
!884 = !{!885, !886, !888, !889, !2255}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !883, file: !644, line: 146, baseType: !117, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !883, file: !644, line: 147, baseType: !887, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !634, line: 509, baseType: !642)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !883, file: !644, line: 148, baseType: !117, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, scope: !883, file: !644, line: 149, baseType: !890, size: 64, offset: 192)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !883, file: !644, line: 149, size: 64, elements: !891)
!891 = !{!892, !2254}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !890, file: !644, line: 150, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !644, line: 388, size: 7296, elements: !895)
!895 = !{!896, !2250}
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !894, file: !644, line: 389, baseType: !897, size: 7296)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !644, line: 389, size: 7296, elements: !898)
!898 = !{!899, !1017, !1018, !1019, !1023, !1024, !1025, !1026, !1027, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1068, !1076, !1079, !1125, !1126, !2234, !2235, !2238, !2239, !2240, !2243, !2244, !2245, !2248, !2249}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !897, file: !644, line: 390, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !644, line: 305, size: 1472, elements: !902)
!902 = !{!903, !904, !905, !906, !907, !908, !909, !910, !917, !918, !923, !924, !927, !1011, !1012, !1013, !1014, !1015}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !901, file: !644, line: 308, baseType: !117, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !901, file: !644, line: 309, baseType: !117, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !901, file: !644, line: 313, baseType: !900, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !901, file: !644, line: 313, baseType: !900, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !901, file: !644, line: 315, baseType: !681, size: 192, align: 64, offset: 256)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !901, file: !644, line: 323, baseType: !117, size: 64, offset: 448)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !901, file: !644, line: 327, baseType: !893, size: 64, offset: 512)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !901, file: !644, line: 333, baseType: !911, size: 64, offset: 576)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !634, line: 284, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !634, line: 284, size: 64, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !912, file: !634, line: 284, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !916, line: 19, baseType: !117)
!916 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!917 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !901, file: !644, line: 334, baseType: !117, size: 64, offset: 640)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !901, file: !644, line: 343, baseType: !919, size: 256, offset: 704)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !901, file: !644, line: 340, size: 256, elements: !920)
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !919, file: !644, line: 341, baseType: !681, size: 192, align: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !919, file: !644, line: 342, baseType: !117, size: 64, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !901, file: !644, line: 351, baseType: !156, size: 128, offset: 960)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !901, file: !644, line: 353, baseType: !925, size: 64, offset: 1088)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !644, line: 353, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !901, file: !644, line: 356, baseType: !928, size: 64, offset: 1152)
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
!940 = !{!120, !900, !117}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !930, file: !14, line: 561, baseType: !942, size: 64, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!120, !900}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !930, file: !14, line: 562, baseType: !946, size: 64, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !644, line: 682, baseType: !7)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !952)
!952 = !{!953, !954, !955, !956, !957, !958, !965, !972, !978, !979, !980, !982, !984}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !951, file: !14, line: 509, baseType: !900, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !951, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !951, file: !14, line: 511, baseType: !118, size: 32, offset: 96)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !951, file: !14, line: 512, baseType: !117, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !951, file: !14, line: 513, baseType: !117, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !951, file: !14, line: 514, baseType: !959, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !634, line: 385, baseType: !961)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !634, line: 385, size: 64, elements: !962)
!962 = !{!963}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !961, file: !634, line: 385, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !916, line: 15, baseType: !117)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !951, file: !14, line: 516, baseType: !966, size: 64, offset: 320)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !634, line: 359, baseType: !968)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !634, line: 359, size: 64, elements: !969)
!969 = !{!970}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !968, file: !634, line: 359, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !916, line: 16, baseType: !117)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !951, file: !14, line: 519, baseType: !973, size: 64, offset: 384)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !916, line: 21, baseType: !974)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !916, line: 21, size: 64, elements: !975)
!975 = !{!976}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !974, file: !916, line: 21, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !916, line: 14, baseType: !117)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !951, file: !14, line: 521, baseType: !642, size: 64, offset: 448)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !951, file: !14, line: 522, baseType: !642, size: 64, offset: 512)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !951, file: !14, line: 528, baseType: !981, size: 64, offset: 576)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !951, file: !14, line: 532, baseType: !983, size: 64, offset: 640)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !951, file: !14, line: 536, baseType: !887, size: 64, offset: 704)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !930, file: !14, line: 563, baseType: !986, size: 64, offset: 320)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!949, !950, !13}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !930, file: !14, line: 565, baseType: !990, size: 64, offset: 384)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !950, !117, !117}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !930, file: !14, line: 567, baseType: !994, size: 64, offset: 448)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{!117, !900}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !930, file: !14, line: 571, baseType: !946, size: 64, offset: 512)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !930, file: !14, line: 574, baseType: !946, size: 64, offset: 576)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !930, file: !14, line: 579, baseType: !1000, size: 64, offset: 640)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!120, !900, !117, !108, !120, !120}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !930, file: !14, line: 585, baseType: !1004, size: 64, offset: 704)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!133, !900}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !930, file: !14, line: 615, baseType: !1008, size: 64, offset: 768)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!642, !900, !117}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !901, file: !644, line: 359, baseType: !117, size: 64, offset: 1216)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !901, file: !644, line: 361, baseType: !275, size: 64, offset: 1280)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !901, file: !644, line: 362, baseType: !108, size: 64, offset: 1344)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !901, file: !644, line: 365, baseType: !692, size: 64, offset: 1408)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !901, file: !644, line: 373, baseType: !1016, offset: 1472)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !644, line: 296, elements: !183)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !897, file: !644, line: 391, baseType: !677, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !897, file: !644, line: 392, baseType: !342, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !897, file: !644, line: 394, baseType: !1020, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!117, !275, !117, !117, !117, !117}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !897, file: !644, line: 398, baseType: !117, size: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !897, file: !644, line: 399, baseType: !117, size: 64, offset: 320)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !897, file: !644, line: 405, baseType: !117, size: 64, offset: 384)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !897, file: !644, line: 406, baseType: !117, size: 64, offset: 448)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !897, file: !644, line: 407, baseType: !1028, size: 64, offset: 512)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !634, line: 286, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !634, line: 286, size: 64, elements: !1031)
!1031 = !{!1032}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1030, file: !634, line: 286, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !916, line: 18, baseType: !117)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !897, file: !644, line: 416, baseType: !668, size: 32, offset: 576)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !897, file: !644, line: 428, baseType: !668, size: 32, offset: 608)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !897, file: !644, line: 437, baseType: !668, size: 32, offset: 640)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !897, file: !644, line: 447, baseType: !668, size: 32, offset: 672)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !897, file: !644, line: 450, baseType: !692, size: 64, offset: 704)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !897, file: !644, line: 452, baseType: !120, size: 32, offset: 768)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !897, file: !644, line: 454, baseType: !169, offset: 800)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !897, file: !644, line: 457, baseType: !688, size: 256, offset: 832)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !897, file: !644, line: 459, baseType: !156, size: 128, offset: 1088)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !897, file: !644, line: 466, baseType: !117, size: 64, offset: 1216)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !897, file: !644, line: 467, baseType: !117, size: 64, offset: 1280)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !897, file: !644, line: 469, baseType: !117, size: 64, offset: 1344)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !897, file: !644, line: 470, baseType: !117, size: 64, offset: 1408)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !897, file: !644, line: 471, baseType: !694, size: 64, offset: 1472)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !897, file: !644, line: 472, baseType: !117, size: 64, offset: 1536)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !897, file: !644, line: 473, baseType: !117, size: 64, offset: 1600)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !897, file: !644, line: 474, baseType: !117, size: 64, offset: 1664)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !897, file: !644, line: 475, baseType: !117, size: 64, offset: 1728)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !897, file: !644, line: 477, baseType: !169, offset: 1792)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !897, file: !644, line: 478, baseType: !117, size: 64, offset: 1792)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !897, file: !644, line: 478, baseType: !117, size: 64, offset: 1856)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !897, file: !644, line: 478, baseType: !117, size: 64, offset: 1920)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !897, file: !644, line: 478, baseType: !117, size: 64, offset: 1984)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !897, file: !644, line: 479, baseType: !117, size: 64, offset: 2048)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !897, file: !644, line: 479, baseType: !117, size: 64, offset: 2112)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !897, file: !644, line: 479, baseType: !117, size: 64, offset: 2176)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !897, file: !644, line: 480, baseType: !117, size: 64, offset: 2240)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !897, file: !644, line: 480, baseType: !117, size: 64, offset: 2304)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !897, file: !644, line: 480, baseType: !117, size: 64, offset: 2368)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !897, file: !644, line: 480, baseType: !117, size: 64, offset: 2432)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !897, file: !644, line: 482, baseType: !1065, size: 2816, offset: 2496)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 2816, elements: !1066)
!1066 = !{!1067}
!1067 = !DISubrange(count: 44)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !897, file: !644, line: 488, baseType: !1069, size: 256, offset: 5312)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1070, line: 60, size: 256, elements: !1071)
!1070 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1071 = !{!1072}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1069, file: !1070, line: 61, baseType: !1073, size: 256)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !692, size: 256, elements: !1074)
!1074 = !{!1075}
!1075 = !DISubrange(count: 4)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !897, file: !644, line: 490, baseType: !1077, size: 64, offset: 5568)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !644, line: 490, flags: DIFlagFwdDecl)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !897, file: !644, line: 493, baseType: !1080, size: 896, offset: 5632)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1081, line: 53, baseType: !1082)
!1081 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1081, line: 13, size: 896, elements: !1083)
!1083 = !{!1084, !1085, !1086, !1087, !1090, !1091, !1098, !1099, !1119, !1120, !1121}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1082, file: !1081, line: 18, baseType: !342, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1082, file: !1081, line: 28, baseType: !694, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1082, file: !1081, line: 31, baseType: !688, size: 256, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1082, file: !1081, line: 32, baseType: !1088, size: 64, offset: 384)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1081, line: 32, flags: DIFlagFwdDecl)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1082, file: !1081, line: 37, baseType: !113, size: 16, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1082, file: !1081, line: 40, baseType: !1092, size: 192, offset: 512)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1093, line: 53, size: 192, elements: !1094)
!1093 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1094 = !{!1095, !1096, !1097}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1092, file: !1093, line: 54, baseType: !692, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1092, file: !1093, line: 55, baseType: !169, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1092, file: !1093, line: 59, baseType: !156, size: 128, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1082, file: !1081, line: 41, baseType: !108, size: 64, offset: 704)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1082, file: !1081, line: 42, baseType: !1100, size: 64, offset: 768)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1102)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1103, line: 13, size: 896, elements: !1104)
!1103 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1102, file: !1103, line: 14, baseType: !108, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1102, file: !1103, line: 15, baseType: !117, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1102, file: !1103, line: 17, baseType: !117, size: 64, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1102, file: !1103, line: 17, baseType: !117, size: 64, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1102, file: !1103, line: 19, baseType: !146, size: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1102, file: !1103, line: 21, baseType: !146, size: 64, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1102, file: !1103, line: 22, baseType: !146, size: 64, offset: 384)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1102, file: !1103, line: 23, baseType: !146, size: 64, offset: 448)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1102, file: !1103, line: 24, baseType: !146, size: 64, offset: 512)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1102, file: !1103, line: 25, baseType: !146, size: 64, offset: 576)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1102, file: !1103, line: 26, baseType: !146, size: 64, offset: 640)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1102, file: !1103, line: 27, baseType: !146, size: 64, offset: 704)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1102, file: !1103, line: 28, baseType: !146, size: 64, offset: 768)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1102, file: !1103, line: 29, baseType: !146, size: 64, offset: 832)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1082, file: !1081, line: 44, baseType: !668, size: 32, offset: 832)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1082, file: !1081, line: 50, baseType: !109, size: 16, offset: 864)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1082, file: !1081, line: 51, baseType: !1122, size: 16, offset: 880)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !110, line: 18, baseType: !1123)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !112, line: 23, baseType: !1124)
!1124 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !897, file: !644, line: 495, baseType: !117, size: 64, offset: 6528)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !897, file: !644, line: 497, baseType: !1127, size: 64, offset: 6592)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !644, line: 381, size: 384, elements: !1129)
!1129 = !{!1130, !1131, !2233}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1128, file: !644, line: 382, baseType: !668, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1128, file: !644, line: 383, baseType: !1132, size: 128, offset: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !644, line: 376, size: 128, elements: !1133)
!1133 = !{!1134, !2231}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1132, file: !644, line: 377, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1137, line: 640, size: 48640, elements: !1138)
!1137 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1138 = !{!1139, !1145, !1147, !1148, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1165, !1183, !1194, !1279, !1280, !1281, !1292, !1293, !1295, !1296, !1297, !1298, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1377, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1415, !1417, !1418, !1419, !1431, !1432, !1433, !1434, !1435, !1436, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1460, !1465, !1649, !1650, !1651, !1652, !1656, !1659, !1662, !1665, !1668, !1672, !1773, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1819, !1820, !1821, !1822, !1823, !1828, !1829, !1830, !1833, !1834, !1837, !1840, !1843, !1846, !1889, !1892, !1893, !1972, !1973, !1976, !1977, !1980, !1981, !1982, !1986, !1987, !1988, !2001, !2002, !2003, !2013, !2018, !2021, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1136, file: !1137, line: 646, baseType: !1140, size: 128)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1141, line: 56, size: 128, elements: !1142)
!1141 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1142 = !{!1143, !1144}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1140, file: !1141, line: 57, baseType: !117, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1140, file: !1141, line: 58, baseType: !338, size: 32, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1136, file: !1137, line: 649, baseType: !1146, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !146)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1136, file: !1137, line: 657, baseType: !108, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1136, file: !1137, line: 658, baseType: !1149, size: 32, offset: 256)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1150, line: 113, baseType: !1151)
!1150 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1150, line: 111, size: 32, elements: !1152)
!1152 = !{!1153}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1151, file: !1150, line: 112, baseType: !668, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1136, file: !1137, line: 660, baseType: !7, size: 32, offset: 288)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1136, file: !1137, line: 661, baseType: !7, size: 32, offset: 320)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1136, file: !1137, line: 684, baseType: !120, size: 32, offset: 352)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1136, file: !1137, line: 686, baseType: !120, size: 32, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1136, file: !1137, line: 687, baseType: !120, size: 32, offset: 416)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1136, file: !1137, line: 688, baseType: !120, size: 32, offset: 448)
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
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1169, file: !1137, line: 326, baseType: !117, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1169, file: !1137, line: 327, baseType: !338, size: 32, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1166, file: !1137, line: 454, baseType: !681, size: 192, align: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1166, file: !1137, line: 455, baseType: !156, size: 128, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1166, file: !1137, line: 456, baseType: !7, size: 32, offset: 448)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1166, file: !1137, line: 458, baseType: !342, size: 64, offset: 512)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1166, file: !1137, line: 459, baseType: !342, size: 64, offset: 576)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1166, file: !1137, line: 460, baseType: !342, size: 64, offset: 640)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1166, file: !1137, line: 461, baseType: !342, size: 64, offset: 704)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1166, file: !1137, line: 463, baseType: !342, size: 64, offset: 768)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1166, file: !1137, line: 465, baseType: !1182, offset: 832)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1137, line: 415, elements: !183)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1136, file: !1137, line: 693, baseType: !1184, size: 384, offset: 1408)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1137, line: 489, size: 384, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1189, !1190, !1191, !1192}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1184, file: !1137, line: 490, baseType: !156, size: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1184, file: !1137, line: 491, baseType: !117, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1184, file: !1137, line: 492, baseType: !117, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1184, file: !1137, line: 493, baseType: !7, size: 32, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1184, file: !1137, line: 494, baseType: !113, size: 16, offset: 288)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1184, file: !1137, line: 495, baseType: !113, size: 16, offset: 304)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1184, file: !1137, line: 497, baseType: !1193, size: 64, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1136, file: !1137, line: 697, baseType: !1195, size: 1792, offset: 1792)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1137, line: 507, size: 1792, elements: !1196)
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1276, !1277}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1195, file: !1137, line: 508, baseType: !681, size: 192, align: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1195, file: !1137, line: 515, baseType: !342, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1195, file: !1137, line: 516, baseType: !342, size: 64, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1195, file: !1137, line: 517, baseType: !342, size: 64, offset: 320)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1195, file: !1137, line: 518, baseType: !342, size: 64, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1195, file: !1137, line: 519, baseType: !342, size: 64, offset: 448)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1195, file: !1137, line: 526, baseType: !698, size: 64, offset: 512)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1195, file: !1137, line: 527, baseType: !342, size: 64, offset: 576)
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
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1214, file: !1215, line: 10, baseType: !681, size: 192, align: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1214, file: !1215, line: 11, baseType: !1219, size: 64, offset: 192)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1220, line: 29, baseType: !698)
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
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1233, file: !20, line: 215, baseType: !701)
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
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !119, line: 27, baseType: !1254)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !144, line: 96, baseType: !120)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1229, file: !20, line: 163, baseType: !1256, size: 32, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !311, line: 276, baseType: !1257)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !311, line: 276, size: 32, elements: !1258)
!1258 = !{!1259}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1257, file: !311, line: 276, baseType: !315, size: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1229, file: !20, line: 164, baseType: !1226, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1229, file: !20, line: 165, baseType: !1262, size: 128, offset: 256)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1215, line: 14, size: 128, elements: !1263)
!1263 = !{!1264}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1262, file: !1215, line: 15, baseType: !673, size: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1229, file: !20, line: 166, baseType: !1266, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!1219}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1229, file: !20, line: 167, baseType: !1219, size: 64, offset: 448)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1211, file: !20, line: 123, baseType: !1271, size: 8, offset: 448)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !110, line: 17, baseType: !1272)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !112, line: 21, baseType: !348)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1211, file: !20, line: 124, baseType: !1271, size: 8, offset: 456)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1211, file: !20, line: 125, baseType: !1271, size: 8, offset: 464)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1211, file: !20, line: 126, baseType: !1271, size: 8, offset: 472)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1195, file: !1137, line: 572, baseType: !1211, size: 512, offset: 1216)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1195, file: !1137, line: 580, baseType: !1278, size: 64, offset: 1728)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1136, file: !1137, line: 721, baseType: !7, size: 32, offset: 3584)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1136, file: !1137, line: 722, baseType: !120, size: 32, offset: 3616)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1136, file: !1137, line: 723, baseType: !1282, size: 64, offset: 3648)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1284)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1285, line: 17, baseType: !1286)
!1285 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1285, line: 17, size: 64, elements: !1287)
!1287 = !{!1288}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1286, file: !1285, line: 17, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 64, elements: !1290)
!1290 = !{!1291}
!1291 = !DISubrange(count: 1)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1136, file: !1137, line: 724, baseType: !1284, size: 64, offset: 3712)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1136, file: !1137, line: 749, baseType: !1294, offset: 3776)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1137, line: 290, elements: !183)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1136, file: !1137, line: 751, baseType: !156, size: 128, offset: 3776)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1136, file: !1137, line: 757, baseType: !893, size: 64, offset: 3904)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1136, file: !1137, line: 758, baseType: !893, size: 64, offset: 3968)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1136, file: !1137, line: 761, baseType: !1299, size: 320, offset: 4032)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1070, line: 34, size: 320, elements: !1300)
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1299, file: !1070, line: 35, baseType: !342, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1299, file: !1070, line: 36, baseType: !1303, size: 256, offset: 64)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !900, size: 256, elements: !1074)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1136, file: !1137, line: 766, baseType: !120, size: 32, offset: 4352)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1136, file: !1137, line: 767, baseType: !120, size: 32, offset: 4384)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1136, file: !1137, line: 768, baseType: !120, size: 32, offset: 4416)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1136, file: !1137, line: 770, baseType: !120, size: 32, offset: 4448)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1136, file: !1137, line: 772, baseType: !117, size: 64, offset: 4480)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1136, file: !1137, line: 775, baseType: !7, size: 32, offset: 4544)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1136, file: !1137, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1136, file: !1137, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1136, file: !1137, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1136, file: !1137, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1136, file: !1137, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1136, file: !1137, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1136, file: !1137, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1136, file: !1137, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1136, file: !1137, line: 831, baseType: !117, size: 64, offset: 4672)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1136, file: !1137, line: 833, baseType: !1320, size: 384, offset: 4736)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1321)
!1321 = !{!1322, !1327}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1320, file: !25, line: 26, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!146, !1326}
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1320, file: !25, line: 27, baseType: !1328, size: 320, offset: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1320, file: !25, line: 27, size: 320, elements: !1329)
!1329 = !{!1330, !1340, !1367}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1328, file: !25, line: 36, baseType: !1331, size: 320)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1328, file: !25, line: 29, size: 320, elements: !1332)
!1332 = !{!1333, !1335, !1336, !1337, !1338, !1339}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1331, file: !25, line: 30, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1331, file: !25, line: 31, baseType: !338, size: 32, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1331, file: !25, line: 32, baseType: !338, size: 32, offset: 96)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1331, file: !25, line: 33, baseType: !338, size: 32, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1331, file: !25, line: 34, baseType: !342, size: 64, offset: 192)
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
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !144, line: 93, baseType: !454)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1350, file: !1351, line: 9, baseType: !454, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1346, file: !25, line: 43, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1359, line: 7, size: 64, elements: !1360)
!1359 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1360 = !{!1361, !1365}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1358, file: !1359, line: 8, baseType: !1362, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1359, line: 5, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !110, line: 20, baseType: !1364)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !112, line: 26, baseType: !120)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1358, file: !1359, line: 9, baseType: !1363, size: 32, offset: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1341, file: !25, line: 45, baseType: !342, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1328, file: !25, line: 54, baseType: !1368, size: 256)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1328, file: !25, line: 48, size: 256, elements: !1369)
!1369 = !{!1370, !1373, !1374, !1375, !1376}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1368, file: !25, line: 49, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1368, file: !25, line: 50, baseType: !120, size: 32, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1368, file: !25, line: 51, baseType: !120, size: 32, offset: 96)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1368, file: !25, line: 52, baseType: !117, size: 64, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1368, file: !25, line: 53, baseType: !117, size: 64, offset: 192)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1136, file: !1137, line: 835, baseType: !1378, size: 32, offset: 5120)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !119, line: 22, baseType: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !144, line: 28, baseType: !120)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1136, file: !1137, line: 836, baseType: !1378, size: 32, offset: 5152)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1136, file: !1137, line: 840, baseType: !117, size: 64, offset: 5184)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1136, file: !1137, line: 849, baseType: !1135, size: 64, offset: 5248)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1136, file: !1137, line: 852, baseType: !1135, size: 64, offset: 5312)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1136, file: !1137, line: 857, baseType: !156, size: 128, offset: 5376)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1136, file: !1137, line: 858, baseType: !156, size: 128, offset: 5504)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1136, file: !1137, line: 859, baseType: !1135, size: 64, offset: 5632)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1136, file: !1137, line: 867, baseType: !156, size: 128, offset: 5696)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1136, file: !1137, line: 868, baseType: !156, size: 128, offset: 5824)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1136, file: !1137, line: 871, baseType: !1390, size: 64, offset: 5952)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1392)
!1392 = !{!1393, !1394, !1395, !1396, !1398, !1399, !1406, !1407}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1391, file: !53, line: 61, baseType: !1149, size: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1391, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1391, file: !53, line: 63, baseType: !169, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1391, file: !53, line: 65, baseType: !1397, size: 256, offset: 64)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 256, elements: !1074)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1391, file: !53, line: 66, baseType: !556, size: 64, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1391, file: !53, line: 68, baseType: !1400, size: 128, offset: 384)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1401, line: 40, baseType: !1402)
!1401 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1401, line: 36, size: 128, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1402, file: !1401, line: 37, baseType: !169)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1402, file: !1401, line: 38, baseType: !156, size: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1391, file: !53, line: 69, baseType: !288, size: 128, align: 64, offset: 512)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1391, file: !53, line: 70, baseType: !1408, size: 128, offset: 640)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1409, size: 128, elements: !1290)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1410)
!1410 = !{!1411, !1412}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1409, file: !53, line: 55, baseType: !120, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1409, file: !53, line: 56, baseType: !1413, size: 64, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1136, file: !1137, line: 872, baseType: !1416, size: 512, offset: 6016)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 512, elements: !1074)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1136, file: !1137, line: 873, baseType: !156, size: 128, offset: 6528)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1136, file: !1137, line: 874, baseType: !156, size: 128, offset: 6656)
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
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1426, file: !1427, line: 44, baseType: !701)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1426, file: !1427, line: 45, baseType: !156, size: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1136, file: !1137, line: 879, baseType: !626, size: 64, offset: 6848)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1136, file: !1137, line: 882, baseType: !626, size: 64, offset: 6912)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1136, file: !1137, line: 884, baseType: !342, size: 64, offset: 6976)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1136, file: !1137, line: 885, baseType: !342, size: 64, offset: 7040)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1136, file: !1137, line: 890, baseType: !342, size: 64, offset: 7104)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1136, file: !1137, line: 891, baseType: !1437, size: 128, offset: 7168)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1137, line: 242, size: 128, elements: !1438)
!1438 = !{!1439, !1440, !1441}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1437, file: !1137, line: 244, baseType: !342, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1437, file: !1137, line: 245, baseType: !342, size: 64, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1437, file: !1137, line: 246, baseType: !701, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1136, file: !1137, line: 900, baseType: !117, size: 64, offset: 7296)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1136, file: !1137, line: 901, baseType: !117, size: 64, offset: 7360)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1136, file: !1137, line: 904, baseType: !342, size: 64, offset: 7424)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1136, file: !1137, line: 907, baseType: !342, size: 64, offset: 7488)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1136, file: !1137, line: 910, baseType: !117, size: 64, offset: 7552)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1136, file: !1137, line: 911, baseType: !117, size: 64, offset: 7616)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1136, file: !1137, line: 914, baseType: !1449, size: 640, offset: 7680)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1450, line: 123, size: 640, elements: !1451)
!1450 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1451 = !{!1452, !1458, !1459}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1449, file: !1450, line: 124, baseType: !1453, size: 576)
!1453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1454, size: 576, elements: !211)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1450, line: 108, size: 192, elements: !1455)
!1455 = !{!1456, !1457}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1454, file: !1450, line: 109, baseType: !342, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1454, file: !1450, line: 110, baseType: !1262, size: 128, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1449, file: !1450, line: 125, baseType: !7, size: 32, offset: 576)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1449, file: !1450, line: 126, baseType: !7, size: 32, offset: 608)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1136, file: !1137, line: 917, baseType: !1461, size: 192, offset: 8320)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1450, line: 134, size: 192, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1461, file: !1450, line: 135, baseType: !288, size: 128, align: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1461, file: !1450, line: 136, baseType: !7, size: 32, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1136, file: !1137, line: 923, baseType: !1466, size: 64, offset: 8512)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1468)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1469, line: 111, size: 1280, elements: !1470)
!1469 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1470 = !{!1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1490, !1491, !1492, !1493, !1494, !1495, !1602, !1603, !1604, !1605, !1631, !1634, !1644}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1468, file: !1469, line: 112, baseType: !668, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1468, file: !1469, line: 120, baseType: !356, size: 32, offset: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1468, file: !1469, line: 121, baseType: !364, size: 32, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1468, file: !1469, line: 122, baseType: !356, size: 32, offset: 96)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1468, file: !1469, line: 123, baseType: !364, size: 32, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1468, file: !1469, line: 124, baseType: !356, size: 32, offset: 160)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1468, file: !1469, line: 125, baseType: !364, size: 32, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1468, file: !1469, line: 126, baseType: !356, size: 32, offset: 224)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1468, file: !1469, line: 127, baseType: !364, size: 32, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1468, file: !1469, line: 128, baseType: !7, size: 32, offset: 288)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1468, file: !1469, line: 129, baseType: !1482, size: 64, offset: 320)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1483, line: 26, baseType: !1484)
!1483 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1483, line: 24, size: 64, elements: !1485)
!1485 = !{!1486}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1484, file: !1483, line: 25, baseType: !1487, size: 64)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 64, elements: !1488)
!1488 = !{!1489}
!1489 = !DISubrange(count: 2)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1468, file: !1469, line: 130, baseType: !1482, size: 64, offset: 384)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1468, file: !1469, line: 131, baseType: !1482, size: 64, offset: 448)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1468, file: !1469, line: 132, baseType: !1482, size: 64, offset: 512)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1468, file: !1469, line: 133, baseType: !1482, size: 64, offset: 576)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1468, file: !1469, line: 135, baseType: !348, size: 8, offset: 640)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1468, file: !1469, line: 137, baseType: !1496, size: 64, offset: 704)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1498, line: 189, size: 1664, elements: !1499)
!1498 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1499 = !{!1500, !1501, !1504, !1509, !1510, !1513, !1514, !1519, !1520, !1521, !1522, !1524, !1525, !1526, !1527, !1528, !1566, !1587}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1497, file: !1498, line: 190, baseType: !1149, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1497, file: !1498, line: 191, baseType: !1502, size: 32, offset: 32)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1498, line: 28, baseType: !1503)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !119, line: 98, baseType: !1363)
!1504 = !DIDerivedType(tag: DW_TAG_member, scope: !1497, file: !1498, line: 192, baseType: !1505, size: 192, offset: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1497, file: !1498, line: 192, size: 192, elements: !1506)
!1506 = !{!1507, !1508}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1505, file: !1498, line: 193, baseType: !156, size: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1505, file: !1498, line: 194, baseType: !681, size: 192, align: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1497, file: !1498, line: 199, baseType: !688, size: 256, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1497, file: !1498, line: 200, baseType: !1511, size: 64, offset: 512)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1498, line: 200, flags: DIFlagFwdDecl)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1497, file: !1498, line: 201, baseType: !108, size: 64, offset: 576)
!1514 = !DIDerivedType(tag: DW_TAG_member, scope: !1497, file: !1498, line: 202, baseType: !1515, size: 64, offset: 640)
!1515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1497, file: !1498, line: 202, size: 64, elements: !1516)
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1515, file: !1498, line: 203, baseType: !460, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1515, file: !1498, line: 204, baseType: !460, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1497, file: !1498, line: 206, baseType: !460, size: 64, offset: 704)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1497, file: !1498, line: 207, baseType: !356, size: 32, offset: 768)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1497, file: !1498, line: 208, baseType: !364, size: 32, offset: 800)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1497, file: !1498, line: 209, baseType: !1523, size: 32, offset: 832)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1498, line: 31, baseType: !480)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1497, file: !1498, line: 210, baseType: !113, size: 16, offset: 864)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1497, file: !1498, line: 211, baseType: !113, size: 16, offset: 880)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1497, file: !1498, line: 215, baseType: !1124, size: 16, offset: 896)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1497, file: !1498, line: 222, baseType: !117, size: 64, offset: 960)
!1528 = !DIDerivedType(tag: DW_TAG_member, scope: !1497, file: !1498, line: 239, baseType: !1529, size: 320, offset: 1024)
!1529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1497, file: !1498, line: 239, size: 320, elements: !1530)
!1530 = !{!1531, !1558}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1529, file: !1498, line: 240, baseType: !1532, size: 320)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1498, line: 108, size: 320, elements: !1533)
!1533 = !{!1534, !1535, !1547, !1550, !1557}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1532, file: !1498, line: 110, baseType: !117, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, scope: !1532, file: !1498, line: 111, baseType: !1536, size: 64, offset: 64)
!1536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1532, file: !1498, line: 111, size: 64, elements: !1537)
!1537 = !{!1538, !1546}
!1538 = !DIDerivedType(tag: DW_TAG_member, scope: !1536, file: !1498, line: 112, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1536, file: !1498, line: 112, size: 64, elements: !1540)
!1540 = !{!1541, !1542}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1539, file: !1498, line: 114, baseType: !109, size: 16)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1539, file: !1498, line: 115, baseType: !1543, size: 48, offset: 16)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 48, elements: !1544)
!1544 = !{!1545}
!1545 = !DISubrange(count: 6)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1536, file: !1498, line: 121, baseType: !117, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1532, file: !1498, line: 123, baseType: !1548, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1498, line: 96, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1532, file: !1498, line: 124, baseType: !1551, size: 64, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1498, line: 102, size: 192, elements: !1553)
!1553 = !{!1554, !1555, !1556}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1552, file: !1498, line: 103, baseType: !288, size: 128, align: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1552, file: !1498, line: 104, baseType: !1149, size: 32, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1552, file: !1498, line: 105, baseType: !411, size: 8, offset: 160)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1532, file: !1498, line: 125, baseType: !133, size: 64, offset: 256)
!1558 = !DIDerivedType(tag: DW_TAG_member, scope: !1529, file: !1498, line: 241, baseType: !1559, size: 320)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1529, file: !1498, line: 241, size: 320, elements: !1560)
!1560 = !{!1561, !1562, !1563, !1564, !1565}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1559, file: !1498, line: 242, baseType: !117, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1559, file: !1498, line: 243, baseType: !117, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1559, file: !1498, line: 244, baseType: !1548, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1559, file: !1498, line: 245, baseType: !1551, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1559, file: !1498, line: 246, baseType: !210, size: 64, offset: 256)
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
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1576, file: !1498, line: 258, baseType: !156, size: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1576, file: !1498, line: 259, baseType: !1580, size: 128, offset: 128)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1581, line: 22, size: 128, elements: !1582)
!1581 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1582 = !{!1583, !1586}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1580, file: !1581, line: 23, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1581, line: 23, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1580, file: !1581, line: 24, baseType: !117, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1497, file: !1498, line: 274, baseType: !1588, size: 64, offset: 1600)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1498, line: 170, size: 192, elements: !1590)
!1590 = !{!1591, !1600, !1601}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1589, file: !1498, line: 171, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1498, line: 165, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!120, !1496, !1596, !1598, !1496}
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
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1607, file: !1608, line: 15, baseType: !668, size: 32, offset: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1607, file: !1608, line: 16, baseType: !668, size: 32, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1607, file: !1608, line: 21, baseType: !692, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1607, file: !1608, line: 27, baseType: !117, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1607, file: !1608, line: 28, baseType: !117, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1607, file: !1608, line: 29, baseType: !692, size: 64, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1607, file: !1608, line: 32, baseType: !560, size: 128, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1607, file: !1608, line: 33, baseType: !356, size: 32, offset: 512)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1607, file: !1608, line: 37, baseType: !692, size: 64, offset: 576)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1607, file: !1608, line: 44, baseType: !1621, size: 256, offset: 640)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1622, line: 15, size: 256, elements: !1623)
!1622 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1623 = !{!1624, !1625, !1626, !1627, !1628, !1629, !1630}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1621, file: !1622, line: 16, baseType: !701)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1621, file: !1622, line: 18, baseType: !120, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1621, file: !1622, line: 19, baseType: !120, size: 32, offset: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1621, file: !1622, line: 20, baseType: !120, size: 32, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1621, file: !1622, line: 21, baseType: !120, size: 32, offset: 96)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1621, file: !1622, line: 22, baseType: !117, size: 64, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1621, file: !1622, line: 23, baseType: !117, size: 64, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1468, file: !1469, line: 146, baseType: !1632, size: 64, offset: 1024)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !357, line: 18, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1468, file: !1469, line: 147, baseType: !1635, size: 64, offset: 1088)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1469, line: 25, size: 64, elements: !1637)
!1637 = !{!1638, !1639, !1640}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1636, file: !1469, line: 26, baseType: !668, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1636, file: !1469, line: 27, baseType: !120, size: 32, offset: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1636, file: !1469, line: 28, baseType: !1641, offset: 64)
!1641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, elements: !1642)
!1642 = !{!1643}
!1643 = !DISubrange(count: 0)
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !1469, line: 149, baseType: !1645, size: 128, offset: 1152)
!1645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1468, file: !1469, line: 149, size: 128, elements: !1646)
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1645, file: !1469, line: 150, baseType: !120, size: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1645, file: !1469, line: 151, baseType: !288, size: 128, align: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1136, file: !1137, line: 926, baseType: !1466, size: 64, offset: 8576)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1136, file: !1137, line: 929, baseType: !1466, size: 64, offset: 8640)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1136, file: !1137, line: 933, baseType: !1496, size: 64, offset: 8704)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1136, file: !1137, line: 943, baseType: !1653, size: 128, offset: 8768)
!1653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 128, elements: !1654)
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
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1674, file: !1675, line: 84, baseType: !668, size: 32, offset: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1674, file: !1675, line: 85, baseType: !120, size: 32, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1674, file: !1675, line: 86, baseType: !156, size: 128, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1674, file: !1675, line: 88, baseType: !1400, size: 128, offset: 256)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1674, file: !1675, line: 91, baseType: !1135, size: 64, offset: 384)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1674, file: !1675, line: 94, baseType: !1684, size: 192, offset: 448)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1685, line: 30, size: 192, elements: !1686)
!1685 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1686 = !{!1687, !1688}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1684, file: !1685, line: 31, baseType: !156, size: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1684, file: !1685, line: 32, baseType: !1689, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1690, line: 25, baseType: !1691)
!1690 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1690, line: 23, size: 64, elements: !1692)
!1692 = !{!1693}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1691, file: !1690, line: 24, baseType: !1289, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1674, file: !1675, line: 97, baseType: !556, size: 64, offset: 640)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1674, file: !1675, line: 100, baseType: !120, size: 32, offset: 704)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1674, file: !1675, line: 106, baseType: !120, size: 32, offset: 736)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1674, file: !1675, line: 107, baseType: !1135, size: 64, offset: 768)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1674, file: !1675, line: 110, baseType: !120, size: 32, offset: 832)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1674, file: !1675, line: 111, baseType: !7, size: 32, offset: 864)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1674, file: !1675, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1674, file: !1675, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1674, file: !1675, line: 128, baseType: !120, size: 32, offset: 928)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1674, file: !1675, line: 129, baseType: !156, size: 128, offset: 960)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1674, file: !1675, line: 132, baseType: !1211, size: 512, offset: 1088)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1674, file: !1675, line: 133, baseType: !1219, size: 64, offset: 1600)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1674, file: !1675, line: 140, baseType: !1707, size: 256, offset: 1664)
!1707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1708, size: 256, elements: !1488)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1675, line: 38, size: 128, elements: !1709)
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1708, file: !1675, line: 39, baseType: !342, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1708, file: !1675, line: 40, baseType: !342, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1674, file: !1675, line: 146, baseType: !1713, size: 192, offset: 1920)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1675, line: 66, size: 192, elements: !1714)
!1714 = !{!1715}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1713, file: !1675, line: 67, baseType: !1716, size: 192)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1675, line: 47, size: 192, elements: !1717)
!1717 = !{!1718, !1719, !1720}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1716, file: !1675, line: 48, baseType: !694, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1716, file: !1675, line: 49, baseType: !694, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1716, file: !1675, line: 50, baseType: !694, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1674, file: !1675, line: 150, baseType: !1449, size: 640, offset: 2112)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1674, file: !1675, line: 153, baseType: !1723, size: 256, offset: 2752)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1390, size: 256, elements: !1074)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1674, file: !1675, line: 159, baseType: !1390, size: 64, offset: 3008)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1674, file: !1675, line: 162, baseType: !120, size: 32, offset: 3072)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1674, file: !1675, line: 164, baseType: !1727, size: 64, offset: 3136)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1675, line: 164, flags: DIFlagFwdDecl)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1674, file: !1675, line: 175, baseType: !1730, size: 32, offset: 3200)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !311, line: 805, baseType: !1731)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !311, line: 798, size: 32, elements: !1732)
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1731, file: !311, line: 803, baseType: !310, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1731, file: !311, line: 804, baseType: !169, offset: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1674, file: !1675, line: 176, baseType: !342, size: 64, offset: 3264)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1674, file: !1675, line: 176, baseType: !342, size: 64, offset: 3328)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1674, file: !1675, line: 176, baseType: !342, size: 64, offset: 3392)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1674, file: !1675, line: 176, baseType: !342, size: 64, offset: 3456)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1674, file: !1675, line: 177, baseType: !342, size: 64, offset: 3520)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1674, file: !1675, line: 178, baseType: !342, size: 64, offset: 3584)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1674, file: !1675, line: 179, baseType: !1437, size: 128, offset: 3648)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1674, file: !1675, line: 180, baseType: !117, size: 64, offset: 3776)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1674, file: !1675, line: 180, baseType: !117, size: 64, offset: 3840)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1674, file: !1675, line: 180, baseType: !117, size: 64, offset: 3904)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1674, file: !1675, line: 180, baseType: !117, size: 64, offset: 3968)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1674, file: !1675, line: 181, baseType: !117, size: 64, offset: 4032)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1674, file: !1675, line: 181, baseType: !117, size: 64, offset: 4096)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1674, file: !1675, line: 181, baseType: !117, size: 64, offset: 4160)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1674, file: !1675, line: 181, baseType: !117, size: 64, offset: 4224)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1674, file: !1675, line: 182, baseType: !117, size: 64, offset: 4288)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1674, file: !1675, line: 182, baseType: !117, size: 64, offset: 4352)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1674, file: !1675, line: 182, baseType: !117, size: 64, offset: 4416)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1674, file: !1675, line: 182, baseType: !117, size: 64, offset: 4480)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1674, file: !1675, line: 183, baseType: !117, size: 64, offset: 4544)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1674, file: !1675, line: 183, baseType: !117, size: 64, offset: 4608)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1674, file: !1675, line: 184, baseType: !1757, offset: 4672)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1758, line: 12, elements: !183)
!1758 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1674, file: !1675, line: 192, baseType: !344, size: 64, offset: 4672)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1674, file: !1675, line: 203, baseType: !1761, size: 2048, offset: 4736)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1762, size: 2048, elements: !1654)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1763, line: 43, size: 128, elements: !1764)
!1763 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1764 = !{!1765, !1766}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1762, file: !1763, line: 44, baseType: !247, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1762, file: !1763, line: 45, baseType: !247, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1674, file: !1675, line: 220, baseType: !411, size: 8, offset: 6784)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1674, file: !1675, line: 221, baseType: !1124, size: 16, offset: 6800)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1674, file: !1675, line: 222, baseType: !1124, size: 16, offset: 6816)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1674, file: !1675, line: 224, baseType: !893, size: 64, offset: 6848)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1674, file: !1675, line: 227, baseType: !1092, size: 192, offset: 6912)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1674, file: !1675, line: 233, baseType: !1092, size: 192, offset: 7104)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1136, file: !1137, line: 970, baseType: !1774, size: 64, offset: 9280)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1675, line: 20, size: 16576, elements: !1776)
!1776 = !{!1777, !1778, !1779, !1780}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1775, file: !1675, line: 21, baseType: !169)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1775, file: !1675, line: 22, baseType: !1149, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1775, file: !1675, line: 23, baseType: !1400, size: 128, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1775, file: !1675, line: 24, baseType: !1781, size: 16384, offset: 192)
!1781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1782, size: 16384, elements: !215)
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
!1793 = !{null, !120}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1785, file: !1685, line: 38, baseType: !117, size: 64, offset: 64)
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
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1136, file: !1137, line: 976, baseType: !117, size: 64, offset: 9728)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1136, file: !1137, line: 977, baseType: !245, size: 64, offset: 9792)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1136, file: !1137, line: 978, baseType: !7, size: 32, offset: 9856)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1136, file: !1137, line: 980, baseType: !291, size: 64, offset: 9920)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1136, file: !1137, line: 989, baseType: !1811, size: 128, offset: 9984)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1812, line: 35, size: 128, elements: !1813)
!1812 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1813 = !{!1814, !1815, !1816}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1811, file: !1812, line: 36, baseType: !120, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1811, file: !1812, line: 37, baseType: !668, size: 32, offset: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1811, file: !1812, line: 38, baseType: !1817, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1812, line: 23, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1136, file: !1137, line: 992, baseType: !342, size: 64, offset: 10112)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1136, file: !1137, line: 993, baseType: !342, size: 64, offset: 10176)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1136, file: !1137, line: 996, baseType: !169, offset: 10240)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1136, file: !1137, line: 999, baseType: !701, offset: 10240)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1136, file: !1137, line: 1001, baseType: !1824, size: 64, offset: 10240)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1137, line: 636, size: 64, elements: !1825)
!1825 = !{!1826}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1824, file: !1137, line: 637, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1136, file: !1137, line: 1005, baseType: !673, size: 128, offset: 10304)
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
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1848, file: !1849, line: 100, baseType: !692, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1848, file: !1849, line: 101, baseType: !668, size: 32, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1848, file: !1849, line: 102, baseType: !668, size: 32, offset: 96)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1848, file: !1849, line: 105, baseType: !169, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1848, file: !1849, line: 107, baseType: !113, size: 16, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1848, file: !1849, line: 109, baseType: !660, size: 128, offset: 192)
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
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1866, file: !1849, line: 84, baseType: !156, size: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1866, file: !1849, line: 85, baseType: !854, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, scope: !1859, file: !1849, line: 87, baseType: !1871, size: 128, offset: 256)
!1871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1859, file: !1849, line: 87, size: 128, elements: !1872)
!1872 = !{!1873, !1874}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1871, file: !1849, line: 88, baseType: !560, size: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1871, file: !1849, line: 89, baseType: !288, size: 128, align: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1859, file: !1849, line: 92, baseType: !7, size: 32, offset: 384)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1848, file: !1849, line: 111, baseType: !556, size: 64, offset: 384)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1848, file: !1849, line: 113, baseType: !1878, size: 256, offset: 448)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1879, line: 102, size: 256, elements: !1880)
!1879 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1880 = !{!1881, !1882, !1883}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1878, file: !1879, line: 103, baseType: !692, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1878, file: !1879, line: 104, baseType: !156, size: 128, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1878, file: !1879, line: 105, baseType: !1884, size: 64, offset: 192)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1879, line: 21, baseType: !1885)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null, !1888}
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1136, file: !1137, line: 1061, baseType: !1890, size: 64, offset: 10944)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1137, line: 43, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1136, file: !1137, line: 1064, baseType: !117, size: 64, offset: 11008)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1136, file: !1137, line: 1065, baseType: !1894, size: 64, offset: 11072)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1685, line: 14, baseType: !1896)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1685, line: 12, size: 384, elements: !1897)
!1897 = !{!1898}
!1898 = !DIDerivedType(tag: DW_TAG_member, scope: !1896, file: !1685, line: 13, baseType: !1899, size: 384)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1685, line: 13, size: 384, elements: !1900)
!1900 = !{!1901, !1902, !1903, !1904}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1899, file: !1685, line: 13, baseType: !120, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1899, file: !1685, line: 13, baseType: !120, size: 32, offset: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1899, file: !1685, line: 13, baseType: !120, size: 32, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1899, file: !1685, line: 13, baseType: !1905, size: 256, offset: 128)
!1905 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1906, line: 32, size: 256, elements: !1907)
!1906 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1907 = !{!1908, !1913, !1926, !1932, !1941, !1961, !1966}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1905, file: !1906, line: 37, baseType: !1909, size: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !1906, line: 34, size: 64, elements: !1910)
!1910 = !{!1911, !1912}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1909, file: !1906, line: 35, baseType: !1379, size: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1909, file: !1906, line: 36, baseType: !362, size: 32, offset: 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1905, file: !1906, line: 45, baseType: !1914, size: 192)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !1906, line: 40, size: 192, elements: !1915)
!1915 = !{!1916, !1918, !1919, !1925}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1914, file: !1906, line: 41, baseType: !1917, size: 32)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !144, line: 95, baseType: !120)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1914, file: !1906, line: 42, baseType: !120, size: 32, offset: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1914, file: !1906, line: 43, baseType: !1920, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1906, line: 11, baseType: !1921)
!1921 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1906, line: 8, size: 64, elements: !1922)
!1922 = !{!1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1921, file: !1906, line: 9, baseType: !120, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1921, file: !1906, line: 10, baseType: !108, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1914, file: !1906, line: 44, baseType: !120, size: 32, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1905, file: !1906, line: 52, baseType: !1927, size: 128)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !1906, line: 48, size: 128, elements: !1928)
!1928 = !{!1929, !1930, !1931}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1927, file: !1906, line: 49, baseType: !1379, size: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1927, file: !1906, line: 50, baseType: !362, size: 32, offset: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1927, file: !1906, line: 51, baseType: !1920, size: 64, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1905, file: !1906, line: 61, baseType: !1933, size: 256)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !1906, line: 55, size: 256, elements: !1934)
!1934 = !{!1935, !1936, !1937, !1938, !1940}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1933, file: !1906, line: 56, baseType: !1379, size: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1933, file: !1906, line: 57, baseType: !362, size: 32, offset: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1933, file: !1906, line: 58, baseType: !120, size: 32, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1933, file: !1906, line: 59, baseType: !1939, size: 64, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !144, line: 94, baseType: !145)
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
!1953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !1249)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1950, file: !1906, line: 86, baseType: !108, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1950, file: !1906, line: 87, baseType: !108, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1946, file: !1906, line: 93, baseType: !1957, size: 96)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1946, file: !1906, line: 90, size: 96, elements: !1958)
!1958 = !{!1959, !1960}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1957, file: !1906, line: 91, baseType: !1953, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1957, file: !1906, line: 92, baseType: !339, size: 32, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1905, file: !1906, line: 101, baseType: !1962, size: 128)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !1906, line: 98, size: 128, elements: !1963)
!1963 = !{!1964, !1965}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1962, file: !1906, line: 99, baseType: !146, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1962, file: !1906, line: 100, baseType: !120, size: 32, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1905, file: !1906, line: 108, baseType: !1967, size: 128)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !1906, line: 104, size: 128, elements: !1968)
!1968 = !{!1969, !1970, !1971}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1967, file: !1906, line: 105, baseType: !108, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1967, file: !1906, line: 106, baseType: !120, size: 32, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1967, file: !1906, line: 107, baseType: !7, size: 32, offset: 96)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1136, file: !1137, line: 1067, baseType: !1757, offset: 11136)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1136, file: !1137, line: 1099, baseType: !1974, size: 64, offset: 11136)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1137, line: 56, flags: DIFlagFwdDecl)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1136, file: !1137, line: 1103, baseType: !156, size: 128, offset: 11200)
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
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1136, file: !1137, line: 1111, baseType: !156, size: 128, offset: 11968)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1136, file: !1137, line: 1173, baseType: !1989, size: 64, offset: 12096)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1991, line: 62, size: 256, align: 256, elements: !1992)
!1991 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1992 = !{!1993, !1994, !1995, !2000}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1990, file: !1991, line: 75, baseType: !339, size: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1990, file: !1991, line: 90, baseType: !339, size: 32, offset: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1990, file: !1991, line: 124, baseType: !1996, size: 64, offset: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1990, file: !1991, line: 109, size: 64, elements: !1997)
!1997 = !{!1998, !1999}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1996, file: !1991, line: 110, baseType: !343, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1996, file: !1991, line: 112, baseType: !343, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1990, file: !1991, line: 144, baseType: !339, size: 32, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1136, file: !1137, line: 1174, baseType: !338, size: 32, offset: 12160)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1136, file: !1137, line: 1179, baseType: !117, size: 64, offset: 12224)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1136, file: !1137, line: 1182, baseType: !2004, size: 128, offset: 12288)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1070, line: 76, size: 128, elements: !2005)
!2005 = !{!2006, !2011, !2012}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2004, file: !1070, line: 85, baseType: !2007, size: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2008, line: 7, size: 64, elements: !2009)
!2008 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2009 = !{!2010}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2007, file: !2008, line: 12, baseType: !1286, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2004, file: !1070, line: 88, baseType: !411, size: 8, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2004, file: !1070, line: 95, baseType: !411, size: 8, offset: 72)
!2013 = !DIDerivedType(tag: DW_TAG_member, scope: !1136, file: !1137, line: 1184, baseType: !2014, size: 128, offset: 12416)
!2014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1136, file: !1137, line: 1184, size: 128, elements: !2015)
!2015 = !{!2016, !2017}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2014, file: !1137, line: 1185, baseType: !1149, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2014, file: !1137, line: 1186, baseType: !288, size: 128, align: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1136, file: !1137, line: 1190, baseType: !2019, size: 64, offset: 12544)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1137, line: 53, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1136, file: !1137, line: 1192, baseType: !2022, size: 128, offset: 12608)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1070, line: 64, size: 128, elements: !2023)
!2023 = !{!2024, !2025, !2026}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2022, file: !1070, line: 65, baseType: !642, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2022, file: !1070, line: 67, baseType: !339, size: 32, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2022, file: !1070, line: 68, baseType: !339, size: 32, offset: 96)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1136, file: !1137, line: 1206, baseType: !120, size: 32, offset: 12736)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1136, file: !1137, line: 1207, baseType: !120, size: 32, offset: 12768)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1136, file: !1137, line: 1209, baseType: !117, size: 64, offset: 12800)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1136, file: !1137, line: 1219, baseType: !342, size: 64, offset: 12864)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1136, file: !1137, line: 1220, baseType: !342, size: 64, offset: 12928)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1136, file: !1137, line: 1317, baseType: !120, size: 32, offset: 12992)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1136, file: !1137, line: 1319, baseType: !1135, size: 64, offset: 13056)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1136, file: !1137, line: 1322, baseType: !2035, size: 64, offset: 13120)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2037, line: 56, size: 512, elements: !2038)
!2037 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2038 = !{!2039, !2040, !2041, !2042, !2043, !2044, !2045, !2047}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2036, file: !2037, line: 57, baseType: !2035, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2036, file: !2037, line: 58, baseType: !108, size: 64, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2036, file: !2037, line: 59, baseType: !117, size: 64, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2036, file: !2037, line: 60, baseType: !117, size: 64, offset: 192)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2036, file: !2037, line: 61, baseType: !741, size: 64, offset: 256)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2036, file: !2037, line: 62, baseType: !7, size: 32, offset: 320)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2036, file: !2037, line: 63, baseType: !2046, size: 64, offset: 384)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !119, line: 153, baseType: !342)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2036, file: !2037, line: 64, baseType: !2048, size: 64, offset: 448)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1136, file: !1137, line: 1326, baseType: !1149, size: 32, offset: 13184)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1136, file: !1137, line: 1342, baseType: !108, size: 64, offset: 13248)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1136, file: !1137, line: 1343, baseType: !343, size: 64, offset: 13312)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1136, file: !1137, line: 1344, baseType: !342, size: 64, offset: 13376)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1136, file: !1137, line: 1345, baseType: !343, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1136, file: !1137, line: 1346, baseType: !343, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1136, file: !1137, line: 1347, baseType: !343, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1136, file: !1137, line: 1348, baseType: !288, size: 128, align: 64, offset: 13504)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1136, file: !1137, line: 1358, baseType: !2059, size: 34816, offset: 13824)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2060, line: 485, size: 34816, elements: !2061)
!2060 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2061 = !{!2062, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2091, !2092, !2093, !2094, !2095, !2096, !2099, !2100, !2101}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2059, file: !2060, line: 487, baseType: !2063, size: 192)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2064, size: 192, elements: !211)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2065, line: 16, size: 64, elements: !2066)
!2065 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2066 = !{!2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2064, file: !2065, line: 17, baseType: !109, size: 16)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2064, file: !2065, line: 18, baseType: !109, size: 16, offset: 16)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2064, file: !2065, line: 19, baseType: !109, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2064, file: !2065, line: 19, baseType: !109, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2064, file: !2065, line: 19, baseType: !109, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2064, file: !2065, line: 19, baseType: !109, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2064, file: !2065, line: 19, baseType: !109, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2064, file: !2065, line: 20, baseType: !109, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2064, file: !2065, line: 20, baseType: !109, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2064, file: !2065, line: 20, baseType: !109, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2064, file: !2065, line: 20, baseType: !109, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2064, file: !2065, line: 20, baseType: !109, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2064, file: !2065, line: 20, baseType: !109, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2059, file: !2060, line: 491, baseType: !117, size: 64, offset: 192)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2059, file: !2060, line: 495, baseType: !113, size: 16, offset: 256)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2059, file: !2060, line: 496, baseType: !113, size: 16, offset: 272)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2059, file: !2060, line: 497, baseType: !113, size: 16, offset: 288)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2059, file: !2060, line: 498, baseType: !113, size: 16, offset: 304)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2059, file: !2060, line: 502, baseType: !117, size: 64, offset: 320)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2059, file: !2060, line: 503, baseType: !117, size: 64, offset: 384)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2059, file: !2060, line: 514, baseType: !2088, size: 256, offset: 448)
!2088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2089, size: 256, elements: !1074)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2060, line: 483, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2059, file: !2060, line: 516, baseType: !117, size: 64, offset: 704)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2059, file: !2060, line: 518, baseType: !117, size: 64, offset: 768)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2059, file: !2060, line: 520, baseType: !117, size: 64, offset: 832)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2059, file: !2060, line: 521, baseType: !117, size: 64, offset: 896)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2059, file: !2060, line: 522, baseType: !117, size: 64, offset: 960)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2059, file: !2060, line: 528, baseType: !2097, size: 64, offset: 1024)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2060, line: 10, flags: DIFlagFwdDecl)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2059, file: !2060, line: 535, baseType: !117, size: 64, offset: 1088)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2059, file: !2060, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2059, file: !2060, line: 540, baseType: !2102, size: 33280, offset: 1536)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2103, line: 317, size: 33280, elements: !2104)
!2103 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2104 = !{!2105, !2106, !2107}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2102, file: !2103, line: 330, baseType: !7, size: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2102, file: !2103, line: 337, baseType: !117, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2102, file: !2103, line: 348, baseType: !2108, size: 32768, offset: 512)
!2108 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2103, line: 304, size: 32768, elements: !2109)
!2109 = !{!2110, !2125, !2164, !2214, !2227}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2108, file: !2103, line: 305, baseType: !2111, size: 896)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2103, line: 12, size: 896, elements: !2112)
!2112 = !{!2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2124}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2111, file: !2103, line: 13, baseType: !338, size: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2111, file: !2103, line: 14, baseType: !338, size: 32, offset: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2111, file: !2103, line: 15, baseType: !338, size: 32, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2111, file: !2103, line: 16, baseType: !338, size: 32, offset: 96)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2111, file: !2103, line: 17, baseType: !338, size: 32, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2111, file: !2103, line: 18, baseType: !338, size: 32, offset: 160)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2111, file: !2103, line: 19, baseType: !338, size: 32, offset: 192)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2111, file: !2103, line: 22, baseType: !2121, size: 640, offset: 224)
!2121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 640, elements: !2122)
!2122 = !{!2123}
!2123 = !DISubrange(count: 20)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2111, file: !2103, line: 25, baseType: !338, size: 32, offset: 864)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2108, file: !2103, line: 306, baseType: !2126, size: 4096, align: 128)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2103, line: 34, size: 4096, align: 128, elements: !2127)
!2127 = !{!2128, !2129, !2130, !2131, !2132, !2147, !2148, !2149, !2153, !2155, !2159}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2126, file: !2103, line: 35, baseType: !109, size: 16)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2126, file: !2103, line: 36, baseType: !109, size: 16, offset: 16)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2126, file: !2103, line: 37, baseType: !109, size: 16, offset: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2126, file: !2103, line: 38, baseType: !109, size: 16, offset: 48)
!2132 = !DIDerivedType(tag: DW_TAG_member, scope: !2126, file: !2103, line: 39, baseType: !2133, size: 128, offset: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2126, file: !2103, line: 39, size: 128, elements: !2134)
!2134 = !{!2135, !2140}
!2135 = !DIDerivedType(tag: DW_TAG_member, scope: !2133, file: !2103, line: 40, baseType: !2136, size: 128)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2133, file: !2103, line: 40, size: 128, elements: !2137)
!2137 = !{!2138, !2139}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2136, file: !2103, line: 41, baseType: !342, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2136, file: !2103, line: 42, baseType: !342, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, scope: !2133, file: !2103, line: 44, baseType: !2141, size: 128)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2133, file: !2103, line: 44, size: 128, elements: !2142)
!2142 = !{!2143, !2144, !2145, !2146}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2141, file: !2103, line: 45, baseType: !338, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2141, file: !2103, line: 46, baseType: !338, size: 32, offset: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2141, file: !2103, line: 47, baseType: !338, size: 32, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2141, file: !2103, line: 48, baseType: !338, size: 32, offset: 96)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2126, file: !2103, line: 51, baseType: !338, size: 32, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2126, file: !2103, line: 52, baseType: !338, size: 32, offset: 224)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2126, file: !2103, line: 55, baseType: !2150, size: 1024, offset: 256)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 1024, elements: !2151)
!2151 = !{!2152}
!2152 = !DISubrange(count: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2126, file: !2103, line: 58, baseType: !2154, size: 2048, offset: 1280)
!2154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 2048, elements: !215)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2126, file: !2103, line: 60, baseType: !2156, size: 384, offset: 3328)
!2156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 384, elements: !2157)
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
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2165, file: !2103, line: 80, baseType: !338, size: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2165, file: !2103, line: 81, baseType: !338, size: 32, offset: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2165, file: !2103, line: 82, baseType: !338, size: 32, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2165, file: !2103, line: 83, baseType: !338, size: 32, offset: 96)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2165, file: !2103, line: 84, baseType: !338, size: 32, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2165, file: !2103, line: 85, baseType: !338, size: 32, offset: 160)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2165, file: !2103, line: 86, baseType: !338, size: 32, offset: 192)
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
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2183, file: !2184, line: 12, baseType: !146, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2183, file: !2184, line: 13, baseType: !2188, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2190, line: 56, size: 1344, elements: !2191)
!2190 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2191 = !{!2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2189, file: !2190, line: 61, baseType: !117, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2189, file: !2190, line: 62, baseType: !117, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2189, file: !2190, line: 63, baseType: !117, size: 64, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2189, file: !2190, line: 64, baseType: !117, size: 64, offset: 192)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2189, file: !2190, line: 65, baseType: !117, size: 64, offset: 256)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2189, file: !2190, line: 66, baseType: !117, size: 64, offset: 320)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2189, file: !2190, line: 68, baseType: !117, size: 64, offset: 384)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2189, file: !2190, line: 69, baseType: !117, size: 64, offset: 448)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2189, file: !2190, line: 70, baseType: !117, size: 64, offset: 512)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2189, file: !2190, line: 71, baseType: !117, size: 64, offset: 576)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2189, file: !2190, line: 72, baseType: !117, size: 64, offset: 640)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2189, file: !2190, line: 73, baseType: !117, size: 64, offset: 704)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2189, file: !2190, line: 74, baseType: !117, size: 64, offset: 768)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2189, file: !2190, line: 75, baseType: !117, size: 64, offset: 832)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2189, file: !2190, line: 76, baseType: !117, size: 64, offset: 896)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2189, file: !2190, line: 81, baseType: !117, size: 64, offset: 960)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2189, file: !2190, line: 83, baseType: !117, size: 64, offset: 1024)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2189, file: !2190, line: 84, baseType: !117, size: 64, offset: 1088)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2189, file: !2190, line: 85, baseType: !117, size: 64, offset: 1152)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2189, file: !2190, line: 86, baseType: !117, size: 64, offset: 1216)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2189, file: !2190, line: 87, baseType: !117, size: 64, offset: 1280)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2165, file: !2103, line: 96, baseType: !338, size: 32, offset: 1024)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2108, file: !2103, line: 308, baseType: !2215, size: 4608, align: 512)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2103, line: 289, size: 4608, align: 512, elements: !2216)
!2216 = !{!2217, !2218, !2225}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2215, file: !2103, line: 290, baseType: !2126, size: 4096, align: 128)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2215, file: !2103, line: 291, baseType: !2219, size: 512, offset: 4096)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2103, line: 268, size: 512, elements: !2220)
!2220 = !{!2221, !2222, !2223}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2219, file: !2103, line: 269, baseType: !342, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2219, file: !2103, line: 270, baseType: !342, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2219, file: !2103, line: 271, baseType: !2224, size: 384, offset: 128)
!2224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 384, elements: !1544)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2215, file: !2103, line: 292, baseType: !2226, offset: 4608)
!2226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, elements: !1642)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2108, file: !2103, line: 309, baseType: !2228, size: 32768)
!2228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 32768, elements: !2229)
!2229 = !{!2230}
!2230 = !DISubrange(count: 4096)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1132, file: !644, line: 378, baseType: !2232, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1128, file: !644, line: 384, baseType: !1421, size: 192, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !897, file: !644, line: 500, baseType: !169, offset: 6656)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !897, file: !644, line: 501, baseType: !2236, size: 64, offset: 6656)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !644, line: 387, flags: DIFlagFwdDecl)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !897, file: !644, line: 516, baseType: !1632, size: 64, offset: 6720)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !897, file: !644, line: 519, baseType: !275, size: 64, offset: 6784)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !897, file: !644, line: 521, baseType: !2241, size: 64, offset: 6848)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !644, line: 521, flags: DIFlagFwdDecl)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !897, file: !644, line: 545, baseType: !668, size: 32, offset: 6912)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !897, file: !644, line: 548, baseType: !411, size: 8, offset: 6944)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !897, file: !644, line: 550, baseType: !2246, offset: 6952)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2247, line: 142, elements: !183)
!2247 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !897, file: !644, line: 554, baseType: !1878, size: 256, offset: 6976)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !897, file: !644, line: 557, baseType: !338, size: 32, offset: 7232)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !894, file: !644, line: 565, baseType: !2251, offset: 7296)
!2251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, elements: !2252)
!2252 = !{!2253}
!2253 = !DISubrange(count: -1)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !890, file: !644, line: 151, baseType: !668, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !883, file: !644, line: 156, baseType: !169, offset: 256)
!2256 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !644, line: 159, baseType: !2257, size: 128)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !648, file: !644, line: 159, size: 128, elements: !2258)
!2258 = !{!2259, !2323}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2257, file: !644, line: 161, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2262)
!2262 = !{!2263, !2273, !2294, !2295, !2296, !2297, !2298, !2310, !2311, !2312}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2261, file: !31, line: 111, baseType: !2264, size: 384)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2265)
!2265 = !{!2266, !2268, !2269, !2270, !2271, !2272}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2264, file: !31, line: 20, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2264, file: !31, line: 21, baseType: !2267, size: 64, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2264, file: !31, line: 22, baseType: !2267, size: 64, offset: 128)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2264, file: !31, line: 23, baseType: !117, size: 64, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2264, file: !31, line: 24, baseType: !117, size: 64, offset: 256)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2264, file: !31, line: 25, baseType: !117, size: 64, offset: 320)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2261, file: !31, line: 112, baseType: !2274, size: 64, offset: 384)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2276, line: 105, size: 128, elements: !2277)
!2276 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2277 = !{!2278, !2279}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2275, file: !2276, line: 110, baseType: !117, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2275, file: !2276, line: 118, baseType: !2280, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2276, line: 95, size: 448, elements: !2282)
!2282 = !{!2283, !2284, !2289, !2290, !2291, !2292, !2293}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2281, file: !2276, line: 96, baseType: !692, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2281, file: !2276, line: 97, baseType: !2285, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2276, line: 60, baseType: !2287)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{null, !2274}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2281, file: !2276, line: 98, baseType: !2285, size: 64, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2281, file: !2276, line: 99, baseType: !411, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2281, file: !2276, line: 100, baseType: !411, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2281, file: !2276, line: 101, baseType: !288, size: 128, align: 64, offset: 256)
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
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2301, file: !31, line: 73, baseType: !761, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2301, file: !31, line: 78, baseType: !2305, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !2260}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2301, file: !31, line: 83, baseType: !2305, size: 64, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2301, file: !31, line: 89, baseType: !946, size: 64, offset: 192)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2261, file: !31, line: 118, baseType: !108, size: 64, offset: 896)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2261, file: !31, line: 119, baseType: !120, size: 32, offset: 960)
!2312 = !DIDerivedType(tag: DW_TAG_member, scope: !2261, file: !31, line: 120, baseType: !2313, size: 128, offset: 1024)
!2313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2261, file: !31, line: 120, size: 128, elements: !2314)
!2314 = !{!2315, !2321}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2313, file: !31, line: 121, baseType: !2316, size: 128)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2317, line: 6, size: 128, elements: !2318)
!2317 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2318 = !{!2319, !2320}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2316, file: !2317, line: 7, baseType: !342, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2316, file: !2317, line: 8, baseType: !342, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2313, file: !31, line: 122, baseType: !2322)
!2322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2316, elements: !1642)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2257, file: !644, line: 162, baseType: !108, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !648, file: !644, line: 176, baseType: !288, size: 128, align: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, scope: !643, file: !644, line: 179, baseType: !2326, size: 32, offset: 384)
!2326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !643, file: !644, line: 179, size: 32, elements: !2327)
!2327 = !{!2328, !2329, !2330, !2331}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2326, file: !644, line: 184, baseType: !668, size: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2326, file: !644, line: 192, baseType: !7, size: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2326, file: !644, line: 194, baseType: !7, size: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2326, file: !644, line: 195, baseType: !120, size: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !643, file: !644, line: 199, baseType: !668, size: 32, offset: 416)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !578, file: !44, line: 1964, baseType: !2334, size: 64, offset: 1344)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!146, !520, !2337}
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2339, line: 12, size: 256, elements: !2340)
!2339 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2340 = !{!2341, !2342, !2343, !2344, !2345}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2338, file: !2339, line: 13, baseType: !118, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2338, file: !2339, line: 16, baseType: !120, size: 32, offset: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2338, file: !2339, line: 23, baseType: !117, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2338, file: !2339, line: 30, baseType: !117, size: 64, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2338, file: !2339, line: 33, baseType: !2346, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !644, line: 27, flags: DIFlagFwdDecl)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !578, file: !44, line: 1966, baseType: !2334, size: 64, offset: 1408)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !521, file: !44, line: 1424, baseType: !2350, size: 64, offset: 448)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2352)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2353)
!2353 = !{!2354, !2400, !2404, !2408, !2409, !2410, !2411, !2412, !2417, !2422, !2426}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2352, file: !38, line: 323, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!120, !2358}
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2360)
!2360 = !{!2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2385, !2386, !2387}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2359, file: !38, line: 295, baseType: !560, size: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2359, file: !38, line: 296, baseType: !156, size: 128, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2359, file: !38, line: 297, baseType: !156, size: 128, offset: 256)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2359, file: !38, line: 298, baseType: !156, size: 128, offset: 384)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2359, file: !38, line: 299, baseType: !1092, size: 192, offset: 512)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2359, file: !38, line: 300, baseType: !169, offset: 704)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2359, file: !38, line: 301, baseType: !668, size: 32, offset: 704)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2359, file: !38, line: 302, baseType: !520, size: 64, offset: 768)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2359, file: !38, line: 303, baseType: !2370, size: 64, offset: 832)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2371)
!2371 = !{!2372, !2384}
!2372 = !DIDerivedType(tag: DW_TAG_member, scope: !2370, file: !38, line: 69, baseType: !2373, size: 32)
!2373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2370, file: !38, line: 69, size: 32, elements: !2374)
!2374 = !{!2375, !2376, !2377}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2373, file: !38, line: 70, baseType: !356, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2373, file: !38, line: 71, baseType: !364, size: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2373, file: !38, line: 72, baseType: !2378, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2379, line: 24, baseType: !2380)
!2379 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2379, line: 22, size: 32, elements: !2381)
!2381 = !{!2382}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2380, file: !2379, line: 23, baseType: !2383, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2379, line: 20, baseType: !362)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2370, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2359, file: !38, line: 304, baseType: !452, size: 64, offset: 896)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2359, file: !38, line: 305, baseType: !117, size: 64, offset: 960)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2359, file: !38, line: 306, baseType: !2388, size: 576, offset: 1024)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2389)
!2389 = !{!2390, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2388, file: !38, line: 206, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !454)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2388, file: !38, line: 207, baseType: !2391, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2388, file: !38, line: 208, baseType: !2391, size: 64, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2388, file: !38, line: 209, baseType: !2391, size: 64, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2388, file: !38, line: 210, baseType: !2391, size: 64, offset: 256)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2388, file: !38, line: 211, baseType: !2391, size: 64, offset: 320)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2388, file: !38, line: 212, baseType: !2391, size: 64, offset: 384)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2388, file: !38, line: 213, baseType: !460, size: 64, offset: 448)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2388, file: !38, line: 214, baseType: !460, size: 64, offset: 512)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2352, file: !38, line: 324, baseType: !2401, size: 64, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!2358, !520, !120}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2352, file: !38, line: 325, baseType: !2405, size: 64, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{null, !2358}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2352, file: !38, line: 326, baseType: !2355, size: 64, offset: 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2352, file: !38, line: 327, baseType: !2355, size: 64, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2352, file: !38, line: 328, baseType: !2355, size: 64, offset: 320)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2352, file: !38, line: 329, baseType: !606, size: 64, offset: 384)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2352, file: !38, line: 332, baseType: !2413, size: 64, offset: 448)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!2416, !350}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2352, file: !38, line: 333, baseType: !2418, size: 64, offset: 512)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!120, !350, !2421}
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2352, file: !38, line: 335, baseType: !2423, size: 64, offset: 576)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!120, !350, !2416}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2352, file: !38, line: 337, baseType: !2427, size: 64, offset: 640)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!120, !520, !2430}
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !521, file: !44, line: 1425, baseType: !2432, size: 64, offset: 512)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2434)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2435)
!2435 = !{!2436, !2440, !2441, !2445, !2446, !2447, !2462, !2485, !2489, !2490, !2513}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2434, file: !38, line: 429, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!120, !520, !120, !120, !470}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2434, file: !38, line: 430, baseType: !606, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2434, file: !38, line: 431, baseType: !2442, size: 64, offset: 128)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!120, !520, !7}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2434, file: !38, line: 432, baseType: !2442, size: 64, offset: 192)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2434, file: !38, line: 433, baseType: !606, size: 64, offset: 256)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2434, file: !38, line: 434, baseType: !2448, size: 64, offset: 320)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!120, !520, !120, !2451}
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2453)
!2453 = !{!2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2452, file: !38, line: 416, baseType: !120, size: 32)
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
!2465 = !{!120, !520, !2370, !2466}
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2468)
!2468 = !{!2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2467, file: !38, line: 344, baseType: !120, size: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2467, file: !38, line: 345, baseType: !342, size: 64, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2467, file: !38, line: 346, baseType: !342, size: 64, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2467, file: !38, line: 347, baseType: !342, size: 64, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2467, file: !38, line: 348, baseType: !342, size: 64, offset: 256)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2467, file: !38, line: 349, baseType: !342, size: 64, offset: 320)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2467, file: !38, line: 350, baseType: !342, size: 64, offset: 384)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2467, file: !38, line: 351, baseType: !698, size: 64, offset: 448)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2467, file: !38, line: 353, baseType: !698, size: 64, offset: 512)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2467, file: !38, line: 354, baseType: !120, size: 32, offset: 576)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2467, file: !38, line: 355, baseType: !120, size: 32, offset: 608)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2467, file: !38, line: 356, baseType: !342, size: 64, offset: 640)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2467, file: !38, line: 357, baseType: !342, size: 64, offset: 704)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2467, file: !38, line: 358, baseType: !342, size: 64, offset: 768)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2467, file: !38, line: 359, baseType: !698, size: 64, offset: 832)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2467, file: !38, line: 360, baseType: !120, size: 32, offset: 896)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2434, file: !38, line: 436, baseType: !2486, size: 64, offset: 448)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!120, !520, !2430, !2466}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2434, file: !38, line: 438, baseType: !2463, size: 64, offset: 512)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2434, file: !38, line: 439, baseType: !2491, size: 64, offset: 576)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!120, !520, !2494}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2496)
!2496 = !{!2497, !2498}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2495, file: !38, line: 410, baseType: !7, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2495, file: !38, line: 411, baseType: !2499, size: 1344, offset: 64)
!2499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2500, size: 1344, elements: !211)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2501)
!2501 = !{!2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2512}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2500, file: !38, line: 396, baseType: !7, size: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2500, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2500, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2500, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2500, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2500, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2500, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2500, file: !38, line: 404, baseType: !344, size: 64, offset: 256)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2500, file: !38, line: 405, baseType: !2511, size: 64, offset: 320)
!2511 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !119, line: 126, baseType: !342)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2500, file: !38, line: 406, baseType: !2511, size: 64, offset: 384)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2434, file: !38, line: 440, baseType: !2442, size: 64, offset: 640)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !521, file: !44, line: 1426, baseType: !2515, size: 64, offset: 576)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2517)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !521, file: !44, line: 1427, baseType: !117, size: 64, offset: 640)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !521, file: !44, line: 1428, baseType: !117, size: 64, offset: 704)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !521, file: !44, line: 1429, baseType: !117, size: 64, offset: 768)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !521, file: !44, line: 1430, baseType: !305, size: 64, offset: 832)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !521, file: !44, line: 1431, baseType: !688, size: 256, offset: 896)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !521, file: !44, line: 1432, baseType: !120, size: 32, offset: 1152)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !521, file: !44, line: 1433, baseType: !668, size: 32, offset: 1184)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !521, file: !44, line: 1437, baseType: !2526, size: 64, offset: 1216)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2529)
!2529 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !521, file: !44, line: 1449, baseType: !2531, size: 64, offset: 1280)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !321, line: 34, size: 64, elements: !2532)
!2532 = !{!2533}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2531, file: !321, line: 35, baseType: !324, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !521, file: !44, line: 1450, baseType: !156, size: 128, offset: 1344)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !521, file: !44, line: 1451, baseType: !2536, size: 64, offset: 1472)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !521, file: !44, line: 1452, baseType: !1844, size: 64, offset: 1536)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !521, file: !44, line: 1453, baseType: !2540, size: 64, offset: 1600)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !521, file: !44, line: 1454, baseType: !560, size: 128, offset: 1664)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !521, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !521, file: !44, line: 1456, baseType: !2545, size: 2432, offset: 1856)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2546)
!2546 = !{!2547, !2548, !2549, !2551, !2583}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2545, file: !38, line: 519, baseType: !7, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2545, file: !38, line: 520, baseType: !688, size: 256, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2545, file: !38, line: 521, baseType: !2550, size: 192, offset: 320)
!2550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 192, elements: !211)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2545, file: !38, line: 522, baseType: !2552, size: 1728, offset: 512)
!2552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2553, size: 1728, elements: !211)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2554)
!2554 = !{!2555, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2553, file: !38, line: 223, baseType: !2556, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2558)
!2558 = !{!2559, !2560, !2573, !2574}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2557, file: !38, line: 444, baseType: !120, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2557, file: !38, line: 445, baseType: !2561, size: 64, offset: 64)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2563)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2564)
!2564 = !{!2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2563, file: !38, line: 311, baseType: !606, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2563, file: !38, line: 312, baseType: !606, size: 64, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2563, file: !38, line: 313, baseType: !606, size: 64, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2563, file: !38, line: 314, baseType: !606, size: 64, offset: 192)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2563, file: !38, line: 315, baseType: !2355, size: 64, offset: 256)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2563, file: !38, line: 316, baseType: !2355, size: 64, offset: 320)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2563, file: !38, line: 317, baseType: !2355, size: 64, offset: 384)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2563, file: !38, line: 318, baseType: !2427, size: 64, offset: 448)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2557, file: !38, line: 446, baseType: !114, size: 64, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2557, file: !38, line: 447, baseType: !2556, size: 64, offset: 192)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2553, file: !38, line: 224, baseType: !120, size: 32, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2553, file: !38, line: 226, baseType: !156, size: 128, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2553, file: !38, line: 227, baseType: !117, size: 64, offset: 256)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2553, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2553, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2553, file: !38, line: 230, baseType: !2391, size: 64, offset: 384)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2553, file: !38, line: 231, baseType: !2391, size: 64, offset: 448)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2553, file: !38, line: 232, baseType: !108, size: 64, offset: 512)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2545, file: !38, line: 523, baseType: !2584, size: 192, offset: 2240)
!2584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2561, size: 192, elements: !211)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !521, file: !44, line: 1458, baseType: !2586, size: 2112, offset: 4288)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2587)
!2587 = !{!2588, !2589, !2590}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2586, file: !44, line: 1411, baseType: !120, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2586, file: !44, line: 1412, baseType: !1400, size: 128, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2586, file: !44, line: 1413, baseType: !2591, size: 1920, offset: 192)
!2591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2592, size: 1920, elements: !211)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2593, line: 12, size: 640, elements: !2594)
!2593 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2594 = !{!2595, !2603, !2605, !2610, !2611}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2592, file: !2593, line: 13, baseType: !2596, size: 320)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2597, line: 17, size: 320, elements: !2598)
!2597 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2598 = !{!2599, !2600, !2601, !2602}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2596, file: !2597, line: 18, baseType: !120, size: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2596, file: !2597, line: 19, baseType: !120, size: 32, offset: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2596, file: !2597, line: 20, baseType: !1400, size: 128, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2596, file: !2597, line: 22, baseType: !288, size: 128, align: 64, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2592, file: !2593, line: 14, baseType: !2604, size: 64, offset: 320)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2592, file: !2593, line: 15, baseType: !2606, size: 64, offset: 384)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2607, line: 16, size: 64, elements: !2608)
!2607 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2608 = !{!2609}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2606, file: !2607, line: 17, baseType: !1135, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2592, file: !2593, line: 16, baseType: !1400, size: 128, offset: 448)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2592, file: !2593, line: 17, baseType: !668, size: 32, offset: 576)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !521, file: !44, line: 1465, baseType: !108, size: 64, offset: 6400)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !521, file: !44, line: 1468, baseType: !338, size: 32, offset: 6464)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !521, file: !44, line: 1470, baseType: !460, size: 64, offset: 6528)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !521, file: !44, line: 1471, baseType: !460, size: 64, offset: 6592)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !521, file: !44, line: 1473, baseType: !339, size: 32, offset: 6656)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !521, file: !44, line: 1474, baseType: !2618, size: 64, offset: 6720)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !521, file: !44, line: 1477, baseType: !2621, size: 256, offset: 6784)
!2621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 256, elements: !2151)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !521, file: !44, line: 1478, baseType: !2623, size: 128, offset: 7040)
!2623 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2624, line: 18, baseType: !2625)
!2624 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2624, line: 16, size: 128, elements: !2626)
!2626 = !{!2627}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2625, file: !2624, line: 17, baseType: !2628, size: 128)
!2628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1272, size: 128, elements: !1654)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !521, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !521, file: !44, line: 1481, baseType: !2631, size: 32, offset: 7200)
!2631 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !119, line: 150, baseType: !7)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !521, file: !44, line: 1487, baseType: !1092, size: 192, offset: 7232)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !521, file: !44, line: 1493, baseType: !133, size: 64, offset: 7424)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !521, file: !44, line: 1495, baseType: !2635, size: 64, offset: 7488)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2637)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !303, line: 135, size: 1024, align: 512, elements: !2638)
!2638 = !{!2639, !2643, !2644, !2651, !2657, !2661, !2665, !2669, !2670, !2674, !2678, !2683, !2687}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2637, file: !303, line: 136, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!120, !305, !7}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2637, file: !303, line: 137, baseType: !2640, size: 64, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2637, file: !303, line: 138, baseType: !2645, size: 64, offset: 128)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!120, !2648, !2650}
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2637, file: !303, line: 139, baseType: !2652, size: 64, offset: 192)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!120, !2648, !7, !133, !2655}
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2637, file: !303, line: 141, baseType: !2658, size: 64, offset: 256)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!120, !2648}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2637, file: !303, line: 142, baseType: !2662, size: 64, offset: 320)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!120, !305}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2637, file: !303, line: 143, baseType: !2666, size: 64, offset: 384)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{null, !305}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2637, file: !303, line: 144, baseType: !2666, size: 64, offset: 448)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2637, file: !303, line: 145, baseType: !2671, size: 64, offset: 512)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{null, !305, !350}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2637, file: !303, line: 146, baseType: !2675, size: 64, offset: 576)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!210, !305, !210, !120}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2637, file: !303, line: 147, baseType: !2679, size: 64, offset: 640)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!301, !2682}
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2637, file: !303, line: 148, baseType: !2684, size: 64, offset: 704)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!120, !470, !411}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2637, file: !303, line: 149, baseType: !2688, size: 64, offset: 768)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!305, !305, !2691}
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !521, file: !44, line: 1500, baseType: !120, size: 32, offset: 7552)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !521, file: !44, line: 1502, baseType: !2695, size: 448, offset: 7616)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2339, line: 60, size: 448, elements: !2696)
!2696 = !{!2697, !2702, !2703, !2704, !2705, !2706, !2707}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2695, file: !2339, line: 61, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!117, !2701, !2337}
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2695, file: !2339, line: 63, baseType: !2698, size: 64, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2695, file: !2339, line: 66, baseType: !146, size: 64, offset: 128)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2695, file: !2339, line: 67, baseType: !120, size: 32, offset: 192)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2695, file: !2339, line: 68, baseType: !7, size: 32, offset: 224)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2695, file: !2339, line: 71, baseType: !156, size: 128, offset: 256)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2695, file: !2339, line: 77, baseType: !2708, size: 64, offset: 384)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !521, file: !44, line: 1505, baseType: !692, size: 64, offset: 8064)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !521, file: !44, line: 1508, baseType: !692, size: 64, offset: 8128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !521, file: !44, line: 1511, baseType: !120, size: 32, offset: 8192)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !521, file: !44, line: 1514, baseType: !828, size: 32, offset: 8224)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !521, file: !44, line: 1517, baseType: !2714, size: 64, offset: 8256)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1879, line: 18, flags: DIFlagFwdDecl)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !521, file: !44, line: 1518, baseType: !556, size: 64, offset: 8320)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !521, file: !44, line: 1525, baseType: !1632, size: 64, offset: 8384)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !521, file: !44, line: 1532, baseType: !2719, size: 64, offset: 8448)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2720, line: 52, size: 64, elements: !2721)
!2720 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2721 = !{!2722}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2719, file: !2720, line: 53, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2720, line: 40, size: 256, elements: !2725)
!2725 = !{!2726, !2727, !2732}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2724, file: !2720, line: 42, baseType: !169)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2724, file: !2720, line: 44, baseType: !2728, size: 192)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2720, line: 28, size: 192, elements: !2729)
!2729 = !{!2730, !2731}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2728, file: !2720, line: 29, baseType: !156, size: 128)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2728, file: !2720, line: 31, baseType: !146, size: 64, offset: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2724, file: !2720, line: 49, baseType: !146, size: 64, offset: 192)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !521, file: !44, line: 1533, baseType: !2719, size: 64, offset: 8512)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !521, file: !44, line: 1534, baseType: !288, size: 128, align: 64, offset: 8576)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !521, file: !44, line: 1535, baseType: !1878, size: 256, offset: 8704)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !521, file: !44, line: 1537, baseType: !1092, size: 192, offset: 8960)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !521, file: !44, line: 1542, baseType: !120, size: 32, offset: 9152)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !521, file: !44, line: 1545, baseType: !169, offset: 9184)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !521, file: !44, line: 1546, baseType: !156, size: 128, offset: 9216)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !521, file: !44, line: 1548, baseType: !169, offset: 9344)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !521, file: !44, line: 1549, baseType: !156, size: 128, offset: 9344)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !351, file: !44, line: 624, baseType: !655, size: 64, offset: 256)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !351, file: !44, line: 631, baseType: !117, size: 64, offset: 320)
!2744 = !DIDerivedType(tag: DW_TAG_member, scope: !351, file: !44, line: 639, baseType: !2745, size: 32, offset: 384)
!2745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !351, file: !44, line: 639, size: 32, elements: !2746)
!2746 = !{!2747, !2749}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2745, file: !44, line: 640, baseType: !2748, size: 32)
!2748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2745, file: !44, line: 641, baseType: !7, size: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !351, file: !44, line: 643, baseType: !434, size: 32, offset: 416)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !351, file: !44, line: 644, baseType: !452, size: 64, offset: 448)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !351, file: !44, line: 645, baseType: !456, size: 128, offset: 512)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !351, file: !44, line: 646, baseType: !456, size: 128, offset: 640)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !351, file: !44, line: 647, baseType: !456, size: 128, offset: 768)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !351, file: !44, line: 648, baseType: !169, offset: 896)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !351, file: !44, line: 649, baseType: !113, size: 16, offset: 896)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !351, file: !44, line: 650, baseType: !1271, size: 8, offset: 912)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !351, file: !44, line: 651, baseType: !1271, size: 8, offset: 920)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !351, file: !44, line: 652, baseType: !2511, size: 64, offset: 960)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !351, file: !44, line: 659, baseType: !117, size: 64, offset: 1024)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !351, file: !44, line: 660, baseType: !688, size: 256, offset: 1088)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !351, file: !44, line: 662, baseType: !117, size: 64, offset: 1344)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !351, file: !44, line: 663, baseType: !117, size: 64, offset: 1408)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !351, file: !44, line: 665, baseType: !560, size: 128, offset: 1472)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !351, file: !44, line: 666, baseType: !156, size: 128, offset: 1600)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !351, file: !44, line: 675, baseType: !156, size: 128, offset: 1728)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !351, file: !44, line: 676, baseType: !156, size: 128, offset: 1856)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !351, file: !44, line: 677, baseType: !156, size: 128, offset: 1984)
!2769 = !DIDerivedType(tag: DW_TAG_member, scope: !351, file: !44, line: 678, baseType: !2770, size: 128, offset: 2112)
!2770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !351, file: !44, line: 678, size: 128, elements: !2771)
!2771 = !{!2772, !2773}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2770, file: !44, line: 679, baseType: !556, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2770, file: !44, line: 680, baseType: !288, size: 128, align: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !351, file: !44, line: 682, baseType: !694, size: 64, offset: 2240)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !351, file: !44, line: 683, baseType: !694, size: 64, offset: 2304)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !351, file: !44, line: 684, baseType: !668, size: 32, offset: 2368)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !351, file: !44, line: 685, baseType: !668, size: 32, offset: 2400)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !351, file: !44, line: 686, baseType: !668, size: 32, offset: 2432)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !351, file: !44, line: 688, baseType: !668, size: 32, offset: 2464)
!2780 = !DIDerivedType(tag: DW_TAG_member, scope: !351, file: !44, line: 690, baseType: !2781, size: 64, offset: 2496)
!2781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !351, file: !44, line: 690, size: 64, elements: !2782)
!2782 = !{!2783, !3006}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2781, file: !44, line: 691, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2786)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2787)
!2787 = !{!2788, !2789, !2793, !2798, !2802, !2803, !2804, !2808, !2821, !2822, !2830, !2834, !2835, !2839, !2840, !2844, !2849, !2850, !2854, !2858, !2966, !2970, !2971, !2975, !2976, !2980, !2984, !2989, !2993, !2997, !3001, !3005}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2786, file: !44, line: 1823, baseType: !114, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2786, file: !44, line: 1824, baseType: !2790, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!452, !275, !452, !120}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2786, file: !44, line: 1825, baseType: !2794, size: 64, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!142, !275, !210, !245, !2797}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2786, file: !44, line: 1826, baseType: !2799, size: 64, offset: 192)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!142, !275, !133, !245, !2797}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2786, file: !44, line: 1827, baseType: !765, size: 64, offset: 256)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2786, file: !44, line: 1828, baseType: !765, size: 64, offset: 320)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2786, file: !44, line: 1829, baseType: !2805, size: 64, offset: 384)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!120, !768, !411}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2786, file: !44, line: 1830, baseType: !2809, size: 64, offset: 448)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!120, !275, !2812}
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2814)
!2814 = !{!2815, !2820}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2813, file: !44, line: 1777, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2817)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!120, !2812, !133, !120, !452, !342, !7}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2813, file: !44, line: 1778, baseType: !452, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2786, file: !44, line: 1831, baseType: !2809, size: 64, offset: 512)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2786, file: !44, line: 1832, baseType: !2823, size: 64, offset: 576)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!2826, !275, !2828}
!2826 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2827, line: 52, baseType: !7)
!2827 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !540, line: 27, flags: DIFlagFwdDecl)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2786, file: !44, line: 1833, baseType: !2831, size: 64, offset: 640)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!146, !275, !7, !117}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2786, file: !44, line: 1834, baseType: !2831, size: 64, offset: 704)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2786, file: !44, line: 1835, baseType: !2836, size: 64, offset: 768)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!120, !275, !900}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2786, file: !44, line: 1836, baseType: !117, size: 64, offset: 832)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2786, file: !44, line: 1837, baseType: !2841, size: 64, offset: 896)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!120, !350, !275}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2786, file: !44, line: 1838, baseType: !2845, size: 64, offset: 960)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!120, !275, !2848}
!2848 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !108)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2786, file: !44, line: 1839, baseType: !2841, size: 64, offset: 1024)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2786, file: !44, line: 1840, baseType: !2851, size: 64, offset: 1088)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!120, !275, !452, !452, !120}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2786, file: !44, line: 1841, baseType: !2855, size: 64, offset: 1152)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!120, !120, !275, !120}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2786, file: !44, line: 1842, baseType: !2859, size: 64, offset: 1216)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!120, !275, !120, !2862}
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2864)
!2864 = !{!2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2896, !2897, !2898, !2911, !2942}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2863, file: !44, line: 1063, baseType: !2862, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2863, file: !44, line: 1064, baseType: !156, size: 128, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2863, file: !44, line: 1065, baseType: !560, size: 128, offset: 192)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2863, file: !44, line: 1066, baseType: !156, size: 128, offset: 320)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2863, file: !44, line: 1069, baseType: !156, size: 128, offset: 448)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2863, file: !44, line: 1072, baseType: !2848, size: 64, offset: 576)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2863, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2863, file: !44, line: 1074, baseType: !348, size: 8, offset: 672)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2863, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2863, file: !44, line: 1076, baseType: !120, size: 32, offset: 736)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2863, file: !44, line: 1077, baseType: !1400, size: 128, offset: 768)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2863, file: !44, line: 1078, baseType: !275, size: 64, offset: 896)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2863, file: !44, line: 1079, baseType: !452, size: 64, offset: 960)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2863, file: !44, line: 1080, baseType: !452, size: 64, offset: 1024)
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
!2889 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !181, line: 33, baseType: !2890)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !181, line: 31, elements: !183)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2881, file: !44, line: 1316, baseType: !120, size: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2881, file: !44, line: 1317, baseType: !120, size: 32, offset: 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2881, file: !44, line: 1318, baseType: !2880, size: 64, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2881, file: !44, line: 1319, baseType: !275, size: 64, offset: 128)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2881, file: !44, line: 1320, baseType: !288, size: 128, align: 64, offset: 192)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2863, file: !44, line: 1084, baseType: !117, size: 64, offset: 1152)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2863, file: !44, line: 1085, baseType: !117, size: 64, offset: 1216)
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
!2928 = !{!120, !2862, !120}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2914, file: !44, line: 1021, baseType: !2930, size: 64, offset: 256)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!411, !2862}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2914, file: !44, line: 1022, baseType: !2934, size: 64, offset: 320)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!120, !2862, !120, !159}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2914, file: !44, line: 1023, baseType: !2938, size: 64, offset: 384)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{null, !2862, !742}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2914, file: !44, line: 1024, baseType: !2930, size: 64, offset: 448)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2863, file: !44, line: 1097, baseType: !2943, size: 256, offset: 1408)
!2943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2863, file: !44, line: 1089, size: 256, elements: !2944)
!2944 = !{!2945, !2954, !2960}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2943, file: !44, line: 1090, baseType: !2946, size: 256)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2947, line: 10, size: 256, elements: !2948)
!2947 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2948 = !{!2949, !2950, !2953}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2946, file: !2947, line: 11, baseType: !338, size: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2946, file: !2947, line: 12, baseType: !2951, size: 64, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2947, line: 5, flags: DIFlagFwdDecl)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2946, file: !2947, line: 13, baseType: !156, size: 128, offset: 128)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2943, file: !44, line: 1091, baseType: !2955, size: 64)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2947, line: 17, size: 64, elements: !2956)
!2956 = !{!2957}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2955, file: !2947, line: 18, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2947, line: 16, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2943, file: !44, line: 1096, baseType: !2961, size: 192)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2943, file: !44, line: 1092, size: 192, elements: !2962)
!2962 = !{!2963, !2964, !2965}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2961, file: !44, line: 1093, baseType: !156, size: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2961, file: !44, line: 1094, baseType: !120, size: 32, offset: 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2961, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2786, file: !44, line: 1843, baseType: !2967, size: 64, offset: 1280)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!142, !275, !642, !120, !245, !2797, !120}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2786, file: !44, line: 1844, baseType: !1020, size: 64, offset: 1344)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2786, file: !44, line: 1845, baseType: !2972, size: 64, offset: 1408)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!120, !120}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2786, file: !44, line: 1846, baseType: !2859, size: 64, offset: 1472)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2786, file: !44, line: 1847, baseType: !2977, size: 64, offset: 1536)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!142, !2019, !275, !2797, !245, !7}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2786, file: !44, line: 1848, baseType: !2981, size: 64, offset: 1600)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!142, !275, !2797, !2019, !245, !7}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2786, file: !44, line: 1849, baseType: !2985, size: 64, offset: 1664)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!120, !275, !146, !2988, !742}
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2786, file: !44, line: 1850, baseType: !2990, size: 64, offset: 1728)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!146, !275, !120, !452, !452}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2786, file: !44, line: 1852, baseType: !2994, size: 64, offset: 1792)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{null, !632, !275}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2786, file: !44, line: 1856, baseType: !2998, size: 64, offset: 1856)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!142, !275, !452, !275, !452, !245, !7}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2786, file: !44, line: 1858, baseType: !3002, size: 64, offset: 1920)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!452, !275, !452, !275, !452, !452, !7}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2786, file: !44, line: 1861, baseType: !2851, size: 64, offset: 1984)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2781, file: !44, line: 692, baseType: !585, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !351, file: !44, line: 694, baseType: !3008, size: 64, offset: 2560)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3010)
!3010 = !{!3011, !3012, !3013, !3014}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3009, file: !44, line: 1101, baseType: !169)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3009, file: !44, line: 1102, baseType: !156, size: 128)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3009, file: !44, line: 1103, baseType: !156, size: 128, offset: 128)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3009, file: !44, line: 1104, baseType: !156, size: 128, offset: 256)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !351, file: !44, line: 695, baseType: !656, size: 1216, align: 64, offset: 2624)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !351, file: !44, line: 696, baseType: !156, size: 128, offset: 3840)
!3017 = !DIDerivedType(tag: DW_TAG_member, scope: !351, file: !44, line: 697, baseType: !3018, size: 64, offset: 3968)
!3018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !351, file: !44, line: 697, size: 64, elements: !3019)
!3019 = !{!3020, !3021, !3022, !3025, !3026}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3018, file: !44, line: 698, baseType: !2019, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3018, file: !44, line: 699, baseType: !2536, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3018, file: !44, line: 700, baseType: !3023, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3018, file: !44, line: 701, baseType: !210, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3018, file: !44, line: 702, baseType: !7, size: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !351, file: !44, line: 705, baseType: !339, size: 32, offset: 4032)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !351, file: !44, line: 708, baseType: !339, size: 32, offset: 4064)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !351, file: !44, line: 709, baseType: !2618, size: 64, offset: 4096)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !351, file: !44, line: 720, baseType: !108, size: 64, offset: 4160)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !306, file: !303, line: 98, baseType: !3032, size: 256, offset: 448)
!3032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 256, elements: !2151)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !306, file: !303, line: 101, baseType: !3034, size: 32, offset: 704)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3035, line: 25, size: 32, elements: !3036)
!3035 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3036 = !{!3037}
!3037 = !DIDerivedType(tag: DW_TAG_member, scope: !3034, file: !3035, line: 26, baseType: !3038, size: 32)
!3038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3034, file: !3035, line: 26, size: 32, elements: !3039)
!3039 = !{!3040}
!3040 = !DIDerivedType(tag: DW_TAG_member, scope: !3038, file: !3035, line: 30, baseType: !3041, size: 32)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3038, file: !3035, line: 30, size: 32, elements: !3042)
!3042 = !{!3043, !3044}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3041, file: !3035, line: 31, baseType: !169)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3041, file: !3035, line: 32, baseType: !120, size: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !306, file: !303, line: 102, baseType: !2635, size: 64, offset: 768)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !306, file: !303, line: 103, baseType: !520, size: 64, offset: 832)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !306, file: !303, line: 104, baseType: !117, size: 64, offset: 896)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !306, file: !303, line: 105, baseType: !108, size: 64, offset: 960)
!3049 = !DIDerivedType(tag: DW_TAG_member, scope: !306, file: !303, line: 107, baseType: !3050, size: 128, offset: 1024)
!3050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !306, file: !303, line: 107, size: 128, elements: !3051)
!3051 = !{!3052, !3053}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3050, file: !303, line: 108, baseType: !156, size: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3050, file: !303, line: 109, baseType: !3054, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !306, file: !303, line: 111, baseType: !156, size: 128, offset: 1152)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !306, file: !303, line: 112, baseType: !156, size: 128, offset: 1280)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !306, file: !303, line: 120, baseType: !3058, size: 128, offset: 1408)
!3058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !306, file: !303, line: 116, size: 128, elements: !3059)
!3059 = !{!3060, !3061, !3062}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3058, file: !303, line: 117, baseType: !560, size: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3058, file: !303, line: 118, baseType: !320, size: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3058, file: !303, line: 119, baseType: !288, size: 128, align: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !276, file: !44, line: 922, baseType: !350, size: 64, offset: 256)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !276, file: !44, line: 923, baseType: !2784, size: 64, offset: 320)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !276, file: !44, line: 929, baseType: !169, offset: 384)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !276, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !276, file: !44, line: 931, baseType: !692, size: 64, offset: 448)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !276, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !276, file: !44, line: 933, baseType: !2631, size: 32, offset: 544)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !276, file: !44, line: 934, baseType: !1092, size: 192, offset: 576)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !276, file: !44, line: 935, baseType: !452, size: 64, offset: 768)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !276, file: !44, line: 936, baseType: !3073, size: 192, offset: 832)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3074)
!3074 = !{!3075, !3076, !3077, !3078, !3079, !3080}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3073, file: !44, line: 886, baseType: !2884)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3073, file: !44, line: 887, baseType: !1390, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3073, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3073, file: !44, line: 889, baseType: !356, size: 32, offset: 96)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3073, file: !44, line: 889, baseType: !356, size: 32, offset: 128)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3073, file: !44, line: 890, baseType: !120, size: 32, offset: 160)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !276, file: !44, line: 937, baseType: !1466, size: 64, offset: 1024)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !276, file: !44, line: 938, baseType: !3083, size: 256, offset: 1088)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3088, !3089, !3090}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3083, file: !44, line: 897, baseType: !117, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3083, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3083, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3083, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3083, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3083, file: !44, line: 904, baseType: !452, size: 64, offset: 192)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !276, file: !44, line: 940, baseType: !342, size: 64, offset: 1344)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !276, file: !44, line: 945, baseType: !108, size: 64, offset: 1408)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !276, file: !44, line: 949, baseType: !156, size: 128, offset: 1472)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !276, file: !44, line: 950, baseType: !156, size: 128, offset: 1600)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !276, file: !44, line: 952, baseType: !655, size: 64, offset: 1728)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !276, file: !44, line: 953, baseType: !828, size: 32, offset: 1792)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !276, file: !44, line: 954, baseType: !828, size: 32, offset: 1824)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !266, file: !130, line: 174, baseType: !272, size: 64, offset: 320)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !266, file: !130, line: 176, baseType: !3100, size: 64, offset: 384)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!120, !275, !162, !265, !900}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !254, file: !130, line: 90, baseType: !249, size: 64, offset: 192)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !254, file: !130, line: 91, baseType: !3105, size: 64, offset: 256)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !225, file: !152, line: 143, baseType: !3107, size: 64, offset: 256)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!3110, !162}
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3112)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3113)
!3113 = !{!3114, !3115, !3119, !3123, !3129, !3133}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3112, file: !61, line: 40, baseType: !60, size: 32)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3112, file: !61, line: 41, baseType: !3116, size: 64, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!411}
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
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3112, file: !61, line: 45, baseType: !389, size: 64, offset: 320)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !225, file: !152, line: 144, baseType: !3135, size: 64, offset: 320)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!2048, !162}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !225, file: !152, line: 145, baseType: !3139, size: 64, offset: 384)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{null, !162, !3142, !3143}
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !151, file: !152, line: 70, baseType: !3145, size: 64, offset: 384)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !540, line: 123, size: 1024, elements: !3147)
!3147 = !{!3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3276, !3277, !3278, !3279, !3280}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3146, file: !540, line: 124, baseType: !668, size: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3146, file: !540, line: 125, baseType: !668, size: 32, offset: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3146, file: !540, line: 135, baseType: !3145, size: 64, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3146, file: !540, line: 136, baseType: !133, size: 64, offset: 128)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3146, file: !540, line: 138, baseType: !681, size: 192, align: 64, offset: 192)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3146, file: !540, line: 140, baseType: !2048, size: 64, offset: 384)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3146, file: !540, line: 141, baseType: !7, size: 32, offset: 448)
!3155 = !DIDerivedType(tag: DW_TAG_member, scope: !3146, file: !540, line: 142, baseType: !3156, size: 256, offset: 512)
!3156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3146, file: !540, line: 142, size: 256, elements: !3157)
!3157 = !{!3158, !3204, !3208}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3156, file: !540, line: 143, baseType: !3159, size: 192)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !540, line: 91, size: 192, elements: !3160)
!3160 = !{!3161, !3162, !3163}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3159, file: !540, line: 92, baseType: !117, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3159, file: !540, line: 94, baseType: !677, size: 64, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3159, file: !540, line: 100, baseType: !3164, size: 64, offset: 128)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !540, line: 180, size: 704, elements: !3166)
!3166 = !{!3167, !3168, !3169, !3176, !3177, !3178, !3202, !3203}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3165, file: !540, line: 182, baseType: !3145, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3165, file: !540, line: 183, baseType: !7, size: 32, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3165, file: !540, line: 186, baseType: !3170, size: 192, offset: 128)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3171, line: 19, size: 192, elements: !3172)
!3171 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3172 = !{!3173, !3174, !3175}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3170, file: !3171, line: 20, baseType: !660, size: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3170, file: !3171, line: 21, baseType: !7, size: 32, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3170, file: !3171, line: 22, baseType: !7, size: 32, offset: 160)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3165, file: !540, line: 187, baseType: !338, size: 32, offset: 320)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3165, file: !540, line: 188, baseType: !338, size: 32, offset: 352)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3165, file: !540, line: 189, baseType: !3179, size: 64, offset: 384)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !540, line: 168, size: 320, elements: !3181)
!3181 = !{!3182, !3186, !3190, !3194, !3198}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3180, file: !540, line: 169, baseType: !3183, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!120, !632, !3164}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3180, file: !540, line: 171, baseType: !3187, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!120, !3145, !133, !137}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3180, file: !540, line: 173, baseType: !3191, size: 64, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!120, !3145}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3180, file: !540, line: 174, baseType: !3195, size: 64, offset: 192)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!120, !3145, !3145, !133}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3180, file: !540, line: 176, baseType: !3199, size: 64, offset: 256)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!120, !632, !3145, !3164}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3165, file: !540, line: 192, baseType: !156, size: 128, offset: 448)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3165, file: !540, line: 194, baseType: !1400, size: 128, offset: 576)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3156, file: !540, line: 144, baseType: !3205, size: 64)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !540, line: 103, size: 64, elements: !3206)
!3206 = !{!3207}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3205, file: !540, line: 104, baseType: !3145, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3156, file: !540, line: 145, baseType: !3209, size: 256)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !540, line: 107, size: 256, elements: !3210)
!3210 = !{!3211, !3271, !3274, !3275}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3209, file: !540, line: 108, baseType: !3212, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3214)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !540, line: 217, size: 768, elements: !3215)
!3215 = !{!3216, !3236, !3240, !3244, !3248, !3252, !3256, !3260, !3261, !3262, !3263, !3267}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3214, file: !540, line: 222, baseType: !3217, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!120, !3220}
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !540, line: 197, size: 1088, elements: !3222)
!3222 = !{!3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3221, file: !540, line: 199, baseType: !3145, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3221, file: !540, line: 200, baseType: !275, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3221, file: !540, line: 201, baseType: !632, size: 64, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3221, file: !540, line: 202, baseType: !108, size: 64, offset: 192)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3221, file: !540, line: 205, baseType: !1092, size: 192, offset: 256)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3221, file: !540, line: 206, baseType: !1092, size: 192, offset: 448)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3221, file: !540, line: 207, baseType: !120, size: 32, offset: 640)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3221, file: !540, line: 208, baseType: !156, size: 128, offset: 704)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3221, file: !540, line: 209, baseType: !210, size: 64, offset: 832)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3221, file: !540, line: 211, baseType: !245, size: 64, offset: 896)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3221, file: !540, line: 212, baseType: !411, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3221, file: !540, line: 213, baseType: !411, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3221, file: !540, line: 214, baseType: !928, size: 64, offset: 1024)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3214, file: !540, line: 223, baseType: !3237, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{null, !3220}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3214, file: !540, line: 236, baseType: !3241, size: 64, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!120, !632, !108}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3214, file: !540, line: 238, baseType: !3245, size: 64, offset: 192)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!108, !632, !2797}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3214, file: !540, line: 239, baseType: !3249, size: 64, offset: 256)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!108, !632, !108, !2797}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3214, file: !540, line: 240, baseType: !3253, size: 64, offset: 320)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{null, !632, !108}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3214, file: !540, line: 242, baseType: !3257, size: 64, offset: 384)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!142, !3220, !210, !245, !452}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3214, file: !540, line: 252, baseType: !245, size: 64, offset: 448)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3214, file: !540, line: 259, baseType: !411, size: 8, offset: 512)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3214, file: !540, line: 260, baseType: !3257, size: 64, offset: 576)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3214, file: !540, line: 263, baseType: !3264, size: 64, offset: 640)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!2826, !3220, !2828}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3214, file: !540, line: 266, baseType: !3268, size: 64, offset: 704)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!120, !3220, !900}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3209, file: !540, line: 109, baseType: !3272, size: 64, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !540, line: 31, flags: DIFlagFwdDecl)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3209, file: !540, line: 110, baseType: !452, size: 64, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3209, file: !540, line: 111, baseType: !3145, size: 64, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3146, file: !540, line: 148, baseType: !108, size: 64, offset: 768)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3146, file: !540, line: 154, baseType: !342, size: 64, offset: 832)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3146, file: !540, line: 156, baseType: !113, size: 16, offset: 896)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3146, file: !540, line: 157, baseType: !137, size: 16, offset: 912)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3146, file: !540, line: 158, baseType: !3281, size: 64, offset: 960)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !540, line: 32, flags: DIFlagFwdDecl)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !151, file: !152, line: 71, baseType: !3284, size: 32, offset: 448)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3285, line: 19, size: 32, elements: !3286)
!3285 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3286 = !{!3287}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3284, file: !3285, line: 20, baseType: !1149, size: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !151, file: !152, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !151, file: !152, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !151, file: !152, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !151, file: !152, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !151, file: !152, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !148, file: !73, line: 463, baseType: !147, size: 64, offset: 512)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !148, file: !73, line: 465, baseType: !3295, size: 64, offset: 576)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !148, file: !73, line: 467, baseType: !133, size: 64, offset: 640)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !148, file: !73, line: 468, baseType: !3299, size: 64, offset: 704)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3301)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3302)
!3302 = !{!3303, !3304, !3305, !3309, !3314, !3318}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3301, file: !73, line: 88, baseType: !133, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3301, file: !73, line: 89, baseType: !251, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3301, file: !73, line: 90, baseType: !3306, size: 64, offset: 128)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!120, !147, !205}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3301, file: !73, line: 91, baseType: !3310, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!210, !147, !3313, !3142, !3143}
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3301, file: !73, line: 93, baseType: !3315, size: 64, offset: 256)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{null, !147}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3301, file: !73, line: 95, baseType: !3319, size: 64, offset: 320)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3321)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3322)
!3322 = !{!3323, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3321, file: !80, line: 279, baseType: !3324, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!120, !147}
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
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !148, file: !73, line: 470, baseType: !3350, size: 64, offset: 768)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3352, line: 82, size: 1408, elements: !3353)
!3352 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3353 = !{!3354, !3355, !3356, !3357, !3358, !3359, !3360, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3435, !3438, !3439}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3351, file: !3352, line: 83, baseType: !133, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3351, file: !3352, line: 84, baseType: !133, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3351, file: !3352, line: 85, baseType: !147, size: 64, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3351, file: !3352, line: 86, baseType: !251, size: 64, offset: 192)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3351, file: !3352, line: 87, baseType: !251, size: 64, offset: 256)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3351, file: !3352, line: 88, baseType: !251, size: 64, offset: 320)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3351, file: !3352, line: 90, baseType: !3361, size: 64, offset: 384)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!120, !147, !3364}
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3366)
!3366 = !{!3367, !3368, !3369, !3370, !3371, !3372, !3373, !3386, !3399, !3400, !3401, !3402, !3403, !3411, !3412, !3413, !3414, !3415, !3416}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3365, file: !67, line: 96, baseType: !133, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3365, file: !67, line: 97, baseType: !3350, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3365, file: !67, line: 99, baseType: !114, size: 64, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3365, file: !67, line: 100, baseType: !133, size: 64, offset: 192)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3365, file: !67, line: 102, baseType: !411, size: 8, offset: 256)
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
!3382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 1024, elements: !3383)
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
!3396 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3377, line: 14, baseType: !117)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3389, file: !3377, line: 213, baseType: !339, size: 32, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3389, file: !3377, line: 214, baseType: !339, size: 32, offset: 224)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3365, file: !67, line: 108, baseType: !3324, size: 64, offset: 448)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3365, file: !67, line: 109, baseType: !3315, size: 64, offset: 512)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3365, file: !67, line: 110, baseType: !3324, size: 64, offset: 576)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3365, file: !67, line: 111, baseType: !3315, size: 64, offset: 640)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3365, file: !67, line: 112, baseType: !3404, size: 64, offset: 704)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!120, !147, !3407}
!3407 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3408)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3409)
!3409 = !{!3410}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3408, file: !80, line: 51, baseType: !120, size: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3365, file: !67, line: 113, baseType: !3324, size: 64, offset: 768)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3365, file: !67, line: 114, baseType: !251, size: 64, offset: 832)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3365, file: !67, line: 115, baseType: !251, size: 64, offset: 896)
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
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3351, file: !3352, line: 112, baseType: !566, offset: 1344)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3351, file: !3352, line: 114, baseType: !411, size: 8, offset: 1344)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !148, file: !73, line: 471, baseType: !3364, size: 64, offset: 832)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !148, file: !73, line: 473, baseType: !108, size: 64, offset: 896)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !148, file: !73, line: 475, baseType: !108, size: 64, offset: 960)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !148, file: !73, line: 480, baseType: !1092, size: 192, offset: 1024)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !148, file: !73, line: 484, baseType: !3445, size: 576, offset: 1216)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3446)
!3446 = !{!3447, !3448, !3449, !3450, !3451, !3452}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3445, file: !73, line: 362, baseType: !156, size: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3445, file: !73, line: 363, baseType: !156, size: 128, offset: 128)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3445, file: !73, line: 364, baseType: !156, size: 128, offset: 256)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3445, file: !73, line: 365, baseType: !156, size: 128, offset: 384)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3445, file: !73, line: 366, baseType: !411, size: 8, offset: 512)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3445, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !148, file: !73, line: 485, baseType: !3454, size: 2304, offset: 1792)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3455)
!3455 = !{!3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3551, !3555}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3454, file: !80, line: 566, baseType: !3407, size: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3454, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3454, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3454, file: !80, line: 569, baseType: !411, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3454, file: !80, line: 570, baseType: !411, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3454, file: !80, line: 571, baseType: !411, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3454, file: !80, line: 572, baseType: !411, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3454, file: !80, line: 573, baseType: !411, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3454, file: !80, line: 574, baseType: !411, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3454, file: !80, line: 575, baseType: !411, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3454, file: !80, line: 576, baseType: !411, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3454, file: !80, line: 577, baseType: !338, size: 32, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3454, file: !80, line: 578, baseType: !169, offset: 96)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3454, file: !80, line: 580, baseType: !156, size: 128, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3454, file: !80, line: 581, baseType: !1421, size: 192, offset: 256)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3454, file: !80, line: 582, baseType: !3472, size: 64, offset: 448)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3474, line: 43, size: 1472, elements: !3475)
!3474 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3475 = !{!3476, !3477, !3478, !3479, !3480, !3483, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3473, file: !3474, line: 44, baseType: !133, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3473, file: !3474, line: 45, baseType: !120, size: 32, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3473, file: !3474, line: 46, baseType: !156, size: 128, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3473, file: !3474, line: 47, baseType: !169, offset: 256)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3473, file: !3474, line: 48, baseType: !3481, size: 64, offset: 256)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3473, file: !3474, line: 49, baseType: !3484, size: 320, offset: 320)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3485, line: 11, size: 320, elements: !3486)
!3485 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3486 = !{!3487, !3488, !3489, !3494}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3484, file: !3485, line: 16, baseType: !560, size: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3484, file: !3485, line: 17, baseType: !117, size: 64, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3484, file: !3485, line: 18, baseType: !3490, size: 64, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{null, !3493}
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3484, file: !3485, line: 19, baseType: !338, size: 32, offset: 256)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3473, file: !3474, line: 50, baseType: !117, size: 64, offset: 640)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3473, file: !3474, line: 51, baseType: !1219, size: 64, offset: 704)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3473, file: !3474, line: 52, baseType: !1219, size: 64, offset: 768)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3473, file: !3474, line: 53, baseType: !1219, size: 64, offset: 832)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3473, file: !3474, line: 54, baseType: !1219, size: 64, offset: 896)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3473, file: !3474, line: 55, baseType: !1219, size: 64, offset: 960)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3473, file: !3474, line: 56, baseType: !117, size: 64, offset: 1024)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3473, file: !3474, line: 57, baseType: !117, size: 64, offset: 1088)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3473, file: !3474, line: 58, baseType: !117, size: 64, offset: 1152)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3473, file: !3474, line: 59, baseType: !117, size: 64, offset: 1216)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3473, file: !3474, line: 60, baseType: !117, size: 64, offset: 1280)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3473, file: !3474, line: 61, baseType: !147, size: 64, offset: 1344)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3473, file: !3474, line: 62, baseType: !411, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3473, file: !3474, line: 63, baseType: !411, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3454, file: !80, line: 583, baseType: !411, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3454, file: !80, line: 584, baseType: !411, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3454, file: !80, line: 585, baseType: !411, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3454, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3454, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3454, file: !80, line: 592, baseType: !1211, size: 512, offset: 576)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3454, file: !80, line: 593, baseType: !342, size: 64, offset: 1088)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3454, file: !80, line: 594, baseType: !1878, size: 256, offset: 1152)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3454, file: !80, line: 595, baseType: !1400, size: 128, offset: 1408)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3454, file: !80, line: 596, baseType: !3481, size: 64, offset: 1536)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3454, file: !80, line: 597, baseType: !668, size: 32, offset: 1600)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3454, file: !80, line: 598, baseType: !668, size: 32, offset: 1632)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3454, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3454, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3454, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3454, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3454, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3454, file: !80, line: 604, baseType: !411, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3454, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3454, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3454, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3454, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3454, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3454, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3454, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3454, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3454, file: !80, line: 613, baseType: !120, size: 32, offset: 1792)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3454, file: !80, line: 614, baseType: !120, size: 32, offset: 1824)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3454, file: !80, line: 615, baseType: !342, size: 64, offset: 1856)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3454, file: !80, line: 616, baseType: !342, size: 64, offset: 1920)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3454, file: !80, line: 617, baseType: !342, size: 64, offset: 1984)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3454, file: !80, line: 618, baseType: !342, size: 64, offset: 2048)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3454, file: !80, line: 620, baseType: !3542, size: 64, offset: 2112)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3544)
!3544 = !{!3545, !3546, !3547, !3548}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3543, file: !80, line: 537, baseType: !169)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3543, file: !80, line: 538, baseType: !7, size: 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3543, file: !80, line: 540, baseType: !156, size: 128, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3543, file: !80, line: 543, baseType: !3549, size: 64, offset: 192)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3454, file: !80, line: 621, baseType: !3552, size: 64, offset: 2176)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{null, !147, !1363}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3454, file: !80, line: 622, baseType: !3556, size: 64, offset: 2240)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !148, file: !73, line: 486, baseType: !3559, size: 64, offset: 4096)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3561)
!3561 = !{!3562, !3563, !3564, !3568, !3569, !3570}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3560, file: !80, line: 643, baseType: !3321, size: 1472)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3560, file: !80, line: 644, baseType: !3324, size: 64, offset: 1472)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3560, file: !80, line: 645, baseType: !3565, size: 64, offset: 1536)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{null, !147, !411}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3560, file: !80, line: 646, baseType: !3324, size: 64, offset: 1600)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3560, file: !80, line: 647, baseType: !3315, size: 64, offset: 1664)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3560, file: !80, line: 648, baseType: !3315, size: 64, offset: 1728)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !148, file: !73, line: 493, baseType: !3572, size: 64, offset: 4160)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3574)
!3574 = !{!3575, !3576, !3577, !3750, !3751, !3752, !3753, !3754, !3755, !3758, !3759, !3760, !3761, !3762, !3763, !3764}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3573, file: !94, line: 163, baseType: !156, size: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3573, file: !94, line: 164, baseType: !133, size: 64, offset: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3573, file: !94, line: 165, baseType: !3578, size: 64, offset: 192)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3580)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3581)
!3581 = !{!3582, !3700, !3711, !3716, !3720, !3727, !3731, !3735, !3742, !3746}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3580, file: !94, line: 106, baseType: !3583, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!120, !3572, !3586, !93}
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3588, line: 51, size: 1344, elements: !3589)
!3588 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3589 = !{!3590, !3591, !3593, !3594, !3684, !3693, !3694, !3695, !3696, !3697, !3698, !3699}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3587, file: !3588, line: 52, baseType: !133, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3587, file: !3588, line: 53, baseType: !3592, size: 32, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3588, line: 28, baseType: !338)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3587, file: !3588, line: 54, baseType: !133, size: 64, offset: 128)
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
!3616 = !{!411, !3617}
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3595)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3603, file: !3596, line: 114, baseType: !3620, size: 64, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!2048, !3617, !3623}
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3603, file: !3596, line: 116, baseType: !3626, size: 64, offset: 256)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!411, !3617, !133}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3603, file: !3596, line: 118, baseType: !3630, size: 64, offset: 320)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!120, !3617, !133, !7, !108, !245}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3603, file: !3596, line: 123, baseType: !3634, size: 64, offset: 384)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!120, !3617, !133, !3637, !245}
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3603, file: !3596, line: 126, baseType: !3639, size: 64, offset: 448)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!133, !3617}
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
!3654 = !{!3599, !3617, !133}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3603, file: !3596, line: 135, baseType: !3656, size: 64, offset: 768)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!120, !3617, !133, !133, !7, !7, !3659}
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3596, line: 43, size: 640, elements: !3661)
!3661 = !{!3662, !3663, !3664}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3660, file: !3596, line: 44, baseType: !3599, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3660, file: !3596, line: 45, baseType: !7, size: 32, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3660, file: !3596, line: 46, baseType: !3665, size: 512, offset: 128)
!3665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 512, elements: !1249)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3603, file: !3596, line: 140, baseType: !3648, size: 64, offset: 832)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3603, file: !3596, line: 143, baseType: !3644, size: 64, offset: 896)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3603, file: !3596, line: 145, baseType: !3606, size: 64, offset: 960)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3603, file: !3596, line: 146, baseType: !3670, size: 64, offset: 1024)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!120, !3617, !3673}
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3596, line: 29, size: 128, elements: !3675)
!3675 = !{!3676, !3677, !3678}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3674, file: !3596, line: 30, baseType: !7, size: 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3674, file: !3596, line: 31, baseType: !7, size: 32, offset: 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3674, file: !3596, line: 32, baseType: !3617, size: 64, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3603, file: !3596, line: 148, baseType: !3680, size: 64, offset: 1088)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!120, !3617, !147}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3595, file: !3596, line: 20, baseType: !147, size: 64, offset: 128)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3587, file: !3588, line: 57, baseType: !3685, size: 64, offset: 384)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3588, line: 31, size: 704, elements: !3687)
!3687 = !{!3688, !3689, !3690, !3691, !3692}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3686, file: !3588, line: 32, baseType: !210, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3686, file: !3588, line: 33, baseType: !120, size: 32, offset: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3686, file: !3588, line: 34, baseType: !108, size: 64, offset: 128)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3686, file: !3588, line: 35, baseType: !3685, size: 64, offset: 192)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3686, file: !3588, line: 43, baseType: !266, size: 448, offset: 256)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3587, file: !3588, line: 58, baseType: !3685, size: 64, offset: 448)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3587, file: !3588, line: 59, baseType: !3586, size: 64, offset: 512)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3587, file: !3588, line: 60, baseType: !3586, size: 64, offset: 576)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3587, file: !3588, line: 61, baseType: !3586, size: 64, offset: 640)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3587, file: !3588, line: 63, baseType: !151, size: 512, offset: 704)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3587, file: !3588, line: 65, baseType: !117, size: 64, offset: 1216)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3587, file: !3588, line: 66, baseType: !108, size: 64, offset: 1280)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3580, file: !94, line: 108, baseType: !3701, size: 64, offset: 64)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!120, !3572, !3704, !93}
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3706)
!3706 = !{!3707, !3708, !3709}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3705, file: !94, line: 64, baseType: !3599, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3705, file: !94, line: 65, baseType: !120, size: 32, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3705, file: !94, line: 66, baseType: !3710, size: 512, offset: 96)
!3710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 512, elements: !1654)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3580, file: !94, line: 110, baseType: !3712, size: 64, offset: 128)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!120, !3572, !7, !3715}
!3715 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !119, line: 164, baseType: !117)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3580, file: !94, line: 111, baseType: !3717, size: 64, offset: 192)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{null, !3572, !7}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3580, file: !94, line: 112, baseType: !3721, size: 64, offset: 256)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!120, !3572, !3586, !3724, !7, !3726, !2604}
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3580, file: !94, line: 117, baseType: !3728, size: 64, offset: 320)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!120, !3572, !7, !7, !108}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3580, file: !94, line: 119, baseType: !3732, size: 64, offset: 384)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{null, !3572, !7, !7}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3580, file: !94, line: 121, baseType: !3736, size: 64, offset: 448)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!120, !3572, !3739, !411}
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
!3749 = !{!120, !3572, !3704, !3726, !2604}
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
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3573, file: !94, line: 185, baseType: !660, size: 128, offset: 768)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3573, file: !94, line: 186, baseType: !1092, size: 192, offset: 896)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3573, file: !94, line: 187, baseType: !3765, offset: 1088)
!3765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2252)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !148, file: !73, line: 499, baseType: !156, size: 128, offset: 4224)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !148, file: !73, line: 502, baseType: !3768, size: 64, offset: 4352)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3770)
!3770 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !148, file: !73, line: 504, baseType: !3772, size: 64, offset: 4416)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !148, file: !73, line: 505, baseType: !342, size: 64, offset: 4480)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !148, file: !73, line: 510, baseType: !342, size: 64, offset: 4544)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !148, file: !73, line: 511, baseType: !3776, size: 64, offset: 4608)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3778)
!3778 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !148, file: !73, line: 513, baseType: !3780, size: 64, offset: 4672)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3782)
!3782 = !{!3783, !3784}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3781, file: !73, line: 293, baseType: !7, size: 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3781, file: !73, line: 294, baseType: !117, size: 64, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !148, file: !73, line: 515, baseType: !156, size: 128, offset: 4736)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !148, file: !73, line: 526, baseType: !3787, offset: 4864)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3788, line: 5, elements: !183)
!3788 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !148, file: !73, line: 528, baseType: !3586, size: 64, offset: 4864)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !148, file: !73, line: 529, baseType: !3599, size: 64, offset: 4928)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !148, file: !73, line: 534, baseType: !434, size: 32, offset: 4992)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !148, file: !73, line: 535, baseType: !338, size: 32, offset: 5024)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !148, file: !73, line: 537, baseType: !169, offset: 5056)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !148, file: !73, line: 538, baseType: !156, size: 128, offset: 5056)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !148, file: !73, line: 540, baseType: !3796, size: 64, offset: 5184)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3798, line: 54, size: 960, elements: !3799)
!3798 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3799 = !{!3800, !3801, !3802, !3803, !3804, !3805, !3806, !3810, !3814, !3815, !3816, !3817, !3821, !3825, !3826}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3797, file: !3798, line: 55, baseType: !133, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3797, file: !3798, line: 56, baseType: !114, size: 64, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3797, file: !3798, line: 58, baseType: !251, size: 64, offset: 128)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3797, file: !3798, line: 59, baseType: !251, size: 64, offset: 192)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3797, file: !3798, line: 60, baseType: !162, size: 64, offset: 256)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3797, file: !3798, line: 62, baseType: !3306, size: 64, offset: 320)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3797, file: !3798, line: 63, baseType: !3807, size: 64, offset: 384)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!210, !147, !3313}
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
!3820 = !{!2048, !147}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3797, file: !3798, line: 73, baseType: !3822, size: 64, offset: 768)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{null, !147, !3142, !3143}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3797, file: !3798, line: 75, baseType: !3319, size: 64, offset: 832)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3797, file: !3798, line: 77, baseType: !3436, size: 64, offset: 896)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !148, file: !73, line: 541, baseType: !251, size: 64, offset: 5248)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !148, file: !73, line: 543, baseType: !3315, size: 64, offset: 5312)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !148, file: !73, line: 544, baseType: !3830, size: 64, offset: 5376)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !148, file: !73, line: 545, baseType: !3833, size: 64, offset: 5440)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !148, file: !73, line: 547, baseType: !411, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !148, file: !73, line: 548, baseType: !411, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !148, file: !73, line: 549, baseType: !411, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !148, file: !73, line: 550, baseType: !411, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !126, file: !73, line: 103, baseType: !3841, size: 64, offset: 192)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!142, !147, !3839, !133, !245}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !122, file: !123, line: 14, baseType: !120, size: 32, offset: 256)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!3847 = !{!3848, !3900, !3905, !3910, !3915, !3920, !3925, !3930, !3932, !3937, !3939, !3980, !0, !4246, !4248, !4251, !4272, !4275, !4277, !4282, !4284, !4288, !4290, !4292, !4294, !4296, !4298, !4300, !4302, !4304, !4306, !4308, !4310, !4312, !4314, !4316, !4319, !4324, !4326, !4328, !4330, !4332, !4334, !4336, !4338, !4340, !4342, !4344, !4346, !4348, !4350, !4352, !4354, !4356, !4358, !4360, !4362, !4364, !4366, !4368, !4370, !4372, !4374, !4376, !4378, !4380, !4382, !4384, !4386, !4388, !4390, !4392, !4394, !4396, !4398, !4400, !4402, !4404, !4406, !4408, !4410, !4412, !4414, !4416, !4418, !4420, !4422}
!3848 = !DIGlobalVariableExpression(var: !3849, expr: !DIExpression())
!3849 = distinct !DIGlobalVariable(name: "__param_force_addr", scope: !2, file: !3, line: 32, type: !3850, isLocal: true, isDefinition: true, align: 64)
!3850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3851)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3852, line: 69, size: 320, elements: !3853)
!3852 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!3853 = !{!3854, !3855, !3856, !3872, !3874, !3878, !3879}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3851, file: !3852, line: 70, baseType: !133, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3851, file: !3852, line: 71, baseType: !114, size: 64, offset: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3851, file: !3852, line: 72, baseType: !3857, size: 64, offset: 128)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3859)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3852, line: 47, size: 256, elements: !3860)
!3860 = !{!3861, !3862, !3867, !3871}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3859, file: !3852, line: 49, baseType: !7, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3859, file: !3852, line: 51, baseType: !3863, size: 64, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!120, !133, !3866}
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3859, file: !3852, line: 53, baseType: !3868, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!120, !210, !3866}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3859, file: !3852, line: 55, baseType: !389, size: 64, offset: 192)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3851, file: !3852, line: 73, baseType: !3873, size: 16, offset: 192)
!3873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3851, file: !3852, line: 74, baseType: !3875, size: 8, offset: 208)
!3875 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !110, line: 16, baseType: !3876)
!3876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !112, line: 20, baseType: !3877)
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
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3886, file: !3852, line: 88, baseType: !210, size: 64, offset: 64)
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
!3901 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_force_addrtype238", scope: !2, file: !3, line: 32, type: !3902, isLocal: true, isDefinition: true, align: 8)
!3902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 248, elements: !3903)
!3903 = !{!3904}
!3904 = !DISubrange(count: 31)
!3905 = !DIGlobalVariableExpression(var: !3906, expr: !DIExpression())
!3906 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_force_addr239", scope: !2, file: !3, line: 33, type: !3907, isLocal: true, isDefinition: true, align: 8)
!3907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 528, elements: !3908)
!3908 = !{!3909}
!3909 = !DISubrange(count: 66)
!3910 = !DIGlobalVariableExpression(var: !3911, expr: !DIExpression())
!3911 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author292", scope: !2, file: !3, line: 1059, type: !3912, isLocal: true, isDefinition: true, align: 8)
!3912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 432, elements: !3913)
!3913 = !{!3914}
!3914 = !DISubrange(count: 54)
!3915 = !DIGlobalVariableExpression(var: !3916, expr: !DIExpression())
!3916 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description293", scope: !2, file: !3, line: 1060, type: !3917, isLocal: true, isDefinition: true, align: 8)
!3917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 272, elements: !3918)
!3918 = !{!3919}
!3919 = !DISubrange(count: 34)
!3920 = !DIGlobalVariableExpression(var: !3921, expr: !DIExpression())
!3921 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file294", scope: !2, file: !3, line: 1061, type: !3922, isLocal: true, isDefinition: true, align: 8)
!3922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 264, elements: !3923)
!3923 = !{!3924}
!3924 = !DISubrange(count: 33)
!3925 = !DIGlobalVariableExpression(var: !3926, expr: !DIExpression())
!3926 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license295", scope: !2, file: !3, line: 1061, type: !3927, isLocal: true, isDefinition: true, align: 8)
!3927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 152, elements: !3928)
!3928 = !{!3929}
!3929 = !DISubrange(count: 19)
!3930 = !DIGlobalVariableExpression(var: !3931, expr: !DIExpression())
!3931 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sm_vt8231_init296", scope: !2, file: !3, line: 1063, type: !108, isLocal: true, isDefinition: true)
!3932 = !DIGlobalVariableExpression(var: !3933, expr: !DIExpression())
!3933 = distinct !DIGlobalVariable(name: "__exitcall_sm_vt8231_exit", scope: !2, file: !3, line: 1064, type: !3934, isLocal: true, isDefinition: true)
!3934 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3935, line: 117, baseType: !3936)
!3935 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!3937 = !DIGlobalVariableExpression(var: !3938, expr: !DIExpression())
!3938 = distinct !DIGlobalVariable(name: "force_addr", scope: !2, file: !3, line: 31, type: !120, isLocal: true, isDefinition: true)
!3939 = !DIGlobalVariableExpression(var: !3940, expr: !DIExpression())
!3940 = distinct !DIGlobalVariable(name: "pdev", scope: !2, file: !3, line: 35, type: !3941, isLocal: true, isDefinition: true)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !3943, line: 22, size: 6208, elements: !3944)
!3943 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!3944 = !{!3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3966, !3974, !3975, !3978}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3942, file: !3943, line: 23, baseType: !133, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3942, file: !3943, line: 24, baseType: !120, size: 32, offset: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !3942, file: !3943, line: 25, baseType: !411, size: 8, offset: 96)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3942, file: !3943, line: 26, baseType: !148, size: 5568, offset: 128)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !3942, file: !3943, line: 27, baseType: !342, size: 64, offset: 5696)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3942, file: !3943, line: 28, baseType: !3781, size: 128, offset: 5760)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !3942, file: !3943, line: 29, baseType: !338, size: 32, offset: 5888)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !3942, file: !3943, line: 30, baseType: !3953, size: 64, offset: 5952)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !3955, line: 20, size: 512, elements: !3956)
!3955 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!3956 = !{!3957, !3959, !3960, !3961, !3962, !3963, !3964, !3965}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3954, file: !3955, line: 21, baseType: !3958, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !119, line: 158, baseType: !2046)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3954, file: !3955, line: 22, baseType: !3958, size: 64, offset: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3954, file: !3955, line: 23, baseType: !133, size: 64, offset: 128)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3954, file: !3955, line: 24, baseType: !117, size: 64, offset: 192)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3954, file: !3955, line: 25, baseType: !117, size: 64, offset: 256)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3954, file: !3955, line: 26, baseType: !3953, size: 64, offset: 320)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3954, file: !3955, line: 26, baseType: !3953, size: 64, offset: 384)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3954, file: !3955, line: 26, baseType: !3953, size: 64, offset: 448)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !3942, file: !3943, line: 32, baseType: !3967, size: 64, offset: 6016)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3969)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !3377, line: 586, size: 256, elements: !3970)
!3970 = !{!3971, !3973}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3969, file: !3377, line: 587, baseType: !3972, size: 160)
!3972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 160, elements: !2122)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3969, file: !3377, line: 588, baseType: !3396, size: 64, offset: 192)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !3942, file: !3943, line: 33, baseType: !210, size: 64, offset: 6080)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !3942, file: !3943, line: 36, baseType: !3976, size: 64, offset: 6144)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !3943, line: 18, flags: DIFlagFwdDecl)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3942, file: !3943, line: 39, baseType: !3979, offset: 6208)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !3788, line: 8, elements: !183)
!3980 = !DIGlobalVariableExpression(var: !3981, expr: !DIExpression())
!3981 = distinct !DIGlobalVariable(name: "s_bridge", scope: !2, file: !3, line: 164, type: !3982, isLocal: true, isDefinition: true)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !3984, line: 309, size: 19264, elements: !3985)
!3984 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!3985 = !{!3986, !3987, !4049, !4050, !4051, !4052, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4144, !4145, !4146, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4220, !4221, !4222, !4223, !4224, !4225, !4227, !4228, !4229, !4232, !4239, !4240, !4241, !4242, !4243, !4244, !4245}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !3983, file: !3984, line: 310, baseType: !156, size: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3983, file: !3984, line: 311, baseType: !3988, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !3984, line: 605, size: 8064, elements: !3990)
!3990 = !{!3991, !3992, !3993, !3994, !3995, !3996, !3997, !3999, !4000, !4001, !4025, !4028, !4029, !4033, !4034, !4035, !4036, !4037, !4041, !4042, !4044, !4045, !4046, !4047, !4048}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3989, file: !3984, line: 606, baseType: !156, size: 128)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3989, file: !3984, line: 607, baseType: !3988, size: 64, offset: 128)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3989, file: !3984, line: 608, baseType: !156, size: 128, offset: 192)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !3989, file: !3984, line: 609, baseType: !156, size: 128, offset: 320)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3989, file: !3984, line: 610, baseType: !3982, size: 64, offset: 448)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !3989, file: !3984, line: 611, baseType: !156, size: 128, offset: 512)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !3989, file: !3984, line: 613, baseType: !3998, size: 256, offset: 640)
!3998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3953, size: 256, elements: !1074)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3989, file: !3984, line: 614, baseType: !156, size: 128, offset: 896)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !3989, file: !3984, line: 615, baseType: !3954, size: 512, offset: 1024)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3989, file: !3984, line: 617, baseType: !4002, size: 64, offset: 1536)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !3984, line: 731, size: 320, elements: !4004)
!4004 = !{!4005, !4009, !4013, !4017, !4021}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4003, file: !3984, line: 732, baseType: !4006, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!120, !3988}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4003, file: !3984, line: 733, baseType: !4010, size: 64, offset: 64)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{null, !3988}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4003, file: !3984, line: 734, baseType: !4014, size: 64, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!108, !3988, !7, !120}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4003, file: !3984, line: 735, baseType: !4018, size: 64, offset: 192)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!120, !3988, !7, !120, !120, !1334}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4003, file: !3984, line: 736, baseType: !4022, size: 64, offset: 256)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!120, !3988, !7, !120, !120, !338}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3989, file: !3984, line: 618, baseType: !4026, size: 64, offset: 1600)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !3984, line: 537, flags: DIFlagFwdDecl)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !3989, file: !3984, line: 619, baseType: !108, size: 64, offset: 1664)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !3989, file: !3984, line: 620, baseType: !4030, size: 64, offset: 1728)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4032, line: 123, flags: DIFlagFwdDecl)
!4032 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3989, file: !3984, line: 622, baseType: !348, size: 8, offset: 1792)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !3989, file: !3984, line: 623, baseType: !348, size: 8, offset: 1800)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !3989, file: !3984, line: 624, baseType: !348, size: 8, offset: 1808)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !3989, file: !3984, line: 625, baseType: !348, size: 8, offset: 1816)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3989, file: !3984, line: 630, baseType: !4038, size: 384, offset: 1824)
!4038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 384, elements: !4039)
!4039 = !{!4040}
!4040 = !DISubrange(count: 48)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !3989, file: !3984, line: 632, baseType: !113, size: 16, offset: 2208)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !3989, file: !3984, line: 633, baseType: !4043, size: 16, offset: 2224)
!4043 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !3984, line: 237, baseType: !113)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !3989, file: !3984, line: 634, baseType: !147, size: 64, offset: 2240)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3989, file: !3984, line: 635, baseType: !148, size: 5568, offset: 2304)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !3989, file: !3984, line: 636, baseType: !265, size: 64, offset: 7872)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !3989, file: !3984, line: 637, baseType: !265, size: 64, offset: 7936)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !3989, file: !3984, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !3983, file: !3984, line: 312, baseType: !3988, size: 64, offset: 192)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !3983, file: !3984, line: 314, baseType: !108, size: 64, offset: 256)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !3983, file: !3984, line: 315, baseType: !4030, size: 64, offset: 320)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !3983, file: !3984, line: 316, baseType: !4053, size: 64, offset: 384)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !3984, line: 69, size: 832, elements: !4055)
!4055 = !{!4056, !4057, !4058, !4061, !4062}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4054, file: !3984, line: 70, baseType: !3988, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4054, file: !3984, line: 71, baseType: !156, size: 128, offset: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4054, file: !3984, line: 72, baseType: !4059, size: 64, offset: 192)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !3984, line: 72, flags: DIFlagFwdDecl)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4054, file: !3984, line: 73, baseType: !348, size: 8, offset: 256)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4054, file: !3984, line: 74, baseType: !151, size: 512, offset: 320)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !3983, file: !3984, line: 318, baseType: !7, size: 32, offset: 448)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3983, file: !3984, line: 319, baseType: !113, size: 16, offset: 480)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3983, file: !3984, line: 320, baseType: !113, size: 16, offset: 496)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !3983, file: !3984, line: 321, baseType: !113, size: 16, offset: 512)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !3983, file: !3984, line: 322, baseType: !113, size: 16, offset: 528)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3983, file: !3984, line: 323, baseType: !7, size: 32, offset: 544)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !3983, file: !3984, line: 324, baseType: !1271, size: 8, offset: 576)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !3983, file: !3984, line: 325, baseType: !1271, size: 8, offset: 584)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !3983, file: !3984, line: 330, baseType: !1271, size: 8, offset: 592)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !3983, file: !3984, line: 331, baseType: !1271, size: 8, offset: 600)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !3983, file: !3984, line: 332, baseType: !1271, size: 8, offset: 608)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !3983, file: !3984, line: 333, baseType: !1271, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !3983, file: !3984, line: 334, baseType: !1271, size: 8, offset: 624)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !3983, file: !3984, line: 335, baseType: !1271, size: 8, offset: 632)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !3983, file: !3984, line: 336, baseType: !109, size: 16, offset: 640)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !3983, file: !3984, line: 337, baseType: !3726, size: 64, offset: 704)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3983, file: !3984, line: 339, baseType: !4080, size: 64, offset: 768)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !3984, line: 858, size: 2048, elements: !4082)
!4082 = !{!4083, !4084, !4085, !4097, !4101, !4105, !4109, !4113, !4114, !4118, !4137, !4138, !4139}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4081, file: !3984, line: 859, baseType: !156, size: 128)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4081, file: !3984, line: 860, baseType: !133, size: 64, offset: 128)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4081, file: !3984, line: 861, baseType: !4086, size: 64, offset: 192)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4088)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3377, line: 38, size: 256, elements: !4089)
!4089 = !{!4090, !4091, !4092, !4093, !4094, !4095, !4096}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4088, file: !3377, line: 39, baseType: !339, size: 32)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4088, file: !3377, line: 39, baseType: !339, size: 32, offset: 32)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4088, file: !3377, line: 40, baseType: !339, size: 32, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4088, file: !3377, line: 40, baseType: !339, size: 32, offset: 96)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4088, file: !3377, line: 41, baseType: !339, size: 32, offset: 128)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4088, file: !3377, line: 41, baseType: !339, size: 32, offset: 160)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4088, file: !3377, line: 42, baseType: !3396, size: 64, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4081, file: !3984, line: 862, baseType: !4098, size: 64, offset: 256)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!120, !3982, !4086}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4081, file: !3984, line: 863, baseType: !4102, size: 64, offset: 320)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{null, !3982}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4081, file: !3984, line: 864, baseType: !4106, size: 64, offset: 384)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!120, !3982, !3407}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4081, file: !3984, line: 865, baseType: !4110, size: 64, offset: 448)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!120, !3982}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4081, file: !3984, line: 866, baseType: !4102, size: 64, offset: 512)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4081, file: !3984, line: 867, baseType: !4115, size: 64, offset: 576)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!120, !3982, !120}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4081, file: !3984, line: 868, baseType: !4119, size: 64, offset: 640)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4121)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !3984, line: 795, size: 384, elements: !4122)
!4122 = !{!4123, !4129, !4133, !4134, !4135, !4136}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4121, file: !3984, line: 797, baseType: !4124, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!4127, !3982, !4128}
!4127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !3984, line: 772, baseType: !7)
!4128 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !3984, line: 180, baseType: !7)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4121, file: !3984, line: 801, baseType: !4130, size: 64, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!4127, !3982}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4121, file: !3984, line: 804, baseType: !4130, size: 64, offset: 128)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4121, file: !3984, line: 807, baseType: !4102, size: 64, offset: 192)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4121, file: !3984, line: 808, baseType: !4102, size: 64, offset: 256)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4121, file: !3984, line: 811, baseType: !4102, size: 64, offset: 320)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4081, file: !3984, line: 869, baseType: !251, size: 64, offset: 704)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4081, file: !3984, line: 870, baseType: !3365, size: 1152, offset: 768)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4081, file: !3984, line: 871, baseType: !4140, size: 128, offset: 1920)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !3984, line: 759, size: 128, elements: !4141)
!4141 = !{!4142, !4143}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4140, file: !3984, line: 760, baseType: !169)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4140, file: !3984, line: 761, baseType: !156, size: 128)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3983, file: !3984, line: 340, baseType: !342, size: 64, offset: 832)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3983, file: !3984, line: 346, baseType: !3781, size: 128, offset: 896)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !3983, file: !3984, line: 348, baseType: !4147, size: 32, offset: 1024)
!4147 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !3984, line: 155, baseType: !120)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !3983, file: !3984, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !3983, file: !3984, line: 352, baseType: !1271, size: 8, offset: 1064)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !3983, file: !3984, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !3983, file: !3984, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !3983, file: !3984, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !3983, file: !3984, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !3983, file: !3984, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !3983, file: !3984, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !3983, file: !3984, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !3983, file: !3984, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !3983, file: !3984, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !3983, file: !3984, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !3983, file: !3984, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !3983, file: !3984, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !3983, file: !3984, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !3983, file: !3984, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !3983, file: !3984, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !3983, file: !3984, line: 376, baseType: !7, size: 32, offset: 1120)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !3983, file: !3984, line: 377, baseType: !7, size: 32, offset: 1152)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !3983, file: !3984, line: 380, baseType: !4168, size: 64, offset: 1216)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !3984, line: 303, flags: DIFlagFwdDecl)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !3983, file: !3984, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !3983, file: !3984, line: 383, baseType: !120, size: 32, offset: 1312)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !3983, file: !3984, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !3983, file: !3984, line: 387, baseType: !4128, size: 32, offset: 1376)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3983, file: !3984, line: 388, baseType: !148, size: 5568, offset: 1408)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !3983, file: !3984, line: 390, baseType: !120, size: 32, offset: 6976)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3983, file: !3984, line: 396, baseType: !7, size: 32, offset: 7008)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !3983, file: !3984, line: 397, baseType: !4178, size: 8704, offset: 7040)
!4178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3954, size: 8704, elements: !4179)
!4179 = !{!4180}
!4180 = !DISubrange(count: 17)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !3983, file: !3984, line: 399, baseType: !411, size: 8, offset: 15744)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !3983, file: !3984, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !3983, file: !3984, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !3983, file: !3984, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !3983, file: !3984, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !3983, file: !3984, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !3983, file: !3984, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !3983, file: !3984, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !3983, file: !3984, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !3983, file: !3984, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !3983, file: !3984, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !3983, file: !3984, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !3983, file: !3984, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !3983, file: !3984, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !3983, file: !3984, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !3983, file: !3984, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !3983, file: !3984, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !3983, file: !3984, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !3983, file: !3984, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !3983, file: !3984, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !3983, file: !3984, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !3983, file: !3984, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !3983, file: !3984, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !3983, file: !3984, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !3983, file: !3984, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !3983, file: !3984, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !3983, file: !3984, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !3983, file: !3984, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !3983, file: !3984, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !3983, file: !3984, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !3983, file: !3984, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !3983, file: !3984, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !3983, file: !3984, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !3983, file: !3984, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !3983, file: !3984, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !3983, file: !3984, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !3983, file: !3984, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !3983, file: !3984, line: 450, baseType: !4219, size: 16, offset: 15792)
!4219 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !3984, line: 206, baseType: !113)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !3983, file: !3984, line: 451, baseType: !668, size: 32, offset: 15808)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !3983, file: !3984, line: 453, baseType: !3710, size: 512, offset: 15840)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !3983, file: !3984, line: 454, baseType: !556, size: 64, offset: 16384)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !3983, file: !3984, line: 455, baseType: !265, size: 64, offset: 16448)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !3983, file: !3984, line: 456, baseType: !120, size: 32, offset: 16512)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !3983, file: !3984, line: 457, baseType: !4226, size: 1088, offset: 16576)
!4226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 1088, elements: !4179)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !3983, file: !3984, line: 458, baseType: !4226, size: 1088, offset: 17664)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !3983, file: !3984, line: 469, baseType: !251, size: 64, offset: 18752)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !3983, file: !3984, line: 471, baseType: !4230, size: 64, offset: 18816)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !3984, line: 304, flags: DIFlagFwdDecl)
!4232 = !DIDerivedType(tag: DW_TAG_member, scope: !3983, file: !3984, line: 478, baseType: !4233, size: 64, offset: 18880)
!4233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3983, file: !3984, line: 478, size: 64, elements: !4234)
!4234 = !{!4235, !4238}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4233, file: !3984, line: 479, baseType: !4236, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !3984, line: 305, flags: DIFlagFwdDecl)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4233, file: !3984, line: 480, baseType: !3982, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !3983, file: !3984, line: 482, baseType: !109, size: 16, offset: 18944)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !3983, file: !3984, line: 483, baseType: !1271, size: 8, offset: 18960)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !3983, file: !3984, line: 497, baseType: !109, size: 16, offset: 18976)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !3983, file: !3984, line: 498, baseType: !2046, size: 64, offset: 19008)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !3983, file: !3984, line: 499, baseType: !245, size: 64, offset: 19072)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !3983, file: !3984, line: 500, baseType: !210, size: 64, offset: 19136)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !3983, file: !3984, line: 502, baseType: !117, size: 64, offset: 19200)
!4246 = !DIGlobalVariableExpression(var: !4247, expr: !DIExpression())
!4247 = distinct !DIGlobalVariable(name: "vt8231_pci_driver", scope: !2, file: !3, line: 772, type: !4081, isLocal: true, isDefinition: true)
!4248 = !DIGlobalVariableExpression(var: !4249, expr: !DIExpression())
!4249 = distinct !DIGlobalVariable(name: "vt8231_pci_ids", scope: !2, file: !3, line: 762, type: !4250, isLocal: true, isDefinition: true)
!4250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4087, size: 512, elements: !1488)
!4251 = !DIGlobalVariableExpression(var: !4252, expr: !DIExpression())
!4252 = distinct !DIGlobalVariable(name: "vt8231_driver", scope: !2, file: !3, line: 754, type: !4253, isLocal: true, isDefinition: true)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !3943, line: 200, size: 1600, elements: !4254)
!4254 = !{!4255, !4259, !4260, !4264, !4268, !4269, !4270, !4271}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4253, file: !3943, line: 201, baseType: !4256, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!120, !3941}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4253, file: !3943, line: 202, baseType: !4256, size: 64, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4253, file: !3943, line: 203, baseType: !4261, size: 64, offset: 128)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{null, !3941}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4253, file: !3943, line: 204, baseType: !4265, size: 64, offset: 192)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!120, !3941, !3407}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4253, file: !3943, line: 205, baseType: !4256, size: 64, offset: 256)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4253, file: !3943, line: 206, baseType: !3365, size: 1152, offset: 320)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4253, file: !3943, line: 207, baseType: !3967, size: 64, offset: 1472)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !4253, file: !3943, line: 208, baseType: !411, size: 8, offset: 1536)
!4272 = !DIGlobalVariableExpression(var: !4273, expr: !DIExpression())
!4273 = distinct !DIGlobalVariable(name: "__key", scope: !4274, file: !3, line: 801, type: !566, isLocal: true, isDefinition: true)
!4274 = distinct !DISubprogram(name: "vt8231_probe", scope: !3, file: !3, line: 778, type: !4257, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!4275 = !DIGlobalVariableExpression(var: !4276, expr: !DIExpression())
!4276 = distinct !DIGlobalVariable(name: "vt8231_group", scope: !2, file: !3, line: 750, type: !253, isLocal: true, isDefinition: true)
!4277 = !DIGlobalVariableExpression(var: !4278, expr: !DIExpression())
!4278 = distinct !DIGlobalVariable(name: "vt8231_attributes", scope: !2, file: !3, line: 736, type: !4279, isLocal: true, isDefinition: true)
!4279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 704, elements: !4280)
!4280 = !{!4281}
!4281 = !DISubrange(count: 11)
!4282 = !DIGlobalVariableExpression(var: !4283, expr: !DIExpression())
!4283 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan1_input", scope: !2, file: !3, line: 592, type: !122, isLocal: true, isDefinition: true)
!4284 = !DIGlobalVariableExpression(var: !4285, expr: !DIExpression())
!4285 = distinct !DIGlobalVariable(name: "regvolt", scope: !2, file: !3, line: 69, type: !4286, isLocal: true, isDefinition: true)
!4286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4287, size: 48, elements: !1544)
!4287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1271)
!4288 = !DIGlobalVariableExpression(var: !4289, expr: !DIExpression())
!4289 = distinct !DIGlobalVariable(name: "regvoltmin", scope: !2, file: !3, line: 71, type: !4286, isLocal: true, isDefinition: true)
!4290 = !DIGlobalVariableExpression(var: !4291, expr: !DIExpression())
!4291 = distinct !DIGlobalVariable(name: "regvoltmax", scope: !2, file: !3, line: 70, type: !4286, isLocal: true, isDefinition: true)
!4292 = !DIGlobalVariableExpression(var: !4293, expr: !DIExpression())
!4293 = distinct !DIGlobalVariable(name: "regtemp", scope: !2, file: !3, line: 85, type: !4286, isLocal: true, isDefinition: true)
!4294 = !DIGlobalVariableExpression(var: !4295, expr: !DIExpression())
!4295 = distinct !DIGlobalVariable(name: "regtempmax", scope: !2, file: !3, line: 86, type: !4286, isLocal: true, isDefinition: true)
!4296 = !DIGlobalVariableExpression(var: !4297, expr: !DIExpression())
!4297 = distinct !DIGlobalVariable(name: "regtempmin", scope: !2, file: !3, line: 87, type: !4286, isLocal: true, isDefinition: true)
!4298 = !DIGlobalVariableExpression(var: !4299, expr: !DIExpression())
!4299 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan2_input", scope: !2, file: !3, line: 595, type: !122, isLocal: true, isDefinition: true)
!4300 = !DIGlobalVariableExpression(var: !4301, expr: !DIExpression())
!4301 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan1_min", scope: !2, file: !3, line: 593, type: !122, isLocal: true, isDefinition: true)
!4302 = !DIGlobalVariableExpression(var: !4303, expr: !DIExpression())
!4303 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan2_min", scope: !2, file: !3, line: 596, type: !122, isLocal: true, isDefinition: true)
!4304 = !DIGlobalVariableExpression(var: !4305, expr: !DIExpression())
!4305 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan1_div", scope: !2, file: !3, line: 594, type: !122, isLocal: true, isDefinition: true)
!4306 = !DIGlobalVariableExpression(var: !4307, expr: !DIExpression())
!4307 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan2_div", scope: !2, file: !3, line: 597, type: !122, isLocal: true, isDefinition: true)
!4308 = !DIGlobalVariableExpression(var: !4309, expr: !DIExpression())
!4309 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan1_alarm", scope: !2, file: !3, line: 627, type: !122, isLocal: true, isDefinition: true)
!4310 = !DIGlobalVariableExpression(var: !4311, expr: !DIExpression())
!4311 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan2_alarm", scope: !2, file: !3, line: 628, type: !122, isLocal: true, isDefinition: true)
!4312 = !DIGlobalVariableExpression(var: !4313, expr: !DIExpression())
!4313 = distinct !DIGlobalVariable(name: "dev_attr_alarms", scope: !2, file: !3, line: 606, type: !126, isLocal: true, isDefinition: true)
!4314 = !DIGlobalVariableExpression(var: !4315, expr: !DIExpression())
!4315 = distinct !DIGlobalVariable(name: "dev_attr_name", scope: !2, file: !3, line: 636, type: !126, isLocal: true, isDefinition: true)
!4316 = !DIGlobalVariableExpression(var: !4317, expr: !DIExpression())
!4317 = distinct !DIGlobalVariable(name: "vt8231_group_temps", scope: !2, file: !3, line: 678, type: !4318, isLocal: true, isDefinition: true)
!4318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 1920, elements: !1544)
!4319 = !DIGlobalVariableExpression(var: !4320, expr: !DIExpression())
!4320 = distinct !DIGlobalVariable(name: "vt8231_attributes_temps", scope: !2, file: !3, line: 638, type: !4321, isLocal: true, isDefinition: true)
!4321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 1920, elements: !4322)
!4322 = !{!1545, !4323}
!4323 = !DISubrange(count: 5)
!4324 = !DIGlobalVariableExpression(var: !4325, expr: !DIExpression())
!4325 = distinct !DIGlobalVariable(name: "dev_attr_temp1_input", scope: !2, file: !3, line: 472, type: !126, isLocal: true, isDefinition: true)
!4326 = !DIGlobalVariableExpression(var: !4327, expr: !DIExpression())
!4327 = distinct !DIGlobalVariable(name: "dev_attr_temp1_max_hyst", scope: !2, file: !3, line: 474, type: !126, isLocal: true, isDefinition: true)
!4328 = !DIGlobalVariableExpression(var: !4329, expr: !DIExpression())
!4329 = distinct !DIGlobalVariable(name: "dev_attr_temp1_max", scope: !2, file: !3, line: 473, type: !126, isLocal: true, isDefinition: true)
!4330 = !DIGlobalVariableExpression(var: !4331, expr: !DIExpression())
!4331 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp1_alarm", scope: !2, file: !3, line: 615, type: !122, isLocal: true, isDefinition: true)
!4332 = !DIGlobalVariableExpression(var: !4333, expr: !DIExpression())
!4333 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp2_input", scope: !2, file: !3, line: 476, type: !122, isLocal: true, isDefinition: true)
!4334 = !DIGlobalVariableExpression(var: !4335, expr: !DIExpression())
!4335 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp2_max_hyst", scope: !2, file: !3, line: 478, type: !122, isLocal: true, isDefinition: true)
!4336 = !DIGlobalVariableExpression(var: !4337, expr: !DIExpression())
!4337 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp2_max", scope: !2, file: !3, line: 477, type: !122, isLocal: true, isDefinition: true)
!4338 = !DIGlobalVariableExpression(var: !4339, expr: !DIExpression())
!4339 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp2_alarm", scope: !2, file: !3, line: 616, type: !122, isLocal: true, isDefinition: true)
!4340 = !DIGlobalVariableExpression(var: !4341, expr: !DIExpression())
!4341 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp3_input", scope: !2, file: !3, line: 479, type: !122, isLocal: true, isDefinition: true)
!4342 = !DIGlobalVariableExpression(var: !4343, expr: !DIExpression())
!4343 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp3_max_hyst", scope: !2, file: !3, line: 481, type: !122, isLocal: true, isDefinition: true)
!4344 = !DIGlobalVariableExpression(var: !4345, expr: !DIExpression())
!4345 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp3_max", scope: !2, file: !3, line: 480, type: !122, isLocal: true, isDefinition: true)
!4346 = !DIGlobalVariableExpression(var: !4347, expr: !DIExpression())
!4347 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp3_alarm", scope: !2, file: !3, line: 617, type: !122, isLocal: true, isDefinition: true)
!4348 = !DIGlobalVariableExpression(var: !4349, expr: !DIExpression())
!4349 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp4_input", scope: !2, file: !3, line: 482, type: !122, isLocal: true, isDefinition: true)
!4350 = !DIGlobalVariableExpression(var: !4351, expr: !DIExpression())
!4351 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp4_max_hyst", scope: !2, file: !3, line: 484, type: !122, isLocal: true, isDefinition: true)
!4352 = !DIGlobalVariableExpression(var: !4353, expr: !DIExpression())
!4353 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp4_max", scope: !2, file: !3, line: 483, type: !122, isLocal: true, isDefinition: true)
!4354 = !DIGlobalVariableExpression(var: !4355, expr: !DIExpression())
!4355 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp4_alarm", scope: !2, file: !3, line: 618, type: !122, isLocal: true, isDefinition: true)
!4356 = !DIGlobalVariableExpression(var: !4357, expr: !DIExpression())
!4357 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp5_input", scope: !2, file: !3, line: 485, type: !122, isLocal: true, isDefinition: true)
!4358 = !DIGlobalVariableExpression(var: !4359, expr: !DIExpression())
!4359 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp5_max_hyst", scope: !2, file: !3, line: 487, type: !122, isLocal: true, isDefinition: true)
!4360 = !DIGlobalVariableExpression(var: !4361, expr: !DIExpression())
!4361 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp5_max", scope: !2, file: !3, line: 486, type: !122, isLocal: true, isDefinition: true)
!4362 = !DIGlobalVariableExpression(var: !4363, expr: !DIExpression())
!4363 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp5_alarm", scope: !2, file: !3, line: 619, type: !122, isLocal: true, isDefinition: true)
!4364 = !DIGlobalVariableExpression(var: !4365, expr: !DIExpression())
!4365 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp6_input", scope: !2, file: !3, line: 488, type: !122, isLocal: true, isDefinition: true)
!4366 = !DIGlobalVariableExpression(var: !4367, expr: !DIExpression())
!4367 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp6_max_hyst", scope: !2, file: !3, line: 490, type: !122, isLocal: true, isDefinition: true)
!4368 = !DIGlobalVariableExpression(var: !4369, expr: !DIExpression())
!4369 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp6_max", scope: !2, file: !3, line: 489, type: !122, isLocal: true, isDefinition: true)
!4370 = !DIGlobalVariableExpression(var: !4371, expr: !DIExpression())
!4371 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp6_alarm", scope: !2, file: !3, line: 620, type: !122, isLocal: true, isDefinition: true)
!4372 = !DIGlobalVariableExpression(var: !4373, expr: !DIExpression())
!4373 = distinct !DIGlobalVariable(name: "vt8231_group_volts", scope: !2, file: !3, line: 727, type: !4318, isLocal: true, isDefinition: true)
!4374 = !DIGlobalVariableExpression(var: !4375, expr: !DIExpression())
!4375 = distinct !DIGlobalVariable(name: "vt8231_attributes_volts", scope: !2, file: !3, line: 687, type: !4321, isLocal: true, isDefinition: true)
!4376 = !DIGlobalVariableExpression(var: !4377, expr: !DIExpression())
!4377 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in0_input", scope: !2, file: !3, line: 320, type: !122, isLocal: true, isDefinition: true)
!4378 = !DIGlobalVariableExpression(var: !4379, expr: !DIExpression())
!4379 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in0_min", scope: !2, file: !3, line: 321, type: !122, isLocal: true, isDefinition: true)
!4380 = !DIGlobalVariableExpression(var: !4381, expr: !DIExpression())
!4381 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in0_max", scope: !2, file: !3, line: 322, type: !122, isLocal: true, isDefinition: true)
!4382 = !DIGlobalVariableExpression(var: !4383, expr: !DIExpression())
!4383 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in0_alarm", scope: !2, file: !3, line: 621, type: !122, isLocal: true, isDefinition: true)
!4384 = !DIGlobalVariableExpression(var: !4385, expr: !DIExpression())
!4385 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in1_input", scope: !2, file: !3, line: 323, type: !122, isLocal: true, isDefinition: true)
!4386 = !DIGlobalVariableExpression(var: !4387, expr: !DIExpression())
!4387 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in1_min", scope: !2, file: !3, line: 324, type: !122, isLocal: true, isDefinition: true)
!4388 = !DIGlobalVariableExpression(var: !4389, expr: !DIExpression())
!4389 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in1_max", scope: !2, file: !3, line: 325, type: !122, isLocal: true, isDefinition: true)
!4390 = !DIGlobalVariableExpression(var: !4391, expr: !DIExpression())
!4391 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in1_alarm", scope: !2, file: !3, line: 622, type: !122, isLocal: true, isDefinition: true)
!4392 = !DIGlobalVariableExpression(var: !4393, expr: !DIExpression())
!4393 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in2_input", scope: !2, file: !3, line: 326, type: !122, isLocal: true, isDefinition: true)
!4394 = !DIGlobalVariableExpression(var: !4395, expr: !DIExpression())
!4395 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in2_min", scope: !2, file: !3, line: 327, type: !122, isLocal: true, isDefinition: true)
!4396 = !DIGlobalVariableExpression(var: !4397, expr: !DIExpression())
!4397 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in2_max", scope: !2, file: !3, line: 328, type: !122, isLocal: true, isDefinition: true)
!4398 = !DIGlobalVariableExpression(var: !4399, expr: !DIExpression())
!4399 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in2_alarm", scope: !2, file: !3, line: 623, type: !122, isLocal: true, isDefinition: true)
!4400 = !DIGlobalVariableExpression(var: !4401, expr: !DIExpression())
!4401 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in3_input", scope: !2, file: !3, line: 329, type: !122, isLocal: true, isDefinition: true)
!4402 = !DIGlobalVariableExpression(var: !4403, expr: !DIExpression())
!4403 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in3_min", scope: !2, file: !3, line: 330, type: !122, isLocal: true, isDefinition: true)
!4404 = !DIGlobalVariableExpression(var: !4405, expr: !DIExpression())
!4405 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in3_max", scope: !2, file: !3, line: 331, type: !122, isLocal: true, isDefinition: true)
!4406 = !DIGlobalVariableExpression(var: !4407, expr: !DIExpression())
!4407 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in3_alarm", scope: !2, file: !3, line: 624, type: !122, isLocal: true, isDefinition: true)
!4408 = !DIGlobalVariableExpression(var: !4409, expr: !DIExpression())
!4409 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in4_input", scope: !2, file: !3, line: 332, type: !122, isLocal: true, isDefinition: true)
!4410 = !DIGlobalVariableExpression(var: !4411, expr: !DIExpression())
!4411 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in4_min", scope: !2, file: !3, line: 333, type: !122, isLocal: true, isDefinition: true)
!4412 = !DIGlobalVariableExpression(var: !4413, expr: !DIExpression())
!4413 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in4_max", scope: !2, file: !3, line: 334, type: !122, isLocal: true, isDefinition: true)
!4414 = !DIGlobalVariableExpression(var: !4415, expr: !DIExpression())
!4415 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in4_alarm", scope: !2, file: !3, line: 625, type: !122, isLocal: true, isDefinition: true)
!4416 = !DIGlobalVariableExpression(var: !4417, expr: !DIExpression())
!4417 = distinct !DIGlobalVariable(name: "dev_attr_in5_input", scope: !2, file: !3, line: 336, type: !126, isLocal: true, isDefinition: true)
!4418 = !DIGlobalVariableExpression(var: !4419, expr: !DIExpression())
!4419 = distinct !DIGlobalVariable(name: "dev_attr_in5_min", scope: !2, file: !3, line: 337, type: !126, isLocal: true, isDefinition: true)
!4420 = !DIGlobalVariableExpression(var: !4421, expr: !DIExpression())
!4421 = distinct !DIGlobalVariable(name: "dev_attr_in5_max", scope: !2, file: !3, line: 338, type: !126, isLocal: true, isDefinition: true)
!4422 = !DIGlobalVariableExpression(var: !4423, expr: !DIExpression())
!4423 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in5_alarm", scope: !2, file: !3, line: 626, type: !122, isLocal: true, isDefinition: true)
!4424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 144, elements: !4425)
!4425 = !{!4426}
!4426 = !DISubrange(count: 18)
!4427 = !{i32 7, !"Dwarf Version", i32 4}
!4428 = !{i32 2, !"Debug Info Version", i32 3}
!4429 = !{i32 1, !"wchar_size", i32 2}
!4430 = !{i32 1, !"Code Model", i32 2}
!4431 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4432 = distinct !DISubprogram(name: "sm_vt8231_exit", scope: !3, file: !3, line: 1048, type: !1799, scopeLine: 1049, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!4433 = !DILocation(line: 1050, column: 2, scope: !4432)
!4434 = !DILocation(line: 1051, column: 6, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 1051, column: 6)
!4436 = !DILocation(line: 1051, column: 15, scope: !4435)
!4437 = !DILocation(line: 1051, column: 6, scope: !4432)
!4438 = !DILocation(line: 1052, column: 30, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4435, file: !3, line: 1051, column: 24)
!4440 = !DILocation(line: 1052, column: 3, scope: !4439)
!4441 = !DILocation(line: 1053, column: 3, scope: !4439)
!4442 = !DILocation(line: 1054, column: 15, scope: !4439)
!4443 = !DILocation(line: 1054, column: 3, scope: !4439)
!4444 = !DILocation(line: 1055, column: 12, scope: !4439)
!4445 = !DILocation(line: 1056, column: 2, scope: !4439)
!4446 = !DILocation(line: 1057, column: 1, scope: !4432)
!4447 = distinct !DISubprogram(name: "sm_vt8231_init", scope: !3, file: !3, line: 1043, type: !4448, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!120}
!4450 = !DILocation(line: 1045, column: 9, scope: !4447)
!4451 = !DILocation(line: 1045, column: 2, scope: !4447)
!4452 = distinct !DISubprogram(name: "vt8231_pci_probe", scope: !3, file: !3, line: 981, type: !4099, scopeLine: 983, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!4453 = !DILocalVariable(name: "dev", arg: 1, scope: !4452, file: !3, line: 981, type: !3982)
!4454 = !DILocation(line: 981, column: 45, scope: !4452)
!4455 = !DILocalVariable(name: "id", arg: 2, scope: !4452, file: !3, line: 982, type: !4086)
!4456 = !DILocation(line: 982, column: 33, scope: !4452)
!4457 = !DILocalVariable(name: "address", scope: !4452, file: !3, line: 984, type: !109)
!4458 = !DILocation(line: 984, column: 6, scope: !4452)
!4459 = !DILocalVariable(name: "val", scope: !4452, file: !3, line: 984, type: !109)
!4460 = !DILocation(line: 984, column: 15, scope: !4452)
!4461 = !DILocation(line: 985, column: 6, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 985, column: 6)
!4463 = !DILocation(line: 985, column: 6, scope: !4452)
!4464 = !DILocation(line: 986, column: 13, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 985, column: 18)
!4466 = !DILocation(line: 986, column: 24, scope: !4465)
!4467 = !DILocation(line: 986, column: 11, scope: !4465)
!4468 = !DILocation(line: 987, column: 3, scope: !4465)
!4469 = !DILocation(line: 991, column: 29, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 990, column: 7)
!4471 = !DILocation(line: 991, column: 51, scope: !4470)
!4472 = !DILocation(line: 991, column: 59, scope: !4470)
!4473 = !DILocation(line: 991, column: 7, scope: !4470)
!4474 = !DILocation(line: 990, column: 26, scope: !4470)
!4475 = !DILocation(line: 990, column: 7, scope: !4465)
!4476 = !DILocation(line: 992, column: 4, scope: !4470)
!4477 = !DILocation(line: 993, column: 2, scope: !4465)
!4478 = !DILocation(line: 995, column: 23, scope: !4452)
!4479 = !DILocation(line: 995, column: 2, scope: !4452)
!4480 = !DILocation(line: 996, column: 6, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 996, column: 6)
!4482 = !DILocation(line: 996, column: 10, scope: !4481)
!4483 = !DILocation(line: 996, column: 6, scope: !4452)
!4484 = !DILocation(line: 997, column: 3, scope: !4481)
!4485 = !DILocation(line: 999, column: 12, scope: !4452)
!4486 = !DILocation(line: 999, column: 16, scope: !4452)
!4487 = !DILocation(line: 999, column: 10, scope: !4452)
!4488 = !DILocation(line: 1000, column: 6, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 1000, column: 6)
!4490 = !DILocation(line: 1000, column: 14, scope: !4489)
!4491 = !DILocation(line: 1000, column: 6, scope: !4452)
!4492 = !DILocation(line: 1001, column: 3, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4489, file: !3, line: 1000, column: 20)
!4494 = !DILocation(line: 1002, column: 3, scope: !4493)
!4495 = !DILocation(line: 1005, column: 23, scope: !4452)
!4496 = !DILocation(line: 1005, column: 2, scope: !4452)
!4497 = !DILocation(line: 1006, column: 6, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 1006, column: 6)
!4499 = !DILocation(line: 1006, column: 10, scope: !4498)
!4500 = !DILocation(line: 1006, column: 6, scope: !4452)
!4501 = !DILocation(line: 1007, column: 3, scope: !4498)
!4502 = !DILocation(line: 1009, column: 8, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 1009, column: 6)
!4504 = !DILocation(line: 1009, column: 12, scope: !4503)
!4505 = !DILocation(line: 1009, column: 6, scope: !4452)
!4506 = !DILocation(line: 1010, column: 3, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4503, file: !3, line: 1009, column: 23)
!4508 = !DILocation(line: 1012, column: 26, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4507, file: !3, line: 1011, column: 7)
!4510 = !DILocation(line: 1013, column: 8, scope: !4509)
!4511 = !DILocation(line: 1013, column: 12, scope: !4509)
!4512 = !DILocation(line: 1012, column: 4, scope: !4509)
!4513 = !DILocation(line: 1011, column: 26, scope: !4509)
!4514 = !DILocation(line: 1011, column: 7, scope: !4507)
!4515 = !DILocation(line: 1014, column: 4, scope: !4509)
!4516 = !DILocation(line: 1015, column: 2, scope: !4507)
!4517 = !DILocation(line: 1017, column: 6, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 1017, column: 6)
!4519 = !DILocation(line: 1017, column: 6, scope: !4452)
!4520 = !DILocation(line: 1018, column: 3, scope: !4518)
!4521 = !DILocation(line: 1021, column: 24, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 1021, column: 6)
!4523 = !DILocation(line: 1021, column: 6, scope: !4522)
!4524 = !DILocation(line: 1021, column: 6, scope: !4452)
!4525 = !DILocation(line: 1022, column: 3, scope: !4522)
!4526 = !DILocation(line: 1034, column: 25, scope: !4452)
!4527 = !DILocation(line: 1034, column: 13, scope: !4452)
!4528 = !DILocation(line: 1034, column: 11, scope: !4452)
!4529 = !DILocation(line: 1035, column: 2, scope: !4452)
!4530 = !DILabel(scope: !4452, name: "exit_unregister", file: !3, line: 1037)
!4531 = !DILocation(line: 1037, column: 1, scope: !4452)
!4532 = !DILocation(line: 1038, column: 2, scope: !4452)
!4533 = !DILabel(scope: !4452, name: "exit", file: !3, line: 1039)
!4534 = !DILocation(line: 1039, column: 1, scope: !4452)
!4535 = !DILocation(line: 1040, column: 2, scope: !4452)
!4536 = !DILocation(line: 1041, column: 1, scope: !4452)
!4537 = distinct !DISubprogram(name: "vt8231_device_add", scope: !3, file: !3, line: 940, type: !4538, scopeLine: 941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!120, !113}
!4540 = !DILocalVariable(name: "address", arg: 1, scope: !4537, file: !3, line: 940, type: !113)
!4541 = !DILocation(line: 940, column: 45, scope: !4537)
!4542 = !DILocalVariable(name: "res", scope: !4537, file: !3, line: 942, type: !3954)
!4543 = !DILocation(line: 942, column: 18, scope: !4537)
!4544 = !DILocation(line: 942, column: 24, scope: !4537)
!4545 = !DILocation(line: 943, column: 12, scope: !4537)
!4546 = !DILocation(line: 944, column: 10, scope: !4537)
!4547 = !DILocation(line: 944, column: 18, scope: !4537)
!4548 = !DILocation(line: 944, column: 34, scope: !4537)
!4549 = !DILocalVariable(name: "err", scope: !4537, file: !3, line: 948, type: !120)
!4550 = !DILocation(line: 948, column: 6, scope: !4537)
!4551 = !DILocation(line: 950, column: 8, scope: !4537)
!4552 = !DILocation(line: 950, column: 6, scope: !4537)
!4553 = !DILocation(line: 951, column: 6, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 951, column: 6)
!4555 = !DILocation(line: 951, column: 6, scope: !4537)
!4556 = !DILocation(line: 952, column: 3, scope: !4554)
!4557 = !DILocation(line: 954, column: 41, scope: !4537)
!4558 = !DILocation(line: 954, column: 9, scope: !4537)
!4559 = !DILocation(line: 954, column: 7, scope: !4537)
!4560 = !DILocation(line: 955, column: 7, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 955, column: 6)
!4562 = !DILocation(line: 955, column: 6, scope: !4537)
!4563 = !DILocation(line: 956, column: 7, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 955, column: 13)
!4565 = !DILocation(line: 957, column: 3, scope: !4564)
!4566 = !DILocation(line: 958, column: 3, scope: !4564)
!4567 = !DILocation(line: 961, column: 38, scope: !4537)
!4568 = !DILocation(line: 961, column: 8, scope: !4537)
!4569 = !DILocation(line: 961, column: 6, scope: !4537)
!4570 = !DILocation(line: 962, column: 6, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 962, column: 6)
!4572 = !DILocation(line: 962, column: 6, scope: !4537)
!4573 = !DILocation(line: 963, column: 3, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4571, file: !3, line: 962, column: 11)
!4575 = !DILocation(line: 964, column: 3, scope: !4574)
!4576 = !DILocation(line: 967, column: 28, scope: !4537)
!4577 = !DILocation(line: 967, column: 8, scope: !4537)
!4578 = !DILocation(line: 967, column: 6, scope: !4537)
!4579 = !DILocation(line: 968, column: 6, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 968, column: 6)
!4581 = !DILocation(line: 968, column: 6, scope: !4537)
!4582 = !DILocation(line: 969, column: 3, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4580, file: !3, line: 968, column: 11)
!4584 = !DILocation(line: 970, column: 3, scope: !4583)
!4585 = !DILocation(line: 973, column: 2, scope: !4537)
!4586 = !DILabel(scope: !4537, name: "exit_device_put", file: !3, line: 975)
!4587 = !DILocation(line: 975, column: 1, scope: !4537)
!4588 = !DILocation(line: 976, column: 22, scope: !4537)
!4589 = !DILocation(line: 976, column: 2, scope: !4537)
!4590 = !DILabel(scope: !4537, name: "exit", file: !3, line: 977)
!4591 = !DILocation(line: 977, column: 1, scope: !4537)
!4592 = !DILocation(line: 978, column: 9, scope: !4537)
!4593 = !DILocation(line: 978, column: 2, scope: !4537)
!4594 = !DILocation(line: 979, column: 1, scope: !4537)
!4595 = !DILocalVariable(name: "pdev", arg: 1, scope: !4274, file: !3, line: 778, type: !3941)
!4596 = !DILocation(line: 778, column: 49, scope: !4274)
!4597 = !DILocalVariable(name: "res", scope: !4274, file: !3, line: 780, type: !3953)
!4598 = !DILocation(line: 780, column: 19, scope: !4274)
!4599 = !DILocalVariable(name: "data", scope: !4274, file: !3, line: 781, type: !4600)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vt8231_data", file: !3, line: 142, size: 960, elements: !4602)
!4602 = !{!4603, !4604, !4605, !4606, !4607, !4608, !4609, !4611, !4612, !4613, !4615, !4616, !4617, !4619, !4620, !4621, !4622}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4601, file: !3, line: 143, baseType: !113, size: 16)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4601, file: !3, line: 144, baseType: !133, size: 64, offset: 64)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "update_lock", scope: !4601, file: !3, line: 146, baseType: !1092, size: 192, offset: 128)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "hwmon_dev", scope: !4601, file: !3, line: 147, baseType: !147, size: 64, offset: 320)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4601, file: !3, line: 148, baseType: !135, size: 8, offset: 384)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "last_updated", scope: !4601, file: !3, line: 149, baseType: !117, size: 64, offset: 448)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !4601, file: !3, line: 151, baseType: !4610, size: 48, offset: 512)
!4610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 48, elements: !1544)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "in_max", scope: !4601, file: !3, line: 152, baseType: !4610, size: 48, offset: 560)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "in_min", scope: !4601, file: !3, line: 153, baseType: !4610, size: 48, offset: 608)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !4601, file: !3, line: 154, baseType: !4614, size: 96, offset: 656)
!4614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 96, elements: !1544)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "temp_max", scope: !4601, file: !3, line: 155, baseType: !4610, size: 48, offset: 752)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "temp_min", scope: !4601, file: !3, line: 156, baseType: !4610, size: 48, offset: 800)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "fan", scope: !4601, file: !3, line: 157, baseType: !4618, size: 16, offset: 848)
!4618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 16, elements: !1488)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "fan_min", scope: !4601, file: !3, line: 158, baseType: !4618, size: 16, offset: 864)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "fan_div", scope: !4601, file: !3, line: 159, baseType: !4618, size: 16, offset: 880)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "alarms", scope: !4601, file: !3, line: 160, baseType: !109, size: 16, offset: 896)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "uch_config", scope: !4601, file: !3, line: 161, baseType: !1271, size: 8, offset: 912)
!4623 = !DILocation(line: 781, column: 22, scope: !4274)
!4624 = !DILocalVariable(name: "err", scope: !4274, file: !3, line: 782, type: !120)
!4625 = !DILocation(line: 782, column: 6, scope: !4274)
!4626 = !DILocalVariable(name: "i", scope: !4274, file: !3, line: 782, type: !120)
!4627 = !DILocation(line: 782, column: 15, scope: !4274)
!4628 = !DILocation(line: 785, column: 30, scope: !4274)
!4629 = !DILocation(line: 785, column: 8, scope: !4274)
!4630 = !DILocation(line: 785, column: 6, scope: !4274)
!4631 = !DILocation(line: 786, column: 7, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 786, column: 6)
!4633 = !DILocation(line: 786, column: 6, scope: !4274)
!4634 = !DILocation(line: 788, column: 3, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4632, file: !3, line: 787, column: 34)
!4636 = !DILocation(line: 790, column: 3, scope: !4635)
!4637 = !DILocation(line: 793, column: 23, scope: !4274)
!4638 = !DILocation(line: 793, column: 29, scope: !4274)
!4639 = !DILocation(line: 793, column: 9, scope: !4274)
!4640 = !DILocation(line: 793, column: 7, scope: !4274)
!4641 = !DILocation(line: 794, column: 7, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 794, column: 6)
!4643 = !DILocation(line: 794, column: 6, scope: !4274)
!4644 = !DILocation(line: 795, column: 3, scope: !4642)
!4645 = !DILocation(line: 797, column: 23, scope: !4274)
!4646 = !DILocation(line: 797, column: 29, scope: !4274)
!4647 = !DILocation(line: 797, column: 2, scope: !4274)
!4648 = !DILocation(line: 798, column: 15, scope: !4274)
!4649 = !DILocation(line: 798, column: 20, scope: !4274)
!4650 = !DILocation(line: 798, column: 2, scope: !4274)
!4651 = !DILocation(line: 798, column: 8, scope: !4274)
!4652 = !DILocation(line: 798, column: 13, scope: !4274)
!4653 = !DILocation(line: 799, column: 2, scope: !4274)
!4654 = !DILocation(line: 799, column: 8, scope: !4274)
!4655 = !DILocation(line: 799, column: 13, scope: !4274)
!4656 = !DILocation(line: 801, column: 2, scope: !4274)
!4657 = !DILocation(line: 801, column: 2, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 801, column: 2)
!4659 = !DILocation(line: 802, column: 21, scope: !4274)
!4660 = !DILocation(line: 802, column: 2, scope: !4274)
!4661 = !DILocation(line: 805, column: 28, scope: !4274)
!4662 = !DILocation(line: 805, column: 34, scope: !4274)
!4663 = !DILocation(line: 805, column: 38, scope: !4274)
!4664 = !DILocation(line: 805, column: 8, scope: !4274)
!4665 = !DILocation(line: 805, column: 6, scope: !4274)
!4666 = !DILocation(line: 806, column: 6, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 806, column: 6)
!4668 = !DILocation(line: 806, column: 6, scope: !4274)
!4669 = !DILocation(line: 807, column: 10, scope: !4667)
!4670 = !DILocation(line: 807, column: 3, scope: !4667)
!4671 = !DILocation(line: 810, column: 39, scope: !4274)
!4672 = !DILocation(line: 810, column: 21, scope: !4274)
!4673 = !DILocation(line: 810, column: 2, scope: !4274)
!4674 = !DILocation(line: 810, column: 8, scope: !4274)
!4675 = !DILocation(line: 810, column: 19, scope: !4274)
!4676 = !DILocation(line: 812, column: 9, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 812, column: 2)
!4678 = !DILocation(line: 812, column: 7, scope: !4677)
!4679 = !DILocation(line: 812, column: 14, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4677, file: !3, line: 812, column: 2)
!4681 = !DILocation(line: 812, column: 16, scope: !4680)
!4682 = !DILocation(line: 812, column: 2, scope: !4677)
!4683 = !DILocation(line: 813, column: 7, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 813, column: 7)
!4685 = distinct !DILexicalBlock(scope: !4680, file: !3, line: 812, column: 55)
!4686 = !DILocation(line: 813, column: 7, scope: !4685)
!4687 = !DILocation(line: 814, column: 30, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 813, column: 36)
!4689 = !DILocation(line: 814, column: 36, scope: !4688)
!4690 = !DILocation(line: 814, column: 40, scope: !4688)
!4691 = !DILocation(line: 815, column: 28, scope: !4688)
!4692 = !DILocation(line: 815, column: 9, scope: !4688)
!4693 = !DILocation(line: 814, column: 10, scope: !4688)
!4694 = !DILocation(line: 814, column: 8, scope: !4688)
!4695 = !DILocation(line: 816, column: 8, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 816, column: 8)
!4697 = !DILocation(line: 816, column: 8, scope: !4688)
!4698 = !DILocation(line: 817, column: 5, scope: !4696)
!4699 = !DILocation(line: 818, column: 3, scope: !4688)
!4700 = !DILocation(line: 819, column: 2, scope: !4685)
!4701 = !DILocation(line: 812, column: 51, scope: !4680)
!4702 = !DILocation(line: 812, column: 2, scope: !4680)
!4703 = distinct !{!4703, !4682, !4704}
!4704 = !DILocation(line: 819, column: 2, scope: !4677)
!4705 = !DILocation(line: 821, column: 9, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 821, column: 2)
!4707 = !DILocation(line: 821, column: 7, scope: !4706)
!4708 = !DILocation(line: 821, column: 14, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4706, file: !3, line: 821, column: 2)
!4710 = !DILocation(line: 821, column: 16, scope: !4709)
!4711 = !DILocation(line: 821, column: 2, scope: !4706)
!4712 = !DILocation(line: 822, column: 7, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4714, file: !3, line: 822, column: 7)
!4714 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 821, column: 55)
!4715 = !DILocation(line: 822, column: 7, scope: !4714)
!4716 = !DILocation(line: 823, column: 30, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4713, file: !3, line: 822, column: 36)
!4718 = !DILocation(line: 823, column: 36, scope: !4717)
!4719 = !DILocation(line: 823, column: 40, scope: !4717)
!4720 = !DILocation(line: 824, column: 28, scope: !4717)
!4721 = !DILocation(line: 824, column: 9, scope: !4717)
!4722 = !DILocation(line: 823, column: 10, scope: !4717)
!4723 = !DILocation(line: 823, column: 8, scope: !4717)
!4724 = !DILocation(line: 825, column: 8, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4717, file: !3, line: 825, column: 8)
!4726 = !DILocation(line: 825, column: 8, scope: !4717)
!4727 = !DILocation(line: 826, column: 5, scope: !4725)
!4728 = !DILocation(line: 827, column: 3, scope: !4717)
!4729 = !DILocation(line: 828, column: 2, scope: !4714)
!4730 = !DILocation(line: 821, column: 51, scope: !4709)
!4731 = !DILocation(line: 821, column: 2, scope: !4709)
!4732 = distinct !{!4732, !4711, !4733}
!4733 = !DILocation(line: 828, column: 2, scope: !4706)
!4734 = !DILocation(line: 830, column: 43, scope: !4274)
!4735 = !DILocation(line: 830, column: 49, scope: !4274)
!4736 = !DILocation(line: 830, column: 20, scope: !4274)
!4737 = !DILocation(line: 830, column: 2, scope: !4274)
!4738 = !DILocation(line: 830, column: 8, scope: !4274)
!4739 = !DILocation(line: 830, column: 18, scope: !4274)
!4740 = !DILocation(line: 831, column: 13, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 831, column: 6)
!4742 = !DILocation(line: 831, column: 19, scope: !4741)
!4743 = !DILocation(line: 831, column: 6, scope: !4741)
!4744 = !DILocation(line: 831, column: 6, scope: !4274)
!4745 = !DILocation(line: 832, column: 17, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 831, column: 31)
!4747 = !DILocation(line: 832, column: 23, scope: !4746)
!4748 = !DILocation(line: 832, column: 9, scope: !4746)
!4749 = !DILocation(line: 832, column: 7, scope: !4746)
!4750 = !DILocation(line: 833, column: 3, scope: !4746)
!4751 = !DILocation(line: 835, column: 2, scope: !4274)
!4752 = !DILabel(scope: !4274, name: "exit_remove_files", file: !3, line: 837)
!4753 = !DILocation(line: 837, column: 1, scope: !4274)
!4754 = !DILocation(line: 838, column: 9, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 838, column: 2)
!4756 = !DILocation(line: 838, column: 7, scope: !4755)
!4757 = !DILocation(line: 838, column: 14, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4755, file: !3, line: 838, column: 2)
!4759 = !DILocation(line: 838, column: 16, scope: !4758)
!4760 = !DILocation(line: 838, column: 2, scope: !4755)
!4761 = !DILocation(line: 839, column: 23, scope: !4758)
!4762 = !DILocation(line: 839, column: 29, scope: !4758)
!4763 = !DILocation(line: 839, column: 33, scope: !4758)
!4764 = !DILocation(line: 839, column: 59, scope: !4758)
!4765 = !DILocation(line: 839, column: 40, scope: !4758)
!4766 = !DILocation(line: 839, column: 3, scope: !4758)
!4767 = !DILocation(line: 838, column: 51, scope: !4758)
!4768 = !DILocation(line: 838, column: 2, scope: !4758)
!4769 = distinct !{!4769, !4760, !4770}
!4770 = !DILocation(line: 839, column: 61, scope: !4755)
!4771 = !DILocation(line: 841, column: 9, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 841, column: 2)
!4773 = !DILocation(line: 841, column: 7, scope: !4772)
!4774 = !DILocation(line: 841, column: 14, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 841, column: 2)
!4776 = !DILocation(line: 841, column: 16, scope: !4775)
!4777 = !DILocation(line: 841, column: 2, scope: !4772)
!4778 = !DILocation(line: 842, column: 23, scope: !4775)
!4779 = !DILocation(line: 842, column: 29, scope: !4775)
!4780 = !DILocation(line: 842, column: 33, scope: !4775)
!4781 = !DILocation(line: 842, column: 59, scope: !4775)
!4782 = !DILocation(line: 842, column: 40, scope: !4775)
!4783 = !DILocation(line: 842, column: 3, scope: !4775)
!4784 = !DILocation(line: 841, column: 51, scope: !4775)
!4785 = !DILocation(line: 841, column: 2, scope: !4775)
!4786 = distinct !{!4786, !4777, !4787}
!4787 = !DILocation(line: 842, column: 61, scope: !4772)
!4788 = !DILocation(line: 844, column: 22, scope: !4274)
!4789 = !DILocation(line: 844, column: 28, scope: !4274)
!4790 = !DILocation(line: 844, column: 32, scope: !4274)
!4791 = !DILocation(line: 844, column: 2, scope: !4274)
!4792 = !DILocation(line: 845, column: 9, scope: !4274)
!4793 = !DILocation(line: 845, column: 2, scope: !4274)
!4794 = !DILocation(line: 846, column: 1, scope: !4274)
!4795 = distinct !DISubprogram(name: "vt8231_remove", scope: !3, file: !3, line: 848, type: !4257, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!4796 = !DILocalVariable(name: "pdev", arg: 1, scope: !4795, file: !3, line: 848, type: !3941)
!4797 = !DILocation(line: 848, column: 50, scope: !4795)
!4798 = !DILocalVariable(name: "data", scope: !4795, file: !3, line: 850, type: !4600)
!4799 = !DILocation(line: 850, column: 22, scope: !4795)
!4800 = !DILocation(line: 850, column: 50, scope: !4795)
!4801 = !DILocation(line: 850, column: 29, scope: !4795)
!4802 = !DILocalVariable(name: "i", scope: !4795, file: !3, line: 851, type: !120)
!4803 = !DILocation(line: 851, column: 6, scope: !4795)
!4804 = !DILocation(line: 853, column: 26, scope: !4795)
!4805 = !DILocation(line: 853, column: 32, scope: !4795)
!4806 = !DILocation(line: 853, column: 2, scope: !4795)
!4807 = !DILocation(line: 855, column: 9, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 855, column: 2)
!4809 = !DILocation(line: 855, column: 7, scope: !4808)
!4810 = !DILocation(line: 855, column: 14, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 855, column: 2)
!4812 = !DILocation(line: 855, column: 16, scope: !4811)
!4813 = !DILocation(line: 855, column: 2, scope: !4808)
!4814 = !DILocation(line: 856, column: 23, scope: !4811)
!4815 = !DILocation(line: 856, column: 29, scope: !4811)
!4816 = !DILocation(line: 856, column: 33, scope: !4811)
!4817 = !DILocation(line: 856, column: 59, scope: !4811)
!4818 = !DILocation(line: 856, column: 40, scope: !4811)
!4819 = !DILocation(line: 856, column: 3, scope: !4811)
!4820 = !DILocation(line: 855, column: 51, scope: !4811)
!4821 = !DILocation(line: 855, column: 2, scope: !4811)
!4822 = distinct !{!4822, !4813, !4823}
!4823 = !DILocation(line: 856, column: 61, scope: !4808)
!4824 = !DILocation(line: 858, column: 9, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 858, column: 2)
!4826 = !DILocation(line: 858, column: 7, scope: !4825)
!4827 = !DILocation(line: 858, column: 14, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 858, column: 2)
!4829 = !DILocation(line: 858, column: 16, scope: !4828)
!4830 = !DILocation(line: 858, column: 2, scope: !4825)
!4831 = !DILocation(line: 859, column: 23, scope: !4828)
!4832 = !DILocation(line: 859, column: 29, scope: !4828)
!4833 = !DILocation(line: 859, column: 33, scope: !4828)
!4834 = !DILocation(line: 859, column: 59, scope: !4828)
!4835 = !DILocation(line: 859, column: 40, scope: !4828)
!4836 = !DILocation(line: 859, column: 3, scope: !4828)
!4837 = !DILocation(line: 858, column: 51, scope: !4828)
!4838 = !DILocation(line: 858, column: 2, scope: !4828)
!4839 = distinct !{!4839, !4830, !4840}
!4840 = !DILocation(line: 859, column: 61, scope: !4825)
!4841 = !DILocation(line: 861, column: 22, scope: !4795)
!4842 = !DILocation(line: 861, column: 28, scope: !4795)
!4843 = !DILocation(line: 861, column: 32, scope: !4795)
!4844 = !DILocation(line: 861, column: 2, scope: !4795)
!4845 = !DILocation(line: 863, column: 2, scope: !4795)
!4846 = distinct !DISubprogram(name: "devm_kzalloc", scope: !73, file: !73, line: 215, type: !4847, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{!108, !147, !245, !118}
!4849 = !DILocalVariable(name: "dev", arg: 1, scope: !4846, file: !73, line: 215, type: !147)
!4850 = !DILocation(line: 215, column: 49, scope: !4846)
!4851 = !DILocalVariable(name: "size", arg: 2, scope: !4846, file: !73, line: 215, type: !245)
!4852 = !DILocation(line: 215, column: 61, scope: !4846)
!4853 = !DILocalVariable(name: "gfp", arg: 3, scope: !4846, file: !73, line: 215, type: !118)
!4854 = !DILocation(line: 215, column: 73, scope: !4846)
!4855 = !DILocation(line: 217, column: 22, scope: !4846)
!4856 = !DILocation(line: 217, column: 27, scope: !4846)
!4857 = !DILocation(line: 217, column: 33, scope: !4846)
!4858 = !DILocation(line: 217, column: 37, scope: !4846)
!4859 = !DILocation(line: 217, column: 9, scope: !4846)
!4860 = !DILocation(line: 217, column: 2, scope: !4846)
!4861 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !3943, file: !3943, line: 236, type: !4862, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{null, !3941, !108}
!4864 = !DILocalVariable(name: "pdev", arg: 1, scope: !4861, file: !3943, line: 236, type: !3941)
!4865 = !DILocation(line: 236, column: 65, scope: !4861)
!4866 = !DILocalVariable(name: "data", arg: 2, scope: !4861, file: !3943, line: 237, type: !108)
!4867 = !DILocation(line: 237, column: 12, scope: !4861)
!4868 = !DILocation(line: 239, column: 19, scope: !4861)
!4869 = !DILocation(line: 239, column: 25, scope: !4861)
!4870 = !DILocation(line: 239, column: 30, scope: !4861)
!4871 = !DILocation(line: 239, column: 2, scope: !4861)
!4872 = !DILocation(line: 240, column: 1, scope: !4861)
!4873 = distinct !DISubprogram(name: "vt8231_init_device", scope: !3, file: !3, line: 866, type: !4874, scopeLine: 867, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{null, !4600}
!4876 = !DILocalVariable(name: "data", arg: 1, scope: !4873, file: !3, line: 866, type: !4600)
!4877 = !DILocation(line: 866, column: 52, scope: !4873)
!4878 = !DILocation(line: 868, column: 21, scope: !4873)
!4879 = !DILocation(line: 868, column: 2, scope: !4873)
!4880 = !DILocation(line: 869, column: 21, scope: !4873)
!4881 = !DILocation(line: 869, column: 2, scope: !4873)
!4882 = !DILocation(line: 870, column: 1, scope: !4873)
!4883 = distinct !DISubprogram(name: "vt8231_read_value", scope: !3, file: !3, line: 170, type: !4884, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!4884 = !DISubroutineType(types: !4885)
!4885 = !{!120, !4600, !1271}
!4886 = !DILocalVariable(name: "data", arg: 1, scope: !4883, file: !3, line: 170, type: !4600)
!4887 = !DILocation(line: 170, column: 57, scope: !4883)
!4888 = !DILocalVariable(name: "reg", arg: 2, scope: !4883, file: !3, line: 170, type: !1271)
!4889 = !DILocation(line: 170, column: 66, scope: !4883)
!4890 = !DILocation(line: 172, column: 15, scope: !4883)
!4891 = !DILocation(line: 172, column: 21, scope: !4883)
!4892 = !DILocation(line: 172, column: 28, scope: !4883)
!4893 = !DILocation(line: 172, column: 26, scope: !4883)
!4894 = !DILocation(line: 172, column: 9, scope: !4883)
!4895 = !DILocation(line: 172, column: 2, scope: !4883)
!4896 = distinct !DISubprogram(name: "IS_ERR", scope: !4897, file: !4897, line: 34, type: !4898, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!4897 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!411, !2048}
!4900 = !DILocalVariable(name: "ptr", arg: 1, scope: !4896, file: !4897, line: 34, type: !2048)
!4901 = !DILocation(line: 34, column: 60, scope: !4896)
!4902 = !DILocation(line: 36, column: 9, scope: !4896)
!4903 = !DILocation(line: 36, column: 2, scope: !4896)
!4904 = distinct !DISubprogram(name: "PTR_ERR", scope: !4897, file: !4897, line: 29, type: !4905, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!4905 = !DISubroutineType(types: !4906)
!4906 = !{!146, !2048}
!4907 = !DILocalVariable(name: "ptr", arg: 1, scope: !4904, file: !4897, line: 29, type: !2048)
!4908 = !DILocation(line: 29, column: 61, scope: !4904)
!4909 = !DILocation(line: 31, column: 16, scope: !4904)
!4910 = !DILocation(line: 31, column: 9, scope: !4904)
!4911 = !DILocation(line: 31, column: 2, scope: !4904)
!4912 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !4913, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{null, !147, !108}
!4915 = !DILocalVariable(name: "dev", arg: 1, scope: !4912, file: !73, line: 660, type: !147)
!4916 = !DILocation(line: 660, column: 51, scope: !4912)
!4917 = !DILocalVariable(name: "data", arg: 2, scope: !4912, file: !73, line: 660, type: !108)
!4918 = !DILocation(line: 660, column: 62, scope: !4912)
!4919 = !DILocation(line: 662, column: 21, scope: !4912)
!4920 = !DILocation(line: 662, column: 2, scope: !4912)
!4921 = !DILocation(line: 662, column: 7, scope: !4912)
!4922 = !DILocation(line: 662, column: 19, scope: !4912)
!4923 = !DILocation(line: 663, column: 1, scope: !4912)
!4924 = distinct !DISubprogram(name: "vt8231_write_value", scope: !3, file: !3, line: 175, type: !4925, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!4925 = !DISubroutineType(types: !4926)
!4926 = !{null, !4600, !1271, !1271}
!4927 = !DILocalVariable(name: "data", arg: 1, scope: !4924, file: !3, line: 175, type: !4600)
!4928 = !DILocation(line: 175, column: 59, scope: !4924)
!4929 = !DILocalVariable(name: "reg", arg: 2, scope: !4924, file: !3, line: 175, type: !1271)
!4930 = !DILocation(line: 175, column: 68, scope: !4924)
!4931 = !DILocalVariable(name: "value", arg: 3, scope: !4924, file: !3, line: 176, type: !1271)
!4932 = !DILocation(line: 176, column: 9, scope: !4924)
!4933 = !DILocation(line: 178, column: 9, scope: !4924)
!4934 = !DILocation(line: 178, column: 16, scope: !4924)
!4935 = !DILocation(line: 178, column: 22, scope: !4924)
!4936 = !DILocation(line: 178, column: 29, scope: !4924)
!4937 = !DILocation(line: 178, column: 27, scope: !4924)
!4938 = !DILocation(line: 178, column: 2, scope: !4924)
!4939 = !DILocation(line: 179, column: 1, scope: !4924)
!4940 = distinct !DISubprogram(name: "outb_p", scope: !4941, file: !4941, line: 334, type: !4942, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!4941 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4942 = !DISubroutineType(types: !4943)
!4943 = !{null, !348, !120}
!4944 = !DILocalVariable(name: "value", arg: 1, scope: !4940, file: !4941, line: 334, type: !348)
!4945 = !DILocation(line: 334, column: 1, scope: !4940)
!4946 = !DILocalVariable(name: "port", arg: 2, scope: !4940, file: !4941, line: 334, type: !120)
!4947 = distinct !DISubprogram(name: "outb", scope: !4941, file: !4941, line: 334, type: !4942, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!4948 = !DILocalVariable(name: "value", arg: 1, scope: !4947, file: !4941, line: 334, type: !348)
!4949 = !DILocation(line: 334, column: 1, scope: !4947)
!4950 = !DILocalVariable(name: "port", arg: 2, scope: !4947, file: !4941, line: 334, type: !120)
!4951 = !{i32 -2143304237}
!4952 = distinct !DISubprogram(name: "slow_down_io", scope: !4953, file: !4953, line: 40, type: !1799, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!4953 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4954 = !DILocation(line: 42, column: 13, scope: !4952)
!4955 = !DILocation(line: 42, column: 2, scope: !4952)
!4956 = !DILocation(line: 48, column: 1, scope: !4952)
!4957 = distinct !DISubprogram(name: "fan_show", scope: !3, file: !3, line: 493, type: !140, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!4958 = !DILocalVariable(name: "dev", arg: 1, scope: !4957, file: !3, line: 493, type: !147)
!4959 = !DILocation(line: 493, column: 40, scope: !4957)
!4960 = !DILocalVariable(name: "attr", arg: 2, scope: !4957, file: !3, line: 493, type: !3839)
!4961 = !DILocation(line: 493, column: 70, scope: !4957)
!4962 = !DILocalVariable(name: "buf", arg: 3, scope: !4957, file: !3, line: 494, type: !210)
!4963 = !DILocation(line: 494, column: 10, scope: !4957)
!4964 = !DILocalVariable(name: "sensor_attr", scope: !4957, file: !3, line: 496, type: !121)
!4965 = !DILocation(line: 496, column: 34, scope: !4957)
!4966 = !DILocalVariable(name: "__mptr", scope: !4967, file: !3, line: 496, type: !108)
!4967 = distinct !DILexicalBlock(scope: !4957, file: !3, line: 496, column: 48)
!4968 = !DILocation(line: 496, column: 48, scope: !4967)
!4969 = !DILocation(line: 496, column: 48, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4967, file: !3, line: 496, column: 48)
!4971 = !DILocalVariable(name: "nr", scope: !4957, file: !3, line: 497, type: !120)
!4972 = !DILocation(line: 497, column: 6, scope: !4957)
!4973 = !DILocation(line: 497, column: 11, scope: !4957)
!4974 = !DILocation(line: 497, column: 24, scope: !4957)
!4975 = !DILocalVariable(name: "data", scope: !4957, file: !3, line: 498, type: !4600)
!4976 = !DILocation(line: 498, column: 22, scope: !4957)
!4977 = !DILocation(line: 498, column: 50, scope: !4957)
!4978 = !DILocation(line: 498, column: 29, scope: !4957)
!4979 = !DILocation(line: 499, column: 17, scope: !4957)
!4980 = !DILocation(line: 499, column: 30, scope: !4957)
!4981 = !DILocation(line: 499, column: 9, scope: !4957)
!4982 = !DILocation(line: 499, column: 2, scope: !4957)
!4983 = distinct !DISubprogram(name: "vt8231_update_device", scope: !3, file: !3, line: 872, type: !4984, scopeLine: 873, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!4600, !147}
!4986 = !DILocalVariable(name: "dev", arg: 1, scope: !4983, file: !3, line: 872, type: !147)
!4987 = !DILocation(line: 872, column: 64, scope: !4983)
!4988 = !DILocalVariable(name: "data", scope: !4983, file: !3, line: 874, type: !4600)
!4989 = !DILocation(line: 874, column: 22, scope: !4983)
!4990 = !DILocation(line: 874, column: 45, scope: !4983)
!4991 = !DILocation(line: 874, column: 29, scope: !4983)
!4992 = !DILocalVariable(name: "i", scope: !4983, file: !3, line: 875, type: !120)
!4993 = !DILocation(line: 875, column: 6, scope: !4983)
!4994 = !DILocalVariable(name: "low", scope: !4983, file: !3, line: 876, type: !109)
!4995 = !DILocation(line: 876, column: 6, scope: !4983)
!4996 = !DILocation(line: 878, column: 14, scope: !4983)
!4997 = !DILocation(line: 878, column: 20, scope: !4983)
!4998 = !DILocation(line: 878, column: 2, scope: !4983)
!4999 = !DILocation(line: 880, column: 6, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 880, column: 6)
!5001 = !DILocation(line: 881, column: 6, scope: !5000)
!5002 = !DILocation(line: 881, column: 10, scope: !5000)
!5003 = !DILocation(line: 881, column: 16, scope: !5000)
!5004 = !DILocation(line: 880, column: 6, scope: !4983)
!5005 = !DILocation(line: 882, column: 10, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 882, column: 3)
!5007 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 881, column: 23)
!5008 = !DILocation(line: 882, column: 8, scope: !5006)
!5009 = !DILocation(line: 882, column: 15, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5006, file: !3, line: 882, column: 3)
!5011 = !DILocation(line: 882, column: 17, scope: !5010)
!5012 = !DILocation(line: 882, column: 3, scope: !5006)
!5013 = !DILocation(line: 883, column: 8, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 883, column: 8)
!5015 = distinct !DILexicalBlock(scope: !5010, file: !3, line: 882, column: 27)
!5016 = !DILocation(line: 883, column: 8, scope: !5015)
!5017 = !DILocation(line: 884, column: 37, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 883, column: 37)
!5019 = !DILocation(line: 885, column: 15, scope: !5018)
!5020 = !DILocation(line: 885, column: 7, scope: !5018)
!5021 = !DILocation(line: 884, column: 19, scope: !5018)
!5022 = !DILocation(line: 884, column: 5, scope: !5018)
!5023 = !DILocation(line: 884, column: 11, scope: !5018)
!5024 = !DILocation(line: 884, column: 14, scope: !5018)
!5025 = !DILocation(line: 884, column: 17, scope: !5018)
!5026 = !DILocation(line: 886, column: 41, scope: !5018)
!5027 = !DILocation(line: 887, column: 18, scope: !5018)
!5028 = !DILocation(line: 887, column: 7, scope: !5018)
!5029 = !DILocation(line: 886, column: 23, scope: !5018)
!5030 = !DILocation(line: 886, column: 5, scope: !5018)
!5031 = !DILocation(line: 886, column: 11, scope: !5018)
!5032 = !DILocation(line: 886, column: 18, scope: !5018)
!5033 = !DILocation(line: 886, column: 21, scope: !5018)
!5034 = !DILocation(line: 888, column: 41, scope: !5018)
!5035 = !DILocation(line: 889, column: 18, scope: !5018)
!5036 = !DILocation(line: 889, column: 7, scope: !5018)
!5037 = !DILocation(line: 888, column: 23, scope: !5018)
!5038 = !DILocation(line: 888, column: 5, scope: !5018)
!5039 = !DILocation(line: 888, column: 11, scope: !5018)
!5040 = !DILocation(line: 888, column: 18, scope: !5018)
!5041 = !DILocation(line: 888, column: 21, scope: !5018)
!5042 = !DILocation(line: 890, column: 4, scope: !5018)
!5043 = !DILocation(line: 891, column: 3, scope: !5015)
!5044 = !DILocation(line: 882, column: 23, scope: !5010)
!5045 = !DILocation(line: 882, column: 3, scope: !5010)
!5046 = distinct !{!5046, !5012, !5047}
!5047 = !DILocation(line: 891, column: 3, scope: !5006)
!5048 = !DILocation(line: 892, column: 10, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 892, column: 3)
!5050 = !DILocation(line: 892, column: 8, scope: !5049)
!5051 = !DILocation(line: 892, column: 15, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 892, column: 3)
!5053 = !DILocation(line: 892, column: 17, scope: !5052)
!5054 = !DILocation(line: 892, column: 3, scope: !5049)
!5055 = !DILocation(line: 893, column: 37, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5052, file: !3, line: 892, column: 27)
!5057 = !DILocation(line: 894, column: 7, scope: !5056)
!5058 = !DILocation(line: 893, column: 19, scope: !5056)
!5059 = !DILocation(line: 893, column: 4, scope: !5056)
!5060 = !DILocation(line: 893, column: 10, scope: !5056)
!5061 = !DILocation(line: 893, column: 14, scope: !5056)
!5062 = !DILocation(line: 893, column: 17, scope: !5056)
!5063 = !DILocation(line: 895, column: 41, scope: !5056)
!5064 = !DILocation(line: 896, column: 7, scope: !5056)
!5065 = !DILocation(line: 895, column: 23, scope: !5056)
!5066 = !DILocation(line: 895, column: 4, scope: !5056)
!5067 = !DILocation(line: 895, column: 10, scope: !5056)
!5068 = !DILocation(line: 895, column: 18, scope: !5056)
!5069 = !DILocation(line: 895, column: 21, scope: !5056)
!5070 = !DILocation(line: 897, column: 3, scope: !5056)
!5071 = !DILocation(line: 892, column: 23, scope: !5052)
!5072 = !DILocation(line: 892, column: 3, scope: !5052)
!5073 = distinct !{!5073, !5054, !5074}
!5074 = !DILocation(line: 897, column: 3, scope: !5049)
!5075 = !DILocation(line: 899, column: 27, scope: !5007)
!5076 = !DILocation(line: 899, column: 9, scope: !5007)
!5077 = !DILocation(line: 899, column: 7, scope: !5007)
!5078 = !DILocation(line: 900, column: 10, scope: !5007)
!5079 = !DILocation(line: 900, column: 14, scope: !5007)
!5080 = !DILocation(line: 900, column: 24, scope: !5007)
!5081 = !DILocation(line: 900, column: 28, scope: !5007)
!5082 = !DILocation(line: 900, column: 36, scope: !5007)
!5083 = !DILocation(line: 900, column: 20, scope: !5007)
!5084 = !DILocation(line: 901, column: 28, scope: !5007)
!5085 = !DILocation(line: 901, column: 10, scope: !5007)
!5086 = !DILocation(line: 901, column: 57, scope: !5007)
!5087 = !DILocation(line: 901, column: 7, scope: !5007)
!5088 = !DILocation(line: 900, column: 9, scope: !5007)
!5089 = !DILocation(line: 900, column: 7, scope: !5007)
!5090 = !DILocation(line: 902, column: 10, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 902, column: 3)
!5092 = !DILocation(line: 902, column: 8, scope: !5091)
!5093 = !DILocation(line: 902, column: 15, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5091, file: !3, line: 902, column: 3)
!5095 = !DILocation(line: 902, column: 17, scope: !5094)
!5096 = !DILocation(line: 902, column: 3, scope: !5091)
!5097 = !DILocation(line: 903, column: 8, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 903, column: 8)
!5099 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 902, column: 27)
!5100 = !DILocation(line: 903, column: 8, scope: !5099)
!5101 = !DILocation(line: 904, column: 40, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 903, column: 37)
!5103 = !DILocation(line: 905, column: 22, scope: !5102)
!5104 = !DILocation(line: 905, column: 14, scope: !5102)
!5105 = !DILocation(line: 904, column: 22, scope: !5102)
!5106 = !DILocation(line: 905, column: 26, scope: !5102)
!5107 = !DILocation(line: 906, column: 11, scope: !5102)
!5108 = !DILocation(line: 906, column: 23, scope: !5102)
!5109 = !DILocation(line: 906, column: 21, scope: !5102)
!5110 = !DILocation(line: 906, column: 15, scope: !5102)
!5111 = !DILocation(line: 906, column: 27, scope: !5102)
!5112 = !DILocation(line: 906, column: 7, scope: !5102)
!5113 = !DILocation(line: 904, column: 21, scope: !5102)
!5114 = !DILocation(line: 904, column: 5, scope: !5102)
!5115 = !DILocation(line: 904, column: 11, scope: !5102)
!5116 = !DILocation(line: 904, column: 16, scope: !5102)
!5117 = !DILocation(line: 904, column: 19, scope: !5102)
!5118 = !DILocation(line: 907, column: 43, scope: !5102)
!5119 = !DILocation(line: 908, column: 24, scope: !5102)
!5120 = !DILocation(line: 908, column: 13, scope: !5102)
!5121 = !DILocation(line: 907, column: 25, scope: !5102)
!5122 = !DILocation(line: 907, column: 5, scope: !5102)
!5123 = !DILocation(line: 907, column: 11, scope: !5102)
!5124 = !DILocation(line: 907, column: 20, scope: !5102)
!5125 = !DILocation(line: 907, column: 23, scope: !5102)
!5126 = !DILocation(line: 909, column: 43, scope: !5102)
!5127 = !DILocation(line: 910, column: 24, scope: !5102)
!5128 = !DILocation(line: 910, column: 13, scope: !5102)
!5129 = !DILocation(line: 909, column: 25, scope: !5102)
!5130 = !DILocation(line: 909, column: 5, scope: !5102)
!5131 = !DILocation(line: 909, column: 11, scope: !5102)
!5132 = !DILocation(line: 909, column: 20, scope: !5102)
!5133 = !DILocation(line: 909, column: 23, scope: !5102)
!5134 = !DILocation(line: 911, column: 4, scope: !5102)
!5135 = !DILocation(line: 912, column: 3, scope: !5099)
!5136 = !DILocation(line: 902, column: 23, scope: !5094)
!5137 = !DILocation(line: 902, column: 3, scope: !5094)
!5138 = distinct !{!5138, !5096, !5139}
!5139 = !DILocation(line: 912, column: 3, scope: !5091)
!5140 = !DILocation(line: 914, column: 25, scope: !5007)
!5141 = !DILocation(line: 914, column: 7, scope: !5007)
!5142 = !DILocation(line: 914, column: 5, scope: !5007)
!5143 = !DILocation(line: 915, column: 23, scope: !5007)
!5144 = !DILocation(line: 915, column: 25, scope: !5007)
!5145 = !DILocation(line: 915, column: 31, scope: !5007)
!5146 = !DILocation(line: 915, column: 22, scope: !5007)
!5147 = !DILocation(line: 915, column: 3, scope: !5007)
!5148 = !DILocation(line: 915, column: 9, scope: !5007)
!5149 = !DILocation(line: 915, column: 20, scope: !5007)
!5150 = !DILocation(line: 916, column: 22, scope: !5007)
!5151 = !DILocation(line: 916, column: 24, scope: !5007)
!5152 = !DILocation(line: 916, column: 3, scope: !5007)
!5153 = !DILocation(line: 916, column: 9, scope: !5007)
!5154 = !DILocation(line: 916, column: 20, scope: !5007)
!5155 = !DILocation(line: 917, column: 36, scope: !5007)
!5156 = !DILocation(line: 917, column: 18, scope: !5007)
!5157 = !DILocation(line: 918, column: 23, scope: !5007)
!5158 = !DILocation(line: 918, column: 5, scope: !5007)
!5159 = !DILocation(line: 918, column: 48, scope: !5007)
!5160 = !DILocation(line: 917, column: 61, scope: !5007)
!5161 = !DILocation(line: 917, column: 3, scope: !5007)
!5162 = !DILocation(line: 917, column: 9, scope: !5007)
!5163 = !DILocation(line: 917, column: 16, scope: !5007)
!5164 = !DILocation(line: 921, column: 8, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 921, column: 7)
!5166 = !DILocation(line: 921, column: 14, scope: !5165)
!5167 = !DILocation(line: 921, column: 21, scope: !5165)
!5168 = !DILocation(line: 921, column: 24, scope: !5165)
!5169 = !DILocation(line: 921, column: 30, scope: !5165)
!5170 = !DILocation(line: 921, column: 7, scope: !5007)
!5171 = !DILocation(line: 922, column: 4, scope: !5165)
!5172 = !DILocation(line: 922, column: 10, scope: !5165)
!5173 = !DILocation(line: 922, column: 17, scope: !5165)
!5174 = !DILocation(line: 923, column: 12, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 923, column: 12)
!5176 = !DILocation(line: 923, column: 18, scope: !5175)
!5177 = !DILocation(line: 923, column: 25, scope: !5175)
!5178 = !DILocation(line: 923, column: 29, scope: !5175)
!5179 = !DILocation(line: 923, column: 35, scope: !5175)
!5180 = !DILocation(line: 923, column: 12, scope: !5165)
!5181 = !DILocation(line: 924, column: 4, scope: !5175)
!5182 = !DILocation(line: 924, column: 10, scope: !5175)
!5183 = !DILocation(line: 924, column: 17, scope: !5175)
!5184 = !DILocation(line: 926, column: 8, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 926, column: 7)
!5186 = !DILocation(line: 926, column: 14, scope: !5185)
!5187 = !DILocation(line: 926, column: 21, scope: !5185)
!5188 = !DILocation(line: 926, column: 24, scope: !5185)
!5189 = !DILocation(line: 926, column: 30, scope: !5185)
!5190 = !DILocation(line: 926, column: 7, scope: !5007)
!5191 = !DILocation(line: 927, column: 4, scope: !5185)
!5192 = !DILocation(line: 927, column: 10, scope: !5185)
!5193 = !DILocation(line: 927, column: 17, scope: !5185)
!5194 = !DILocation(line: 928, column: 12, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 928, column: 12)
!5196 = !DILocation(line: 928, column: 18, scope: !5195)
!5197 = !DILocation(line: 928, column: 25, scope: !5195)
!5198 = !DILocation(line: 928, column: 29, scope: !5195)
!5199 = !DILocation(line: 928, column: 35, scope: !5195)
!5200 = !DILocation(line: 928, column: 12, scope: !5185)
!5201 = !DILocation(line: 929, column: 4, scope: !5195)
!5202 = !DILocation(line: 929, column: 10, scope: !5195)
!5203 = !DILocation(line: 929, column: 17, scope: !5195)
!5204 = !DILocation(line: 931, column: 24, scope: !5007)
!5205 = !DILocation(line: 931, column: 3, scope: !5007)
!5206 = !DILocation(line: 931, column: 9, scope: !5007)
!5207 = !DILocation(line: 931, column: 22, scope: !5007)
!5208 = !DILocation(line: 932, column: 3, scope: !5007)
!5209 = !DILocation(line: 932, column: 9, scope: !5007)
!5210 = !DILocation(line: 932, column: 15, scope: !5007)
!5211 = !DILocation(line: 933, column: 2, scope: !5007)
!5212 = !DILocation(line: 935, column: 16, scope: !4983)
!5213 = !DILocation(line: 935, column: 22, scope: !4983)
!5214 = !DILocation(line: 935, column: 2, scope: !4983)
!5215 = !DILocation(line: 937, column: 9, scope: !4983)
!5216 = !DILocation(line: 937, column: 2, scope: !4983)
!5217 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !5218, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!108, !3623}
!5220 = !DILocalVariable(name: "dev", arg: 1, scope: !5217, file: !73, line: 655, type: !3623)
!5221 = !DILocation(line: 655, column: 58, scope: !5217)
!5222 = !DILocation(line: 657, column: 9, scope: !5217)
!5223 = !DILocation(line: 657, column: 14, scope: !5217)
!5224 = !DILocation(line: 657, column: 2, scope: !5217)
!5225 = distinct !DISubprogram(name: "fan_min_show", scope: !3, file: !3, line: 503, type: !140, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5226 = !DILocalVariable(name: "dev", arg: 1, scope: !5225, file: !3, line: 503, type: !147)
!5227 = !DILocation(line: 503, column: 44, scope: !5225)
!5228 = !DILocalVariable(name: "attr", arg: 2, scope: !5225, file: !3, line: 503, type: !3839)
!5229 = !DILocation(line: 503, column: 74, scope: !5225)
!5230 = !DILocalVariable(name: "buf", arg: 3, scope: !5225, file: !3, line: 504, type: !210)
!5231 = !DILocation(line: 504, column: 14, scope: !5225)
!5232 = !DILocalVariable(name: "sensor_attr", scope: !5225, file: !3, line: 506, type: !121)
!5233 = !DILocation(line: 506, column: 34, scope: !5225)
!5234 = !DILocalVariable(name: "__mptr", scope: !5235, file: !3, line: 506, type: !108)
!5235 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 506, column: 48)
!5236 = !DILocation(line: 506, column: 48, scope: !5235)
!5237 = !DILocation(line: 506, column: 48, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 506, column: 48)
!5239 = !DILocalVariable(name: "nr", scope: !5225, file: !3, line: 507, type: !120)
!5240 = !DILocation(line: 507, column: 6, scope: !5225)
!5241 = !DILocation(line: 507, column: 11, scope: !5225)
!5242 = !DILocation(line: 507, column: 24, scope: !5225)
!5243 = !DILocalVariable(name: "data", scope: !5225, file: !3, line: 508, type: !4600)
!5244 = !DILocation(line: 508, column: 22, scope: !5225)
!5245 = !DILocation(line: 508, column: 50, scope: !5225)
!5246 = !DILocation(line: 508, column: 29, scope: !5225)
!5247 = !DILocation(line: 509, column: 17, scope: !5225)
!5248 = !DILocation(line: 509, column: 30, scope: !5225)
!5249 = !DILocation(line: 509, column: 9, scope: !5225)
!5250 = !DILocation(line: 509, column: 2, scope: !5225)
!5251 = distinct !DISubprogram(name: "fan_min_store", scope: !3, file: !3, line: 522, type: !3842, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5252 = !DILocalVariable(name: "dev", arg: 1, scope: !5251, file: !3, line: 522, type: !147)
!5253 = !DILocation(line: 522, column: 45, scope: !5251)
!5254 = !DILocalVariable(name: "attr", arg: 2, scope: !5251, file: !3, line: 523, type: !3839)
!5255 = !DILocation(line: 523, column: 34, scope: !5251)
!5256 = !DILocalVariable(name: "buf", arg: 3, scope: !5251, file: !3, line: 523, type: !133)
!5257 = !DILocation(line: 523, column: 52, scope: !5251)
!5258 = !DILocalVariable(name: "count", arg: 4, scope: !5251, file: !3, line: 524, type: !245)
!5259 = !DILocation(line: 524, column: 16, scope: !5251)
!5260 = !DILocalVariable(name: "sensor_attr", scope: !5251, file: !3, line: 526, type: !121)
!5261 = !DILocation(line: 526, column: 34, scope: !5251)
!5262 = !DILocalVariable(name: "__mptr", scope: !5263, file: !3, line: 526, type: !108)
!5263 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 526, column: 48)
!5264 = !DILocation(line: 526, column: 48, scope: !5263)
!5265 = !DILocation(line: 526, column: 48, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 526, column: 48)
!5267 = !DILocalVariable(name: "nr", scope: !5251, file: !3, line: 527, type: !120)
!5268 = !DILocation(line: 527, column: 6, scope: !5251)
!5269 = !DILocation(line: 527, column: 11, scope: !5251)
!5270 = !DILocation(line: 527, column: 24, scope: !5251)
!5271 = !DILocalVariable(name: "data", scope: !5251, file: !3, line: 528, type: !4600)
!5272 = !DILocation(line: 528, column: 22, scope: !5251)
!5273 = !DILocation(line: 528, column: 45, scope: !5251)
!5274 = !DILocation(line: 528, column: 29, scope: !5251)
!5275 = !DILocalVariable(name: "val", scope: !5251, file: !3, line: 529, type: !117)
!5276 = !DILocation(line: 529, column: 16, scope: !5251)
!5277 = !DILocalVariable(name: "err", scope: !5251, file: !3, line: 530, type: !120)
!5278 = !DILocation(line: 530, column: 6, scope: !5251)
!5279 = !DILocation(line: 532, column: 17, scope: !5251)
!5280 = !DILocation(line: 532, column: 8, scope: !5251)
!5281 = !DILocation(line: 532, column: 6, scope: !5251)
!5282 = !DILocation(line: 533, column: 6, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 533, column: 6)
!5284 = !DILocation(line: 533, column: 6, scope: !5251)
!5285 = !DILocation(line: 534, column: 10, scope: !5283)
!5286 = !DILocation(line: 534, column: 3, scope: !5283)
!5287 = !DILocation(line: 536, column: 14, scope: !5251)
!5288 = !DILocation(line: 536, column: 20, scope: !5251)
!5289 = !DILocation(line: 536, column: 2, scope: !5251)
!5290 = !DILocation(line: 537, column: 33, scope: !5251)
!5291 = !DILocation(line: 537, column: 38, scope: !5251)
!5292 = !DILocation(line: 537, column: 22, scope: !5251)
!5293 = !DILocation(line: 537, column: 2, scope: !5251)
!5294 = !DILocation(line: 537, column: 8, scope: !5251)
!5295 = !DILocation(line: 537, column: 16, scope: !5251)
!5296 = !DILocation(line: 537, column: 20, scope: !5251)
!5297 = !DILocation(line: 538, column: 21, scope: !5251)
!5298 = !DILocation(line: 538, column: 27, scope: !5251)
!5299 = !DILocation(line: 538, column: 51, scope: !5251)
!5300 = !DILocation(line: 538, column: 57, scope: !5251)
!5301 = !DILocation(line: 538, column: 65, scope: !5251)
!5302 = !DILocation(line: 538, column: 2, scope: !5251)
!5303 = !DILocation(line: 539, column: 16, scope: !5251)
!5304 = !DILocation(line: 539, column: 22, scope: !5251)
!5305 = !DILocation(line: 539, column: 2, scope: !5251)
!5306 = !DILocation(line: 540, column: 9, scope: !5251)
!5307 = !DILocation(line: 540, column: 2, scope: !5251)
!5308 = !DILocation(line: 541, column: 1, scope: !5251)
!5309 = distinct !DISubprogram(name: "kstrtoul", scope: !5310, file: !5310, line: 351, type: !5311, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5310 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!5311 = !DISubroutineType(types: !5312)
!5312 = !{!120, !133, !7, !3726}
!5313 = !DILocalVariable(name: "s", arg: 1, scope: !5309, file: !5310, line: 351, type: !133)
!5314 = !DILocation(line: 351, column: 53, scope: !5309)
!5315 = !DILocalVariable(name: "base", arg: 2, scope: !5309, file: !5310, line: 351, type: !7)
!5316 = !DILocation(line: 351, column: 69, scope: !5309)
!5317 = !DILocalVariable(name: "res", arg: 3, scope: !5309, file: !5310, line: 351, type: !3726)
!5318 = !DILocation(line: 351, column: 90, scope: !5309)
!5319 = !DILocation(line: 359, column: 20, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5309, file: !5310, line: 357, column: 6)
!5321 = !DILocation(line: 359, column: 23, scope: !5320)
!5322 = !DILocation(line: 359, column: 51, scope: !5320)
!5323 = !DILocation(line: 359, column: 10, scope: !5320)
!5324 = !DILocation(line: 359, column: 3, scope: !5320)
!5325 = distinct !DISubprogram(name: "FAN_TO_REG", scope: !3, file: !3, line: 133, type: !5326, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5326 = !DISubroutineType(types: !5327)
!5327 = !{!1271, !146, !120}
!5328 = !DILocalVariable(name: "rpm", arg: 1, scope: !5325, file: !3, line: 133, type: !146)
!5329 = !DILocation(line: 133, column: 34, scope: !5325)
!5330 = !DILocalVariable(name: "div", arg: 2, scope: !5325, file: !3, line: 133, type: !120)
!5331 = !DILocation(line: 133, column: 43, scope: !5325)
!5332 = !DILocation(line: 135, column: 6, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5325, file: !3, line: 135, column: 6)
!5334 = !DILocation(line: 135, column: 10, scope: !5333)
!5335 = !DILocation(line: 135, column: 15, scope: !5333)
!5336 = !DILocation(line: 135, column: 18, scope: !5333)
!5337 = !DILocation(line: 135, column: 22, scope: !5333)
!5338 = !DILocation(line: 135, column: 6, scope: !5325)
!5339 = !DILocation(line: 136, column: 3, scope: !5333)
!5340 = !DILocalVariable(name: "__UNIQUE_ID___x242", scope: !5341, file: !3, line: 137, type: !146)
!5341 = distinct !DILexicalBlock(scope: !5325, file: !3, line: 137, column: 9)
!5342 = !DILocation(line: 137, column: 9, scope: !5341)
!5343 = !DILocalVariable(name: "__UNIQUE_ID___x240", scope: !5344, file: !3, line: 137, type: !146)
!5344 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 137, column: 9)
!5345 = !DILocation(line: 137, column: 9, scope: !5344)
!5346 = !DILocalVariable(name: "__UNIQUE_ID___y241", scope: !5344, file: !3, line: 137, type: !146)
!5347 = !DILocalVariable(name: "__UNIQUE_ID___y243", scope: !5341, file: !3, line: 137, type: !146)
!5348 = !DILocation(line: 137, column: 9, scope: !5325)
!5349 = !DILocation(line: 137, column: 2, scope: !5325)
!5350 = !DILocation(line: 138, column: 1, scope: !5325)
!5351 = distinct !DISubprogram(name: "fan_div_show", scope: !3, file: !3, line: 513, type: !140, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5352 = !DILocalVariable(name: "dev", arg: 1, scope: !5351, file: !3, line: 513, type: !147)
!5353 = !DILocation(line: 513, column: 44, scope: !5351)
!5354 = !DILocalVariable(name: "attr", arg: 2, scope: !5351, file: !3, line: 513, type: !3839)
!5355 = !DILocation(line: 513, column: 74, scope: !5351)
!5356 = !DILocalVariable(name: "buf", arg: 3, scope: !5351, file: !3, line: 514, type: !210)
!5357 = !DILocation(line: 514, column: 14, scope: !5351)
!5358 = !DILocalVariable(name: "sensor_attr", scope: !5351, file: !3, line: 516, type: !121)
!5359 = !DILocation(line: 516, column: 34, scope: !5351)
!5360 = !DILocalVariable(name: "__mptr", scope: !5361, file: !3, line: 516, type: !108)
!5361 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 516, column: 48)
!5362 = !DILocation(line: 516, column: 48, scope: !5361)
!5363 = !DILocation(line: 516, column: 48, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 516, column: 48)
!5365 = !DILocalVariable(name: "nr", scope: !5351, file: !3, line: 517, type: !120)
!5366 = !DILocation(line: 517, column: 6, scope: !5351)
!5367 = !DILocation(line: 517, column: 11, scope: !5351)
!5368 = !DILocation(line: 517, column: 24, scope: !5351)
!5369 = !DILocalVariable(name: "data", scope: !5351, file: !3, line: 518, type: !4600)
!5370 = !DILocation(line: 518, column: 22, scope: !5351)
!5371 = !DILocation(line: 518, column: 50, scope: !5351)
!5372 = !DILocation(line: 518, column: 29, scope: !5351)
!5373 = !DILocation(line: 519, column: 17, scope: !5351)
!5374 = !DILocation(line: 519, column: 30, scope: !5351)
!5375 = !DILocation(line: 519, column: 9, scope: !5351)
!5376 = !DILocation(line: 519, column: 2, scope: !5351)
!5377 = distinct !DISubprogram(name: "fan_div_store", scope: !3, file: !3, line: 543, type: !3842, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5378 = !DILocalVariable(name: "dev", arg: 1, scope: !5377, file: !3, line: 543, type: !147)
!5379 = !DILocation(line: 543, column: 45, scope: !5377)
!5380 = !DILocalVariable(name: "attr", arg: 2, scope: !5377, file: !3, line: 544, type: !3839)
!5381 = !DILocation(line: 544, column: 34, scope: !5377)
!5382 = !DILocalVariable(name: "buf", arg: 3, scope: !5377, file: !3, line: 544, type: !133)
!5383 = !DILocation(line: 544, column: 52, scope: !5377)
!5384 = !DILocalVariable(name: "count", arg: 4, scope: !5377, file: !3, line: 545, type: !245)
!5385 = !DILocation(line: 545, column: 16, scope: !5377)
!5386 = !DILocalVariable(name: "data", scope: !5377, file: !3, line: 547, type: !4600)
!5387 = !DILocation(line: 547, column: 22, scope: !5377)
!5388 = !DILocation(line: 547, column: 45, scope: !5377)
!5389 = !DILocation(line: 547, column: 29, scope: !5377)
!5390 = !DILocalVariable(name: "sensor_attr", scope: !5377, file: !3, line: 548, type: !121)
!5391 = !DILocation(line: 548, column: 34, scope: !5377)
!5392 = !DILocalVariable(name: "__mptr", scope: !5393, file: !3, line: 548, type: !108)
!5393 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 548, column: 48)
!5394 = !DILocation(line: 548, column: 48, scope: !5393)
!5395 = !DILocation(line: 548, column: 48, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 548, column: 48)
!5397 = !DILocalVariable(name: "val", scope: !5377, file: !3, line: 549, type: !117)
!5398 = !DILocation(line: 549, column: 16, scope: !5377)
!5399 = !DILocalVariable(name: "nr", scope: !5377, file: !3, line: 550, type: !120)
!5400 = !DILocation(line: 550, column: 6, scope: !5377)
!5401 = !DILocation(line: 550, column: 11, scope: !5377)
!5402 = !DILocation(line: 550, column: 24, scope: !5377)
!5403 = !DILocalVariable(name: "old", scope: !5377, file: !3, line: 551, type: !120)
!5404 = !DILocation(line: 551, column: 6, scope: !5377)
!5405 = !DILocation(line: 551, column: 30, scope: !5377)
!5406 = !DILocation(line: 551, column: 12, scope: !5377)
!5407 = !DILocalVariable(name: "min", scope: !5377, file: !3, line: 552, type: !146)
!5408 = !DILocation(line: 552, column: 7, scope: !5377)
!5409 = !DILocation(line: 552, column: 13, scope: !5377)
!5410 = !DILocalVariable(name: "err", scope: !5377, file: !3, line: 554, type: !120)
!5411 = !DILocation(line: 554, column: 6, scope: !5377)
!5412 = !DILocation(line: 556, column: 17, scope: !5377)
!5413 = !DILocation(line: 556, column: 8, scope: !5377)
!5414 = !DILocation(line: 556, column: 6, scope: !5377)
!5415 = !DILocation(line: 557, column: 6, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 557, column: 6)
!5417 = !DILocation(line: 557, column: 6, scope: !5377)
!5418 = !DILocation(line: 558, column: 10, scope: !5416)
!5419 = !DILocation(line: 558, column: 3, scope: !5416)
!5420 = !DILocation(line: 560, column: 14, scope: !5377)
!5421 = !DILocation(line: 560, column: 20, scope: !5377)
!5422 = !DILocation(line: 560, column: 2, scope: !5377)
!5423 = !DILocation(line: 561, column: 10, scope: !5377)
!5424 = !DILocation(line: 561, column: 2, scope: !5377)
!5425 = !DILocation(line: 563, column: 3, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 561, column: 15)
!5427 = !DILocation(line: 563, column: 9, scope: !5426)
!5428 = !DILocation(line: 563, column: 17, scope: !5426)
!5429 = !DILocation(line: 563, column: 21, scope: !5426)
!5430 = !DILocation(line: 564, column: 3, scope: !5426)
!5431 = !DILocation(line: 566, column: 3, scope: !5426)
!5432 = !DILocation(line: 566, column: 9, scope: !5426)
!5433 = !DILocation(line: 566, column: 17, scope: !5426)
!5434 = !DILocation(line: 566, column: 21, scope: !5426)
!5435 = !DILocation(line: 567, column: 3, scope: !5426)
!5436 = !DILocation(line: 569, column: 3, scope: !5426)
!5437 = !DILocation(line: 569, column: 9, scope: !5426)
!5438 = !DILocation(line: 569, column: 17, scope: !5426)
!5439 = !DILocation(line: 569, column: 21, scope: !5426)
!5440 = !DILocation(line: 570, column: 3, scope: !5426)
!5441 = !DILocation(line: 572, column: 3, scope: !5426)
!5442 = !DILocation(line: 572, column: 9, scope: !5426)
!5443 = !DILocation(line: 572, column: 17, scope: !5426)
!5444 = !DILocation(line: 572, column: 21, scope: !5426)
!5445 = !DILocation(line: 573, column: 3, scope: !5426)
!5446 = !DILocation(line: 575, column: 3, scope: !5426)
!5447 = !DILocation(line: 578, column: 17, scope: !5426)
!5448 = !DILocation(line: 578, column: 23, scope: !5426)
!5449 = !DILocation(line: 578, column: 3, scope: !5426)
!5450 = !DILocation(line: 579, column: 3, scope: !5426)
!5451 = !DILocation(line: 583, column: 33, scope: !5377)
!5452 = !DILocation(line: 583, column: 38, scope: !5377)
!5453 = !DILocation(line: 583, column: 22, scope: !5377)
!5454 = !DILocation(line: 583, column: 2, scope: !5377)
!5455 = !DILocation(line: 583, column: 8, scope: !5377)
!5456 = !DILocation(line: 583, column: 16, scope: !5377)
!5457 = !DILocation(line: 583, column: 20, scope: !5377)
!5458 = !DILocation(line: 584, column: 21, scope: !5377)
!5459 = !DILocation(line: 584, column: 27, scope: !5377)
!5460 = !DILocation(line: 584, column: 51, scope: !5377)
!5461 = !DILocation(line: 584, column: 57, scope: !5377)
!5462 = !DILocation(line: 584, column: 65, scope: !5377)
!5463 = !DILocation(line: 584, column: 2, scope: !5377)
!5464 = !DILocation(line: 586, column: 9, scope: !5377)
!5465 = !DILocation(line: 586, column: 13, scope: !5377)
!5466 = !DILocation(line: 586, column: 24, scope: !5377)
!5467 = !DILocation(line: 586, column: 30, scope: !5377)
!5468 = !DILocation(line: 586, column: 41, scope: !5377)
!5469 = !DILocation(line: 586, column: 21, scope: !5377)
!5470 = !DILocation(line: 586, column: 50, scope: !5377)
!5471 = !DILocation(line: 586, column: 56, scope: !5377)
!5472 = !DILocation(line: 586, column: 67, scope: !5377)
!5473 = !DILocation(line: 586, column: 47, scope: !5377)
!5474 = !DILocation(line: 586, column: 6, scope: !5377)
!5475 = !DILocation(line: 587, column: 21, scope: !5377)
!5476 = !DILocation(line: 587, column: 46, scope: !5377)
!5477 = !DILocation(line: 587, column: 2, scope: !5377)
!5478 = !DILocation(line: 588, column: 16, scope: !5377)
!5479 = !DILocation(line: 588, column: 22, scope: !5377)
!5480 = !DILocation(line: 588, column: 2, scope: !5377)
!5481 = !DILocation(line: 589, column: 9, scope: !5377)
!5482 = !DILocation(line: 589, column: 2, scope: !5377)
!5483 = !DILocation(line: 590, column: 1, scope: !5377)
!5484 = distinct !DISubprogram(name: "alarm_show", scope: !3, file: !3, line: 608, type: !140, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5485 = !DILocalVariable(name: "dev", arg: 1, scope: !5484, file: !3, line: 608, type: !147)
!5486 = !DILocation(line: 608, column: 42, scope: !5484)
!5487 = !DILocalVariable(name: "attr", arg: 2, scope: !5484, file: !3, line: 608, type: !3839)
!5488 = !DILocation(line: 608, column: 72, scope: !5484)
!5489 = !DILocalVariable(name: "buf", arg: 3, scope: !5484, file: !3, line: 609, type: !210)
!5490 = !DILocation(line: 609, column: 12, scope: !5484)
!5491 = !DILocalVariable(name: "bitnr", scope: !5484, file: !3, line: 611, type: !120)
!5492 = !DILocation(line: 611, column: 6, scope: !5484)
!5493 = !DILocalVariable(name: "__mptr", scope: !5494, file: !3, line: 611, type: !108)
!5494 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 611, column: 14)
!5495 = !DILocation(line: 611, column: 14, scope: !5494)
!5496 = !DILocation(line: 611, column: 14, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5494, file: !3, line: 611, column: 14)
!5498 = !DILocation(line: 611, column: 40, scope: !5484)
!5499 = !DILocalVariable(name: "data", scope: !5484, file: !3, line: 612, type: !4600)
!5500 = !DILocation(line: 612, column: 22, scope: !5484)
!5501 = !DILocation(line: 612, column: 50, scope: !5484)
!5502 = !DILocation(line: 612, column: 29, scope: !5484)
!5503 = !DILocation(line: 613, column: 17, scope: !5484)
!5504 = !DILocation(line: 613, column: 31, scope: !5484)
!5505 = !DILocation(line: 613, column: 37, scope: !5484)
!5506 = !DILocation(line: 613, column: 47, scope: !5484)
!5507 = !DILocation(line: 613, column: 44, scope: !5484)
!5508 = !DILocation(line: 613, column: 54, scope: !5484)
!5509 = !DILocation(line: 613, column: 9, scope: !5484)
!5510 = !DILocation(line: 613, column: 2, scope: !5484)
!5511 = distinct !DISubprogram(name: "alarms_show", scope: !3, file: !3, line: 600, type: !140, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5512 = !DILocalVariable(name: "dev", arg: 1, scope: !5511, file: !3, line: 600, type: !147)
!5513 = !DILocation(line: 600, column: 43, scope: !5511)
!5514 = !DILocalVariable(name: "attr", arg: 2, scope: !5511, file: !3, line: 600, type: !3839)
!5515 = !DILocation(line: 600, column: 73, scope: !5511)
!5516 = !DILocalVariable(name: "buf", arg: 3, scope: !5511, file: !3, line: 601, type: !210)
!5517 = !DILocation(line: 601, column: 13, scope: !5511)
!5518 = !DILocalVariable(name: "data", scope: !5511, file: !3, line: 603, type: !4600)
!5519 = !DILocation(line: 603, column: 22, scope: !5511)
!5520 = !DILocation(line: 603, column: 50, scope: !5511)
!5521 = !DILocation(line: 603, column: 29, scope: !5511)
!5522 = !DILocation(line: 604, column: 17, scope: !5511)
!5523 = !DILocation(line: 604, column: 30, scope: !5511)
!5524 = !DILocation(line: 604, column: 36, scope: !5511)
!5525 = !DILocation(line: 604, column: 9, scope: !5511)
!5526 = !DILocation(line: 604, column: 2, scope: !5511)
!5527 = distinct !DISubprogram(name: "name_show", scope: !3, file: !3, line: 630, type: !140, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5528 = !DILocalVariable(name: "dev", arg: 1, scope: !5527, file: !3, line: 630, type: !147)
!5529 = !DILocation(line: 630, column: 41, scope: !5527)
!5530 = !DILocalVariable(name: "devattr", arg: 2, scope: !5527, file: !3, line: 631, type: !3839)
!5531 = !DILocation(line: 631, column: 6, scope: !5527)
!5532 = !DILocalVariable(name: "buf", arg: 3, scope: !5527, file: !3, line: 631, type: !210)
!5533 = !DILocation(line: 631, column: 21, scope: !5527)
!5534 = !DILocalVariable(name: "data", scope: !5527, file: !3, line: 633, type: !4600)
!5535 = !DILocation(line: 633, column: 22, scope: !5527)
!5536 = !DILocation(line: 633, column: 45, scope: !5527)
!5537 = !DILocation(line: 633, column: 29, scope: !5527)
!5538 = !DILocation(line: 634, column: 17, scope: !5527)
!5539 = !DILocation(line: 634, column: 30, scope: !5527)
!5540 = !DILocation(line: 634, column: 36, scope: !5527)
!5541 = !DILocation(line: 634, column: 9, scope: !5527)
!5542 = !DILocation(line: 634, column: 2, scope: !5527)
!5543 = distinct !DISubprogram(name: "inb_p", scope: !4941, file: !4941, line: 334, type: !5544, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5544 = !DISubroutineType(types: !5545)
!5545 = !{!348, !120}
!5546 = !DILocalVariable(name: "port", arg: 1, scope: !5543, file: !4941, line: 334, type: !120)
!5547 = !DILocation(line: 334, column: 1, scope: !5543)
!5548 = !DILocalVariable(name: "value", scope: !5543, file: !4941, line: 334, type: !348)
!5549 = distinct !DISubprogram(name: "inb", scope: !4941, file: !4941, line: 334, type: !5544, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5550 = !DILocalVariable(name: "port", arg: 1, scope: !5549, file: !4941, line: 334, type: !120)
!5551 = !DILocation(line: 334, column: 1, scope: !5549)
!5552 = !DILocalVariable(name: "value", scope: !5549, file: !4941, line: 334, type: !348)
!5553 = !{i32 -2143304035}
!5554 = distinct !DISubprogram(name: "temp1_input_show", scope: !3, file: !3, line: 341, type: !140, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5555 = !DILocalVariable(name: "dev", arg: 1, scope: !5554, file: !3, line: 341, type: !147)
!5556 = !DILocation(line: 341, column: 48, scope: !5554)
!5557 = !DILocalVariable(name: "attr", arg: 2, scope: !5554, file: !3, line: 342, type: !3839)
!5558 = !DILocation(line: 342, column: 30, scope: !5554)
!5559 = !DILocalVariable(name: "buf", arg: 3, scope: !5554, file: !3, line: 342, type: !210)
!5560 = !DILocation(line: 342, column: 42, scope: !5554)
!5561 = !DILocalVariable(name: "data", scope: !5554, file: !3, line: 344, type: !4600)
!5562 = !DILocation(line: 344, column: 22, scope: !5554)
!5563 = !DILocation(line: 344, column: 50, scope: !5554)
!5564 = !DILocation(line: 344, column: 29, scope: !5554)
!5565 = !DILocation(line: 345, column: 17, scope: !5554)
!5566 = !DILocation(line: 345, column: 30, scope: !5554)
!5567 = !DILocation(line: 345, column: 36, scope: !5554)
!5568 = !DILocation(line: 345, column: 44, scope: !5554)
!5569 = !DILocation(line: 345, column: 9, scope: !5554)
!5570 = !DILocation(line: 345, column: 2, scope: !5554)
!5571 = distinct !DISubprogram(name: "temp1_max_hyst_show", scope: !3, file: !3, line: 355, type: !140, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5572 = !DILocalVariable(name: "dev", arg: 1, scope: !5571, file: !3, line: 355, type: !147)
!5573 = !DILocation(line: 355, column: 51, scope: !5571)
!5574 = !DILocalVariable(name: "attr", arg: 2, scope: !5571, file: !3, line: 356, type: !3839)
!5575 = !DILocation(line: 356, column: 33, scope: !5571)
!5576 = !DILocalVariable(name: "buf", arg: 3, scope: !5571, file: !3, line: 356, type: !210)
!5577 = !DILocation(line: 356, column: 45, scope: !5571)
!5578 = !DILocalVariable(name: "data", scope: !5571, file: !3, line: 358, type: !4600)
!5579 = !DILocation(line: 358, column: 22, scope: !5571)
!5580 = !DILocation(line: 358, column: 50, scope: !5571)
!5581 = !DILocation(line: 358, column: 29, scope: !5571)
!5582 = !DILocation(line: 359, column: 17, scope: !5571)
!5583 = !DILocation(line: 359, column: 30, scope: !5571)
!5584 = !DILocation(line: 359, column: 36, scope: !5571)
!5585 = !DILocation(line: 359, column: 48, scope: !5571)
!5586 = !DILocation(line: 359, column: 9, scope: !5571)
!5587 = !DILocation(line: 359, column: 2, scope: !5571)
!5588 = distinct !DISubprogram(name: "temp1_max_hyst_store", scope: !3, file: !3, line: 380, type: !3842, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5589 = !DILocalVariable(name: "dev", arg: 1, scope: !5588, file: !3, line: 380, type: !147)
!5590 = !DILocation(line: 380, column: 52, scope: !5588)
!5591 = !DILocalVariable(name: "attr", arg: 2, scope: !5588, file: !3, line: 381, type: !3839)
!5592 = !DILocation(line: 381, column: 34, scope: !5588)
!5593 = !DILocalVariable(name: "buf", arg: 3, scope: !5588, file: !3, line: 382, type: !133)
!5594 = !DILocation(line: 382, column: 21, scope: !5588)
!5595 = !DILocalVariable(name: "count", arg: 4, scope: !5588, file: !3, line: 382, type: !245)
!5596 = !DILocation(line: 382, column: 33, scope: !5588)
!5597 = !DILocalVariable(name: "data", scope: !5588, file: !3, line: 384, type: !4600)
!5598 = !DILocation(line: 384, column: 22, scope: !5588)
!5599 = !DILocation(line: 384, column: 45, scope: !5588)
!5600 = !DILocation(line: 384, column: 29, scope: !5588)
!5601 = !DILocalVariable(name: "val", scope: !5588, file: !3, line: 385, type: !146)
!5602 = !DILocation(line: 385, column: 7, scope: !5588)
!5603 = !DILocalVariable(name: "err", scope: !5588, file: !3, line: 386, type: !120)
!5604 = !DILocation(line: 386, column: 6, scope: !5588)
!5605 = !DILocation(line: 388, column: 16, scope: !5588)
!5606 = !DILocation(line: 388, column: 8, scope: !5588)
!5607 = !DILocation(line: 388, column: 6, scope: !5588)
!5608 = !DILocation(line: 389, column: 6, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5588, file: !3, line: 389, column: 6)
!5610 = !DILocation(line: 389, column: 6, scope: !5588)
!5611 = !DILocation(line: 390, column: 10, scope: !5609)
!5612 = !DILocation(line: 390, column: 3, scope: !5609)
!5613 = !DILocation(line: 392, column: 14, scope: !5588)
!5614 = !DILocation(line: 392, column: 20, scope: !5588)
!5615 = !DILocation(line: 392, column: 2, scope: !5588)
!5616 = !DILocalVariable(name: "__UNIQUE_ID___x271", scope: !5617, file: !3, line: 393, type: !146)
!5617 = distinct !DILexicalBlock(scope: !5588, file: !3, line: 393, column: 22)
!5618 = !DILocation(line: 393, column: 22, scope: !5617)
!5619 = !DILocalVariable(name: "__UNIQUE_ID___x269", scope: !5620, file: !3, line: 393, type: !146)
!5620 = distinct !DILexicalBlock(scope: !5617, file: !3, line: 393, column: 22)
!5621 = !DILocation(line: 393, column: 22, scope: !5620)
!5622 = !DILocalVariable(name: "__UNIQUE_ID___y270", scope: !5620, file: !3, line: 393, type: !146)
!5623 = !DILocalVariable(name: "__UNIQUE_ID___y272", scope: !5617, file: !3, line: 393, type: !146)
!5624 = !DILocation(line: 393, column: 22, scope: !5588)
!5625 = !DILocation(line: 393, column: 2, scope: !5588)
!5626 = !DILocation(line: 393, column: 8, scope: !5588)
!5627 = !DILocation(line: 393, column: 20, scope: !5588)
!5628 = !DILocation(line: 394, column: 21, scope: !5588)
!5629 = !DILocation(line: 394, column: 27, scope: !5588)
!5630 = !DILocation(line: 394, column: 42, scope: !5588)
!5631 = !DILocation(line: 394, column: 48, scope: !5588)
!5632 = !DILocation(line: 394, column: 2, scope: !5588)
!5633 = !DILocation(line: 395, column: 16, scope: !5588)
!5634 = !DILocation(line: 395, column: 22, scope: !5588)
!5635 = !DILocation(line: 395, column: 2, scope: !5588)
!5636 = !DILocation(line: 396, column: 9, scope: !5588)
!5637 = !DILocation(line: 396, column: 2, scope: !5588)
!5638 = !DILocation(line: 397, column: 1, scope: !5588)
!5639 = distinct !DISubprogram(name: "kstrtol", scope: !5310, file: !5310, line: 379, type: !5640, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5640 = !DISubroutineType(types: !5641)
!5641 = !{!120, !133, !7, !5642}
!5642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!5643 = !DILocalVariable(name: "s", arg: 1, scope: !5639, file: !5310, line: 379, type: !133)
!5644 = !DILocation(line: 379, column: 52, scope: !5639)
!5645 = !DILocalVariable(name: "base", arg: 2, scope: !5639, file: !5310, line: 379, type: !7)
!5646 = !DILocation(line: 379, column: 68, scope: !5639)
!5647 = !DILocalVariable(name: "res", arg: 3, scope: !5639, file: !5310, line: 379, type: !5642)
!5648 = !DILocation(line: 379, column: 80, scope: !5639)
!5649 = !DILocation(line: 387, column: 19, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5639, file: !5310, line: 385, column: 6)
!5651 = !DILocation(line: 387, column: 22, scope: !5650)
!5652 = !DILocation(line: 387, column: 41, scope: !5650)
!5653 = !DILocation(line: 387, column: 10, scope: !5650)
!5654 = !DILocation(line: 387, column: 3, scope: !5650)
!5655 = distinct !DISubprogram(name: "temp1_max_show", scope: !3, file: !3, line: 348, type: !140, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5656 = !DILocalVariable(name: "dev", arg: 1, scope: !5655, file: !3, line: 348, type: !147)
!5657 = !DILocation(line: 348, column: 46, scope: !5655)
!5658 = !DILocalVariable(name: "attr", arg: 2, scope: !5655, file: !3, line: 348, type: !3839)
!5659 = !DILocation(line: 348, column: 76, scope: !5655)
!5660 = !DILocalVariable(name: "buf", arg: 3, scope: !5655, file: !3, line: 349, type: !210)
!5661 = !DILocation(line: 349, column: 9, scope: !5655)
!5662 = !DILocalVariable(name: "data", scope: !5655, file: !3, line: 351, type: !4600)
!5663 = !DILocation(line: 351, column: 22, scope: !5655)
!5664 = !DILocation(line: 351, column: 50, scope: !5655)
!5665 = !DILocation(line: 351, column: 29, scope: !5655)
!5666 = !DILocation(line: 352, column: 17, scope: !5655)
!5667 = !DILocation(line: 352, column: 30, scope: !5655)
!5668 = !DILocation(line: 352, column: 36, scope: !5655)
!5669 = !DILocation(line: 352, column: 48, scope: !5655)
!5670 = !DILocation(line: 352, column: 9, scope: !5655)
!5671 = !DILocation(line: 352, column: 2, scope: !5655)
!5672 = distinct !DISubprogram(name: "temp1_max_store", scope: !3, file: !3, line: 362, type: !3842, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5673 = !DILocalVariable(name: "dev", arg: 1, scope: !5672, file: !3, line: 362, type: !147)
!5674 = !DILocation(line: 362, column: 47, scope: !5672)
!5675 = !DILocalVariable(name: "attr", arg: 2, scope: !5672, file: !3, line: 363, type: !3839)
!5676 = !DILocation(line: 363, column: 36, scope: !5672)
!5677 = !DILocalVariable(name: "buf", arg: 3, scope: !5672, file: !3, line: 363, type: !133)
!5678 = !DILocation(line: 363, column: 54, scope: !5672)
!5679 = !DILocalVariable(name: "count", arg: 4, scope: !5672, file: !3, line: 364, type: !245)
!5680 = !DILocation(line: 364, column: 18, scope: !5672)
!5681 = !DILocalVariable(name: "data", scope: !5672, file: !3, line: 366, type: !4600)
!5682 = !DILocation(line: 366, column: 22, scope: !5672)
!5683 = !DILocation(line: 366, column: 45, scope: !5672)
!5684 = !DILocation(line: 366, column: 29, scope: !5672)
!5685 = !DILocalVariable(name: "val", scope: !5672, file: !3, line: 367, type: !146)
!5686 = !DILocation(line: 367, column: 7, scope: !5672)
!5687 = !DILocalVariable(name: "err", scope: !5672, file: !3, line: 368, type: !120)
!5688 = !DILocation(line: 368, column: 6, scope: !5672)
!5689 = !DILocation(line: 370, column: 16, scope: !5672)
!5690 = !DILocation(line: 370, column: 8, scope: !5672)
!5691 = !DILocation(line: 370, column: 6, scope: !5672)
!5692 = !DILocation(line: 371, column: 6, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 371, column: 6)
!5694 = !DILocation(line: 371, column: 6, scope: !5672)
!5695 = !DILocation(line: 372, column: 10, scope: !5693)
!5696 = !DILocation(line: 372, column: 3, scope: !5693)
!5697 = !DILocation(line: 374, column: 14, scope: !5672)
!5698 = !DILocation(line: 374, column: 20, scope: !5672)
!5699 = !DILocation(line: 374, column: 2, scope: !5672)
!5700 = !DILocalVariable(name: "__UNIQUE_ID___x267", scope: !5701, file: !3, line: 375, type: !146)
!5701 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 375, column: 22)
!5702 = !DILocation(line: 375, column: 22, scope: !5701)
!5703 = !DILocalVariable(name: "__UNIQUE_ID___x265", scope: !5704, file: !3, line: 375, type: !146)
!5704 = distinct !DILexicalBlock(scope: !5701, file: !3, line: 375, column: 22)
!5705 = !DILocation(line: 375, column: 22, scope: !5704)
!5706 = !DILocalVariable(name: "__UNIQUE_ID___y266", scope: !5704, file: !3, line: 375, type: !146)
!5707 = !DILocalVariable(name: "__UNIQUE_ID___y268", scope: !5701, file: !3, line: 375, type: !146)
!5708 = !DILocation(line: 375, column: 22, scope: !5672)
!5709 = !DILocation(line: 375, column: 2, scope: !5672)
!5710 = !DILocation(line: 375, column: 8, scope: !5672)
!5711 = !DILocation(line: 375, column: 20, scope: !5672)
!5712 = !DILocation(line: 376, column: 21, scope: !5672)
!5713 = !DILocation(line: 376, column: 27, scope: !5672)
!5714 = !DILocation(line: 376, column: 42, scope: !5672)
!5715 = !DILocation(line: 376, column: 48, scope: !5672)
!5716 = !DILocation(line: 376, column: 2, scope: !5672)
!5717 = !DILocation(line: 377, column: 16, scope: !5672)
!5718 = !DILocation(line: 377, column: 22, scope: !5672)
!5719 = !DILocation(line: 377, column: 2, scope: !5672)
!5720 = !DILocation(line: 378, column: 9, scope: !5672)
!5721 = !DILocation(line: 378, column: 2, scope: !5672)
!5722 = !DILocation(line: 379, column: 1, scope: !5672)
!5723 = distinct !DISubprogram(name: "temp_show", scope: !3, file: !3, line: 399, type: !140, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5724 = !DILocalVariable(name: "dev", arg: 1, scope: !5723, file: !3, line: 399, type: !147)
!5725 = !DILocation(line: 399, column: 41, scope: !5723)
!5726 = !DILocalVariable(name: "attr", arg: 2, scope: !5723, file: !3, line: 399, type: !3839)
!5727 = !DILocation(line: 399, column: 71, scope: !5723)
!5728 = !DILocalVariable(name: "buf", arg: 3, scope: !5723, file: !3, line: 400, type: !210)
!5729 = !DILocation(line: 400, column: 11, scope: !5723)
!5730 = !DILocalVariable(name: "sensor_attr", scope: !5723, file: !3, line: 402, type: !121)
!5731 = !DILocation(line: 402, column: 34, scope: !5723)
!5732 = !DILocalVariable(name: "__mptr", scope: !5733, file: !3, line: 402, type: !108)
!5733 = distinct !DILexicalBlock(scope: !5723, file: !3, line: 402, column: 48)
!5734 = !DILocation(line: 402, column: 48, scope: !5733)
!5735 = !DILocation(line: 402, column: 48, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 402, column: 48)
!5737 = !DILocalVariable(name: "nr", scope: !5723, file: !3, line: 403, type: !120)
!5738 = !DILocation(line: 403, column: 6, scope: !5723)
!5739 = !DILocation(line: 403, column: 11, scope: !5723)
!5740 = !DILocation(line: 403, column: 24, scope: !5723)
!5741 = !DILocalVariable(name: "data", scope: !5723, file: !3, line: 404, type: !4600)
!5742 = !DILocation(line: 404, column: 22, scope: !5723)
!5743 = !DILocation(line: 404, column: 50, scope: !5723)
!5744 = !DILocation(line: 404, column: 29, scope: !5723)
!5745 = !DILocation(line: 405, column: 17, scope: !5723)
!5746 = !DILocation(line: 405, column: 30, scope: !5723)
!5747 = !DILocation(line: 405, column: 9, scope: !5723)
!5748 = !DILocation(line: 405, column: 2, scope: !5723)
!5749 = distinct !DISubprogram(name: "temp_min_show", scope: !3, file: !3, line: 417, type: !140, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5750 = !DILocalVariable(name: "dev", arg: 1, scope: !5749, file: !3, line: 417, type: !147)
!5751 = !DILocation(line: 417, column: 45, scope: !5749)
!5752 = !DILocalVariable(name: "attr", arg: 2, scope: !5749, file: !3, line: 418, type: !3839)
!5753 = !DILocation(line: 418, column: 34, scope: !5749)
!5754 = !DILocalVariable(name: "buf", arg: 3, scope: !5749, file: !3, line: 418, type: !210)
!5755 = !DILocation(line: 418, column: 46, scope: !5749)
!5756 = !DILocalVariable(name: "sensor_attr", scope: !5749, file: !3, line: 420, type: !121)
!5757 = !DILocation(line: 420, column: 34, scope: !5749)
!5758 = !DILocalVariable(name: "__mptr", scope: !5759, file: !3, line: 420, type: !108)
!5759 = distinct !DILexicalBlock(scope: !5749, file: !3, line: 420, column: 48)
!5760 = !DILocation(line: 420, column: 48, scope: !5759)
!5761 = !DILocation(line: 420, column: 48, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 420, column: 48)
!5763 = !DILocalVariable(name: "nr", scope: !5749, file: !3, line: 421, type: !120)
!5764 = !DILocation(line: 421, column: 6, scope: !5749)
!5765 = !DILocation(line: 421, column: 11, scope: !5749)
!5766 = !DILocation(line: 421, column: 24, scope: !5749)
!5767 = !DILocalVariable(name: "data", scope: !5749, file: !3, line: 422, type: !4600)
!5768 = !DILocation(line: 422, column: 22, scope: !5749)
!5769 = !DILocation(line: 422, column: 50, scope: !5749)
!5770 = !DILocation(line: 422, column: 29, scope: !5749)
!5771 = !DILocation(line: 423, column: 17, scope: !5749)
!5772 = !DILocation(line: 423, column: 30, scope: !5749)
!5773 = !DILocation(line: 423, column: 9, scope: !5749)
!5774 = !DILocation(line: 423, column: 2, scope: !5749)
!5775 = distinct !DISubprogram(name: "temp_min_store", scope: !3, file: !3, line: 446, type: !3842, scopeLine: 449, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5776 = !DILocalVariable(name: "dev", arg: 1, scope: !5775, file: !3, line: 446, type: !147)
!5777 = !DILocation(line: 446, column: 46, scope: !5775)
!5778 = !DILocalVariable(name: "attr", arg: 2, scope: !5775, file: !3, line: 447, type: !3839)
!5779 = !DILocation(line: 447, column: 35, scope: !5775)
!5780 = !DILocalVariable(name: "buf", arg: 3, scope: !5775, file: !3, line: 447, type: !133)
!5781 = !DILocation(line: 447, column: 53, scope: !5775)
!5782 = !DILocalVariable(name: "count", arg: 4, scope: !5775, file: !3, line: 448, type: !245)
!5783 = !DILocation(line: 448, column: 17, scope: !5775)
!5784 = !DILocalVariable(name: "sensor_attr", scope: !5775, file: !3, line: 450, type: !121)
!5785 = !DILocation(line: 450, column: 34, scope: !5775)
!5786 = !DILocalVariable(name: "__mptr", scope: !5787, file: !3, line: 450, type: !108)
!5787 = distinct !DILexicalBlock(scope: !5775, file: !3, line: 450, column: 48)
!5788 = !DILocation(line: 450, column: 48, scope: !5787)
!5789 = !DILocation(line: 450, column: 48, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5787, file: !3, line: 450, column: 48)
!5791 = !DILocalVariable(name: "nr", scope: !5775, file: !3, line: 451, type: !120)
!5792 = !DILocation(line: 451, column: 6, scope: !5775)
!5793 = !DILocation(line: 451, column: 11, scope: !5775)
!5794 = !DILocation(line: 451, column: 24, scope: !5775)
!5795 = !DILocalVariable(name: "data", scope: !5775, file: !3, line: 452, type: !4600)
!5796 = !DILocation(line: 452, column: 22, scope: !5775)
!5797 = !DILocation(line: 452, column: 45, scope: !5775)
!5798 = !DILocation(line: 452, column: 29, scope: !5775)
!5799 = !DILocalVariable(name: "val", scope: !5775, file: !3, line: 453, type: !146)
!5800 = !DILocation(line: 453, column: 7, scope: !5775)
!5801 = !DILocalVariable(name: "err", scope: !5775, file: !3, line: 454, type: !120)
!5802 = !DILocation(line: 454, column: 6, scope: !5775)
!5803 = !DILocation(line: 456, column: 16, scope: !5775)
!5804 = !DILocation(line: 456, column: 8, scope: !5775)
!5805 = !DILocation(line: 456, column: 6, scope: !5775)
!5806 = !DILocation(line: 457, column: 6, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5775, file: !3, line: 457, column: 6)
!5808 = !DILocation(line: 457, column: 6, scope: !5775)
!5809 = !DILocation(line: 458, column: 10, scope: !5807)
!5810 = !DILocation(line: 458, column: 3, scope: !5807)
!5811 = !DILocation(line: 460, column: 14, scope: !5775)
!5812 = !DILocation(line: 460, column: 20, scope: !5775)
!5813 = !DILocation(line: 460, column: 2, scope: !5775)
!5814 = !DILocalVariable(name: "__UNIQUE_ID___x284", scope: !5815, file: !3, line: 461, type: !146)
!5815 = distinct !DILexicalBlock(scope: !5775, file: !3, line: 461, column: 23)
!5816 = !DILocation(line: 461, column: 23, scope: !5815)
!5817 = !DILocalVariable(name: "__UNIQUE_ID___x282", scope: !5818, file: !3, line: 461, type: !146)
!5818 = distinct !DILexicalBlock(scope: !5815, file: !3, line: 461, column: 23)
!5819 = !DILocation(line: 461, column: 23, scope: !5818)
!5820 = !DILocalVariable(name: "__UNIQUE_ID___y283", scope: !5818, file: !3, line: 461, type: !146)
!5821 = !DILocalVariable(name: "__UNIQUE_ID___y285", scope: !5815, file: !3, line: 461, type: !146)
!5822 = !DILocation(line: 461, column: 23, scope: !5775)
!5823 = !DILocation(line: 461, column: 2, scope: !5775)
!5824 = !DILocation(line: 461, column: 8, scope: !5775)
!5825 = !DILocation(line: 461, column: 17, scope: !5775)
!5826 = !DILocation(line: 461, column: 21, scope: !5775)
!5827 = !DILocation(line: 462, column: 21, scope: !5775)
!5828 = !DILocation(line: 462, column: 38, scope: !5775)
!5829 = !DILocation(line: 462, column: 27, scope: !5775)
!5830 = !DILocation(line: 462, column: 43, scope: !5775)
!5831 = !DILocation(line: 462, column: 49, scope: !5775)
!5832 = !DILocation(line: 462, column: 58, scope: !5775)
!5833 = !DILocation(line: 462, column: 2, scope: !5775)
!5834 = !DILocation(line: 463, column: 16, scope: !5775)
!5835 = !DILocation(line: 463, column: 22, scope: !5775)
!5836 = !DILocation(line: 463, column: 2, scope: !5775)
!5837 = !DILocation(line: 464, column: 9, scope: !5775)
!5838 = !DILocation(line: 464, column: 2, scope: !5775)
!5839 = !DILocation(line: 465, column: 1, scope: !5775)
!5840 = distinct !DISubprogram(name: "temp_max_show", scope: !3, file: !3, line: 408, type: !140, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5841 = !DILocalVariable(name: "dev", arg: 1, scope: !5840, file: !3, line: 408, type: !147)
!5842 = !DILocation(line: 408, column: 45, scope: !5840)
!5843 = !DILocalVariable(name: "attr", arg: 2, scope: !5840, file: !3, line: 409, type: !3839)
!5844 = !DILocation(line: 409, column: 34, scope: !5840)
!5845 = !DILocalVariable(name: "buf", arg: 3, scope: !5840, file: !3, line: 409, type: !210)
!5846 = !DILocation(line: 409, column: 46, scope: !5840)
!5847 = !DILocalVariable(name: "sensor_attr", scope: !5840, file: !3, line: 411, type: !121)
!5848 = !DILocation(line: 411, column: 34, scope: !5840)
!5849 = !DILocalVariable(name: "__mptr", scope: !5850, file: !3, line: 411, type: !108)
!5850 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 411, column: 48)
!5851 = !DILocation(line: 411, column: 48, scope: !5850)
!5852 = !DILocation(line: 411, column: 48, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5850, file: !3, line: 411, column: 48)
!5854 = !DILocalVariable(name: "nr", scope: !5840, file: !3, line: 412, type: !120)
!5855 = !DILocation(line: 412, column: 6, scope: !5840)
!5856 = !DILocation(line: 412, column: 11, scope: !5840)
!5857 = !DILocation(line: 412, column: 24, scope: !5840)
!5858 = !DILocalVariable(name: "data", scope: !5840, file: !3, line: 413, type: !4600)
!5859 = !DILocation(line: 413, column: 22, scope: !5840)
!5860 = !DILocation(line: 413, column: 50, scope: !5840)
!5861 = !DILocation(line: 413, column: 29, scope: !5840)
!5862 = !DILocation(line: 414, column: 17, scope: !5840)
!5863 = !DILocation(line: 414, column: 30, scope: !5840)
!5864 = !DILocation(line: 414, column: 9, scope: !5840)
!5865 = !DILocation(line: 414, column: 2, scope: !5840)
!5866 = distinct !DISubprogram(name: "temp_max_store", scope: !3, file: !3, line: 426, type: !3842, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5867 = !DILocalVariable(name: "dev", arg: 1, scope: !5866, file: !3, line: 426, type: !147)
!5868 = !DILocation(line: 426, column: 46, scope: !5866)
!5869 = !DILocalVariable(name: "attr", arg: 2, scope: !5866, file: !3, line: 427, type: !3839)
!5870 = !DILocation(line: 427, column: 35, scope: !5866)
!5871 = !DILocalVariable(name: "buf", arg: 3, scope: !5866, file: !3, line: 427, type: !133)
!5872 = !DILocation(line: 427, column: 53, scope: !5866)
!5873 = !DILocalVariable(name: "count", arg: 4, scope: !5866, file: !3, line: 428, type: !245)
!5874 = !DILocation(line: 428, column: 17, scope: !5866)
!5875 = !DILocalVariable(name: "sensor_attr", scope: !5866, file: !3, line: 430, type: !121)
!5876 = !DILocation(line: 430, column: 34, scope: !5866)
!5877 = !DILocalVariable(name: "__mptr", scope: !5878, file: !3, line: 430, type: !108)
!5878 = distinct !DILexicalBlock(scope: !5866, file: !3, line: 430, column: 48)
!5879 = !DILocation(line: 430, column: 48, scope: !5878)
!5880 = !DILocation(line: 430, column: 48, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5878, file: !3, line: 430, column: 48)
!5882 = !DILocalVariable(name: "nr", scope: !5866, file: !3, line: 431, type: !120)
!5883 = !DILocation(line: 431, column: 6, scope: !5866)
!5884 = !DILocation(line: 431, column: 11, scope: !5866)
!5885 = !DILocation(line: 431, column: 24, scope: !5866)
!5886 = !DILocalVariable(name: "data", scope: !5866, file: !3, line: 432, type: !4600)
!5887 = !DILocation(line: 432, column: 22, scope: !5866)
!5888 = !DILocation(line: 432, column: 45, scope: !5866)
!5889 = !DILocation(line: 432, column: 29, scope: !5866)
!5890 = !DILocalVariable(name: "val", scope: !5866, file: !3, line: 433, type: !146)
!5891 = !DILocation(line: 433, column: 7, scope: !5866)
!5892 = !DILocalVariable(name: "err", scope: !5866, file: !3, line: 434, type: !120)
!5893 = !DILocation(line: 434, column: 6, scope: !5866)
!5894 = !DILocation(line: 436, column: 16, scope: !5866)
!5895 = !DILocation(line: 436, column: 8, scope: !5866)
!5896 = !DILocation(line: 436, column: 6, scope: !5866)
!5897 = !DILocation(line: 437, column: 6, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5866, file: !3, line: 437, column: 6)
!5899 = !DILocation(line: 437, column: 6, scope: !5866)
!5900 = !DILocation(line: 438, column: 10, scope: !5898)
!5901 = !DILocation(line: 438, column: 3, scope: !5898)
!5902 = !DILocation(line: 440, column: 14, scope: !5866)
!5903 = !DILocation(line: 440, column: 20, scope: !5866)
!5904 = !DILocation(line: 440, column: 2, scope: !5866)
!5905 = !DILocalVariable(name: "__UNIQUE_ID___x279", scope: !5906, file: !3, line: 441, type: !146)
!5906 = distinct !DILexicalBlock(scope: !5866, file: !3, line: 441, column: 23)
!5907 = !DILocation(line: 441, column: 23, scope: !5906)
!5908 = !DILocalVariable(name: "__UNIQUE_ID___x277", scope: !5909, file: !3, line: 441, type: !146)
!5909 = distinct !DILexicalBlock(scope: !5906, file: !3, line: 441, column: 23)
!5910 = !DILocation(line: 441, column: 23, scope: !5909)
!5911 = !DILocalVariable(name: "__UNIQUE_ID___y278", scope: !5909, file: !3, line: 441, type: !146)
!5912 = !DILocalVariable(name: "__UNIQUE_ID___y280", scope: !5906, file: !3, line: 441, type: !146)
!5913 = !DILocation(line: 441, column: 23, scope: !5866)
!5914 = !DILocation(line: 441, column: 2, scope: !5866)
!5915 = !DILocation(line: 441, column: 8, scope: !5866)
!5916 = !DILocation(line: 441, column: 17, scope: !5866)
!5917 = !DILocation(line: 441, column: 21, scope: !5866)
!5918 = !DILocation(line: 442, column: 21, scope: !5866)
!5919 = !DILocation(line: 442, column: 38, scope: !5866)
!5920 = !DILocation(line: 442, column: 27, scope: !5866)
!5921 = !DILocation(line: 442, column: 43, scope: !5866)
!5922 = !DILocation(line: 442, column: 49, scope: !5866)
!5923 = !DILocation(line: 442, column: 58, scope: !5866)
!5924 = !DILocation(line: 442, column: 2, scope: !5866)
!5925 = !DILocation(line: 443, column: 16, scope: !5866)
!5926 = !DILocation(line: 443, column: 22, scope: !5866)
!5927 = !DILocation(line: 443, column: 2, scope: !5866)
!5928 = !DILocation(line: 444, column: 9, scope: !5866)
!5929 = !DILocation(line: 444, column: 2, scope: !5866)
!5930 = !DILocation(line: 445, column: 1, scope: !5866)
!5931 = distinct !DISubprogram(name: "in_show", scope: !3, file: !3, line: 182, type: !140, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5932 = !DILocalVariable(name: "dev", arg: 1, scope: !5931, file: !3, line: 182, type: !147)
!5933 = !DILocation(line: 182, column: 39, scope: !5931)
!5934 = !DILocalVariable(name: "attr", arg: 2, scope: !5931, file: !3, line: 182, type: !3839)
!5935 = !DILocation(line: 182, column: 69, scope: !5931)
!5936 = !DILocalVariable(name: "buf", arg: 3, scope: !5931, file: !3, line: 183, type: !210)
!5937 = !DILocation(line: 183, column: 16, scope: !5931)
!5938 = !DILocalVariable(name: "sensor_attr", scope: !5931, file: !3, line: 185, type: !121)
!5939 = !DILocation(line: 185, column: 34, scope: !5931)
!5940 = !DILocalVariable(name: "__mptr", scope: !5941, file: !3, line: 185, type: !108)
!5941 = distinct !DILexicalBlock(scope: !5931, file: !3, line: 185, column: 48)
!5942 = !DILocation(line: 185, column: 48, scope: !5941)
!5943 = !DILocation(line: 185, column: 48, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5941, file: !3, line: 185, column: 48)
!5945 = !DILocalVariable(name: "nr", scope: !5931, file: !3, line: 186, type: !120)
!5946 = !DILocation(line: 186, column: 6, scope: !5931)
!5947 = !DILocation(line: 186, column: 11, scope: !5931)
!5948 = !DILocation(line: 186, column: 24, scope: !5931)
!5949 = !DILocalVariable(name: "data", scope: !5931, file: !3, line: 187, type: !4600)
!5950 = !DILocation(line: 187, column: 22, scope: !5931)
!5951 = !DILocation(line: 187, column: 50, scope: !5931)
!5952 = !DILocation(line: 187, column: 29, scope: !5931)
!5953 = !DILocation(line: 189, column: 17, scope: !5931)
!5954 = !DILocation(line: 189, column: 32, scope: !5931)
!5955 = !DILocation(line: 189, column: 38, scope: !5931)
!5956 = !DILocation(line: 189, column: 41, scope: !5931)
!5957 = !DILocation(line: 189, column: 45, scope: !5931)
!5958 = !DILocation(line: 189, column: 50, scope: !5931)
!5959 = !DILocation(line: 189, column: 59, scope: !5931)
!5960 = !DILocation(line: 189, column: 9, scope: !5931)
!5961 = !DILocation(line: 189, column: 2, scope: !5931)
!5962 = distinct !DISubprogram(name: "in_min_show", scope: !3, file: !3, line: 192, type: !140, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5963 = !DILocalVariable(name: "dev", arg: 1, scope: !5962, file: !3, line: 192, type: !147)
!5964 = !DILocation(line: 192, column: 43, scope: !5962)
!5965 = !DILocalVariable(name: "attr", arg: 2, scope: !5962, file: !3, line: 192, type: !3839)
!5966 = !DILocation(line: 192, column: 73, scope: !5962)
!5967 = !DILocalVariable(name: "buf", arg: 3, scope: !5962, file: !3, line: 193, type: !210)
!5968 = !DILocation(line: 193, column: 13, scope: !5962)
!5969 = !DILocalVariable(name: "sensor_attr", scope: !5962, file: !3, line: 195, type: !121)
!5970 = !DILocation(line: 195, column: 34, scope: !5962)
!5971 = !DILocalVariable(name: "__mptr", scope: !5972, file: !3, line: 195, type: !108)
!5972 = distinct !DILexicalBlock(scope: !5962, file: !3, line: 195, column: 48)
!5973 = !DILocation(line: 195, column: 48, scope: !5972)
!5974 = !DILocation(line: 195, column: 48, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5972, file: !3, line: 195, column: 48)
!5976 = !DILocalVariable(name: "nr", scope: !5962, file: !3, line: 196, type: !120)
!5977 = !DILocation(line: 196, column: 6, scope: !5962)
!5978 = !DILocation(line: 196, column: 11, scope: !5962)
!5979 = !DILocation(line: 196, column: 24, scope: !5962)
!5980 = !DILocalVariable(name: "data", scope: !5962, file: !3, line: 197, type: !4600)
!5981 = !DILocation(line: 197, column: 22, scope: !5962)
!5982 = !DILocation(line: 197, column: 50, scope: !5962)
!5983 = !DILocation(line: 197, column: 29, scope: !5962)
!5984 = !DILocation(line: 199, column: 17, scope: !5962)
!5985 = !DILocation(line: 199, column: 32, scope: !5962)
!5986 = !DILocation(line: 199, column: 38, scope: !5962)
!5987 = !DILocation(line: 199, column: 45, scope: !5962)
!5988 = !DILocation(line: 199, column: 49, scope: !5962)
!5989 = !DILocation(line: 199, column: 54, scope: !5962)
!5990 = !DILocation(line: 199, column: 63, scope: !5962)
!5991 = !DILocation(line: 199, column: 9, scope: !5962)
!5992 = !DILocation(line: 199, column: 2, scope: !5962)
!5993 = distinct !DISubprogram(name: "in_min_store", scope: !3, file: !3, line: 212, type: !3842, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!5994 = !DILocalVariable(name: "dev", arg: 1, scope: !5993, file: !3, line: 212, type: !147)
!5995 = !DILocation(line: 212, column: 44, scope: !5993)
!5996 = !DILocalVariable(name: "attr", arg: 2, scope: !5993, file: !3, line: 212, type: !3839)
!5997 = !DILocation(line: 212, column: 74, scope: !5993)
!5998 = !DILocalVariable(name: "buf", arg: 3, scope: !5993, file: !3, line: 213, type: !133)
!5999 = !DILocation(line: 213, column: 20, scope: !5993)
!6000 = !DILocalVariable(name: "count", arg: 4, scope: !5993, file: !3, line: 213, type: !245)
!6001 = !DILocation(line: 213, column: 32, scope: !5993)
!6002 = !DILocalVariable(name: "sensor_attr", scope: !5993, file: !3, line: 215, type: !121)
!6003 = !DILocation(line: 215, column: 34, scope: !5993)
!6004 = !DILocalVariable(name: "__mptr", scope: !6005, file: !3, line: 215, type: !108)
!6005 = distinct !DILexicalBlock(scope: !5993, file: !3, line: 215, column: 48)
!6006 = !DILocation(line: 215, column: 48, scope: !6005)
!6007 = !DILocation(line: 215, column: 48, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !6005, file: !3, line: 215, column: 48)
!6009 = !DILocalVariable(name: "nr", scope: !5993, file: !3, line: 216, type: !120)
!6010 = !DILocation(line: 216, column: 6, scope: !5993)
!6011 = !DILocation(line: 216, column: 11, scope: !5993)
!6012 = !DILocation(line: 216, column: 24, scope: !5993)
!6013 = !DILocalVariable(name: "data", scope: !5993, file: !3, line: 217, type: !4600)
!6014 = !DILocation(line: 217, column: 22, scope: !5993)
!6015 = !DILocation(line: 217, column: 45, scope: !5993)
!6016 = !DILocation(line: 217, column: 29, scope: !5993)
!6017 = !DILocalVariable(name: "val", scope: !5993, file: !3, line: 218, type: !117)
!6018 = !DILocation(line: 218, column: 16, scope: !5993)
!6019 = !DILocalVariable(name: "err", scope: !5993, file: !3, line: 219, type: !120)
!6020 = !DILocation(line: 219, column: 6, scope: !5993)
!6021 = !DILocation(line: 221, column: 17, scope: !5993)
!6022 = !DILocation(line: 221, column: 8, scope: !5993)
!6023 = !DILocation(line: 221, column: 6, scope: !5993)
!6024 = !DILocation(line: 222, column: 6, scope: !6025)
!6025 = distinct !DILexicalBlock(scope: !5993, file: !3, line: 222, column: 6)
!6026 = !DILocation(line: 222, column: 6, scope: !5993)
!6027 = !DILocation(line: 223, column: 10, scope: !6025)
!6028 = !DILocation(line: 223, column: 3, scope: !6025)
!6029 = !DILocation(line: 225, column: 14, scope: !5993)
!6030 = !DILocation(line: 225, column: 20, scope: !5993)
!6031 = !DILocation(line: 225, column: 2, scope: !5993)
!6032 = !DILocalVariable(name: "__UNIQUE_ID___x250", scope: !6033, file: !3, line: 226, type: !117)
!6033 = distinct !DILexicalBlock(scope: !5993, file: !3, line: 226, column: 21)
!6034 = !DILocation(line: 226, column: 21, scope: !6033)
!6035 = !DILocalVariable(name: "__UNIQUE_ID___x248", scope: !6036, file: !3, line: 226, type: !117)
!6036 = distinct !DILexicalBlock(scope: !6033, file: !3, line: 226, column: 21)
!6037 = !DILocation(line: 226, column: 21, scope: !6036)
!6038 = !DILocalVariable(name: "__UNIQUE_ID___y249", scope: !6036, file: !3, line: 226, type: !117)
!6039 = !DILocalVariable(name: "__UNIQUE_ID___y251", scope: !6033, file: !3, line: 226, type: !117)
!6040 = !DILocation(line: 226, column: 21, scope: !5993)
!6041 = !DILocation(line: 226, column: 2, scope: !5993)
!6042 = !DILocation(line: 226, column: 8, scope: !5993)
!6043 = !DILocation(line: 226, column: 15, scope: !5993)
!6044 = !DILocation(line: 226, column: 19, scope: !5993)
!6045 = !DILocation(line: 227, column: 21, scope: !5993)
!6046 = !DILocation(line: 227, column: 38, scope: !5993)
!6047 = !DILocation(line: 227, column: 27, scope: !5993)
!6048 = !DILocation(line: 227, column: 43, scope: !5993)
!6049 = !DILocation(line: 227, column: 49, scope: !5993)
!6050 = !DILocation(line: 227, column: 56, scope: !5993)
!6051 = !DILocation(line: 227, column: 2, scope: !5993)
!6052 = !DILocation(line: 228, column: 16, scope: !5993)
!6053 = !DILocation(line: 228, column: 22, scope: !5993)
!6054 = !DILocation(line: 228, column: 2, scope: !5993)
!6055 = !DILocation(line: 229, column: 9, scope: !5993)
!6056 = !DILocation(line: 229, column: 2, scope: !5993)
!6057 = !DILocation(line: 230, column: 1, scope: !5993)
!6058 = distinct !DISubprogram(name: "in_max_show", scope: !3, file: !3, line: 202, type: !140, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!6059 = !DILocalVariable(name: "dev", arg: 1, scope: !6058, file: !3, line: 202, type: !147)
!6060 = !DILocation(line: 202, column: 43, scope: !6058)
!6061 = !DILocalVariable(name: "attr", arg: 2, scope: !6058, file: !3, line: 202, type: !3839)
!6062 = !DILocation(line: 202, column: 73, scope: !6058)
!6063 = !DILocalVariable(name: "buf", arg: 3, scope: !6058, file: !3, line: 203, type: !210)
!6064 = !DILocation(line: 203, column: 13, scope: !6058)
!6065 = !DILocalVariable(name: "sensor_attr", scope: !6058, file: !3, line: 205, type: !121)
!6066 = !DILocation(line: 205, column: 34, scope: !6058)
!6067 = !DILocalVariable(name: "__mptr", scope: !6068, file: !3, line: 205, type: !108)
!6068 = distinct !DILexicalBlock(scope: !6058, file: !3, line: 205, column: 48)
!6069 = !DILocation(line: 205, column: 48, scope: !6068)
!6070 = !DILocation(line: 205, column: 48, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6068, file: !3, line: 205, column: 48)
!6072 = !DILocalVariable(name: "nr", scope: !6058, file: !3, line: 206, type: !120)
!6073 = !DILocation(line: 206, column: 6, scope: !6058)
!6074 = !DILocation(line: 206, column: 11, scope: !6058)
!6075 = !DILocation(line: 206, column: 24, scope: !6058)
!6076 = !DILocalVariable(name: "data", scope: !6058, file: !3, line: 207, type: !4600)
!6077 = !DILocation(line: 207, column: 22, scope: !6058)
!6078 = !DILocation(line: 207, column: 50, scope: !6058)
!6079 = !DILocation(line: 207, column: 29, scope: !6058)
!6080 = !DILocation(line: 209, column: 17, scope: !6058)
!6081 = !DILocation(line: 209, column: 33, scope: !6058)
!6082 = !DILocation(line: 209, column: 39, scope: !6058)
!6083 = !DILocation(line: 209, column: 46, scope: !6058)
!6084 = !DILocation(line: 209, column: 50, scope: !6058)
!6085 = !DILocation(line: 209, column: 55, scope: !6058)
!6086 = !DILocation(line: 209, column: 64, scope: !6058)
!6087 = !DILocation(line: 209, column: 9, scope: !6058)
!6088 = !DILocation(line: 209, column: 2, scope: !6058)
!6089 = distinct !DISubprogram(name: "in_max_store", scope: !3, file: !3, line: 232, type: !3842, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!6090 = !DILocalVariable(name: "dev", arg: 1, scope: !6089, file: !3, line: 232, type: !147)
!6091 = !DILocation(line: 232, column: 44, scope: !6089)
!6092 = !DILocalVariable(name: "attr", arg: 2, scope: !6089, file: !3, line: 232, type: !3839)
!6093 = !DILocation(line: 232, column: 74, scope: !6089)
!6094 = !DILocalVariable(name: "buf", arg: 3, scope: !6089, file: !3, line: 233, type: !133)
!6095 = !DILocation(line: 233, column: 20, scope: !6089)
!6096 = !DILocalVariable(name: "count", arg: 4, scope: !6089, file: !3, line: 233, type: !245)
!6097 = !DILocation(line: 233, column: 32, scope: !6089)
!6098 = !DILocalVariable(name: "sensor_attr", scope: !6089, file: !3, line: 235, type: !121)
!6099 = !DILocation(line: 235, column: 34, scope: !6089)
!6100 = !DILocalVariable(name: "__mptr", scope: !6101, file: !3, line: 235, type: !108)
!6101 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 235, column: 48)
!6102 = !DILocation(line: 235, column: 48, scope: !6101)
!6103 = !DILocation(line: 235, column: 48, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !6101, file: !3, line: 235, column: 48)
!6105 = !DILocalVariable(name: "nr", scope: !6089, file: !3, line: 236, type: !120)
!6106 = !DILocation(line: 236, column: 6, scope: !6089)
!6107 = !DILocation(line: 236, column: 11, scope: !6089)
!6108 = !DILocation(line: 236, column: 24, scope: !6089)
!6109 = !DILocalVariable(name: "data", scope: !6089, file: !3, line: 237, type: !4600)
!6110 = !DILocation(line: 237, column: 22, scope: !6089)
!6111 = !DILocation(line: 237, column: 45, scope: !6089)
!6112 = !DILocation(line: 237, column: 29, scope: !6089)
!6113 = !DILocalVariable(name: "val", scope: !6089, file: !3, line: 238, type: !117)
!6114 = !DILocation(line: 238, column: 16, scope: !6089)
!6115 = !DILocalVariable(name: "err", scope: !6089, file: !3, line: 239, type: !120)
!6116 = !DILocation(line: 239, column: 6, scope: !6089)
!6117 = !DILocation(line: 241, column: 17, scope: !6089)
!6118 = !DILocation(line: 241, column: 8, scope: !6089)
!6119 = !DILocation(line: 241, column: 6, scope: !6089)
!6120 = !DILocation(line: 242, column: 6, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 242, column: 6)
!6122 = !DILocation(line: 242, column: 6, scope: !6089)
!6123 = !DILocation(line: 243, column: 10, scope: !6121)
!6124 = !DILocation(line: 243, column: 3, scope: !6121)
!6125 = !DILocation(line: 245, column: 14, scope: !6089)
!6126 = !DILocation(line: 245, column: 20, scope: !6089)
!6127 = !DILocation(line: 245, column: 2, scope: !6089)
!6128 = !DILocalVariable(name: "__UNIQUE_ID___x255", scope: !6129, file: !3, line: 246, type: !117)
!6129 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 246, column: 21)
!6130 = !DILocation(line: 246, column: 21, scope: !6129)
!6131 = !DILocalVariable(name: "__UNIQUE_ID___x253", scope: !6132, file: !3, line: 246, type: !117)
!6132 = distinct !DILexicalBlock(scope: !6129, file: !3, line: 246, column: 21)
!6133 = !DILocation(line: 246, column: 21, scope: !6132)
!6134 = !DILocalVariable(name: "__UNIQUE_ID___y254", scope: !6132, file: !3, line: 246, type: !117)
!6135 = !DILocalVariable(name: "__UNIQUE_ID___y256", scope: !6129, file: !3, line: 246, type: !117)
!6136 = !DILocation(line: 246, column: 21, scope: !6089)
!6137 = !DILocation(line: 246, column: 2, scope: !6089)
!6138 = !DILocation(line: 246, column: 8, scope: !6089)
!6139 = !DILocation(line: 246, column: 15, scope: !6089)
!6140 = !DILocation(line: 246, column: 19, scope: !6089)
!6141 = !DILocation(line: 247, column: 21, scope: !6089)
!6142 = !DILocation(line: 247, column: 38, scope: !6089)
!6143 = !DILocation(line: 247, column: 27, scope: !6089)
!6144 = !DILocation(line: 247, column: 43, scope: !6089)
!6145 = !DILocation(line: 247, column: 49, scope: !6089)
!6146 = !DILocation(line: 247, column: 56, scope: !6089)
!6147 = !DILocation(line: 247, column: 2, scope: !6089)
!6148 = !DILocation(line: 248, column: 16, scope: !6089)
!6149 = !DILocation(line: 248, column: 22, scope: !6089)
!6150 = !DILocation(line: 248, column: 2, scope: !6089)
!6151 = !DILocation(line: 249, column: 9, scope: !6089)
!6152 = !DILocation(line: 249, column: 2, scope: !6089)
!6153 = !DILocation(line: 250, column: 1, scope: !6089)
!6154 = distinct !DISubprogram(name: "in5_input_show", scope: !3, file: !3, line: 253, type: !140, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!6155 = !DILocalVariable(name: "dev", arg: 1, scope: !6154, file: !3, line: 253, type: !147)
!6156 = !DILocation(line: 253, column: 46, scope: !6154)
!6157 = !DILocalVariable(name: "attr", arg: 2, scope: !6154, file: !3, line: 254, type: !3839)
!6158 = !DILocation(line: 254, column: 35, scope: !6154)
!6159 = !DILocalVariable(name: "buf", arg: 3, scope: !6154, file: !3, line: 254, type: !210)
!6160 = !DILocation(line: 254, column: 47, scope: !6154)
!6161 = !DILocalVariable(name: "data", scope: !6154, file: !3, line: 256, type: !4600)
!6162 = !DILocation(line: 256, column: 22, scope: !6154)
!6163 = !DILocation(line: 256, column: 50, scope: !6154)
!6164 = !DILocation(line: 256, column: 29, scope: !6154)
!6165 = !DILocation(line: 258, column: 17, scope: !6154)
!6166 = !DILocation(line: 259, column: 6, scope: !6154)
!6167 = !DILocation(line: 259, column: 12, scope: !6154)
!6168 = !DILocation(line: 259, column: 18, scope: !6154)
!6169 = !DILocation(line: 259, column: 23, scope: !6154)
!6170 = !DILocation(line: 259, column: 31, scope: !6154)
!6171 = !DILocation(line: 259, column: 37, scope: !6154)
!6172 = !DILocation(line: 258, column: 9, scope: !6154)
!6173 = !DILocation(line: 258, column: 2, scope: !6154)
!6174 = distinct !DISubprogram(name: "in5_min_show", scope: !3, file: !3, line: 262, type: !140, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!6175 = !DILocalVariable(name: "dev", arg: 1, scope: !6174, file: !3, line: 262, type: !147)
!6176 = !DILocation(line: 262, column: 44, scope: !6174)
!6177 = !DILocalVariable(name: "attr", arg: 2, scope: !6174, file: !3, line: 262, type: !3839)
!6178 = !DILocation(line: 262, column: 74, scope: !6174)
!6179 = !DILocalVariable(name: "buf", arg: 3, scope: !6174, file: !3, line: 263, type: !210)
!6180 = !DILocation(line: 263, column: 9, scope: !6174)
!6181 = !DILocalVariable(name: "data", scope: !6174, file: !3, line: 265, type: !4600)
!6182 = !DILocation(line: 265, column: 22, scope: !6174)
!6183 = !DILocation(line: 265, column: 50, scope: !6174)
!6184 = !DILocation(line: 265, column: 29, scope: !6174)
!6185 = !DILocation(line: 267, column: 17, scope: !6174)
!6186 = !DILocation(line: 268, column: 6, scope: !6174)
!6187 = !DILocation(line: 268, column: 12, scope: !6174)
!6188 = !DILocation(line: 268, column: 22, scope: !6174)
!6189 = !DILocation(line: 268, column: 27, scope: !6174)
!6190 = !DILocation(line: 268, column: 35, scope: !6174)
!6191 = !DILocation(line: 268, column: 41, scope: !6174)
!6192 = !DILocation(line: 267, column: 9, scope: !6174)
!6193 = !DILocation(line: 267, column: 2, scope: !6174)
!6194 = distinct !DISubprogram(name: "in5_min_store", scope: !3, file: !3, line: 280, type: !3842, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!6195 = !DILocalVariable(name: "dev", arg: 1, scope: !6194, file: !3, line: 280, type: !147)
!6196 = !DILocation(line: 280, column: 45, scope: !6194)
!6197 = !DILocalVariable(name: "attr", arg: 2, scope: !6194, file: !3, line: 281, type: !3839)
!6198 = !DILocation(line: 281, column: 34, scope: !6194)
!6199 = !DILocalVariable(name: "buf", arg: 3, scope: !6194, file: !3, line: 281, type: !133)
!6200 = !DILocation(line: 281, column: 52, scope: !6194)
!6201 = !DILocalVariable(name: "count", arg: 4, scope: !6194, file: !3, line: 282, type: !245)
!6202 = !DILocation(line: 282, column: 16, scope: !6194)
!6203 = !DILocalVariable(name: "data", scope: !6194, file: !3, line: 284, type: !4600)
!6204 = !DILocation(line: 284, column: 22, scope: !6194)
!6205 = !DILocation(line: 284, column: 45, scope: !6194)
!6206 = !DILocation(line: 284, column: 29, scope: !6194)
!6207 = !DILocalVariable(name: "val", scope: !6194, file: !3, line: 285, type: !117)
!6208 = !DILocation(line: 285, column: 16, scope: !6194)
!6209 = !DILocalVariable(name: "err", scope: !6194, file: !3, line: 286, type: !120)
!6210 = !DILocation(line: 286, column: 6, scope: !6194)
!6211 = !DILocation(line: 288, column: 17, scope: !6194)
!6212 = !DILocation(line: 288, column: 8, scope: !6194)
!6213 = !DILocation(line: 288, column: 6, scope: !6194)
!6214 = !DILocation(line: 289, column: 6, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6194, file: !3, line: 289, column: 6)
!6216 = !DILocation(line: 289, column: 6, scope: !6194)
!6217 = !DILocation(line: 290, column: 10, scope: !6215)
!6218 = !DILocation(line: 290, column: 3, scope: !6215)
!6219 = !DILocation(line: 292, column: 14, scope: !6194)
!6220 = !DILocation(line: 292, column: 20, scope: !6194)
!6221 = !DILocation(line: 292, column: 2, scope: !6194)
!6222 = !DILocalVariable(name: "__UNIQUE_ID___x259", scope: !6223, file: !3, line: 293, type: !117)
!6223 = distinct !DILexicalBlock(scope: !6194, file: !3, line: 293, column: 20)
!6224 = !DILocation(line: 293, column: 20, scope: !6223)
!6225 = !DILocalVariable(name: "__UNIQUE_ID___x257", scope: !6226, file: !3, line: 293, type: !117)
!6226 = distinct !DILexicalBlock(scope: !6223, file: !3, line: 293, column: 20)
!6227 = !DILocation(line: 293, column: 20, scope: !6226)
!6228 = !DILocalVariable(name: "__UNIQUE_ID___y258", scope: !6226, file: !3, line: 293, type: !117)
!6229 = !DILocalVariable(name: "__UNIQUE_ID___y260", scope: !6223, file: !3, line: 293, type: !117)
!6230 = !DILocation(line: 293, column: 20, scope: !6194)
!6231 = !DILocation(line: 293, column: 2, scope: !6194)
!6232 = !DILocation(line: 293, column: 8, scope: !6194)
!6233 = !DILocation(line: 293, column: 18, scope: !6194)
!6234 = !DILocation(line: 295, column: 21, scope: !6194)
!6235 = !DILocation(line: 295, column: 27, scope: !6194)
!6236 = !DILocation(line: 295, column: 42, scope: !6194)
!6237 = !DILocation(line: 295, column: 48, scope: !6194)
!6238 = !DILocation(line: 295, column: 2, scope: !6194)
!6239 = !DILocation(line: 296, column: 16, scope: !6194)
!6240 = !DILocation(line: 296, column: 22, scope: !6194)
!6241 = !DILocation(line: 296, column: 2, scope: !6194)
!6242 = !DILocation(line: 297, column: 9, scope: !6194)
!6243 = !DILocation(line: 297, column: 2, scope: !6194)
!6244 = !DILocation(line: 298, column: 1, scope: !6194)
!6245 = distinct !DISubprogram(name: "in5_max_show", scope: !3, file: !3, line: 271, type: !140, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!6246 = !DILocalVariable(name: "dev", arg: 1, scope: !6245, file: !3, line: 271, type: !147)
!6247 = !DILocation(line: 271, column: 44, scope: !6245)
!6248 = !DILocalVariable(name: "attr", arg: 2, scope: !6245, file: !3, line: 271, type: !3839)
!6249 = !DILocation(line: 271, column: 74, scope: !6245)
!6250 = !DILocalVariable(name: "buf", arg: 3, scope: !6245, file: !3, line: 272, type: !210)
!6251 = !DILocation(line: 272, column: 9, scope: !6245)
!6252 = !DILocalVariable(name: "data", scope: !6245, file: !3, line: 274, type: !4600)
!6253 = !DILocation(line: 274, column: 22, scope: !6245)
!6254 = !DILocation(line: 274, column: 50, scope: !6245)
!6255 = !DILocation(line: 274, column: 29, scope: !6245)
!6256 = !DILocation(line: 276, column: 17, scope: !6245)
!6257 = !DILocation(line: 277, column: 6, scope: !6245)
!6258 = !DILocation(line: 277, column: 12, scope: !6245)
!6259 = !DILocation(line: 277, column: 22, scope: !6245)
!6260 = !DILocation(line: 277, column: 27, scope: !6245)
!6261 = !DILocation(line: 277, column: 35, scope: !6245)
!6262 = !DILocation(line: 277, column: 41, scope: !6245)
!6263 = !DILocation(line: 276, column: 9, scope: !6245)
!6264 = !DILocation(line: 276, column: 2, scope: !6245)
!6265 = distinct !DISubprogram(name: "in5_max_store", scope: !3, file: !3, line: 300, type: !3842, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!6266 = !DILocalVariable(name: "dev", arg: 1, scope: !6265, file: !3, line: 300, type: !147)
!6267 = !DILocation(line: 300, column: 45, scope: !6265)
!6268 = !DILocalVariable(name: "attr", arg: 2, scope: !6265, file: !3, line: 301, type: !3839)
!6269 = !DILocation(line: 301, column: 34, scope: !6265)
!6270 = !DILocalVariable(name: "buf", arg: 3, scope: !6265, file: !3, line: 301, type: !133)
!6271 = !DILocation(line: 301, column: 52, scope: !6265)
!6272 = !DILocalVariable(name: "count", arg: 4, scope: !6265, file: !3, line: 302, type: !245)
!6273 = !DILocation(line: 302, column: 16, scope: !6265)
!6274 = !DILocalVariable(name: "data", scope: !6265, file: !3, line: 304, type: !4600)
!6275 = !DILocation(line: 304, column: 22, scope: !6265)
!6276 = !DILocation(line: 304, column: 45, scope: !6265)
!6277 = !DILocation(line: 304, column: 29, scope: !6265)
!6278 = !DILocalVariable(name: "val", scope: !6265, file: !3, line: 305, type: !117)
!6279 = !DILocation(line: 305, column: 16, scope: !6265)
!6280 = !DILocalVariable(name: "err", scope: !6265, file: !3, line: 306, type: !120)
!6281 = !DILocation(line: 306, column: 6, scope: !6265)
!6282 = !DILocation(line: 308, column: 17, scope: !6265)
!6283 = !DILocation(line: 308, column: 8, scope: !6265)
!6284 = !DILocation(line: 308, column: 6, scope: !6265)
!6285 = !DILocation(line: 309, column: 6, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6265, file: !3, line: 309, column: 6)
!6287 = !DILocation(line: 309, column: 6, scope: !6265)
!6288 = !DILocation(line: 310, column: 10, scope: !6286)
!6289 = !DILocation(line: 310, column: 3, scope: !6286)
!6290 = !DILocation(line: 312, column: 14, scope: !6265)
!6291 = !DILocation(line: 312, column: 20, scope: !6265)
!6292 = !DILocation(line: 312, column: 2, scope: !6265)
!6293 = !DILocalVariable(name: "__UNIQUE_ID___x263", scope: !6294, file: !3, line: 313, type: !117)
!6294 = distinct !DILexicalBlock(scope: !6265, file: !3, line: 313, column: 20)
!6295 = !DILocation(line: 313, column: 20, scope: !6294)
!6296 = !DILocalVariable(name: "__UNIQUE_ID___x261", scope: !6297, file: !3, line: 313, type: !117)
!6297 = distinct !DILexicalBlock(scope: !6294, file: !3, line: 313, column: 20)
!6298 = !DILocation(line: 313, column: 20, scope: !6297)
!6299 = !DILocalVariable(name: "__UNIQUE_ID___y262", scope: !6297, file: !3, line: 313, type: !117)
!6300 = !DILocalVariable(name: "__UNIQUE_ID___y264", scope: !6294, file: !3, line: 313, type: !117)
!6301 = !DILocation(line: 313, column: 20, scope: !6265)
!6302 = !DILocation(line: 313, column: 2, scope: !6265)
!6303 = !DILocation(line: 313, column: 8, scope: !6265)
!6304 = !DILocation(line: 313, column: 18, scope: !6265)
!6305 = !DILocation(line: 315, column: 21, scope: !6265)
!6306 = !DILocation(line: 315, column: 27, scope: !6265)
!6307 = !DILocation(line: 315, column: 42, scope: !6265)
!6308 = !DILocation(line: 315, column: 48, scope: !6265)
!6309 = !DILocation(line: 315, column: 2, scope: !6265)
!6310 = !DILocation(line: 316, column: 16, scope: !6265)
!6311 = !DILocation(line: 316, column: 22, scope: !6265)
!6312 = !DILocation(line: 316, column: 2, scope: !6265)
!6313 = !DILocation(line: 317, column: 9, scope: !6265)
!6314 = !DILocation(line: 317, column: 2, scope: !6265)
!6315 = !DILocation(line: 318, column: 1, scope: !6265)
!6316 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !3943, file: !3943, line: 231, type: !6317, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !183)
!6317 = !DISubroutineType(types: !6318)
!6318 = !{!108, !6319}
!6319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6320, size: 64)
!6320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3942)
!6321 = !DILocalVariable(name: "pdev", arg: 1, scope: !6316, file: !3943, line: 231, type: !6319)
!6322 = !DILocation(line: 231, column: 72, scope: !6316)
!6323 = !DILocation(line: 233, column: 26, scope: !6316)
!6324 = !DILocation(line: 233, column: 32, scope: !6316)
!6325 = !DILocation(line: 233, column: 9, scope: !6316)
!6326 = !DILocation(line: 233, column: 2, scope: !6316)
