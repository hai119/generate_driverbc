; ModuleID = '../bcout/drivers/hwmon/via686a.llvm.bc'
source_filename = "drivers/hwmon/via686a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_sm_via686a_init6:\09\09\09"
module asm ".long\09sm_via686a_init - .\09\09\09"
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
%struct.via686a_data = type { i16, i8*, %struct.device*, %struct.mutex, i8, i64, [5 x i8], [5 x i8], [5 x i8], [2 x i8], [2 x i8], [3 x i16], [3 x i8], [3 x i8], [2 x i8], i16 }

@__param_str_force_addr = internal constant [19 x i8] c"via686a.force_addr\00", align 16, !dbg !0
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 8
@force_addr = internal global i16 0, align 2, !dbg !3930
@__param_force_addr = internal constant %struct.kernel_param { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__param_str_force_addr, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i16* @force_addr to i8*) } }, section "__param", align 8, !dbg !3848
@__UNIQUE_ID_force_addrtype238 = internal constant [35 x i8] c"via686a.parmtype=force_addr:ushort\00", section ".modinfo", align 1, !dbg !3900
@__UNIQUE_ID_force_addr239 = internal constant [67 x i8] c"via686a.parm=force_addr:Initialize the base address of the sensors\00", section ".modinfo", align 1, !dbg !3905
@via686a_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([2 x %struct.pci_device_id], [2 x %struct.pci_device_id]* @via686a_pci_ids, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @via686a_pci_probe, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !4239
@s_bridge = internal global %struct.pci_dev* null, align 8, !dbg !3973
@pdev = internal global %struct.platform_device* null, align 8, !dbg !3932
@via686a_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @via686a_probe, i32 (%struct.platform_device*)* @via686a_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !4244
@__UNIQUE_ID_author280 = internal constant [128 x i8] c"via686a.author=Ky\C3\B6sti M\C3\A4lkki <kmalkki@cc.hut.fi>, Mark Studebaker <mdsxyz123@yahoo.com> and Bob Dougherty <bobd@stanford.edu>\00", section ".modinfo", align 1, !dbg !3910
@__UNIQUE_ID_description281 = internal constant [43 x i8] c"via686a.description=VIA 686A Sensor device\00", section ".modinfo", align 1, !dbg !3913
@__UNIQUE_ID_file282 = internal constant [35 x i8] c"via686a.file=drivers/hwmon/via686a\00", section ".modinfo", align 1, !dbg !3918
@__UNIQUE_ID_license283 = internal constant [20 x i8] c"via686a.license=GPL\00", section ".modinfo", align 1, !dbg !3920
@__UNIQUE_ID___addressable_sm_via686a_init284 = internal global i8* bitcast (i32 ()* @sm_via686a_init to i8*), section ".discard.addressable", align 8, !dbg !3923
@__exitcall_sm_via686a_exit = internal global void ()* @sm_via686a_exit, section ".exitcall.exit", align 8, !dbg !3925
@.str = private unnamed_addr constant [8 x i8] c"via686a\00", align 1
@via686a_pci_ids = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4358, i32 12375, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4241
@.str.1 = private unnamed_addr constant [26 x i8] c"Forcing ISA address 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"base address not set - upgrade BIOS or use force_addr=0xaddr\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Sensors disabled, enable with force_addr=0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Enabling sensors\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"\013via686a: Device allocation failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"\013via686a: Device resource addition failed (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"\013via686a: Device addition failed (%d)\0A\00", align 1
@ioport_resource = external dso_local global %struct.resource, align 8
@.str.8 = private unnamed_addr constant [36 x i8] c"Region 0x%lx-0x%lx already in use!\0A\00", align 1
@via686a_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4265
@.str.9 = private unnamed_addr constant [19 x i8] c"&data->update_lock\00", align 1
@via686a_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([43 x %struct.attribute*], [43 x %struct.attribute*]* @via686a_attributes, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !4268
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@via686a_attributes = internal global [43 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in0_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in1_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in2_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in3_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in4_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in0_min, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in1_min, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in2_min, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in3_min, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in4_min, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in0_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in1_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in2_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in3_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in4_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in0_alarm, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in1_alarm, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in2_alarm, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in3_alarm, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in4_alarm, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp1_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp2_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp3_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp1_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp2_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp3_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp1_max_hyst, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp2_max_hyst, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp3_max_hyst, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp1_alarm, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp2_alarm, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp3_alarm, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan1_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan2_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan1_min, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan2_min, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan1_div, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan2_div, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan1_alarm, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan2_alarm, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_alarms, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_name, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !4270
@sensor_dev_attr_in0_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 0 }, align 8, !dbg !4273
@sensor_dev_attr_in1_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 1 }, align 8, !dbg !4283
@sensor_dev_attr_in2_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 2 }, align 8, !dbg !4285
@sensor_dev_attr_in3_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 3 }, align 8, !dbg !4287
@sensor_dev_attr_in4_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 4 }, align 8, !dbg !4289
@sensor_dev_attr_in0_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_min_store }, i32 0 }, align 8, !dbg !4291
@sensor_dev_attr_in1_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_min_store }, i32 1 }, align 8, !dbg !4293
@sensor_dev_attr_in2_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_min_store }, i32 2 }, align 8, !dbg !4295
@sensor_dev_attr_in3_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_min_store }, i32 3 }, align 8, !dbg !4297
@sensor_dev_attr_in4_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_min_store }, i32 4 }, align 8, !dbg !4299
@sensor_dev_attr_in0_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_max_store }, i32 0 }, align 8, !dbg !4301
@sensor_dev_attr_in1_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_max_store }, i32 1 }, align 8, !dbg !4303
@sensor_dev_attr_in2_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_max_store }, i32 2 }, align 8, !dbg !4305
@sensor_dev_attr_in3_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_max_store }, i32 3 }, align 8, !dbg !4307
@sensor_dev_attr_in4_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_max_store }, i32 4 }, align 8, !dbg !4309
@sensor_dev_attr_in0_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 0 }, align 8, !dbg !4311
@sensor_dev_attr_in1_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 1 }, align 8, !dbg !4313
@sensor_dev_attr_in2_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 2 }, align 8, !dbg !4315
@sensor_dev_attr_in3_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 3 }, align 8, !dbg !4317
@sensor_dev_attr_in4_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 8 }, align 8, !dbg !4319
@sensor_dev_attr_temp1_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 0 }, align 8, !dbg !4321
@sensor_dev_attr_temp2_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 1 }, align 8, !dbg !4329
@sensor_dev_attr_temp3_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 2 }, align 8, !dbg !4331
@sensor_dev_attr_temp1_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_over_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_over_store }, i32 0 }, align 8, !dbg !4333
@sensor_dev_attr_temp2_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_over_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_over_store }, i32 1 }, align 8, !dbg !4340
@sensor_dev_attr_temp3_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_over_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_over_store }, i32 2 }, align 8, !dbg !4342
@sensor_dev_attr_temp1_max_hyst = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_hyst_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_hyst_store }, i32 0 }, align 8, !dbg !4344
@sensor_dev_attr_temp2_max_hyst = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_hyst_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_hyst_store }, i32 1 }, align 8, !dbg !4346
@sensor_dev_attr_temp3_max_hyst = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_hyst_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_hyst_store }, i32 2 }, align 8, !dbg !4348
@sensor_dev_attr_temp1_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 4 }, align 8, !dbg !4350
@sensor_dev_attr_temp2_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 11 }, align 8, !dbg !4352
@sensor_dev_attr_temp3_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 15 }, align 8, !dbg !4354
@sensor_dev_attr_fan1_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @fan_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 0 }, align 8, !dbg !4356
@sensor_dev_attr_fan2_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @fan_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 1 }, align 8, !dbg !4358
@sensor_dev_attr_fan1_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @fan_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_min_store }, i32 0 }, align 8, !dbg !4360
@sensor_dev_attr_fan2_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @fan_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_min_store }, i32 1 }, align 8, !dbg !4362
@sensor_dev_attr_fan1_div = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @fan_div_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_div_store }, i32 0 }, align 8, !dbg !4364
@sensor_dev_attr_fan2_div = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @fan_div_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_div_store }, i32 1 }, align 8, !dbg !4366
@sensor_dev_attr_fan1_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 6 }, align 8, !dbg !4368
@sensor_dev_attr_fan2_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 7 }, align 8, !dbg !4370
@dev_attr_alarms = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarms_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4372
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @name_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4374
@.str.10 = private unnamed_addr constant [10 x i8] c"in0_input\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@jiffies = external dso_local global i64, align 8
@VIA686A_REG_TEMP = internal constant [3 x i8] c" !\1F", align 1, !dbg !4275
@VIA686A_REG_TEMP_OVER = internal constant [3 x i8] c"9=\1D", align 1, !dbg !4279
@VIA686A_REG_TEMP_HYST = internal constant [3 x i8] c":>\1E", align 1, !dbg !4281
@.str.12 = private unnamed_addr constant [10 x i8] c"in1_input\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"in2_input\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"in3_input\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"in4_input\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"in0_min\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"in1_min\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"in2_min\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"in3_min\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"in4_min\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"in0_max\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"in1_max\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"in2_max\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"in3_max\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"in4_max\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"in0_alarm\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"in1_alarm\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"in2_alarm\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"in3_alarm\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"in4_alarm\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"temp1_input\00", align 1
@temp_lut = internal constant [256 x i16] [i16 -709, i16 -688, i16 -667, i16 -646, i16 -627, i16 -607, i16 -589, i16 -570, i16 -553, i16 -536, i16 -519, i16 -503, i16 -487, i16 -471, i16 -456, i16 -442, i16 -428, i16 -414, i16 -400, i16 -387, i16 -375, i16 -362, i16 -350, i16 -339, i16 -327, i16 -316, i16 -305, i16 -295, i16 -285, i16 -275, i16 -265, i16 -255, i16 -246, i16 -237, i16 -229, i16 -220, i16 -212, i16 -204, i16 -196, i16 -188, i16 -180, i16 -173, i16 -166, i16 -159, i16 -152, i16 -145, i16 -139, i16 -132, i16 -126, i16 -120, i16 -114, i16 -108, i16 -102, i16 -96, i16 -91, i16 -85, i16 -80, i16 -74, i16 -69, i16 -64, i16 -59, i16 -54, i16 -49, i16 -44, i16 -39, i16 -34, i16 -29, i16 -25, i16 -20, i16 -15, i16 -11, i16 -6, i16 -2, i16 3, i16 7, i16 12, i16 16, i16 20, i16 25, i16 29, i16 33, i16 37, i16 42, i16 46, i16 50, i16 54, i16 59, i16 63, i16 67, i16 71, i16 75, i16 79, i16 84, i16 88, i16 92, i16 96, i16 100, i16 104, i16 109, i16 113, i16 117, i16 121, i16 125, i16 130, i16 134, i16 138, i16 142, i16 146, i16 151, i16 155, i16 159, i16 163, i16 168, i16 172, i16 176, i16 181, i16 185, i16 189, i16 193, i16 198, i16 202, i16 206, i16 211, i16 215, i16 219, i16 224, i16 228, i16 232, i16 237, i16 241, i16 245, i16 250, i16 254, i16 259, i16 263, i16 267, i16 272, i16 276, i16 281, i16 285, i16 290, i16 294, i16 299, i16 303, i16 307, i16 312, i16 316, i16 321, i16 325, i16 330, i16 334, i16 339, i16 344, i16 348, i16 353, i16 357, i16 362, i16 366, i16 371, i16 376, i16 380, i16 385, i16 390, i16 395, i16 399, i16 404, i16 409, i16 414, i16 419, i16 423, i16 428, i16 433, i16 438, i16 443, i16 449, i16 454, i16 459, i16 464, i16 469, i16 475, i16 480, i16 486, i16 491, i16 497, i16 502, i16 508, i16 514, i16 520, i16 526, i16 532, i16 538, i16 544, i16 551, i16 557, i16 564, i16 571, i16 578, i16 584, i16 592, i16 599, i16 606, i16 614, i16 621, i16 629, i16 637, i16 645, i16 654, i16 662, i16 671, i16 680, i16 689, i16 698, i16 708, i16 718, i16 728, i16 738, i16 749, i16 759, i16 770, i16 782, i16 793, i16 805, i16 818, i16 830, i16 843, i16 856, i16 870, i16 883, i16 898, i16 912, i16 927, i16 943, i16 958, i16 975, i16 991, i16 1008, i16 1026, i16 1044, i16 1062, i16 1081, i16 1101, i16 1121, i16 1141, i16 1162, i16 1184, i16 1206, i16 1229, i16 1252, i16 1276, i16 1301, i16 1326, i16 1352, i16 1378, i16 1406, i16 1434, i16 1462], align 16, !dbg !4323
@.str.33 = private unnamed_addr constant [12 x i8] c"temp2_input\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"temp3_input\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"temp1_max\00", align 1
@via_lut = internal constant [161 x i8] c"\0C\0C\0D\0E\0E\0F\10\10\11\12\12\13\14\14\15\16\17\17\18\19\1A\1B\1C\1D\1E\1F !#$%'()+-.013579;<>@BEGIKMORTVX[]_bdgiknpsuwz|~\81\83\86\88\8A\8C\8F\91\93\96\98\9A\9C\9E\A0\A2\A4\A6\A8\AA\AC\AE\B0\B2\B4\B6\B7\B9\BB\BC\BE\C0\C1\C3\C4\C6\C7\C8\CA\CB\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DE\DF\E0\E1\E2\E2\E3\E4\E4\E5\E6\E6\E7\E8\E8\E9\E9\EA\EB\EB\EC\EC\ED\ED\EE\EE\EF\EF\F0", align 16, !dbg !4335
@.str.36 = private unnamed_addr constant [10 x i8] c"temp2_max\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"temp3_max\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"temp1_max_hyst\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"temp2_max_hyst\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"temp3_max_hyst\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"temp1_alarm\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"temp2_alarm\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"temp3_alarm\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"fan1_input\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"fan2_input\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"fan1_min\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"fan2_min\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"fan1_div\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"fan2_div\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"fan1_alarm\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"fan2_alarm\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"alarms\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [10 x i8*] [i8* bitcast (%struct.kernel_param* @__param_force_addr to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_force_addrtype238, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__UNIQUE_ID_force_addr239, i32 0, i32 0), i8* bitcast (void ()* @sm_via686a_exit to i8*), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @__UNIQUE_ID_author280, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__UNIQUE_ID_description281, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_file282, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license283, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_sm_via686a_init284 to i8*), i8* bitcast (void ()** @__exitcall_sm_via686a_exit to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @sm_via686a_exit() #0 section ".exit.text" !dbg !4384 {
entry:
  call void @pci_unregister_driver(%struct.pci_driver* @via686a_pci_driver) #5, !dbg !4385
  %0 = load %struct.pci_dev*, %struct.pci_dev** @s_bridge, align 8, !dbg !4386
  %cmp = icmp ne %struct.pci_dev* %0, null, !dbg !4388
  br i1 %cmp, label %if.then, label %if.end, !dbg !4389

if.then:                                          ; preds = %entry
  %1 = load %struct.platform_device*, %struct.platform_device** @pdev, align 8, !dbg !4390
  call void @platform_device_unregister(%struct.platform_device* %1) #5, !dbg !4392
  call void @platform_driver_unregister(%struct.platform_driver* @via686a_driver) #5, !dbg !4393
  %2 = load %struct.pci_dev*, %struct.pci_dev** @s_bridge, align 8, !dbg !4394
  call void @pci_dev_put(%struct.pci_dev* %2) #5, !dbg !4395
  store %struct.pci_dev* null, %struct.pci_dev** @s_bridge, align 8, !dbg !4396
  br label %if.end, !dbg !4397

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4398
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
define internal i32 @sm_via686a_init() #0 section ".init.text" !dbg !4399 {
entry:
  %call = call i32 @__pci_register_driver(%struct.pci_driver* @via686a_pci_driver, %struct.module* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #5, !dbg !4402
  ret i32 %call, !dbg !4403
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @via686a_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !4404 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  %address = alloca i16, align 2
  %val = alloca i16, align 2
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4405, metadata !DIExpression()), !dbg !4406
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !4407, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.declare(metadata i16* %address, metadata !4409, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.declare(metadata i16* %val, metadata !4411, metadata !DIExpression()), !dbg !4412
  %0 = load i16, i16* @force_addr, align 2, !dbg !4413
  %tobool = icmp ne i16 %0, 0, !dbg !4413
  br i1 %tobool, label %if.then, label %if.end8, !dbg !4415

if.then:                                          ; preds = %entry
  %1 = load i16, i16* @force_addr, align 2, !dbg !4416
  %conv = zext i16 %1 to i32, !dbg !4416
  %and = and i32 %conv, -128, !dbg !4418
  %conv1 = trunc i32 %and to i16, !dbg !4416
  store i16 %conv1, i16* %address, align 2, !dbg !4419
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4420
  %dev2 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 41, !dbg !4420
  %3 = load i16, i16* %address, align 2, !dbg !4420
  %conv3 = zext i16 %3 to i32, !dbg !4420
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %conv3) #6, !dbg !4420
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4421
  %5 = load i16, i16* %address, align 2, !dbg !4423
  %conv4 = zext i16 %5 to i32, !dbg !4423
  %or = or i32 %conv4, 1, !dbg !4424
  %conv5 = trunc i32 %or to i16, !dbg !4423
  %call = call i32 @pci_write_config_word(%struct.pci_dev* %4, i32 112, i16 zeroext %conv5) #5, !dbg !4425
  %cmp = icmp ne i32 0, %call, !dbg !4426
  br i1 %cmp, label %if.then7, label %if.end, !dbg !4427

if.then7:                                         ; preds = %if.then
  store i32 -19, i32* %retval, align 4, !dbg !4428
  br label %return, !dbg !4428

if.end:                                           ; preds = %if.then
  br label %if.end8, !dbg !4429

if.end8:                                          ; preds = %if.end, %entry
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4430
  %call9 = call i32 @pci_read_config_word(%struct.pci_dev* %6, i32 112, i16* %val) #5, !dbg !4432
  %cmp10 = icmp ne i32 0, %call9, !dbg !4433
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !4434

if.then12:                                        ; preds = %if.end8
  store i32 -19, i32* %retval, align 4, !dbg !4435
  br label %return, !dbg !4435

if.end13:                                         ; preds = %if.end8
  %7 = load i16, i16* %val, align 2, !dbg !4436
  %conv14 = zext i16 %7 to i32, !dbg !4436
  %and15 = and i32 %conv14, -128, !dbg !4437
  %conv16 = trunc i32 %and15 to i16, !dbg !4436
  store i16 %conv16, i16* %address, align 2, !dbg !4438
  %8 = load i16, i16* %address, align 2, !dbg !4439
  %conv17 = zext i16 %8 to i32, !dbg !4439
  %cmp18 = icmp eq i32 %conv17, 0, !dbg !4441
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !4442

if.then20:                                        ; preds = %if.end13
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4443
  %dev21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 41, !dbg !4443
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev21, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4443
  store i32 -19, i32* %retval, align 4, !dbg !4445
  br label %return, !dbg !4445

if.end22:                                         ; preds = %if.end13
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4446
  %call23 = call i32 @pci_read_config_word(%struct.pci_dev* %10, i32 116, i16* %val) #5, !dbg !4448
  %cmp24 = icmp ne i32 0, %call23, !dbg !4449
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !4450

if.then26:                                        ; preds = %if.end22
  store i32 -19, i32* %retval, align 4, !dbg !4451
  br label %return, !dbg !4451

if.end27:                                         ; preds = %if.end22
  %11 = load i16, i16* %val, align 2, !dbg !4452
  %conv28 = zext i16 %11 to i32, !dbg !4452
  %and29 = and i32 %conv28, 1, !dbg !4454
  %tobool30 = icmp ne i32 %and29, 0, !dbg !4454
  br i1 %tobool30, label %if.end46, label %if.then31, !dbg !4455

if.then31:                                        ; preds = %if.end27
  %12 = load i16, i16* @force_addr, align 2, !dbg !4456
  %tobool32 = icmp ne i16 %12, 0, !dbg !4456
  br i1 %tobool32, label %if.end36, label %if.then33, !dbg !4459

if.then33:                                        ; preds = %if.then31
  %13 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4460
  %dev34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 41, !dbg !4460
  %14 = load i16, i16* %address, align 2, !dbg !4460
  %conv35 = zext i16 %14 to i32, !dbg !4460
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %conv35) #6, !dbg !4460
  store i32 -19, i32* %retval, align 4, !dbg !4462
  br label %return, !dbg !4462

if.end36:                                         ; preds = %if.then31
  %15 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4463
  %dev37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 41, !dbg !4463
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !4463
  %16 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4464
  %17 = load i16, i16* %val, align 2, !dbg !4466
  %conv38 = zext i16 %17 to i32, !dbg !4466
  %or39 = or i32 %conv38, 1, !dbg !4467
  %conv40 = trunc i32 %or39 to i16, !dbg !4466
  %call41 = call i32 @pci_write_config_word(%struct.pci_dev* %16, i32 116, i16 zeroext %conv40) #5, !dbg !4468
  %cmp42 = icmp ne i32 0, %call41, !dbg !4469
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !4470

if.then44:                                        ; preds = %if.end36
  store i32 -19, i32* %retval, align 4, !dbg !4471
  br label %return, !dbg !4471

if.end45:                                         ; preds = %if.end36
  br label %if.end46, !dbg !4472

if.end46:                                         ; preds = %if.end45, %if.end27
  %call47 = call i32 @__platform_driver_register(%struct.platform_driver* @via686a_driver, %struct.module* null) #5, !dbg !4473
  %tobool48 = icmp ne i32 %call47, 0, !dbg !4473
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !4475

if.then49:                                        ; preds = %if.end46
  br label %exit, !dbg !4476

if.end50:                                         ; preds = %if.end46
  %18 = load i16, i16* %address, align 2, !dbg !4477
  %call51 = call i32 @via686a_device_add(i16 zeroext %18) #5, !dbg !4479
  %tobool52 = icmp ne i32 %call51, 0, !dbg !4479
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !4480

if.then53:                                        ; preds = %if.end50
  br label %exit_unregister, !dbg !4481

if.end54:                                         ; preds = %if.end50
  %19 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4482
  %call55 = call %struct.pci_dev* @pci_dev_get(%struct.pci_dev* %19) #5, !dbg !4483
  store %struct.pci_dev* %call55, %struct.pci_dev** @s_bridge, align 8, !dbg !4484
  store i32 -19, i32* %retval, align 4, !dbg !4485
  br label %return, !dbg !4485

exit_unregister:                                  ; preds = %if.then53
  call void @llvm.dbg.label(metadata !4486), !dbg !4487
  call void @platform_driver_unregister(%struct.platform_driver* @via686a_driver) #5, !dbg !4488
  br label %exit, !dbg !4488

exit:                                             ; preds = %exit_unregister, %if.then49
  call void @llvm.dbg.label(metadata !4489), !dbg !4490
  store i32 -19, i32* %retval, align 4, !dbg !4491
  br label %return, !dbg !4491

return:                                           ; preds = %exit, %if.end54, %if.then44, %if.then33, %if.then26, %if.then20, %if.then12, %if.then7
  %20 = load i32, i32* %retval, align 4, !dbg !4492
  ret i32 %20, !dbg !4492
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
define internal i32 @via686a_device_add(i16 zeroext %address) #2 !dbg !4493 {
entry:
  %retval = alloca i32, align 4
  %address.addr = alloca i16, align 2
  %res = alloca %struct.resource, align 8
  %err = alloca i32, align 4
  store i16 %address, i16* %address.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %address.addr, metadata !4496, metadata !DIExpression()), !dbg !4497
  call void @llvm.dbg.declare(metadata %struct.resource* %res, metadata !4498, metadata !DIExpression()), !dbg !4499
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 0, !dbg !4500
  %0 = load i16, i16* %address.addr, align 2, !dbg !4501
  %conv = zext i16 %0 to i64, !dbg !4501
  store i64 %conv, i64* %start, align 8, !dbg !4500
  %end = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 1, !dbg !4500
  %1 = load i16, i16* %address.addr, align 2, !dbg !4502
  %conv1 = zext i16 %1 to i32, !dbg !4502
  %add = add i32 %conv1, 128, !dbg !4503
  %sub = sub i32 %add, 1, !dbg !4504
  %conv2 = sext i32 %sub to i64, !dbg !4502
  store i64 %conv2, i64* %end, align 8, !dbg !4500
  %name = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 2, !dbg !4500
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %name, align 8, !dbg !4500
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 3, !dbg !4500
  store i64 256, i64* %flags, align 8, !dbg !4500
  %desc = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 4, !dbg !4500
  store i64 0, i64* %desc, align 8, !dbg !4500
  %parent = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 5, !dbg !4500
  store %struct.resource* null, %struct.resource** %parent, align 8, !dbg !4500
  %sibling = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 6, !dbg !4500
  store %struct.resource* null, %struct.resource** %sibling, align 8, !dbg !4500
  %child = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 7, !dbg !4500
  store %struct.resource* null, %struct.resource** %child, align 8, !dbg !4500
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4505, metadata !DIExpression()), !dbg !4506
  %call = call i32 @acpi_check_resource_conflict(%struct.resource* %res) #5, !dbg !4507
  store i32 %call, i32* %err, align 4, !dbg !4508
  %2 = load i32, i32* %err, align 4, !dbg !4509
  %tobool = icmp ne i32 %2, 0, !dbg !4509
  br i1 %tobool, label %if.then, label %if.end, !dbg !4511

if.then:                                          ; preds = %entry
  br label %exit, !dbg !4512

if.end:                                           ; preds = %entry
  %3 = load i16, i16* %address.addr, align 2, !dbg !4513
  %conv3 = zext i16 %3 to i32, !dbg !4513
  %call4 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %conv3) #5, !dbg !4514
  store %struct.platform_device* %call4, %struct.platform_device** @pdev, align 8, !dbg !4515
  %4 = load %struct.platform_device*, %struct.platform_device** @pdev, align 8, !dbg !4516
  %tobool5 = icmp ne %struct.platform_device* %4, null, !dbg !4516
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !4518

if.then6:                                         ; preds = %if.end
  store i32 -12, i32* %err, align 4, !dbg !4519
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4521
  br label %exit, !dbg !4522

if.end8:                                          ; preds = %if.end
  %5 = load %struct.platform_device*, %struct.platform_device** @pdev, align 8, !dbg !4523
  %call9 = call i32 @platform_device_add_resources(%struct.platform_device* %5, %struct.resource* %res, i32 1) #5, !dbg !4524
  store i32 %call9, i32* %err, align 4, !dbg !4525
  %6 = load i32, i32* %err, align 4, !dbg !4526
  %tobool10 = icmp ne i32 %6, 0, !dbg !4526
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !4528

if.then11:                                        ; preds = %if.end8
  %7 = load i32, i32* %err, align 4, !dbg !4529
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %7) #6, !dbg !4529
  br label %exit_device_put, !dbg !4531

if.end13:                                         ; preds = %if.end8
  %8 = load %struct.platform_device*, %struct.platform_device** @pdev, align 8, !dbg !4532
  %call14 = call i32 @platform_device_add(%struct.platform_device* %8) #5, !dbg !4533
  store i32 %call14, i32* %err, align 4, !dbg !4534
  %9 = load i32, i32* %err, align 4, !dbg !4535
  %tobool15 = icmp ne i32 %9, 0, !dbg !4535
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !4537

if.then16:                                        ; preds = %if.end13
  %10 = load i32, i32* %err, align 4, !dbg !4538
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %10) #6, !dbg !4538
  br label %exit_device_put, !dbg !4540

if.end18:                                         ; preds = %if.end13
  store i32 0, i32* %retval, align 4, !dbg !4541
  br label %return, !dbg !4541

exit_device_put:                                  ; preds = %if.then16, %if.then11
  call void @llvm.dbg.label(metadata !4542), !dbg !4543
  %11 = load %struct.platform_device*, %struct.platform_device** @pdev, align 8, !dbg !4544
  call void @platform_device_put(%struct.platform_device* %11) #5, !dbg !4545
  br label %exit, !dbg !4545

exit:                                             ; preds = %exit_device_put, %if.then6, %if.then
  call void @llvm.dbg.label(metadata !4546), !dbg !4547
  %12 = load i32, i32* %err, align 4, !dbg !4548
  store i32 %12, i32* %retval, align 4, !dbg !4549
  br label %return, !dbg !4549

return:                                           ; preds = %exit, %if.end18
  %13 = load i32, i32* %retval, align 4, !dbg !4550
  ret i32 %13, !dbg !4550
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
define internal i32 @via686a_probe(%struct.platform_device* %pdev) #2 !dbg !4267 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data = alloca %struct.via686a_data*, align 8
  %res = alloca %struct.resource*, align 8
  %err = alloca i32, align 4
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !4551, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data, metadata !4553, metadata !DIExpression()), !dbg !4579
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !4580, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4582, metadata !DIExpression()), !dbg !4583
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4584
  %call = call %struct.resource* @platform_get_resource(%struct.platform_device* %0, i32 256, i32 0) #5, !dbg !4585
  store %struct.resource* %call, %struct.resource** %res, align 8, !dbg !4586
  %1 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4587
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %1, i32 0, i32 3, !dbg !4587
  %2 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4587
  %start = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 0, !dbg !4587
  %3 = load i64, i64* %start, align 8, !dbg !4587
  %4 = load i8*, i8** getelementptr inbounds (%struct.platform_driver, %struct.platform_driver* @via686a_driver, i32 0, i32 5, i32 0), align 8, !dbg !4587
  %call1 = call %struct.resource* @__devm_request_region(%struct.device* %dev, %struct.resource* @ioport_resource, i64 %3, i64 128, i8* %4) #5, !dbg !4587
  %tobool = icmp ne %struct.resource* %call1, null, !dbg !4587
  br i1 %tobool, label %if.end, label %if.then, !dbg !4589

if.then:                                          ; preds = %entry
  %5 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4590
  %dev2 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 3, !dbg !4590
  %6 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4590
  %start3 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0, !dbg !4590
  %7 = load i64, i64* %start3, align 8, !dbg !4590
  %8 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4590
  %end = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 1, !dbg !4590
  %9 = load i64, i64* %end, align 8, !dbg !4590
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i64 %7, i64 %9) #6, !dbg !4590
  store i32 -19, i32* %retval, align 4, !dbg !4592
  br label %return, !dbg !4592

if.end:                                           ; preds = %entry
  %10 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4593
  %dev4 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 3, !dbg !4594
  %call5 = call i8* @devm_kzalloc(%struct.device* %dev4, i64 104, i32 3264) #5, !dbg !4595
  %11 = bitcast i8* %call5 to %struct.via686a_data*, !dbg !4595
  store %struct.via686a_data* %11, %struct.via686a_data** %data, align 8, !dbg !4596
  %12 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4597
  %tobool6 = icmp ne %struct.via686a_data* %12, null, !dbg !4597
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4599

if.then7:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4600
  br label %return, !dbg !4600

if.end8:                                          ; preds = %if.end
  %13 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4601
  %14 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4602
  %15 = bitcast %struct.via686a_data* %14 to i8*, !dbg !4602
  call void @platform_set_drvdata(%struct.platform_device* %13, i8* %15) #5, !dbg !4603
  %16 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4604
  %start9 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 0, !dbg !4605
  %17 = load i64, i64* %start9, align 8, !dbg !4605
  %conv = trunc i64 %17 to i16, !dbg !4604
  %18 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4606
  %addr = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %18, i32 0, i32 0, !dbg !4607
  store i16 %conv, i16* %addr, align 8, !dbg !4608
  %19 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4609
  %name = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %19, i32 0, i32 1, !dbg !4610
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %name, align 8, !dbg !4611
  br label %do.body, !dbg !4612

do.body:                                          ; preds = %if.end8
  %20 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4613
  %update_lock = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %20, i32 0, i32 3, !dbg !4613
  call void @__mutex_init(%struct.mutex* %update_lock, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), %struct.lock_class_key* @via686a_probe.__key) #5, !dbg !4613
  br label %do.end, !dbg !4613

do.end:                                           ; preds = %do.body
  %21 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4615
  call void @via686a_init_device(%struct.via686a_data* %21) #5, !dbg !4616
  %22 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4617
  %dev10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 3, !dbg !4618
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev10, i32 0, i32 0, !dbg !4619
  %call11 = call i32 @sysfs_create_group(%struct.kobject* %kobj, %struct.attribute_group* @via686a_group) #5, !dbg !4620
  store i32 %call11, i32* %err, align 4, !dbg !4621
  %23 = load i32, i32* %err, align 4, !dbg !4622
  %tobool12 = icmp ne i32 %23, 0, !dbg !4622
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4624

if.then13:                                        ; preds = %do.end
  %24 = load i32, i32* %err, align 4, !dbg !4625
  store i32 %24, i32* %retval, align 4, !dbg !4626
  br label %return, !dbg !4626

if.end14:                                         ; preds = %do.end
  %25 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4627
  %dev15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 3, !dbg !4628
  %call16 = call %struct.device* @hwmon_device_register(%struct.device* %dev15) #5, !dbg !4629
  %26 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4630
  %hwmon_dev = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %26, i32 0, i32 2, !dbg !4631
  store %struct.device* %call16, %struct.device** %hwmon_dev, align 8, !dbg !4632
  %27 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4633
  %hwmon_dev17 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %27, i32 0, i32 2, !dbg !4635
  %28 = load %struct.device*, %struct.device** %hwmon_dev17, align 8, !dbg !4635
  %29 = bitcast %struct.device* %28 to i8*, !dbg !4633
  %call18 = call zeroext i1 @IS_ERR(i8* %29) #5, !dbg !4636
  br i1 %call18, label %if.then19, label %if.end23, !dbg !4637

if.then19:                                        ; preds = %if.end14
  %30 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4638
  %hwmon_dev20 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %30, i32 0, i32 2, !dbg !4640
  %31 = load %struct.device*, %struct.device** %hwmon_dev20, align 8, !dbg !4640
  %32 = bitcast %struct.device* %31 to i8*, !dbg !4638
  %call21 = call i64 @PTR_ERR(i8* %32) #5, !dbg !4641
  %conv22 = trunc i64 %call21 to i32, !dbg !4641
  store i32 %conv22, i32* %err, align 4, !dbg !4642
  br label %exit_remove_files, !dbg !4643

if.end23:                                         ; preds = %if.end14
  store i32 0, i32* %retval, align 4, !dbg !4644
  br label %return, !dbg !4644

exit_remove_files:                                ; preds = %if.then19
  call void @llvm.dbg.label(metadata !4645), !dbg !4646
  %33 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4647
  %dev24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 3, !dbg !4648
  %kobj25 = getelementptr inbounds %struct.device, %struct.device* %dev24, i32 0, i32 0, !dbg !4649
  call void @sysfs_remove_group(%struct.kobject* %kobj25, %struct.attribute_group* @via686a_group) #5, !dbg !4650
  %34 = load i32, i32* %err, align 4, !dbg !4651
  store i32 %34, i32* %retval, align 4, !dbg !4652
  br label %return, !dbg !4652

return:                                           ; preds = %exit_remove_files, %if.end23, %if.then13, %if.then7, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !4653
  ret i32 %35, !dbg !4653
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @via686a_remove(%struct.platform_device* %pdev) #2 !dbg !4654 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data = alloca %struct.via686a_data*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !4655, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data, metadata !4657, metadata !DIExpression()), !dbg !4658
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4659
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #5, !dbg !4660
  %1 = bitcast i8* %call to %struct.via686a_data*, !dbg !4660
  store %struct.via686a_data* %1, %struct.via686a_data** %data, align 8, !dbg !4658
  %2 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4661
  %hwmon_dev = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %2, i32 0, i32 2, !dbg !4662
  %3 = load %struct.device*, %struct.device** %hwmon_dev, align 8, !dbg !4662
  call void @hwmon_device_unregister(%struct.device* %3) #5, !dbg !4663
  %4 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4664
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 3, !dbg !4665
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 0, !dbg !4666
  call void @sysfs_remove_group(%struct.kobject* %kobj, %struct.attribute_group* @via686a_group) #5, !dbg !4667
  ret i32 0, !dbg !4668
}

; Function Attrs: noredzone
declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

; Function Attrs: noredzone
declare dso_local %struct.resource* @__devm_request_region(%struct.device*, %struct.resource*, i64, i64, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !4669 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4672, metadata !DIExpression()), !dbg !4673
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4674, metadata !DIExpression()), !dbg !4675
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !4676, metadata !DIExpression()), !dbg !4677
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4678
  %1 = load i64, i64* %size.addr, align 8, !dbg !4679
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !4680
  %or = or i32 %2, 256, !dbg !4681
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #5, !dbg !4682
  ret i8* %call, !dbg !4683
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !4684 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !4687, metadata !DIExpression()), !dbg !4688
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4689, metadata !DIExpression()), !dbg !4690
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4691
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !4692
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4693
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #5, !dbg !4694
  ret void, !dbg !4695
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @via686a_init_device(%struct.via686a_data* %data) #2 !dbg !4696 {
entry:
  %data.addr = alloca %struct.via686a_data*, align 8
  %reg = alloca i8, align 1
  store %struct.via686a_data* %data, %struct.via686a_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data.addr, metadata !4699, metadata !DIExpression()), !dbg !4700
  call void @llvm.dbg.declare(metadata i8* %reg, metadata !4701, metadata !DIExpression()), !dbg !4702
  %0 = load %struct.via686a_data*, %struct.via686a_data** %data.addr, align 8, !dbg !4703
  %call = call i32 @via686a_read_value(%struct.via686a_data* %0, i8 zeroext 64) #5, !dbg !4704
  %conv = trunc i32 %call to i8, !dbg !4704
  store i8 %conv, i8* %reg, align 1, !dbg !4705
  %1 = load %struct.via686a_data*, %struct.via686a_data** %data.addr, align 8, !dbg !4706
  %2 = load i8, i8* %reg, align 1, !dbg !4707
  %conv1 = zext i8 %2 to i32, !dbg !4707
  %or = or i32 %conv1, 1, !dbg !4708
  %and = and i32 %or, 127, !dbg !4709
  %conv2 = trunc i32 %and to i8, !dbg !4710
  call void @via686a_write_value(%struct.via686a_data* %1, i8 zeroext 64, i8 zeroext %conv2) #5, !dbg !4711
  %3 = load %struct.via686a_data*, %struct.via686a_data** %data.addr, align 8, !dbg !4712
  %call3 = call i32 @via686a_read_value(%struct.via686a_data* %3, i8 zeroext 75) #5, !dbg !4713
  %conv4 = trunc i32 %call3 to i8, !dbg !4713
  store i8 %conv4, i8* %reg, align 1, !dbg !4714
  %4 = load %struct.via686a_data*, %struct.via686a_data** %data.addr, align 8, !dbg !4715
  %5 = load i8, i8* %reg, align 1, !dbg !4716
  %conv5 = zext i8 %5 to i32, !dbg !4716
  %and6 = and i32 %conv5, -64, !dbg !4717
  %conv7 = trunc i32 %and6 to i8, !dbg !4718
  call void @via686a_write_value(%struct.via686a_data* %4, i8 zeroext 75, i8 zeroext %conv7) #5, !dbg !4719
  %6 = load %struct.via686a_data*, %struct.via686a_data** %data.addr, align 8, !dbg !4720
  call void @via686a_update_fan_div(%struct.via686a_data* %6) #5, !dbg !4721
  ret void, !dbg !4722
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_group(%struct.kobject*, %struct.attribute_group*) #1

; Function Attrs: noredzone
declare dso_local %struct.device* @hwmon_device_register(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !4723 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4727, metadata !DIExpression()), !dbg !4728
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4729
  %1 = ptrtoint i8* %0 to i64, !dbg !4729
  %2 = inttoptr i64 %1 to i8*, !dbg !4729
  %3 = ptrtoint i8* %2 to i64, !dbg !4729
  %cmp = icmp uge i64 %3, -4095, !dbg !4729
  %lnot = xor i1 %cmp, true, !dbg !4729
  %lnot1 = xor i1 %lnot, true, !dbg !4729
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4729
  %conv = sext i32 %lnot.ext to i64, !dbg !4729
  %tobool = icmp ne i64 %conv, 0, !dbg !4729
  ret i1 %tobool, !dbg !4730
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !4731 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4734, metadata !DIExpression()), !dbg !4735
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4736
  %1 = ptrtoint i8* %0 to i64, !dbg !4737
  ret i64 %1, !dbg !4738
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_group(%struct.kobject*, %struct.attribute_group*) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !4739 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4742, metadata !DIExpression()), !dbg !4743
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4744, metadata !DIExpression()), !dbg !4745
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4746
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4747
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !4748
  store i8* %0, i8** %driver_data, align 8, !dbg !4749
  ret void, !dbg !4750
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @via686a_read_value(%struct.via686a_data* %data, i8 zeroext %reg) #2 !dbg !4751 {
entry:
  %data.addr = alloca %struct.via686a_data*, align 8
  %reg.addr = alloca i8, align 1
  store %struct.via686a_data* %data, %struct.via686a_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data.addr, metadata !4754, metadata !DIExpression()), !dbg !4755
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4756, metadata !DIExpression()), !dbg !4757
  %0 = load %struct.via686a_data*, %struct.via686a_data** %data.addr, align 8, !dbg !4758
  %addr = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %0, i32 0, i32 0, !dbg !4759
  %1 = load i16, i16* %addr, align 8, !dbg !4759
  %conv = zext i16 %1 to i32, !dbg !4758
  %2 = load i8, i8* %reg.addr, align 1, !dbg !4760
  %conv1 = zext i8 %2 to i32, !dbg !4760
  %add = add i32 %conv, %conv1, !dbg !4761
  %call = call zeroext i8 @inb_p(i32 %add) #5, !dbg !4762
  %conv2 = zext i8 %call to i32, !dbg !4762
  ret i32 %conv2, !dbg !4763
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @via686a_write_value(%struct.via686a_data* %data, i8 zeroext %reg, i8 zeroext %value) #2 !dbg !4764 {
entry:
  %data.addr = alloca %struct.via686a_data*, align 8
  %reg.addr = alloca i8, align 1
  %value.addr = alloca i8, align 1
  store %struct.via686a_data* %data, %struct.via686a_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data.addr, metadata !4767, metadata !DIExpression()), !dbg !4768
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4769, metadata !DIExpression()), !dbg !4770
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !4771, metadata !DIExpression()), !dbg !4772
  %0 = load i8, i8* %value.addr, align 1, !dbg !4773
  %1 = load %struct.via686a_data*, %struct.via686a_data** %data.addr, align 8, !dbg !4774
  %addr = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %1, i32 0, i32 0, !dbg !4775
  %2 = load i16, i16* %addr, align 8, !dbg !4775
  %conv = zext i16 %2 to i32, !dbg !4774
  %3 = load i8, i8* %reg.addr, align 1, !dbg !4776
  %conv1 = zext i8 %3 to i32, !dbg !4776
  %add = add i32 %conv, %conv1, !dbg !4777
  call void @outb_p(i8 zeroext %0, i32 %add) #5, !dbg !4778
  ret void, !dbg !4779
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @via686a_update_fan_div(%struct.via686a_data* %data) #2 !dbg !4780 {
entry:
  %data.addr = alloca %struct.via686a_data*, align 8
  %reg = alloca i32, align 4
  store %struct.via686a_data* %data, %struct.via686a_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data.addr, metadata !4781, metadata !DIExpression()), !dbg !4782
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !4783, metadata !DIExpression()), !dbg !4784
  %0 = load %struct.via686a_data*, %struct.via686a_data** %data.addr, align 8, !dbg !4785
  %call = call i32 @via686a_read_value(%struct.via686a_data* %0, i8 zeroext 71) #5, !dbg !4786
  store i32 %call, i32* %reg, align 4, !dbg !4784
  %1 = load i32, i32* %reg, align 4, !dbg !4787
  %shr = ashr i32 %1, 4, !dbg !4788
  %and = and i32 %shr, 3, !dbg !4789
  %conv = trunc i32 %and to i8, !dbg !4790
  %2 = load %struct.via686a_data*, %struct.via686a_data** %data.addr, align 8, !dbg !4791
  %fan_div = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %2, i32 0, i32 14, !dbg !4792
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %fan_div, i64 0, i64 0, !dbg !4791
  store i8 %conv, i8* %arrayidx, align 8, !dbg !4793
  %3 = load i32, i32* %reg, align 4, !dbg !4794
  %shr1 = ashr i32 %3, 6, !dbg !4795
  %conv2 = trunc i32 %shr1 to i8, !dbg !4794
  %4 = load %struct.via686a_data*, %struct.via686a_data** %data.addr, align 8, !dbg !4796
  %fan_div3 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %4, i32 0, i32 14, !dbg !4797
  %arrayidx4 = getelementptr [2 x i8], [2 x i8]* %fan_div3, i64 0, i64 1, !dbg !4796
  store i8 %conv2, i8* %arrayidx4, align 1, !dbg !4798
  ret void, !dbg !4799
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb_p(i32 %port) #2 !dbg !4800 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4804, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.declare(metadata i8* %value, metadata !4806, metadata !DIExpression()), !dbg !4805
  %0 = load i32, i32* %port.addr, align 4, !dbg !4805
  %call = call zeroext i8 @inb(i32 %0) #5, !dbg !4805
  store i8 %call, i8* %value, align 1, !dbg !4805
  call void @slow_down_io() #5, !dbg !4805
  %1 = load i8, i8* %value, align 1, !dbg !4805
  ret i8 %1, !dbg !4805
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb(i32 %port) #2 !dbg !4807 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4808, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.declare(metadata i8* %value, metadata !4810, metadata !DIExpression()), !dbg !4809
  %0 = load i32, i32* %port.addr, align 4, !dbg !4809
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #7, !dbg !4809, !srcloc !4811
  store i8 %1, i8* %value, align 1, !dbg !4809
  %2 = load i8, i8* %value, align 1, !dbg !4809
  ret i8 %2, !dbg !4809
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @slow_down_io() #2 !dbg !4812 {
entry:
  %0 = load void ()*, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 0), align 8, !dbg !4814
  call void %0() #5, !dbg !4815
  ret void, !dbg !4816
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb_p(i8 zeroext %value, i32 %port) #2 !dbg !4817 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !4820, metadata !DIExpression()), !dbg !4821
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4822, metadata !DIExpression()), !dbg !4821
  %0 = load i8, i8* %value.addr, align 1, !dbg !4821
  %1 = load i32, i32* %port.addr, align 4, !dbg !4821
  call void @outb(i8 zeroext %0, i32 %1) #5, !dbg !4821
  call void @slow_down_io() #5, !dbg !4821
  ret void, !dbg !4821
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb(i8 zeroext %value, i32 %port) #2 !dbg !4823 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !4824, metadata !DIExpression()), !dbg !4825
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4826, metadata !DIExpression()), !dbg !4825
  %0 = load i8, i8* %value.addr, align 1, !dbg !4825
  %1 = load i32, i32* %port.addr, align 4, !dbg !4825
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i32 %1) #7, !dbg !4825, !srcloc !4827
  ret void, !dbg !4825
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @in_show(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf) #2 !dbg !4828 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.via686a_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4829, metadata !DIExpression()), !dbg !4830
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !4831, metadata !DIExpression()), !dbg !4832
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4833, metadata !DIExpression()), !dbg !4834
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data, metadata !4835, metadata !DIExpression()), !dbg !4836
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4837
  %call = call %struct.via686a_data* @via686a_update_device(%struct.device* %0) #5, !dbg !4838
  store %struct.via686a_data* %call, %struct.via686a_data** %data, align 8, !dbg !4836
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !4839, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4841, metadata !DIExpression()), !dbg !4843
  %1 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !4843
  %2 = bitcast %struct.device_attribute* %1 to i8*, !dbg !4843
  store i8* %2, i8** %__mptr, align 8, !dbg !4843
  br label %do.body, !dbg !4843

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4844

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4843
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !4843
  %4 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !4843
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %tmp, align 8, !dbg !4844
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !4843
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %attr, align 8, !dbg !4840
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !4846, metadata !DIExpression()), !dbg !4847
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !4848
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %6, i32 0, i32 1, !dbg !4849
  %7 = load i32, i32* %index, align 8, !dbg !4849
  store i32 %7, i32* %nr, align 4, !dbg !4847
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !4850
  %9 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4851
  %in = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %9, i32 0, i32 6, !dbg !4852
  %10 = load i32, i32* %nr, align 4, !dbg !4853
  %idxprom = sext i32 %10 to i64, !dbg !4851
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %in, i64 0, i64 %idxprom, !dbg !4851
  %11 = load i8, i8* %arrayidx, align 1, !dbg !4851
  %12 = load i32, i32* %nr, align 4, !dbg !4854
  %call1 = call i64 @IN_FROM_REG(i8 zeroext %11, i32 %12) #5, !dbg !4855
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %call1) #5, !dbg !4856
  %conv = sext i32 %call2 to i64, !dbg !4856
  ret i64 %conv, !dbg !4857
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.via686a_data* @via686a_update_device(%struct.device* %dev) #2 !dbg !4858 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data = alloca %struct.via686a_data*, align 8
  %i = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4861, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data, metadata !4863, metadata !DIExpression()), !dbg !4864
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4865
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !4866
  %1 = bitcast i8* %call to %struct.via686a_data*, !dbg !4866
  store %struct.via686a_data* %1, %struct.via686a_data** %data, align 8, !dbg !4864
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4867, metadata !DIExpression()), !dbg !4868
  %2 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4869
  %update_lock = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %2, i32 0, i32 3, !dbg !4870
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !4871
  %3 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4872
  %last_updated = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %3, i32 0, i32 5, !dbg !4872
  %4 = load i64, i64* %last_updated, align 8, !dbg !4872
  %add = add i64 %4, 250, !dbg !4872
  %add1 = add i64 %add, 125, !dbg !4872
  %5 = load volatile i64, i64* @jiffies, align 8, !dbg !4872
  %sub = sub i64 %add1, %5, !dbg !4872
  %cmp = icmp slt i64 %sub, 0, !dbg !4872
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4874

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4875
  %valid = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %6, i32 0, i32 4, !dbg !4876
  %7 = load i8, i8* %valid, align 8, !dbg !4876
  %tobool = icmp ne i8 %7, 0, !dbg !4875
  br i1 %tobool, label %if.end, label %if.then, !dbg !4877

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %i, align 4, !dbg !4878
  br label %for.cond, !dbg !4881

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4, !dbg !4882
  %cmp2 = icmp sle i32 %8, 4, !dbg !4884
  br i1 %cmp2, label %for.body, label %for.end, !dbg !4885

for.body:                                         ; preds = %for.cond
  %9 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4886
  %10 = load i32, i32* %i, align 4, !dbg !4888
  %add3 = add i32 34, %10, !dbg !4888
  %conv = trunc i32 %add3 to i8, !dbg !4888
  %call4 = call i32 @via686a_read_value(%struct.via686a_data* %9, i8 zeroext %conv) #5, !dbg !4889
  %conv5 = trunc i32 %call4 to i8, !dbg !4889
  %11 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4890
  %in = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %11, i32 0, i32 6, !dbg !4891
  %12 = load i32, i32* %i, align 4, !dbg !4892
  %idxprom = sext i32 %12 to i64, !dbg !4890
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %in, i64 0, i64 %idxprom, !dbg !4890
  store i8 %conv5, i8* %arrayidx, align 1, !dbg !4893
  %13 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4894
  %14 = load i32, i32* %i, align 4, !dbg !4895
  %mul = mul i32 %14, 2, !dbg !4895
  %add6 = add i32 44, %mul, !dbg !4895
  %conv7 = trunc i32 %add6 to i8, !dbg !4895
  %call8 = call i32 @via686a_read_value(%struct.via686a_data* %13, i8 zeroext %conv7) #5, !dbg !4896
  %conv9 = trunc i32 %call8 to i8, !dbg !4896
  %15 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4897
  %in_min = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %15, i32 0, i32 8, !dbg !4898
  %16 = load i32, i32* %i, align 4, !dbg !4899
  %idxprom10 = sext i32 %16 to i64, !dbg !4897
  %arrayidx11 = getelementptr [5 x i8], [5 x i8]* %in_min, i64 0, i64 %idxprom10, !dbg !4897
  store i8 %conv9, i8* %arrayidx11, align 1, !dbg !4900
  %17 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4901
  %18 = load i32, i32* %i, align 4, !dbg !4902
  %mul12 = mul i32 %18, 2, !dbg !4902
  %add13 = add i32 43, %mul12, !dbg !4902
  %conv14 = trunc i32 %add13 to i8, !dbg !4902
  %call15 = call i32 @via686a_read_value(%struct.via686a_data* %17, i8 zeroext %conv14) #5, !dbg !4903
  %conv16 = trunc i32 %call15 to i8, !dbg !4903
  %19 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4904
  %in_max = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %19, i32 0, i32 7, !dbg !4905
  %20 = load i32, i32* %i, align 4, !dbg !4906
  %idxprom17 = sext i32 %20 to i64, !dbg !4904
  %arrayidx18 = getelementptr [5 x i8], [5 x i8]* %in_max, i64 0, i64 %idxprom17, !dbg !4904
  store i8 %conv16, i8* %arrayidx18, align 1, !dbg !4907
  br label %for.inc, !dbg !4908

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !4909
  %inc = add i32 %21, 1, !dbg !4909
  store i32 %inc, i32* %i, align 4, !dbg !4909
  br label %for.cond, !dbg !4910, !llvm.loop !4911

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4, !dbg !4913
  br label %for.cond19, !dbg !4915

for.cond19:                                       ; preds = %for.inc37, %for.end
  %22 = load i32, i32* %i, align 4, !dbg !4916
  %cmp20 = icmp sle i32 %22, 2, !dbg !4918
  br i1 %cmp20, label %for.body22, label %for.end39, !dbg !4919

for.body22:                                       ; preds = %for.cond19
  %23 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4920
  %24 = load i32, i32* %i, align 4, !dbg !4922
  %add23 = add i32 40, %24, !dbg !4922
  %conv24 = trunc i32 %add23 to i8, !dbg !4922
  %call25 = call i32 @via686a_read_value(%struct.via686a_data* %23, i8 zeroext %conv24) #5, !dbg !4923
  %conv26 = trunc i32 %call25 to i8, !dbg !4923
  %25 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4924
  %fan = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %25, i32 0, i32 9, !dbg !4925
  %26 = load i32, i32* %i, align 4, !dbg !4926
  %sub27 = sub i32 %26, 1, !dbg !4927
  %idxprom28 = sext i32 %sub27 to i64, !dbg !4924
  %arrayidx29 = getelementptr [2 x i8], [2 x i8]* %fan, i64 0, i64 %idxprom28, !dbg !4924
  store i8 %conv26, i8* %arrayidx29, align 1, !dbg !4928
  %27 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4929
  %28 = load i32, i32* %i, align 4, !dbg !4930
  %add30 = add i32 58, %28, !dbg !4930
  %conv31 = trunc i32 %add30 to i8, !dbg !4930
  %call32 = call i32 @via686a_read_value(%struct.via686a_data* %27, i8 zeroext %conv31) #5, !dbg !4931
  %conv33 = trunc i32 %call32 to i8, !dbg !4931
  %29 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4932
  %fan_min = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %29, i32 0, i32 10, !dbg !4933
  %30 = load i32, i32* %i, align 4, !dbg !4934
  %sub34 = sub i32 %30, 1, !dbg !4935
  %idxprom35 = sext i32 %sub34 to i64, !dbg !4932
  %arrayidx36 = getelementptr [2 x i8], [2 x i8]* %fan_min, i64 0, i64 %idxprom35, !dbg !4932
  store i8 %conv33, i8* %arrayidx36, align 1, !dbg !4936
  br label %for.inc37, !dbg !4937

for.inc37:                                        ; preds = %for.body22
  %31 = load i32, i32* %i, align 4, !dbg !4938
  %inc38 = add i32 %31, 1, !dbg !4938
  store i32 %inc38, i32* %i, align 4, !dbg !4938
  br label %for.cond19, !dbg !4939, !llvm.loop !4940

for.end39:                                        ; preds = %for.cond19
  store i32 0, i32* %i, align 4, !dbg !4942
  br label %for.cond40, !dbg !4944

for.cond40:                                       ; preds = %for.inc62, %for.end39
  %32 = load i32, i32* %i, align 4, !dbg !4945
  %cmp41 = icmp sle i32 %32, 2, !dbg !4947
  br i1 %cmp41, label %for.body43, label %for.end64, !dbg !4948

for.body43:                                       ; preds = %for.cond40
  %33 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4949
  %34 = load i32, i32* %i, align 4, !dbg !4951
  %idxprom44 = sext i32 %34 to i64, !dbg !4952
  %arrayidx45 = getelementptr [3 x i8], [3 x i8]* @VIA686A_REG_TEMP, i64 0, i64 %idxprom44, !dbg !4952
  %35 = load i8, i8* %arrayidx45, align 1, !dbg !4952
  %call46 = call i32 @via686a_read_value(%struct.via686a_data* %33, i8 zeroext %35) #5, !dbg !4953
  %shl = shl i32 %call46, 2, !dbg !4954
  %conv47 = trunc i32 %shl to i16, !dbg !4953
  %36 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4955
  %temp = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %36, i32 0, i32 11, !dbg !4956
  %37 = load i32, i32* %i, align 4, !dbg !4957
  %idxprom48 = sext i32 %37 to i64, !dbg !4955
  %arrayidx49 = getelementptr [3 x i16], [3 x i16]* %temp, i64 0, i64 %idxprom48, !dbg !4955
  store i16 %conv47, i16* %arrayidx49, align 2, !dbg !4958
  %38 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4959
  %39 = load i32, i32* %i, align 4, !dbg !4960
  %idxprom50 = sext i32 %39 to i64, !dbg !4961
  %arrayidx51 = getelementptr [3 x i8], [3 x i8]* @VIA686A_REG_TEMP_OVER, i64 0, i64 %idxprom50, !dbg !4961
  %40 = load i8, i8* %arrayidx51, align 1, !dbg !4961
  %call52 = call i32 @via686a_read_value(%struct.via686a_data* %38, i8 zeroext %40) #5, !dbg !4962
  %conv53 = trunc i32 %call52 to i8, !dbg !4962
  %41 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4963
  %temp_over = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %41, i32 0, i32 12, !dbg !4964
  %42 = load i32, i32* %i, align 4, !dbg !4965
  %idxprom54 = sext i32 %42 to i64, !dbg !4963
  %arrayidx55 = getelementptr [3 x i8], [3 x i8]* %temp_over, i64 0, i64 %idxprom54, !dbg !4963
  store i8 %conv53, i8* %arrayidx55, align 1, !dbg !4966
  %43 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4967
  %44 = load i32, i32* %i, align 4, !dbg !4968
  %idxprom56 = sext i32 %44 to i64, !dbg !4969
  %arrayidx57 = getelementptr [3 x i8], [3 x i8]* @VIA686A_REG_TEMP_HYST, i64 0, i64 %idxprom56, !dbg !4969
  %45 = load i8, i8* %arrayidx57, align 1, !dbg !4969
  %call58 = call i32 @via686a_read_value(%struct.via686a_data* %43, i8 zeroext %45) #5, !dbg !4970
  %conv59 = trunc i32 %call58 to i8, !dbg !4970
  %46 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4971
  %temp_hyst = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %46, i32 0, i32 13, !dbg !4972
  %47 = load i32, i32* %i, align 4, !dbg !4973
  %idxprom60 = sext i32 %47 to i64, !dbg !4971
  %arrayidx61 = getelementptr [3 x i8], [3 x i8]* %temp_hyst, i64 0, i64 %idxprom60, !dbg !4971
  store i8 %conv59, i8* %arrayidx61, align 1, !dbg !4974
  br label %for.inc62, !dbg !4975

for.inc62:                                        ; preds = %for.body43
  %48 = load i32, i32* %i, align 4, !dbg !4976
  %inc63 = add i32 %48, 1, !dbg !4976
  store i32 %inc63, i32* %i, align 4, !dbg !4976
  br label %for.cond40, !dbg !4977, !llvm.loop !4978

for.end64:                                        ; preds = %for.cond40
  %49 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4980
  %call65 = call i32 @via686a_read_value(%struct.via686a_data* %49, i8 zeroext 75) #5, !dbg !4981
  %and = and i32 %call65, 192, !dbg !4982
  %shr = ashr i32 %and, 6, !dbg !4983
  %50 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4984
  %temp66 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %50, i32 0, i32 11, !dbg !4985
  %arrayidx67 = getelementptr [3 x i16], [3 x i16]* %temp66, i64 0, i64 0, !dbg !4984
  %51 = load i16, i16* %arrayidx67, align 4, !dbg !4986
  %conv68 = zext i16 %51 to i32, !dbg !4986
  %or = or i32 %conv68, %shr, !dbg !4986
  %conv69 = trunc i32 %or to i16, !dbg !4986
  store i16 %conv69, i16* %arrayidx67, align 4, !dbg !4986
  %52 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4987
  %call70 = call i32 @via686a_read_value(%struct.via686a_data* %52, i8 zeroext 73) #5, !dbg !4988
  %and71 = and i32 %call70, 48, !dbg !4989
  %shr72 = ashr i32 %and71, 4, !dbg !4990
  %53 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4991
  %temp73 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %53, i32 0, i32 11, !dbg !4992
  %arrayidx74 = getelementptr [3 x i16], [3 x i16]* %temp73, i64 0, i64 1, !dbg !4991
  %54 = load i16, i16* %arrayidx74, align 2, !dbg !4993
  %conv75 = zext i16 %54 to i32, !dbg !4993
  %or76 = or i32 %conv75, %shr72, !dbg !4993
  %conv77 = trunc i32 %or76 to i16, !dbg !4993
  store i16 %conv77, i16* %arrayidx74, align 2, !dbg !4993
  %55 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4994
  %call78 = call i32 @via686a_read_value(%struct.via686a_data* %55, i8 zeroext 73) #5, !dbg !4995
  %and79 = and i32 %call78, 192, !dbg !4996
  %shr80 = ashr i32 %and79, 6, !dbg !4997
  %56 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !4998
  %temp81 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %56, i32 0, i32 11, !dbg !4999
  %arrayidx82 = getelementptr [3 x i16], [3 x i16]* %temp81, i64 0, i64 2, !dbg !4998
  %57 = load i16, i16* %arrayidx82, align 4, !dbg !5000
  %conv83 = zext i16 %57 to i32, !dbg !5000
  %or84 = or i32 %conv83, %shr80, !dbg !5000
  %conv85 = trunc i32 %or84 to i16, !dbg !5000
  store i16 %conv85, i16* %arrayidx82, align 4, !dbg !5000
  %58 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5001
  call void @via686a_update_fan_div(%struct.via686a_data* %58) #5, !dbg !5002
  %59 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5003
  %call86 = call i32 @via686a_read_value(%struct.via686a_data* %59, i8 zeroext 65) #5, !dbg !5004
  %60 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5005
  %call87 = call i32 @via686a_read_value(%struct.via686a_data* %60, i8 zeroext 66) #5, !dbg !5006
  %shl88 = shl i32 %call87, 8, !dbg !5007
  %or89 = or i32 %call86, %shl88, !dbg !5008
  %conv90 = trunc i32 %or89 to i16, !dbg !5004
  %61 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5009
  %alarms = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %61, i32 0, i32 15, !dbg !5010
  store i16 %conv90, i16* %alarms, align 2, !dbg !5011
  %62 = load volatile i64, i64* @jiffies, align 8, !dbg !5012
  %63 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5013
  %last_updated91 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %63, i32 0, i32 5, !dbg !5014
  store i64 %62, i64* %last_updated91, align 8, !dbg !5015
  %64 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5016
  %valid92 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %64, i32 0, i32 4, !dbg !5017
  store i8 1, i8* %valid92, align 8, !dbg !5018
  br label %if.end, !dbg !5019

if.end:                                           ; preds = %for.end64, %lor.lhs.false
  %65 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5020
  %update_lock93 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %65, i32 0, i32 3, !dbg !5021
  call void @mutex_unlock(%struct.mutex* %update_lock93) #5, !dbg !5022
  %66 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5023
  ret %struct.via686a_data* %66, !dbg !5024
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @IN_FROM_REG(i8 zeroext %val, i32 %in_num) #2 !dbg !5025 {
entry:
  %retval = alloca i64, align 8
  %val.addr = alloca i8, align 1
  %in_num.addr = alloca i32, align 4
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !5028, metadata !DIExpression()), !dbg !5029
  store i32 %in_num, i32* %in_num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %in_num.addr, metadata !5030, metadata !DIExpression()), !dbg !5031
  %0 = load i32, i32* %in_num.addr, align 4, !dbg !5032
  %cmp = icmp sle i32 %0, 1, !dbg !5034
  br i1 %cmp, label %if.then, label %if.else, !dbg !5035

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %val.addr, align 1, !dbg !5036
  %conv = zext i8 %1 to i32, !dbg !5036
  %mul = mul i32 250000, %conv, !dbg !5037
  %add = add i32 %mul, 1330000, !dbg !5038
  %add1 = add i32 %add, 10512, !dbg !5039
  %div = sdiv i32 %add1, 21024, !dbg !5040
  %conv2 = sext i32 %div to i64, !dbg !5041
  store i64 %conv2, i64* %retval, align 8, !dbg !5042
  br label %return, !dbg !5042

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %in_num.addr, align 4, !dbg !5043
  %cmp3 = icmp eq i32 %2, 2, !dbg !5045
  br i1 %cmp3, label %if.then5, label %if.else12, !dbg !5046

if.then5:                                         ; preds = %if.else
  %3 = load i8, i8* %val.addr, align 1, !dbg !5047
  %conv6 = zext i8 %3 to i32, !dbg !5047
  %mul7 = mul i32 250000, %conv6, !dbg !5048
  %add8 = add i32 %mul7, 1330000, !dbg !5049
  %add9 = add i32 %add8, 7868, !dbg !5050
  %div10 = sdiv i32 %add9, 15737, !dbg !5051
  %conv11 = sext i32 %div10 to i64, !dbg !5052
  store i64 %conv11, i64* %retval, align 8, !dbg !5053
  br label %return, !dbg !5053

if.else12:                                        ; preds = %if.else
  %4 = load i32, i32* %in_num.addr, align 4, !dbg !5054
  %cmp13 = icmp eq i32 %4, 3, !dbg !5056
  br i1 %cmp13, label %if.then15, label %if.else22, !dbg !5057

if.then15:                                        ; preds = %if.else12
  %5 = load i8, i8* %val.addr, align 1, !dbg !5058
  %conv16 = zext i8 %5 to i32, !dbg !5058
  %mul17 = mul i32 250000, %conv16, !dbg !5059
  %add18 = add i32 %mul17, 1330000, !dbg !5060
  %add19 = add i32 %add18, 5054, !dbg !5061
  %div20 = sdiv i32 %add19, 10108, !dbg !5062
  %conv21 = sext i32 %div20 to i64, !dbg !5063
  store i64 %conv21, i64* %retval, align 8, !dbg !5064
  br label %return, !dbg !5064

if.else22:                                        ; preds = %if.else12
  %6 = load i8, i8* %val.addr, align 1, !dbg !5065
  %conv23 = zext i8 %6 to i32, !dbg !5065
  %mul24 = mul i32 2500000, %conv23, !dbg !5066
  %add25 = add i32 %mul24, 13300000, !dbg !5067
  %add26 = add i32 %add25, 20857, !dbg !5068
  %div27 = sdiv i32 %add26, 41714, !dbg !5069
  %conv28 = sext i32 %div27 to i64, !dbg !5070
  store i64 %conv28, i64* %retval, align 8, !dbg !5071
  br label %return, !dbg !5071

return:                                           ; preds = %if.else22, %if.then15, %if.then5, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !5072
  ret i64 %7, !dbg !5072
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5073 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5076, metadata !DIExpression()), !dbg !5077
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5078
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5079
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5079
  ret i8* %1, !dbg !5080
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @in_min_show(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf) #2 !dbg !5081 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.via686a_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5082, metadata !DIExpression()), !dbg !5083
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5084, metadata !DIExpression()), !dbg !5085
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5086, metadata !DIExpression()), !dbg !5087
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data, metadata !5088, metadata !DIExpression()), !dbg !5089
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5090
  %call = call %struct.via686a_data* @via686a_update_device(%struct.device* %0) #5, !dbg !5091
  store %struct.via686a_data* %call, %struct.via686a_data** %data, align 8, !dbg !5089
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5092, metadata !DIExpression()), !dbg !5093
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5094, metadata !DIExpression()), !dbg !5096
  %1 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5096
  %2 = bitcast %struct.device_attribute* %1 to i8*, !dbg !5096
  store i8* %2, i8** %__mptr, align 8, !dbg !5096
  br label %do.body, !dbg !5096

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5097

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5096
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5096
  %4 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5096
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5097
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5096
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %attr, align 8, !dbg !5093
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5099, metadata !DIExpression()), !dbg !5100
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5101
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %6, i32 0, i32 1, !dbg !5102
  %7 = load i32, i32* %index, align 8, !dbg !5102
  store i32 %7, i32* %nr, align 4, !dbg !5100
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5103
  %9 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5104
  %in_min = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %9, i32 0, i32 8, !dbg !5105
  %10 = load i32, i32* %nr, align 4, !dbg !5106
  %idxprom = sext i32 %10 to i64, !dbg !5104
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %in_min, i64 0, i64 %idxprom, !dbg !5104
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5104
  %12 = load i32, i32* %nr, align 4, !dbg !5107
  %call1 = call i64 @IN_FROM_REG(i8 zeroext %11, i32 %12) #5, !dbg !5108
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %call1) #5, !dbg !5109
  %conv = sext i32 %call2 to i64, !dbg !5109
  ret i64 %conv, !dbg !5110
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @in_min_store(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf, i64 %count) #2 !dbg !5111 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %data = alloca %struct.via686a_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5112, metadata !DIExpression()), !dbg !5113
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5114, metadata !DIExpression()), !dbg !5115
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5116, metadata !DIExpression()), !dbg !5117
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5118, metadata !DIExpression()), !dbg !5119
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data, metadata !5120, metadata !DIExpression()), !dbg !5121
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5122
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !5123
  %1 = bitcast i8* %call to %struct.via686a_data*, !dbg !5123
  store %struct.via686a_data* %1, %struct.via686a_data** %data, align 8, !dbg !5121
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5124, metadata !DIExpression()), !dbg !5125
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5126, metadata !DIExpression()), !dbg !5128
  %2 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5128
  %3 = bitcast %struct.device_attribute* %2 to i8*, !dbg !5128
  store i8* %3, i8** %__mptr, align 8, !dbg !5128
  br label %do.body, !dbg !5128

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5129

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5128
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !5128
  %5 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5128
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5129
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5128
  store %struct.sensor_device_attribute* %6, %struct.sensor_device_attribute** %attr, align 8, !dbg !5125
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5131, metadata !DIExpression()), !dbg !5132
  %7 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5133
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %7, i32 0, i32 1, !dbg !5134
  %8 = load i32, i32* %index, align 8, !dbg !5134
  store i32 %8, i32* %nr, align 4, !dbg !5132
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5135, metadata !DIExpression()), !dbg !5136
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5137, metadata !DIExpression()), !dbg !5138
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !5139
  %call1 = call i32 @kstrtoul(i8* %9, i32 10, i64* %val) #5, !dbg !5140
  store i32 %call1, i32* %err, align 4, !dbg !5141
  %10 = load i32, i32* %err, align 4, !dbg !5142
  %tobool = icmp ne i32 %10, 0, !dbg !5142
  br i1 %tobool, label %if.then, label %if.end, !dbg !5144

if.then:                                          ; preds = %do.end
  %11 = load i32, i32* %err, align 4, !dbg !5145
  %conv = sext i32 %11 to i64, !dbg !5145
  store i64 %conv, i64* %retval, align 8, !dbg !5146
  br label %return, !dbg !5146

if.end:                                           ; preds = %do.end
  %12 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5147
  %update_lock = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %12, i32 0, i32 3, !dbg !5148
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !5149
  %13 = load i64, i64* %val, align 8, !dbg !5150
  %14 = load i32, i32* %nr, align 4, !dbg !5151
  %call2 = call zeroext i8 @IN_TO_REG(i64 %13, i32 %14) #5, !dbg !5152
  %15 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5153
  %in_min = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %15, i32 0, i32 8, !dbg !5154
  %16 = load i32, i32* %nr, align 4, !dbg !5155
  %idxprom = sext i32 %16 to i64, !dbg !5153
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %in_min, i64 0, i64 %idxprom, !dbg !5153
  store i8 %call2, i8* %arrayidx, align 1, !dbg !5156
  %17 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5157
  %18 = load i32, i32* %nr, align 4, !dbg !5158
  %mul = mul i32 %18, 2, !dbg !5158
  %add = add i32 44, %mul, !dbg !5158
  %conv3 = trunc i32 %add to i8, !dbg !5158
  %19 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5159
  %in_min4 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %19, i32 0, i32 8, !dbg !5160
  %20 = load i32, i32* %nr, align 4, !dbg !5161
  %idxprom5 = sext i32 %20 to i64, !dbg !5159
  %arrayidx6 = getelementptr [5 x i8], [5 x i8]* %in_min4, i64 0, i64 %idxprom5, !dbg !5159
  %21 = load i8, i8* %arrayidx6, align 1, !dbg !5159
  call void @via686a_write_value(%struct.via686a_data* %17, i8 zeroext %conv3, i8 zeroext %21) #5, !dbg !5162
  %22 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5163
  %update_lock7 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %22, i32 0, i32 3, !dbg !5164
  call void @mutex_unlock(%struct.mutex* %update_lock7) #5, !dbg !5165
  %23 = load i64, i64* %count.addr, align 8, !dbg !5166
  store i64 %23, i64* %retval, align 8, !dbg !5167
  br label %return, !dbg !5167

return:                                           ; preds = %if.end, %if.then
  %24 = load i64, i64* %retval, align 8, !dbg !5168
  ret i64 %24, !dbg !5168
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtoul(i8* %s, i32 %base, i64* %res) #2 !dbg !5169 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i64*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !5173, metadata !DIExpression()), !dbg !5174
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !5175, metadata !DIExpression()), !dbg !5176
  store i64* %res, i64** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %res.addr, metadata !5177, metadata !DIExpression()), !dbg !5178
  %0 = load i8*, i8** %s.addr, align 8, !dbg !5179
  %1 = load i32, i32* %base.addr, align 4, !dbg !5181
  %2 = load i64*, i64** %res.addr, align 8, !dbg !5182
  %call = call i32 @kstrtoull(i8* %0, i32 %1, i64* %2) #5, !dbg !5183
  ret i32 %call, !dbg !5184
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @IN_TO_REG(i64 %val, i32 %in_num) #2 !dbg !5185 {
entry:
  %retval = alloca i8, align 1
  %val.addr = alloca i64, align 8
  %in_num.addr = alloca i32, align 4
  %__UNIQUE_ID___x242 = alloca i64, align 8
  %__UNIQUE_ID___x240 = alloca i64, align 8
  %__UNIQUE_ID___y241 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___y243 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %__UNIQUE_ID___x246 = alloca i64, align 8
  %__UNIQUE_ID___x244 = alloca i64, align 8
  %__UNIQUE_ID___y245 = alloca i64, align 8
  %tmp14 = alloca i64, align 8
  %__UNIQUE_ID___y247 = alloca i64, align 8
  %tmp21 = alloca i64, align 8
  %__UNIQUE_ID___x250 = alloca i64, align 8
  %__UNIQUE_ID___x248 = alloca i64, align 8
  %__UNIQUE_ID___y249 = alloca i64, align 8
  %tmp36 = alloca i64, align 8
  %__UNIQUE_ID___y251 = alloca i64, align 8
  %tmp43 = alloca i64, align 8
  %__UNIQUE_ID___x254 = alloca i64, align 8
  %__UNIQUE_ID___x252 = alloca i64, align 8
  %__UNIQUE_ID___y253 = alloca i64, align 8
  %tmp55 = alloca i64, align 8
  %__UNIQUE_ID___y255 = alloca i64, align 8
  %tmp62 = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !5188, metadata !DIExpression()), !dbg !5189
  store i32 %in_num, i32* %in_num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %in_num.addr, metadata !5190, metadata !DIExpression()), !dbg !5191
  %0 = load i32, i32* %in_num.addr, align 4, !dbg !5192
  %cmp = icmp sle i32 %0, 1, !dbg !5194
  br i1 %cmp, label %if.then, label %if.else, !dbg !5195

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x242, metadata !5196, metadata !DIExpression()), !dbg !5198
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x240, metadata !5199, metadata !DIExpression()), !dbg !5201
  %1 = load i64, i64* %val.addr, align 8, !dbg !5201
  %mul = mul i64 %1, 21024, !dbg !5201
  %sub = sub i64 %mul, 1205000, !dbg !5201
  %div = sdiv i64 %sub, 250000, !dbg !5201
  store i64 %div, i64* %__UNIQUE_ID___x240, align 8, !dbg !5201
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y241, metadata !5202, metadata !DIExpression()), !dbg !5201
  store i64 0, i64* %__UNIQUE_ID___y241, align 8, !dbg !5201
  %2 = load i64, i64* %__UNIQUE_ID___x240, align 8, !dbg !5201
  %3 = load i64, i64* %__UNIQUE_ID___y241, align 8, !dbg !5201
  %cmp1 = icmp sgt i64 %2, %3, !dbg !5201
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !5201

cond.true:                                        ; preds = %if.then
  %4 = load i64, i64* %__UNIQUE_ID___x240, align 8, !dbg !5201
  br label %cond.end, !dbg !5201

cond.false:                                       ; preds = %if.then
  %5 = load i64, i64* %__UNIQUE_ID___y241, align 8, !dbg !5201
  br label %cond.end, !dbg !5201

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !5201
  store i64 %cond, i64* %tmp, align 8, !dbg !5201
  %6 = load i64, i64* %tmp, align 8, !dbg !5201
  store i64 %6, i64* %__UNIQUE_ID___x242, align 8, !dbg !5198
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y243, metadata !5203, metadata !DIExpression()), !dbg !5198
  store i64 255, i64* %__UNIQUE_ID___y243, align 8, !dbg !5198
  %7 = load i64, i64* %__UNIQUE_ID___x242, align 8, !dbg !5198
  %8 = load i64, i64* %__UNIQUE_ID___y243, align 8, !dbg !5198
  %cmp3 = icmp slt i64 %7, %8, !dbg !5198
  br i1 %cmp3, label %cond.true4, label %cond.false5, !dbg !5198

cond.true4:                                       ; preds = %cond.end
  %9 = load i64, i64* %__UNIQUE_ID___x242, align 8, !dbg !5198
  br label %cond.end6, !dbg !5198

cond.false5:                                      ; preds = %cond.end
  %10 = load i64, i64* %__UNIQUE_ID___y243, align 8, !dbg !5198
  br label %cond.end6, !dbg !5198

cond.end6:                                        ; preds = %cond.false5, %cond.true4
  %cond7 = phi i64 [ %9, %cond.true4 ], [ %10, %cond.false5 ], !dbg !5198
  store i64 %cond7, i64* %tmp2, align 8, !dbg !5198
  %11 = load i64, i64* %tmp2, align 8, !dbg !5198
  %conv = trunc i64 %11 to i8, !dbg !5204
  store i8 %conv, i8* %retval, align 1, !dbg !5205
  br label %return, !dbg !5205

if.else:                                          ; preds = %entry
  %12 = load i32, i32* %in_num.addr, align 4, !dbg !5206
  %cmp8 = icmp eq i32 %12, 2, !dbg !5208
  br i1 %cmp8, label %if.then10, label %if.else29, !dbg !5209

if.then10:                                        ; preds = %if.else
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x246, metadata !5210, metadata !DIExpression()), !dbg !5212
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x244, metadata !5213, metadata !DIExpression()), !dbg !5215
  %13 = load i64, i64* %val.addr, align 8, !dbg !5215
  %mul11 = mul i64 %13, 15737, !dbg !5215
  %sub12 = sub i64 %mul11, 1205000, !dbg !5215
  %div13 = sdiv i64 %sub12, 250000, !dbg !5215
  store i64 %div13, i64* %__UNIQUE_ID___x244, align 8, !dbg !5215
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y245, metadata !5216, metadata !DIExpression()), !dbg !5215
  store i64 0, i64* %__UNIQUE_ID___y245, align 8, !dbg !5215
  %14 = load i64, i64* %__UNIQUE_ID___x244, align 8, !dbg !5215
  %15 = load i64, i64* %__UNIQUE_ID___y245, align 8, !dbg !5215
  %cmp15 = icmp sgt i64 %14, %15, !dbg !5215
  br i1 %cmp15, label %cond.true17, label %cond.false18, !dbg !5215

cond.true17:                                      ; preds = %if.then10
  %16 = load i64, i64* %__UNIQUE_ID___x244, align 8, !dbg !5215
  br label %cond.end19, !dbg !5215

cond.false18:                                     ; preds = %if.then10
  %17 = load i64, i64* %__UNIQUE_ID___y245, align 8, !dbg !5215
  br label %cond.end19, !dbg !5215

cond.end19:                                       ; preds = %cond.false18, %cond.true17
  %cond20 = phi i64 [ %16, %cond.true17 ], [ %17, %cond.false18 ], !dbg !5215
  store i64 %cond20, i64* %tmp14, align 8, !dbg !5215
  %18 = load i64, i64* %tmp14, align 8, !dbg !5215
  store i64 %18, i64* %__UNIQUE_ID___x246, align 8, !dbg !5212
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y247, metadata !5217, metadata !DIExpression()), !dbg !5212
  store i64 255, i64* %__UNIQUE_ID___y247, align 8, !dbg !5212
  %19 = load i64, i64* %__UNIQUE_ID___x246, align 8, !dbg !5212
  %20 = load i64, i64* %__UNIQUE_ID___y247, align 8, !dbg !5212
  %cmp22 = icmp slt i64 %19, %20, !dbg !5212
  br i1 %cmp22, label %cond.true24, label %cond.false25, !dbg !5212

cond.true24:                                      ; preds = %cond.end19
  %21 = load i64, i64* %__UNIQUE_ID___x246, align 8, !dbg !5212
  br label %cond.end26, !dbg !5212

cond.false25:                                     ; preds = %cond.end19
  %22 = load i64, i64* %__UNIQUE_ID___y247, align 8, !dbg !5212
  br label %cond.end26, !dbg !5212

cond.end26:                                       ; preds = %cond.false25, %cond.true24
  %cond27 = phi i64 [ %21, %cond.true24 ], [ %22, %cond.false25 ], !dbg !5212
  store i64 %cond27, i64* %tmp21, align 8, !dbg !5212
  %23 = load i64, i64* %tmp21, align 8, !dbg !5212
  %conv28 = trunc i64 %23 to i8, !dbg !5218
  store i8 %conv28, i8* %retval, align 1, !dbg !5219
  br label %return, !dbg !5219

if.else29:                                        ; preds = %if.else
  %24 = load i32, i32* %in_num.addr, align 4, !dbg !5220
  %cmp30 = icmp eq i32 %24, 3, !dbg !5222
  br i1 %cmp30, label %if.then32, label %if.else51, !dbg !5223

if.then32:                                        ; preds = %if.else29
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x250, metadata !5224, metadata !DIExpression()), !dbg !5226
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x248, metadata !5227, metadata !DIExpression()), !dbg !5229
  %25 = load i64, i64* %val.addr, align 8, !dbg !5229
  %mul33 = mul i64 %25, 10108, !dbg !5229
  %sub34 = sub i64 %mul33, 1205000, !dbg !5229
  %div35 = sdiv i64 %sub34, 250000, !dbg !5229
  store i64 %div35, i64* %__UNIQUE_ID___x248, align 8, !dbg !5229
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y249, metadata !5230, metadata !DIExpression()), !dbg !5229
  store i64 0, i64* %__UNIQUE_ID___y249, align 8, !dbg !5229
  %26 = load i64, i64* %__UNIQUE_ID___x248, align 8, !dbg !5229
  %27 = load i64, i64* %__UNIQUE_ID___y249, align 8, !dbg !5229
  %cmp37 = icmp sgt i64 %26, %27, !dbg !5229
  br i1 %cmp37, label %cond.true39, label %cond.false40, !dbg !5229

cond.true39:                                      ; preds = %if.then32
  %28 = load i64, i64* %__UNIQUE_ID___x248, align 8, !dbg !5229
  br label %cond.end41, !dbg !5229

cond.false40:                                     ; preds = %if.then32
  %29 = load i64, i64* %__UNIQUE_ID___y249, align 8, !dbg !5229
  br label %cond.end41, !dbg !5229

cond.end41:                                       ; preds = %cond.false40, %cond.true39
  %cond42 = phi i64 [ %28, %cond.true39 ], [ %29, %cond.false40 ], !dbg !5229
  store i64 %cond42, i64* %tmp36, align 8, !dbg !5229
  %30 = load i64, i64* %tmp36, align 8, !dbg !5229
  store i64 %30, i64* %__UNIQUE_ID___x250, align 8, !dbg !5226
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y251, metadata !5231, metadata !DIExpression()), !dbg !5226
  store i64 255, i64* %__UNIQUE_ID___y251, align 8, !dbg !5226
  %31 = load i64, i64* %__UNIQUE_ID___x250, align 8, !dbg !5226
  %32 = load i64, i64* %__UNIQUE_ID___y251, align 8, !dbg !5226
  %cmp44 = icmp slt i64 %31, %32, !dbg !5226
  br i1 %cmp44, label %cond.true46, label %cond.false47, !dbg !5226

cond.true46:                                      ; preds = %cond.end41
  %33 = load i64, i64* %__UNIQUE_ID___x250, align 8, !dbg !5226
  br label %cond.end48, !dbg !5226

cond.false47:                                     ; preds = %cond.end41
  %34 = load i64, i64* %__UNIQUE_ID___y251, align 8, !dbg !5226
  br label %cond.end48, !dbg !5226

cond.end48:                                       ; preds = %cond.false47, %cond.true46
  %cond49 = phi i64 [ %33, %cond.true46 ], [ %34, %cond.false47 ], !dbg !5226
  store i64 %cond49, i64* %tmp43, align 8, !dbg !5226
  %35 = load i64, i64* %tmp43, align 8, !dbg !5226
  %conv50 = trunc i64 %35 to i8, !dbg !5232
  store i8 %conv50, i8* %retval, align 1, !dbg !5233
  br label %return, !dbg !5233

if.else51:                                        ; preds = %if.else29
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x254, metadata !5234, metadata !DIExpression()), !dbg !5236
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x252, metadata !5237, metadata !DIExpression()), !dbg !5239
  %36 = load i64, i64* %val.addr, align 8, !dbg !5239
  %mul52 = mul i64 %36, 41714, !dbg !5239
  %sub53 = sub i64 %mul52, 12050000, !dbg !5239
  %div54 = sdiv i64 %sub53, 2500000, !dbg !5239
  store i64 %div54, i64* %__UNIQUE_ID___x252, align 8, !dbg !5239
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y253, metadata !5240, metadata !DIExpression()), !dbg !5239
  store i64 0, i64* %__UNIQUE_ID___y253, align 8, !dbg !5239
  %37 = load i64, i64* %__UNIQUE_ID___x252, align 8, !dbg !5239
  %38 = load i64, i64* %__UNIQUE_ID___y253, align 8, !dbg !5239
  %cmp56 = icmp sgt i64 %37, %38, !dbg !5239
  br i1 %cmp56, label %cond.true58, label %cond.false59, !dbg !5239

cond.true58:                                      ; preds = %if.else51
  %39 = load i64, i64* %__UNIQUE_ID___x252, align 8, !dbg !5239
  br label %cond.end60, !dbg !5239

cond.false59:                                     ; preds = %if.else51
  %40 = load i64, i64* %__UNIQUE_ID___y253, align 8, !dbg !5239
  br label %cond.end60, !dbg !5239

cond.end60:                                       ; preds = %cond.false59, %cond.true58
  %cond61 = phi i64 [ %39, %cond.true58 ], [ %40, %cond.false59 ], !dbg !5239
  store i64 %cond61, i64* %tmp55, align 8, !dbg !5239
  %41 = load i64, i64* %tmp55, align 8, !dbg !5239
  store i64 %41, i64* %__UNIQUE_ID___x254, align 8, !dbg !5236
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y255, metadata !5241, metadata !DIExpression()), !dbg !5236
  store i64 255, i64* %__UNIQUE_ID___y255, align 8, !dbg !5236
  %42 = load i64, i64* %__UNIQUE_ID___x254, align 8, !dbg !5236
  %43 = load i64, i64* %__UNIQUE_ID___y255, align 8, !dbg !5236
  %cmp63 = icmp slt i64 %42, %43, !dbg !5236
  br i1 %cmp63, label %cond.true65, label %cond.false66, !dbg !5236

cond.true65:                                      ; preds = %cond.end60
  %44 = load i64, i64* %__UNIQUE_ID___x254, align 8, !dbg !5236
  br label %cond.end67, !dbg !5236

cond.false66:                                     ; preds = %cond.end60
  %45 = load i64, i64* %__UNIQUE_ID___y255, align 8, !dbg !5236
  br label %cond.end67, !dbg !5236

cond.end67:                                       ; preds = %cond.false66, %cond.true65
  %cond68 = phi i64 [ %44, %cond.true65 ], [ %45, %cond.false66 ], !dbg !5236
  store i64 %cond68, i64* %tmp62, align 8, !dbg !5236
  %46 = load i64, i64* %tmp62, align 8, !dbg !5236
  %conv69 = trunc i64 %46 to i8, !dbg !5242
  store i8 %conv69, i8* %retval, align 1, !dbg !5243
  br label %return, !dbg !5243

return:                                           ; preds = %cond.end67, %cond.end48, %cond.end26, %cond.end6
  %47 = load i8, i8* %retval, align 1, !dbg !5244
  ret i8 %47, !dbg !5244
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtoull(i8*, i32, i64*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @in_max_show(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf) #2 !dbg !5245 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.via686a_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5246, metadata !DIExpression()), !dbg !5247
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5248, metadata !DIExpression()), !dbg !5249
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5250, metadata !DIExpression()), !dbg !5251
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data, metadata !5252, metadata !DIExpression()), !dbg !5253
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5254
  %call = call %struct.via686a_data* @via686a_update_device(%struct.device* %0) #5, !dbg !5255
  store %struct.via686a_data* %call, %struct.via686a_data** %data, align 8, !dbg !5253
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5256, metadata !DIExpression()), !dbg !5257
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5258, metadata !DIExpression()), !dbg !5260
  %1 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5260
  %2 = bitcast %struct.device_attribute* %1 to i8*, !dbg !5260
  store i8* %2, i8** %__mptr, align 8, !dbg !5260
  br label %do.body, !dbg !5260

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5261

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5260
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5260
  %4 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5260
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5261
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5260
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %attr, align 8, !dbg !5257
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5263, metadata !DIExpression()), !dbg !5264
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5265
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %6, i32 0, i32 1, !dbg !5266
  %7 = load i32, i32* %index, align 8, !dbg !5266
  store i32 %7, i32* %nr, align 4, !dbg !5264
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5267
  %9 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5268
  %in_max = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %9, i32 0, i32 7, !dbg !5269
  %10 = load i32, i32* %nr, align 4, !dbg !5270
  %idxprom = sext i32 %10 to i64, !dbg !5268
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %in_max, i64 0, i64 %idxprom, !dbg !5268
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5268
  %12 = load i32, i32* %nr, align 4, !dbg !5271
  %call1 = call i64 @IN_FROM_REG(i8 zeroext %11, i32 %12) #5, !dbg !5272
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %call1) #5, !dbg !5273
  %conv = sext i32 %call2 to i64, !dbg !5273
  ret i64 %conv, !dbg !5274
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @in_max_store(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf, i64 %count) #2 !dbg !5275 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %data = alloca %struct.via686a_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5276, metadata !DIExpression()), !dbg !5277
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5278, metadata !DIExpression()), !dbg !5279
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5280, metadata !DIExpression()), !dbg !5281
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5282, metadata !DIExpression()), !dbg !5283
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data, metadata !5284, metadata !DIExpression()), !dbg !5285
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5286
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !5287
  %1 = bitcast i8* %call to %struct.via686a_data*, !dbg !5287
  store %struct.via686a_data* %1, %struct.via686a_data** %data, align 8, !dbg !5285
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5288, metadata !DIExpression()), !dbg !5289
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5290, metadata !DIExpression()), !dbg !5292
  %2 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5292
  %3 = bitcast %struct.device_attribute* %2 to i8*, !dbg !5292
  store i8* %3, i8** %__mptr, align 8, !dbg !5292
  br label %do.body, !dbg !5292

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5293

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5292
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !5292
  %5 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5292
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5293
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5292
  store %struct.sensor_device_attribute* %6, %struct.sensor_device_attribute** %attr, align 8, !dbg !5289
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5295, metadata !DIExpression()), !dbg !5296
  %7 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5297
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %7, i32 0, i32 1, !dbg !5298
  %8 = load i32, i32* %index, align 8, !dbg !5298
  store i32 %8, i32* %nr, align 4, !dbg !5296
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5299, metadata !DIExpression()), !dbg !5300
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5301, metadata !DIExpression()), !dbg !5302
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !5303
  %call1 = call i32 @kstrtoul(i8* %9, i32 10, i64* %val) #5, !dbg !5304
  store i32 %call1, i32* %err, align 4, !dbg !5305
  %10 = load i32, i32* %err, align 4, !dbg !5306
  %tobool = icmp ne i32 %10, 0, !dbg !5306
  br i1 %tobool, label %if.then, label %if.end, !dbg !5308

if.then:                                          ; preds = %do.end
  %11 = load i32, i32* %err, align 4, !dbg !5309
  %conv = sext i32 %11 to i64, !dbg !5309
  store i64 %conv, i64* %retval, align 8, !dbg !5310
  br label %return, !dbg !5310

if.end:                                           ; preds = %do.end
  %12 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5311
  %update_lock = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %12, i32 0, i32 3, !dbg !5312
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !5313
  %13 = load i64, i64* %val, align 8, !dbg !5314
  %14 = load i32, i32* %nr, align 4, !dbg !5315
  %call2 = call zeroext i8 @IN_TO_REG(i64 %13, i32 %14) #5, !dbg !5316
  %15 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5317
  %in_max = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %15, i32 0, i32 7, !dbg !5318
  %16 = load i32, i32* %nr, align 4, !dbg !5319
  %idxprom = sext i32 %16 to i64, !dbg !5317
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %in_max, i64 0, i64 %idxprom, !dbg !5317
  store i8 %call2, i8* %arrayidx, align 1, !dbg !5320
  %17 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5321
  %18 = load i32, i32* %nr, align 4, !dbg !5322
  %mul = mul i32 %18, 2, !dbg !5322
  %add = add i32 43, %mul, !dbg !5322
  %conv3 = trunc i32 %add to i8, !dbg !5322
  %19 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5323
  %in_max4 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %19, i32 0, i32 7, !dbg !5324
  %20 = load i32, i32* %nr, align 4, !dbg !5325
  %idxprom5 = sext i32 %20 to i64, !dbg !5323
  %arrayidx6 = getelementptr [5 x i8], [5 x i8]* %in_max4, i64 0, i64 %idxprom5, !dbg !5323
  %21 = load i8, i8* %arrayidx6, align 1, !dbg !5323
  call void @via686a_write_value(%struct.via686a_data* %17, i8 zeroext %conv3, i8 zeroext %21) #5, !dbg !5326
  %22 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5327
  %update_lock7 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %22, i32 0, i32 3, !dbg !5328
  call void @mutex_unlock(%struct.mutex* %update_lock7) #5, !dbg !5329
  %23 = load i64, i64* %count.addr, align 8, !dbg !5330
  store i64 %23, i64* %retval, align 8, !dbg !5331
  br label %return, !dbg !5331

return:                                           ; preds = %if.end, %if.then
  %24 = load i64, i64* %retval, align 8, !dbg !5332
  ret i64 %24, !dbg !5332
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @alarm_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5333 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %bitnr = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %data = alloca %struct.via686a_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5334, metadata !DIExpression()), !dbg !5335
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5336, metadata !DIExpression()), !dbg !5337
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5338, metadata !DIExpression()), !dbg !5339
  call void @llvm.dbg.declare(metadata i32* %bitnr, metadata !5340, metadata !DIExpression()), !dbg !5341
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5342, metadata !DIExpression()), !dbg !5344
  %0 = load %struct.device_attribute*, %struct.device_attribute** %attr.addr, align 8, !dbg !5344
  %1 = bitcast %struct.device_attribute* %0 to i8*, !dbg !5344
  store i8* %1, i8** %__mptr, align 8, !dbg !5344
  br label %do.body, !dbg !5344

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5345

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5344
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5344
  %3 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5344
  store %struct.sensor_device_attribute* %3, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5345
  %4 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5344
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %4, i32 0, i32 1, !dbg !5347
  %5 = load i32, i32* %index, align 8, !dbg !5347
  store i32 %5, i32* %bitnr, align 4, !dbg !5341
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data, metadata !5348, metadata !DIExpression()), !dbg !5349
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5350
  %call = call %struct.via686a_data* @via686a_update_device(%struct.device* %6) #5, !dbg !5351
  store %struct.via686a_data* %call, %struct.via686a_data** %data, align 8, !dbg !5349
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !5352
  %8 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5353
  %alarms = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %8, i32 0, i32 15, !dbg !5354
  %9 = load i16, i16* %alarms, align 2, !dbg !5354
  %conv = zext i16 %9 to i32, !dbg !5353
  %10 = load i32, i32* %bitnr, align 4, !dbg !5355
  %shr = ashr i32 %conv, %10, !dbg !5356
  %and = and i32 %shr, 1, !dbg !5357
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32 %and) #5, !dbg !5358
  %conv2 = sext i32 %call1 to i64, !dbg !5358
  ret i64 %conv2, !dbg !5359
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp_show(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf) #2 !dbg !5360 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.via686a_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5361, metadata !DIExpression()), !dbg !5362
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5363, metadata !DIExpression()), !dbg !5364
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5365, metadata !DIExpression()), !dbg !5366
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data, metadata !5367, metadata !DIExpression()), !dbg !5368
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5369
  %call = call %struct.via686a_data* @via686a_update_device(%struct.device* %0) #5, !dbg !5370
  store %struct.via686a_data* %call, %struct.via686a_data** %data, align 8, !dbg !5368
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5371, metadata !DIExpression()), !dbg !5372
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5373, metadata !DIExpression()), !dbg !5375
  %1 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5375
  %2 = bitcast %struct.device_attribute* %1 to i8*, !dbg !5375
  store i8* %2, i8** %__mptr, align 8, !dbg !5375
  br label %do.body, !dbg !5375

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5376

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5375
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5375
  %4 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5375
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5376
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5375
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %attr, align 8, !dbg !5372
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5378, metadata !DIExpression()), !dbg !5379
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5380
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %6, i32 0, i32 1, !dbg !5381
  %7 = load i32, i32* %index, align 8, !dbg !5381
  store i32 %7, i32* %nr, align 4, !dbg !5379
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5382
  %9 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5383
  %temp = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %9, i32 0, i32 11, !dbg !5384
  %10 = load i32, i32* %nr, align 4, !dbg !5385
  %idxprom = sext i32 %10 to i64, !dbg !5383
  %arrayidx = getelementptr [3 x i16], [3 x i16]* %temp, i64 0, i64 %idxprom, !dbg !5383
  %11 = load i16, i16* %arrayidx, align 2, !dbg !5383
  %call1 = call i64 @TEMP_FROM_REG10(i16 zeroext %11) #5, !dbg !5386
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %call1) #5, !dbg !5387
  %conv = sext i32 %call2 to i64, !dbg !5387
  ret i64 %conv, !dbg !5388
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @TEMP_FROM_REG10(i16 zeroext %val) #2 !dbg !5389 {
entry:
  %retval = alloca i64, align 8
  %val.addr = alloca i16, align 2
  %eight_bits = alloca i16, align 2
  %two_bits = alloca i16, align 2
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !5392, metadata !DIExpression()), !dbg !5393
  call void @llvm.dbg.declare(metadata i16* %eight_bits, metadata !5394, metadata !DIExpression()), !dbg !5395
  %0 = load i16, i16* %val.addr, align 2, !dbg !5396
  %conv = zext i16 %0 to i32, !dbg !5396
  %shr = ashr i32 %conv, 2, !dbg !5397
  %conv1 = trunc i32 %shr to i16, !dbg !5396
  store i16 %conv1, i16* %eight_bits, align 2, !dbg !5395
  call void @llvm.dbg.declare(metadata i16* %two_bits, metadata !5398, metadata !DIExpression()), !dbg !5399
  %1 = load i16, i16* %val.addr, align 2, !dbg !5400
  %conv2 = zext i16 %1 to i32, !dbg !5400
  %and = and i32 %conv2, 3, !dbg !5401
  %conv3 = trunc i32 %and to i16, !dbg !5400
  store i16 %conv3, i16* %two_bits, align 2, !dbg !5399
  %2 = load i16, i16* %two_bits, align 2, !dbg !5402
  %conv4 = zext i16 %2 to i32, !dbg !5402
  %cmp = icmp eq i32 %conv4, 0, !dbg !5404
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5405

lor.lhs.false:                                    ; preds = %entry
  %3 = load i16, i16* %eight_bits, align 2, !dbg !5406
  %conv6 = zext i16 %3 to i32, !dbg !5406
  %cmp7 = icmp eq i32 %conv6, 255, !dbg !5407
  br i1 %cmp7, label %if.then, label %if.end, !dbg !5408

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i16, i16* %eight_bits, align 2, !dbg !5409
  %idxprom = zext i16 %4 to i64, !dbg !5409
  %arrayidx = getelementptr [256 x i16], [256 x i16]* @temp_lut, i64 0, i64 %idxprom, !dbg !5409
  %5 = load i16, i16* %arrayidx, align 2, !dbg !5409
  %conv9 = sext i16 %5 to i64, !dbg !5409
  %mul = mul i64 %conv9, 100, !dbg !5409
  store i64 %mul, i64* %retval, align 8, !dbg !5410
  br label %return, !dbg !5410

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i16, i16* %eight_bits, align 2, !dbg !5411
  %idxprom10 = zext i16 %6 to i64, !dbg !5412
  %arrayidx11 = getelementptr [256 x i16], [256 x i16]* @temp_lut, i64 0, i64 %idxprom10, !dbg !5412
  %7 = load i16, i16* %arrayidx11, align 2, !dbg !5412
  %conv12 = sext i16 %7 to i32, !dbg !5412
  %8 = load i16, i16* %two_bits, align 2, !dbg !5413
  %conv13 = zext i16 %8 to i32, !dbg !5413
  %sub = sub i32 4, %conv13, !dbg !5414
  %mul14 = mul i32 %conv12, %sub, !dbg !5415
  %9 = load i16, i16* %eight_bits, align 2, !dbg !5416
  %conv15 = zext i16 %9 to i32, !dbg !5416
  %add = add i32 %conv15, 1, !dbg !5417
  %idxprom16 = sext i32 %add to i64, !dbg !5418
  %arrayidx17 = getelementptr [256 x i16], [256 x i16]* @temp_lut, i64 0, i64 %idxprom16, !dbg !5418
  %10 = load i16, i16* %arrayidx17, align 2, !dbg !5418
  %conv18 = sext i16 %10 to i32, !dbg !5418
  %11 = load i16, i16* %two_bits, align 2, !dbg !5419
  %conv19 = zext i16 %11 to i32, !dbg !5419
  %mul20 = mul i32 %conv18, %conv19, !dbg !5420
  %add21 = add i32 %mul14, %mul20, !dbg !5421
  %mul22 = mul i32 %add21, 25, !dbg !5422
  %conv23 = sext i32 %mul22 to i64, !dbg !5423
  store i64 %conv23, i64* %retval, align 8, !dbg !5424
  br label %return, !dbg !5424

return:                                           ; preds = %if.end, %if.then
  %12 = load i64, i64* %retval, align 8, !dbg !5425
  ret i64 %12, !dbg !5425
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp_over_show(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf) #2 !dbg !5426 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.via686a_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5427, metadata !DIExpression()), !dbg !5428
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5429, metadata !DIExpression()), !dbg !5430
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5431, metadata !DIExpression()), !dbg !5432
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data, metadata !5433, metadata !DIExpression()), !dbg !5434
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5435
  %call = call %struct.via686a_data* @via686a_update_device(%struct.device* %0) #5, !dbg !5436
  store %struct.via686a_data* %call, %struct.via686a_data** %data, align 8, !dbg !5434
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5437, metadata !DIExpression()), !dbg !5438
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5439, metadata !DIExpression()), !dbg !5441
  %1 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5441
  %2 = bitcast %struct.device_attribute* %1 to i8*, !dbg !5441
  store i8* %2, i8** %__mptr, align 8, !dbg !5441
  br label %do.body, !dbg !5441

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5442

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5441
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5441
  %4 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5441
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5442
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5441
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %attr, align 8, !dbg !5438
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5444, metadata !DIExpression()), !dbg !5445
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5446
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %6, i32 0, i32 1, !dbg !5447
  %7 = load i32, i32* %index, align 8, !dbg !5447
  store i32 %7, i32* %nr, align 4, !dbg !5445
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5448
  %9 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5449
  %temp_over = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %9, i32 0, i32 12, !dbg !5449
  %10 = load i32, i32* %nr, align 4, !dbg !5449
  %idxprom = sext i32 %10 to i64, !dbg !5449
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %temp_over, i64 0, i64 %idxprom, !dbg !5449
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5449
  %idxprom1 = zext i8 %11 to i64, !dbg !5449
  %arrayidx2 = getelementptr [256 x i16], [256 x i16]* @temp_lut, i64 0, i64 %idxprom1, !dbg !5449
  %12 = load i16, i16* %arrayidx2, align 2, !dbg !5449
  %conv = sext i16 %12 to i64, !dbg !5449
  %mul = mul i64 %conv, 100, !dbg !5449
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %mul) #5, !dbg !5450
  %conv4 = sext i32 %call3 to i64, !dbg !5450
  ret i64 %conv4, !dbg !5451
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp_over_store(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf, i64 %count) #2 !dbg !5452 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %data = alloca %struct.via686a_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5453, metadata !DIExpression()), !dbg !5454
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5455, metadata !DIExpression()), !dbg !5456
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5457, metadata !DIExpression()), !dbg !5458
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5459, metadata !DIExpression()), !dbg !5460
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data, metadata !5461, metadata !DIExpression()), !dbg !5462
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5463
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !5464
  %1 = bitcast i8* %call to %struct.via686a_data*, !dbg !5464
  store %struct.via686a_data* %1, %struct.via686a_data** %data, align 8, !dbg !5462
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5465, metadata !DIExpression()), !dbg !5466
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5467, metadata !DIExpression()), !dbg !5469
  %2 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5469
  %3 = bitcast %struct.device_attribute* %2 to i8*, !dbg !5469
  store i8* %3, i8** %__mptr, align 8, !dbg !5469
  br label %do.body, !dbg !5469

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5470

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5469
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !5469
  %5 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5469
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5470
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5469
  store %struct.sensor_device_attribute* %6, %struct.sensor_device_attribute** %attr, align 8, !dbg !5466
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5472, metadata !DIExpression()), !dbg !5473
  %7 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5474
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %7, i32 0, i32 1, !dbg !5475
  %8 = load i32, i32* %index, align 8, !dbg !5475
  store i32 %8, i32* %nr, align 4, !dbg !5473
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5476, metadata !DIExpression()), !dbg !5477
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5478, metadata !DIExpression()), !dbg !5479
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !5480
  %call1 = call i32 @kstrtol(i8* %9, i32 10, i64* %val) #5, !dbg !5481
  store i32 %call1, i32* %err, align 4, !dbg !5482
  %10 = load i32, i32* %err, align 4, !dbg !5483
  %tobool = icmp ne i32 %10, 0, !dbg !5483
  br i1 %tobool, label %if.then, label %if.end, !dbg !5485

if.then:                                          ; preds = %do.end
  %11 = load i32, i32* %err, align 4, !dbg !5486
  %conv = sext i32 %11 to i64, !dbg !5486
  store i64 %conv, i64* %retval, align 8, !dbg !5487
  br label %return, !dbg !5487

if.end:                                           ; preds = %do.end
  %12 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5488
  %update_lock = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %12, i32 0, i32 3, !dbg !5489
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !5490
  %13 = load i64, i64* %val, align 8, !dbg !5491
  %call2 = call zeroext i8 @TEMP_TO_REG(i64 %13) #5, !dbg !5492
  %14 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5493
  %temp_over = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %14, i32 0, i32 12, !dbg !5494
  %15 = load i32, i32* %nr, align 4, !dbg !5495
  %idxprom = sext i32 %15 to i64, !dbg !5493
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %temp_over, i64 0, i64 %idxprom, !dbg !5493
  store i8 %call2, i8* %arrayidx, align 1, !dbg !5496
  %16 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5497
  %17 = load i32, i32* %nr, align 4, !dbg !5498
  %idxprom3 = sext i32 %17 to i64, !dbg !5499
  %arrayidx4 = getelementptr [3 x i8], [3 x i8]* @VIA686A_REG_TEMP_OVER, i64 0, i64 %idxprom3, !dbg !5499
  %18 = load i8, i8* %arrayidx4, align 1, !dbg !5499
  %19 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5500
  %temp_over5 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %19, i32 0, i32 12, !dbg !5501
  %20 = load i32, i32* %nr, align 4, !dbg !5502
  %idxprom6 = sext i32 %20 to i64, !dbg !5500
  %arrayidx7 = getelementptr [3 x i8], [3 x i8]* %temp_over5, i64 0, i64 %idxprom6, !dbg !5500
  %21 = load i8, i8* %arrayidx7, align 1, !dbg !5500
  call void @via686a_write_value(%struct.via686a_data* %16, i8 zeroext %18, i8 zeroext %21) #5, !dbg !5503
  %22 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5504
  %update_lock8 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %22, i32 0, i32 3, !dbg !5505
  call void @mutex_unlock(%struct.mutex* %update_lock8) #5, !dbg !5506
  %23 = load i64, i64* %count.addr, align 8, !dbg !5507
  store i64 %23, i64* %retval, align 8, !dbg !5508
  br label %return, !dbg !5508

return:                                           ; preds = %if.end, %if.then
  %24 = load i64, i64* %retval, align 8, !dbg !5509
  ret i64 %24, !dbg !5509
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtol(i8* %s, i32 %base, i64* %res) #2 !dbg !5510 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i64*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !5514, metadata !DIExpression()), !dbg !5515
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !5516, metadata !DIExpression()), !dbg !5517
  store i64* %res, i64** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %res.addr, metadata !5518, metadata !DIExpression()), !dbg !5519
  %0 = load i8*, i8** %s.addr, align 8, !dbg !5520
  %1 = load i32, i32* %base.addr, align 4, !dbg !5522
  %2 = load i64*, i64** %res.addr, align 8, !dbg !5523
  %call = call i32 @kstrtoll(i8* %0, i32 %1, i64* %2) #5, !dbg !5524
  ret i32 %call, !dbg !5525
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @TEMP_TO_REG(i64 %val) #2 !dbg !5526 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !5529, metadata !DIExpression()), !dbg !5530
  %0 = load i64, i64* %val.addr, align 8, !dbg !5531
  %cmp = icmp sle i64 %0, -50000, !dbg !5532
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5531

cond.true:                                        ; preds = %entry
  br label %cond.end10, !dbg !5531

cond.false:                                       ; preds = %entry
  %1 = load i64, i64* %val.addr, align 8, !dbg !5533
  %cmp1 = icmp sge i64 %1, 110000, !dbg !5534
  br i1 %cmp1, label %cond.true2, label %cond.false3, !dbg !5533

cond.true2:                                       ; preds = %cond.false
  br label %cond.end8, !dbg !5533

cond.false3:                                      ; preds = %cond.false
  %2 = load i64, i64* %val.addr, align 8, !dbg !5535
  %cmp4 = icmp slt i64 %2, 0, !dbg !5536
  br i1 %cmp4, label %cond.true5, label %cond.false6, !dbg !5535

cond.true5:                                       ; preds = %cond.false3
  %3 = load i64, i64* %val.addr, align 8, !dbg !5537
  %sub = sub i64 %3, 500, !dbg !5538
  br label %cond.end, !dbg !5535

cond.false6:                                      ; preds = %cond.false3
  %4 = load i64, i64* %val.addr, align 8, !dbg !5539
  %add = add i64 %4, 500, !dbg !5540
  br label %cond.end, !dbg !5535

cond.end:                                         ; preds = %cond.false6, %cond.true5
  %cond = phi i64 [ %sub, %cond.true5 ], [ %add, %cond.false6 ], !dbg !5535
  %div = sdiv i64 %cond, 1000, !dbg !5541
  %add7 = add i64 %div, 50, !dbg !5542
  br label %cond.end8, !dbg !5533

cond.end8:                                        ; preds = %cond.end, %cond.true2
  %cond9 = phi i64 [ 160, %cond.true2 ], [ %add7, %cond.end ], !dbg !5533
  br label %cond.end10, !dbg !5531

cond.end10:                                       ; preds = %cond.end8, %cond.true
  %cond11 = phi i64 [ 0, %cond.true ], [ %cond9, %cond.end8 ], !dbg !5531
  %arrayidx = getelementptr [161 x i8], [161 x i8]* @via_lut, i64 0, i64 %cond11, !dbg !5543
  %5 = load i8, i8* %arrayidx, align 1, !dbg !5543
  ret i8 %5, !dbg !5544
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtoll(i8*, i32, i64*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp_hyst_show(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf) #2 !dbg !5545 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.via686a_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5546, metadata !DIExpression()), !dbg !5547
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5548, metadata !DIExpression()), !dbg !5549
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5550, metadata !DIExpression()), !dbg !5551
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data, metadata !5552, metadata !DIExpression()), !dbg !5553
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5554
  %call = call %struct.via686a_data* @via686a_update_device(%struct.device* %0) #5, !dbg !5555
  store %struct.via686a_data* %call, %struct.via686a_data** %data, align 8, !dbg !5553
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5556, metadata !DIExpression()), !dbg !5557
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5558, metadata !DIExpression()), !dbg !5560
  %1 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5560
  %2 = bitcast %struct.device_attribute* %1 to i8*, !dbg !5560
  store i8* %2, i8** %__mptr, align 8, !dbg !5560
  br label %do.body, !dbg !5560

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5561

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5560
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5560
  %4 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5560
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5561
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5560
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %attr, align 8, !dbg !5557
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5563, metadata !DIExpression()), !dbg !5564
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5565
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %6, i32 0, i32 1, !dbg !5566
  %7 = load i32, i32* %index, align 8, !dbg !5566
  store i32 %7, i32* %nr, align 4, !dbg !5564
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5567
  %9 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5568
  %temp_hyst = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %9, i32 0, i32 13, !dbg !5568
  %10 = load i32, i32* %nr, align 4, !dbg !5568
  %idxprom = sext i32 %10 to i64, !dbg !5568
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %temp_hyst, i64 0, i64 %idxprom, !dbg !5568
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5568
  %idxprom1 = zext i8 %11 to i64, !dbg !5568
  %arrayidx2 = getelementptr [256 x i16], [256 x i16]* @temp_lut, i64 0, i64 %idxprom1, !dbg !5568
  %12 = load i16, i16* %arrayidx2, align 2, !dbg !5568
  %conv = sext i16 %12 to i64, !dbg !5568
  %mul = mul i64 %conv, 100, !dbg !5568
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %mul) #5, !dbg !5569
  %conv4 = sext i32 %call3 to i64, !dbg !5569
  ret i64 %conv4, !dbg !5570
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp_hyst_store(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf, i64 %count) #2 !dbg !5571 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %data = alloca %struct.via686a_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5572, metadata !DIExpression()), !dbg !5573
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5574, metadata !DIExpression()), !dbg !5575
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5576, metadata !DIExpression()), !dbg !5577
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5578, metadata !DIExpression()), !dbg !5579
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data, metadata !5580, metadata !DIExpression()), !dbg !5581
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5582
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !5583
  %1 = bitcast i8* %call to %struct.via686a_data*, !dbg !5583
  store %struct.via686a_data* %1, %struct.via686a_data** %data, align 8, !dbg !5581
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5584, metadata !DIExpression()), !dbg !5585
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5586, metadata !DIExpression()), !dbg !5588
  %2 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5588
  %3 = bitcast %struct.device_attribute* %2 to i8*, !dbg !5588
  store i8* %3, i8** %__mptr, align 8, !dbg !5588
  br label %do.body, !dbg !5588

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5589

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5588
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !5588
  %5 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5588
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5589
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5588
  store %struct.sensor_device_attribute* %6, %struct.sensor_device_attribute** %attr, align 8, !dbg !5585
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5591, metadata !DIExpression()), !dbg !5592
  %7 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5593
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %7, i32 0, i32 1, !dbg !5594
  %8 = load i32, i32* %index, align 8, !dbg !5594
  store i32 %8, i32* %nr, align 4, !dbg !5592
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5595, metadata !DIExpression()), !dbg !5596
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5597, metadata !DIExpression()), !dbg !5598
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !5599
  %call1 = call i32 @kstrtol(i8* %9, i32 10, i64* %val) #5, !dbg !5600
  store i32 %call1, i32* %err, align 4, !dbg !5601
  %10 = load i32, i32* %err, align 4, !dbg !5602
  %tobool = icmp ne i32 %10, 0, !dbg !5602
  br i1 %tobool, label %if.then, label %if.end, !dbg !5604

if.then:                                          ; preds = %do.end
  %11 = load i32, i32* %err, align 4, !dbg !5605
  %conv = sext i32 %11 to i64, !dbg !5605
  store i64 %conv, i64* %retval, align 8, !dbg !5606
  br label %return, !dbg !5606

if.end:                                           ; preds = %do.end
  %12 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5607
  %update_lock = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %12, i32 0, i32 3, !dbg !5608
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !5609
  %13 = load i64, i64* %val, align 8, !dbg !5610
  %call2 = call zeroext i8 @TEMP_TO_REG(i64 %13) #5, !dbg !5611
  %14 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5612
  %temp_hyst = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %14, i32 0, i32 13, !dbg !5613
  %15 = load i32, i32* %nr, align 4, !dbg !5614
  %idxprom = sext i32 %15 to i64, !dbg !5612
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %temp_hyst, i64 0, i64 %idxprom, !dbg !5612
  store i8 %call2, i8* %arrayidx, align 1, !dbg !5615
  %16 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5616
  %17 = load i32, i32* %nr, align 4, !dbg !5617
  %idxprom3 = sext i32 %17 to i64, !dbg !5618
  %arrayidx4 = getelementptr [3 x i8], [3 x i8]* @VIA686A_REG_TEMP_HYST, i64 0, i64 %idxprom3, !dbg !5618
  %18 = load i8, i8* %arrayidx4, align 1, !dbg !5618
  %19 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5619
  %temp_hyst5 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %19, i32 0, i32 13, !dbg !5620
  %20 = load i32, i32* %nr, align 4, !dbg !5621
  %idxprom6 = sext i32 %20 to i64, !dbg !5619
  %arrayidx7 = getelementptr [3 x i8], [3 x i8]* %temp_hyst5, i64 0, i64 %idxprom6, !dbg !5619
  %21 = load i8, i8* %arrayidx7, align 1, !dbg !5619
  call void @via686a_write_value(%struct.via686a_data* %16, i8 zeroext %18, i8 zeroext %21) #5, !dbg !5622
  %22 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5623
  %update_lock8 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %22, i32 0, i32 3, !dbg !5624
  call void @mutex_unlock(%struct.mutex* %update_lock8) #5, !dbg !5625
  %23 = load i64, i64* %count.addr, align 8, !dbg !5626
  store i64 %23, i64* %retval, align 8, !dbg !5627
  br label %return, !dbg !5627

return:                                           ; preds = %if.end, %if.then
  %24 = load i64, i64* %retval, align 8, !dbg !5628
  ret i64 %24, !dbg !5628
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @fan_show(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf) #2 !dbg !5629 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.via686a_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5630, metadata !DIExpression()), !dbg !5631
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5632, metadata !DIExpression()), !dbg !5633
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5634, metadata !DIExpression()), !dbg !5635
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data, metadata !5636, metadata !DIExpression()), !dbg !5637
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5638
  %call = call %struct.via686a_data* @via686a_update_device(%struct.device* %0) #5, !dbg !5639
  store %struct.via686a_data* %call, %struct.via686a_data** %data, align 8, !dbg !5637
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5640, metadata !DIExpression()), !dbg !5641
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5642, metadata !DIExpression()), !dbg !5644
  %1 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5644
  %2 = bitcast %struct.device_attribute* %1 to i8*, !dbg !5644
  store i8* %2, i8** %__mptr, align 8, !dbg !5644
  br label %do.body, !dbg !5644

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5645

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5644
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5644
  %4 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5644
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5645
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5644
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %attr, align 8, !dbg !5641
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5647, metadata !DIExpression()), !dbg !5648
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5649
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %6, i32 0, i32 1, !dbg !5650
  %7 = load i32, i32* %index, align 8, !dbg !5650
  store i32 %7, i32* %nr, align 4, !dbg !5648
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5651
  %9 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5652
  %fan = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %9, i32 0, i32 9, !dbg !5652
  %10 = load i32, i32* %nr, align 4, !dbg !5652
  %idxprom = sext i32 %10 to i64, !dbg !5652
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %fan, i64 0, i64 %idxprom, !dbg !5652
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5652
  %conv = zext i8 %11 to i32, !dbg !5652
  %cmp = icmp eq i32 %conv, 0, !dbg !5652
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5652

cond.true:                                        ; preds = %do.end
  br label %cond.end17, !dbg !5652

cond.false:                                       ; preds = %do.end
  %12 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5652
  %fan2 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %12, i32 0, i32 9, !dbg !5652
  %13 = load i32, i32* %nr, align 4, !dbg !5652
  %idxprom3 = sext i32 %13 to i64, !dbg !5652
  %arrayidx4 = getelementptr [2 x i8], [2 x i8]* %fan2, i64 0, i64 %idxprom3, !dbg !5652
  %14 = load i8, i8* %arrayidx4, align 1, !dbg !5652
  %conv5 = zext i8 %14 to i32, !dbg !5652
  %cmp6 = icmp eq i32 %conv5, 255, !dbg !5652
  br i1 %cmp6, label %cond.true8, label %cond.false9, !dbg !5652

cond.true8:                                       ; preds = %cond.false
  br label %cond.end, !dbg !5652

cond.false9:                                      ; preds = %cond.false
  %15 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5652
  %fan10 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %15, i32 0, i32 9, !dbg !5652
  %16 = load i32, i32* %nr, align 4, !dbg !5652
  %idxprom11 = sext i32 %16 to i64, !dbg !5652
  %arrayidx12 = getelementptr [2 x i8], [2 x i8]* %fan10, i64 0, i64 %idxprom11, !dbg !5652
  %17 = load i8, i8* %arrayidx12, align 1, !dbg !5652
  %conv13 = zext i8 %17 to i32, !dbg !5652
  %18 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5652
  %fan_div = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %18, i32 0, i32 14, !dbg !5652
  %19 = load i32, i32* %nr, align 4, !dbg !5652
  %idxprom14 = sext i32 %19 to i64, !dbg !5652
  %arrayidx15 = getelementptr [2 x i8], [2 x i8]* %fan_div, i64 0, i64 %idxprom14, !dbg !5652
  %20 = load i8, i8* %arrayidx15, align 1, !dbg !5652
  %conv16 = zext i8 %20 to i32, !dbg !5652
  %shl = shl i32 1, %conv16, !dbg !5652
  %mul = mul i32 %conv13, %shl, !dbg !5652
  %div = sdiv i32 1350000, %mul, !dbg !5652
  br label %cond.end, !dbg !5652

cond.end:                                         ; preds = %cond.false9, %cond.true8
  %cond = phi i32 [ 0, %cond.true8 ], [ %div, %cond.false9 ], !dbg !5652
  br label %cond.end17, !dbg !5652

cond.end17:                                       ; preds = %cond.end, %cond.true
  %cond18 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ], !dbg !5652
  %call19 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i32 %cond18) #5, !dbg !5653
  %conv20 = sext i32 %call19 to i64, !dbg !5653
  ret i64 %conv20, !dbg !5654
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @fan_min_show(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf) #2 !dbg !5655 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.via686a_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5656, metadata !DIExpression()), !dbg !5657
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5658, metadata !DIExpression()), !dbg !5659
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5660, metadata !DIExpression()), !dbg !5661
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data, metadata !5662, metadata !DIExpression()), !dbg !5663
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5664
  %call = call %struct.via686a_data* @via686a_update_device(%struct.device* %0) #5, !dbg !5665
  store %struct.via686a_data* %call, %struct.via686a_data** %data, align 8, !dbg !5663
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5666, metadata !DIExpression()), !dbg !5667
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5668, metadata !DIExpression()), !dbg !5670
  %1 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5670
  %2 = bitcast %struct.device_attribute* %1 to i8*, !dbg !5670
  store i8* %2, i8** %__mptr, align 8, !dbg !5670
  br label %do.body, !dbg !5670

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5671

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5670
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5670
  %4 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5670
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5671
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5670
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %attr, align 8, !dbg !5667
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5673, metadata !DIExpression()), !dbg !5674
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5675
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %6, i32 0, i32 1, !dbg !5676
  %7 = load i32, i32* %index, align 8, !dbg !5676
  store i32 %7, i32* %nr, align 4, !dbg !5674
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5677
  %9 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5678
  %fan_min = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %9, i32 0, i32 10, !dbg !5678
  %10 = load i32, i32* %nr, align 4, !dbg !5678
  %idxprom = sext i32 %10 to i64, !dbg !5678
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %fan_min, i64 0, i64 %idxprom, !dbg !5678
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5678
  %conv = zext i8 %11 to i32, !dbg !5678
  %cmp = icmp eq i32 %conv, 0, !dbg !5678
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5678

cond.true:                                        ; preds = %do.end
  br label %cond.end17, !dbg !5678

cond.false:                                       ; preds = %do.end
  %12 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5678
  %fan_min2 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %12, i32 0, i32 10, !dbg !5678
  %13 = load i32, i32* %nr, align 4, !dbg !5678
  %idxprom3 = sext i32 %13 to i64, !dbg !5678
  %arrayidx4 = getelementptr [2 x i8], [2 x i8]* %fan_min2, i64 0, i64 %idxprom3, !dbg !5678
  %14 = load i8, i8* %arrayidx4, align 1, !dbg !5678
  %conv5 = zext i8 %14 to i32, !dbg !5678
  %cmp6 = icmp eq i32 %conv5, 255, !dbg !5678
  br i1 %cmp6, label %cond.true8, label %cond.false9, !dbg !5678

cond.true8:                                       ; preds = %cond.false
  br label %cond.end, !dbg !5678

cond.false9:                                      ; preds = %cond.false
  %15 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5678
  %fan_min10 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %15, i32 0, i32 10, !dbg !5678
  %16 = load i32, i32* %nr, align 4, !dbg !5678
  %idxprom11 = sext i32 %16 to i64, !dbg !5678
  %arrayidx12 = getelementptr [2 x i8], [2 x i8]* %fan_min10, i64 0, i64 %idxprom11, !dbg !5678
  %17 = load i8, i8* %arrayidx12, align 1, !dbg !5678
  %conv13 = zext i8 %17 to i32, !dbg !5678
  %18 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5678
  %fan_div = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %18, i32 0, i32 14, !dbg !5678
  %19 = load i32, i32* %nr, align 4, !dbg !5678
  %idxprom14 = sext i32 %19 to i64, !dbg !5678
  %arrayidx15 = getelementptr [2 x i8], [2 x i8]* %fan_div, i64 0, i64 %idxprom14, !dbg !5678
  %20 = load i8, i8* %arrayidx15, align 1, !dbg !5678
  %conv16 = zext i8 %20 to i32, !dbg !5678
  %shl = shl i32 1, %conv16, !dbg !5678
  %mul = mul i32 %conv13, %shl, !dbg !5678
  %div = sdiv i32 1350000, %mul, !dbg !5678
  br label %cond.end, !dbg !5678

cond.end:                                         ; preds = %cond.false9, %cond.true8
  %cond = phi i32 [ 0, %cond.true8 ], [ %div, %cond.false9 ], !dbg !5678
  br label %cond.end17, !dbg !5678

cond.end17:                                       ; preds = %cond.end, %cond.true
  %cond18 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ], !dbg !5678
  %call19 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i32 %cond18) #5, !dbg !5679
  %conv20 = sext i32 %call19 to i64, !dbg !5679
  ret i64 %conv20, !dbg !5680
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @fan_min_store(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf, i64 %count) #2 !dbg !5681 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %data = alloca %struct.via686a_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5682, metadata !DIExpression()), !dbg !5683
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5684, metadata !DIExpression()), !dbg !5685
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5686, metadata !DIExpression()), !dbg !5687
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5688, metadata !DIExpression()), !dbg !5689
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data, metadata !5690, metadata !DIExpression()), !dbg !5691
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5692
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !5693
  %1 = bitcast i8* %call to %struct.via686a_data*, !dbg !5693
  store %struct.via686a_data* %1, %struct.via686a_data** %data, align 8, !dbg !5691
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5694, metadata !DIExpression()), !dbg !5695
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5696, metadata !DIExpression()), !dbg !5698
  %2 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5698
  %3 = bitcast %struct.device_attribute* %2 to i8*, !dbg !5698
  store i8* %3, i8** %__mptr, align 8, !dbg !5698
  br label %do.body, !dbg !5698

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5699

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5698
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !5698
  %5 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5698
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5699
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5698
  store %struct.sensor_device_attribute* %6, %struct.sensor_device_attribute** %attr, align 8, !dbg !5695
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5701, metadata !DIExpression()), !dbg !5702
  %7 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5703
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %7, i32 0, i32 1, !dbg !5704
  %8 = load i32, i32* %index, align 8, !dbg !5704
  store i32 %8, i32* %nr, align 4, !dbg !5702
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5705, metadata !DIExpression()), !dbg !5706
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5707, metadata !DIExpression()), !dbg !5708
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !5709
  %call1 = call i32 @kstrtoul(i8* %9, i32 10, i64* %val) #5, !dbg !5710
  store i32 %call1, i32* %err, align 4, !dbg !5711
  %10 = load i32, i32* %err, align 4, !dbg !5712
  %tobool = icmp ne i32 %10, 0, !dbg !5712
  br i1 %tobool, label %if.then, label %if.end, !dbg !5714

if.then:                                          ; preds = %do.end
  %11 = load i32, i32* %err, align 4, !dbg !5715
  %conv = sext i32 %11 to i64, !dbg !5715
  store i64 %conv, i64* %retval, align 8, !dbg !5716
  br label %return, !dbg !5716

if.end:                                           ; preds = %do.end
  %12 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5717
  %update_lock = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %12, i32 0, i32 3, !dbg !5718
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !5719
  %13 = load i64, i64* %val, align 8, !dbg !5720
  %14 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5721
  %fan_div = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %14, i32 0, i32 14, !dbg !5721
  %15 = load i32, i32* %nr, align 4, !dbg !5721
  %idxprom = sext i32 %15 to i64, !dbg !5721
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %fan_div, i64 0, i64 %idxprom, !dbg !5721
  %16 = load i8, i8* %arrayidx, align 1, !dbg !5721
  %conv2 = zext i8 %16 to i32, !dbg !5721
  %shl = shl i32 1, %conv2, !dbg !5721
  %call3 = call zeroext i8 @FAN_TO_REG(i64 %13, i32 %shl) #5, !dbg !5722
  %17 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5723
  %fan_min = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %17, i32 0, i32 10, !dbg !5724
  %18 = load i32, i32* %nr, align 4, !dbg !5725
  %idxprom4 = sext i32 %18 to i64, !dbg !5723
  %arrayidx5 = getelementptr [2 x i8], [2 x i8]* %fan_min, i64 0, i64 %idxprom4, !dbg !5723
  store i8 %call3, i8* %arrayidx5, align 1, !dbg !5726
  %19 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5727
  %20 = load i32, i32* %nr, align 4, !dbg !5728
  %add = add i32 %20, 1, !dbg !5728
  %add6 = add i32 58, %add, !dbg !5728
  %conv7 = trunc i32 %add6 to i8, !dbg !5728
  %21 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5729
  %fan_min8 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %21, i32 0, i32 10, !dbg !5730
  %22 = load i32, i32* %nr, align 4, !dbg !5731
  %idxprom9 = sext i32 %22 to i64, !dbg !5729
  %arrayidx10 = getelementptr [2 x i8], [2 x i8]* %fan_min8, i64 0, i64 %idxprom9, !dbg !5729
  %23 = load i8, i8* %arrayidx10, align 1, !dbg !5729
  call void @via686a_write_value(%struct.via686a_data* %19, i8 zeroext %conv7, i8 zeroext %23) #5, !dbg !5732
  %24 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5733
  %update_lock11 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %24, i32 0, i32 3, !dbg !5734
  call void @mutex_unlock(%struct.mutex* %update_lock11) #5, !dbg !5735
  %25 = load i64, i64* %count.addr, align 8, !dbg !5736
  store i64 %25, i64* %retval, align 8, !dbg !5737
  br label %return, !dbg !5737

return:                                           ; preds = %if.end, %if.then
  %26 = load i64, i64* %retval, align 8, !dbg !5738
  ret i64 %26, !dbg !5738
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @FAN_TO_REG(i64 %rpm, i32 %div) #2 !dbg !5739 {
entry:
  %retval = alloca i8, align 1
  %rpm.addr = alloca i64, align 8
  %div.addr = alloca i32, align 4
  %__UNIQUE_ID___x258 = alloca i64, align 8
  %__UNIQUE_ID___x256 = alloca i64, align 8
  %__UNIQUE_ID___y257 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___y259 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %__UNIQUE_ID___x262 = alloca i64, align 8
  %__UNIQUE_ID___x260 = alloca i64, align 8
  %__UNIQUE_ID___y261 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %__UNIQUE_ID___y263 = alloca i64, align 8
  %tmp19 = alloca i64, align 8
  store i64 %rpm, i64* %rpm.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rpm.addr, metadata !5740, metadata !DIExpression()), !dbg !5741
  store i32 %div, i32* %div.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %div.addr, metadata !5742, metadata !DIExpression()), !dbg !5743
  %0 = load i64, i64* %rpm.addr, align 8, !dbg !5744
  %cmp = icmp eq i64 %0, 0, !dbg !5746
  br i1 %cmp, label %if.then, label %if.end, !dbg !5747

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !5748
  br label %return, !dbg !5748

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x258, metadata !5749, metadata !DIExpression()), !dbg !5751
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x256, metadata !5752, metadata !DIExpression()), !dbg !5754
  %1 = load i64, i64* %rpm.addr, align 8, !dbg !5754
  store i64 %1, i64* %__UNIQUE_ID___x256, align 8, !dbg !5754
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y257, metadata !5755, metadata !DIExpression()), !dbg !5754
  store i64 1, i64* %__UNIQUE_ID___y257, align 8, !dbg !5754
  %2 = load i64, i64* %__UNIQUE_ID___x256, align 8, !dbg !5754
  %3 = load i64, i64* %__UNIQUE_ID___y257, align 8, !dbg !5754
  %cmp1 = icmp sgt i64 %2, %3, !dbg !5754
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !5754

cond.true:                                        ; preds = %if.end
  %4 = load i64, i64* %__UNIQUE_ID___x256, align 8, !dbg !5754
  br label %cond.end, !dbg !5754

cond.false:                                       ; preds = %if.end
  %5 = load i64, i64* %__UNIQUE_ID___y257, align 8, !dbg !5754
  br label %cond.end, !dbg !5754

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !5754
  store i64 %cond, i64* %tmp, align 8, !dbg !5754
  %6 = load i64, i64* %tmp, align 8, !dbg !5754
  store i64 %6, i64* %__UNIQUE_ID___x258, align 8, !dbg !5751
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y259, metadata !5756, metadata !DIExpression()), !dbg !5751
  store i64 1000000, i64* %__UNIQUE_ID___y259, align 8, !dbg !5751
  %7 = load i64, i64* %__UNIQUE_ID___x258, align 8, !dbg !5751
  %8 = load i64, i64* %__UNIQUE_ID___y259, align 8, !dbg !5751
  %cmp3 = icmp slt i64 %7, %8, !dbg !5751
  br i1 %cmp3, label %cond.true4, label %cond.false5, !dbg !5751

cond.true4:                                       ; preds = %cond.end
  %9 = load i64, i64* %__UNIQUE_ID___x258, align 8, !dbg !5751
  br label %cond.end6, !dbg !5751

cond.false5:                                      ; preds = %cond.end
  %10 = load i64, i64* %__UNIQUE_ID___y259, align 8, !dbg !5751
  br label %cond.end6, !dbg !5751

cond.end6:                                        ; preds = %cond.false5, %cond.true4
  %cond7 = phi i64 [ %9, %cond.true4 ], [ %10, %cond.false5 ], !dbg !5751
  store i64 %cond7, i64* %tmp2, align 8, !dbg !5751
  %11 = load i64, i64* %tmp2, align 8, !dbg !5751
  store i64 %11, i64* %rpm.addr, align 8, !dbg !5757
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x262, metadata !5758, metadata !DIExpression()), !dbg !5760
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x260, metadata !5761, metadata !DIExpression()), !dbg !5763
  %12 = load i64, i64* %rpm.addr, align 8, !dbg !5763
  %13 = load i32, i32* %div.addr, align 4, !dbg !5763
  %conv = sext i32 %13 to i64, !dbg !5763
  %mul = mul i64 %12, %conv, !dbg !5763
  %div8 = sdiv i64 %mul, 2, !dbg !5763
  %add = add i64 1350000, %div8, !dbg !5763
  %14 = load i64, i64* %rpm.addr, align 8, !dbg !5763
  %15 = load i32, i32* %div.addr, align 4, !dbg !5763
  %conv9 = sext i32 %15 to i64, !dbg !5763
  %mul10 = mul i64 %14, %conv9, !dbg !5763
  %div11 = sdiv i64 %add, %mul10, !dbg !5763
  store i64 %div11, i64* %__UNIQUE_ID___x260, align 8, !dbg !5763
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y261, metadata !5764, metadata !DIExpression()), !dbg !5763
  store i64 1, i64* %__UNIQUE_ID___y261, align 8, !dbg !5763
  %16 = load i64, i64* %__UNIQUE_ID___x260, align 8, !dbg !5763
  %17 = load i64, i64* %__UNIQUE_ID___y261, align 8, !dbg !5763
  %cmp13 = icmp sgt i64 %16, %17, !dbg !5763
  br i1 %cmp13, label %cond.true15, label %cond.false16, !dbg !5763

cond.true15:                                      ; preds = %cond.end6
  %18 = load i64, i64* %__UNIQUE_ID___x260, align 8, !dbg !5763
  br label %cond.end17, !dbg !5763

cond.false16:                                     ; preds = %cond.end6
  %19 = load i64, i64* %__UNIQUE_ID___y261, align 8, !dbg !5763
  br label %cond.end17, !dbg !5763

cond.end17:                                       ; preds = %cond.false16, %cond.true15
  %cond18 = phi i64 [ %18, %cond.true15 ], [ %19, %cond.false16 ], !dbg !5763
  store i64 %cond18, i64* %tmp12, align 8, !dbg !5763
  %20 = load i64, i64* %tmp12, align 8, !dbg !5763
  store i64 %20, i64* %__UNIQUE_ID___x262, align 8, !dbg !5760
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y263, metadata !5765, metadata !DIExpression()), !dbg !5760
  store i64 255, i64* %__UNIQUE_ID___y263, align 8, !dbg !5760
  %21 = load i64, i64* %__UNIQUE_ID___x262, align 8, !dbg !5760
  %22 = load i64, i64* %__UNIQUE_ID___y263, align 8, !dbg !5760
  %cmp20 = icmp slt i64 %21, %22, !dbg !5760
  br i1 %cmp20, label %cond.true22, label %cond.false23, !dbg !5760

cond.true22:                                      ; preds = %cond.end17
  %23 = load i64, i64* %__UNIQUE_ID___x262, align 8, !dbg !5760
  br label %cond.end24, !dbg !5760

cond.false23:                                     ; preds = %cond.end17
  %24 = load i64, i64* %__UNIQUE_ID___y263, align 8, !dbg !5760
  br label %cond.end24, !dbg !5760

cond.end24:                                       ; preds = %cond.false23, %cond.true22
  %cond25 = phi i64 [ %23, %cond.true22 ], [ %24, %cond.false23 ], !dbg !5760
  store i64 %cond25, i64* %tmp19, align 8, !dbg !5760
  %25 = load i64, i64* %tmp19, align 8, !dbg !5760
  %conv26 = trunc i64 %25 to i8, !dbg !5766
  store i8 %conv26, i8* %retval, align 1, !dbg !5767
  br label %return, !dbg !5767

return:                                           ; preds = %cond.end24, %if.then
  %26 = load i8, i8* %retval, align 1, !dbg !5768
  ret i8 %26, !dbg !5768
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @fan_div_show(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf) #2 !dbg !5769 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.via686a_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5770, metadata !DIExpression()), !dbg !5771
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5772, metadata !DIExpression()), !dbg !5773
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5774, metadata !DIExpression()), !dbg !5775
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data, metadata !5776, metadata !DIExpression()), !dbg !5777
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5778
  %call = call %struct.via686a_data* @via686a_update_device(%struct.device* %0) #5, !dbg !5779
  store %struct.via686a_data* %call, %struct.via686a_data** %data, align 8, !dbg !5777
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5780, metadata !DIExpression()), !dbg !5781
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5782, metadata !DIExpression()), !dbg !5784
  %1 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5784
  %2 = bitcast %struct.device_attribute* %1 to i8*, !dbg !5784
  store i8* %2, i8** %__mptr, align 8, !dbg !5784
  br label %do.body, !dbg !5784

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5785

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5784
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5784
  %4 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5784
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5785
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5784
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %attr, align 8, !dbg !5781
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5787, metadata !DIExpression()), !dbg !5788
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5789
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %6, i32 0, i32 1, !dbg !5790
  %7 = load i32, i32* %index, align 8, !dbg !5790
  store i32 %7, i32* %nr, align 4, !dbg !5788
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5791
  %9 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5792
  %fan_div = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %9, i32 0, i32 14, !dbg !5792
  %10 = load i32, i32* %nr, align 4, !dbg !5792
  %idxprom = sext i32 %10 to i64, !dbg !5792
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %fan_div, i64 0, i64 %idxprom, !dbg !5792
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5792
  %conv = zext i8 %11 to i32, !dbg !5792
  %shl = shl i32 1, %conv, !dbg !5792
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i32 %shl) #5, !dbg !5793
  %conv2 = sext i32 %call1 to i64, !dbg !5793
  ret i64 %conv2, !dbg !5794
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @fan_div_store(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf, i64 %count) #2 !dbg !5795 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %data = alloca %struct.via686a_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %old = alloca i32, align 4
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5796, metadata !DIExpression()), !dbg !5797
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5798, metadata !DIExpression()), !dbg !5799
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5800, metadata !DIExpression()), !dbg !5801
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5802, metadata !DIExpression()), !dbg !5803
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data, metadata !5804, metadata !DIExpression()), !dbg !5805
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5806
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !5807
  %1 = bitcast i8* %call to %struct.via686a_data*, !dbg !5807
  store %struct.via686a_data* %1, %struct.via686a_data** %data, align 8, !dbg !5805
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5808, metadata !DIExpression()), !dbg !5809
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5810, metadata !DIExpression()), !dbg !5812
  %2 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5812
  %3 = bitcast %struct.device_attribute* %2 to i8*, !dbg !5812
  store i8* %3, i8** %__mptr, align 8, !dbg !5812
  br label %do.body, !dbg !5812

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5813

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5812
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !5812
  %5 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5812
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5813
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5812
  store %struct.sensor_device_attribute* %6, %struct.sensor_device_attribute** %attr, align 8, !dbg !5809
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5815, metadata !DIExpression()), !dbg !5816
  %7 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5817
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %7, i32 0, i32 1, !dbg !5818
  %8 = load i32, i32* %index, align 8, !dbg !5818
  store i32 %8, i32* %nr, align 4, !dbg !5816
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5819, metadata !DIExpression()), !dbg !5820
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5821, metadata !DIExpression()), !dbg !5822
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5823, metadata !DIExpression()), !dbg !5824
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !5825
  %call1 = call i32 @kstrtoul(i8* %9, i32 10, i64* %val) #5, !dbg !5826
  store i32 %call1, i32* %err, align 4, !dbg !5827
  %10 = load i32, i32* %err, align 4, !dbg !5828
  %tobool = icmp ne i32 %10, 0, !dbg !5828
  br i1 %tobool, label %if.then, label %if.end, !dbg !5830

if.then:                                          ; preds = %do.end
  %11 = load i32, i32* %err, align 4, !dbg !5831
  %conv = sext i32 %11 to i64, !dbg !5831
  store i64 %conv, i64* %retval, align 8, !dbg !5832
  br label %return, !dbg !5832

if.end:                                           ; preds = %do.end
  %12 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5833
  %update_lock = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %12, i32 0, i32 3, !dbg !5834
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !5835
  %13 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5836
  %call2 = call i32 @via686a_read_value(%struct.via686a_data* %13, i8 zeroext 71) #5, !dbg !5837
  store i32 %call2, i32* %old, align 4, !dbg !5838
  %14 = load i64, i64* %val, align 8, !dbg !5839
  %cmp = icmp eq i64 %14, 8, !dbg !5839
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5839

cond.true:                                        ; preds = %if.end
  br label %cond.end11, !dbg !5839

cond.false:                                       ; preds = %if.end
  %15 = load i64, i64* %val, align 8, !dbg !5839
  %cmp4 = icmp eq i64 %15, 4, !dbg !5839
  br i1 %cmp4, label %cond.true6, label %cond.false7, !dbg !5839

cond.true6:                                       ; preds = %cond.false
  br label %cond.end, !dbg !5839

cond.false7:                                      ; preds = %cond.false
  %16 = load i64, i64* %val, align 8, !dbg !5839
  %cmp8 = icmp eq i64 %16, 1, !dbg !5839
  %17 = zext i1 %cmp8 to i64, !dbg !5839
  %cond = select i1 %cmp8, i32 0, i32 1, !dbg !5839
  br label %cond.end, !dbg !5839

cond.end:                                         ; preds = %cond.false7, %cond.true6
  %cond10 = phi i32 [ 2, %cond.true6 ], [ %cond, %cond.false7 ], !dbg !5839
  br label %cond.end11, !dbg !5839

cond.end11:                                       ; preds = %cond.end, %cond.true
  %cond12 = phi i32 [ 3, %cond.true ], [ %cond10, %cond.end ], !dbg !5839
  %conv13 = trunc i32 %cond12 to i8, !dbg !5839
  %18 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5840
  %fan_div = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %18, i32 0, i32 14, !dbg !5841
  %19 = load i32, i32* %nr, align 4, !dbg !5842
  %idxprom = sext i32 %19 to i64, !dbg !5840
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %fan_div, i64 0, i64 %idxprom, !dbg !5840
  store i8 %conv13, i8* %arrayidx, align 1, !dbg !5843
  %20 = load i32, i32* %old, align 4, !dbg !5844
  %and = and i32 %20, 15, !dbg !5845
  %21 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5846
  %fan_div14 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %21, i32 0, i32 14, !dbg !5847
  %arrayidx15 = getelementptr [2 x i8], [2 x i8]* %fan_div14, i64 0, i64 1, !dbg !5846
  %22 = load i8, i8* %arrayidx15, align 1, !dbg !5846
  %conv16 = zext i8 %22 to i32, !dbg !5846
  %shl = shl i32 %conv16, 6, !dbg !5848
  %or = or i32 %and, %shl, !dbg !5849
  %23 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5850
  %fan_div17 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %23, i32 0, i32 14, !dbg !5851
  %arrayidx18 = getelementptr [2 x i8], [2 x i8]* %fan_div17, i64 0, i64 0, !dbg !5850
  %24 = load i8, i8* %arrayidx18, align 8, !dbg !5850
  %conv19 = zext i8 %24 to i32, !dbg !5850
  %shl20 = shl i32 %conv19, 4, !dbg !5852
  %or21 = or i32 %or, %shl20, !dbg !5853
  store i32 %or21, i32* %old, align 4, !dbg !5854
  %25 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5855
  %26 = load i32, i32* %old, align 4, !dbg !5856
  %conv22 = trunc i32 %26 to i8, !dbg !5856
  call void @via686a_write_value(%struct.via686a_data* %25, i8 zeroext 71, i8 zeroext %conv22) #5, !dbg !5857
  %27 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5858
  %update_lock23 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %27, i32 0, i32 3, !dbg !5859
  call void @mutex_unlock(%struct.mutex* %update_lock23) #5, !dbg !5860
  %28 = load i64, i64* %count.addr, align 8, !dbg !5861
  store i64 %28, i64* %retval, align 8, !dbg !5862
  br label %return, !dbg !5862

return:                                           ; preds = %cond.end11, %if.then
  %29 = load i64, i64* %retval, align 8, !dbg !5863
  ret i64 %29, !dbg !5863
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @alarms_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5864 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.via686a_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5865, metadata !DIExpression()), !dbg !5866
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5867, metadata !DIExpression()), !dbg !5868
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5869, metadata !DIExpression()), !dbg !5870
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data, metadata !5871, metadata !DIExpression()), !dbg !5872
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5873
  %call = call %struct.via686a_data* @via686a_update_device(%struct.device* %0) #5, !dbg !5874
  store %struct.via686a_data* %call, %struct.via686a_data** %data, align 8, !dbg !5872
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !5875
  %2 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5876
  %alarms = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %2, i32 0, i32 15, !dbg !5877
  %3 = load i16, i16* %alarms, align 2, !dbg !5877
  %conv = zext i16 %3 to i32, !dbg !5876
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32 %conv) #5, !dbg !5878
  %conv2 = sext i32 %call1 to i64, !dbg !5878
  ret i64 %conv2, !dbg !5879
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @name_show(%struct.device* %dev, %struct.device_attribute* %devattr, i8* %buf) #2 !dbg !5880 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %devattr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.via686a_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5881, metadata !DIExpression()), !dbg !5882
  store %struct.device_attribute* %devattr, %struct.device_attribute** %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %devattr.addr, metadata !5883, metadata !DIExpression()), !dbg !5884
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5885, metadata !DIExpression()), !dbg !5886
  call void @llvm.dbg.declare(metadata %struct.via686a_data** %data, metadata !5887, metadata !DIExpression()), !dbg !5888
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5889
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !5890
  %1 = bitcast i8* %call to %struct.via686a_data*, !dbg !5890
  store %struct.via686a_data* %1, %struct.via686a_data** %data, align 8, !dbg !5888
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5891
  %3 = load %struct.via686a_data*, %struct.via686a_data** %data, align 8, !dbg !5892
  %name = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %3, i32 0, i32 1, !dbg !5893
  %4 = load i8*, i8** %name, align 8, !dbg !5893
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i8* %4) #5, !dbg !5894
  %conv = sext i32 %call1 to i64, !dbg !5894
  ret i64 %conv, !dbg !5895
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !5896 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !5901, metadata !DIExpression()), !dbg !5902
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5903
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !5904
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #5, !dbg !5905
  ret i8* %call, !dbg !5906
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
!llvm.module.flags = !{!4379, !4380, !4381, !4382}
!llvm.ident = !{!4383}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_force_addr", scope: !2, file: !3, line: 42, type: !4376, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !107, globals: !3847, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/hwmon/via686a.c", directory: "/home/lizy2001/genbc/linux")
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
!107 = !{!108, !109, !112, !113, !115, !141, !3845, !1271, !3846}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !111, line: 76, flags: DIFlagFwdDecl)
!111 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!112 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !114, line: 148, baseType: !7)
!114 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sensor_device_attribute", file: !117, line: 12, size: 320, elements: !118)
!117 = !DIFile(filename: "./include/linux/hwmon-sysfs.h", directory: "/home/lizy2001/genbc/linux")
!118 = !{!119, !3844}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "dev_attr", scope: !116, file: !117, line: 13, baseType: !120, size: 256)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !73, line: 99, size: 256, elements: !121)
!121 = !{!122, !133, !3840}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !120, file: !73, line: 100, baseType: !123, size: 128)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !124, line: 30, size: 128, elements: !125)
!124 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!125 = !{!126, !130}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !123, file: !124, line: 31, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !123, file: !124, line: 32, baseType: !131, size: 16, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !114, line: 19, baseType: !132)
!132 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !120, file: !73, line: 101, baseType: !134, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!137, !142, !3839, !206}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !114, line: 60, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !139, line: 73, baseType: !140)
!139 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !139, line: 15, baseType: !141)
!141 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !144)
!144 = !{!145, !3293, !3294, !3297, !3298, !3349, !3440, !3441, !3442, !3443, !3444, !3453, !3558, !3571, !3766, !3767, !3771, !3773, !3774, !3775, !3779, !3785, !3786, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3827, !3828, !3829, !3832, !3835, !3836, !3837, !3838}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !143, file: !73, line: 462, baseType: !146, size: 512)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !147, line: 64, size: 512, elements: !148)
!147 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!148 = !{!149, !150, !156, !158, !219, !3144, !3283, !3288, !3289, !3290, !3291, !3292}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !146, file: !147, line: 65, baseType: !127, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !146, file: !147, line: 66, baseType: !151, size: 128, offset: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !114, line: 178, size: 128, elements: !152)
!152 = !{!153, !155}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !151, file: !114, line: 179, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !151, file: !114, line: 179, baseType: !154, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !146, file: !147, line: 67, baseType: !157, size: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !146, file: !147, line: 68, baseType: !159, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !147, line: 192, size: 704, elements: !161)
!161 = !{!162, !163, !179, !180}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !160, file: !147, line: 193, baseType: !151, size: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !160, file: !147, line: 194, baseType: !164, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !165, line: 83, baseType: !166)
!165 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !165, line: 71, elements: !167)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, scope: !166, file: !165, line: 72, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !165, line: 72, elements: !170)
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !169, file: !165, line: 73, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !165, line: 20, elements: !173)
!173 = !{!174}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !172, file: !165, line: 21, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !176, line: 25, baseType: !177)
!176 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 25, elements: !178)
!178 = !{}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !160, file: !147, line: 195, baseType: !146, size: 512, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !160, file: !147, line: 196, baseType: !181, size: 64, offset: 640)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !147, line: 156, size: 192, elements: !184)
!184 = !{!185, !191, !196}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !183, file: !147, line: 157, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!190, !159, !157}
!190 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !147, line: 158, baseType: !192, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!127, !159, !157}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !183, file: !147, line: 159, baseType: !197, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!190, !159, !157, !201}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !147, line: 148, size: 20736, elements: !203)
!203 = !{!204, !209, !213, !214, !218}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !202, file: !147, line: 149, baseType: !205, size: 192)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 192, elements: !207)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!207 = !{!208}
!208 = !DISubrange(count: 3)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !202, file: !147, line: 150, baseType: !210, size: 4096, offset: 192)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 4096, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !202, file: !147, line: 151, baseType: !190, size: 32, offset: 4288)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !202, file: !147, line: 152, baseType: !215, size: 16384, offset: 4320)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 16384, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 2048)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !202, file: !147, line: 153, baseType: !190, size: 32, offset: 20704)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !146, file: !147, line: 69, baseType: !220, size: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !147, line: 138, size: 448, elements: !222)
!222 = !{!223, !227, !244, !246, !3106, !3134, !3138}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !221, file: !147, line: 139, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !157}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !221, file: !147, line: 140, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !124, line: 230, size: 128, elements: !231)
!231 = !{!232, !237}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !230, file: !124, line: 231, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!137, !157, !236, !206}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !230, file: !124, line: 232, baseType: !238, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!137, !157, !236, !127, !241}
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !114, line: 55, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !139, line: 72, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !139, line: 16, baseType: !112)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !221, file: !147, line: 141, baseType: !245, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !221, file: !147, line: 142, baseType: !247, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !124, line: 84, size: 320, elements: !251)
!251 = !{!252, !253, !257, !3103, !3104}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !250, file: !124, line: 85, baseType: !127, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !250, file: !124, line: 86, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!131, !157, !236, !190}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !250, file: !124, line: 88, baseType: !258, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!131, !157, !261, !190}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !124, line: 168, size: 448, elements: !263)
!263 = !{!264, !265, !266, !267, !3098, !3099}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !262, file: !124, line: 169, baseType: !123, size: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !262, file: !124, line: 170, baseType: !241, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !262, file: !124, line: 171, baseType: !108, size: 64, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !262, file: !124, line: 172, baseType: !268, size: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!137, !271, !157, !261, !206, !450, !241}
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
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !114, line: 216, size: 128, align: 64, elements: !285)
!285 = !{!286, !288}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !284, file: !114, line: 217, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !284, file: !114, line: 218, baseType: !289, size: 64, offset: 64)
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
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !349, file: !44, line: 611, baseType: !131, size: 16)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !349, file: !44, line: 612, baseType: !132, size: 16, offset: 16)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !349, file: !44, line: 613, baseType: !354, size: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !355, line: 23, baseType: !356)
!355 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !355, line: 21, size: 32, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !356, file: !355, line: 22, baseType: !359, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !114, line: 32, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !139, line: 49, baseType: !7)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !349, file: !44, line: 614, baseType: !362, size: 32, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !355, line: 28, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !355, line: 26, size: 32, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !363, file: !355, line: 27, baseType: !366, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !114, line: 33, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !139, line: 50, baseType: !7)
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
!381 = !{!127, !301, !348, !382}
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
!394 = !{!190, !348, !190}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !372, file: !44, line: 1868, baseType: !396, size: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!399, !348, !190}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !372, file: !44, line: 1870, baseType: !402, size: 64, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!190, !301, !206, !190}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !372, file: !44, line: 1872, baseType: !406, size: 64, offset: 320)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!190, !348, !301, !131, !409}
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !114, line: 30, baseType: !410)
!410 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !372, file: !44, line: 1873, baseType: !412, size: 64, offset: 384)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!190, !301, !348, !301}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !372, file: !44, line: 1874, baseType: !416, size: 64, offset: 448)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!190, !348, !301}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !372, file: !44, line: 1875, baseType: !420, size: 64, offset: 512)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!190, !348, !301, !127}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !372, file: !44, line: 1876, baseType: !424, size: 64, offset: 576)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!190, !348, !301, !131}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !372, file: !44, line: 1877, baseType: !416, size: 64, offset: 640)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !372, file: !44, line: 1878, baseType: !429, size: 64, offset: 704)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!190, !348, !301, !131, !432}
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !114, line: 16, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !114, line: 13, baseType: !334)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !372, file: !44, line: 1879, baseType: !435, size: 64, offset: 768)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!190, !348, !301, !348, !301, !7}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !372, file: !44, line: 1881, baseType: !439, size: 64, offset: 832)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!190, !301, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !444)
!444 = !{!445, !446, !447, !448, !449, !453, !461, !462, !463}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !443, file: !44, line: 220, baseType: !7, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !443, file: !44, line: 221, baseType: !131, size: 16, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !443, file: !44, line: 222, baseType: !354, size: 32, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !443, file: !44, line: 223, baseType: !362, size: 32, offset: 96)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !443, file: !44, line: 224, baseType: !450, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !114, line: 46, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !139, line: 88, baseType: !452)
!452 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !443, file: !44, line: 225, baseType: !454, size: 128, offset: 192)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !455, line: 13, size: 128, elements: !456)
!455 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!456 = !{!457, !460}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !454, file: !455, line: 14, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !455, line: 8, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !337, line: 30, baseType: !452)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !454, file: !455, line: 15, baseType: !141, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !443, file: !44, line: 226, baseType: !454, size: 128, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !443, file: !44, line: 227, baseType: !454, size: 128, offset: 448)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !443, file: !44, line: 234, baseType: !271, size: 64, offset: 576)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !372, file: !44, line: 1882, baseType: !465, size: 64, offset: 896)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!190, !468, !470, !334, !7}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !472, line: 22, size: 1152, elements: !473)
!472 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!473 = !{!474, !475, !476, !477, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !471, file: !472, line: 23, baseType: !334, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !471, file: !472, line: 24, baseType: !131, size: 16, offset: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !471, file: !472, line: 25, baseType: !7, size: 32, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !471, file: !472, line: 26, baseType: !478, size: 32, offset: 96)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !114, line: 104, baseType: !334)
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
!496 = !{!137, !301, !206, !241}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !372, file: !44, line: 1884, baseType: !498, size: 64, offset: 1024)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!190, !348, !501, !340, !340}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !372, file: !44, line: 1886, baseType: !504, size: 64, offset: 1088)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!190, !348, !507, !190}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !372, file: !44, line: 1887, baseType: !509, size: 64, offset: 1152)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!190, !348, !301, !271, !7, !131}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !372, file: !44, line: 1890, baseType: !424, size: 64, offset: 1216)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !372, file: !44, line: 1891, baseType: !514, size: 64, offset: 1280)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!190, !348, !399, !190}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !349, file: !44, line: 623, baseType: !518, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !520)
!520 = !{!521, !522, !523, !524, !525, !526, !573, !2349, !2431, !2514, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2530, !2534, !2535, !2538, !2539, !2542, !2543, !2544, !2585, !2612, !2613, !2614, !2615, !2616, !2617, !2620, !2622, !2629, !2630, !2632, !2633, !2634, !2693, !2694, !2709, !2710, !2711, !2712, !2713, !2716, !2717, !2718, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !519, file: !44, line: 1417, baseType: !151, size: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !519, file: !44, line: 1418, baseType: !432, size: 32, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !519, file: !44, line: 1419, baseType: !346, size: 8, offset: 160)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !519, file: !44, line: 1420, baseType: !112, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !519, file: !44, line: 1421, baseType: !450, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !519, file: !44, line: 1422, baseType: !527, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !529)
!529 = !{!530, !531, !532, !539, !543, !547, !551, !552, !553, !563, !566, !567, !568, !570, !571, !572}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !528, file: !44, line: 2229, baseType: !127, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !528, file: !44, line: 2230, baseType: !190, size: 32, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !528, file: !44, line: 2238, baseType: !533, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!190, !536}
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
!546 = !{!301, !527, !190, !127, !108}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !528, file: !44, line: 2242, baseType: !548, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !518}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !528, file: !44, line: 2243, baseType: !109, size: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !528, file: !44, line: 2244, baseType: !527, size: 64, offset: 448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !528, file: !44, line: 2245, baseType: !554, size: 64, offset: 512)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !114, line: 182, size: 64, elements: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !554, file: !114, line: 183, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !114, line: 186, size: 128, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !558, file: !114, line: 187, baseType: !557, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !558, file: !114, line: 187, baseType: !562, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !528, file: !44, line: 2247, baseType: !564, offset: 576)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !565, line: 187, elements: !178)
!565 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!566 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !528, file: !44, line: 2248, baseType: !564, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !528, file: !44, line: 2249, baseType: !564, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !528, file: !44, line: 2250, baseType: !569, offset: 576)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, elements: !207)
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
!590 = !{null, !348, !190}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !576, file: !44, line: 1941, baseType: !592, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!190, !348, !595}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !576, file: !44, line: 1942, baseType: !598, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!190, !348}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !576, file: !44, line: 1943, baseType: !583, size: 64, offset: 384)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !576, file: !44, line: 1944, baseType: !548, size: 64, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !576, file: !44, line: 1945, baseType: !604, size: 64, offset: 512)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!190, !518, !190}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !576, file: !44, line: 1946, baseType: !608, size: 64, offset: 576)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!190, !518}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !576, file: !44, line: 1947, baseType: !608, size: 64, offset: 640)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !576, file: !44, line: 1948, baseType: !608, size: 64, offset: 704)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !576, file: !44, line: 1949, baseType: !608, size: 64, offset: 768)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !576, file: !44, line: 1950, baseType: !615, size: 64, offset: 832)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!190, !301, !618}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !576, file: !44, line: 1951, baseType: !621, size: 64, offset: 896)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!190, !518, !624, !206}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !576, file: !44, line: 1952, baseType: !548, size: 64, offset: 960)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !576, file: !44, line: 1954, baseType: !627, size: 64, offset: 1024)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!190, !630, !301}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !632, line: 539, flags: DIFlagFwdDecl)
!632 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!633 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !576, file: !44, line: 1955, baseType: !627, size: 64, offset: 1088)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !576, file: !44, line: 1956, baseType: !627, size: 64, offset: 1152)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !576, file: !44, line: 1957, baseType: !627, size: 64, offset: 1216)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !576, file: !44, line: 1963, baseType: !637, size: 64, offset: 1280)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!190, !518, !640, !113}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !642, line: 68, size: 512, align: 128, elements: !643)
!642 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!643 = !{!644, !645, !2325, !2332}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !641, file: !642, line: 69, baseType: !112, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !642, line: 77, baseType: !646, size: 320, offset: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !641, file: !642, line: 77, size: 320, elements: !647)
!647 = !{!648, !835, !840, !868, !876, !882, !2256, !2324}
!648 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !642, line: 78, baseType: !649, size: 320)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !642, line: 78, size: 320, elements: !650)
!650 = !{!651, !652, !833, !834}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !649, file: !642, line: 84, baseType: !151, size: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !649, file: !642, line: 86, baseType: !653, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !655)
!655 = !{!656, !657, !664, !665, !670, !685, !701, !702, !703, !704, !826, !827, !830, !831, !832}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !654, file: !44, line: 452, baseType: !348, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !654, file: !44, line: 453, baseType: !658, size: 128, offset: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !659, line: 292, size: 128, elements: !660)
!659 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!660 = !{!661, !662, !663}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !658, file: !659, line: 293, baseType: !164)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !658, file: !659, line: 295, baseType: !113, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !658, file: !659, line: 296, baseType: !108, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !654, file: !44, line: 454, baseType: !113, size: 32, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !654, file: !44, line: 455, baseType: !666, size: 32, offset: 224)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !114, line: 168, baseType: !667)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 166, size: 32, elements: !668)
!668 = !{!669}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !667, file: !114, line: 167, baseType: !190, size: 32)
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
!681 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !679, file: !672, line: 25, baseType: !112, size: 64)
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
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !114, line: 175, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 173, size: 64, elements: !694)
!694 = !{!695}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !693, file: !114, line: 174, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !335, line: 22, baseType: !459)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !686, file: !687, line: 42, baseType: !690, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !686, file: !687, line: 46, baseType: !699, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !165, line: 29, baseType: !172)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !686, file: !687, line: 47, baseType: !151, size: 128, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !654, file: !44, line: 462, baseType: !112, size: 64, offset: 640)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !654, file: !44, line: 463, baseType: !112, size: 64, offset: 704)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !654, file: !44, line: 464, baseType: !112, size: 64, offset: 768)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !654, file: !44, line: 465, baseType: !705, size: 64, offset: 832)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !708)
!708 = !{!709, !713, !717, !721, !725, !729, !735, !741, !745, !750, !754, !758, !762, !790, !794, !800, !801, !802, !806, !811, !815, !822}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !707, file: !44, line: 368, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!190, !640, !595}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !707, file: !44, line: 369, baseType: !714, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!190, !271, !640}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !707, file: !44, line: 372, baseType: !718, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!190, !653, !595}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !707, file: !44, line: 375, baseType: !722, size: 64, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!190, !640}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !707, file: !44, line: 381, baseType: !726, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!190, !271, !653, !154, !7}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !707, file: !44, line: 383, baseType: !730, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !733}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !707, file: !44, line: 385, baseType: !736, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!190, !271, !653, !450, !7, !7, !739, !740}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !707, file: !44, line: 388, baseType: !742, size: 64, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!190, !271, !653, !450, !7, !7, !640, !108}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !707, file: !44, line: 393, baseType: !746, size: 64, offset: 512)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!749, !653, !749}
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !114, line: 125, baseType: !340)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !707, file: !44, line: 394, baseType: !751, size: 64, offset: 576)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !640, !7, !7}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !707, file: !44, line: 395, baseType: !755, size: 64, offset: 640)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!190, !640, !113}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !707, file: !44, line: 396, baseType: !759, size: 64, offset: 704)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{null, !640}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !707, file: !44, line: 397, baseType: !763, size: 64, offset: 768)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!137, !766, !788}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !768)
!768 = !{!769, !770, !771, !775, !776, !777, !780, !781}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !767, file: !44, line: 321, baseType: !271, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !767, file: !44, line: 326, baseType: !450, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !767, file: !44, line: 327, baseType: !772, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !766, !141, !141}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !767, file: !44, line: 328, baseType: !108, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !767, file: !44, line: 329, baseType: !190, size: 32, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !767, file: !44, line: 330, baseType: !778, size: 16, offset: 288)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !335, line: 19, baseType: !779)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !337, line: 24, baseType: !132)
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
!793 = !{!190, !653, !640, !640, !5}
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
!805 = !{!190, !640, !112, !112}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !707, file: !44, line: 409, baseType: !807, size: 64, offset: 1152)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !640, !810, !810}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !707, file: !44, line: 410, baseType: !812, size: 64, offset: 1216)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!190, !653, !640}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !707, file: !44, line: 413, baseType: !816, size: 64, offset: 1280)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!190, !819, !271, !821}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !707, file: !44, line: 415, baseType: !823, size: 64, offset: 1344)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !271}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !654, file: !44, line: 466, baseType: !112, size: 64, offset: 896)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !654, file: !44, line: 467, baseType: !828, size: 32, offset: 960)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !829, line: 8, baseType: !334)
!829 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!830 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !654, file: !44, line: 468, baseType: !164, offset: 992)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !654, file: !44, line: 469, baseType: !151, size: 128, offset: 1024)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !654, file: !44, line: 470, baseType: !108, size: 64, offset: 1152)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !649, file: !642, line: 87, baseType: !112, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !649, file: !642, line: 94, baseType: !112, size: 64, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !642, line: 96, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !642, line: 96, size: 64, elements: !837)
!837 = !{!838}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !836, file: !642, line: 101, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !114, line: 143, baseType: !340)
!840 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !642, line: 103, baseType: !841, size: 320)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !642, line: 103, size: 320, elements: !842)
!842 = !{!843, !853, !856, !857}
!843 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !642, line: 104, baseType: !844, size: 128)
!844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !841, file: !642, line: 104, size: 128, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !844, file: !642, line: 105, baseType: !151, size: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !642, line: 106, baseType: !848, size: 128)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !844, file: !642, line: 106, size: 128, elements: !849)
!849 = !{!850, !851, !852}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !848, file: !642, line: 107, baseType: !640, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !848, file: !642, line: 109, baseType: !190, size: 32, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !848, file: !642, line: 110, baseType: !190, size: 32, offset: 96)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !841, file: !642, line: 117, baseType: !854, size: 64, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !642, line: 117, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !841, file: !642, line: 119, baseType: !108, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !642, line: 120, baseType: !858, size: 64, offset: 256)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !841, file: !642, line: 120, size: 64, elements: !859)
!859 = !{!860, !861, !862}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !858, file: !642, line: 121, baseType: !108, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !858, file: !642, line: 122, baseType: !112, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !642, line: 123, baseType: !863, size: 32)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !858, file: !642, line: 123, size: 32, elements: !864)
!864 = !{!865, !866, !867}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !863, file: !642, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !863, file: !642, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !863, file: !642, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!868 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !642, line: 130, baseType: !869, size: 192)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !642, line: 130, size: 192, elements: !870)
!870 = !{!871, !872, !873, !874, !875}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !869, file: !642, line: 131, baseType: !112, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !869, file: !642, line: 134, baseType: !346, size: 8, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !869, file: !642, line: 135, baseType: !346, size: 8, offset: 72)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !869, file: !642, line: 136, baseType: !666, size: 32, offset: 96)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !869, file: !642, line: 137, baseType: !7, size: 32, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !642, line: 139, baseType: !877, size: 256)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !642, line: 139, size: 256, elements: !878)
!878 = !{!879, !880, !881}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !877, file: !642, line: 140, baseType: !112, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !877, file: !642, line: 141, baseType: !666, size: 32, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !877, file: !642, line: 143, baseType: !151, size: 128, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !642, line: 145, baseType: !883, size: 256)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !642, line: 145, size: 256, elements: !884)
!884 = !{!885, !886, !888, !889, !2255}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !883, file: !642, line: 146, baseType: !112, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !883, file: !642, line: 147, baseType: !887, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !632, line: 509, baseType: !640)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !883, file: !642, line: 148, baseType: !112, size: 64, offset: 128)
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
!903 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !901, file: !642, line: 308, baseType: !112, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !901, file: !642, line: 309, baseType: !112, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !901, file: !642, line: 313, baseType: !900, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !901, file: !642, line: 313, baseType: !900, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !901, file: !642, line: 315, baseType: !679, size: 192, align: 64, offset: 256)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !901, file: !642, line: 323, baseType: !112, size: 64, offset: 448)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !901, file: !642, line: 327, baseType: !893, size: 64, offset: 512)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !901, file: !642, line: 333, baseType: !911, size: 64, offset: 576)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !632, line: 284, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !632, line: 284, size: 64, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !912, file: !632, line: 284, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !916, line: 19, baseType: !112)
!916 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!917 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !901, file: !642, line: 334, baseType: !112, size: 64, offset: 640)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !901, file: !642, line: 343, baseType: !919, size: 256, offset: 704)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !901, file: !642, line: 340, size: 256, elements: !920)
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !919, file: !642, line: 341, baseType: !679, size: 192, align: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !919, file: !642, line: 342, baseType: !112, size: 64, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !901, file: !642, line: 351, baseType: !151, size: 128, offset: 960)
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
!940 = !{!190, !900, !112}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !930, file: !14, line: 561, baseType: !942, size: 64, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!190, !900}
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
!955 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !951, file: !14, line: 511, baseType: !113, size: 32, offset: 96)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !951, file: !14, line: 512, baseType: !112, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !951, file: !14, line: 513, baseType: !112, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !951, file: !14, line: 514, baseType: !959, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !632, line: 385, baseType: !961)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !632, line: 385, size: 64, elements: !962)
!962 = !{!963}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !961, file: !632, line: 385, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !916, line: 15, baseType: !112)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !951, file: !14, line: 516, baseType: !966, size: 64, offset: 320)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !632, line: 359, baseType: !968)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !632, line: 359, size: 64, elements: !969)
!969 = !{!970}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !968, file: !632, line: 359, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !916, line: 16, baseType: !112)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !951, file: !14, line: 519, baseType: !973, size: 64, offset: 384)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !916, line: 21, baseType: !974)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !916, line: 21, size: 64, elements: !975)
!975 = !{!976}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !974, file: !916, line: 21, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !916, line: 14, baseType: !112)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !951, file: !14, line: 521, baseType: !640, size: 64, offset: 448)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !951, file: !14, line: 522, baseType: !640, size: 64, offset: 512)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !951, file: !14, line: 528, baseType: !981, size: 64, offset: 576)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !951, file: !14, line: 532, baseType: !983, size: 64, offset: 640)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !951, file: !14, line: 536, baseType: !887, size: 64, offset: 704)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !930, file: !14, line: 563, baseType: !986, size: 64, offset: 320)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!949, !950, !13}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !930, file: !14, line: 565, baseType: !990, size: 64, offset: 384)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !950, !112, !112}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !930, file: !14, line: 567, baseType: !994, size: 64, offset: 448)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{!112, !900}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !930, file: !14, line: 571, baseType: !946, size: 64, offset: 512)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !930, file: !14, line: 574, baseType: !946, size: 64, offset: 576)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !930, file: !14, line: 579, baseType: !1000, size: 64, offset: 640)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!190, !900, !112, !108, !190, !190}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !930, file: !14, line: 585, baseType: !1004, size: 64, offset: 704)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!127, !900}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !930, file: !14, line: 615, baseType: !1008, size: 64, offset: 768)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!640, !900, !112}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !901, file: !642, line: 359, baseType: !112, size: 64, offset: 1216)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !901, file: !642, line: 361, baseType: !271, size: 64, offset: 1280)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !901, file: !642, line: 362, baseType: !108, size: 64, offset: 1344)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !901, file: !642, line: 365, baseType: !690, size: 64, offset: 1408)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !901, file: !642, line: 373, baseType: !1016, offset: 1472)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !642, line: 296, elements: !178)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !897, file: !642, line: 391, baseType: !675, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !897, file: !642, line: 392, baseType: !340, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !897, file: !642, line: 394, baseType: !1020, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!112, !271, !112, !112, !112, !112}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !897, file: !642, line: 398, baseType: !112, size: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !897, file: !642, line: 399, baseType: !112, size: 64, offset: 320)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !897, file: !642, line: 405, baseType: !112, size: 64, offset: 384)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !897, file: !642, line: 406, baseType: !112, size: 64, offset: 448)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !897, file: !642, line: 407, baseType: !1028, size: 64, offset: 512)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !632, line: 286, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !632, line: 286, size: 64, elements: !1031)
!1031 = !{!1032}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1030, file: !632, line: 286, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !916, line: 18, baseType: !112)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !897, file: !642, line: 416, baseType: !666, size: 32, offset: 576)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !897, file: !642, line: 428, baseType: !666, size: 32, offset: 608)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !897, file: !642, line: 437, baseType: !666, size: 32, offset: 640)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !897, file: !642, line: 447, baseType: !666, size: 32, offset: 672)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !897, file: !642, line: 450, baseType: !690, size: 64, offset: 704)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !897, file: !642, line: 452, baseType: !190, size: 32, offset: 768)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !897, file: !642, line: 454, baseType: !164, offset: 800)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !897, file: !642, line: 457, baseType: !686, size: 256, offset: 832)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !897, file: !642, line: 459, baseType: !151, size: 128, offset: 1088)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !897, file: !642, line: 466, baseType: !112, size: 64, offset: 1216)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !897, file: !642, line: 467, baseType: !112, size: 64, offset: 1280)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !897, file: !642, line: 469, baseType: !112, size: 64, offset: 1344)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !897, file: !642, line: 470, baseType: !112, size: 64, offset: 1408)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !897, file: !642, line: 471, baseType: !692, size: 64, offset: 1472)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !897, file: !642, line: 472, baseType: !112, size: 64, offset: 1536)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !897, file: !642, line: 473, baseType: !112, size: 64, offset: 1600)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !897, file: !642, line: 474, baseType: !112, size: 64, offset: 1664)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !897, file: !642, line: 475, baseType: !112, size: 64, offset: 1728)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !897, file: !642, line: 477, baseType: !164, offset: 1792)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !897, file: !642, line: 478, baseType: !112, size: 64, offset: 1792)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !897, file: !642, line: 478, baseType: !112, size: 64, offset: 1856)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !897, file: !642, line: 478, baseType: !112, size: 64, offset: 1920)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !897, file: !642, line: 478, baseType: !112, size: 64, offset: 1984)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !897, file: !642, line: 479, baseType: !112, size: 64, offset: 2048)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !897, file: !642, line: 479, baseType: !112, size: 64, offset: 2112)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !897, file: !642, line: 479, baseType: !112, size: 64, offset: 2176)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !897, file: !642, line: 480, baseType: !112, size: 64, offset: 2240)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !897, file: !642, line: 480, baseType: !112, size: 64, offset: 2304)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !897, file: !642, line: 480, baseType: !112, size: 64, offset: 2368)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !897, file: !642, line: 480, baseType: !112, size: 64, offset: 2432)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !897, file: !642, line: 482, baseType: !1065, size: 2816, offset: 2496)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 2816, elements: !1066)
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
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1082, file: !1081, line: 37, baseType: !132, size: 16, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1082, file: !1081, line: 40, baseType: !1092, size: 192, offset: 512)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1093, line: 53, size: 192, elements: !1094)
!1093 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1094 = !{!1095, !1096, !1097}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1092, file: !1093, line: 54, baseType: !690, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1092, file: !1093, line: 55, baseType: !164, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1092, file: !1093, line: 59, baseType: !151, size: 128, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1082, file: !1081, line: 41, baseType: !108, size: 64, offset: 704)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1082, file: !1081, line: 42, baseType: !1100, size: 64, offset: 768)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1102)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1103, line: 13, size: 896, elements: !1104)
!1103 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1102, file: !1103, line: 14, baseType: !108, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1102, file: !1103, line: 15, baseType: !112, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1102, file: !1103, line: 17, baseType: !112, size: 64, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1102, file: !1103, line: 17, baseType: !112, size: 64, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1102, file: !1103, line: 19, baseType: !141, size: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1102, file: !1103, line: 21, baseType: !141, size: 64, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1102, file: !1103, line: 22, baseType: !141, size: 64, offset: 384)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1102, file: !1103, line: 23, baseType: !141, size: 64, offset: 448)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1102, file: !1103, line: 24, baseType: !141, size: 64, offset: 512)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1102, file: !1103, line: 25, baseType: !141, size: 64, offset: 576)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1102, file: !1103, line: 26, baseType: !141, size: 64, offset: 640)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1102, file: !1103, line: 27, baseType: !141, size: 64, offset: 704)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1102, file: !1103, line: 28, baseType: !141, size: 64, offset: 768)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1102, file: !1103, line: 29, baseType: !141, size: 64, offset: 832)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1082, file: !1081, line: 44, baseType: !666, size: 32, offset: 832)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1082, file: !1081, line: 50, baseType: !778, size: 16, offset: 864)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1082, file: !1081, line: 51, baseType: !1122, size: 16, offset: 880)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !335, line: 18, baseType: !1123)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !337, line: 23, baseType: !1124)
!1124 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !897, file: !642, line: 495, baseType: !112, size: 64, offset: 6528)
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
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1140, file: !1141, line: 57, baseType: !112, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1140, file: !1141, line: 58, baseType: !334, size: 32, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1136, file: !1137, line: 649, baseType: !1146, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !141)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1136, file: !1137, line: 657, baseType: !108, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1136, file: !1137, line: 658, baseType: !1149, size: 32, offset: 256)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1150, line: 113, baseType: !1151)
!1150 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1150, line: 111, size: 32, elements: !1152)
!1152 = !{!1153}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1151, file: !1150, line: 112, baseType: !666, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1136, file: !1137, line: 660, baseType: !7, size: 32, offset: 288)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1136, file: !1137, line: 661, baseType: !7, size: 32, offset: 320)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1136, file: !1137, line: 684, baseType: !190, size: 32, offset: 352)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1136, file: !1137, line: 686, baseType: !190, size: 32, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1136, file: !1137, line: 687, baseType: !190, size: 32, offset: 416)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1136, file: !1137, line: 688, baseType: !190, size: 32, offset: 448)
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
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1169, file: !1137, line: 326, baseType: !112, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1169, file: !1137, line: 327, baseType: !334, size: 32, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1166, file: !1137, line: 454, baseType: !679, size: 192, align: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1166, file: !1137, line: 455, baseType: !151, size: 128, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1166, file: !1137, line: 456, baseType: !7, size: 32, offset: 448)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1166, file: !1137, line: 458, baseType: !340, size: 64, offset: 512)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1166, file: !1137, line: 459, baseType: !340, size: 64, offset: 576)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1166, file: !1137, line: 460, baseType: !340, size: 64, offset: 640)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1166, file: !1137, line: 461, baseType: !340, size: 64, offset: 704)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1166, file: !1137, line: 463, baseType: !340, size: 64, offset: 768)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1166, file: !1137, line: 465, baseType: !1182, offset: 832)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1137, line: 415, elements: !178)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1136, file: !1137, line: 693, baseType: !1184, size: 384, offset: 1408)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1137, line: 489, size: 384, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1189, !1190, !1191, !1192}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1184, file: !1137, line: 490, baseType: !151, size: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1184, file: !1137, line: 491, baseType: !112, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1184, file: !1137, line: 492, baseType: !112, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1184, file: !1137, line: 493, baseType: !7, size: 32, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1184, file: !1137, line: 494, baseType: !132, size: 16, offset: 288)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1184, file: !1137, line: 495, baseType: !132, size: 16, offset: 304)
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
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !114, line: 27, baseType: !1254)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !139, line: 96, baseType: !190)
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
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1136, file: !1137, line: 722, baseType: !190, size: 32, offset: 3616)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1136, file: !1137, line: 723, baseType: !1282, size: 64, offset: 3648)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1284)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1285, line: 17, baseType: !1286)
!1285 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1285, line: 17, size: 64, elements: !1287)
!1287 = !{!1288}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1286, file: !1285, line: 17, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, elements: !1290)
!1290 = !{!1291}
!1291 = !DISubrange(count: 1)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1136, file: !1137, line: 724, baseType: !1284, size: 64, offset: 3712)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1136, file: !1137, line: 749, baseType: !1294, offset: 3776)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1137, line: 290, elements: !178)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1136, file: !1137, line: 751, baseType: !151, size: 128, offset: 3776)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1136, file: !1137, line: 757, baseType: !893, size: 64, offset: 3904)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1136, file: !1137, line: 758, baseType: !893, size: 64, offset: 3968)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1136, file: !1137, line: 761, baseType: !1299, size: 320, offset: 4032)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1070, line: 34, size: 320, elements: !1300)
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1299, file: !1070, line: 35, baseType: !340, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1299, file: !1070, line: 36, baseType: !1303, size: 256, offset: 64)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !900, size: 256, elements: !1074)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1136, file: !1137, line: 766, baseType: !190, size: 32, offset: 4352)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1136, file: !1137, line: 767, baseType: !190, size: 32, offset: 4384)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1136, file: !1137, line: 768, baseType: !190, size: 32, offset: 4416)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1136, file: !1137, line: 770, baseType: !190, size: 32, offset: 4448)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1136, file: !1137, line: 772, baseType: !112, size: 64, offset: 4480)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1136, file: !1137, line: 775, baseType: !7, size: 32, offset: 4544)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1136, file: !1137, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1136, file: !1137, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1136, file: !1137, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1136, file: !1137, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1136, file: !1137, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1136, file: !1137, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1136, file: !1137, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1136, file: !1137, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1136, file: !1137, line: 831, baseType: !112, size: 64, offset: 4672)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1136, file: !1137, line: 833, baseType: !1320, size: 384, offset: 4736)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1321)
!1321 = !{!1322, !1327}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1320, file: !25, line: 26, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!141, !1326}
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
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !139, line: 93, baseType: !452)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1350, file: !1351, line: 9, baseType: !452, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1346, file: !25, line: 43, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1359, line: 7, size: 64, elements: !1360)
!1359 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1360 = !{!1361, !1365}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1358, file: !1359, line: 8, baseType: !1362, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1359, line: 5, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !335, line: 20, baseType: !1364)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !337, line: 26, baseType: !190)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1358, file: !1359, line: 9, baseType: !1363, size: 32, offset: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1341, file: !25, line: 45, baseType: !340, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1328, file: !25, line: 54, baseType: !1368, size: 256)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1328, file: !25, line: 48, size: 256, elements: !1369)
!1369 = !{!1370, !1373, !1374, !1375, !1376}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1368, file: !25, line: 49, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1368, file: !25, line: 50, baseType: !190, size: 32, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1368, file: !25, line: 51, baseType: !190, size: 32, offset: 96)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1368, file: !25, line: 52, baseType: !112, size: 64, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1368, file: !25, line: 53, baseType: !112, size: 64, offset: 192)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1136, file: !1137, line: 835, baseType: !1378, size: 32, offset: 5120)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !114, line: 22, baseType: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !139, line: 28, baseType: !190)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1136, file: !1137, line: 836, baseType: !1378, size: 32, offset: 5152)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1136, file: !1137, line: 840, baseType: !112, size: 64, offset: 5184)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1136, file: !1137, line: 849, baseType: !1135, size: 64, offset: 5248)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1136, file: !1137, line: 852, baseType: !1135, size: 64, offset: 5312)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1136, file: !1137, line: 857, baseType: !151, size: 128, offset: 5376)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1136, file: !1137, line: 858, baseType: !151, size: 128, offset: 5504)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1136, file: !1137, line: 859, baseType: !1135, size: 64, offset: 5632)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1136, file: !1137, line: 867, baseType: !151, size: 128, offset: 5696)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1136, file: !1137, line: 868, baseType: !151, size: 128, offset: 5824)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1136, file: !1137, line: 871, baseType: !1390, size: 64, offset: 5952)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1392)
!1392 = !{!1393, !1394, !1395, !1396, !1398, !1399, !1406, !1407}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1391, file: !53, line: 61, baseType: !1149, size: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1391, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1391, file: !53, line: 63, baseType: !164, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1391, file: !53, line: 65, baseType: !1397, size: 256, offset: 64)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, size: 256, elements: !1074)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1391, file: !53, line: 66, baseType: !554, size: 64, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1391, file: !53, line: 68, baseType: !1400, size: 128, offset: 384)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1401, line: 40, baseType: !1402)
!1401 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1401, line: 36, size: 128, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1402, file: !1401, line: 37, baseType: !164)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1402, file: !1401, line: 38, baseType: !151, size: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1391, file: !53, line: 69, baseType: !284, size: 128, align: 64, offset: 512)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1391, file: !53, line: 70, baseType: !1408, size: 128, offset: 640)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1409, size: 128, elements: !1290)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1410)
!1410 = !{!1411, !1412}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1409, file: !53, line: 55, baseType: !190, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1409, file: !53, line: 56, baseType: !1413, size: 64, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1136, file: !1137, line: 872, baseType: !1416, size: 512, offset: 6016)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 512, elements: !1074)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1136, file: !1137, line: 873, baseType: !151, size: 128, offset: 6528)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1136, file: !1137, line: 874, baseType: !151, size: 128, offset: 6656)
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
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1426, file: !1427, line: 45, baseType: !151, size: 128)
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
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1136, file: !1137, line: 900, baseType: !112, size: 64, offset: 7296)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1136, file: !1137, line: 901, baseType: !112, size: 64, offset: 7360)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1136, file: !1137, line: 904, baseType: !340, size: 64, offset: 7424)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1136, file: !1137, line: 907, baseType: !340, size: 64, offset: 7488)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1136, file: !1137, line: 910, baseType: !112, size: 64, offset: 7552)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1136, file: !1137, line: 911, baseType: !112, size: 64, offset: 7616)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1136, file: !1137, line: 914, baseType: !1449, size: 640, offset: 7680)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1450, line: 123, size: 640, elements: !1451)
!1450 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1451 = !{!1452, !1458, !1459}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1449, file: !1450, line: 124, baseType: !1453, size: 576)
!1453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1454, size: 576, elements: !207)
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
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !114, line: 98, baseType: !1363)
!1504 = !DIDerivedType(tag: DW_TAG_member, scope: !1497, file: !1498, line: 192, baseType: !1505, size: 192, offset: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1497, file: !1498, line: 192, size: 192, elements: !1506)
!1506 = !{!1507, !1508}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1505, file: !1498, line: 193, baseType: !151, size: 128)
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
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1497, file: !1498, line: 210, baseType: !132, size: 16, offset: 864)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1497, file: !1498, line: 211, baseType: !132, size: 16, offset: 880)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1497, file: !1498, line: 215, baseType: !1124, size: 16, offset: 896)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1497, file: !1498, line: 222, baseType: !112, size: 64, offset: 960)
!1528 = !DIDerivedType(tag: DW_TAG_member, scope: !1497, file: !1498, line: 239, baseType: !1529, size: 320, offset: 1024)
!1529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1497, file: !1498, line: 239, size: 320, elements: !1530)
!1530 = !{!1531, !1558}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1529, file: !1498, line: 240, baseType: !1532, size: 320)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1498, line: 108, size: 320, elements: !1533)
!1533 = !{!1534, !1535, !1547, !1550, !1557}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1532, file: !1498, line: 110, baseType: !112, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, scope: !1532, file: !1498, line: 111, baseType: !1536, size: 64, offset: 64)
!1536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1532, file: !1498, line: 111, size: 64, elements: !1537)
!1537 = !{!1538, !1546}
!1538 = !DIDerivedType(tag: DW_TAG_member, scope: !1536, file: !1498, line: 112, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1536, file: !1498, line: 112, size: 64, elements: !1540)
!1540 = !{!1541, !1542}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1539, file: !1498, line: 114, baseType: !778, size: 16)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1539, file: !1498, line: 115, baseType: !1543, size: 48, offset: 16)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 48, elements: !1544)
!1544 = !{!1545}
!1545 = !DISubrange(count: 6)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1536, file: !1498, line: 121, baseType: !112, size: 64)
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
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1532, file: !1498, line: 125, baseType: !127, size: 64, offset: 256)
!1558 = !DIDerivedType(tag: DW_TAG_member, scope: !1529, file: !1498, line: 241, baseType: !1559, size: 320)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1529, file: !1498, line: 241, size: 320, elements: !1560)
!1560 = !{!1561, !1562, !1563, !1564, !1565}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1559, file: !1498, line: 242, baseType: !112, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1559, file: !1498, line: 243, baseType: !112, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1559, file: !1498, line: 244, baseType: !1548, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1559, file: !1498, line: 245, baseType: !1551, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1559, file: !1498, line: 246, baseType: !206, size: 64, offset: 256)
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
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1576, file: !1498, line: 258, baseType: !151, size: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1576, file: !1498, line: 259, baseType: !1580, size: 128, offset: 128)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1581, line: 22, size: 128, elements: !1582)
!1581 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1582 = !{!1583, !1586}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1580, file: !1581, line: 23, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1581, line: 23, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1580, file: !1581, line: 24, baseType: !112, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1497, file: !1498, line: 274, baseType: !1588, size: 64, offset: 1600)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1498, line: 170, size: 192, elements: !1590)
!1590 = !{!1591, !1600, !1601}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1589, file: !1498, line: 171, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1498, line: 165, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!190, !1496, !1596, !1598, !1496}
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
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1607, file: !1608, line: 27, baseType: !112, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1607, file: !1608, line: 28, baseType: !112, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1607, file: !1608, line: 29, baseType: !690, size: 64, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1607, file: !1608, line: 32, baseType: !558, size: 128, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1607, file: !1608, line: 33, baseType: !354, size: 32, offset: 512)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1607, file: !1608, line: 37, baseType: !690, size: 64, offset: 576)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1607, file: !1608, line: 44, baseType: !1621, size: 256, offset: 640)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1622, line: 15, size: 256, elements: !1623)
!1622 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1623 = !{!1624, !1625, !1626, !1627, !1628, !1629, !1630}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1621, file: !1622, line: 16, baseType: !699)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1621, file: !1622, line: 18, baseType: !190, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1621, file: !1622, line: 19, baseType: !190, size: 32, offset: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1621, file: !1622, line: 20, baseType: !190, size: 32, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1621, file: !1622, line: 21, baseType: !190, size: 32, offset: 96)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1621, file: !1622, line: 22, baseType: !112, size: 64, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1621, file: !1622, line: 23, baseType: !112, size: 64, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1468, file: !1469, line: 146, baseType: !1632, size: 64, offset: 1024)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !355, line: 18, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1468, file: !1469, line: 147, baseType: !1635, size: 64, offset: 1088)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1469, line: 25, size: 64, elements: !1637)
!1637 = !{!1638, !1639, !1640}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1636, file: !1469, line: 26, baseType: !666, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1636, file: !1469, line: 27, baseType: !190, size: 32, offset: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1636, file: !1469, line: 28, baseType: !1641, offset: 64)
!1641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, elements: !1642)
!1642 = !{!1643}
!1643 = !DISubrange(count: 0)
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !1469, line: 149, baseType: !1645, size: 128, offset: 1152)
!1645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1468, file: !1469, line: 149, size: 128, elements: !1646)
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1645, file: !1469, line: 150, baseType: !190, size: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1645, file: !1469, line: 151, baseType: !284, size: 128, align: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1136, file: !1137, line: 926, baseType: !1466, size: 64, offset: 8576)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1136, file: !1137, line: 929, baseType: !1466, size: 64, offset: 8640)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1136, file: !1137, line: 933, baseType: !1496, size: 64, offset: 8704)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1136, file: !1137, line: 943, baseType: !1653, size: 128, offset: 8768)
!1653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 128, elements: !1654)
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
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1674, file: !1675, line: 85, baseType: !190, size: 32, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1674, file: !1675, line: 86, baseType: !151, size: 128, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1674, file: !1675, line: 88, baseType: !1400, size: 128, offset: 256)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1674, file: !1675, line: 91, baseType: !1135, size: 64, offset: 384)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1674, file: !1675, line: 94, baseType: !1684, size: 192, offset: 448)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1685, line: 30, size: 192, elements: !1686)
!1685 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1686 = !{!1687, !1688}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1684, file: !1685, line: 31, baseType: !151, size: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1684, file: !1685, line: 32, baseType: !1689, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1690, line: 25, baseType: !1691)
!1690 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1690, line: 23, size: 64, elements: !1692)
!1692 = !{!1693}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1691, file: !1690, line: 24, baseType: !1289, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1674, file: !1675, line: 97, baseType: !554, size: 64, offset: 640)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1674, file: !1675, line: 100, baseType: !190, size: 32, offset: 704)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1674, file: !1675, line: 106, baseType: !190, size: 32, offset: 736)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1674, file: !1675, line: 107, baseType: !1135, size: 64, offset: 768)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1674, file: !1675, line: 110, baseType: !190, size: 32, offset: 832)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1674, file: !1675, line: 111, baseType: !7, size: 32, offset: 864)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1674, file: !1675, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1674, file: !1675, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1674, file: !1675, line: 128, baseType: !190, size: 32, offset: 928)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1674, file: !1675, line: 129, baseType: !151, size: 128, offset: 960)
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
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1674, file: !1675, line: 162, baseType: !190, size: 32, offset: 3072)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1674, file: !1675, line: 164, baseType: !1727, size: 64, offset: 3136)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1675, line: 164, flags: DIFlagFwdDecl)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1674, file: !1675, line: 175, baseType: !1730, size: 32, offset: 3200)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !307, line: 805, baseType: !1731)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !307, line: 798, size: 32, elements: !1732)
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1731, file: !307, line: 803, baseType: !306, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1731, file: !307, line: 804, baseType: !164, offset: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1674, file: !1675, line: 176, baseType: !340, size: 64, offset: 3264)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1674, file: !1675, line: 176, baseType: !340, size: 64, offset: 3328)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1674, file: !1675, line: 176, baseType: !340, size: 64, offset: 3392)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1674, file: !1675, line: 176, baseType: !340, size: 64, offset: 3456)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1674, file: !1675, line: 177, baseType: !340, size: 64, offset: 3520)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1674, file: !1675, line: 178, baseType: !340, size: 64, offset: 3584)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1674, file: !1675, line: 179, baseType: !1437, size: 128, offset: 3648)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1674, file: !1675, line: 180, baseType: !112, size: 64, offset: 3776)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1674, file: !1675, line: 180, baseType: !112, size: 64, offset: 3840)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1674, file: !1675, line: 180, baseType: !112, size: 64, offset: 3904)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1674, file: !1675, line: 180, baseType: !112, size: 64, offset: 3968)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1674, file: !1675, line: 181, baseType: !112, size: 64, offset: 4032)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1674, file: !1675, line: 181, baseType: !112, size: 64, offset: 4096)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1674, file: !1675, line: 181, baseType: !112, size: 64, offset: 4160)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1674, file: !1675, line: 181, baseType: !112, size: 64, offset: 4224)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1674, file: !1675, line: 182, baseType: !112, size: 64, offset: 4288)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1674, file: !1675, line: 182, baseType: !112, size: 64, offset: 4352)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1674, file: !1675, line: 182, baseType: !112, size: 64, offset: 4416)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1674, file: !1675, line: 182, baseType: !112, size: 64, offset: 4480)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1674, file: !1675, line: 183, baseType: !112, size: 64, offset: 4544)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1674, file: !1675, line: 183, baseType: !112, size: 64, offset: 4608)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1674, file: !1675, line: 184, baseType: !1757, offset: 4672)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1758, line: 12, elements: !178)
!1758 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1674, file: !1675, line: 192, baseType: !342, size: 64, offset: 4672)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1674, file: !1675, line: 203, baseType: !1761, size: 2048, offset: 4736)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1762, size: 2048, elements: !1654)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1763, line: 43, size: 128, elements: !1764)
!1763 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1764 = !{!1765, !1766}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1762, file: !1763, line: 44, baseType: !243, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1762, file: !1763, line: 45, baseType: !243, size: 64, offset: 64)
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
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1775, file: !1675, line: 21, baseType: !164)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1775, file: !1675, line: 22, baseType: !1149, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1775, file: !1675, line: 23, baseType: !1400, size: 128, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1775, file: !1675, line: 24, baseType: !1781, size: 16384, offset: 192)
!1781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1782, size: 16384, elements: !211)
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
!1793 = !{null, !190}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1785, file: !1685, line: 38, baseType: !112, size: 64, offset: 64)
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
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1136, file: !1137, line: 976, baseType: !112, size: 64, offset: 9728)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1136, file: !1137, line: 977, baseType: !241, size: 64, offset: 9792)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1136, file: !1137, line: 978, baseType: !7, size: 32, offset: 9856)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1136, file: !1137, line: 980, baseType: !287, size: 64, offset: 9920)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1136, file: !1137, line: 989, baseType: !1811, size: 128, offset: 9984)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1812, line: 35, size: 128, elements: !1813)
!1812 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1813 = !{!1814, !1815, !1816}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1811, file: !1812, line: 36, baseType: !190, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1811, file: !1812, line: 37, baseType: !666, size: 32, offset: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1811, file: !1812, line: 38, baseType: !1817, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1812, line: 23, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1136, file: !1137, line: 992, baseType: !340, size: 64, offset: 10112)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1136, file: !1137, line: 993, baseType: !340, size: 64, offset: 10176)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1136, file: !1137, line: 996, baseType: !164, offset: 10240)
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
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1848, file: !1849, line: 105, baseType: !164, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1848, file: !1849, line: 107, baseType: !132, size: 16, offset: 128)
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
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1866, file: !1849, line: 84, baseType: !151, size: 128)
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
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1878, file: !1879, line: 104, baseType: !151, size: 128, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1878, file: !1879, line: 105, baseType: !1884, size: 64, offset: 192)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1879, line: 21, baseType: !1885)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null, !1888}
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1136, file: !1137, line: 1061, baseType: !1890, size: 64, offset: 10944)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1137, line: 43, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1136, file: !1137, line: 1064, baseType: !112, size: 64, offset: 11008)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1136, file: !1137, line: 1065, baseType: !1894, size: 64, offset: 11072)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1685, line: 14, baseType: !1896)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1685, line: 12, size: 384, elements: !1897)
!1897 = !{!1898}
!1898 = !DIDerivedType(tag: DW_TAG_member, scope: !1896, file: !1685, line: 13, baseType: !1899, size: 384)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1685, line: 13, size: 384, elements: !1900)
!1900 = !{!1901, !1902, !1903, !1904}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1899, file: !1685, line: 13, baseType: !190, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1899, file: !1685, line: 13, baseType: !190, size: 32, offset: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1899, file: !1685, line: 13, baseType: !190, size: 32, offset: 64)
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
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !139, line: 95, baseType: !190)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1914, file: !1906, line: 42, baseType: !190, size: 32, offset: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1914, file: !1906, line: 43, baseType: !1920, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1906, line: 11, baseType: !1921)
!1921 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1906, line: 8, size: 64, elements: !1922)
!1922 = !{!1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1921, file: !1906, line: 9, baseType: !190, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1921, file: !1906, line: 10, baseType: !108, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1914, file: !1906, line: 44, baseType: !190, size: 32, offset: 128)
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
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1933, file: !1906, line: 58, baseType: !190, size: 32, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1933, file: !1906, line: 59, baseType: !1939, size: 64, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !139, line: 94, baseType: !140)
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
!1953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 64, elements: !1249)
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
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1962, file: !1906, line: 99, baseType: !141, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1962, file: !1906, line: 100, baseType: !190, size: 32, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1905, file: !1906, line: 108, baseType: !1967, size: 128)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !1906, line: 104, size: 128, elements: !1968)
!1968 = !{!1969, !1970, !1971}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1967, file: !1906, line: 105, baseType: !108, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1967, file: !1906, line: 106, baseType: !190, size: 32, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1967, file: !1906, line: 107, baseType: !7, size: 32, offset: 96)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1136, file: !1137, line: 1067, baseType: !1757, offset: 11136)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1136, file: !1137, line: 1099, baseType: !1974, size: 64, offset: 11136)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1137, line: 56, flags: DIFlagFwdDecl)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1136, file: !1137, line: 1103, baseType: !151, size: 128, offset: 11200)
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
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1136, file: !1137, line: 1111, baseType: !151, size: 128, offset: 11968)
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
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1136, file: !1137, line: 1179, baseType: !112, size: 64, offset: 12224)
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
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1136, file: !1137, line: 1206, baseType: !190, size: 32, offset: 12736)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1136, file: !1137, line: 1207, baseType: !190, size: 32, offset: 12768)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1136, file: !1137, line: 1209, baseType: !112, size: 64, offset: 12800)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1136, file: !1137, line: 1219, baseType: !340, size: 64, offset: 12864)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1136, file: !1137, line: 1220, baseType: !340, size: 64, offset: 12928)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1136, file: !1137, line: 1317, baseType: !190, size: 32, offset: 12992)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1136, file: !1137, line: 1319, baseType: !1135, size: 64, offset: 13056)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1136, file: !1137, line: 1322, baseType: !2035, size: 64, offset: 13120)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2037, line: 56, size: 512, elements: !2038)
!2037 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2038 = !{!2039, !2040, !2041, !2042, !2043, !2044, !2045, !2047}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2036, file: !2037, line: 57, baseType: !2035, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2036, file: !2037, line: 58, baseType: !108, size: 64, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2036, file: !2037, line: 59, baseType: !112, size: 64, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2036, file: !2037, line: 60, baseType: !112, size: 64, offset: 192)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2036, file: !2037, line: 61, baseType: !739, size: 64, offset: 256)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2036, file: !2037, line: 62, baseType: !7, size: 32, offset: 320)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2036, file: !2037, line: 63, baseType: !2046, size: 64, offset: 384)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !114, line: 153, baseType: !340)
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
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2064, size: 192, elements: !207)
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
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2059, file: !2060, line: 491, baseType: !112, size: 64, offset: 192)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2059, file: !2060, line: 495, baseType: !132, size: 16, offset: 256)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2059, file: !2060, line: 496, baseType: !132, size: 16, offset: 272)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2059, file: !2060, line: 497, baseType: !132, size: 16, offset: 288)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2059, file: !2060, line: 498, baseType: !132, size: 16, offset: 304)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2059, file: !2060, line: 502, baseType: !112, size: 64, offset: 320)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2059, file: !2060, line: 503, baseType: !112, size: 64, offset: 384)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2059, file: !2060, line: 514, baseType: !2088, size: 256, offset: 448)
!2088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2089, size: 256, elements: !1074)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2060, line: 483, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2059, file: !2060, line: 516, baseType: !112, size: 64, offset: 704)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2059, file: !2060, line: 518, baseType: !112, size: 64, offset: 768)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2059, file: !2060, line: 520, baseType: !112, size: 64, offset: 832)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2059, file: !2060, line: 521, baseType: !112, size: 64, offset: 896)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2059, file: !2060, line: 522, baseType: !112, size: 64, offset: 960)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2059, file: !2060, line: 528, baseType: !2097, size: 64, offset: 1024)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2060, line: 10, flags: DIFlagFwdDecl)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2059, file: !2060, line: 535, baseType: !112, size: 64, offset: 1088)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2059, file: !2060, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2059, file: !2060, line: 540, baseType: !2102, size: 33280, offset: 1536)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2103, line: 317, size: 33280, elements: !2104)
!2103 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2104 = !{!2105, !2106, !2107}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2102, file: !2103, line: 330, baseType: !7, size: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2102, file: !2103, line: 337, baseType: !112, size: 64, offset: 64)
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
!2154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 2048, elements: !211)
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
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2183, file: !2184, line: 12, baseType: !141, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2183, file: !2184, line: 13, baseType: !2188, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2190, line: 56, size: 1344, elements: !2191)
!2190 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2191 = !{!2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2189, file: !2190, line: 61, baseType: !112, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2189, file: !2190, line: 62, baseType: !112, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2189, file: !2190, line: 63, baseType: !112, size: 64, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2189, file: !2190, line: 64, baseType: !112, size: 64, offset: 192)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2189, file: !2190, line: 65, baseType: !112, size: 64, offset: 256)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2189, file: !2190, line: 66, baseType: !112, size: 64, offset: 320)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2189, file: !2190, line: 68, baseType: !112, size: 64, offset: 384)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2189, file: !2190, line: 69, baseType: !112, size: 64, offset: 448)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2189, file: !2190, line: 70, baseType: !112, size: 64, offset: 512)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2189, file: !2190, line: 71, baseType: !112, size: 64, offset: 576)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2189, file: !2190, line: 72, baseType: !112, size: 64, offset: 640)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2189, file: !2190, line: 73, baseType: !112, size: 64, offset: 704)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2189, file: !2190, line: 74, baseType: !112, size: 64, offset: 768)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2189, file: !2190, line: 75, baseType: !112, size: 64, offset: 832)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2189, file: !2190, line: 76, baseType: !112, size: 64, offset: 896)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2189, file: !2190, line: 81, baseType: !112, size: 64, offset: 960)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2189, file: !2190, line: 83, baseType: !112, size: 64, offset: 1024)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2189, file: !2190, line: 84, baseType: !112, size: 64, offset: 1088)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2189, file: !2190, line: 85, baseType: !112, size: 64, offset: 1152)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2189, file: !2190, line: 86, baseType: !112, size: 64, offset: 1216)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2189, file: !2190, line: 87, baseType: !112, size: 64, offset: 1280)
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
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !897, file: !642, line: 500, baseType: !164, offset: 6656)
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
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2247, line: 142, elements: !178)
!2247 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !897, file: !642, line: 554, baseType: !1878, size: 256, offset: 6976)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !897, file: !642, line: 557, baseType: !334, size: 32, offset: 7232)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !894, file: !642, line: 565, baseType: !2251, offset: 7296)
!2251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, elements: !2252)
!2252 = !{!2253}
!2253 = !DISubrange(count: -1)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !890, file: !642, line: 151, baseType: !666, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !883, file: !642, line: 156, baseType: !164, offset: 256)
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
!2267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2264, file: !31, line: 21, baseType: !2267, size: 64, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2264, file: !31, line: 22, baseType: !2267, size: 64, offset: 128)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2264, file: !31, line: 23, baseType: !112, size: 64, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2264, file: !31, line: 24, baseType: !112, size: 64, offset: 256)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2264, file: !31, line: 25, baseType: !112, size: 64, offset: 320)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2261, file: !31, line: 112, baseType: !2274, size: 64, offset: 384)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2276, line: 105, size: 128, elements: !2277)
!2276 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2277 = !{!2278, !2279}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2275, file: !2276, line: 110, baseType: !112, size: 64)
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
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2261, file: !31, line: 119, baseType: !190, size: 32, offset: 960)
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
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2326, file: !642, line: 195, baseType: !190, size: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !641, file: !642, line: 199, baseType: !666, size: 32, offset: 416)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !576, file: !44, line: 1964, baseType: !2334, size: 64, offset: 1344)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!141, !518, !2337}
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2339, line: 12, size: 256, elements: !2340)
!2339 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2340 = !{!2341, !2342, !2343, !2344, !2345}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2338, file: !2339, line: 13, baseType: !113, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2338, file: !2339, line: 16, baseType: !190, size: 32, offset: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2338, file: !2339, line: 23, baseType: !112, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2338, file: !2339, line: 30, baseType: !112, size: 64, offset: 128)
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
!2357 = !{!190, !2358}
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2360)
!2360 = !{!2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2385, !2386, !2387}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2359, file: !38, line: 295, baseType: !558, size: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2359, file: !38, line: 296, baseType: !151, size: 128, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2359, file: !38, line: 297, baseType: !151, size: 128, offset: 256)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2359, file: !38, line: 298, baseType: !151, size: 128, offset: 384)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2359, file: !38, line: 299, baseType: !1092, size: 192, offset: 512)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2359, file: !38, line: 300, baseType: !164, offset: 704)
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
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2359, file: !38, line: 305, baseType: !112, size: 64, offset: 960)
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
!2403 = !{!2358, !518, !190}
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
!2420 = !{!190, !348, !2421}
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2352, file: !38, line: 335, baseType: !2423, size: 64, offset: 576)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!190, !348, !2416}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2352, file: !38, line: 337, baseType: !2427, size: 64, offset: 640)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!190, !518, !2430}
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !519, file: !44, line: 1425, baseType: !2432, size: 64, offset: 512)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2434)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2435)
!2435 = !{!2436, !2440, !2441, !2445, !2446, !2447, !2462, !2485, !2489, !2490, !2513}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2434, file: !38, line: 429, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!190, !518, !190, !190, !468}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2434, file: !38, line: 430, baseType: !604, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2434, file: !38, line: 431, baseType: !2442, size: 64, offset: 128)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!190, !518, !7}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2434, file: !38, line: 432, baseType: !2442, size: 64, offset: 192)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2434, file: !38, line: 433, baseType: !604, size: 64, offset: 256)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2434, file: !38, line: 434, baseType: !2448, size: 64, offset: 320)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!190, !518, !190, !2451}
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2453)
!2453 = !{!2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2452, file: !38, line: 416, baseType: !190, size: 32)
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
!2465 = !{!190, !518, !2370, !2466}
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2468)
!2468 = !{!2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2467, file: !38, line: 344, baseType: !190, size: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2467, file: !38, line: 345, baseType: !340, size: 64, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2467, file: !38, line: 346, baseType: !340, size: 64, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2467, file: !38, line: 347, baseType: !340, size: 64, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2467, file: !38, line: 348, baseType: !340, size: 64, offset: 256)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2467, file: !38, line: 349, baseType: !340, size: 64, offset: 320)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2467, file: !38, line: 350, baseType: !340, size: 64, offset: 384)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2467, file: !38, line: 351, baseType: !696, size: 64, offset: 448)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2467, file: !38, line: 353, baseType: !696, size: 64, offset: 512)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2467, file: !38, line: 354, baseType: !190, size: 32, offset: 576)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2467, file: !38, line: 355, baseType: !190, size: 32, offset: 608)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2467, file: !38, line: 356, baseType: !340, size: 64, offset: 640)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2467, file: !38, line: 357, baseType: !340, size: 64, offset: 704)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2467, file: !38, line: 358, baseType: !340, size: 64, offset: 768)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2467, file: !38, line: 359, baseType: !696, size: 64, offset: 832)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2467, file: !38, line: 360, baseType: !190, size: 32, offset: 896)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2434, file: !38, line: 436, baseType: !2486, size: 64, offset: 448)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!190, !518, !2430, !2466}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2434, file: !38, line: 438, baseType: !2463, size: 64, offset: 512)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2434, file: !38, line: 439, baseType: !2491, size: 64, offset: 576)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!190, !518, !2494}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2496)
!2496 = !{!2497, !2498}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2495, file: !38, line: 410, baseType: !7, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2495, file: !38, line: 411, baseType: !2499, size: 1344, offset: 64)
!2499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2500, size: 1344, elements: !207)
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
!2511 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !114, line: 126, baseType: !340)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2500, file: !38, line: 406, baseType: !2511, size: 64, offset: 384)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2434, file: !38, line: 440, baseType: !2442, size: 64, offset: 640)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !519, file: !44, line: 1426, baseType: !2515, size: 64, offset: 576)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2517)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !519, file: !44, line: 1427, baseType: !112, size: 64, offset: 640)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !519, file: !44, line: 1428, baseType: !112, size: 64, offset: 704)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !519, file: !44, line: 1429, baseType: !112, size: 64, offset: 768)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !519, file: !44, line: 1430, baseType: !301, size: 64, offset: 832)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !519, file: !44, line: 1431, baseType: !686, size: 256, offset: 896)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !519, file: !44, line: 1432, baseType: !190, size: 32, offset: 1152)
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
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !519, file: !44, line: 1450, baseType: !151, size: 128, offset: 1344)
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
!2550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 192, elements: !207)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2545, file: !38, line: 522, baseType: !2552, size: 1728, offset: 512)
!2552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2553, size: 1728, elements: !207)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2554)
!2554 = !{!2555, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2553, file: !38, line: 223, baseType: !2556, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2558)
!2558 = !{!2559, !2560, !2573, !2574}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2557, file: !38, line: 444, baseType: !190, size: 32)
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
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2553, file: !38, line: 224, baseType: !190, size: 32, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2553, file: !38, line: 226, baseType: !151, size: 128, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2553, file: !38, line: 227, baseType: !112, size: 64, offset: 256)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2553, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2553, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2553, file: !38, line: 230, baseType: !2391, size: 64, offset: 384)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2553, file: !38, line: 231, baseType: !2391, size: 64, offset: 448)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2553, file: !38, line: 232, baseType: !108, size: 64, offset: 512)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2545, file: !38, line: 523, baseType: !2584, size: 192, offset: 2240)
!2584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2561, size: 192, elements: !207)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !519, file: !44, line: 1458, baseType: !2586, size: 2112, offset: 4288)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2587)
!2587 = !{!2588, !2589, !2590}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2586, file: !44, line: 1411, baseType: !190, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2586, file: !44, line: 1412, baseType: !1400, size: 128, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2586, file: !44, line: 1413, baseType: !2591, size: 1920, offset: 192)
!2591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2592, size: 1920, elements: !207)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2593, line: 12, size: 640, elements: !2594)
!2593 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2594 = !{!2595, !2603, !2605, !2610, !2611}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2592, file: !2593, line: 13, baseType: !2596, size: 320)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2597, line: 17, size: 320, elements: !2598)
!2597 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2598 = !{!2599, !2600, !2601, !2602}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2596, file: !2597, line: 18, baseType: !190, size: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2596, file: !2597, line: 19, baseType: !190, size: 32, offset: 32)
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
!2621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 256, elements: !2151)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !519, file: !44, line: 1478, baseType: !2623, size: 128, offset: 7040)
!2623 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2624, line: 18, baseType: !2625)
!2624 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2624, line: 16, size: 128, elements: !2626)
!2626 = !{!2627}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2625, file: !2624, line: 17, baseType: !2628, size: 128)
!2628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1272, size: 128, elements: !1654)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !519, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !519, file: !44, line: 1481, baseType: !2631, size: 32, offset: 7200)
!2631 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !114, line: 150, baseType: !7)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !519, file: !44, line: 1487, baseType: !1092, size: 192, offset: 7232)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !519, file: !44, line: 1493, baseType: !127, size: 64, offset: 7424)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !519, file: !44, line: 1495, baseType: !2635, size: 64, offset: 7488)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2637)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !299, line: 135, size: 1024, align: 512, elements: !2638)
!2638 = !{!2639, !2643, !2644, !2651, !2657, !2661, !2665, !2669, !2670, !2674, !2678, !2683, !2687}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2637, file: !299, line: 136, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!190, !301, !7}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2637, file: !299, line: 137, baseType: !2640, size: 64, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2637, file: !299, line: 138, baseType: !2645, size: 64, offset: 128)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!190, !2648, !2650}
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2637, file: !299, line: 139, baseType: !2652, size: 64, offset: 192)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!190, !2648, !7, !127, !2655}
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2637, file: !299, line: 141, baseType: !2658, size: 64, offset: 256)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!190, !2648}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2637, file: !299, line: 142, baseType: !2662, size: 64, offset: 320)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!190, !301}
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
!2677 = !{!206, !301, !206, !190}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2637, file: !299, line: 147, baseType: !2679, size: 64, offset: 640)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!297, !2682}
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2637, file: !299, line: 148, baseType: !2684, size: 64, offset: 704)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!190, !468, !409}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2637, file: !299, line: 149, baseType: !2688, size: 64, offset: 768)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!301, !301, !2691}
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !519, file: !44, line: 1500, baseType: !190, size: 32, offset: 7552)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !519, file: !44, line: 1502, baseType: !2695, size: 448, offset: 7616)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2339, line: 60, size: 448, elements: !2696)
!2696 = !{!2697, !2702, !2703, !2704, !2705, !2706, !2707}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2695, file: !2339, line: 61, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!112, !2701, !2337}
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2695, file: !2339, line: 63, baseType: !2698, size: 64, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2695, file: !2339, line: 66, baseType: !141, size: 64, offset: 128)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2695, file: !2339, line: 67, baseType: !190, size: 32, offset: 192)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2695, file: !2339, line: 68, baseType: !7, size: 32, offset: 224)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2695, file: !2339, line: 71, baseType: !151, size: 128, offset: 256)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2695, file: !2339, line: 77, baseType: !2708, size: 64, offset: 384)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !519, file: !44, line: 1505, baseType: !690, size: 64, offset: 8064)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !519, file: !44, line: 1508, baseType: !690, size: 64, offset: 8128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !519, file: !44, line: 1511, baseType: !190, size: 32, offset: 8192)
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
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2724, file: !2720, line: 42, baseType: !164)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2724, file: !2720, line: 44, baseType: !2728, size: 192)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2720, line: 28, size: 192, elements: !2729)
!2729 = !{!2730, !2731}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2728, file: !2720, line: 29, baseType: !151, size: 128)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2728, file: !2720, line: 31, baseType: !141, size: 64, offset: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2724, file: !2720, line: 49, baseType: !141, size: 64, offset: 192)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !519, file: !44, line: 1533, baseType: !2719, size: 64, offset: 8512)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !519, file: !44, line: 1534, baseType: !284, size: 128, align: 64, offset: 8576)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !519, file: !44, line: 1535, baseType: !1878, size: 256, offset: 8704)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !519, file: !44, line: 1537, baseType: !1092, size: 192, offset: 8960)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !519, file: !44, line: 1542, baseType: !190, size: 32, offset: 9152)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !519, file: !44, line: 1545, baseType: !164, offset: 9184)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !519, file: !44, line: 1546, baseType: !151, size: 128, offset: 9216)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !519, file: !44, line: 1548, baseType: !164, offset: 9344)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !519, file: !44, line: 1549, baseType: !151, size: 128, offset: 9344)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !349, file: !44, line: 624, baseType: !653, size: 64, offset: 256)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !349, file: !44, line: 631, baseType: !112, size: 64, offset: 320)
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
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !349, file: !44, line: 648, baseType: !164, offset: 896)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !349, file: !44, line: 649, baseType: !132, size: 16, offset: 896)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !349, file: !44, line: 650, baseType: !1271, size: 8, offset: 912)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !349, file: !44, line: 651, baseType: !1271, size: 8, offset: 920)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !349, file: !44, line: 652, baseType: !2511, size: 64, offset: 960)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !349, file: !44, line: 659, baseType: !112, size: 64, offset: 1024)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !349, file: !44, line: 660, baseType: !686, size: 256, offset: 1088)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !349, file: !44, line: 662, baseType: !112, size: 64, offset: 1344)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !349, file: !44, line: 663, baseType: !112, size: 64, offset: 1408)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !349, file: !44, line: 665, baseType: !558, size: 128, offset: 1472)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !349, file: !44, line: 666, baseType: !151, size: 128, offset: 1600)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !349, file: !44, line: 675, baseType: !151, size: 128, offset: 1728)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !349, file: !44, line: 676, baseType: !151, size: 128, offset: 1856)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !349, file: !44, line: 677, baseType: !151, size: 128, offset: 1984)
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
!2792 = !{!450, !271, !450, !190}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2786, file: !44, line: 1825, baseType: !2794, size: 64, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!137, !271, !206, !241, !2797}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2786, file: !44, line: 1826, baseType: !2799, size: 64, offset: 192)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!137, !271, !127, !241, !2797}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2786, file: !44, line: 1827, baseType: !763, size: 64, offset: 256)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2786, file: !44, line: 1828, baseType: !763, size: 64, offset: 320)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2786, file: !44, line: 1829, baseType: !2805, size: 64, offset: 384)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!190, !766, !409}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2786, file: !44, line: 1830, baseType: !2809, size: 64, offset: 448)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!190, !271, !2812}
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2814)
!2814 = !{!2815, !2820}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2813, file: !44, line: 1777, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2817)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!190, !2812, !127, !190, !450, !340, !7}
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
!2833 = !{!141, !271, !7, !112}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2786, file: !44, line: 1834, baseType: !2831, size: 64, offset: 704)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2786, file: !44, line: 1835, baseType: !2836, size: 64, offset: 768)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!190, !271, !900}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2786, file: !44, line: 1836, baseType: !112, size: 64, offset: 832)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2786, file: !44, line: 1837, baseType: !2841, size: 64, offset: 896)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!190, !348, !271}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2786, file: !44, line: 1838, baseType: !2845, size: 64, offset: 960)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!190, !271, !2848}
!2848 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !108)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2786, file: !44, line: 1839, baseType: !2841, size: 64, offset: 1024)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2786, file: !44, line: 1840, baseType: !2851, size: 64, offset: 1088)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!190, !271, !450, !450, !190}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2786, file: !44, line: 1841, baseType: !2855, size: 64, offset: 1152)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!190, !190, !271, !190}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2786, file: !44, line: 1842, baseType: !2859, size: 64, offset: 1216)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!190, !271, !190, !2862}
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2864)
!2864 = !{!2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2896, !2897, !2898, !2911, !2942}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2863, file: !44, line: 1063, baseType: !2862, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2863, file: !44, line: 1064, baseType: !151, size: 128, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2863, file: !44, line: 1065, baseType: !558, size: 128, offset: 192)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2863, file: !44, line: 1066, baseType: !151, size: 128, offset: 320)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2863, file: !44, line: 1069, baseType: !151, size: 128, offset: 448)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2863, file: !44, line: 1072, baseType: !2848, size: 64, offset: 576)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2863, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2863, file: !44, line: 1074, baseType: !346, size: 8, offset: 672)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2863, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2863, file: !44, line: 1076, baseType: !190, size: 32, offset: 736)
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
!2889 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !176, line: 33, baseType: !2890)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 31, elements: !178)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2881, file: !44, line: 1316, baseType: !190, size: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2881, file: !44, line: 1317, baseType: !190, size: 32, offset: 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2881, file: !44, line: 1318, baseType: !2880, size: 64, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2881, file: !44, line: 1319, baseType: !271, size: 64, offset: 128)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2881, file: !44, line: 1320, baseType: !284, size: 128, align: 64, offset: 192)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2863, file: !44, line: 1084, baseType: !112, size: 64, offset: 1152)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2863, file: !44, line: 1085, baseType: !112, size: 64, offset: 1216)
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
!2928 = !{!190, !2862, !190}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2914, file: !44, line: 1021, baseType: !2930, size: 64, offset: 256)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!409, !2862}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2914, file: !44, line: 1022, baseType: !2934, size: 64, offset: 320)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!190, !2862, !190, !154}
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
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2946, file: !2947, line: 13, baseType: !151, size: 128, offset: 128)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2943, file: !44, line: 1091, baseType: !2955, size: 64)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2947, line: 17, size: 64, elements: !2956)
!2956 = !{!2957}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2955, file: !2947, line: 18, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2947, line: 16, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2943, file: !44, line: 1096, baseType: !2961, size: 192)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2943, file: !44, line: 1092, size: 192, elements: !2962)
!2962 = !{!2963, !2964, !2965}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2961, file: !44, line: 1093, baseType: !151, size: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2961, file: !44, line: 1094, baseType: !190, size: 32, offset: 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2961, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2786, file: !44, line: 1843, baseType: !2967, size: 64, offset: 1280)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!137, !271, !640, !190, !241, !2797, !190}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2786, file: !44, line: 1844, baseType: !1020, size: 64, offset: 1344)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2786, file: !44, line: 1845, baseType: !2972, size: 64, offset: 1408)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!190, !190}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2786, file: !44, line: 1846, baseType: !2859, size: 64, offset: 1472)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2786, file: !44, line: 1847, baseType: !2977, size: 64, offset: 1536)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!137, !2019, !271, !2797, !241, !7}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2786, file: !44, line: 1848, baseType: !2981, size: 64, offset: 1600)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!137, !271, !2797, !2019, !241, !7}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2786, file: !44, line: 1849, baseType: !2985, size: 64, offset: 1664)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!190, !271, !141, !2988, !740}
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2786, file: !44, line: 1850, baseType: !2990, size: 64, offset: 1728)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!141, !271, !190, !450, !450}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2786, file: !44, line: 1852, baseType: !2994, size: 64, offset: 1792)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{null, !630, !271}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2786, file: !44, line: 1856, baseType: !2998, size: 64, offset: 1856)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!137, !271, !450, !271, !450, !241, !7}
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
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3009, file: !44, line: 1101, baseType: !164)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3009, file: !44, line: 1102, baseType: !151, size: 128)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3009, file: !44, line: 1103, baseType: !151, size: 128, offset: 128)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3009, file: !44, line: 1104, baseType: !151, size: 128, offset: 256)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !349, file: !44, line: 695, baseType: !654, size: 1216, align: 64, offset: 2624)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !349, file: !44, line: 696, baseType: !151, size: 128, offset: 3840)
!3017 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !44, line: 697, baseType: !3018, size: 64, offset: 3968)
!3018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !349, file: !44, line: 697, size: 64, elements: !3019)
!3019 = !{!3020, !3021, !3022, !3025, !3026}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3018, file: !44, line: 698, baseType: !2019, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3018, file: !44, line: 699, baseType: !2536, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3018, file: !44, line: 700, baseType: !3023, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3018, file: !44, line: 701, baseType: !206, size: 64)
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
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3041, file: !3035, line: 31, baseType: !164)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3041, file: !3035, line: 32, baseType: !190, size: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !302, file: !299, line: 102, baseType: !2635, size: 64, offset: 768)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !302, file: !299, line: 103, baseType: !518, size: 64, offset: 832)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !302, file: !299, line: 104, baseType: !112, size: 64, offset: 896)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !302, file: !299, line: 105, baseType: !108, size: 64, offset: 960)
!3049 = !DIDerivedType(tag: DW_TAG_member, scope: !302, file: !299, line: 107, baseType: !3050, size: 128, offset: 1024)
!3050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !302, file: !299, line: 107, size: 128, elements: !3051)
!3051 = !{!3052, !3053}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3050, file: !299, line: 108, baseType: !151, size: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3050, file: !299, line: 109, baseType: !3054, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !302, file: !299, line: 111, baseType: !151, size: 128, offset: 1152)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !302, file: !299, line: 112, baseType: !151, size: 128, offset: 1280)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !302, file: !299, line: 120, baseType: !3058, size: 128, offset: 1408)
!3058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !302, file: !299, line: 116, size: 128, elements: !3059)
!3059 = !{!3060, !3061, !3062}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3058, file: !299, line: 117, baseType: !558, size: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3058, file: !299, line: 118, baseType: !316, size: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3058, file: !299, line: 119, baseType: !284, size: 128, align: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !272, file: !44, line: 922, baseType: !348, size: 64, offset: 256)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !272, file: !44, line: 923, baseType: !2784, size: 64, offset: 320)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !272, file: !44, line: 929, baseType: !164, offset: 384)
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
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3073, file: !44, line: 890, baseType: !190, size: 32, offset: 160)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !272, file: !44, line: 937, baseType: !1466, size: 64, offset: 1024)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !272, file: !44, line: 938, baseType: !3083, size: 256, offset: 1088)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3088, !3089, !3090}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3083, file: !44, line: 897, baseType: !112, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3083, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3083, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3083, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3083, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3083, file: !44, line: 904, baseType: !450, size: 64, offset: 192)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !272, file: !44, line: 940, baseType: !340, size: 64, offset: 1344)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !272, file: !44, line: 945, baseType: !108, size: 64, offset: 1408)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !272, file: !44, line: 949, baseType: !151, size: 128, offset: 1472)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !272, file: !44, line: 950, baseType: !151, size: 128, offset: 1600)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !272, file: !44, line: 952, baseType: !653, size: 64, offset: 1728)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !272, file: !44, line: 953, baseType: !828, size: 32, offset: 1792)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !272, file: !44, line: 954, baseType: !828, size: 32, offset: 1824)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !262, file: !124, line: 174, baseType: !268, size: 64, offset: 320)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !262, file: !124, line: 176, baseType: !3100, size: 64, offset: 384)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!190, !271, !157, !261, !900}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !250, file: !124, line: 90, baseType: !245, size: 64, offset: 192)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !250, file: !124, line: 91, baseType: !3105, size: 64, offset: 256)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !221, file: !147, line: 143, baseType: !3107, size: 64, offset: 256)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!3110, !157}
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
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !221, file: !147, line: 144, baseType: !3135, size: 64, offset: 320)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!2048, !157}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !221, file: !147, line: 145, baseType: !3139, size: 64, offset: 384)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{null, !157, !3142, !3143}
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !146, file: !147, line: 70, baseType: !3145, size: 64, offset: 384)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !538, line: 123, size: 1024, elements: !3147)
!3147 = !{!3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3276, !3277, !3278, !3279, !3280}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3146, file: !538, line: 124, baseType: !666, size: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3146, file: !538, line: 125, baseType: !666, size: 32, offset: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3146, file: !538, line: 135, baseType: !3145, size: 64, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3146, file: !538, line: 136, baseType: !127, size: 64, offset: 128)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3146, file: !538, line: 138, baseType: !679, size: 192, align: 64, offset: 192)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3146, file: !538, line: 140, baseType: !2048, size: 64, offset: 384)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3146, file: !538, line: 141, baseType: !7, size: 32, offset: 448)
!3155 = !DIDerivedType(tag: DW_TAG_member, scope: !3146, file: !538, line: 142, baseType: !3156, size: 256, offset: 512)
!3156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3146, file: !538, line: 142, size: 256, elements: !3157)
!3157 = !{!3158, !3204, !3208}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3156, file: !538, line: 143, baseType: !3159, size: 192)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !538, line: 91, size: 192, elements: !3160)
!3160 = !{!3161, !3162, !3163}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3159, file: !538, line: 92, baseType: !112, size: 64)
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
!3185 = !{!190, !630, !3164}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3180, file: !538, line: 171, baseType: !3187, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!190, !3145, !127, !131}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3180, file: !538, line: 173, baseType: !3191, size: 64, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!190, !3145}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3180, file: !538, line: 174, baseType: !3195, size: 64, offset: 192)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!190, !3145, !3145, !127}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3180, file: !538, line: 176, baseType: !3199, size: 64, offset: 256)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!190, !630, !3145, !3164}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3165, file: !538, line: 192, baseType: !151, size: 128, offset: 448)
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
!3219 = !{!190, !3220}
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !538, line: 197, size: 1088, elements: !3222)
!3222 = !{!3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3221, file: !538, line: 199, baseType: !3145, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3221, file: !538, line: 200, baseType: !271, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3221, file: !538, line: 201, baseType: !630, size: 64, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3221, file: !538, line: 202, baseType: !108, size: 64, offset: 192)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3221, file: !538, line: 205, baseType: !1092, size: 192, offset: 256)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3221, file: !538, line: 206, baseType: !1092, size: 192, offset: 448)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3221, file: !538, line: 207, baseType: !190, size: 32, offset: 640)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3221, file: !538, line: 208, baseType: !151, size: 128, offset: 704)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3221, file: !538, line: 209, baseType: !206, size: 64, offset: 832)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3221, file: !538, line: 211, baseType: !241, size: 64, offset: 896)
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
!3243 = !{!190, !630, !108}
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
!3259 = !{!137, !3220, !206, !241, !450}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3214, file: !538, line: 252, baseType: !241, size: 64, offset: 448)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3214, file: !538, line: 259, baseType: !409, size: 8, offset: 512)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3214, file: !538, line: 260, baseType: !3257, size: 64, offset: 576)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3214, file: !538, line: 263, baseType: !3264, size: 64, offset: 640)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!2826, !3220, !2828}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3214, file: !538, line: 266, baseType: !3268, size: 64, offset: 704)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!190, !3220, !900}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3209, file: !538, line: 109, baseType: !3272, size: 64, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !538, line: 31, flags: DIFlagFwdDecl)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3209, file: !538, line: 110, baseType: !450, size: 64, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3209, file: !538, line: 111, baseType: !3145, size: 64, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3146, file: !538, line: 148, baseType: !108, size: 64, offset: 768)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3146, file: !538, line: 154, baseType: !340, size: 64, offset: 832)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3146, file: !538, line: 156, baseType: !132, size: 16, offset: 896)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3146, file: !538, line: 157, baseType: !131, size: 16, offset: 912)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3146, file: !538, line: 158, baseType: !3281, size: 64, offset: 960)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !538, line: 32, flags: DIFlagFwdDecl)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !146, file: !147, line: 71, baseType: !3284, size: 32, offset: 448)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3285, line: 19, size: 32, elements: !3286)
!3285 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3286 = !{!3287}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3284, file: !3285, line: 20, baseType: !1149, size: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !146, file: !147, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !146, file: !147, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !146, file: !147, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !146, file: !147, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !146, file: !147, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !143, file: !73, line: 463, baseType: !142, size: 64, offset: 512)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !143, file: !73, line: 465, baseType: !3295, size: 64, offset: 576)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !143, file: !73, line: 467, baseType: !127, size: 64, offset: 640)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !73, line: 468, baseType: !3299, size: 64, offset: 704)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3301)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3302)
!3302 = !{!3303, !3304, !3305, !3309, !3314, !3318}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3301, file: !73, line: 88, baseType: !127, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3301, file: !73, line: 89, baseType: !247, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3301, file: !73, line: 90, baseType: !3306, size: 64, offset: 128)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!190, !142, !201}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3301, file: !73, line: 91, baseType: !3310, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!206, !142, !3313, !3142, !3143}
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3301, file: !73, line: 93, baseType: !3315, size: 64, offset: 256)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{null, !142}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3301, file: !73, line: 95, baseType: !3319, size: 64, offset: 320)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3321)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3322)
!3322 = !{!3323, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3321, file: !80, line: 279, baseType: !3324, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!190, !142}
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
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !143, file: !73, line: 470, baseType: !3350, size: 64, offset: 768)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3352, line: 82, size: 1408, elements: !3353)
!3352 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3353 = !{!3354, !3355, !3356, !3357, !3358, !3359, !3360, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3435, !3438, !3439}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3351, file: !3352, line: 83, baseType: !127, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3351, file: !3352, line: 84, baseType: !127, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3351, file: !3352, line: 85, baseType: !142, size: 64, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3351, file: !3352, line: 86, baseType: !247, size: 64, offset: 192)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3351, file: !3352, line: 87, baseType: !247, size: 64, offset: 256)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3351, file: !3352, line: 88, baseType: !247, size: 64, offset: 320)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3351, file: !3352, line: 90, baseType: !3361, size: 64, offset: 384)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!190, !142, !3364}
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3366)
!3366 = !{!3367, !3368, !3369, !3370, !3371, !3372, !3373, !3386, !3399, !3400, !3401, !3402, !3403, !3411, !3412, !3413, !3414, !3415, !3416}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3365, file: !67, line: 96, baseType: !127, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3365, file: !67, line: 97, baseType: !3350, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3365, file: !67, line: 99, baseType: !109, size: 64, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3365, file: !67, line: 100, baseType: !127, size: 64, offset: 192)
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
!3382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 1024, elements: !3383)
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
!3396 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3377, line: 14, baseType: !112)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3389, file: !3377, line: 213, baseType: !336, size: 32, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3389, file: !3377, line: 214, baseType: !336, size: 32, offset: 224)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3365, file: !67, line: 108, baseType: !3324, size: 64, offset: 448)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3365, file: !67, line: 109, baseType: !3315, size: 64, offset: 512)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3365, file: !67, line: 110, baseType: !3324, size: 64, offset: 576)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3365, file: !67, line: 111, baseType: !3315, size: 64, offset: 640)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3365, file: !67, line: 112, baseType: !3404, size: 64, offset: 704)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!190, !142, !3407}
!3407 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3408)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3409)
!3409 = !{!3410}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3408, file: !80, line: 51, baseType: !190, size: 32)
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
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !143, file: !73, line: 471, baseType: !3364, size: 64, offset: 832)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !143, file: !73, line: 473, baseType: !108, size: 64, offset: 896)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !143, file: !73, line: 475, baseType: !108, size: 64, offset: 960)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !143, file: !73, line: 480, baseType: !1092, size: 192, offset: 1024)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !143, file: !73, line: 484, baseType: !3445, size: 576, offset: 1216)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3446)
!3446 = !{!3447, !3448, !3449, !3450, !3451, !3452}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3445, file: !73, line: 362, baseType: !151, size: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3445, file: !73, line: 363, baseType: !151, size: 128, offset: 128)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3445, file: !73, line: 364, baseType: !151, size: 128, offset: 256)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3445, file: !73, line: 365, baseType: !151, size: 128, offset: 384)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3445, file: !73, line: 366, baseType: !409, size: 8, offset: 512)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3445, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !143, file: !73, line: 485, baseType: !3454, size: 2304, offset: 1792)
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
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3454, file: !80, line: 578, baseType: !164, offset: 96)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3454, file: !80, line: 580, baseType: !151, size: 128, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3454, file: !80, line: 581, baseType: !1421, size: 192, offset: 256)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3454, file: !80, line: 582, baseType: !3472, size: 64, offset: 448)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3474, line: 43, size: 1472, elements: !3475)
!3474 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3475 = !{!3476, !3477, !3478, !3479, !3480, !3483, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3473, file: !3474, line: 44, baseType: !127, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3473, file: !3474, line: 45, baseType: !190, size: 32, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3473, file: !3474, line: 46, baseType: !151, size: 128, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3473, file: !3474, line: 47, baseType: !164, offset: 256)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3473, file: !3474, line: 48, baseType: !3481, size: 64, offset: 256)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3473, file: !3474, line: 49, baseType: !3484, size: 320, offset: 320)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3485, line: 11, size: 320, elements: !3486)
!3485 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3486 = !{!3487, !3488, !3489, !3494}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3484, file: !3485, line: 16, baseType: !558, size: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3484, file: !3485, line: 17, baseType: !112, size: 64, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3484, file: !3485, line: 18, baseType: !3490, size: 64, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{null, !3493}
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3484, file: !3485, line: 19, baseType: !334, size: 32, offset: 256)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3473, file: !3474, line: 50, baseType: !112, size: 64, offset: 640)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3473, file: !3474, line: 51, baseType: !1219, size: 64, offset: 704)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3473, file: !3474, line: 52, baseType: !1219, size: 64, offset: 768)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3473, file: !3474, line: 53, baseType: !1219, size: 64, offset: 832)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3473, file: !3474, line: 54, baseType: !1219, size: 64, offset: 896)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3473, file: !3474, line: 55, baseType: !1219, size: 64, offset: 960)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3473, file: !3474, line: 56, baseType: !112, size: 64, offset: 1024)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3473, file: !3474, line: 57, baseType: !112, size: 64, offset: 1088)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3473, file: !3474, line: 58, baseType: !112, size: 64, offset: 1152)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3473, file: !3474, line: 59, baseType: !112, size: 64, offset: 1216)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3473, file: !3474, line: 60, baseType: !112, size: 64, offset: 1280)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3473, file: !3474, line: 61, baseType: !142, size: 64, offset: 1344)
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
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3454, file: !80, line: 613, baseType: !190, size: 32, offset: 1792)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3454, file: !80, line: 614, baseType: !190, size: 32, offset: 1824)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3454, file: !80, line: 615, baseType: !340, size: 64, offset: 1856)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3454, file: !80, line: 616, baseType: !340, size: 64, offset: 1920)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3454, file: !80, line: 617, baseType: !340, size: 64, offset: 1984)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3454, file: !80, line: 618, baseType: !340, size: 64, offset: 2048)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3454, file: !80, line: 620, baseType: !3542, size: 64, offset: 2112)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3544)
!3544 = !{!3545, !3546, !3547, !3548}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3543, file: !80, line: 537, baseType: !164)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3543, file: !80, line: 538, baseType: !7, size: 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3543, file: !80, line: 540, baseType: !151, size: 128, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3543, file: !80, line: 543, baseType: !3549, size: 64, offset: 192)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3454, file: !80, line: 621, baseType: !3552, size: 64, offset: 2176)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{null, !142, !1363}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3454, file: !80, line: 622, baseType: !3556, size: 64, offset: 2240)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !143, file: !73, line: 486, baseType: !3559, size: 64, offset: 4096)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3561)
!3561 = !{!3562, !3563, !3564, !3568, !3569, !3570}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3560, file: !80, line: 643, baseType: !3321, size: 1472)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3560, file: !80, line: 644, baseType: !3324, size: 64, offset: 1472)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3560, file: !80, line: 645, baseType: !3565, size: 64, offset: 1536)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{null, !142, !409}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3560, file: !80, line: 646, baseType: !3324, size: 64, offset: 1600)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3560, file: !80, line: 647, baseType: !3315, size: 64, offset: 1664)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3560, file: !80, line: 648, baseType: !3315, size: 64, offset: 1728)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !143, file: !73, line: 493, baseType: !3572, size: 64, offset: 4160)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3574)
!3574 = !{!3575, !3576, !3577, !3750, !3751, !3752, !3753, !3754, !3755, !3758, !3759, !3760, !3761, !3762, !3763, !3764}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3573, file: !94, line: 163, baseType: !151, size: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3573, file: !94, line: 164, baseType: !127, size: 64, offset: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3573, file: !94, line: 165, baseType: !3578, size: 64, offset: 192)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3580)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3581)
!3581 = !{!3582, !3700, !3711, !3716, !3720, !3727, !3731, !3735, !3742, !3746}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3580, file: !94, line: 106, baseType: !3583, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!190, !3572, !3586, !93}
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3588, line: 51, size: 1344, elements: !3589)
!3588 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3589 = !{!3590, !3591, !3593, !3594, !3684, !3693, !3694, !3695, !3696, !3697, !3698, !3699}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3587, file: !3588, line: 52, baseType: !127, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3587, file: !3588, line: 53, baseType: !3592, size: 32, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3588, line: 28, baseType: !334)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3587, file: !3588, line: 54, baseType: !127, size: 64, offset: 128)
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
!3624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3603, file: !3596, line: 116, baseType: !3626, size: 64, offset: 256)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!409, !3617, !127}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3603, file: !3596, line: 118, baseType: !3630, size: 64, offset: 320)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!190, !3617, !127, !7, !108, !241}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3603, file: !3596, line: 123, baseType: !3634, size: 64, offset: 384)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!190, !3617, !127, !3637, !241}
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3603, file: !3596, line: 126, baseType: !3639, size: 64, offset: 448)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!127, !3617}
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
!3654 = !{!3599, !3617, !127}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3603, file: !3596, line: 135, baseType: !3656, size: 64, offset: 768)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!190, !3617, !127, !127, !7, !7, !3659}
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
!3672 = !{!190, !3617, !3673}
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3596, line: 29, size: 128, elements: !3675)
!3675 = !{!3676, !3677, !3678}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3674, file: !3596, line: 30, baseType: !7, size: 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3674, file: !3596, line: 31, baseType: !7, size: 32, offset: 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3674, file: !3596, line: 32, baseType: !3617, size: 64, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3603, file: !3596, line: 148, baseType: !3680, size: 64, offset: 1088)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!190, !3617, !142}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3595, file: !3596, line: 20, baseType: !142, size: 64, offset: 128)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3587, file: !3588, line: 57, baseType: !3685, size: 64, offset: 384)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3588, line: 31, size: 704, elements: !3687)
!3687 = !{!3688, !3689, !3690, !3691, !3692}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3686, file: !3588, line: 32, baseType: !206, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3686, file: !3588, line: 33, baseType: !190, size: 32, offset: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3686, file: !3588, line: 34, baseType: !108, size: 64, offset: 128)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3686, file: !3588, line: 35, baseType: !3685, size: 64, offset: 192)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3686, file: !3588, line: 43, baseType: !262, size: 448, offset: 256)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3587, file: !3588, line: 58, baseType: !3685, size: 64, offset: 448)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3587, file: !3588, line: 59, baseType: !3586, size: 64, offset: 512)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3587, file: !3588, line: 60, baseType: !3586, size: 64, offset: 576)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3587, file: !3588, line: 61, baseType: !3586, size: 64, offset: 640)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3587, file: !3588, line: 63, baseType: !146, size: 512, offset: 704)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3587, file: !3588, line: 65, baseType: !112, size: 64, offset: 1216)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3587, file: !3588, line: 66, baseType: !108, size: 64, offset: 1280)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3580, file: !94, line: 108, baseType: !3701, size: 64, offset: 64)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!190, !3572, !3704, !93}
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3706)
!3706 = !{!3707, !3708, !3709}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3705, file: !94, line: 64, baseType: !3599, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3705, file: !94, line: 65, baseType: !190, size: 32, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3705, file: !94, line: 66, baseType: !3710, size: 512, offset: 96)
!3710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 512, elements: !1654)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3580, file: !94, line: 110, baseType: !3712, size: 64, offset: 128)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!190, !3572, !7, !3715}
!3715 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !114, line: 164, baseType: !112)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3580, file: !94, line: 111, baseType: !3717, size: 64, offset: 192)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{null, !3572, !7}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3580, file: !94, line: 112, baseType: !3721, size: 64, offset: 256)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!190, !3572, !3586, !3724, !7, !3726, !2604}
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3580, file: !94, line: 117, baseType: !3728, size: 64, offset: 320)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!190, !3572, !7, !7, !108}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3580, file: !94, line: 119, baseType: !3732, size: 64, offset: 384)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{null, !3572, !7, !7}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3580, file: !94, line: 121, baseType: !3736, size: 64, offset: 448)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!190, !3572, !3739, !409}
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
!3749 = !{!190, !3572, !3704, !3726, !2604}
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
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !143, file: !73, line: 499, baseType: !151, size: 128, offset: 4224)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !143, file: !73, line: 502, baseType: !3768, size: 64, offset: 4352)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3770)
!3770 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !143, file: !73, line: 504, baseType: !3772, size: 64, offset: 4416)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !143, file: !73, line: 505, baseType: !340, size: 64, offset: 4480)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !143, file: !73, line: 510, baseType: !340, size: 64, offset: 4544)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !143, file: !73, line: 511, baseType: !3776, size: 64, offset: 4608)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3778)
!3778 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !143, file: !73, line: 513, baseType: !3780, size: 64, offset: 4672)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3782)
!3782 = !{!3783, !3784}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3781, file: !73, line: 293, baseType: !7, size: 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3781, file: !73, line: 294, baseType: !112, size: 64, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !143, file: !73, line: 515, baseType: !151, size: 128, offset: 4736)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !143, file: !73, line: 526, baseType: !3787, offset: 4864)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3788, line: 5, elements: !178)
!3788 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !143, file: !73, line: 528, baseType: !3586, size: 64, offset: 4864)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !143, file: !73, line: 529, baseType: !3599, size: 64, offset: 4928)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !143, file: !73, line: 534, baseType: !432, size: 32, offset: 4992)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !143, file: !73, line: 535, baseType: !334, size: 32, offset: 5024)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !143, file: !73, line: 537, baseType: !164, offset: 5056)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !143, file: !73, line: 538, baseType: !151, size: 128, offset: 5056)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !143, file: !73, line: 540, baseType: !3796, size: 64, offset: 5184)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3798, line: 54, size: 960, elements: !3799)
!3798 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3799 = !{!3800, !3801, !3802, !3803, !3804, !3805, !3806, !3810, !3814, !3815, !3816, !3817, !3821, !3825, !3826}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3797, file: !3798, line: 55, baseType: !127, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3797, file: !3798, line: 56, baseType: !109, size: 64, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3797, file: !3798, line: 58, baseType: !247, size: 64, offset: 128)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3797, file: !3798, line: 59, baseType: !247, size: 64, offset: 192)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3797, file: !3798, line: 60, baseType: !157, size: 64, offset: 256)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3797, file: !3798, line: 62, baseType: !3306, size: 64, offset: 320)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3797, file: !3798, line: 63, baseType: !3807, size: 64, offset: 384)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!206, !142, !3313}
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
!3820 = !{!2048, !142}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3797, file: !3798, line: 73, baseType: !3822, size: 64, offset: 768)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{null, !142, !3142, !3143}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3797, file: !3798, line: 75, baseType: !3319, size: 64, offset: 832)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3797, file: !3798, line: 77, baseType: !3436, size: 64, offset: 896)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !143, file: !73, line: 541, baseType: !247, size: 64, offset: 5248)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !143, file: !73, line: 543, baseType: !3315, size: 64, offset: 5312)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !143, file: !73, line: 544, baseType: !3830, size: 64, offset: 5376)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !143, file: !73, line: 545, baseType: !3833, size: 64, offset: 5440)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !143, file: !73, line: 547, baseType: !409, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !143, file: !73, line: 548, baseType: !409, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !143, file: !73, line: 549, baseType: !409, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !143, file: !73, line: 550, baseType: !409, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !120, file: !73, line: 103, baseType: !3841, size: 64, offset: 192)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!137, !142, !3839, !127, !241}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !116, file: !117, line: 14, baseType: !190, size: 32, offset: 256)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!3847 = !{!3848, !3900, !3905, !3910, !3913, !3918, !3920, !3923, !3925, !3930, !3932, !3973, !0, !4239, !4241, !4244, !4265, !4268, !4270, !4273, !4275, !4279, !4281, !4283, !4285, !4287, !4289, !4291, !4293, !4295, !4297, !4299, !4301, !4303, !4305, !4307, !4309, !4311, !4313, !4315, !4317, !4319, !4321, !4323, !4329, !4331, !4333, !4335, !4340, !4342, !4344, !4346, !4348, !4350, !4352, !4354, !4356, !4358, !4360, !4362, !4364, !4366, !4368, !4370, !4372, !4374}
!3848 = !DIGlobalVariableExpression(var: !3849, expr: !DIExpression())
!3849 = distinct !DIGlobalVariable(name: "__param_force_addr", scope: !2, file: !3, line: 42, type: !3850, isLocal: true, isDefinition: true, align: 64)
!3850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3851)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3852, line: 69, size: 320, elements: !3853)
!3852 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!3853 = !{!3854, !3855, !3856, !3872, !3874, !3878, !3879}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3851, file: !3852, line: 70, baseType: !127, size: 64)
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
!3865 = !{!190, !127, !3866}
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3859, file: !3852, line: 53, baseType: !3868, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!190, !206, !3866}
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
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3886, file: !3852, line: 88, baseType: !206, size: 64, offset: 64)
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
!3901 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_force_addrtype238", scope: !2, file: !3, line: 42, type: !3902, isLocal: true, isDefinition: true, align: 8)
!3902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 280, elements: !3903)
!3903 = !{!3904}
!3904 = !DISubrange(count: 35)
!3905 = !DIGlobalVariableExpression(var: !3906, expr: !DIExpression())
!3906 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_force_addr239", scope: !2, file: !3, line: 43, type: !3907, isLocal: true, isDefinition: true, align: 8)
!3907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 536, elements: !3908)
!3908 = !{!3909}
!3909 = !DISubrange(count: 67)
!3910 = !DIGlobalVariableExpression(var: !3911, expr: !DIExpression())
!3911 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author280", scope: !2, file: !3, line: 942, type: !3912, isLocal: true, isDefinition: true, align: 8)
!3912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 1024, elements: !3383)
!3913 = !DIGlobalVariableExpression(var: !3914, expr: !DIExpression())
!3914 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description281", scope: !2, file: !3, line: 945, type: !3915, isLocal: true, isDefinition: true, align: 8)
!3915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 344, elements: !3916)
!3916 = !{!3917}
!3917 = !DISubrange(count: 43)
!3918 = !DIGlobalVariableExpression(var: !3919, expr: !DIExpression())
!3919 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file282", scope: !2, file: !3, line: 946, type: !3902, isLocal: true, isDefinition: true, align: 8)
!3920 = !DIGlobalVariableExpression(var: !3921, expr: !DIExpression())
!3921 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license283", scope: !2, file: !3, line: 946, type: !3922, isLocal: true, isDefinition: true, align: 8)
!3922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 160, elements: !2122)
!3923 = !DIGlobalVariableExpression(var: !3924, expr: !DIExpression())
!3924 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sm_via686a_init284", scope: !2, file: !3, line: 948, type: !108, isLocal: true, isDefinition: true)
!3925 = !DIGlobalVariableExpression(var: !3926, expr: !DIExpression())
!3926 = distinct !DIGlobalVariable(name: "__exitcall_sm_via686a_exit", scope: !2, file: !3, line: 949, type: !3927, isLocal: true, isDefinition: true)
!3927 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3928, line: 117, baseType: !3929)
!3928 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!3930 = !DIGlobalVariableExpression(var: !3931, expr: !DIExpression())
!3931 = distinct !DIGlobalVariable(name: "force_addr", scope: !2, file: !3, line: 41, type: !132, isLocal: true, isDefinition: true)
!3932 = !DIGlobalVariableExpression(var: !3933, expr: !DIExpression())
!3933 = distinct !DIGlobalVariable(name: "pdev", scope: !2, file: !3, line: 46, type: !3934, isLocal: true, isDefinition: true)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !3936, line: 22, size: 6208, elements: !3937)
!3936 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!3937 = !{!3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3959, !3967, !3968, !3971}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3935, file: !3936, line: 23, baseType: !127, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3935, file: !3936, line: 24, baseType: !190, size: 32, offset: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !3935, file: !3936, line: 25, baseType: !409, size: 8, offset: 96)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3935, file: !3936, line: 26, baseType: !143, size: 5568, offset: 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !3935, file: !3936, line: 27, baseType: !340, size: 64, offset: 5696)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3935, file: !3936, line: 28, baseType: !3781, size: 128, offset: 5760)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !3935, file: !3936, line: 29, baseType: !334, size: 32, offset: 5888)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !3935, file: !3936, line: 30, baseType: !3946, size: 64, offset: 5952)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !3948, line: 20, size: 512, elements: !3949)
!3948 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!3949 = !{!3950, !3952, !3953, !3954, !3955, !3956, !3957, !3958}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3947, file: !3948, line: 21, baseType: !3951, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !114, line: 158, baseType: !2046)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3947, file: !3948, line: 22, baseType: !3951, size: 64, offset: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3947, file: !3948, line: 23, baseType: !127, size: 64, offset: 128)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3947, file: !3948, line: 24, baseType: !112, size: 64, offset: 192)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3947, file: !3948, line: 25, baseType: !112, size: 64, offset: 256)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3947, file: !3948, line: 26, baseType: !3946, size: 64, offset: 320)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3947, file: !3948, line: 26, baseType: !3946, size: 64, offset: 384)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3947, file: !3948, line: 26, baseType: !3946, size: 64, offset: 448)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !3935, file: !3936, line: 32, baseType: !3960, size: 64, offset: 6016)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3962)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !3377, line: 586, size: 256, elements: !3963)
!3963 = !{!3964, !3966}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3962, file: !3377, line: 587, baseType: !3965, size: 160)
!3965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 160, elements: !2122)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3962, file: !3377, line: 588, baseType: !3396, size: 64, offset: 192)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !3935, file: !3936, line: 33, baseType: !206, size: 64, offset: 6080)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !3935, file: !3936, line: 36, baseType: !3969, size: 64, offset: 6144)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !3936, line: 18, flags: DIFlagFwdDecl)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3935, file: !3936, line: 39, baseType: !3972, offset: 6208)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !3788, line: 8, elements: !178)
!3973 = !DIGlobalVariableExpression(var: !3974, expr: !DIExpression())
!3974 = distinct !DIGlobalVariable(name: "s_bridge", scope: !2, file: !3, line: 322, type: !3975, isLocal: true, isDefinition: true)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !3977, line: 309, size: 19264, elements: !3978)
!3977 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!3978 = !{!3979, !3980, !4042, !4043, !4044, !4045, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4137, !4138, !4139, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4213, !4214, !4215, !4216, !4217, !4218, !4220, !4221, !4222, !4225, !4232, !4233, !4234, !4235, !4236, !4237, !4238}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !3976, file: !3977, line: 310, baseType: !151, size: 128)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3976, file: !3977, line: 311, baseType: !3981, size: 64, offset: 128)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !3977, line: 605, size: 8064, elements: !3983)
!3983 = !{!3984, !3985, !3986, !3987, !3988, !3989, !3990, !3992, !3993, !3994, !4018, !4021, !4022, !4026, !4027, !4028, !4029, !4030, !4034, !4035, !4037, !4038, !4039, !4040, !4041}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3982, file: !3977, line: 606, baseType: !151, size: 128)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3982, file: !3977, line: 607, baseType: !3981, size: 64, offset: 128)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3982, file: !3977, line: 608, baseType: !151, size: 128, offset: 192)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !3982, file: !3977, line: 609, baseType: !151, size: 128, offset: 320)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3982, file: !3977, line: 610, baseType: !3975, size: 64, offset: 448)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !3982, file: !3977, line: 611, baseType: !151, size: 128, offset: 512)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !3982, file: !3977, line: 613, baseType: !3991, size: 256, offset: 640)
!3991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3946, size: 256, elements: !1074)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3982, file: !3977, line: 614, baseType: !151, size: 128, offset: 896)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !3982, file: !3977, line: 615, baseType: !3947, size: 512, offset: 1024)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3982, file: !3977, line: 617, baseType: !3995, size: 64, offset: 1536)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !3977, line: 731, size: 320, elements: !3997)
!3997 = !{!3998, !4002, !4006, !4010, !4014}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !3996, file: !3977, line: 732, baseType: !3999, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!190, !3981}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !3996, file: !3977, line: 733, baseType: !4003, size: 64, offset: 64)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{null, !3981}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !3996, file: !3977, line: 734, baseType: !4007, size: 64, offset: 128)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!108, !3981, !7, !190}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3996, file: !3977, line: 735, baseType: !4011, size: 64, offset: 192)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!190, !3981, !7, !190, !190, !1334}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3996, file: !3977, line: 736, baseType: !4015, size: 64, offset: 256)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!190, !3981, !7, !190, !190, !334}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3982, file: !3977, line: 618, baseType: !4019, size: 64, offset: 1600)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !3977, line: 537, flags: DIFlagFwdDecl)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !3982, file: !3977, line: 619, baseType: !108, size: 64, offset: 1664)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !3982, file: !3977, line: 620, baseType: !4023, size: 64, offset: 1728)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4025, line: 123, flags: DIFlagFwdDecl)
!4025 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3982, file: !3977, line: 622, baseType: !346, size: 8, offset: 1792)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !3982, file: !3977, line: 623, baseType: !346, size: 8, offset: 1800)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !3982, file: !3977, line: 624, baseType: !346, size: 8, offset: 1808)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !3982, file: !3977, line: 625, baseType: !346, size: 8, offset: 1816)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3982, file: !3977, line: 630, baseType: !4031, size: 384, offset: 1824)
!4031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 384, elements: !4032)
!4032 = !{!4033}
!4033 = !DISubrange(count: 48)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !3982, file: !3977, line: 632, baseType: !132, size: 16, offset: 2208)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !3982, file: !3977, line: 633, baseType: !4036, size: 16, offset: 2224)
!4036 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !3977, line: 237, baseType: !132)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !3982, file: !3977, line: 634, baseType: !142, size: 64, offset: 2240)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3982, file: !3977, line: 635, baseType: !143, size: 5568, offset: 2304)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !3982, file: !3977, line: 636, baseType: !261, size: 64, offset: 7872)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !3982, file: !3977, line: 637, baseType: !261, size: 64, offset: 7936)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !3982, file: !3977, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !3976, file: !3977, line: 312, baseType: !3981, size: 64, offset: 192)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !3976, file: !3977, line: 314, baseType: !108, size: 64, offset: 256)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !3976, file: !3977, line: 315, baseType: !4023, size: 64, offset: 320)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !3976, file: !3977, line: 316, baseType: !4046, size: 64, offset: 384)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !3977, line: 69, size: 832, elements: !4048)
!4048 = !{!4049, !4050, !4051, !4054, !4055}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4047, file: !3977, line: 70, baseType: !3981, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4047, file: !3977, line: 71, baseType: !151, size: 128, offset: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4047, file: !3977, line: 72, baseType: !4052, size: 64, offset: 192)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !3977, line: 72, flags: DIFlagFwdDecl)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4047, file: !3977, line: 73, baseType: !346, size: 8, offset: 256)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4047, file: !3977, line: 74, baseType: !146, size: 512, offset: 320)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !3976, file: !3977, line: 318, baseType: !7, size: 32, offset: 448)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3976, file: !3977, line: 319, baseType: !132, size: 16, offset: 480)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3976, file: !3977, line: 320, baseType: !132, size: 16, offset: 496)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !3976, file: !3977, line: 321, baseType: !132, size: 16, offset: 512)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !3976, file: !3977, line: 322, baseType: !132, size: 16, offset: 528)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3976, file: !3977, line: 323, baseType: !7, size: 32, offset: 544)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !3976, file: !3977, line: 324, baseType: !1271, size: 8, offset: 576)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !3976, file: !3977, line: 325, baseType: !1271, size: 8, offset: 584)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !3976, file: !3977, line: 330, baseType: !1271, size: 8, offset: 592)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !3976, file: !3977, line: 331, baseType: !1271, size: 8, offset: 600)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !3976, file: !3977, line: 332, baseType: !1271, size: 8, offset: 608)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !3976, file: !3977, line: 333, baseType: !1271, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !3976, file: !3977, line: 334, baseType: !1271, size: 8, offset: 624)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !3976, file: !3977, line: 335, baseType: !1271, size: 8, offset: 632)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !3976, file: !3977, line: 336, baseType: !778, size: 16, offset: 640)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !3976, file: !3977, line: 337, baseType: !3726, size: 64, offset: 704)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3976, file: !3977, line: 339, baseType: !4073, size: 64, offset: 768)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !3977, line: 858, size: 2048, elements: !4075)
!4075 = !{!4076, !4077, !4078, !4090, !4094, !4098, !4102, !4106, !4107, !4111, !4130, !4131, !4132}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4074, file: !3977, line: 859, baseType: !151, size: 128)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4074, file: !3977, line: 860, baseType: !127, size: 64, offset: 128)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4074, file: !3977, line: 861, baseType: !4079, size: 64, offset: 192)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4081)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3377, line: 38, size: 256, elements: !4082)
!4082 = !{!4083, !4084, !4085, !4086, !4087, !4088, !4089}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4081, file: !3377, line: 39, baseType: !336, size: 32)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4081, file: !3377, line: 39, baseType: !336, size: 32, offset: 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4081, file: !3377, line: 40, baseType: !336, size: 32, offset: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4081, file: !3377, line: 40, baseType: !336, size: 32, offset: 96)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4081, file: !3377, line: 41, baseType: !336, size: 32, offset: 128)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4081, file: !3377, line: 41, baseType: !336, size: 32, offset: 160)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4081, file: !3377, line: 42, baseType: !3396, size: 64, offset: 192)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4074, file: !3977, line: 862, baseType: !4091, size: 64, offset: 256)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!190, !3975, !4079}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4074, file: !3977, line: 863, baseType: !4095, size: 64, offset: 320)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{null, !3975}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4074, file: !3977, line: 864, baseType: !4099, size: 64, offset: 384)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!190, !3975, !3407}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4074, file: !3977, line: 865, baseType: !4103, size: 64, offset: 448)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!190, !3975}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4074, file: !3977, line: 866, baseType: !4095, size: 64, offset: 512)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4074, file: !3977, line: 867, baseType: !4108, size: 64, offset: 576)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!190, !3975, !190}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4074, file: !3977, line: 868, baseType: !4112, size: 64, offset: 640)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4114)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !3977, line: 795, size: 384, elements: !4115)
!4115 = !{!4116, !4122, !4126, !4127, !4128, !4129}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4114, file: !3977, line: 797, baseType: !4117, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!4120, !3975, !4121}
!4120 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !3977, line: 772, baseType: !7)
!4121 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !3977, line: 180, baseType: !7)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4114, file: !3977, line: 801, baseType: !4123, size: 64, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!4120, !3975}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4114, file: !3977, line: 804, baseType: !4123, size: 64, offset: 128)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4114, file: !3977, line: 807, baseType: !4095, size: 64, offset: 192)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4114, file: !3977, line: 808, baseType: !4095, size: 64, offset: 256)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4114, file: !3977, line: 811, baseType: !4095, size: 64, offset: 320)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4074, file: !3977, line: 869, baseType: !247, size: 64, offset: 704)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4074, file: !3977, line: 870, baseType: !3365, size: 1152, offset: 768)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4074, file: !3977, line: 871, baseType: !4133, size: 128, offset: 1920)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !3977, line: 759, size: 128, elements: !4134)
!4134 = !{!4135, !4136}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4133, file: !3977, line: 760, baseType: !164)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4133, file: !3977, line: 761, baseType: !151, size: 128)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3976, file: !3977, line: 340, baseType: !340, size: 64, offset: 832)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3976, file: !3977, line: 346, baseType: !3781, size: 128, offset: 896)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !3976, file: !3977, line: 348, baseType: !4140, size: 32, offset: 1024)
!4140 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !3977, line: 155, baseType: !190)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !3976, file: !3977, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !3976, file: !3977, line: 352, baseType: !1271, size: 8, offset: 1064)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !3976, file: !3977, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !3976, file: !3977, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !3976, file: !3977, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !3976, file: !3977, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !3976, file: !3977, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !3976, file: !3977, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !3976, file: !3977, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !3976, file: !3977, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !3976, file: !3977, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !3976, file: !3977, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !3976, file: !3977, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !3976, file: !3977, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !3976, file: !3977, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !3976, file: !3977, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !3976, file: !3977, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !3976, file: !3977, line: 376, baseType: !7, size: 32, offset: 1120)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !3976, file: !3977, line: 377, baseType: !7, size: 32, offset: 1152)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !3976, file: !3977, line: 380, baseType: !4161, size: 64, offset: 1216)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !3977, line: 303, flags: DIFlagFwdDecl)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !3976, file: !3977, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !3976, file: !3977, line: 383, baseType: !190, size: 32, offset: 1312)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !3976, file: !3977, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !3976, file: !3977, line: 387, baseType: !4121, size: 32, offset: 1376)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3976, file: !3977, line: 388, baseType: !143, size: 5568, offset: 1408)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !3976, file: !3977, line: 390, baseType: !190, size: 32, offset: 6976)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3976, file: !3977, line: 396, baseType: !7, size: 32, offset: 7008)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !3976, file: !3977, line: 397, baseType: !4171, size: 8704, offset: 7040)
!4171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3947, size: 8704, elements: !4172)
!4172 = !{!4173}
!4173 = !DISubrange(count: 17)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !3976, file: !3977, line: 399, baseType: !409, size: 8, offset: 15744)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !3976, file: !3977, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !3976, file: !3977, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !3976, file: !3977, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !3976, file: !3977, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !3976, file: !3977, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !3976, file: !3977, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !3976, file: !3977, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !3976, file: !3977, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !3976, file: !3977, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !3976, file: !3977, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !3976, file: !3977, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !3976, file: !3977, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !3976, file: !3977, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !3976, file: !3977, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !3976, file: !3977, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !3976, file: !3977, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !3976, file: !3977, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !3976, file: !3977, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !3976, file: !3977, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !3976, file: !3977, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !3976, file: !3977, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !3976, file: !3977, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !3976, file: !3977, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !3976, file: !3977, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !3976, file: !3977, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !3976, file: !3977, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !3976, file: !3977, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !3976, file: !3977, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !3976, file: !3977, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !3976, file: !3977, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !3976, file: !3977, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !3976, file: !3977, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !3976, file: !3977, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !3976, file: !3977, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !3976, file: !3977, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !3976, file: !3977, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !3976, file: !3977, line: 450, baseType: !4212, size: 16, offset: 15792)
!4212 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !3977, line: 206, baseType: !132)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !3976, file: !3977, line: 451, baseType: !666, size: 32, offset: 15808)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !3976, file: !3977, line: 453, baseType: !3710, size: 512, offset: 15840)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !3976, file: !3977, line: 454, baseType: !554, size: 64, offset: 16384)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !3976, file: !3977, line: 455, baseType: !261, size: 64, offset: 16448)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !3976, file: !3977, line: 456, baseType: !190, size: 32, offset: 16512)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !3976, file: !3977, line: 457, baseType: !4219, size: 1088, offset: 16576)
!4219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 1088, elements: !4172)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !3976, file: !3977, line: 458, baseType: !4219, size: 1088, offset: 17664)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !3976, file: !3977, line: 469, baseType: !247, size: 64, offset: 18752)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !3976, file: !3977, line: 471, baseType: !4223, size: 64, offset: 18816)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !3977, line: 304, flags: DIFlagFwdDecl)
!4225 = !DIDerivedType(tag: DW_TAG_member, scope: !3976, file: !3977, line: 478, baseType: !4226, size: 64, offset: 18880)
!4226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3976, file: !3977, line: 478, size: 64, elements: !4227)
!4227 = !{!4228, !4231}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4226, file: !3977, line: 479, baseType: !4229, size: 64)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !3977, line: 305, flags: DIFlagFwdDecl)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4226, file: !3977, line: 480, baseType: !3975, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !3976, file: !3977, line: 482, baseType: !778, size: 16, offset: 18944)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !3976, file: !3977, line: 483, baseType: !1271, size: 8, offset: 18960)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !3976, file: !3977, line: 497, baseType: !778, size: 16, offset: 18976)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !3976, file: !3977, line: 498, baseType: !2046, size: 64, offset: 19008)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !3976, file: !3977, line: 499, baseType: !241, size: 64, offset: 19072)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !3976, file: !3977, line: 500, baseType: !206, size: 64, offset: 19136)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !3976, file: !3977, line: 502, baseType: !112, size: 64, offset: 19200)
!4239 = !DIGlobalVariableExpression(var: !4240, expr: !DIExpression())
!4240 = distinct !DIGlobalVariable(name: "via686a_pci_driver", scope: !2, file: !3, line: 920, type: !4074, isLocal: true, isDefinition: true)
!4241 = !DIGlobalVariableExpression(var: !4242, expr: !DIExpression())
!4242 = distinct !DIGlobalVariable(name: "via686a_pci_ids", scope: !2, file: !3, line: 811, type: !4243, isLocal: true, isDefinition: true)
!4243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4080, size: 512, elements: !1488)
!4244 = !DIGlobalVariableExpression(var: !4245, expr: !DIExpression())
!4245 = distinct !DIGlobalVariable(name: "via686a_driver", scope: !2, file: !3, line: 657, type: !4246, isLocal: true, isDefinition: true)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !3936, line: 200, size: 1600, elements: !4247)
!4247 = !{!4248, !4252, !4253, !4257, !4261, !4262, !4263, !4264}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4246, file: !3936, line: 201, baseType: !4249, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!190, !3934}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4246, file: !3936, line: 202, baseType: !4249, size: 64, offset: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4246, file: !3936, line: 203, baseType: !4254, size: 64, offset: 128)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{null, !3934}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4246, file: !3936, line: 204, baseType: !4258, size: 64, offset: 192)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!190, !3934, !3407}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4246, file: !3936, line: 205, baseType: !4249, size: 64, offset: 256)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4246, file: !3936, line: 206, baseType: !3365, size: 1152, offset: 320)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4246, file: !3936, line: 207, baseType: !3960, size: 64, offset: 1472)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !4246, file: !3936, line: 208, baseType: !409, size: 8, offset: 1536)
!4265 = !DIGlobalVariableExpression(var: !4266, expr: !DIExpression())
!4266 = distinct !DIGlobalVariable(name: "__key", scope: !4267, file: !3, line: 689, type: !564, isLocal: true, isDefinition: true)
!4267 = distinct !DISubprogram(name: "via686a_probe", scope: !3, file: !3, line: 666, type: !4250, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4268 = !DIGlobalVariableExpression(var: !4269, expr: !DIExpression())
!4269 = distinct !DIGlobalVariable(name: "via686a_group", scope: !2, file: !3, line: 653, type: !249, isLocal: true, isDefinition: true)
!4270 = !DIGlobalVariableExpression(var: !4271, expr: !DIExpression())
!4271 = distinct !DIGlobalVariable(name: "via686a_attributes", scope: !2, file: !3, line: 604, type: !4272, isLocal: true, isDefinition: true)
!4272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 2752, elements: !3916)
!4273 = !DIGlobalVariableExpression(var: !4274, expr: !DIExpression())
!4274 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in0_input", scope: !2, file: !3, line: 407, type: !116, isLocal: true, isDefinition: true)
!4275 = !DIGlobalVariableExpression(var: !4276, expr: !DIExpression())
!4276 = distinct !DIGlobalVariable(name: "VIA686A_REG_TEMP", scope: !2, file: !3, line: 71, type: !4277, isLocal: true, isDefinition: true)
!4277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4278, size: 24, elements: !207)
!4278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1271)
!4279 = !DIGlobalVariableExpression(var: !4280, expr: !DIExpression())
!4280 = distinct !DIGlobalVariable(name: "VIA686A_REG_TEMP_OVER", scope: !2, file: !3, line: 72, type: !4277, isLocal: true, isDefinition: true)
!4281 = !DIGlobalVariableExpression(var: !4282, expr: !DIExpression())
!4282 = distinct !DIGlobalVariable(name: "VIA686A_REG_TEMP_HYST", scope: !2, file: !3, line: 73, type: !4277, isLocal: true, isDefinition: true)
!4283 = !DIGlobalVariableExpression(var: !4284, expr: !DIExpression())
!4284 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in1_input", scope: !2, file: !3, line: 410, type: !116, isLocal: true, isDefinition: true)
!4285 = !DIGlobalVariableExpression(var: !4286, expr: !DIExpression())
!4286 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in2_input", scope: !2, file: !3, line: 413, type: !116, isLocal: true, isDefinition: true)
!4287 = !DIGlobalVariableExpression(var: !4288, expr: !DIExpression())
!4288 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in3_input", scope: !2, file: !3, line: 416, type: !116, isLocal: true, isDefinition: true)
!4289 = !DIGlobalVariableExpression(var: !4290, expr: !DIExpression())
!4290 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in4_input", scope: !2, file: !3, line: 419, type: !116, isLocal: true, isDefinition: true)
!4291 = !DIGlobalVariableExpression(var: !4292, expr: !DIExpression())
!4292 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in0_min", scope: !2, file: !3, line: 408, type: !116, isLocal: true, isDefinition: true)
!4293 = !DIGlobalVariableExpression(var: !4294, expr: !DIExpression())
!4294 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in1_min", scope: !2, file: !3, line: 411, type: !116, isLocal: true, isDefinition: true)
!4295 = !DIGlobalVariableExpression(var: !4296, expr: !DIExpression())
!4296 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in2_min", scope: !2, file: !3, line: 414, type: !116, isLocal: true, isDefinition: true)
!4297 = !DIGlobalVariableExpression(var: !4298, expr: !DIExpression())
!4298 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in3_min", scope: !2, file: !3, line: 417, type: !116, isLocal: true, isDefinition: true)
!4299 = !DIGlobalVariableExpression(var: !4300, expr: !DIExpression())
!4300 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in4_min", scope: !2, file: !3, line: 420, type: !116, isLocal: true, isDefinition: true)
!4301 = !DIGlobalVariableExpression(var: !4302, expr: !DIExpression())
!4302 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in0_max", scope: !2, file: !3, line: 409, type: !116, isLocal: true, isDefinition: true)
!4303 = !DIGlobalVariableExpression(var: !4304, expr: !DIExpression())
!4304 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in1_max", scope: !2, file: !3, line: 412, type: !116, isLocal: true, isDefinition: true)
!4305 = !DIGlobalVariableExpression(var: !4306, expr: !DIExpression())
!4306 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in2_max", scope: !2, file: !3, line: 415, type: !116, isLocal: true, isDefinition: true)
!4307 = !DIGlobalVariableExpression(var: !4308, expr: !DIExpression())
!4308 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in3_max", scope: !2, file: !3, line: 418, type: !116, isLocal: true, isDefinition: true)
!4309 = !DIGlobalVariableExpression(var: !4310, expr: !DIExpression())
!4310 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in4_max", scope: !2, file: !3, line: 421, type: !116, isLocal: true, isDefinition: true)
!4311 = !DIGlobalVariableExpression(var: !4312, expr: !DIExpression())
!4312 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in0_alarm", scope: !2, file: !3, line: 585, type: !116, isLocal: true, isDefinition: true)
!4313 = !DIGlobalVariableExpression(var: !4314, expr: !DIExpression())
!4314 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in1_alarm", scope: !2, file: !3, line: 586, type: !116, isLocal: true, isDefinition: true)
!4315 = !DIGlobalVariableExpression(var: !4316, expr: !DIExpression())
!4316 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in2_alarm", scope: !2, file: !3, line: 587, type: !116, isLocal: true, isDefinition: true)
!4317 = !DIGlobalVariableExpression(var: !4318, expr: !DIExpression())
!4318 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in3_alarm", scope: !2, file: !3, line: 588, type: !116, isLocal: true, isDefinition: true)
!4319 = !DIGlobalVariableExpression(var: !4320, expr: !DIExpression())
!4320 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in4_alarm", scope: !2, file: !3, line: 589, type: !116, isLocal: true, isDefinition: true)
!4321 = !DIGlobalVariableExpression(var: !4322, expr: !DIExpression())
!4322 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp1_input", scope: !2, file: !3, line: 486, type: !116, isLocal: true, isDefinition: true)
!4323 = !DIGlobalVariableExpression(var: !4324, expr: !DIExpression())
!4324 = distinct !DIGlobalVariable(name: "temp_lut", scope: !2, file: !3, line: 202, type: !4325, isLocal: true, isDefinition: true)
!4325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4326, size: 4096, elements: !4327)
!4326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1122)
!4327 = !{!4328}
!4328 = !DISubrange(count: 256)
!4329 = !DIGlobalVariableExpression(var: !4330, expr: !DIExpression())
!4330 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp2_input", scope: !2, file: !3, line: 489, type: !116, isLocal: true, isDefinition: true)
!4331 = !DIGlobalVariableExpression(var: !4332, expr: !DIExpression())
!4332 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp3_input", scope: !2, file: !3, line: 492, type: !116, isLocal: true, isDefinition: true)
!4333 = !DIGlobalVariableExpression(var: !4334, expr: !DIExpression())
!4334 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp1_max", scope: !2, file: !3, line: 487, type: !116, isLocal: true, isDefinition: true)
!4335 = !DIGlobalVariableExpression(var: !4336, expr: !DIExpression())
!4336 = distinct !DIGlobalVariable(name: "via_lut", scope: !2, file: !3, line: 250, type: !4337, isLocal: true, isDefinition: true)
!4337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4278, size: 1288, elements: !4338)
!4338 = !{!4339}
!4339 = !DISubrange(count: 161)
!4340 = !DIGlobalVariableExpression(var: !4341, expr: !DIExpression())
!4341 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp2_max", scope: !2, file: !3, line: 490, type: !116, isLocal: true, isDefinition: true)
!4342 = !DIGlobalVariableExpression(var: !4343, expr: !DIExpression())
!4343 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp3_max", scope: !2, file: !3, line: 493, type: !116, isLocal: true, isDefinition: true)
!4344 = !DIGlobalVariableExpression(var: !4345, expr: !DIExpression())
!4345 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp1_max_hyst", scope: !2, file: !3, line: 488, type: !116, isLocal: true, isDefinition: true)
!4346 = !DIGlobalVariableExpression(var: !4347, expr: !DIExpression())
!4347 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp2_max_hyst", scope: !2, file: !3, line: 491, type: !116, isLocal: true, isDefinition: true)
!4348 = !DIGlobalVariableExpression(var: !4349, expr: !DIExpression())
!4349 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp3_max_hyst", scope: !2, file: !3, line: 494, type: !116, isLocal: true, isDefinition: true)
!4350 = !DIGlobalVariableExpression(var: !4351, expr: !DIExpression())
!4351 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp1_alarm", scope: !2, file: !3, line: 590, type: !116, isLocal: true, isDefinition: true)
!4352 = !DIGlobalVariableExpression(var: !4353, expr: !DIExpression())
!4353 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp2_alarm", scope: !2, file: !3, line: 591, type: !116, isLocal: true, isDefinition: true)
!4354 = !DIGlobalVariableExpression(var: !4355, expr: !DIExpression())
!4355 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp3_alarm", scope: !2, file: !3, line: 592, type: !116, isLocal: true, isDefinition: true)
!4356 = !DIGlobalVariableExpression(var: !4357, expr: !DIExpression())
!4357 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan1_input", scope: !2, file: !3, line: 561, type: !116, isLocal: true, isDefinition: true)
!4358 = !DIGlobalVariableExpression(var: !4359, expr: !DIExpression())
!4359 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan2_input", scope: !2, file: !3, line: 564, type: !116, isLocal: true, isDefinition: true)
!4360 = !DIGlobalVariableExpression(var: !4361, expr: !DIExpression())
!4361 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan1_min", scope: !2, file: !3, line: 562, type: !116, isLocal: true, isDefinition: true)
!4362 = !DIGlobalVariableExpression(var: !4363, expr: !DIExpression())
!4363 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan2_min", scope: !2, file: !3, line: 565, type: !116, isLocal: true, isDefinition: true)
!4364 = !DIGlobalVariableExpression(var: !4365, expr: !DIExpression())
!4365 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan1_div", scope: !2, file: !3, line: 563, type: !116, isLocal: true, isDefinition: true)
!4366 = !DIGlobalVariableExpression(var: !4367, expr: !DIExpression())
!4367 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan2_div", scope: !2, file: !3, line: 566, type: !116, isLocal: true, isDefinition: true)
!4368 = !DIGlobalVariableExpression(var: !4369, expr: !DIExpression())
!4369 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan1_alarm", scope: !2, file: !3, line: 593, type: !116, isLocal: true, isDefinition: true)
!4370 = !DIGlobalVariableExpression(var: !4371, expr: !DIExpression())
!4371 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan2_alarm", scope: !2, file: !3, line: 594, type: !116, isLocal: true, isDefinition: true)
!4372 = !DIGlobalVariableExpression(var: !4373, expr: !DIExpression())
!4373 = distinct !DIGlobalVariable(name: "dev_attr_alarms", scope: !2, file: !3, line: 576, type: !120, isLocal: true, isDefinition: true)
!4374 = !DIGlobalVariableExpression(var: !4375, expr: !DIExpression())
!4375 = distinct !DIGlobalVariable(name: "dev_attr_name", scope: !2, file: !3, line: 602, type: !120, isLocal: true, isDefinition: true)
!4376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 152, elements: !4377)
!4377 = !{!4378}
!4378 = !DISubrange(count: 19)
!4379 = !{i32 7, !"Dwarf Version", i32 4}
!4380 = !{i32 2, !"Debug Info Version", i32 3}
!4381 = !{i32 1, !"wchar_size", i32 2}
!4382 = !{i32 1, !"Code Model", i32 2}
!4383 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4384 = distinct !DISubprogram(name: "sm_via686a_exit", scope: !3, file: !3, line: 931, type: !1799, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4385 = !DILocation(line: 933, column: 2, scope: !4384)
!4386 = !DILocation(line: 934, column: 6, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 934, column: 6)
!4388 = !DILocation(line: 934, column: 15, scope: !4387)
!4389 = !DILocation(line: 934, column: 6, scope: !4384)
!4390 = !DILocation(line: 935, column: 30, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4387, file: !3, line: 934, column: 24)
!4392 = !DILocation(line: 935, column: 3, scope: !4391)
!4393 = !DILocation(line: 936, column: 3, scope: !4391)
!4394 = !DILocation(line: 937, column: 15, scope: !4391)
!4395 = !DILocation(line: 937, column: 3, scope: !4391)
!4396 = !DILocation(line: 938, column: 12, scope: !4391)
!4397 = !DILocation(line: 939, column: 2, scope: !4391)
!4398 = !DILocation(line: 940, column: 1, scope: !4384)
!4399 = distinct !DISubprogram(name: "sm_via686a_init", scope: !3, file: !3, line: 926, type: !4400, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{!190}
!4402 = !DILocation(line: 928, column: 9, scope: !4399)
!4403 = !DILocation(line: 928, column: 2, scope: !4399)
!4404 = distinct !DISubprogram(name: "via686a_pci_probe", scope: !3, file: !3, line: 858, type: !4092, scopeLine: 860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4405 = !DILocalVariable(name: "dev", arg: 1, scope: !4404, file: !3, line: 858, type: !3975)
!4406 = !DILocation(line: 858, column: 46, scope: !4404)
!4407 = !DILocalVariable(name: "id", arg: 2, scope: !4404, file: !3, line: 859, type: !4079)
!4408 = !DILocation(line: 859, column: 40, scope: !4404)
!4409 = !DILocalVariable(name: "address", scope: !4404, file: !3, line: 861, type: !778)
!4410 = !DILocation(line: 861, column: 6, scope: !4404)
!4411 = !DILocalVariable(name: "val", scope: !4404, file: !3, line: 861, type: !778)
!4412 = !DILocation(line: 861, column: 15, scope: !4404)
!4413 = !DILocation(line: 863, column: 6, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 863, column: 6)
!4415 = !DILocation(line: 863, column: 6, scope: !4404)
!4416 = !DILocation(line: 864, column: 13, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4414, file: !3, line: 863, column: 18)
!4418 = !DILocation(line: 864, column: 24, scope: !4417)
!4419 = !DILocation(line: 864, column: 11, scope: !4417)
!4420 = !DILocation(line: 865, column: 3, scope: !4417)
!4421 = !DILocation(line: 867, column: 29, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4417, file: !3, line: 866, column: 7)
!4423 = !DILocation(line: 867, column: 52, scope: !4422)
!4424 = !DILocation(line: 867, column: 60, scope: !4422)
!4425 = !DILocation(line: 867, column: 7, scope: !4422)
!4426 = !DILocation(line: 866, column: 26, scope: !4422)
!4427 = !DILocation(line: 866, column: 7, scope: !4417)
!4428 = !DILocation(line: 868, column: 4, scope: !4422)
!4429 = !DILocation(line: 869, column: 2, scope: !4417)
!4430 = !DILocation(line: 871, column: 27, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 870, column: 6)
!4432 = !DILocation(line: 871, column: 6, scope: !4431)
!4433 = !DILocation(line: 870, column: 25, scope: !4431)
!4434 = !DILocation(line: 870, column: 6, scope: !4404)
!4435 = !DILocation(line: 872, column: 3, scope: !4431)
!4436 = !DILocation(line: 874, column: 12, scope: !4404)
!4437 = !DILocation(line: 874, column: 16, scope: !4404)
!4438 = !DILocation(line: 874, column: 10, scope: !4404)
!4439 = !DILocation(line: 875, column: 6, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 875, column: 6)
!4441 = !DILocation(line: 875, column: 14, scope: !4440)
!4442 = !DILocation(line: 875, column: 6, scope: !4404)
!4443 = !DILocation(line: 876, column: 3, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 875, column: 20)
!4445 = !DILocation(line: 878, column: 3, scope: !4444)
!4446 = !DILocation(line: 882, column: 27, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 881, column: 6)
!4448 = !DILocation(line: 882, column: 6, scope: !4447)
!4449 = !DILocation(line: 881, column: 25, scope: !4447)
!4450 = !DILocation(line: 881, column: 6, scope: !4404)
!4451 = !DILocation(line: 883, column: 3, scope: !4447)
!4452 = !DILocation(line: 884, column: 8, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 884, column: 6)
!4454 = !DILocation(line: 884, column: 12, scope: !4453)
!4455 = !DILocation(line: 884, column: 6, scope: !4404)
!4456 = !DILocation(line: 885, column: 8, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 885, column: 7)
!4458 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 884, column: 23)
!4459 = !DILocation(line: 885, column: 7, scope: !4458)
!4460 = !DILocation(line: 886, column: 4, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4457, file: !3, line: 885, column: 20)
!4462 = !DILocation(line: 889, column: 4, scope: !4461)
!4463 = !DILocation(line: 892, column: 3, scope: !4458)
!4464 = !DILocation(line: 894, column: 29, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 893, column: 7)
!4466 = !DILocation(line: 895, column: 8, scope: !4465)
!4467 = !DILocation(line: 895, column: 12, scope: !4465)
!4468 = !DILocation(line: 894, column: 7, scope: !4465)
!4469 = !DILocation(line: 893, column: 26, scope: !4465)
!4470 = !DILocation(line: 893, column: 7, scope: !4458)
!4471 = !DILocation(line: 896, column: 4, scope: !4465)
!4472 = !DILocation(line: 897, column: 2, scope: !4458)
!4473 = !DILocation(line: 899, column: 6, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 899, column: 6)
!4475 = !DILocation(line: 899, column: 6, scope: !4404)
!4476 = !DILocation(line: 900, column: 3, scope: !4474)
!4477 = !DILocation(line: 903, column: 25, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 903, column: 6)
!4479 = !DILocation(line: 903, column: 6, scope: !4478)
!4480 = !DILocation(line: 903, column: 6, scope: !4404)
!4481 = !DILocation(line: 904, column: 3, scope: !4478)
!4482 = !DILocation(line: 911, column: 25, scope: !4404)
!4483 = !DILocation(line: 911, column: 13, scope: !4404)
!4484 = !DILocation(line: 911, column: 11, scope: !4404)
!4485 = !DILocation(line: 912, column: 2, scope: !4404)
!4486 = !DILabel(scope: !4404, name: "exit_unregister", file: !3, line: 914)
!4487 = !DILocation(line: 914, column: 1, scope: !4404)
!4488 = !DILocation(line: 915, column: 2, scope: !4404)
!4489 = !DILabel(scope: !4404, name: "exit", file: !3, line: 916)
!4490 = !DILocation(line: 916, column: 1, scope: !4404)
!4491 = !DILocation(line: 917, column: 2, scope: !4404)
!4492 = !DILocation(line: 918, column: 1, scope: !4404)
!4493 = distinct !DISubprogram(name: "via686a_device_add", scope: !3, file: !3, line: 817, type: !4494, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!190, !132}
!4496 = !DILocalVariable(name: "address", arg: 1, scope: !4493, file: !3, line: 817, type: !132)
!4497 = !DILocation(line: 817, column: 46, scope: !4493)
!4498 = !DILocalVariable(name: "res", scope: !4493, file: !3, line: 819, type: !3947)
!4499 = !DILocation(line: 819, column: 18, scope: !4493)
!4500 = !DILocation(line: 819, column: 24, scope: !4493)
!4501 = !DILocation(line: 820, column: 12, scope: !4493)
!4502 = !DILocation(line: 821, column: 10, scope: !4493)
!4503 = !DILocation(line: 821, column: 18, scope: !4493)
!4504 = !DILocation(line: 821, column: 35, scope: !4493)
!4505 = !DILocalVariable(name: "err", scope: !4493, file: !3, line: 825, type: !190)
!4506 = !DILocation(line: 825, column: 6, scope: !4493)
!4507 = !DILocation(line: 827, column: 8, scope: !4493)
!4508 = !DILocation(line: 827, column: 6, scope: !4493)
!4509 = !DILocation(line: 828, column: 6, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 828, column: 6)
!4511 = !DILocation(line: 828, column: 6, scope: !4493)
!4512 = !DILocation(line: 829, column: 3, scope: !4510)
!4513 = !DILocation(line: 831, column: 42, scope: !4493)
!4514 = !DILocation(line: 831, column: 9, scope: !4493)
!4515 = !DILocation(line: 831, column: 7, scope: !4493)
!4516 = !DILocation(line: 832, column: 7, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 832, column: 6)
!4518 = !DILocation(line: 832, column: 6, scope: !4493)
!4519 = !DILocation(line: 833, column: 7, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 832, column: 13)
!4521 = !DILocation(line: 834, column: 3, scope: !4520)
!4522 = !DILocation(line: 835, column: 3, scope: !4520)
!4523 = !DILocation(line: 838, column: 38, scope: !4493)
!4524 = !DILocation(line: 838, column: 8, scope: !4493)
!4525 = !DILocation(line: 838, column: 6, scope: !4493)
!4526 = !DILocation(line: 839, column: 6, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 839, column: 6)
!4528 = !DILocation(line: 839, column: 6, scope: !4493)
!4529 = !DILocation(line: 840, column: 3, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4527, file: !3, line: 839, column: 11)
!4531 = !DILocation(line: 841, column: 3, scope: !4530)
!4532 = !DILocation(line: 844, column: 28, scope: !4493)
!4533 = !DILocation(line: 844, column: 8, scope: !4493)
!4534 = !DILocation(line: 844, column: 6, scope: !4493)
!4535 = !DILocation(line: 845, column: 6, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 845, column: 6)
!4537 = !DILocation(line: 845, column: 6, scope: !4493)
!4538 = !DILocation(line: 846, column: 3, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 845, column: 11)
!4540 = !DILocation(line: 847, column: 3, scope: !4539)
!4541 = !DILocation(line: 850, column: 2, scope: !4493)
!4542 = !DILabel(scope: !4493, name: "exit_device_put", file: !3, line: 852)
!4543 = !DILocation(line: 852, column: 1, scope: !4493)
!4544 = !DILocation(line: 853, column: 22, scope: !4493)
!4545 = !DILocation(line: 853, column: 2, scope: !4493)
!4546 = !DILabel(scope: !4493, name: "exit", file: !3, line: 854)
!4547 = !DILocation(line: 854, column: 1, scope: !4493)
!4548 = !DILocation(line: 855, column: 9, scope: !4493)
!4549 = !DILocation(line: 855, column: 2, scope: !4493)
!4550 = !DILocation(line: 856, column: 1, scope: !4493)
!4551 = !DILocalVariable(name: "pdev", arg: 1, scope: !4267, file: !3, line: 666, type: !3934)
!4552 = !DILocation(line: 666, column: 50, scope: !4267)
!4553 = !DILocalVariable(name: "data", scope: !4267, file: !3, line: 668, type: !4554)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "via686a_data", file: !3, line: 302, size: 832, elements: !4556)
!4556 = !{!4557, !4558, !4559, !4560, !4561, !4562, !4563, !4567, !4568, !4569, !4571, !4572, !4574, !4576, !4577, !4578}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4555, file: !3, line: 303, baseType: !132, size: 16)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4555, file: !3, line: 304, baseType: !127, size: 64, offset: 64)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "hwmon_dev", scope: !4555, file: !3, line: 305, baseType: !142, size: 64, offset: 128)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "update_lock", scope: !4555, file: !3, line: 306, baseType: !1092, size: 192, offset: 192)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4555, file: !3, line: 307, baseType: !129, size: 8, offset: 384)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "last_updated", scope: !4555, file: !3, line: 308, baseType: !112, size: 64, offset: 448)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !4555, file: !3, line: 310, baseType: !4564, size: 40, offset: 512)
!4564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 40, elements: !4565)
!4565 = !{!4566}
!4566 = !DISubrange(count: 5)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "in_max", scope: !4555, file: !3, line: 311, baseType: !4564, size: 40, offset: 552)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "in_min", scope: !4555, file: !3, line: 312, baseType: !4564, size: 40, offset: 592)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "fan", scope: !4555, file: !3, line: 313, baseType: !4570, size: 16, offset: 632)
!4570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 16, elements: !1488)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "fan_min", scope: !4555, file: !3, line: 314, baseType: !4570, size: 16, offset: 648)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !4555, file: !3, line: 315, baseType: !4573, size: 48, offset: 672)
!4573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 48, elements: !207)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "temp_over", scope: !4555, file: !3, line: 316, baseType: !4575, size: 24, offset: 720)
!4575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 24, elements: !207)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "temp_hyst", scope: !4555, file: !3, line: 317, baseType: !4575, size: 24, offset: 744)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "fan_div", scope: !4555, file: !3, line: 318, baseType: !4570, size: 16, offset: 768)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "alarms", scope: !4555, file: !3, line: 319, baseType: !778, size: 16, offset: 784)
!4579 = !DILocation(line: 668, column: 23, scope: !4267)
!4580 = !DILocalVariable(name: "res", scope: !4267, file: !3, line: 669, type: !3946)
!4581 = !DILocation(line: 669, column: 19, scope: !4267)
!4582 = !DILocalVariable(name: "err", scope: !4267, file: !3, line: 670, type: !190)
!4583 = !DILocation(line: 670, column: 6, scope: !4267)
!4584 = !DILocation(line: 673, column: 30, scope: !4267)
!4585 = !DILocation(line: 673, column: 8, scope: !4267)
!4586 = !DILocation(line: 673, column: 6, scope: !4267)
!4587 = !DILocation(line: 674, column: 7, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 674, column: 6)
!4589 = !DILocation(line: 674, column: 6, scope: !4267)
!4590 = !DILocation(line: 676, column: 3, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4588, file: !3, line: 675, column: 35)
!4592 = !DILocation(line: 678, column: 3, scope: !4591)
!4593 = !DILocation(line: 681, column: 23, scope: !4267)
!4594 = !DILocation(line: 681, column: 29, scope: !4267)
!4595 = !DILocation(line: 681, column: 9, scope: !4267)
!4596 = !DILocation(line: 681, column: 7, scope: !4267)
!4597 = !DILocation(line: 683, column: 7, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 683, column: 6)
!4599 = !DILocation(line: 683, column: 6, scope: !4267)
!4600 = !DILocation(line: 684, column: 3, scope: !4598)
!4601 = !DILocation(line: 686, column: 23, scope: !4267)
!4602 = !DILocation(line: 686, column: 29, scope: !4267)
!4603 = !DILocation(line: 686, column: 2, scope: !4267)
!4604 = !DILocation(line: 687, column: 15, scope: !4267)
!4605 = !DILocation(line: 687, column: 20, scope: !4267)
!4606 = !DILocation(line: 687, column: 2, scope: !4267)
!4607 = !DILocation(line: 687, column: 8, scope: !4267)
!4608 = !DILocation(line: 687, column: 13, scope: !4267)
!4609 = !DILocation(line: 688, column: 2, scope: !4267)
!4610 = !DILocation(line: 688, column: 8, scope: !4267)
!4611 = !DILocation(line: 688, column: 13, scope: !4267)
!4612 = !DILocation(line: 689, column: 2, scope: !4267)
!4613 = !DILocation(line: 689, column: 2, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 689, column: 2)
!4615 = !DILocation(line: 692, column: 22, scope: !4267)
!4616 = !DILocation(line: 692, column: 2, scope: !4267)
!4617 = !DILocation(line: 695, column: 28, scope: !4267)
!4618 = !DILocation(line: 695, column: 34, scope: !4267)
!4619 = !DILocation(line: 695, column: 38, scope: !4267)
!4620 = !DILocation(line: 695, column: 8, scope: !4267)
!4621 = !DILocation(line: 695, column: 6, scope: !4267)
!4622 = !DILocation(line: 696, column: 6, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 696, column: 6)
!4624 = !DILocation(line: 696, column: 6, scope: !4267)
!4625 = !DILocation(line: 697, column: 10, scope: !4623)
!4626 = !DILocation(line: 697, column: 3, scope: !4623)
!4627 = !DILocation(line: 699, column: 43, scope: !4267)
!4628 = !DILocation(line: 699, column: 49, scope: !4267)
!4629 = !DILocation(line: 699, column: 20, scope: !4267)
!4630 = !DILocation(line: 699, column: 2, scope: !4267)
!4631 = !DILocation(line: 699, column: 8, scope: !4267)
!4632 = !DILocation(line: 699, column: 18, scope: !4267)
!4633 = !DILocation(line: 700, column: 13, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 700, column: 6)
!4635 = !DILocation(line: 700, column: 19, scope: !4634)
!4636 = !DILocation(line: 700, column: 6, scope: !4634)
!4637 = !DILocation(line: 700, column: 6, scope: !4267)
!4638 = !DILocation(line: 701, column: 17, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 700, column: 31)
!4640 = !DILocation(line: 701, column: 23, scope: !4639)
!4641 = !DILocation(line: 701, column: 9, scope: !4639)
!4642 = !DILocation(line: 701, column: 7, scope: !4639)
!4643 = !DILocation(line: 702, column: 3, scope: !4639)
!4644 = !DILocation(line: 705, column: 2, scope: !4267)
!4645 = !DILabel(scope: !4267, name: "exit_remove_files", file: !3, line: 707)
!4646 = !DILocation(line: 707, column: 1, scope: !4267)
!4647 = !DILocation(line: 708, column: 22, scope: !4267)
!4648 = !DILocation(line: 708, column: 28, scope: !4267)
!4649 = !DILocation(line: 708, column: 32, scope: !4267)
!4650 = !DILocation(line: 708, column: 2, scope: !4267)
!4651 = !DILocation(line: 709, column: 9, scope: !4267)
!4652 = !DILocation(line: 709, column: 2, scope: !4267)
!4653 = !DILocation(line: 710, column: 1, scope: !4267)
!4654 = distinct !DISubprogram(name: "via686a_remove", scope: !3, file: !3, line: 712, type: !4250, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4655 = !DILocalVariable(name: "pdev", arg: 1, scope: !4654, file: !3, line: 712, type: !3934)
!4656 = !DILocation(line: 712, column: 51, scope: !4654)
!4657 = !DILocalVariable(name: "data", scope: !4654, file: !3, line: 714, type: !4554)
!4658 = !DILocation(line: 714, column: 23, scope: !4654)
!4659 = !DILocation(line: 714, column: 51, scope: !4654)
!4660 = !DILocation(line: 714, column: 30, scope: !4654)
!4661 = !DILocation(line: 716, column: 26, scope: !4654)
!4662 = !DILocation(line: 716, column: 32, scope: !4654)
!4663 = !DILocation(line: 716, column: 2, scope: !4654)
!4664 = !DILocation(line: 717, column: 22, scope: !4654)
!4665 = !DILocation(line: 717, column: 28, scope: !4654)
!4666 = !DILocation(line: 717, column: 32, scope: !4654)
!4667 = !DILocation(line: 717, column: 2, scope: !4654)
!4668 = !DILocation(line: 719, column: 2, scope: !4654)
!4669 = distinct !DISubprogram(name: "devm_kzalloc", scope: !73, file: !73, line: 215, type: !4670, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!108, !142, !241, !113}
!4672 = !DILocalVariable(name: "dev", arg: 1, scope: !4669, file: !73, line: 215, type: !142)
!4673 = !DILocation(line: 215, column: 49, scope: !4669)
!4674 = !DILocalVariable(name: "size", arg: 2, scope: !4669, file: !73, line: 215, type: !241)
!4675 = !DILocation(line: 215, column: 61, scope: !4669)
!4676 = !DILocalVariable(name: "gfp", arg: 3, scope: !4669, file: !73, line: 215, type: !113)
!4677 = !DILocation(line: 215, column: 73, scope: !4669)
!4678 = !DILocation(line: 217, column: 22, scope: !4669)
!4679 = !DILocation(line: 217, column: 27, scope: !4669)
!4680 = !DILocation(line: 217, column: 33, scope: !4669)
!4681 = !DILocation(line: 217, column: 37, scope: !4669)
!4682 = !DILocation(line: 217, column: 9, scope: !4669)
!4683 = !DILocation(line: 217, column: 2, scope: !4669)
!4684 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !3936, file: !3936, line: 236, type: !4685, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{null, !3934, !108}
!4687 = !DILocalVariable(name: "pdev", arg: 1, scope: !4684, file: !3936, line: 236, type: !3934)
!4688 = !DILocation(line: 236, column: 65, scope: !4684)
!4689 = !DILocalVariable(name: "data", arg: 2, scope: !4684, file: !3936, line: 237, type: !108)
!4690 = !DILocation(line: 237, column: 12, scope: !4684)
!4691 = !DILocation(line: 239, column: 19, scope: !4684)
!4692 = !DILocation(line: 239, column: 25, scope: !4684)
!4693 = !DILocation(line: 239, column: 30, scope: !4684)
!4694 = !DILocation(line: 239, column: 2, scope: !4684)
!4695 = !DILocation(line: 240, column: 1, scope: !4684)
!4696 = distinct !DISubprogram(name: "via686a_init_device", scope: !3, file: !3, line: 729, type: !4697, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{null, !4554}
!4699 = !DILocalVariable(name: "data", arg: 1, scope: !4696, file: !3, line: 729, type: !4554)
!4700 = !DILocation(line: 729, column: 54, scope: !4696)
!4701 = !DILocalVariable(name: "reg", scope: !4696, file: !3, line: 731, type: !1271)
!4702 = !DILocation(line: 731, column: 5, scope: !4696)
!4703 = !DILocation(line: 734, column: 27, scope: !4696)
!4704 = !DILocation(line: 734, column: 8, scope: !4696)
!4705 = !DILocation(line: 734, column: 6, scope: !4696)
!4706 = !DILocation(line: 735, column: 22, scope: !4696)
!4707 = !DILocation(line: 735, column: 49, scope: !4696)
!4708 = !DILocation(line: 735, column: 53, scope: !4696)
!4709 = !DILocation(line: 735, column: 61, scope: !4696)
!4710 = !DILocation(line: 735, column: 48, scope: !4696)
!4711 = !DILocation(line: 735, column: 2, scope: !4696)
!4712 = !DILocation(line: 738, column: 27, scope: !4696)
!4713 = !DILocation(line: 738, column: 8, scope: !4696)
!4714 = !DILocation(line: 738, column: 6, scope: !4696)
!4715 = !DILocation(line: 739, column: 22, scope: !4696)
!4716 = !DILocation(line: 740, column: 9, scope: !4696)
!4717 = !DILocation(line: 740, column: 13, scope: !4696)
!4718 = !DILocation(line: 740, column: 8, scope: !4696)
!4719 = !DILocation(line: 739, column: 2, scope: !4696)
!4720 = !DILocation(line: 744, column: 25, scope: !4696)
!4721 = !DILocation(line: 744, column: 2, scope: !4696)
!4722 = !DILocation(line: 745, column: 1, scope: !4696)
!4723 = distinct !DISubprogram(name: "IS_ERR", scope: !4724, file: !4724, line: 34, type: !4725, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4724 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!409, !2048}
!4727 = !DILocalVariable(name: "ptr", arg: 1, scope: !4723, file: !4724, line: 34, type: !2048)
!4728 = !DILocation(line: 34, column: 60, scope: !4723)
!4729 = !DILocation(line: 36, column: 9, scope: !4723)
!4730 = !DILocation(line: 36, column: 2, scope: !4723)
!4731 = distinct !DISubprogram(name: "PTR_ERR", scope: !4724, file: !4724, line: 29, type: !4732, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{!141, !2048}
!4734 = !DILocalVariable(name: "ptr", arg: 1, scope: !4731, file: !4724, line: 29, type: !2048)
!4735 = !DILocation(line: 29, column: 61, scope: !4731)
!4736 = !DILocation(line: 31, column: 16, scope: !4731)
!4737 = !DILocation(line: 31, column: 9, scope: !4731)
!4738 = !DILocation(line: 31, column: 2, scope: !4731)
!4739 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !4740, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{null, !142, !108}
!4742 = !DILocalVariable(name: "dev", arg: 1, scope: !4739, file: !73, line: 660, type: !142)
!4743 = !DILocation(line: 660, column: 51, scope: !4739)
!4744 = !DILocalVariable(name: "data", arg: 2, scope: !4739, file: !73, line: 660, type: !108)
!4745 = !DILocation(line: 660, column: 62, scope: !4739)
!4746 = !DILocation(line: 662, column: 21, scope: !4739)
!4747 = !DILocation(line: 662, column: 2, scope: !4739)
!4748 = !DILocation(line: 662, column: 7, scope: !4739)
!4749 = !DILocation(line: 662, column: 19, scope: !4739)
!4750 = !DILocation(line: 663, column: 1, scope: !4739)
!4751 = distinct !DISubprogram(name: "via686a_read_value", scope: !3, file: !3, line: 327, type: !4752, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!190, !4554, !1271}
!4754 = !DILocalVariable(name: "data", arg: 1, scope: !4751, file: !3, line: 327, type: !4554)
!4755 = !DILocation(line: 327, column: 59, scope: !4751)
!4756 = !DILocalVariable(name: "reg", arg: 2, scope: !4751, file: !3, line: 327, type: !1271)
!4757 = !DILocation(line: 327, column: 68, scope: !4751)
!4758 = !DILocation(line: 329, column: 15, scope: !4751)
!4759 = !DILocation(line: 329, column: 21, scope: !4751)
!4760 = !DILocation(line: 329, column: 28, scope: !4751)
!4761 = !DILocation(line: 329, column: 26, scope: !4751)
!4762 = !DILocation(line: 329, column: 9, scope: !4751)
!4763 = !DILocation(line: 329, column: 2, scope: !4751)
!4764 = distinct !DISubprogram(name: "via686a_write_value", scope: !3, file: !3, line: 332, type: !4765, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{null, !4554, !1271, !1271}
!4767 = !DILocalVariable(name: "data", arg: 1, scope: !4764, file: !3, line: 332, type: !4554)
!4768 = !DILocation(line: 332, column: 61, scope: !4764)
!4769 = !DILocalVariable(name: "reg", arg: 2, scope: !4764, file: !3, line: 332, type: !1271)
!4770 = !DILocation(line: 332, column: 70, scope: !4764)
!4771 = !DILocalVariable(name: "value", arg: 3, scope: !4764, file: !3, line: 333, type: !1271)
!4772 = !DILocation(line: 333, column: 15, scope: !4764)
!4773 = !DILocation(line: 335, column: 9, scope: !4764)
!4774 = !DILocation(line: 335, column: 16, scope: !4764)
!4775 = !DILocation(line: 335, column: 22, scope: !4764)
!4776 = !DILocation(line: 335, column: 29, scope: !4764)
!4777 = !DILocation(line: 335, column: 27, scope: !4764)
!4778 = !DILocation(line: 335, column: 2, scope: !4764)
!4779 = !DILocation(line: 336, column: 1, scope: !4764)
!4780 = distinct !DISubprogram(name: "via686a_update_fan_div", scope: !3, file: !3, line: 722, type: !4697, scopeLine: 723, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4781 = !DILocalVariable(name: "data", arg: 1, scope: !4780, file: !3, line: 722, type: !4554)
!4782 = !DILocation(line: 722, column: 57, scope: !4780)
!4783 = !DILocalVariable(name: "reg", scope: !4780, file: !3, line: 724, type: !190)
!4784 = !DILocation(line: 724, column: 6, scope: !4780)
!4785 = !DILocation(line: 724, column: 31, scope: !4780)
!4786 = !DILocation(line: 724, column: 12, scope: !4780)
!4787 = !DILocation(line: 725, column: 22, scope: !4780)
!4788 = !DILocation(line: 725, column: 26, scope: !4780)
!4789 = !DILocation(line: 725, column: 32, scope: !4780)
!4790 = !DILocation(line: 725, column: 21, scope: !4780)
!4791 = !DILocation(line: 725, column: 2, scope: !4780)
!4792 = !DILocation(line: 725, column: 8, scope: !4780)
!4793 = !DILocation(line: 725, column: 19, scope: !4780)
!4794 = !DILocation(line: 726, column: 21, scope: !4780)
!4795 = !DILocation(line: 726, column: 25, scope: !4780)
!4796 = !DILocation(line: 726, column: 2, scope: !4780)
!4797 = !DILocation(line: 726, column: 8, scope: !4780)
!4798 = !DILocation(line: 726, column: 19, scope: !4780)
!4799 = !DILocation(line: 727, column: 1, scope: !4780)
!4800 = distinct !DISubprogram(name: "inb_p", scope: !4801, file: !4801, line: 334, type: !4802, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4801 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!346, !190}
!4804 = !DILocalVariable(name: "port", arg: 1, scope: !4800, file: !4801, line: 334, type: !190)
!4805 = !DILocation(line: 334, column: 1, scope: !4800)
!4806 = !DILocalVariable(name: "value", scope: !4800, file: !4801, line: 334, type: !346)
!4807 = distinct !DISubprogram(name: "inb", scope: !4801, file: !4801, line: 334, type: !4802, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4808 = !DILocalVariable(name: "port", arg: 1, scope: !4807, file: !4801, line: 334, type: !190)
!4809 = !DILocation(line: 334, column: 1, scope: !4807)
!4810 = !DILocalVariable(name: "value", scope: !4807, file: !4801, line: 334, type: !346)
!4811 = !{i32 -2143303999}
!4812 = distinct !DISubprogram(name: "slow_down_io", scope: !4813, file: !4813, line: 40, type: !1799, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4813 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4814 = !DILocation(line: 42, column: 13, scope: !4812)
!4815 = !DILocation(line: 42, column: 2, scope: !4812)
!4816 = !DILocation(line: 48, column: 1, scope: !4812)
!4817 = distinct !DISubprogram(name: "outb_p", scope: !4801, file: !4801, line: 334, type: !4818, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{null, !346, !190}
!4820 = !DILocalVariable(name: "value", arg: 1, scope: !4817, file: !4801, line: 334, type: !346)
!4821 = !DILocation(line: 334, column: 1, scope: !4817)
!4822 = !DILocalVariable(name: "port", arg: 2, scope: !4817, file: !4801, line: 334, type: !190)
!4823 = distinct !DISubprogram(name: "outb", scope: !4801, file: !4801, line: 334, type: !4818, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4824 = !DILocalVariable(name: "value", arg: 1, scope: !4823, file: !4801, line: 334, type: !346)
!4825 = !DILocation(line: 334, column: 1, scope: !4823)
!4826 = !DILocalVariable(name: "port", arg: 2, scope: !4823, file: !4801, line: 334, type: !190)
!4827 = !{i32 -2143304201}
!4828 = distinct !DISubprogram(name: "in_show", scope: !3, file: !3, line: 344, type: !135, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4829 = !DILocalVariable(name: "dev", arg: 1, scope: !4828, file: !3, line: 344, type: !142)
!4830 = !DILocation(line: 344, column: 39, scope: !4828)
!4831 = !DILocalVariable(name: "da", arg: 2, scope: !4828, file: !3, line: 344, type: !3839)
!4832 = !DILocation(line: 344, column: 69, scope: !4828)
!4833 = !DILocalVariable(name: "buf", arg: 3, scope: !4828, file: !3, line: 345, type: !206)
!4834 = !DILocation(line: 345, column: 16, scope: !4828)
!4835 = !DILocalVariable(name: "data", scope: !4828, file: !3, line: 346, type: !4554)
!4836 = !DILocation(line: 346, column: 23, scope: !4828)
!4837 = !DILocation(line: 346, column: 52, scope: !4828)
!4838 = !DILocation(line: 346, column: 30, scope: !4828)
!4839 = !DILocalVariable(name: "attr", scope: !4828, file: !3, line: 347, type: !115)
!4840 = !DILocation(line: 347, column: 34, scope: !4828)
!4841 = !DILocalVariable(name: "__mptr", scope: !4842, file: !3, line: 347, type: !108)
!4842 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 347, column: 41)
!4843 = !DILocation(line: 347, column: 41, scope: !4842)
!4844 = !DILocation(line: 347, column: 41, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 347, column: 41)
!4846 = !DILocalVariable(name: "nr", scope: !4828, file: !3, line: 348, type: !190)
!4847 = !DILocation(line: 348, column: 6, scope: !4828)
!4848 = !DILocation(line: 348, column: 11, scope: !4828)
!4849 = !DILocation(line: 348, column: 17, scope: !4828)
!4850 = !DILocation(line: 349, column: 17, scope: !4828)
!4851 = !DILocation(line: 349, column: 43, scope: !4828)
!4852 = !DILocation(line: 349, column: 49, scope: !4828)
!4853 = !DILocation(line: 349, column: 52, scope: !4828)
!4854 = !DILocation(line: 349, column: 57, scope: !4828)
!4855 = !DILocation(line: 349, column: 31, scope: !4828)
!4856 = !DILocation(line: 349, column: 9, scope: !4828)
!4857 = !DILocation(line: 349, column: 2, scope: !4828)
!4858 = distinct !DISubprogram(name: "via686a_update_device", scope: !3, file: !3, line: 747, type: !4859, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!4554, !142}
!4861 = !DILocalVariable(name: "dev", arg: 1, scope: !4858, file: !3, line: 747, type: !142)
!4862 = !DILocation(line: 747, column: 66, scope: !4858)
!4863 = !DILocalVariable(name: "data", scope: !4858, file: !3, line: 749, type: !4554)
!4864 = !DILocation(line: 749, column: 23, scope: !4858)
!4865 = !DILocation(line: 749, column: 46, scope: !4858)
!4866 = !DILocation(line: 749, column: 30, scope: !4858)
!4867 = !DILocalVariable(name: "i", scope: !4858, file: !3, line: 750, type: !190)
!4868 = !DILocation(line: 750, column: 6, scope: !4858)
!4869 = !DILocation(line: 752, column: 14, scope: !4858)
!4870 = !DILocation(line: 752, column: 20, scope: !4858)
!4871 = !DILocation(line: 752, column: 2, scope: !4858)
!4872 = !DILocation(line: 754, column: 6, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4858, file: !3, line: 754, column: 6)
!4874 = !DILocation(line: 755, column: 6, scope: !4873)
!4875 = !DILocation(line: 755, column: 10, scope: !4873)
!4876 = !DILocation(line: 755, column: 16, scope: !4873)
!4877 = !DILocation(line: 754, column: 6, scope: !4858)
!4878 = !DILocation(line: 756, column: 10, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 756, column: 3)
!4880 = distinct !DILexicalBlock(scope: !4873, file: !3, line: 755, column: 23)
!4881 = !DILocation(line: 756, column: 8, scope: !4879)
!4882 = !DILocation(line: 756, column: 15, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4879, file: !3, line: 756, column: 3)
!4884 = !DILocation(line: 756, column: 17, scope: !4883)
!4885 = !DILocation(line: 756, column: 3, scope: !4879)
!4886 = !DILocation(line: 758, column: 27, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 756, column: 28)
!4888 = !DILocation(line: 758, column: 33, scope: !4887)
!4889 = !DILocation(line: 758, column: 8, scope: !4887)
!4890 = !DILocation(line: 757, column: 4, scope: !4887)
!4891 = !DILocation(line: 757, column: 10, scope: !4887)
!4892 = !DILocation(line: 757, column: 13, scope: !4887)
!4893 = !DILocation(line: 757, column: 16, scope: !4887)
!4894 = !DILocation(line: 759, column: 41, scope: !4887)
!4895 = !DILocation(line: 760, column: 13, scope: !4887)
!4896 = !DILocation(line: 759, column: 22, scope: !4887)
!4897 = !DILocation(line: 759, column: 4, scope: !4887)
!4898 = !DILocation(line: 759, column: 10, scope: !4887)
!4899 = !DILocation(line: 759, column: 17, scope: !4887)
!4900 = !DILocation(line: 759, column: 20, scope: !4887)
!4901 = !DILocation(line: 763, column: 27, scope: !4887)
!4902 = !DILocation(line: 763, column: 33, scope: !4887)
!4903 = !DILocation(line: 763, column: 8, scope: !4887)
!4904 = !DILocation(line: 762, column: 4, scope: !4887)
!4905 = !DILocation(line: 762, column: 10, scope: !4887)
!4906 = !DILocation(line: 762, column: 17, scope: !4887)
!4907 = !DILocation(line: 762, column: 20, scope: !4887)
!4908 = !DILocation(line: 764, column: 3, scope: !4887)
!4909 = !DILocation(line: 756, column: 24, scope: !4883)
!4910 = !DILocation(line: 756, column: 3, scope: !4883)
!4911 = distinct !{!4911, !4885, !4912}
!4912 = !DILocation(line: 764, column: 3, scope: !4879)
!4913 = !DILocation(line: 765, column: 10, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 765, column: 3)
!4915 = !DILocation(line: 765, column: 8, scope: !4914)
!4916 = !DILocation(line: 765, column: 15, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4914, file: !3, line: 765, column: 3)
!4918 = !DILocation(line: 765, column: 17, scope: !4917)
!4919 = !DILocation(line: 765, column: 3, scope: !4914)
!4920 = !DILocation(line: 767, column: 27, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4917, file: !3, line: 765, column: 28)
!4922 = !DILocation(line: 767, column: 33, scope: !4921)
!4923 = !DILocation(line: 767, column: 8, scope: !4921)
!4924 = !DILocation(line: 766, column: 4, scope: !4921)
!4925 = !DILocation(line: 766, column: 10, scope: !4921)
!4926 = !DILocation(line: 766, column: 14, scope: !4921)
!4927 = !DILocation(line: 766, column: 16, scope: !4921)
!4928 = !DILocation(line: 766, column: 21, scope: !4921)
!4929 = !DILocation(line: 768, column: 46, scope: !4921)
!4930 = !DILocation(line: 769, column: 12, scope: !4921)
!4931 = !DILocation(line: 768, column: 27, scope: !4921)
!4932 = !DILocation(line: 768, column: 4, scope: !4921)
!4933 = !DILocation(line: 768, column: 10, scope: !4921)
!4934 = !DILocation(line: 768, column: 18, scope: !4921)
!4935 = !DILocation(line: 768, column: 20, scope: !4921)
!4936 = !DILocation(line: 768, column: 25, scope: !4921)
!4937 = !DILocation(line: 770, column: 3, scope: !4921)
!4938 = !DILocation(line: 765, column: 24, scope: !4917)
!4939 = !DILocation(line: 765, column: 3, scope: !4917)
!4940 = distinct !{!4940, !4919, !4941}
!4941 = !DILocation(line: 770, column: 3, scope: !4914)
!4942 = !DILocation(line: 771, column: 10, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 771, column: 3)
!4944 = !DILocation(line: 771, column: 8, scope: !4943)
!4945 = !DILocation(line: 771, column: 15, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4943, file: !3, line: 771, column: 3)
!4947 = !DILocation(line: 771, column: 17, scope: !4946)
!4948 = !DILocation(line: 771, column: 3, scope: !4943)
!4949 = !DILocation(line: 772, column: 39, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4946, file: !3, line: 771, column: 28)
!4951 = !DILocation(line: 773, column: 25, scope: !4950)
!4952 = !DILocation(line: 773, column: 8, scope: !4950)
!4953 = !DILocation(line: 772, column: 20, scope: !4950)
!4954 = !DILocation(line: 773, column: 29, scope: !4950)
!4955 = !DILocation(line: 772, column: 4, scope: !4950)
!4956 = !DILocation(line: 772, column: 10, scope: !4950)
!4957 = !DILocation(line: 772, column: 15, scope: !4950)
!4958 = !DILocation(line: 772, column: 18, scope: !4950)
!4959 = !DILocation(line: 775, column: 27, scope: !4950)
!4960 = !DILocation(line: 776, column: 35, scope: !4950)
!4961 = !DILocation(line: 776, column: 13, scope: !4950)
!4962 = !DILocation(line: 775, column: 8, scope: !4950)
!4963 = !DILocation(line: 774, column: 4, scope: !4950)
!4964 = !DILocation(line: 774, column: 10, scope: !4950)
!4965 = !DILocation(line: 774, column: 20, scope: !4950)
!4966 = !DILocation(line: 774, column: 23, scope: !4950)
!4967 = !DILocation(line: 778, column: 27, scope: !4950)
!4968 = !DILocation(line: 779, column: 35, scope: !4950)
!4969 = !DILocation(line: 779, column: 13, scope: !4950)
!4970 = !DILocation(line: 778, column: 8, scope: !4950)
!4971 = !DILocation(line: 777, column: 4, scope: !4950)
!4972 = !DILocation(line: 777, column: 10, scope: !4950)
!4973 = !DILocation(line: 777, column: 20, scope: !4950)
!4974 = !DILocation(line: 777, column: 23, scope: !4950)
!4975 = !DILocation(line: 780, column: 3, scope: !4950)
!4976 = !DILocation(line: 771, column: 24, scope: !4946)
!4977 = !DILocation(line: 771, column: 3, scope: !4946)
!4978 = distinct !{!4978, !4948, !4979}
!4979 = !DILocation(line: 780, column: 3, scope: !4943)
!4980 = !DILocation(line: 787, column: 40, scope: !4880)
!4981 = !DILocation(line: 787, column: 21, scope: !4880)
!4982 = !DILocation(line: 789, column: 7, scope: !4880)
!4983 = !DILocation(line: 789, column: 15, scope: !4880)
!4984 = !DILocation(line: 787, column: 3, scope: !4880)
!4985 = !DILocation(line: 787, column: 9, scope: !4880)
!4986 = !DILocation(line: 787, column: 17, scope: !4880)
!4987 = !DILocation(line: 791, column: 27, scope: !4880)
!4988 = !DILocation(line: 791, column: 8, scope: !4880)
!4989 = !DILocation(line: 791, column: 57, scope: !4880)
!4990 = !DILocation(line: 792, column: 14, scope: !4880)
!4991 = !DILocation(line: 790, column: 3, scope: !4880)
!4992 = !DILocation(line: 790, column: 9, scope: !4880)
!4993 = !DILocation(line: 790, column: 17, scope: !4880)
!4994 = !DILocation(line: 794, column: 27, scope: !4880)
!4995 = !DILocation(line: 794, column: 8, scope: !4880)
!4996 = !DILocation(line: 794, column: 57, scope: !4880)
!4997 = !DILocation(line: 795, column: 14, scope: !4880)
!4998 = !DILocation(line: 793, column: 3, scope: !4880)
!4999 = !DILocation(line: 793, column: 9, scope: !4880)
!5000 = !DILocation(line: 793, column: 17, scope: !4880)
!5001 = !DILocation(line: 797, column: 26, scope: !4880)
!5002 = !DILocation(line: 797, column: 3, scope: !4880)
!5003 = !DILocation(line: 799, column: 26, scope: !4880)
!5004 = !DILocation(line: 799, column: 7, scope: !4880)
!5005 = !DILocation(line: 801, column: 27, scope: !4880)
!5006 = !DILocation(line: 801, column: 8, scope: !4880)
!5007 = !DILocation(line: 801, column: 53, scope: !4880)
!5008 = !DILocation(line: 800, column: 32, scope: !4880)
!5009 = !DILocation(line: 798, column: 3, scope: !4880)
!5010 = !DILocation(line: 798, column: 9, scope: !4880)
!5011 = !DILocation(line: 798, column: 16, scope: !4880)
!5012 = !DILocation(line: 802, column: 24, scope: !4880)
!5013 = !DILocation(line: 802, column: 3, scope: !4880)
!5014 = !DILocation(line: 802, column: 9, scope: !4880)
!5015 = !DILocation(line: 802, column: 22, scope: !4880)
!5016 = !DILocation(line: 803, column: 3, scope: !4880)
!5017 = !DILocation(line: 803, column: 9, scope: !4880)
!5018 = !DILocation(line: 803, column: 15, scope: !4880)
!5019 = !DILocation(line: 804, column: 2, scope: !4880)
!5020 = !DILocation(line: 806, column: 16, scope: !4858)
!5021 = !DILocation(line: 806, column: 22, scope: !4858)
!5022 = !DILocation(line: 806, column: 2, scope: !4858)
!5023 = !DILocation(line: 808, column: 9, scope: !4858)
!5024 = !DILocation(line: 808, column: 2, scope: !4858)
!5025 = distinct !DISubprogram(name: "IN_FROM_REG", scope: !3, file: !3, line: 134, type: !5026, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5026 = !DISubroutineType(types: !5027)
!5027 = !{!141, !1271, !190}
!5028 = !DILocalVariable(name: "val", arg: 1, scope: !5025, file: !3, line: 134, type: !1271)
!5029 = !DILocation(line: 134, column: 35, scope: !5025)
!5030 = !DILocalVariable(name: "in_num", arg: 2, scope: !5025, file: !3, line: 134, type: !190)
!5031 = !DILocation(line: 134, column: 44, scope: !5025)
!5032 = !DILocation(line: 141, column: 6, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 141, column: 6)
!5034 = !DILocation(line: 141, column: 13, scope: !5033)
!5035 = !DILocation(line: 141, column: 6, scope: !5025)
!5036 = !DILocation(line: 142, column: 28, scope: !5033)
!5037 = !DILocation(line: 142, column: 26, scope: !5033)
!5038 = !DILocation(line: 142, column: 32, scope: !5033)
!5039 = !DILocation(line: 142, column: 42, scope: !5033)
!5040 = !DILocation(line: 142, column: 55, scope: !5033)
!5041 = !DILocation(line: 142, column: 10, scope: !5033)
!5042 = !DILocation(line: 142, column: 3, scope: !5033)
!5043 = !DILocation(line: 143, column: 11, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 143, column: 11)
!5045 = !DILocation(line: 143, column: 18, scope: !5044)
!5046 = !DILocation(line: 143, column: 11, scope: !5033)
!5047 = !DILocation(line: 144, column: 28, scope: !5044)
!5048 = !DILocation(line: 144, column: 26, scope: !5044)
!5049 = !DILocation(line: 144, column: 32, scope: !5044)
!5050 = !DILocation(line: 144, column: 42, scope: !5044)
!5051 = !DILocation(line: 144, column: 55, scope: !5044)
!5052 = !DILocation(line: 144, column: 10, scope: !5044)
!5053 = !DILocation(line: 144, column: 3, scope: !5044)
!5054 = !DILocation(line: 145, column: 11, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5044, file: !3, line: 145, column: 11)
!5056 = !DILocation(line: 145, column: 18, scope: !5055)
!5057 = !DILocation(line: 145, column: 11, scope: !5044)
!5058 = !DILocation(line: 146, column: 28, scope: !5055)
!5059 = !DILocation(line: 146, column: 26, scope: !5055)
!5060 = !DILocation(line: 146, column: 32, scope: !5055)
!5061 = !DILocation(line: 146, column: 42, scope: !5055)
!5062 = !DILocation(line: 146, column: 55, scope: !5055)
!5063 = !DILocation(line: 146, column: 10, scope: !5055)
!5064 = !DILocation(line: 146, column: 3, scope: !5055)
!5065 = !DILocation(line: 148, column: 29, scope: !5055)
!5066 = !DILocation(line: 148, column: 27, scope: !5055)
!5067 = !DILocation(line: 148, column: 33, scope: !5055)
!5068 = !DILocation(line: 148, column: 44, scope: !5055)
!5069 = !DILocation(line: 148, column: 57, scope: !5055)
!5070 = !DILocation(line: 148, column: 10, scope: !5055)
!5071 = !DILocation(line: 148, column: 3, scope: !5055)
!5072 = !DILocation(line: 149, column: 1, scope: !5025)
!5073 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !5074, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{!108, !3623}
!5076 = !DILocalVariable(name: "dev", arg: 1, scope: !5073, file: !73, line: 655, type: !3623)
!5077 = !DILocation(line: 655, column: 58, scope: !5073)
!5078 = !DILocation(line: 657, column: 9, scope: !5073)
!5079 = !DILocation(line: 657, column: 14, scope: !5073)
!5080 = !DILocation(line: 657, column: 2, scope: !5073)
!5081 = distinct !DISubprogram(name: "in_min_show", scope: !3, file: !3, line: 352, type: !135, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5082 = !DILocalVariable(name: "dev", arg: 1, scope: !5081, file: !3, line: 352, type: !142)
!5083 = !DILocation(line: 352, column: 43, scope: !5081)
!5084 = !DILocalVariable(name: "da", arg: 2, scope: !5081, file: !3, line: 352, type: !3839)
!5085 = !DILocation(line: 352, column: 73, scope: !5081)
!5086 = !DILocalVariable(name: "buf", arg: 3, scope: !5081, file: !3, line: 353, type: !206)
!5087 = !DILocation(line: 353, column: 13, scope: !5081)
!5088 = !DILocalVariable(name: "data", scope: !5081, file: !3, line: 354, type: !4554)
!5089 = !DILocation(line: 354, column: 23, scope: !5081)
!5090 = !DILocation(line: 354, column: 52, scope: !5081)
!5091 = !DILocation(line: 354, column: 30, scope: !5081)
!5092 = !DILocalVariable(name: "attr", scope: !5081, file: !3, line: 355, type: !115)
!5093 = !DILocation(line: 355, column: 34, scope: !5081)
!5094 = !DILocalVariable(name: "__mptr", scope: !5095, file: !3, line: 355, type: !108)
!5095 = distinct !DILexicalBlock(scope: !5081, file: !3, line: 355, column: 41)
!5096 = !DILocation(line: 355, column: 41, scope: !5095)
!5097 = !DILocation(line: 355, column: 41, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5095, file: !3, line: 355, column: 41)
!5099 = !DILocalVariable(name: "nr", scope: !5081, file: !3, line: 356, type: !190)
!5100 = !DILocation(line: 356, column: 6, scope: !5081)
!5101 = !DILocation(line: 356, column: 11, scope: !5081)
!5102 = !DILocation(line: 356, column: 17, scope: !5081)
!5103 = !DILocation(line: 357, column: 17, scope: !5081)
!5104 = !DILocation(line: 357, column: 43, scope: !5081)
!5105 = !DILocation(line: 357, column: 49, scope: !5081)
!5106 = !DILocation(line: 357, column: 56, scope: !5081)
!5107 = !DILocation(line: 357, column: 61, scope: !5081)
!5108 = !DILocation(line: 357, column: 31, scope: !5081)
!5109 = !DILocation(line: 357, column: 9, scope: !5081)
!5110 = !DILocation(line: 357, column: 2, scope: !5081)
!5111 = distinct !DISubprogram(name: "in_min_store", scope: !3, file: !3, line: 368, type: !3842, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5112 = !DILocalVariable(name: "dev", arg: 1, scope: !5111, file: !3, line: 368, type: !142)
!5113 = !DILocation(line: 368, column: 44, scope: !5111)
!5114 = !DILocalVariable(name: "da", arg: 2, scope: !5111, file: !3, line: 368, type: !3839)
!5115 = !DILocation(line: 368, column: 74, scope: !5111)
!5116 = !DILocalVariable(name: "buf", arg: 3, scope: !5111, file: !3, line: 369, type: !127)
!5117 = !DILocation(line: 369, column: 20, scope: !5111)
!5118 = !DILocalVariable(name: "count", arg: 4, scope: !5111, file: !3, line: 369, type: !241)
!5119 = !DILocation(line: 369, column: 32, scope: !5111)
!5120 = !DILocalVariable(name: "data", scope: !5111, file: !3, line: 370, type: !4554)
!5121 = !DILocation(line: 370, column: 23, scope: !5111)
!5122 = !DILocation(line: 370, column: 46, scope: !5111)
!5123 = !DILocation(line: 370, column: 30, scope: !5111)
!5124 = !DILocalVariable(name: "attr", scope: !5111, file: !3, line: 371, type: !115)
!5125 = !DILocation(line: 371, column: 34, scope: !5111)
!5126 = !DILocalVariable(name: "__mptr", scope: !5127, file: !3, line: 371, type: !108)
!5127 = distinct !DILexicalBlock(scope: !5111, file: !3, line: 371, column: 41)
!5128 = !DILocation(line: 371, column: 41, scope: !5127)
!5129 = !DILocation(line: 371, column: 41, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 371, column: 41)
!5131 = !DILocalVariable(name: "nr", scope: !5111, file: !3, line: 372, type: !190)
!5132 = !DILocation(line: 372, column: 6, scope: !5111)
!5133 = !DILocation(line: 372, column: 11, scope: !5111)
!5134 = !DILocation(line: 372, column: 17, scope: !5111)
!5135 = !DILocalVariable(name: "val", scope: !5111, file: !3, line: 373, type: !112)
!5136 = !DILocation(line: 373, column: 16, scope: !5111)
!5137 = !DILocalVariable(name: "err", scope: !5111, file: !3, line: 374, type: !190)
!5138 = !DILocation(line: 374, column: 6, scope: !5111)
!5139 = !DILocation(line: 376, column: 17, scope: !5111)
!5140 = !DILocation(line: 376, column: 8, scope: !5111)
!5141 = !DILocation(line: 376, column: 6, scope: !5111)
!5142 = !DILocation(line: 377, column: 6, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5111, file: !3, line: 377, column: 6)
!5144 = !DILocation(line: 377, column: 6, scope: !5111)
!5145 = !DILocation(line: 378, column: 10, scope: !5143)
!5146 = !DILocation(line: 378, column: 3, scope: !5143)
!5147 = !DILocation(line: 380, column: 14, scope: !5111)
!5148 = !DILocation(line: 380, column: 20, scope: !5111)
!5149 = !DILocation(line: 380, column: 2, scope: !5111)
!5150 = !DILocation(line: 381, column: 31, scope: !5111)
!5151 = !DILocation(line: 381, column: 36, scope: !5111)
!5152 = !DILocation(line: 381, column: 21, scope: !5111)
!5153 = !DILocation(line: 381, column: 2, scope: !5111)
!5154 = !DILocation(line: 381, column: 8, scope: !5111)
!5155 = !DILocation(line: 381, column: 15, scope: !5111)
!5156 = !DILocation(line: 381, column: 19, scope: !5111)
!5157 = !DILocation(line: 382, column: 22, scope: !5111)
!5158 = !DILocation(line: 382, column: 28, scope: !5111)
!5159 = !DILocation(line: 383, column: 4, scope: !5111)
!5160 = !DILocation(line: 383, column: 10, scope: !5111)
!5161 = !DILocation(line: 383, column: 17, scope: !5111)
!5162 = !DILocation(line: 382, column: 2, scope: !5111)
!5163 = !DILocation(line: 384, column: 16, scope: !5111)
!5164 = !DILocation(line: 384, column: 22, scope: !5111)
!5165 = !DILocation(line: 384, column: 2, scope: !5111)
!5166 = !DILocation(line: 385, column: 9, scope: !5111)
!5167 = !DILocation(line: 385, column: 2, scope: !5111)
!5168 = !DILocation(line: 386, column: 1, scope: !5111)
!5169 = distinct !DISubprogram(name: "kstrtoul", scope: !5170, file: !5170, line: 351, type: !5171, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5170 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!5171 = !DISubroutineType(types: !5172)
!5172 = !{!190, !127, !7, !3726}
!5173 = !DILocalVariable(name: "s", arg: 1, scope: !5169, file: !5170, line: 351, type: !127)
!5174 = !DILocation(line: 351, column: 53, scope: !5169)
!5175 = !DILocalVariable(name: "base", arg: 2, scope: !5169, file: !5170, line: 351, type: !7)
!5176 = !DILocation(line: 351, column: 69, scope: !5169)
!5177 = !DILocalVariable(name: "res", arg: 3, scope: !5169, file: !5170, line: 351, type: !3726)
!5178 = !DILocation(line: 351, column: 90, scope: !5169)
!5179 = !DILocation(line: 359, column: 20, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5169, file: !5170, line: 357, column: 6)
!5181 = !DILocation(line: 359, column: 23, scope: !5180)
!5182 = !DILocation(line: 359, column: 51, scope: !5180)
!5183 = !DILocation(line: 359, column: 10, scope: !5180)
!5184 = !DILocation(line: 359, column: 3, scope: !5180)
!5185 = distinct !DISubprogram(name: "IN_TO_REG", scope: !3, file: !3, line: 114, type: !5186, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{!1271, !141, !190}
!5188 = !DILocalVariable(name: "val", arg: 1, scope: !5185, file: !3, line: 114, type: !141)
!5189 = !DILocation(line: 114, column: 33, scope: !5185)
!5190 = !DILocalVariable(name: "in_num", arg: 2, scope: !5185, file: !3, line: 114, type: !190)
!5191 = !DILocation(line: 114, column: 42, scope: !5185)
!5192 = !DILocation(line: 123, column: 6, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 123, column: 6)
!5194 = !DILocation(line: 123, column: 13, scope: !5193)
!5195 = !DILocation(line: 123, column: 6, scope: !5185)
!5196 = !DILocalVariable(name: "__UNIQUE_ID___x242", scope: !5197, file: !3, line: 124, type: !141)
!5197 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 124, column: 15)
!5198 = !DILocation(line: 124, column: 15, scope: !5197)
!5199 = !DILocalVariable(name: "__UNIQUE_ID___x240", scope: !5200, file: !3, line: 124, type: !141)
!5200 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 124, column: 15)
!5201 = !DILocation(line: 124, column: 15, scope: !5200)
!5202 = !DILocalVariable(name: "__UNIQUE_ID___y241", scope: !5200, file: !3, line: 124, type: !141)
!5203 = !DILocalVariable(name: "__UNIQUE_ID___y243", scope: !5197, file: !3, line: 124, type: !141)
!5204 = !DILocation(line: 124, column: 10, scope: !5193)
!5205 = !DILocation(line: 124, column: 3, scope: !5193)
!5206 = !DILocation(line: 125, column: 11, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 125, column: 11)
!5208 = !DILocation(line: 125, column: 18, scope: !5207)
!5209 = !DILocation(line: 125, column: 11, scope: !5193)
!5210 = !DILocalVariable(name: "__UNIQUE_ID___x246", scope: !5211, file: !3, line: 126, type: !141)
!5211 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 126, column: 15)
!5212 = !DILocation(line: 126, column: 15, scope: !5211)
!5213 = !DILocalVariable(name: "__UNIQUE_ID___x244", scope: !5214, file: !3, line: 126, type: !141)
!5214 = distinct !DILexicalBlock(scope: !5211, file: !3, line: 126, column: 15)
!5215 = !DILocation(line: 126, column: 15, scope: !5214)
!5216 = !DILocalVariable(name: "__UNIQUE_ID___y245", scope: !5214, file: !3, line: 126, type: !141)
!5217 = !DILocalVariable(name: "__UNIQUE_ID___y247", scope: !5211, file: !3, line: 126, type: !141)
!5218 = !DILocation(line: 126, column: 10, scope: !5207)
!5219 = !DILocation(line: 126, column: 3, scope: !5207)
!5220 = !DILocation(line: 127, column: 11, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 127, column: 11)
!5222 = !DILocation(line: 127, column: 18, scope: !5221)
!5223 = !DILocation(line: 127, column: 11, scope: !5207)
!5224 = !DILocalVariable(name: "__UNIQUE_ID___x250", scope: !5225, file: !3, line: 128, type: !141)
!5225 = distinct !DILexicalBlock(scope: !5221, file: !3, line: 128, column: 15)
!5226 = !DILocation(line: 128, column: 15, scope: !5225)
!5227 = !DILocalVariable(name: "__UNIQUE_ID___x248", scope: !5228, file: !3, line: 128, type: !141)
!5228 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 128, column: 15)
!5229 = !DILocation(line: 128, column: 15, scope: !5228)
!5230 = !DILocalVariable(name: "__UNIQUE_ID___y249", scope: !5228, file: !3, line: 128, type: !141)
!5231 = !DILocalVariable(name: "__UNIQUE_ID___y251", scope: !5225, file: !3, line: 128, type: !141)
!5232 = !DILocation(line: 128, column: 10, scope: !5221)
!5233 = !DILocation(line: 128, column: 3, scope: !5221)
!5234 = !DILocalVariable(name: "__UNIQUE_ID___x254", scope: !5235, file: !3, line: 130, type: !141)
!5235 = distinct !DILexicalBlock(scope: !5221, file: !3, line: 130, column: 15)
!5236 = !DILocation(line: 130, column: 15, scope: !5235)
!5237 = !DILocalVariable(name: "__UNIQUE_ID___x252", scope: !5238, file: !3, line: 130, type: !141)
!5238 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 130, column: 15)
!5239 = !DILocation(line: 130, column: 15, scope: !5238)
!5240 = !DILocalVariable(name: "__UNIQUE_ID___y253", scope: !5238, file: !3, line: 130, type: !141)
!5241 = !DILocalVariable(name: "__UNIQUE_ID___y255", scope: !5235, file: !3, line: 130, type: !141)
!5242 = !DILocation(line: 130, column: 10, scope: !5221)
!5243 = !DILocation(line: 130, column: 3, scope: !5221)
!5244 = !DILocation(line: 132, column: 1, scope: !5185)
!5245 = distinct !DISubprogram(name: "in_max_show", scope: !3, file: !3, line: 360, type: !135, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5246 = !DILocalVariable(name: "dev", arg: 1, scope: !5245, file: !3, line: 360, type: !142)
!5247 = !DILocation(line: 360, column: 43, scope: !5245)
!5248 = !DILocalVariable(name: "da", arg: 2, scope: !5245, file: !3, line: 360, type: !3839)
!5249 = !DILocation(line: 360, column: 73, scope: !5245)
!5250 = !DILocalVariable(name: "buf", arg: 3, scope: !5245, file: !3, line: 361, type: !206)
!5251 = !DILocation(line: 361, column: 13, scope: !5245)
!5252 = !DILocalVariable(name: "data", scope: !5245, file: !3, line: 362, type: !4554)
!5253 = !DILocation(line: 362, column: 23, scope: !5245)
!5254 = !DILocation(line: 362, column: 52, scope: !5245)
!5255 = !DILocation(line: 362, column: 30, scope: !5245)
!5256 = !DILocalVariable(name: "attr", scope: !5245, file: !3, line: 363, type: !115)
!5257 = !DILocation(line: 363, column: 34, scope: !5245)
!5258 = !DILocalVariable(name: "__mptr", scope: !5259, file: !3, line: 363, type: !108)
!5259 = distinct !DILexicalBlock(scope: !5245, file: !3, line: 363, column: 41)
!5260 = !DILocation(line: 363, column: 41, scope: !5259)
!5261 = !DILocation(line: 363, column: 41, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5259, file: !3, line: 363, column: 41)
!5263 = !DILocalVariable(name: "nr", scope: !5245, file: !3, line: 364, type: !190)
!5264 = !DILocation(line: 364, column: 6, scope: !5245)
!5265 = !DILocation(line: 364, column: 11, scope: !5245)
!5266 = !DILocation(line: 364, column: 17, scope: !5245)
!5267 = !DILocation(line: 365, column: 17, scope: !5245)
!5268 = !DILocation(line: 365, column: 43, scope: !5245)
!5269 = !DILocation(line: 365, column: 49, scope: !5245)
!5270 = !DILocation(line: 365, column: 56, scope: !5245)
!5271 = !DILocation(line: 365, column: 61, scope: !5245)
!5272 = !DILocation(line: 365, column: 31, scope: !5245)
!5273 = !DILocation(line: 365, column: 9, scope: !5245)
!5274 = !DILocation(line: 365, column: 2, scope: !5245)
!5275 = distinct !DISubprogram(name: "in_max_store", scope: !3, file: !3, line: 387, type: !3842, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5276 = !DILocalVariable(name: "dev", arg: 1, scope: !5275, file: !3, line: 387, type: !142)
!5277 = !DILocation(line: 387, column: 44, scope: !5275)
!5278 = !DILocalVariable(name: "da", arg: 2, scope: !5275, file: !3, line: 387, type: !3839)
!5279 = !DILocation(line: 387, column: 74, scope: !5275)
!5280 = !DILocalVariable(name: "buf", arg: 3, scope: !5275, file: !3, line: 388, type: !127)
!5281 = !DILocation(line: 388, column: 20, scope: !5275)
!5282 = !DILocalVariable(name: "count", arg: 4, scope: !5275, file: !3, line: 388, type: !241)
!5283 = !DILocation(line: 388, column: 32, scope: !5275)
!5284 = !DILocalVariable(name: "data", scope: !5275, file: !3, line: 389, type: !4554)
!5285 = !DILocation(line: 389, column: 23, scope: !5275)
!5286 = !DILocation(line: 389, column: 46, scope: !5275)
!5287 = !DILocation(line: 389, column: 30, scope: !5275)
!5288 = !DILocalVariable(name: "attr", scope: !5275, file: !3, line: 390, type: !115)
!5289 = !DILocation(line: 390, column: 34, scope: !5275)
!5290 = !DILocalVariable(name: "__mptr", scope: !5291, file: !3, line: 390, type: !108)
!5291 = distinct !DILexicalBlock(scope: !5275, file: !3, line: 390, column: 41)
!5292 = !DILocation(line: 390, column: 41, scope: !5291)
!5293 = !DILocation(line: 390, column: 41, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5291, file: !3, line: 390, column: 41)
!5295 = !DILocalVariable(name: "nr", scope: !5275, file: !3, line: 391, type: !190)
!5296 = !DILocation(line: 391, column: 6, scope: !5275)
!5297 = !DILocation(line: 391, column: 11, scope: !5275)
!5298 = !DILocation(line: 391, column: 17, scope: !5275)
!5299 = !DILocalVariable(name: "val", scope: !5275, file: !3, line: 392, type: !112)
!5300 = !DILocation(line: 392, column: 16, scope: !5275)
!5301 = !DILocalVariable(name: "err", scope: !5275, file: !3, line: 393, type: !190)
!5302 = !DILocation(line: 393, column: 6, scope: !5275)
!5303 = !DILocation(line: 395, column: 17, scope: !5275)
!5304 = !DILocation(line: 395, column: 8, scope: !5275)
!5305 = !DILocation(line: 395, column: 6, scope: !5275)
!5306 = !DILocation(line: 396, column: 6, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5275, file: !3, line: 396, column: 6)
!5308 = !DILocation(line: 396, column: 6, scope: !5275)
!5309 = !DILocation(line: 397, column: 10, scope: !5307)
!5310 = !DILocation(line: 397, column: 3, scope: !5307)
!5311 = !DILocation(line: 399, column: 14, scope: !5275)
!5312 = !DILocation(line: 399, column: 20, scope: !5275)
!5313 = !DILocation(line: 399, column: 2, scope: !5275)
!5314 = !DILocation(line: 400, column: 31, scope: !5275)
!5315 = !DILocation(line: 400, column: 36, scope: !5275)
!5316 = !DILocation(line: 400, column: 21, scope: !5275)
!5317 = !DILocation(line: 400, column: 2, scope: !5275)
!5318 = !DILocation(line: 400, column: 8, scope: !5275)
!5319 = !DILocation(line: 400, column: 15, scope: !5275)
!5320 = !DILocation(line: 400, column: 19, scope: !5275)
!5321 = !DILocation(line: 401, column: 22, scope: !5275)
!5322 = !DILocation(line: 401, column: 28, scope: !5275)
!5323 = !DILocation(line: 402, column: 4, scope: !5275)
!5324 = !DILocation(line: 402, column: 10, scope: !5275)
!5325 = !DILocation(line: 402, column: 17, scope: !5275)
!5326 = !DILocation(line: 401, column: 2, scope: !5275)
!5327 = !DILocation(line: 403, column: 16, scope: !5275)
!5328 = !DILocation(line: 403, column: 22, scope: !5275)
!5329 = !DILocation(line: 403, column: 2, scope: !5275)
!5330 = !DILocation(line: 404, column: 9, scope: !5275)
!5331 = !DILocation(line: 404, column: 2, scope: !5275)
!5332 = !DILocation(line: 405, column: 1, scope: !5275)
!5333 = distinct !DISubprogram(name: "alarm_show", scope: !3, file: !3, line: 578, type: !135, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5334 = !DILocalVariable(name: "dev", arg: 1, scope: !5333, file: !3, line: 578, type: !142)
!5335 = !DILocation(line: 578, column: 42, scope: !5333)
!5336 = !DILocalVariable(name: "attr", arg: 2, scope: !5333, file: !3, line: 578, type: !3839)
!5337 = !DILocation(line: 578, column: 72, scope: !5333)
!5338 = !DILocalVariable(name: "buf", arg: 3, scope: !5333, file: !3, line: 579, type: !206)
!5339 = !DILocation(line: 579, column: 12, scope: !5333)
!5340 = !DILocalVariable(name: "bitnr", scope: !5333, file: !3, line: 581, type: !190)
!5341 = !DILocation(line: 581, column: 6, scope: !5333)
!5342 = !DILocalVariable(name: "__mptr", scope: !5343, file: !3, line: 581, type: !108)
!5343 = distinct !DILexicalBlock(scope: !5333, file: !3, line: 581, column: 14)
!5344 = !DILocation(line: 581, column: 14, scope: !5343)
!5345 = !DILocation(line: 581, column: 14, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5343, file: !3, line: 581, column: 14)
!5347 = !DILocation(line: 581, column: 40, scope: !5333)
!5348 = !DILocalVariable(name: "data", scope: !5333, file: !3, line: 582, type: !4554)
!5349 = !DILocation(line: 582, column: 23, scope: !5333)
!5350 = !DILocation(line: 582, column: 52, scope: !5333)
!5351 = !DILocation(line: 582, column: 30, scope: !5333)
!5352 = !DILocation(line: 583, column: 17, scope: !5333)
!5353 = !DILocation(line: 583, column: 31, scope: !5333)
!5354 = !DILocation(line: 583, column: 37, scope: !5333)
!5355 = !DILocation(line: 583, column: 47, scope: !5333)
!5356 = !DILocation(line: 583, column: 44, scope: !5333)
!5357 = !DILocation(line: 583, column: 54, scope: !5333)
!5358 = !DILocation(line: 583, column: 9, scope: !5333)
!5359 = !DILocation(line: 583, column: 2, scope: !5333)
!5360 = distinct !DISubprogram(name: "temp_show", scope: !3, file: !3, line: 424, type: !135, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5361 = !DILocalVariable(name: "dev", arg: 1, scope: !5360, file: !3, line: 424, type: !142)
!5362 = !DILocation(line: 424, column: 41, scope: !5360)
!5363 = !DILocalVariable(name: "da", arg: 2, scope: !5360, file: !3, line: 424, type: !3839)
!5364 = !DILocation(line: 424, column: 71, scope: !5360)
!5365 = !DILocalVariable(name: "buf", arg: 3, scope: !5360, file: !3, line: 425, type: !206)
!5366 = !DILocation(line: 425, column: 11, scope: !5360)
!5367 = !DILocalVariable(name: "data", scope: !5360, file: !3, line: 426, type: !4554)
!5368 = !DILocation(line: 426, column: 23, scope: !5360)
!5369 = !DILocation(line: 426, column: 52, scope: !5360)
!5370 = !DILocation(line: 426, column: 30, scope: !5360)
!5371 = !DILocalVariable(name: "attr", scope: !5360, file: !3, line: 427, type: !115)
!5372 = !DILocation(line: 427, column: 34, scope: !5360)
!5373 = !DILocalVariable(name: "__mptr", scope: !5374, file: !3, line: 427, type: !108)
!5374 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 427, column: 41)
!5375 = !DILocation(line: 427, column: 41, scope: !5374)
!5376 = !DILocation(line: 427, column: 41, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5374, file: !3, line: 427, column: 41)
!5378 = !DILocalVariable(name: "nr", scope: !5360, file: !3, line: 428, type: !190)
!5379 = !DILocation(line: 428, column: 6, scope: !5360)
!5380 = !DILocation(line: 428, column: 11, scope: !5360)
!5381 = !DILocation(line: 428, column: 17, scope: !5360)
!5382 = !DILocation(line: 429, column: 17, scope: !5360)
!5383 = !DILocation(line: 429, column: 47, scope: !5360)
!5384 = !DILocation(line: 429, column: 53, scope: !5360)
!5385 = !DILocation(line: 429, column: 58, scope: !5360)
!5386 = !DILocation(line: 429, column: 31, scope: !5360)
!5387 = !DILocation(line: 429, column: 9, scope: !5360)
!5388 = !DILocation(line: 429, column: 2, scope: !5360)
!5389 = distinct !DISubprogram(name: "TEMP_FROM_REG10", scope: !3, file: !3, line: 281, type: !5390, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5390 = !DISubroutineType(types: !5391)
!5391 = !{!141, !778}
!5392 = !DILocalVariable(name: "val", arg: 1, scope: !5389, file: !3, line: 281, type: !778)
!5393 = !DILocation(line: 281, column: 40, scope: !5389)
!5394 = !DILocalVariable(name: "eight_bits", scope: !5389, file: !3, line: 283, type: !778)
!5395 = !DILocation(line: 283, column: 6, scope: !5389)
!5396 = !DILocation(line: 283, column: 19, scope: !5389)
!5397 = !DILocation(line: 283, column: 23, scope: !5389)
!5398 = !DILocalVariable(name: "two_bits", scope: !5389, file: !3, line: 284, type: !778)
!5399 = !DILocation(line: 284, column: 6, scope: !5389)
!5400 = !DILocation(line: 284, column: 17, scope: !5389)
!5401 = !DILocation(line: 284, column: 21, scope: !5389)
!5402 = !DILocation(line: 287, column: 6, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 287, column: 6)
!5404 = !DILocation(line: 287, column: 15, scope: !5403)
!5405 = !DILocation(line: 287, column: 20, scope: !5403)
!5406 = !DILocation(line: 287, column: 23, scope: !5403)
!5407 = !DILocation(line: 287, column: 34, scope: !5403)
!5408 = !DILocation(line: 287, column: 6, scope: !5389)
!5409 = !DILocation(line: 288, column: 10, scope: !5403)
!5410 = !DILocation(line: 288, column: 3, scope: !5403)
!5411 = !DILocation(line: 291, column: 19, scope: !5389)
!5412 = !DILocation(line: 291, column: 10, scope: !5389)
!5413 = !DILocation(line: 291, column: 38, scope: !5389)
!5414 = !DILocation(line: 291, column: 36, scope: !5389)
!5415 = !DILocation(line: 291, column: 31, scope: !5389)
!5416 = !DILocation(line: 292, column: 12, scope: !5389)
!5417 = !DILocation(line: 292, column: 23, scope: !5389)
!5418 = !DILocation(line: 292, column: 3, scope: !5389)
!5419 = !DILocation(line: 292, column: 30, scope: !5389)
!5420 = !DILocation(line: 292, column: 28, scope: !5389)
!5421 = !DILocation(line: 291, column: 48, scope: !5389)
!5422 = !DILocation(line: 292, column: 40, scope: !5389)
!5423 = !DILocation(line: 291, column: 9, scope: !5389)
!5424 = !DILocation(line: 291, column: 2, scope: !5389)
!5425 = !DILocation(line: 293, column: 1, scope: !5389)
!5426 = distinct !DISubprogram(name: "temp_over_show", scope: !3, file: !3, line: 431, type: !135, scopeLine: 432, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5427 = !DILocalVariable(name: "dev", arg: 1, scope: !5426, file: !3, line: 431, type: !142)
!5428 = !DILocation(line: 431, column: 46, scope: !5426)
!5429 = !DILocalVariable(name: "da", arg: 2, scope: !5426, file: !3, line: 431, type: !3839)
!5430 = !DILocation(line: 431, column: 76, scope: !5426)
!5431 = !DILocalVariable(name: "buf", arg: 3, scope: !5426, file: !3, line: 432, type: !206)
!5432 = !DILocation(line: 432, column: 16, scope: !5426)
!5433 = !DILocalVariable(name: "data", scope: !5426, file: !3, line: 433, type: !4554)
!5434 = !DILocation(line: 433, column: 23, scope: !5426)
!5435 = !DILocation(line: 433, column: 52, scope: !5426)
!5436 = !DILocation(line: 433, column: 30, scope: !5426)
!5437 = !DILocalVariable(name: "attr", scope: !5426, file: !3, line: 434, type: !115)
!5438 = !DILocation(line: 434, column: 34, scope: !5426)
!5439 = !DILocalVariable(name: "__mptr", scope: !5440, file: !3, line: 434, type: !108)
!5440 = distinct !DILexicalBlock(scope: !5426, file: !3, line: 434, column: 41)
!5441 = !DILocation(line: 434, column: 41, scope: !5440)
!5442 = !DILocation(line: 434, column: 41, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 434, column: 41)
!5444 = !DILocalVariable(name: "nr", scope: !5426, file: !3, line: 435, type: !190)
!5445 = !DILocation(line: 435, column: 6, scope: !5426)
!5446 = !DILocation(line: 435, column: 11, scope: !5426)
!5447 = !DILocation(line: 435, column: 17, scope: !5426)
!5448 = !DILocation(line: 436, column: 17, scope: !5426)
!5449 = !DILocation(line: 436, column: 31, scope: !5426)
!5450 = !DILocation(line: 436, column: 9, scope: !5426)
!5451 = !DILocation(line: 436, column: 2, scope: !5426)
!5452 = distinct !DISubprogram(name: "temp_over_store", scope: !3, file: !3, line: 445, type: !3842, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5453 = !DILocalVariable(name: "dev", arg: 1, scope: !5452, file: !3, line: 445, type: !142)
!5454 = !DILocation(line: 445, column: 47, scope: !5452)
!5455 = !DILocalVariable(name: "da", arg: 2, scope: !5452, file: !3, line: 446, type: !3839)
!5456 = !DILocation(line: 446, column: 36, scope: !5452)
!5457 = !DILocalVariable(name: "buf", arg: 3, scope: !5452, file: !3, line: 446, type: !127)
!5458 = !DILocation(line: 446, column: 52, scope: !5452)
!5459 = !DILocalVariable(name: "count", arg: 4, scope: !5452, file: !3, line: 447, type: !241)
!5460 = !DILocation(line: 447, column: 18, scope: !5452)
!5461 = !DILocalVariable(name: "data", scope: !5452, file: !3, line: 448, type: !4554)
!5462 = !DILocation(line: 448, column: 23, scope: !5452)
!5463 = !DILocation(line: 448, column: 46, scope: !5452)
!5464 = !DILocation(line: 448, column: 30, scope: !5452)
!5465 = !DILocalVariable(name: "attr", scope: !5452, file: !3, line: 449, type: !115)
!5466 = !DILocation(line: 449, column: 34, scope: !5452)
!5467 = !DILocalVariable(name: "__mptr", scope: !5468, file: !3, line: 449, type: !108)
!5468 = distinct !DILexicalBlock(scope: !5452, file: !3, line: 449, column: 41)
!5469 = !DILocation(line: 449, column: 41, scope: !5468)
!5470 = !DILocation(line: 449, column: 41, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 449, column: 41)
!5472 = !DILocalVariable(name: "nr", scope: !5452, file: !3, line: 450, type: !190)
!5473 = !DILocation(line: 450, column: 6, scope: !5452)
!5474 = !DILocation(line: 450, column: 11, scope: !5452)
!5475 = !DILocation(line: 450, column: 17, scope: !5452)
!5476 = !DILocalVariable(name: "val", scope: !5452, file: !3, line: 451, type: !141)
!5477 = !DILocation(line: 451, column: 7, scope: !5452)
!5478 = !DILocalVariable(name: "err", scope: !5452, file: !3, line: 452, type: !190)
!5479 = !DILocation(line: 452, column: 6, scope: !5452)
!5480 = !DILocation(line: 454, column: 16, scope: !5452)
!5481 = !DILocation(line: 454, column: 8, scope: !5452)
!5482 = !DILocation(line: 454, column: 6, scope: !5452)
!5483 = !DILocation(line: 455, column: 6, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5452, file: !3, line: 455, column: 6)
!5485 = !DILocation(line: 455, column: 6, scope: !5452)
!5486 = !DILocation(line: 456, column: 10, scope: !5484)
!5487 = !DILocation(line: 456, column: 3, scope: !5484)
!5488 = !DILocation(line: 458, column: 14, scope: !5452)
!5489 = !DILocation(line: 458, column: 20, scope: !5452)
!5490 = !DILocation(line: 458, column: 2, scope: !5452)
!5491 = !DILocation(line: 459, column: 36, scope: !5452)
!5492 = !DILocation(line: 459, column: 24, scope: !5452)
!5493 = !DILocation(line: 459, column: 2, scope: !5452)
!5494 = !DILocation(line: 459, column: 8, scope: !5452)
!5495 = !DILocation(line: 459, column: 18, scope: !5452)
!5496 = !DILocation(line: 459, column: 22, scope: !5452)
!5497 = !DILocation(line: 460, column: 22, scope: !5452)
!5498 = !DILocation(line: 460, column: 50, scope: !5452)
!5499 = !DILocation(line: 460, column: 28, scope: !5452)
!5500 = !DILocation(line: 461, column: 8, scope: !5452)
!5501 = !DILocation(line: 461, column: 14, scope: !5452)
!5502 = !DILocation(line: 461, column: 24, scope: !5452)
!5503 = !DILocation(line: 460, column: 2, scope: !5452)
!5504 = !DILocation(line: 462, column: 16, scope: !5452)
!5505 = !DILocation(line: 462, column: 22, scope: !5452)
!5506 = !DILocation(line: 462, column: 2, scope: !5452)
!5507 = !DILocation(line: 463, column: 9, scope: !5452)
!5508 = !DILocation(line: 463, column: 2, scope: !5452)
!5509 = !DILocation(line: 464, column: 1, scope: !5452)
!5510 = distinct !DISubprogram(name: "kstrtol", scope: !5170, file: !5170, line: 379, type: !5511, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5511 = !DISubroutineType(types: !5512)
!5512 = !{!190, !127, !7, !5513}
!5513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!5514 = !DILocalVariable(name: "s", arg: 1, scope: !5510, file: !5170, line: 379, type: !127)
!5515 = !DILocation(line: 379, column: 52, scope: !5510)
!5516 = !DILocalVariable(name: "base", arg: 2, scope: !5510, file: !5170, line: 379, type: !7)
!5517 = !DILocation(line: 379, column: 68, scope: !5510)
!5518 = !DILocalVariable(name: "res", arg: 3, scope: !5510, file: !5170, line: 379, type: !5513)
!5519 = !DILocation(line: 379, column: 80, scope: !5510)
!5520 = !DILocation(line: 387, column: 19, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5510, file: !5170, line: 385, column: 6)
!5522 = !DILocation(line: 387, column: 22, scope: !5521)
!5523 = !DILocation(line: 387, column: 41, scope: !5521)
!5524 = !DILocation(line: 387, column: 10, scope: !5521)
!5525 = !DILocation(line: 387, column: 3, scope: !5521)
!5526 = distinct !DISubprogram(name: "TEMP_TO_REG", scope: !3, file: !3, line: 271, type: !5527, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5527 = !DISubroutineType(types: !5528)
!5528 = !{!1271, !141}
!5529 = !DILocalVariable(name: "val", arg: 1, scope: !5526, file: !3, line: 271, type: !141)
!5530 = !DILocation(line: 271, column: 35, scope: !5526)
!5531 = !DILocation(line: 273, column: 17, scope: !5526)
!5532 = !DILocation(line: 273, column: 21, scope: !5526)
!5533 = !DILocation(line: 273, column: 37, scope: !5526)
!5534 = !DILocation(line: 273, column: 41, scope: !5526)
!5535 = !DILocation(line: 274, column: 10, scope: !5526)
!5536 = !DILocation(line: 274, column: 14, scope: !5526)
!5537 = !DILocation(line: 274, column: 20, scope: !5526)
!5538 = !DILocation(line: 274, column: 24, scope: !5526)
!5539 = !DILocation(line: 274, column: 32, scope: !5526)
!5540 = !DILocation(line: 274, column: 36, scope: !5526)
!5541 = !DILocation(line: 274, column: 43, scope: !5526)
!5542 = !DILocation(line: 274, column: 50, scope: !5526)
!5543 = !DILocation(line: 273, column: 9, scope: !5526)
!5544 = !DILocation(line: 273, column: 2, scope: !5526)
!5545 = distinct !DISubprogram(name: "temp_hyst_show", scope: !3, file: !3, line: 438, type: !135, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5546 = !DILocalVariable(name: "dev", arg: 1, scope: !5545, file: !3, line: 438, type: !142)
!5547 = !DILocation(line: 438, column: 46, scope: !5545)
!5548 = !DILocalVariable(name: "da", arg: 2, scope: !5545, file: !3, line: 438, type: !3839)
!5549 = !DILocation(line: 438, column: 76, scope: !5545)
!5550 = !DILocalVariable(name: "buf", arg: 3, scope: !5545, file: !3, line: 439, type: !206)
!5551 = !DILocation(line: 439, column: 16, scope: !5545)
!5552 = !DILocalVariable(name: "data", scope: !5545, file: !3, line: 440, type: !4554)
!5553 = !DILocation(line: 440, column: 23, scope: !5545)
!5554 = !DILocation(line: 440, column: 52, scope: !5545)
!5555 = !DILocation(line: 440, column: 30, scope: !5545)
!5556 = !DILocalVariable(name: "attr", scope: !5545, file: !3, line: 441, type: !115)
!5557 = !DILocation(line: 441, column: 34, scope: !5545)
!5558 = !DILocalVariable(name: "__mptr", scope: !5559, file: !3, line: 441, type: !108)
!5559 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 441, column: 41)
!5560 = !DILocation(line: 441, column: 41, scope: !5559)
!5561 = !DILocation(line: 441, column: 41, scope: !5562)
!5562 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 441, column: 41)
!5563 = !DILocalVariable(name: "nr", scope: !5545, file: !3, line: 442, type: !190)
!5564 = !DILocation(line: 442, column: 6, scope: !5545)
!5565 = !DILocation(line: 442, column: 11, scope: !5545)
!5566 = !DILocation(line: 442, column: 17, scope: !5545)
!5567 = !DILocation(line: 443, column: 17, scope: !5545)
!5568 = !DILocation(line: 443, column: 31, scope: !5545)
!5569 = !DILocation(line: 443, column: 9, scope: !5545)
!5570 = !DILocation(line: 443, column: 2, scope: !5545)
!5571 = distinct !DISubprogram(name: "temp_hyst_store", scope: !3, file: !3, line: 465, type: !3842, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5572 = !DILocalVariable(name: "dev", arg: 1, scope: !5571, file: !3, line: 465, type: !142)
!5573 = !DILocation(line: 465, column: 47, scope: !5571)
!5574 = !DILocalVariable(name: "da", arg: 2, scope: !5571, file: !3, line: 466, type: !3839)
!5575 = !DILocation(line: 466, column: 36, scope: !5571)
!5576 = !DILocalVariable(name: "buf", arg: 3, scope: !5571, file: !3, line: 466, type: !127)
!5577 = !DILocation(line: 466, column: 52, scope: !5571)
!5578 = !DILocalVariable(name: "count", arg: 4, scope: !5571, file: !3, line: 467, type: !241)
!5579 = !DILocation(line: 467, column: 18, scope: !5571)
!5580 = !DILocalVariable(name: "data", scope: !5571, file: !3, line: 468, type: !4554)
!5581 = !DILocation(line: 468, column: 23, scope: !5571)
!5582 = !DILocation(line: 468, column: 46, scope: !5571)
!5583 = !DILocation(line: 468, column: 30, scope: !5571)
!5584 = !DILocalVariable(name: "attr", scope: !5571, file: !3, line: 469, type: !115)
!5585 = !DILocation(line: 469, column: 34, scope: !5571)
!5586 = !DILocalVariable(name: "__mptr", scope: !5587, file: !3, line: 469, type: !108)
!5587 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 469, column: 41)
!5588 = !DILocation(line: 469, column: 41, scope: !5587)
!5589 = !DILocation(line: 469, column: 41, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 469, column: 41)
!5591 = !DILocalVariable(name: "nr", scope: !5571, file: !3, line: 470, type: !190)
!5592 = !DILocation(line: 470, column: 6, scope: !5571)
!5593 = !DILocation(line: 470, column: 11, scope: !5571)
!5594 = !DILocation(line: 470, column: 17, scope: !5571)
!5595 = !DILocalVariable(name: "val", scope: !5571, file: !3, line: 471, type: !141)
!5596 = !DILocation(line: 471, column: 7, scope: !5571)
!5597 = !DILocalVariable(name: "err", scope: !5571, file: !3, line: 472, type: !190)
!5598 = !DILocation(line: 472, column: 6, scope: !5571)
!5599 = !DILocation(line: 474, column: 16, scope: !5571)
!5600 = !DILocation(line: 474, column: 8, scope: !5571)
!5601 = !DILocation(line: 474, column: 6, scope: !5571)
!5602 = !DILocation(line: 475, column: 6, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 475, column: 6)
!5604 = !DILocation(line: 475, column: 6, scope: !5571)
!5605 = !DILocation(line: 476, column: 10, scope: !5603)
!5606 = !DILocation(line: 476, column: 3, scope: !5603)
!5607 = !DILocation(line: 478, column: 14, scope: !5571)
!5608 = !DILocation(line: 478, column: 20, scope: !5571)
!5609 = !DILocation(line: 478, column: 2, scope: !5571)
!5610 = !DILocation(line: 479, column: 36, scope: !5571)
!5611 = !DILocation(line: 479, column: 24, scope: !5571)
!5612 = !DILocation(line: 479, column: 2, scope: !5571)
!5613 = !DILocation(line: 479, column: 8, scope: !5571)
!5614 = !DILocation(line: 479, column: 18, scope: !5571)
!5615 = !DILocation(line: 479, column: 22, scope: !5571)
!5616 = !DILocation(line: 480, column: 22, scope: !5571)
!5617 = !DILocation(line: 480, column: 50, scope: !5571)
!5618 = !DILocation(line: 480, column: 28, scope: !5571)
!5619 = !DILocation(line: 481, column: 8, scope: !5571)
!5620 = !DILocation(line: 481, column: 14, scope: !5571)
!5621 = !DILocation(line: 481, column: 24, scope: !5571)
!5622 = !DILocation(line: 480, column: 2, scope: !5571)
!5623 = !DILocation(line: 482, column: 16, scope: !5571)
!5624 = !DILocation(line: 482, column: 22, scope: !5571)
!5625 = !DILocation(line: 482, column: 2, scope: !5571)
!5626 = !DILocation(line: 483, column: 9, scope: !5571)
!5627 = !DILocation(line: 483, column: 2, scope: !5571)
!5628 = !DILocation(line: 484, column: 1, scope: !5571)
!5629 = distinct !DISubprogram(name: "fan_show", scope: !3, file: !3, line: 497, type: !135, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5630 = !DILocalVariable(name: "dev", arg: 1, scope: !5629, file: !3, line: 497, type: !142)
!5631 = !DILocation(line: 497, column: 40, scope: !5629)
!5632 = !DILocalVariable(name: "da", arg: 2, scope: !5629, file: !3, line: 497, type: !3839)
!5633 = !DILocation(line: 497, column: 70, scope: !5629)
!5634 = !DILocalVariable(name: "buf", arg: 3, scope: !5629, file: !3, line: 498, type: !206)
!5635 = !DILocation(line: 498, column: 10, scope: !5629)
!5636 = !DILocalVariable(name: "data", scope: !5629, file: !3, line: 499, type: !4554)
!5637 = !DILocation(line: 499, column: 23, scope: !5629)
!5638 = !DILocation(line: 499, column: 52, scope: !5629)
!5639 = !DILocation(line: 499, column: 30, scope: !5629)
!5640 = !DILocalVariable(name: "attr", scope: !5629, file: !3, line: 500, type: !115)
!5641 = !DILocation(line: 500, column: 34, scope: !5629)
!5642 = !DILocalVariable(name: "__mptr", scope: !5643, file: !3, line: 500, type: !108)
!5643 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 500, column: 41)
!5644 = !DILocation(line: 500, column: 41, scope: !5643)
!5645 = !DILocation(line: 500, column: 41, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5643, file: !3, line: 500, column: 41)
!5647 = !DILocalVariable(name: "nr", scope: !5629, file: !3, line: 501, type: !190)
!5648 = !DILocation(line: 501, column: 6, scope: !5629)
!5649 = !DILocation(line: 501, column: 11, scope: !5629)
!5650 = !DILocation(line: 501, column: 17, scope: !5629)
!5651 = !DILocation(line: 502, column: 17, scope: !5629)
!5652 = !DILocation(line: 502, column: 30, scope: !5629)
!5653 = !DILocation(line: 502, column: 9, scope: !5629)
!5654 = !DILocation(line: 502, column: 2, scope: !5629)
!5655 = distinct !DISubprogram(name: "fan_min_show", scope: !3, file: !3, line: 505, type: !135, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5656 = !DILocalVariable(name: "dev", arg: 1, scope: !5655, file: !3, line: 505, type: !142)
!5657 = !DILocation(line: 505, column: 44, scope: !5655)
!5658 = !DILocalVariable(name: "da", arg: 2, scope: !5655, file: !3, line: 505, type: !3839)
!5659 = !DILocation(line: 505, column: 74, scope: !5655)
!5660 = !DILocalVariable(name: "buf", arg: 3, scope: !5655, file: !3, line: 506, type: !206)
!5661 = !DILocation(line: 506, column: 14, scope: !5655)
!5662 = !DILocalVariable(name: "data", scope: !5655, file: !3, line: 507, type: !4554)
!5663 = !DILocation(line: 507, column: 23, scope: !5655)
!5664 = !DILocation(line: 507, column: 52, scope: !5655)
!5665 = !DILocation(line: 507, column: 30, scope: !5655)
!5666 = !DILocalVariable(name: "attr", scope: !5655, file: !3, line: 508, type: !115)
!5667 = !DILocation(line: 508, column: 34, scope: !5655)
!5668 = !DILocalVariable(name: "__mptr", scope: !5669, file: !3, line: 508, type: !108)
!5669 = distinct !DILexicalBlock(scope: !5655, file: !3, line: 508, column: 41)
!5670 = !DILocation(line: 508, column: 41, scope: !5669)
!5671 = !DILocation(line: 508, column: 41, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5669, file: !3, line: 508, column: 41)
!5673 = !DILocalVariable(name: "nr", scope: !5655, file: !3, line: 509, type: !190)
!5674 = !DILocation(line: 509, column: 6, scope: !5655)
!5675 = !DILocation(line: 509, column: 11, scope: !5655)
!5676 = !DILocation(line: 509, column: 17, scope: !5655)
!5677 = !DILocation(line: 510, column: 17, scope: !5655)
!5678 = !DILocation(line: 511, column: 3, scope: !5655)
!5679 = !DILocation(line: 510, column: 9, scope: !5655)
!5680 = !DILocation(line: 510, column: 2, scope: !5655)
!5681 = distinct !DISubprogram(name: "fan_min_store", scope: !3, file: !3, line: 521, type: !3842, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5682 = !DILocalVariable(name: "dev", arg: 1, scope: !5681, file: !3, line: 521, type: !142)
!5683 = !DILocation(line: 521, column: 45, scope: !5681)
!5684 = !DILocalVariable(name: "da", arg: 2, scope: !5681, file: !3, line: 521, type: !3839)
!5685 = !DILocation(line: 521, column: 75, scope: !5681)
!5686 = !DILocalVariable(name: "buf", arg: 3, scope: !5681, file: !3, line: 522, type: !127)
!5687 = !DILocation(line: 522, column: 21, scope: !5681)
!5688 = !DILocalVariable(name: "count", arg: 4, scope: !5681, file: !3, line: 522, type: !241)
!5689 = !DILocation(line: 522, column: 33, scope: !5681)
!5690 = !DILocalVariable(name: "data", scope: !5681, file: !3, line: 523, type: !4554)
!5691 = !DILocation(line: 523, column: 23, scope: !5681)
!5692 = !DILocation(line: 523, column: 46, scope: !5681)
!5693 = !DILocation(line: 523, column: 30, scope: !5681)
!5694 = !DILocalVariable(name: "attr", scope: !5681, file: !3, line: 524, type: !115)
!5695 = !DILocation(line: 524, column: 34, scope: !5681)
!5696 = !DILocalVariable(name: "__mptr", scope: !5697, file: !3, line: 524, type: !108)
!5697 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 524, column: 41)
!5698 = !DILocation(line: 524, column: 41, scope: !5697)
!5699 = !DILocation(line: 524, column: 41, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5697, file: !3, line: 524, column: 41)
!5701 = !DILocalVariable(name: "nr", scope: !5681, file: !3, line: 525, type: !190)
!5702 = !DILocation(line: 525, column: 6, scope: !5681)
!5703 = !DILocation(line: 525, column: 11, scope: !5681)
!5704 = !DILocation(line: 525, column: 17, scope: !5681)
!5705 = !DILocalVariable(name: "val", scope: !5681, file: !3, line: 526, type: !112)
!5706 = !DILocation(line: 526, column: 16, scope: !5681)
!5707 = !DILocalVariable(name: "err", scope: !5681, file: !3, line: 527, type: !190)
!5708 = !DILocation(line: 527, column: 6, scope: !5681)
!5709 = !DILocation(line: 529, column: 17, scope: !5681)
!5710 = !DILocation(line: 529, column: 8, scope: !5681)
!5711 = !DILocation(line: 529, column: 6, scope: !5681)
!5712 = !DILocation(line: 530, column: 6, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 530, column: 6)
!5714 = !DILocation(line: 530, column: 6, scope: !5681)
!5715 = !DILocation(line: 531, column: 10, scope: !5713)
!5716 = !DILocation(line: 531, column: 3, scope: !5713)
!5717 = !DILocation(line: 533, column: 14, scope: !5681)
!5718 = !DILocation(line: 533, column: 20, scope: !5681)
!5719 = !DILocation(line: 533, column: 2, scope: !5681)
!5720 = !DILocation(line: 534, column: 33, scope: !5681)
!5721 = !DILocation(line: 534, column: 38, scope: !5681)
!5722 = !DILocation(line: 534, column: 22, scope: !5681)
!5723 = !DILocation(line: 534, column: 2, scope: !5681)
!5724 = !DILocation(line: 534, column: 8, scope: !5681)
!5725 = !DILocation(line: 534, column: 16, scope: !5681)
!5726 = !DILocation(line: 534, column: 20, scope: !5681)
!5727 = !DILocation(line: 535, column: 22, scope: !5681)
!5728 = !DILocation(line: 535, column: 28, scope: !5681)
!5729 = !DILocation(line: 535, column: 55, scope: !5681)
!5730 = !DILocation(line: 535, column: 61, scope: !5681)
!5731 = !DILocation(line: 535, column: 69, scope: !5681)
!5732 = !DILocation(line: 535, column: 2, scope: !5681)
!5733 = !DILocation(line: 536, column: 16, scope: !5681)
!5734 = !DILocation(line: 536, column: 22, scope: !5681)
!5735 = !DILocation(line: 536, column: 2, scope: !5681)
!5736 = !DILocation(line: 537, column: 9, scope: !5681)
!5737 = !DILocation(line: 537, column: 2, scope: !5681)
!5738 = !DILocation(line: 538, column: 1, scope: !5681)
!5739 = distinct !DISubprogram(name: "FAN_TO_REG", scope: !3, file: !3, line: 157, type: !5186, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5740 = !DILocalVariable(name: "rpm", arg: 1, scope: !5739, file: !3, line: 157, type: !141)
!5741 = !DILocation(line: 157, column: 34, scope: !5739)
!5742 = !DILocalVariable(name: "div", arg: 2, scope: !5739, file: !3, line: 157, type: !190)
!5743 = !DILocation(line: 157, column: 43, scope: !5739)
!5744 = !DILocation(line: 159, column: 6, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 159, column: 6)
!5746 = !DILocation(line: 159, column: 10, scope: !5745)
!5747 = !DILocation(line: 159, column: 6, scope: !5739)
!5748 = !DILocation(line: 160, column: 3, scope: !5745)
!5749 = !DILocalVariable(name: "__UNIQUE_ID___x258", scope: !5750, file: !3, line: 161, type: !141)
!5750 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 161, column: 8)
!5751 = !DILocation(line: 161, column: 8, scope: !5750)
!5752 = !DILocalVariable(name: "__UNIQUE_ID___x256", scope: !5753, file: !3, line: 161, type: !141)
!5753 = distinct !DILexicalBlock(scope: !5750, file: !3, line: 161, column: 8)
!5754 = !DILocation(line: 161, column: 8, scope: !5753)
!5755 = !DILocalVariable(name: "__UNIQUE_ID___y257", scope: !5753, file: !3, line: 161, type: !141)
!5756 = !DILocalVariable(name: "__UNIQUE_ID___y259", scope: !5750, file: !3, line: 161, type: !141)
!5757 = !DILocation(line: 161, column: 6, scope: !5739)
!5758 = !DILocalVariable(name: "__UNIQUE_ID___x262", scope: !5759, file: !3, line: 162, type: !141)
!5759 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 162, column: 9)
!5760 = !DILocation(line: 162, column: 9, scope: !5759)
!5761 = !DILocalVariable(name: "__UNIQUE_ID___x260", scope: !5762, file: !3, line: 162, type: !141)
!5762 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 162, column: 9)
!5763 = !DILocation(line: 162, column: 9, scope: !5762)
!5764 = !DILocalVariable(name: "__UNIQUE_ID___y261", scope: !5762, file: !3, line: 162, type: !141)
!5765 = !DILocalVariable(name: "__UNIQUE_ID___y263", scope: !5759, file: !3, line: 162, type: !141)
!5766 = !DILocation(line: 162, column: 9, scope: !5739)
!5767 = !DILocation(line: 162, column: 2, scope: !5739)
!5768 = !DILocation(line: 163, column: 1, scope: !5739)
!5769 = distinct !DISubprogram(name: "fan_div_show", scope: !3, file: !3, line: 514, type: !135, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5770 = !DILocalVariable(name: "dev", arg: 1, scope: !5769, file: !3, line: 514, type: !142)
!5771 = !DILocation(line: 514, column: 44, scope: !5769)
!5772 = !DILocalVariable(name: "da", arg: 2, scope: !5769, file: !3, line: 514, type: !3839)
!5773 = !DILocation(line: 514, column: 74, scope: !5769)
!5774 = !DILocalVariable(name: "buf", arg: 3, scope: !5769, file: !3, line: 515, type: !206)
!5775 = !DILocation(line: 515, column: 14, scope: !5769)
!5776 = !DILocalVariable(name: "data", scope: !5769, file: !3, line: 516, type: !4554)
!5777 = !DILocation(line: 516, column: 23, scope: !5769)
!5778 = !DILocation(line: 516, column: 52, scope: !5769)
!5779 = !DILocation(line: 516, column: 30, scope: !5769)
!5780 = !DILocalVariable(name: "attr", scope: !5769, file: !3, line: 517, type: !115)
!5781 = !DILocation(line: 517, column: 34, scope: !5769)
!5782 = !DILocalVariable(name: "__mptr", scope: !5783, file: !3, line: 517, type: !108)
!5783 = distinct !DILexicalBlock(scope: !5769, file: !3, line: 517, column: 41)
!5784 = !DILocation(line: 517, column: 41, scope: !5783)
!5785 = !DILocation(line: 517, column: 41, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 517, column: 41)
!5787 = !DILocalVariable(name: "nr", scope: !5769, file: !3, line: 518, type: !190)
!5788 = !DILocation(line: 518, column: 6, scope: !5769)
!5789 = !DILocation(line: 518, column: 11, scope: !5769)
!5790 = !DILocation(line: 518, column: 17, scope: !5769)
!5791 = !DILocation(line: 519, column: 17, scope: !5769)
!5792 = !DILocation(line: 519, column: 30, scope: !5769)
!5793 = !DILocation(line: 519, column: 9, scope: !5769)
!5794 = !DILocation(line: 519, column: 2, scope: !5769)
!5795 = distinct !DISubprogram(name: "fan_div_store", scope: !3, file: !3, line: 539, type: !3842, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5796 = !DILocalVariable(name: "dev", arg: 1, scope: !5795, file: !3, line: 539, type: !142)
!5797 = !DILocation(line: 539, column: 45, scope: !5795)
!5798 = !DILocalVariable(name: "da", arg: 2, scope: !5795, file: !3, line: 539, type: !3839)
!5799 = !DILocation(line: 539, column: 75, scope: !5795)
!5800 = !DILocalVariable(name: "buf", arg: 3, scope: !5795, file: !3, line: 540, type: !127)
!5801 = !DILocation(line: 540, column: 21, scope: !5795)
!5802 = !DILocalVariable(name: "count", arg: 4, scope: !5795, file: !3, line: 540, type: !241)
!5803 = !DILocation(line: 540, column: 33, scope: !5795)
!5804 = !DILocalVariable(name: "data", scope: !5795, file: !3, line: 541, type: !4554)
!5805 = !DILocation(line: 541, column: 23, scope: !5795)
!5806 = !DILocation(line: 541, column: 46, scope: !5795)
!5807 = !DILocation(line: 541, column: 30, scope: !5795)
!5808 = !DILocalVariable(name: "attr", scope: !5795, file: !3, line: 542, type: !115)
!5809 = !DILocation(line: 542, column: 34, scope: !5795)
!5810 = !DILocalVariable(name: "__mptr", scope: !5811, file: !3, line: 542, type: !108)
!5811 = distinct !DILexicalBlock(scope: !5795, file: !3, line: 542, column: 41)
!5812 = !DILocation(line: 542, column: 41, scope: !5811)
!5813 = !DILocation(line: 542, column: 41, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5811, file: !3, line: 542, column: 41)
!5815 = !DILocalVariable(name: "nr", scope: !5795, file: !3, line: 543, type: !190)
!5816 = !DILocation(line: 543, column: 6, scope: !5795)
!5817 = !DILocation(line: 543, column: 11, scope: !5795)
!5818 = !DILocation(line: 543, column: 17, scope: !5795)
!5819 = !DILocalVariable(name: "old", scope: !5795, file: !3, line: 544, type: !190)
!5820 = !DILocation(line: 544, column: 6, scope: !5795)
!5821 = !DILocalVariable(name: "val", scope: !5795, file: !3, line: 545, type: !112)
!5822 = !DILocation(line: 545, column: 16, scope: !5795)
!5823 = !DILocalVariable(name: "err", scope: !5795, file: !3, line: 546, type: !190)
!5824 = !DILocation(line: 546, column: 6, scope: !5795)
!5825 = !DILocation(line: 548, column: 17, scope: !5795)
!5826 = !DILocation(line: 548, column: 8, scope: !5795)
!5827 = !DILocation(line: 548, column: 6, scope: !5795)
!5828 = !DILocation(line: 549, column: 6, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5795, file: !3, line: 549, column: 6)
!5830 = !DILocation(line: 549, column: 6, scope: !5795)
!5831 = !DILocation(line: 550, column: 10, scope: !5829)
!5832 = !DILocation(line: 550, column: 3, scope: !5829)
!5833 = !DILocation(line: 552, column: 14, scope: !5795)
!5834 = !DILocation(line: 552, column: 20, scope: !5795)
!5835 = !DILocation(line: 552, column: 2, scope: !5795)
!5836 = !DILocation(line: 553, column: 27, scope: !5795)
!5837 = !DILocation(line: 553, column: 8, scope: !5795)
!5838 = !DILocation(line: 553, column: 6, scope: !5795)
!5839 = !DILocation(line: 554, column: 22, scope: !5795)
!5840 = !DILocation(line: 554, column: 2, scope: !5795)
!5841 = !DILocation(line: 554, column: 8, scope: !5795)
!5842 = !DILocation(line: 554, column: 16, scope: !5795)
!5843 = !DILocation(line: 554, column: 20, scope: !5795)
!5844 = !DILocation(line: 555, column: 9, scope: !5795)
!5845 = !DILocation(line: 555, column: 13, scope: !5795)
!5846 = !DILocation(line: 555, column: 24, scope: !5795)
!5847 = !DILocation(line: 555, column: 30, scope: !5795)
!5848 = !DILocation(line: 555, column: 41, scope: !5795)
!5849 = !DILocation(line: 555, column: 21, scope: !5795)
!5850 = !DILocation(line: 555, column: 50, scope: !5795)
!5851 = !DILocation(line: 555, column: 56, scope: !5795)
!5852 = !DILocation(line: 555, column: 67, scope: !5795)
!5853 = !DILocation(line: 555, column: 47, scope: !5795)
!5854 = !DILocation(line: 555, column: 6, scope: !5795)
!5855 = !DILocation(line: 556, column: 22, scope: !5795)
!5856 = !DILocation(line: 556, column: 48, scope: !5795)
!5857 = !DILocation(line: 556, column: 2, scope: !5795)
!5858 = !DILocation(line: 557, column: 16, scope: !5795)
!5859 = !DILocation(line: 557, column: 22, scope: !5795)
!5860 = !DILocation(line: 557, column: 2, scope: !5795)
!5861 = !DILocation(line: 558, column: 9, scope: !5795)
!5862 = !DILocation(line: 558, column: 2, scope: !5795)
!5863 = !DILocation(line: 559, column: 1, scope: !5795)
!5864 = distinct !DISubprogram(name: "alarms_show", scope: !3, file: !3, line: 569, type: !135, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5865 = !DILocalVariable(name: "dev", arg: 1, scope: !5864, file: !3, line: 569, type: !142)
!5866 = !DILocation(line: 569, column: 43, scope: !5864)
!5867 = !DILocalVariable(name: "attr", arg: 2, scope: !5864, file: !3, line: 569, type: !3839)
!5868 = !DILocation(line: 569, column: 73, scope: !5864)
!5869 = !DILocalVariable(name: "buf", arg: 3, scope: !5864, file: !3, line: 570, type: !206)
!5870 = !DILocation(line: 570, column: 13, scope: !5864)
!5871 = !DILocalVariable(name: "data", scope: !5864, file: !3, line: 572, type: !4554)
!5872 = !DILocation(line: 572, column: 23, scope: !5864)
!5873 = !DILocation(line: 572, column: 52, scope: !5864)
!5874 = !DILocation(line: 572, column: 30, scope: !5864)
!5875 = !DILocation(line: 573, column: 17, scope: !5864)
!5876 = !DILocation(line: 573, column: 30, scope: !5864)
!5877 = !DILocation(line: 573, column: 36, scope: !5864)
!5878 = !DILocation(line: 573, column: 9, scope: !5864)
!5879 = !DILocation(line: 573, column: 2, scope: !5864)
!5880 = distinct !DISubprogram(name: "name_show", scope: !3, file: !3, line: 596, type: !135, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5881 = !DILocalVariable(name: "dev", arg: 1, scope: !5880, file: !3, line: 596, type: !142)
!5882 = !DILocation(line: 596, column: 41, scope: !5880)
!5883 = !DILocalVariable(name: "devattr", arg: 2, scope: !5880, file: !3, line: 597, type: !3839)
!5884 = !DILocation(line: 597, column: 6, scope: !5880)
!5885 = !DILocalVariable(name: "buf", arg: 3, scope: !5880, file: !3, line: 597, type: !206)
!5886 = !DILocation(line: 597, column: 21, scope: !5880)
!5887 = !DILocalVariable(name: "data", scope: !5880, file: !3, line: 599, type: !4554)
!5888 = !DILocation(line: 599, column: 23, scope: !5880)
!5889 = !DILocation(line: 599, column: 46, scope: !5880)
!5890 = !DILocation(line: 599, column: 30, scope: !5880)
!5891 = !DILocation(line: 600, column: 17, scope: !5880)
!5892 = !DILocation(line: 600, column: 30, scope: !5880)
!5893 = !DILocation(line: 600, column: 36, scope: !5880)
!5894 = !DILocation(line: 600, column: 9, scope: !5880)
!5895 = !DILocation(line: 600, column: 2, scope: !5880)
!5896 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !3936, file: !3936, line: 231, type: !5897, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!5897 = !DISubroutineType(types: !5898)
!5898 = !{!108, !5899}
!5899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5900, size: 64)
!5900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3935)
!5901 = !DILocalVariable(name: "pdev", arg: 1, scope: !5896, file: !3936, line: 231, type: !5899)
!5902 = !DILocation(line: 231, column: 72, scope: !5896)
!5903 = !DILocation(line: 233, column: 26, scope: !5896)
!5904 = !DILocation(line: 233, column: 32, scope: !5896)
!5905 = !DILocation(line: 233, column: 9, scope: !5896)
!5906 = !DILocation(line: 233, column: 2, scope: !5896)
