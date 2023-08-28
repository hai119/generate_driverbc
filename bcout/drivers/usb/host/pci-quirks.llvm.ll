; ModuleID = '../bcout/drivers/usb/host/pci-quirks.llvm.bc'
source_filename = "drivers/usb/host/pci-quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short (~0), (~0)\09\09\09"
module asm ".long 0x0c03, 8\09\09"
module asm ".long quirk_usb_early_handoff - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"

%struct.amd_chipset_info = type { %struct.pci_dev*, %struct.pci_dev*, i32, %struct.amd_chipset_type, i32, i32, i8 }
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
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, {}*, %struct.dev_pm_qos* }
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
%struct.amd_chipset_type = type { i32, i8 }
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
%struct.dmi_system_id = type { {}*, i8*, [4 x %struct.dmi_strmatch], i8* }
%struct.dmi_strmatch = type { i8, [79 x i8] }

@amd_chipset = internal global %struct.amd_chipset_info zeroinitializer, align 8, !dbg !0
@amd_lock = internal global %struct.spinlock undef, align 1, !dbg !4126
@.str = private unnamed_addr constant [28 x i8] c"HCRESET not completed yet!\0A\00", align 1
@__UNIQUE_ID___addressable_quirk_usb_early_handoff240 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_usb_early_handoff to i8*), section ".discard.addressable", align 8, !dbg !4124
@.str.1 = private unnamed_addr constant [29 x i8] c"\017QUIRK: Enable AMD PLL fix\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"%s: check_ready ERROR\00", align 1
@__func__.usb_asmedia_wait_write = private unnamed_addr constant [23 x i8] c"usb_asmedia_wait_write\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: check_write_ready timeout\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"brcm,bcm2711-pcie\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Can't enable PCI device, BIOS handoff failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"OHCI: BIOS handoff failed (BIOS bug?) %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"EHCI: unrecognized capability %02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"EHCI: capability loop?\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"EHCI: BIOS handoff failed (BIOS bug?) %08x\0A\00", align 1
@ehci_dmi_nohandoff_table = internal constant [5 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }] [{ i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"EXOPG06411\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 2, [79 x i8] c"Lucid-CE-133\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"M11JB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 2, [79 x i8] c"Lucid-\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 14, [79 x i8] c"Ordissimo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 2, [79 x i8] c"Lucid-\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } { i32 (%struct.dmi_system_id*)* null, i8* null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"HASEE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"E210\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 2, [79 x i8] c"6.00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], i8* null }, { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* } zeroinitializer], align 16, !dbg !4128
@.str.12 = private unnamed_addr constant [35 x i8] c"xHCI controller failing to respond\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"xHCI BIOS handoff failed (BIOS bug ?) %08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"xHCI HW not ready after 5 sec (HC bug?) status = 0x%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"xHCI HW did not halt within %d usec status = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_usb_early_handoff240 to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @sb800_prefetch(%struct.device* %dev, i32 %on) #0 !dbg !4172 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %on.addr = alloca i32, align 4
  %misc = alloca i16, align 2
  %pdev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4175, metadata !DIExpression()), !dbg !4176
  store i32 %on, i32* %on.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %on.addr, metadata !4177, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.declare(metadata i16* %misc, metadata !4179, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev, metadata !4181, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4183, metadata !DIExpression()), !dbg !4185
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4185
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4185
  store i8* %1, i8** %__mptr, align 8, !dbg !4185
  br label %do.body, !dbg !4185

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4186

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4185
  %add.ptr = getelementptr i8, i8* %2, i64 -176, !dbg !4185
  %3 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !4185
  store %struct.pci_dev* %3, %struct.pci_dev** %tmp, align 8, !dbg !4186
  %4 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !4185
  store %struct.pci_dev* %4, %struct.pci_dev** %pdev, align 8, !dbg !4182
  %5 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4188
  %call = call i32 @pci_read_config_word(%struct.pci_dev* %5, i32 80, i16* %misc) #8, !dbg !4189
  %6 = load i32, i32* %on.addr, align 4, !dbg !4190
  %cmp = icmp eq i32 %6, 0, !dbg !4192
  br i1 %cmp, label %if.then, label %if.else, !dbg !4193

if.then:                                          ; preds = %do.end
  %7 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4194
  %8 = load i16, i16* %misc, align 2, !dbg !4195
  %conv = zext i16 %8 to i32, !dbg !4195
  %and = and i32 %conv, 64767, !dbg !4196
  %conv1 = trunc i32 %and to i16, !dbg !4195
  %call2 = call i32 @pci_write_config_word(%struct.pci_dev* %7, i32 80, i16 zeroext %conv1) #8, !dbg !4197
  br label %if.end, !dbg !4197

if.else:                                          ; preds = %do.end
  %9 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4198
  %10 = load i16, i16* %misc, align 2, !dbg !4199
  %conv3 = zext i16 %10 to i32, !dbg !4199
  %or = or i32 %conv3, 768, !dbg !4200
  %conv4 = trunc i32 %or to i16, !dbg !4199
  %call5 = call i32 @pci_write_config_word(%struct.pci_dev* %9, i32 80, i16 zeroext %conv4) #8, !dbg !4201
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4202
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i16*) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i16 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @usb_hcd_amd_remote_wakeup_quirk(%struct.pci_dev* %pdev) #0 !dbg !4203 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4204, metadata !DIExpression()), !dbg !4205
  call void @usb_amd_find_chipset_info() #8, !dbg !4206
  %0 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 3, i32 0), align 4, !dbg !4207
  %cmp = icmp eq i32 %0, 6, !dbg !4209
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4210

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 3, i32 0), align 4, !dbg !4211
  %cmp1 = icmp eq i32 %1, 7, !dbg !4212
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4213

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4, !dbg !4214
  br label %return, !dbg !4214

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !4216
  br label %return, !dbg !4216

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !4217
  ret i32 %2, !dbg !4217
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_amd_find_chipset_info() #0 !dbg !4218 {
entry:
  %lock.addr.i111 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i111, metadata !4219, metadata !DIExpression()), !dbg !4224
  %flags.addr.i112 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i112, metadata !4228, metadata !DIExpression()), !dbg !4229
  %tmp.i113 = alloca i32, align 4
  %tmp8.i114 = alloca i32, align 4
  %lock.addr.i109 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i109, metadata !4230, metadata !DIExpression()), !dbg !4235
  %lock.addr.i104 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i104, metadata !4219, metadata !DIExpression()), !dbg !4242
  %flags.addr.i105 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i105, metadata !4228, metadata !DIExpression()), !dbg !4244
  %tmp.i106 = alloca i32, align 4
  %tmp8.i107 = alloca i32, align 4
  %lock.addr.i99 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i99, metadata !4219, metadata !DIExpression()), !dbg !4245
  %flags.addr.i100 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i100, metadata !4228, metadata !DIExpression()), !dbg !4249
  %tmp.i101 = alloca i32, align 4
  %tmp8.i102 = alloca i32, align 4
  %lock.addr.i97 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i97, metadata !4219, metadata !DIExpression()), !dbg !4250
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4228, metadata !DIExpression()), !dbg !4253
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4230, metadata !DIExpression()), !dbg !4254
  %flags = alloca i64, align 8
  %info = alloca %struct.amd_chipset_info, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__dummy64 = alloca i64, align 8
  %__dummy265 = alloca i64, align 8
  %tmp68 = alloca i32, align 4
  %__dummy72 = alloca i64, align 8
  %__dummy273 = alloca i64, align 8
  %tmp76 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4261, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.declare(metadata %struct.amd_chipset_info* %info, metadata !4263, metadata !DIExpression()), !dbg !4264
  %need_pll_quirk = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 6, !dbg !4265
  store i8 0, i8* %need_pll_quirk, align 4, !dbg !4266
  br label %do.body, !dbg !4267

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4268

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4269, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4272, metadata !DIExpression()), !dbg !4271
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4271
  %conv = zext i1 %cmp to i32, !dbg !4271
  store i32 1, i32* %tmp, align 4, !dbg !4271
  %0 = load i32, i32* %tmp, align 4, !dbg !4271
  br label %do.body2, !dbg !4273

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4274

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4275

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4277, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4281, metadata !DIExpression()), !dbg !4280
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4280
  %conv8 = zext i1 %cmp7 to i32, !dbg !4280
  store i32 1, i32* %tmp9, align 4, !dbg !4280
  %1 = load i32, i32* %tmp9, align 4, !dbg !4280
  %call = call i64 @arch_local_irq_save() #8, !dbg !4282
  store i64 %call, i64* %flags, align 8, !dbg !4282
  br label %do.end, !dbg !4282

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4275

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4274

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4283, !srcloc !4284
  br label %do.body12, !dbg !4283

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @amd_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4285
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !4286
  %rlock.i = bitcast %union.anon.3* %3 to %struct.raw_spinlock*, !dbg !4286
  br label %do.end14, !dbg !4287

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4283

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4274

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4273

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4268

do.end18:                                         ; preds = %do.end17
  %4 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 5), align 8, !dbg !4288
  %cmp19 = icmp sgt i32 %4, 0, !dbg !4289
  br i1 %cmp19, label %if.then, label %if.end, !dbg !4290

if.then:                                          ; preds = %do.end18
  %5 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 5), align 8, !dbg !4291
  %inc = add i32 %5, 1, !dbg !4291
  store i32 %inc, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 5), align 8, !dbg !4291
  %6 = load i64, i64* %flags, align 8, !dbg !4292
  store %struct.spinlock* @amd_lock, %struct.spinlock** %lock.addr.i99, align 8
  store i64 %6, i64* %flags.addr.i100, align 8
  call void @llvm.dbg.declare(metadata !256, metadata !4293, metadata !DIExpression()) #6, !dbg !4296
  call void @llvm.dbg.declare(metadata !256, metadata !4297, metadata !DIExpression()) #6, !dbg !4296
  store i32 1, i32* %tmp.i101, align 4, !dbg !4296
  %7 = load i32, i32* %tmp.i101, align 4, !dbg !4296
  call void @llvm.dbg.declare(metadata !256, metadata !4298, metadata !DIExpression()) #6, !dbg !4303
  call void @llvm.dbg.declare(metadata !256, metadata !4304, metadata !DIExpression()) #6, !dbg !4303
  store i32 1, i32* %tmp8.i102, align 4, !dbg !4303
  %8 = load i32, i32* %tmp8.i102, align 4, !dbg !4303
  %9 = load i64, i64* %flags.addr.i100, align 8, !dbg !4305
  call void @arch_local_irq_restore(i64 %9) #9, !dbg !4305
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4306, !srcloc !4308
  %10 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i99, align 8, !dbg !4309
  %11 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %10, i32 0, i32 0, !dbg !4309
  %rlock.i103 = bitcast %union.anon.3* %11 to %struct.raw_spinlock*, !dbg !4309
  br label %if.end96, !dbg !4311

if.end:                                           ; preds = %do.end18
  %12 = bitcast %struct.amd_chipset_info* %info to i8*, !dbg !4312
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 40, i1 false), !dbg !4312
  %13 = load i64, i64* %flags, align 8, !dbg !4313
  store %struct.spinlock* @amd_lock, %struct.spinlock** %lock.addr.i104, align 8
  store i64 %13, i64* %flags.addr.i105, align 8
  call void @llvm.dbg.declare(metadata !256, metadata !4293, metadata !DIExpression()) #6, !dbg !4314
  call void @llvm.dbg.declare(metadata !256, metadata !4297, metadata !DIExpression()) #6, !dbg !4314
  store i32 1, i32* %tmp.i106, align 4, !dbg !4314
  %14 = load i32, i32* %tmp.i106, align 4, !dbg !4314
  call void @llvm.dbg.declare(metadata !256, metadata !4298, metadata !DIExpression()) #6, !dbg !4315
  call void @llvm.dbg.declare(metadata !256, metadata !4304, metadata !DIExpression()) #6, !dbg !4315
  store i32 1, i32* %tmp8.i107, align 4, !dbg !4315
  %15 = load i32, i32* %tmp8.i107, align 4, !dbg !4315
  %16 = load i64, i64* %flags.addr.i105, align 8, !dbg !4316
  call void @arch_local_irq_restore(i64 %16) #9, !dbg !4316
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4317, !srcloc !4308
  %17 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i104, align 8, !dbg !4318
  %18 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %17, i32 0, i32 0, !dbg !4318
  %rlock.i108 = bitcast %union.anon.3* %18 to %struct.raw_spinlock*, !dbg !4318
  %call21 = call i32 @amd_chipset_sb_type_init(%struct.amd_chipset_info* %info) #8, !dbg !4319
  %tobool = icmp ne i32 %call21, 0, !dbg !4319
  br i1 %tobool, label %if.end23, label %if.then22, !dbg !4321

if.then22:                                        ; preds = %if.end
  br label %commit, !dbg !4322

if.end23:                                         ; preds = %if.end
  %sb_type = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 3, !dbg !4324
  %gen = getelementptr inbounds %struct.amd_chipset_type, %struct.amd_chipset_type* %sb_type, i32 0, i32 0, !dbg !4325
  %19 = load i32, i32* %gen, align 4, !dbg !4325
  switch i32 %19, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb29
    i32 4, label %sw.bb29
    i32 5, label %sw.bb29
  ], !dbg !4326

sw.bb:                                            ; preds = %if.end23
  %sb_type24 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 3, !dbg !4327
  %rev = getelementptr inbounds %struct.amd_chipset_type, %struct.amd_chipset_type* %sb_type24, i32 0, i32 1, !dbg !4329
  %20 = load i8, i8* %rev, align 4, !dbg !4329
  %conv25 = zext i8 %20 to i32, !dbg !4330
  %cmp26 = icmp sle i32 %conv25, 59, !dbg !4331
  %need_pll_quirk28 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 6, !dbg !4332
  %frombool = zext i1 %cmp26 to i8, !dbg !4333
  store i8 %frombool, i8* %need_pll_quirk28, align 4, !dbg !4333
  br label %sw.epilog, !dbg !4334

sw.bb29:                                          ; preds = %if.end23, %if.end23, %if.end23
  %need_pll_quirk30 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 6, !dbg !4335
  store i8 1, i8* %need_pll_quirk30, align 4, !dbg !4336
  br label %sw.epilog, !dbg !4337

sw.default:                                       ; preds = %if.end23
  %need_pll_quirk31 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 6, !dbg !4338
  store i8 0, i8* %need_pll_quirk31, align 4, !dbg !4339
  br label %sw.epilog, !dbg !4340

sw.epilog:                                        ; preds = %sw.default, %sw.bb29, %sw.bb
  %need_pll_quirk32 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 6, !dbg !4341
  %21 = load i8, i8* %need_pll_quirk32, align 4, !dbg !4341
  %tobool33 = trunc i8 %21 to i1, !dbg !4341
  br i1 %tobool33, label %if.end40, label %if.then34, !dbg !4343

if.then34:                                        ; preds = %sw.epilog
  %smbus_dev = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 1, !dbg !4344
  %22 = load %struct.pci_dev*, %struct.pci_dev** %smbus_dev, align 8, !dbg !4344
  %tobool35 = icmp ne %struct.pci_dev* %22, null, !dbg !4347
  br i1 %tobool35, label %if.then36, label %if.end39, !dbg !4348

if.then36:                                        ; preds = %if.then34
  %smbus_dev37 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 1, !dbg !4349
  %23 = load %struct.pci_dev*, %struct.pci_dev** %smbus_dev37, align 8, !dbg !4349
  call void @pci_dev_put(%struct.pci_dev* %23) #8, !dbg !4351
  %smbus_dev38 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 1, !dbg !4352
  store %struct.pci_dev* null, %struct.pci_dev** %smbus_dev38, align 8, !dbg !4353
  br label %if.end39, !dbg !4354

if.end39:                                         ; preds = %if.then36, %if.then34
  br label %commit, !dbg !4355

if.end40:                                         ; preds = %sw.epilog
  %call41 = call %struct.pci_dev* @pci_get_device(i32 4130, i32 38401, %struct.pci_dev* null) #8, !dbg !4356
  %nb_dev = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 0, !dbg !4357
  store %struct.pci_dev* %call41, %struct.pci_dev** %nb_dev, align 8, !dbg !4358
  %nb_dev42 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 0, !dbg !4359
  %24 = load %struct.pci_dev*, %struct.pci_dev** %nb_dev42, align 8, !dbg !4359
  %tobool43 = icmp ne %struct.pci_dev* %24, null, !dbg !4361
  br i1 %tobool43, label %if.then44, label %if.else, !dbg !4362

if.then44:                                        ; preds = %if.end40
  %nb_type = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 2, !dbg !4363
  store i32 1, i32* %nb_type, align 8, !dbg !4365
  br label %if.end60, !dbg !4366

if.else:                                          ; preds = %if.end40
  %call45 = call %struct.pci_dev* @pci_get_device(i32 4130, i32 5392, %struct.pci_dev* null) #8, !dbg !4367
  %nb_dev46 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 0, !dbg !4369
  store %struct.pci_dev* %call45, %struct.pci_dev** %nb_dev46, align 8, !dbg !4370
  %nb_dev47 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 0, !dbg !4371
  %25 = load %struct.pci_dev*, %struct.pci_dev** %nb_dev47, align 8, !dbg !4371
  %tobool48 = icmp ne %struct.pci_dev* %25, null, !dbg !4373
  br i1 %tobool48, label %if.then49, label %if.else51, !dbg !4374

if.then49:                                        ; preds = %if.else
  %nb_type50 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 2, !dbg !4375
  store i32 2, i32* %nb_type50, align 8, !dbg !4377
  br label %if.end59, !dbg !4378

if.else51:                                        ; preds = %if.else
  %call52 = call %struct.pci_dev* @pci_get_device(i32 4130, i32 38400, %struct.pci_dev* null) #8, !dbg !4379
  %nb_dev53 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 0, !dbg !4381
  store %struct.pci_dev* %call52, %struct.pci_dev** %nb_dev53, align 8, !dbg !4382
  %nb_dev54 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 0, !dbg !4383
  %26 = load %struct.pci_dev*, %struct.pci_dev** %nb_dev54, align 8, !dbg !4383
  %tobool55 = icmp ne %struct.pci_dev* %26, null, !dbg !4385
  br i1 %tobool55, label %if.then56, label %if.end58, !dbg !4386

if.then56:                                        ; preds = %if.else51
  %nb_type57 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 2, !dbg !4387
  store i32 3, i32* %nb_type57, align 8, !dbg !4388
  br label %if.end58, !dbg !4389

if.end58:                                         ; preds = %if.then56, %if.else51
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then49
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then44
  %call61 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0)) #10, !dbg !4390
  br label %commit, !dbg !4390

commit:                                           ; preds = %if.end60, %if.end39, %if.then22
  call void @llvm.dbg.label(metadata !4391), !dbg !4392
  br label %do.body62, !dbg !4393

do.body62:                                        ; preds = %commit
  br label %do.body63, !dbg !4394

do.body63:                                        ; preds = %do.body62
  call void @llvm.dbg.declare(metadata i64* %__dummy64, metadata !4395, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.declare(metadata i64* %__dummy265, metadata !4398, metadata !DIExpression()), !dbg !4397
  %cmp66 = icmp eq i64* %__dummy64, %__dummy265, !dbg !4397
  %conv67 = zext i1 %cmp66 to i32, !dbg !4397
  store i32 1, i32* %tmp68, align 4, !dbg !4397
  %27 = load i32, i32* %tmp68, align 4, !dbg !4397
  br label %do.body69, !dbg !4399

do.body69:                                        ; preds = %do.body63
  br label %do.body70, !dbg !4400

do.body70:                                        ; preds = %do.body69
  br label %do.body71, !dbg !4401

do.body71:                                        ; preds = %do.body70
  call void @llvm.dbg.declare(metadata i64* %__dummy72, metadata !4403, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.declare(metadata i64* %__dummy273, metadata !4407, metadata !DIExpression()), !dbg !4406
  %cmp74 = icmp eq i64* %__dummy72, %__dummy273, !dbg !4406
  %conv75 = zext i1 %cmp74 to i32, !dbg !4406
  store i32 1, i32* %tmp76, align 4, !dbg !4406
  %28 = load i32, i32* %tmp76, align 4, !dbg !4406
  %call77 = call i64 @arch_local_irq_save() #8, !dbg !4408
  store i64 %call77, i64* %flags, align 8, !dbg !4408
  br label %do.end78, !dbg !4408

do.end78:                                         ; preds = %do.body71
  br label %do.end79, !dbg !4401

do.end79:                                         ; preds = %do.end78
  br label %do.body80, !dbg !4400

do.body80:                                        ; preds = %do.end79
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4409, !srcloc !4410
  br label %do.body81, !dbg !4409

do.body81:                                        ; preds = %do.body80
  store %struct.spinlock* @amd_lock, %struct.spinlock** %lock.addr.i109, align 8
  %29 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i109, align 8, !dbg !4411
  %30 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %29, i32 0, i32 0, !dbg !4412
  %rlock.i110 = bitcast %union.anon.3* %30 to %struct.raw_spinlock*, !dbg !4412
  br label %do.end83, !dbg !4413

do.end83:                                         ; preds = %do.body81
  br label %do.end84, !dbg !4409

do.end84:                                         ; preds = %do.end83
  br label %do.end85, !dbg !4400

do.end85:                                         ; preds = %do.end84
  br label %do.end86, !dbg !4399

do.end86:                                         ; preds = %do.end85
  br label %do.end87, !dbg !4394

do.end87:                                         ; preds = %do.end86
  %31 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 5), align 8, !dbg !4414
  %cmp88 = icmp sgt i32 %31, 0, !dbg !4415
  br i1 %cmp88, label %if.then90, label %if.else94, !dbg !4416

if.then90:                                        ; preds = %do.end87
  %32 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 5), align 8, !dbg !4417
  %inc91 = add i32 %32, 1, !dbg !4417
  store i32 %inc91, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 5), align 8, !dbg !4417
  %33 = load i64, i64* %flags, align 8, !dbg !4418
  store %struct.spinlock* @amd_lock, %struct.spinlock** %lock.addr.i111, align 8
  store i64 %33, i64* %flags.addr.i112, align 8
  call void @llvm.dbg.declare(metadata !256, metadata !4293, metadata !DIExpression()) #6, !dbg !4419
  call void @llvm.dbg.declare(metadata !256, metadata !4297, metadata !DIExpression()) #6, !dbg !4419
  store i32 1, i32* %tmp.i113, align 4, !dbg !4419
  %34 = load i32, i32* %tmp.i113, align 4, !dbg !4419
  call void @llvm.dbg.declare(metadata !256, metadata !4298, metadata !DIExpression()) #6, !dbg !4420
  call void @llvm.dbg.declare(metadata !256, metadata !4304, metadata !DIExpression()) #6, !dbg !4420
  store i32 1, i32* %tmp8.i114, align 4, !dbg !4420
  %35 = load i32, i32* %tmp8.i114, align 4, !dbg !4420
  %36 = load i64, i64* %flags.addr.i112, align 8, !dbg !4421
  call void @arch_local_irq_restore(i64 %36) #9, !dbg !4421
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4422, !srcloc !4308
  %37 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i111, align 8, !dbg !4423
  %38 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %37, i32 0, i32 0, !dbg !4423
  %rlock.i115 = bitcast %union.anon.3* %38 to %struct.raw_spinlock*, !dbg !4423
  %nb_dev92 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 0, !dbg !4424
  %39 = load %struct.pci_dev*, %struct.pci_dev** %nb_dev92, align 8, !dbg !4424
  call void @pci_dev_put(%struct.pci_dev* %39) #8, !dbg !4425
  %smbus_dev93 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 1, !dbg !4426
  %40 = load %struct.pci_dev*, %struct.pci_dev** %smbus_dev93, align 8, !dbg !4426
  call void @pci_dev_put(%struct.pci_dev* %40) #8, !dbg !4427
  br label %if.end96, !dbg !4428

if.else94:                                        ; preds = %do.end87
  %probe_count = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %info, i32 0, i32 5, !dbg !4429
  %41 = load i32, i32* %probe_count, align 8, !dbg !4430
  %inc95 = add i32 %41, 1, !dbg !4430
  store i32 %inc95, i32* %probe_count, align 8, !dbg !4430
  %42 = bitcast %struct.amd_chipset_info* %info to i8*, !dbg !4431
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.amd_chipset_info* @amd_chipset to i8*), i8* align 8 %42, i64 40, i1 false), !dbg !4431
  %43 = load i64, i64* %flags, align 8, !dbg !4432
  store %struct.spinlock* @amd_lock, %struct.spinlock** %lock.addr.i97, align 8
  store i64 %43, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !256, metadata !4293, metadata !DIExpression()) #6, !dbg !4433
  call void @llvm.dbg.declare(metadata !256, metadata !4297, metadata !DIExpression()) #6, !dbg !4433
  store i32 1, i32* %tmp.i, align 4, !dbg !4433
  %44 = load i32, i32* %tmp.i, align 4, !dbg !4433
  call void @llvm.dbg.declare(metadata !256, metadata !4298, metadata !DIExpression()) #6, !dbg !4434
  call void @llvm.dbg.declare(metadata !256, metadata !4304, metadata !DIExpression()) #6, !dbg !4434
  store i32 1, i32* %tmp8.i, align 4, !dbg !4434
  %45 = load i32, i32* %tmp8.i, align 4, !dbg !4434
  %46 = load i64, i64* %flags.addr.i, align 8, !dbg !4435
  call void @arch_local_irq_restore(i64 %46) #9, !dbg !4435
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4436, !srcloc !4308
  %47 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i97, align 8, !dbg !4437
  %48 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %47, i32 0, i32 0, !dbg !4437
  %rlock.i98 = bitcast %union.anon.3* %48 to %struct.raw_spinlock*, !dbg !4437
  br label %if.end96

if.end96:                                         ; preds = %if.then, %if.else94, %if.then90
  ret void, !dbg !4438
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @usb_amd_hang_symptom_quirk() #0 !dbg !4439 {
entry:
  %rev = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %rev, metadata !4440, metadata !DIExpression()), !dbg !4441
  call void @usb_amd_find_chipset_info() #8, !dbg !4442
  %0 = load i8, i8* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 3, i32 1), align 4, !dbg !4443
  store i8 %0, i8* %rev, align 1, !dbg !4444
  %1 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 3, i32 0), align 4, !dbg !4445
  %cmp = icmp eq i32 %1, 1, !dbg !4446
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !4447

lor.rhs:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 3, i32 0), align 4, !dbg !4448
  %cmp1 = icmp eq i32 %2, 2, !dbg !4449
  br i1 %cmp1, label %land.lhs.true, label %land.end, !dbg !4450

land.lhs.true:                                    ; preds = %lor.rhs
  %3 = load i8, i8* %rev, align 1, !dbg !4451
  %conv = zext i8 %3 to i32, !dbg !4451
  %cmp2 = icmp sge i32 %conv, 58, !dbg !4452
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !4453

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load i8, i8* %rev, align 1, !dbg !4454
  %conv4 = zext i8 %4 to i32, !dbg !4454
  %cmp5 = icmp sle i32 %conv4, 59, !dbg !4455
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.rhs
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %lor.rhs ], [ %cmp5, %land.rhs ], !dbg !4456
  br label %lor.end, !dbg !4447

lor.end:                                          ; preds = %land.end, %entry
  %6 = phi i1 [ true, %entry ], [ %5, %land.end ]
  ret i1 %6, !dbg !4457
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @usb_amd_prefetch_quirk() #0 !dbg !4458 {
entry:
  call void @usb_amd_find_chipset_info() #8, !dbg !4459
  %0 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 3, i32 0), align 4, !dbg !4460
  %cmp = icmp eq i32 %0, 3, !dbg !4461
  ret i1 %cmp, !dbg !4462
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @usb_amd_quirk_pll_check() #0 !dbg !4463 {
entry:
  call void @usb_amd_find_chipset_info() #8, !dbg !4464
  %0 = load i8, i8* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 6), align 4, !dbg !4465
  %tobool = trunc i8 %0 to i1, !dbg !4465
  ret i1 %tobool, !dbg !4466
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_amd_quirk_pll_disable() #0 !dbg !4467 {
entry:
  call void @usb_amd_quirk_pll(i32 1) #8, !dbg !4468
  ret void, !dbg !4469
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_amd_quirk_pll(i32 %disable) #0 !dbg !4470 {
entry:
  %lock.addr.i141 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i141, metadata !4219, metadata !DIExpression()), !dbg !4471
  %flags.addr.i142 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i142, metadata !4228, metadata !DIExpression()), !dbg !4475
  %tmp.i143 = alloca i32, align 4
  %tmp8.i144 = alloca i32, align 4
  %lock.addr.i136 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i136, metadata !4219, metadata !DIExpression()), !dbg !4476
  %flags.addr.i137 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i137, metadata !4228, metadata !DIExpression()), !dbg !4481
  %tmp.i138 = alloca i32, align 4
  %tmp8.i139 = alloca i32, align 4
  %lock.addr.i131 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i131, metadata !4219, metadata !DIExpression()), !dbg !4482
  %flags.addr.i132 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i132, metadata !4228, metadata !DIExpression()), !dbg !4488
  %tmp.i133 = alloca i32, align 4
  %tmp8.i134 = alloca i32, align 4
  %lock.addr.i126 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i126, metadata !4219, metadata !DIExpression()), !dbg !4489
  %flags.addr.i127 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i127, metadata !4228, metadata !DIExpression()), !dbg !4494
  %tmp.i128 = alloca i32, align 4
  %tmp8.i129 = alloca i32, align 4
  %lock.addr.i124 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i124, metadata !4219, metadata !DIExpression()), !dbg !4495
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4228, metadata !DIExpression()), !dbg !4497
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4230, metadata !DIExpression()), !dbg !4498
  %disable.addr = alloca i32, align 4
  %addr = alloca i32, align 4
  %addr_low = alloca i32, align 4
  %addr_high = alloca i32, align 4
  %val = alloca i32, align 4
  %bit = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store i32 %disable, i32* %disable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %disable.addr, metadata !4505, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.declare(metadata i32* %addr, metadata !4507, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.declare(metadata i32* %addr_low, metadata !4509, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.declare(metadata i32* %addr_high, metadata !4511, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4513, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.declare(metadata i32* %bit, metadata !4515, metadata !DIExpression()), !dbg !4516
  %0 = load i32, i32* %disable.addr, align 4, !dbg !4517
  %tobool = icmp ne i32 %0, 0, !dbg !4517
  %1 = zext i1 %tobool to i64, !dbg !4517
  %cond = select i1 %tobool, i32 0, i32 1, !dbg !4517
  store i32 %cond, i32* %bit, align 4, !dbg !4516
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4518, metadata !DIExpression()), !dbg !4519
  br label %do.body, !dbg !4520

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4521

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4522, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4525, metadata !DIExpression()), !dbg !4524
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4524
  %conv = zext i1 %cmp to i32, !dbg !4524
  store i32 1, i32* %tmp, align 4, !dbg !4524
  %2 = load i32, i32* %tmp, align 4, !dbg !4524
  br label %do.body2, !dbg !4526

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4527

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4528

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4530, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4534, metadata !DIExpression()), !dbg !4533
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4533
  %conv8 = zext i1 %cmp7 to i32, !dbg !4533
  store i32 1, i32* %tmp9, align 4, !dbg !4533
  %3 = load i32, i32* %tmp9, align 4, !dbg !4533
  %call = call i64 @arch_local_irq_save() #8, !dbg !4535
  store i64 %call, i64* %flags, align 8, !dbg !4535
  br label %do.end, !dbg !4535

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4528

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4527

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4536, !srcloc !4537
  br label %do.body12, !dbg !4536

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @amd_lock, %struct.spinlock** %lock.addr.i, align 8
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4538
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !4539
  %rlock.i = bitcast %union.anon.3* %5 to %struct.raw_spinlock*, !dbg !4539
  br label %do.end14, !dbg !4540

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4536

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4527

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4526

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4521

do.end18:                                         ; preds = %do.end17
  %6 = load i32, i32* %disable.addr, align 4, !dbg !4541
  %tobool19 = icmp ne i32 %6, 0, !dbg !4541
  br i1 %tobool19, label %if.then, label %if.else, !dbg !4542

if.then:                                          ; preds = %do.end18
  %7 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 4), align 4, !dbg !4543
  %inc = add i32 %7, 1, !dbg !4543
  store i32 %inc, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 4), align 4, !dbg !4543
  %8 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 4), align 4, !dbg !4544
  %cmp20 = icmp sgt i32 %8, 1, !dbg !4545
  br i1 %cmp20, label %if.then22, label %if.end, !dbg !4546

if.then22:                                        ; preds = %if.then
  %9 = load i64, i64* %flags, align 8, !dbg !4547
  store %struct.spinlock* @amd_lock, %struct.spinlock** %lock.addr.i126, align 8
  store i64 %9, i64* %flags.addr.i127, align 8
  call void @llvm.dbg.declare(metadata !256, metadata !4293, metadata !DIExpression()) #6, !dbg !4548
  call void @llvm.dbg.declare(metadata !256, metadata !4297, metadata !DIExpression()) #6, !dbg !4548
  store i32 1, i32* %tmp.i128, align 4, !dbg !4548
  %10 = load i32, i32* %tmp.i128, align 4, !dbg !4548
  call void @llvm.dbg.declare(metadata !256, metadata !4298, metadata !DIExpression()) #6, !dbg !4549
  call void @llvm.dbg.declare(metadata !256, metadata !4304, metadata !DIExpression()) #6, !dbg !4549
  store i32 1, i32* %tmp8.i129, align 4, !dbg !4549
  %11 = load i32, i32* %tmp8.i129, align 4, !dbg !4549
  %12 = load i64, i64* %flags.addr.i127, align 8, !dbg !4550
  call void @arch_local_irq_restore(i64 %12) #9, !dbg !4550
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4551, !srcloc !4308
  %13 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i126, align 8, !dbg !4552
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i32 0, i32 0, !dbg !4552
  %rlock.i130 = bitcast %union.anon.3* %14 to %struct.raw_spinlock*, !dbg !4552
  br label %return, !dbg !4553

if.end:                                           ; preds = %if.then
  br label %if.end27, !dbg !4554

if.else:                                          ; preds = %do.end18
  %15 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 4), align 4, !dbg !4555
  %dec = add i32 %15, -1, !dbg !4555
  store i32 %dec, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 4), align 4, !dbg !4555
  %16 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 4), align 4, !dbg !4556
  %cmp23 = icmp sgt i32 %16, 0, !dbg !4557
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !4558

if.then25:                                        ; preds = %if.else
  %17 = load i64, i64* %flags, align 8, !dbg !4559
  store %struct.spinlock* @amd_lock, %struct.spinlock** %lock.addr.i131, align 8
  store i64 %17, i64* %flags.addr.i132, align 8
  call void @llvm.dbg.declare(metadata !256, metadata !4293, metadata !DIExpression()) #6, !dbg !4560
  call void @llvm.dbg.declare(metadata !256, metadata !4297, metadata !DIExpression()) #6, !dbg !4560
  store i32 1, i32* %tmp.i133, align 4, !dbg !4560
  %18 = load i32, i32* %tmp.i133, align 4, !dbg !4560
  call void @llvm.dbg.declare(metadata !256, metadata !4298, metadata !DIExpression()) #6, !dbg !4561
  call void @llvm.dbg.declare(metadata !256, metadata !4304, metadata !DIExpression()) #6, !dbg !4561
  store i32 1, i32* %tmp8.i134, align 4, !dbg !4561
  %19 = load i32, i32* %tmp8.i134, align 4, !dbg !4561
  %20 = load i64, i64* %flags.addr.i132, align 8, !dbg !4562
  call void @arch_local_irq_restore(i64 %20) #9, !dbg !4562
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4563, !srcloc !4308
  %21 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i131, align 8, !dbg !4564
  %22 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %21, i32 0, i32 0, !dbg !4564
  %rlock.i135 = bitcast %union.anon.3* %22 to %struct.raw_spinlock*, !dbg !4564
  br label %return, !dbg !4565

if.end26:                                         ; preds = %if.else
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end
  %23 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 3, i32 0), align 4, !dbg !4566
  %cmp28 = icmp eq i32 %23, 3, !dbg !4567
  br i1 %cmp28, label %if.then35, label %lor.lhs.false, !dbg !4568

lor.lhs.false:                                    ; preds = %if.end27
  %24 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 3, i32 0), align 4, !dbg !4569
  %cmp30 = icmp eq i32 %24, 4, !dbg !4570
  br i1 %cmp30, label %if.then35, label %lor.lhs.false32, !dbg !4571

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %25 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 3, i32 0), align 4, !dbg !4572
  %cmp33 = icmp eq i32 %25, 5, !dbg !4573
  br i1 %cmp33, label %if.then35, label %if.else44, !dbg !4574

if.then35:                                        ; preds = %lor.lhs.false32, %lor.lhs.false, %if.end27
  call void @outb_p(i8 zeroext -32, i32 3286) #8, !dbg !4575
  %call36 = call zeroext i8 @inb_p(i32 3287) #8, !dbg !4577
  %conv37 = zext i8 %call36 to i32, !dbg !4577
  store i32 %conv37, i32* %addr_low, align 4, !dbg !4578
  call void @outb_p(i8 zeroext -31, i32 3286) #8, !dbg !4579
  %call38 = call zeroext i8 @inb_p(i32 3287) #8, !dbg !4580
  %conv39 = zext i8 %call38 to i32, !dbg !4580
  store i32 %conv39, i32* %addr_high, align 4, !dbg !4581
  %26 = load i32, i32* %addr_high, align 4, !dbg !4582
  %shl = shl i32 %26, 8, !dbg !4583
  %27 = load i32, i32* %addr_low, align 4, !dbg !4584
  %or = or i32 %shl, %27, !dbg !4585
  store i32 %or, i32* %addr, align 4, !dbg !4586
  %28 = load i32, i32* %addr, align 4, !dbg !4587
  %add = add i32 %28, 0, !dbg !4587
  call void @outl_p(i32 48, i32 %add) #8, !dbg !4588
  %29 = load i32, i32* %addr, align 4, !dbg !4589
  %add40 = add i32 %29, 4, !dbg !4589
  call void @outl_p(i32 64, i32 %add40) #8, !dbg !4590
  %30 = load i32, i32* %addr, align 4, !dbg !4591
  %add41 = add i32 %30, 0, !dbg !4591
  call void @outl_p(i32 52, i32 %add41) #8, !dbg !4592
  %31 = load i32, i32* %addr, align 4, !dbg !4593
  %add42 = add i32 %31, 4, !dbg !4593
  %call43 = call i32 @inl_p(i32 %add42) #8, !dbg !4594
  store i32 %call43, i32* %val, align 4, !dbg !4595
  br label %if.end59, !dbg !4596

if.else44:                                        ; preds = %lor.lhs.false32
  %32 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 3, i32 0), align 4, !dbg !4597
  %cmp45 = icmp eq i32 %32, 2, !dbg !4598
  br i1 %cmp45, label %land.lhs.true, label %if.else57, !dbg !4599

land.lhs.true:                                    ; preds = %if.else44
  %33 = load i8, i8* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 3, i32 1), align 4, !dbg !4600
  %conv47 = zext i8 %33 to i32, !dbg !4601
  %cmp48 = icmp sle i32 %conv47, 59, !dbg !4602
  br i1 %cmp48, label %if.then50, label %if.else57, !dbg !4603

if.then50:                                        ; preds = %land.lhs.true
  %34 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 1), align 8, !dbg !4604
  %call51 = call i32 @pci_read_config_dword(%struct.pci_dev* %34, i32 240, i32* %addr) #8, !dbg !4606
  %35 = load i32, i32* %addr, align 4, !dbg !4607
  %add52 = add i32 %35, 0, !dbg !4607
  call void @outl(i32 48, i32 %add52) #8, !dbg !4608
  %36 = load i32, i32* %addr, align 4, !dbg !4609
  %add53 = add i32 %36, 4, !dbg !4609
  call void @outl(i32 64, i32 %add53) #8, !dbg !4610
  %37 = load i32, i32* %addr, align 4, !dbg !4611
  %add54 = add i32 %37, 0, !dbg !4611
  call void @outl(i32 52, i32 %add54) #8, !dbg !4612
  %38 = load i32, i32* %addr, align 4, !dbg !4613
  %add55 = add i32 %38, 4, !dbg !4613
  %call56 = call i32 @inl(i32 %add55) #8, !dbg !4614
  store i32 %call56, i32* %val, align 4, !dbg !4615
  br label %if.end58, !dbg !4616

if.else57:                                        ; preds = %land.lhs.true, %if.else44
  %39 = load i64, i64* %flags, align 8, !dbg !4617
  store %struct.spinlock* @amd_lock, %struct.spinlock** %lock.addr.i136, align 8
  store i64 %39, i64* %flags.addr.i137, align 8
  call void @llvm.dbg.declare(metadata !256, metadata !4293, metadata !DIExpression()) #6, !dbg !4618
  call void @llvm.dbg.declare(metadata !256, metadata !4297, metadata !DIExpression()) #6, !dbg !4618
  store i32 1, i32* %tmp.i138, align 4, !dbg !4618
  %40 = load i32, i32* %tmp.i138, align 4, !dbg !4618
  call void @llvm.dbg.declare(metadata !256, metadata !4298, metadata !DIExpression()) #6, !dbg !4619
  call void @llvm.dbg.declare(metadata !256, metadata !4304, metadata !DIExpression()) #6, !dbg !4619
  store i32 1, i32* %tmp8.i139, align 4, !dbg !4619
  %41 = load i32, i32* %tmp8.i139, align 4, !dbg !4619
  %42 = load i64, i64* %flags.addr.i137, align 8, !dbg !4620
  call void @arch_local_irq_restore(i64 %42) #9, !dbg !4620
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4621, !srcloc !4308
  %43 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i136, align 8, !dbg !4622
  %44 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %43, i32 0, i32 0, !dbg !4622
  %rlock.i140 = bitcast %union.anon.3* %44 to %struct.raw_spinlock*, !dbg !4622
  br label %return, !dbg !4623

if.end58:                                         ; preds = %if.then50
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then35
  %45 = load i32, i32* %disable.addr, align 4, !dbg !4624
  %tobool60 = icmp ne i32 %45, 0, !dbg !4624
  br i1 %tobool60, label %if.then61, label %if.else63, !dbg !4626

if.then61:                                        ; preds = %if.end59
  %46 = load i32, i32* %val, align 4, !dbg !4627
  %and = and i32 %46, -9, !dbg !4627
  store i32 %and, i32* %val, align 4, !dbg !4627
  %47 = load i32, i32* %val, align 4, !dbg !4629
  %or62 = or i32 %47, 528, !dbg !4629
  store i32 %or62, i32* %val, align 4, !dbg !4629
  br label %if.end66, !dbg !4630

if.else63:                                        ; preds = %if.end59
  %48 = load i32, i32* %val, align 4, !dbg !4631
  %or64 = or i32 %48, 8, !dbg !4631
  store i32 %or64, i32* %val, align 4, !dbg !4631
  %49 = load i32, i32* %val, align 4, !dbg !4633
  %and65 = and i32 %49, -529, !dbg !4633
  store i32 %and65, i32* %val, align 4, !dbg !4633
  br label %if.end66

if.end66:                                         ; preds = %if.else63, %if.then61
  %50 = load i32, i32* %val, align 4, !dbg !4634
  %51 = load i32, i32* %addr, align 4, !dbg !4635
  %add67 = add i32 %51, 4, !dbg !4635
  call void @outl_p(i32 %50, i32 %add67) #8, !dbg !4636
  %52 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 0), align 8, !dbg !4637
  %tobool68 = icmp ne %struct.pci_dev* %52, null, !dbg !4638
  br i1 %tobool68, label %if.end70, label %if.then69, !dbg !4639

if.then69:                                        ; preds = %if.end66
  %53 = load i64, i64* %flags, align 8, !dbg !4640
  store %struct.spinlock* @amd_lock, %struct.spinlock** %lock.addr.i141, align 8
  store i64 %53, i64* %flags.addr.i142, align 8
  call void @llvm.dbg.declare(metadata !256, metadata !4293, metadata !DIExpression()) #6, !dbg !4641
  call void @llvm.dbg.declare(metadata !256, metadata !4297, metadata !DIExpression()) #6, !dbg !4641
  store i32 1, i32* %tmp.i143, align 4, !dbg !4641
  %54 = load i32, i32* %tmp.i143, align 4, !dbg !4641
  call void @llvm.dbg.declare(metadata !256, metadata !4298, metadata !DIExpression()) #6, !dbg !4642
  call void @llvm.dbg.declare(metadata !256, metadata !4304, metadata !DIExpression()) #6, !dbg !4642
  store i32 1, i32* %tmp8.i144, align 4, !dbg !4642
  %55 = load i32, i32* %tmp8.i144, align 4, !dbg !4642
  %56 = load i64, i64* %flags.addr.i142, align 8, !dbg !4643
  call void @arch_local_irq_restore(i64 %56) #9, !dbg !4643
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4644, !srcloc !4308
  %57 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i141, align 8, !dbg !4645
  %58 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %57, i32 0, i32 0, !dbg !4645
  %rlock.i145 = bitcast %union.anon.3* %58 to %struct.raw_spinlock*, !dbg !4645
  br label %return, !dbg !4646

if.end70:                                         ; preds = %if.end66
  %59 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 2), align 8, !dbg !4647
  %cmp71 = icmp eq i32 %59, 1, !dbg !4649
  br i1 %cmp71, label %if.then76, label %lor.lhs.false73, !dbg !4650

lor.lhs.false73:                                  ; preds = %if.end70
  %60 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 2), align 8, !dbg !4651
  %cmp74 = icmp eq i32 %60, 3, !dbg !4652
  br i1 %cmp74, label %if.then76, label %if.else100, !dbg !4653

if.then76:                                        ; preds = %lor.lhs.false73, %if.end70
  store i32 65600, i32* %addr, align 4, !dbg !4654
  %61 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 0), align 8, !dbg !4656
  %62 = load i32, i32* %addr, align 4, !dbg !4657
  %call77 = call i32 @pci_write_config_dword(%struct.pci_dev* %61, i32 224, i32 %62) #8, !dbg !4658
  %63 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 0), align 8, !dbg !4659
  %call78 = call i32 @pci_read_config_dword(%struct.pci_dev* %63, i32 228, i32* %val) #8, !dbg !4660
  %64 = load i32, i32* %val, align 4, !dbg !4661
  %and79 = and i32 %64, -4634, !dbg !4661
  store i32 %and79, i32* %val, align 4, !dbg !4661
  %65 = load i32, i32* %bit, align 4, !dbg !4662
  %66 = load i32, i32* %bit, align 4, !dbg !4663
  %shl80 = shl i32 %66, 3, !dbg !4664
  %or81 = or i32 %65, %shl80, !dbg !4665
  %67 = load i32, i32* %bit, align 4, !dbg !4666
  %shl82 = shl i32 %67, 12, !dbg !4667
  %or83 = or i32 %or81, %shl82, !dbg !4668
  %68 = load i32, i32* %val, align 4, !dbg !4669
  %or84 = or i32 %68, %or83, !dbg !4669
  store i32 %or84, i32* %val, align 4, !dbg !4669
  %69 = load i32, i32* %bit, align 4, !dbg !4670
  %tobool85 = icmp ne i32 %69, 0, !dbg !4671
  %lnot = xor i1 %tobool85, true, !dbg !4671
  %lnot.ext = zext i1 %lnot to i32, !dbg !4671
  %shl86 = shl i32 %lnot.ext, 4, !dbg !4672
  %70 = load i32, i32* %bit, align 4, !dbg !4673
  %tobool87 = icmp ne i32 %70, 0, !dbg !4674
  %lnot88 = xor i1 %tobool87, true, !dbg !4674
  %lnot.ext89 = zext i1 %lnot88 to i32, !dbg !4674
  %shl90 = shl i32 %lnot.ext89, 9, !dbg !4675
  %or91 = or i32 %shl86, %shl90, !dbg !4676
  %71 = load i32, i32* %val, align 4, !dbg !4677
  %or92 = or i32 %71, %or91, !dbg !4677
  store i32 %or92, i32* %val, align 4, !dbg !4677
  %72 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 0), align 8, !dbg !4678
  %73 = load i32, i32* %val, align 4, !dbg !4679
  %call93 = call i32 @pci_write_config_dword(%struct.pci_dev* %72, i32 228, i32 %73) #8, !dbg !4680
  store i32 65538, i32* %addr, align 4, !dbg !4681
  %74 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 0), align 8, !dbg !4682
  %75 = load i32, i32* %addr, align 4, !dbg !4683
  %call94 = call i32 @pci_write_config_dword(%struct.pci_dev* %74, i32 224, i32 %75) #8, !dbg !4684
  %76 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 0), align 8, !dbg !4685
  %call95 = call i32 @pci_read_config_dword(%struct.pci_dev* %76, i32 228, i32* %val) #8, !dbg !4686
  %77 = load i32, i32* %val, align 4, !dbg !4687
  %and96 = and i32 %77, -257, !dbg !4687
  store i32 %and96, i32* %val, align 4, !dbg !4687
  %78 = load i32, i32* %bit, align 4, !dbg !4688
  %shl97 = shl i32 %78, 8, !dbg !4689
  %79 = load i32, i32* %val, align 4, !dbg !4690
  %or98 = or i32 %79, %shl97, !dbg !4690
  store i32 %or98, i32* %val, align 4, !dbg !4690
  %80 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 0), align 8, !dbg !4691
  %81 = load i32, i32* %val, align 4, !dbg !4692
  %call99 = call i32 @pci_write_config_dword(%struct.pci_dev* %80, i32 228, i32 %81) #8, !dbg !4693
  br label %if.end123, !dbg !4694

if.else100:                                       ; preds = %lor.lhs.false73
  %82 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 2), align 8, !dbg !4695
  %cmp101 = icmp eq i32 %82, 2, !dbg !4697
  br i1 %cmp101, label %if.then103, label %if.end122, !dbg !4698

if.then103:                                       ; preds = %if.else100
  store i32 17825810, i32* %addr, align 4, !dbg !4699
  %83 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 0), align 8, !dbg !4701
  %84 = load i32, i32* %addr, align 4, !dbg !4702
  %call104 = call i32 @pci_write_config_dword(%struct.pci_dev* %83, i32 224, i32 %84) #8, !dbg !4703
  %85 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 0), align 8, !dbg !4704
  %call105 = call i32 @pci_read_config_dword(%struct.pci_dev* %85, i32 228, i32* %val) #8, !dbg !4705
  %86 = load i32, i32* %disable.addr, align 4, !dbg !4706
  %tobool106 = icmp ne i32 %86, 0, !dbg !4706
  br i1 %tobool106, label %if.then107, label %if.else109, !dbg !4708

if.then107:                                       ; preds = %if.then103
  %87 = load i32, i32* %val, align 4, !dbg !4709
  %and108 = and i32 %87, -8065, !dbg !4709
  store i32 %and108, i32* %val, align 4, !dbg !4709
  br label %if.end111, !dbg !4710

if.else109:                                       ; preds = %if.then103
  %88 = load i32, i32* %val, align 4, !dbg !4711
  %or110 = or i32 %88, 8064, !dbg !4711
  store i32 %or110, i32* %val, align 4, !dbg !4711
  br label %if.end111

if.end111:                                        ; preds = %if.else109, %if.then107
  %89 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 0), align 8, !dbg !4712
  %90 = load i32, i32* %val, align 4, !dbg !4713
  %call112 = call i32 @pci_write_config_dword(%struct.pci_dev* %89, i32 228, i32 %90) #8, !dbg !4714
  store i32 17825811, i32* %addr, align 4, !dbg !4715
  %91 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 0), align 8, !dbg !4716
  %92 = load i32, i32* %addr, align 4, !dbg !4717
  %call113 = call i32 @pci_write_config_dword(%struct.pci_dev* %91, i32 224, i32 %92) #8, !dbg !4718
  %93 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 0), align 8, !dbg !4719
  %call114 = call i32 @pci_read_config_dword(%struct.pci_dev* %93, i32 228, i32* %val) #8, !dbg !4720
  %94 = load i32, i32* %disable.addr, align 4, !dbg !4721
  %tobool115 = icmp ne i32 %94, 0, !dbg !4721
  br i1 %tobool115, label %if.then116, label %if.else118, !dbg !4723

if.then116:                                       ; preds = %if.end111
  %95 = load i32, i32* %val, align 4, !dbg !4724
  %and117 = and i32 %95, -8065, !dbg !4724
  store i32 %and117, i32* %val, align 4, !dbg !4724
  br label %if.end120, !dbg !4725

if.else118:                                       ; preds = %if.end111
  %96 = load i32, i32* %val, align 4, !dbg !4726
  %or119 = or i32 %96, 8064, !dbg !4726
  store i32 %or119, i32* %val, align 4, !dbg !4726
  br label %if.end120

if.end120:                                        ; preds = %if.else118, %if.then116
  %97 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 0), align 8, !dbg !4727
  %98 = load i32, i32* %val, align 4, !dbg !4728
  %call121 = call i32 @pci_write_config_dword(%struct.pci_dev* %97, i32 228, i32 %98) #8, !dbg !4729
  br label %if.end122, !dbg !4730

if.end122:                                        ; preds = %if.end120, %if.else100
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.then76
  %99 = load i64, i64* %flags, align 8, !dbg !4731
  store %struct.spinlock* @amd_lock, %struct.spinlock** %lock.addr.i124, align 8
  store i64 %99, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !256, metadata !4293, metadata !DIExpression()) #6, !dbg !4732
  call void @llvm.dbg.declare(metadata !256, metadata !4297, metadata !DIExpression()) #6, !dbg !4732
  store i32 1, i32* %tmp.i, align 4, !dbg !4732
  %100 = load i32, i32* %tmp.i, align 4, !dbg !4732
  call void @llvm.dbg.declare(metadata !256, metadata !4298, metadata !DIExpression()) #6, !dbg !4733
  call void @llvm.dbg.declare(metadata !256, metadata !4304, metadata !DIExpression()) #6, !dbg !4733
  store i32 1, i32* %tmp8.i, align 4, !dbg !4733
  %101 = load i32, i32* %tmp8.i, align 4, !dbg !4733
  %102 = load i64, i64* %flags.addr.i, align 8, !dbg !4734
  call void @arch_local_irq_restore(i64 %102) #9, !dbg !4734
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4735, !srcloc !4308
  %103 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i124, align 8, !dbg !4736
  %104 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %103, i32 0, i32 0, !dbg !4736
  %rlock.i125 = bitcast %union.anon.3* %104 to %struct.raw_spinlock*, !dbg !4736
  br label %return, !dbg !4737

return:                                           ; preds = %if.end123, %if.then69, %if.else57, %if.then25, %if.then22
  ret void, !dbg !4738
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_asmedia_modifyflowcontrol(%struct.pci_dev* %pdev) #0 !dbg !4739 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4740, metadata !DIExpression()), !dbg !4741
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4742
  %call = call i32 @usb_asmedia_wait_write(%struct.pci_dev* %0) #8, !dbg !4744
  %cmp = icmp ne i32 %call, 0, !dbg !4745
  br i1 %cmp, label %if.then, label %if.end, !dbg !4746

if.then:                                          ; preds = %entry
  br label %return, !dbg !4747

if.end:                                           ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4748
  %call1 = call i32 @pci_write_config_dword(%struct.pci_dev* %1, i32 248, i32 66595) #8, !dbg !4749
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4750
  %call2 = call i32 @pci_write_config_dword(%struct.pci_dev* %2, i32 252, i32 64048) #8, !dbg !4751
  %3 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4752
  %call3 = call i32 @pci_write_config_byte(%struct.pci_dev* %3, i32 224, i8 zeroext 2) #8, !dbg !4753
  %4 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4754
  %call4 = call i32 @usb_asmedia_wait_write(%struct.pci_dev* %4) #8, !dbg !4756
  %cmp5 = icmp ne i32 %call4, 0, !dbg !4757
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !4758

if.then6:                                         ; preds = %if.end
  br label %return, !dbg !4759

if.end7:                                          ; preds = %if.end
  %5 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4760
  %call8 = call i32 @pci_write_config_dword(%struct.pci_dev* %5, i32 248, i32 186) #8, !dbg !4761
  %6 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4762
  %call9 = call i32 @pci_write_config_dword(%struct.pci_dev* %6, i32 252, i32 0) #8, !dbg !4763
  %7 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4764
  %call10 = call i32 @pci_write_config_byte(%struct.pci_dev* %7, i32 224, i8 zeroext 2) #8, !dbg !4765
  br label %return, !dbg !4766

return:                                           ; preds = %if.end7, %if.then6, %if.then
  ret void, !dbg !4766
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_asmedia_wait_write(%struct.pci_dev* %pdev) #0 !dbg !4767 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %retry_count = alloca i64, align 8
  %value = alloca i8, align 1
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4768, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.declare(metadata i64* %retry_count, metadata !4770, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.declare(metadata i8* %value, metadata !4772, metadata !DIExpression()), !dbg !4773
  store i64 1000, i64* %retry_count, align 8, !dbg !4774
  br label %for.cond, !dbg !4776

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %retry_count, align 8, !dbg !4777
  %cmp = icmp ugt i64 %0, 0, !dbg !4779
  br i1 %cmp, label %for.body, label %for.end, !dbg !4780

for.body:                                         ; preds = %for.cond
  %1 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4781
  %call = call i32 @pci_read_config_byte(%struct.pci_dev* %1, i32 224, i8* %value) #8, !dbg !4783
  %2 = load i8, i8* %value, align 1, !dbg !4784
  %conv = zext i8 %2 to i32, !dbg !4784
  %cmp1 = icmp eq i32 %conv, 255, !dbg !4786
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4787

if.then:                                          ; preds = %for.body
  %3 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4788
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 41, !dbg !4788
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.usb_asmedia_wait_write, i64 0, i64 0)) #10, !dbg !4788
  store i32 -5, i32* %retval, align 4, !dbg !4790
  br label %return, !dbg !4790

if.end:                                           ; preds = %for.body
  %4 = load i8, i8* %value, align 1, !dbg !4791
  %conv3 = zext i8 %4 to i32, !dbg !4791
  %and = and i32 %conv3, 2, !dbg !4793
  %cmp4 = icmp eq i32 %and, 0, !dbg !4794
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !4795

if.then6:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4796
  br label %return, !dbg !4796

if.end7:                                          ; preds = %if.end
  call void @__const_udelay(i64 214750) #8, !dbg !4797
  br label %for.inc, !dbg !4802

for.inc:                                          ; preds = %if.end7
  %5 = load i64, i64* %retry_count, align 8, !dbg !4803
  %dec = add i64 %5, -1, !dbg !4803
  store i64 %dec, i64* %retry_count, align 8, !dbg !4803
  br label %for.cond, !dbg !4804, !llvm.loop !4805

for.end:                                          ; preds = %for.cond
  %6 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4807
  %dev8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 41, !dbg !4807
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.usb_asmedia_wait_write, i64 0, i64 0)) #10, !dbg !4807
  store i32 -110, i32* %retval, align 4, !dbg !4808
  br label %return, !dbg !4808

return:                                           ; preds = %for.end, %if.then6, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !4809
  ret i32 %7, !dbg !4809
}

; Function Attrs: noredzone
declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_amd_quirk_pll_enable() #0 !dbg !4810 {
entry:
  call void @usb_amd_quirk_pll(i32 0) #8, !dbg !4811
  ret void, !dbg !4812
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_amd_dev_put() #0 !dbg !4813 {
entry:
  %lock.addr.i23 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i23, metadata !4219, metadata !DIExpression()), !dbg !4814
  %flags.addr.i24 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i24, metadata !4228, metadata !DIExpression()), !dbg !4818
  %tmp.i25 = alloca i32, align 4
  %tmp8.i26 = alloca i32, align 4
  %lock.addr.i21 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i21, metadata !4219, metadata !DIExpression()), !dbg !4819
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4228, metadata !DIExpression()), !dbg !4821
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4230, metadata !DIExpression()), !dbg !4822
  %nb = alloca %struct.pci_dev*, align 8
  %smbus = alloca %struct.pci_dev*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %nb, metadata !4829, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %smbus, metadata !4831, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4833, metadata !DIExpression()), !dbg !4834
  br label %do.body, !dbg !4835

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4836

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4837, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4840, metadata !DIExpression()), !dbg !4839
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4839
  %conv = zext i1 %cmp to i32, !dbg !4839
  store i32 1, i32* %tmp, align 4, !dbg !4839
  %0 = load i32, i32* %tmp, align 4, !dbg !4839
  br label %do.body2, !dbg !4841

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4842

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4843

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4845, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4849, metadata !DIExpression()), !dbg !4848
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4848
  %conv8 = zext i1 %cmp7 to i32, !dbg !4848
  store i32 1, i32* %tmp9, align 4, !dbg !4848
  %1 = load i32, i32* %tmp9, align 4, !dbg !4848
  %call = call i64 @arch_local_irq_save() #8, !dbg !4850
  store i64 %call, i64* %flags, align 8, !dbg !4850
  br label %do.end, !dbg !4850

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4843

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4842

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4851, !srcloc !4852
  br label %do.body12, !dbg !4851

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @amd_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4853
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !4854
  %rlock.i = bitcast %union.anon.3* %3 to %struct.raw_spinlock*, !dbg !4854
  br label %do.end14, !dbg !4855

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4851

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4842

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4841

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4836

do.end18:                                         ; preds = %do.end17
  %4 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 5), align 8, !dbg !4856
  %dec = add i32 %4, -1, !dbg !4856
  store i32 %dec, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 5), align 8, !dbg !4856
  %5 = load i32, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 5), align 8, !dbg !4857
  %cmp19 = icmp sgt i32 %5, 0, !dbg !4858
  br i1 %cmp19, label %if.then, label %if.end, !dbg !4859

if.then:                                          ; preds = %do.end18
  %6 = load i64, i64* %flags, align 8, !dbg !4860
  store %struct.spinlock* @amd_lock, %struct.spinlock** %lock.addr.i23, align 8
  store i64 %6, i64* %flags.addr.i24, align 8
  call void @llvm.dbg.declare(metadata !256, metadata !4293, metadata !DIExpression()) #6, !dbg !4861
  call void @llvm.dbg.declare(metadata !256, metadata !4297, metadata !DIExpression()) #6, !dbg !4861
  store i32 1, i32* %tmp.i25, align 4, !dbg !4861
  %7 = load i32, i32* %tmp.i25, align 4, !dbg !4861
  call void @llvm.dbg.declare(metadata !256, metadata !4298, metadata !DIExpression()) #6, !dbg !4862
  call void @llvm.dbg.declare(metadata !256, metadata !4304, metadata !DIExpression()) #6, !dbg !4862
  store i32 1, i32* %tmp8.i26, align 4, !dbg !4862
  %8 = load i32, i32* %tmp8.i26, align 4, !dbg !4862
  %9 = load i64, i64* %flags.addr.i24, align 8, !dbg !4863
  call void @arch_local_irq_restore(i64 %9) #9, !dbg !4863
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4864, !srcloc !4308
  %10 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i23, align 8, !dbg !4865
  %11 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %10, i32 0, i32 0, !dbg !4865
  %rlock.i27 = bitcast %union.anon.3* %11 to %struct.raw_spinlock*, !dbg !4865
  br label %return, !dbg !4866

if.end:                                           ; preds = %do.end18
  %12 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 0), align 8, !dbg !4867
  store %struct.pci_dev* %12, %struct.pci_dev** %nb, align 8, !dbg !4868
  %13 = load %struct.pci_dev*, %struct.pci_dev** getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 1), align 8, !dbg !4869
  store %struct.pci_dev* %13, %struct.pci_dev** %smbus, align 8, !dbg !4870
  store %struct.pci_dev* null, %struct.pci_dev** getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 0), align 8, !dbg !4871
  store %struct.pci_dev* null, %struct.pci_dev** getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 1), align 8, !dbg !4872
  store i32 0, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 2), align 8, !dbg !4873
  call void @llvm.memset.p0i8.i64(i8* align 4 bitcast (%struct.amd_chipset_type* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 3) to i8*), i8 0, i64 8, i1 false), !dbg !4874
  store i32 0, i32* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 4), align 4, !dbg !4875
  store i8 0, i8* getelementptr inbounds (%struct.amd_chipset_info, %struct.amd_chipset_info* @amd_chipset, i32 0, i32 6), align 4, !dbg !4876
  %14 = load i64, i64* %flags, align 8, !dbg !4877
  store %struct.spinlock* @amd_lock, %struct.spinlock** %lock.addr.i21, align 8
  store i64 %14, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !256, metadata !4293, metadata !DIExpression()) #6, !dbg !4878
  call void @llvm.dbg.declare(metadata !256, metadata !4297, metadata !DIExpression()) #6, !dbg !4878
  store i32 1, i32* %tmp.i, align 4, !dbg !4878
  %15 = load i32, i32* %tmp.i, align 4, !dbg !4878
  call void @llvm.dbg.declare(metadata !256, metadata !4298, metadata !DIExpression()) #6, !dbg !4879
  call void @llvm.dbg.declare(metadata !256, metadata !4304, metadata !DIExpression()) #6, !dbg !4879
  store i32 1, i32* %tmp8.i, align 4, !dbg !4879
  %16 = load i32, i32* %tmp8.i, align 4, !dbg !4879
  %17 = load i64, i64* %flags.addr.i, align 8, !dbg !4880
  call void @arch_local_irq_restore(i64 %17) #9, !dbg !4880
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4881, !srcloc !4308
  %18 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i21, align 8, !dbg !4882
  %19 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %18, i32 0, i32 0, !dbg !4882
  %rlock.i22 = bitcast %union.anon.3* %19 to %struct.raw_spinlock*, !dbg !4882
  %20 = load %struct.pci_dev*, %struct.pci_dev** %nb, align 8, !dbg !4883
  call void @pci_dev_put(%struct.pci_dev* %20) #8, !dbg !4884
  %21 = load %struct.pci_dev*, %struct.pci_dev** %smbus, align 8, !dbg !4885
  call void @pci_dev_put(%struct.pci_dev* %21) #8, !dbg !4886
  br label %return, !dbg !4887

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4887
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !4888 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !4892, metadata !DIExpression()), !dbg !4893
  %call = call i64 @arch_local_save_flags() #8, !dbg !4894
  store i64 %call, i64* %f, align 8, !dbg !4895
  call void @arch_local_irq_disable() #8, !dbg !4896
  %0 = load i64, i64* %f, align 8, !dbg !4897
  ret i64 %0, !dbg !4898
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local void @pci_dev_put(%struct.pci_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @usb_amd_pt_check_port(%struct.device* %device, i32 %port) #0 !dbg !4899 {
entry:
  %retval = alloca i1, align 1
  %device.addr = alloca %struct.device*, align 8
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  %port_shift = alloca i8, align 1
  %pdev = alloca %struct.pci_dev*, align 8
  %reg = alloca i16, align 2
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !4902, metadata !DIExpression()), !dbg !4903
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4904, metadata !DIExpression()), !dbg !4905
  call void @llvm.dbg.declare(metadata i8* %value, metadata !4906, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.declare(metadata i8* %port_shift, metadata !4908, metadata !DIExpression()), !dbg !4909
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev, metadata !4910, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.declare(metadata i16* %reg, metadata !4912, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4914, metadata !DIExpression()), !dbg !4916
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !4916
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4916
  store i8* %1, i8** %__mptr, align 8, !dbg !4916
  br label %do.body, !dbg !4916

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4917

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4916
  %add.ptr = getelementptr i8, i8* %2, i64 -176, !dbg !4916
  %3 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !4916
  store %struct.pci_dev* %3, %struct.pci_dev** %tmp, align 8, !dbg !4917
  %4 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !4916
  store %struct.pci_dev* %4, %struct.pci_dev** %pdev, align 8, !dbg !4919
  %5 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4920
  %call = call i32 @pci_write_config_word(%struct.pci_dev* %5, i32 232, i16 zeroext -23264) #8, !dbg !4921
  %6 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4922
  %call1 = call i32 @pci_read_config_byte(%struct.pci_dev* %6, i32 228, i8* %value) #8, !dbg !4923
  %7 = load i8, i8* %value, align 1, !dbg !4924
  %conv = zext i8 %7 to i32, !dbg !4924
  %cmp = icmp ne i32 %conv, 120, !dbg !4926
  br i1 %cmp, label %if.then, label %if.end, !dbg !4927

if.then:                                          ; preds = %do.end
  store i1 false, i1* %retval, align 1, !dbg !4928
  br label %return, !dbg !4928

if.end:                                           ; preds = %do.end
  %8 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4929
  %call3 = call i32 @pci_write_config_word(%struct.pci_dev* %8, i32 232, i16 zeroext -23263) #8, !dbg !4930
  %9 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4931
  %call4 = call i32 @pci_read_config_byte(%struct.pci_dev* %9, i32 228, i8* %value) #8, !dbg !4932
  %10 = load i8, i8* %value, align 1, !dbg !4933
  %conv5 = zext i8 %10 to i32, !dbg !4933
  %cmp6 = icmp ne i32 %conv5, 86, !dbg !4935
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !4936

if.then8:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !4937
  br label %return, !dbg !4937

if.end9:                                          ; preds = %if.end
  %11 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4938
  %call10 = call i32 @pci_write_config_word(%struct.pci_dev* %11, i32 232, i16 zeroext -23262) #8, !dbg !4939
  %12 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4940
  %call11 = call i32 @pci_read_config_byte(%struct.pci_dev* %12, i32 228, i8* %value) #8, !dbg !4941
  %13 = load i8, i8* %value, align 1, !dbg !4942
  %conv12 = zext i8 %13 to i32, !dbg !4942
  %cmp13 = icmp ne i32 %conv12, 52, !dbg !4944
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !4945

if.then15:                                        ; preds = %if.end9
  store i1 false, i1* %retval, align 1, !dbg !4946
  br label %return, !dbg !4946

if.end16:                                         ; preds = %if.end9
  %14 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4947
  %call17 = call i32 @pci_write_config_word(%struct.pci_dev* %14, i32 232, i16 zeroext -23261) #8, !dbg !4948
  %15 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4949
  %call18 = call i32 @pci_read_config_byte(%struct.pci_dev* %15, i32 228, i8* %value) #8, !dbg !4950
  %16 = load i8, i8* %value, align 1, !dbg !4951
  %conv19 = zext i8 %16 to i32, !dbg !4951
  %cmp20 = icmp ne i32 %conv19, 18, !dbg !4953
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !4954

if.then22:                                        ; preds = %if.end16
  store i1 false, i1* %retval, align 1, !dbg !4955
  br label %return, !dbg !4955

if.end23:                                         ; preds = %if.end16
  %17 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4956
  %device24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 8, !dbg !4957
  %18 = load i16, i16* %device24, align 2, !dbg !4957
  %conv25 = zext i16 %18 to i32, !dbg !4956
  switch i32 %conv25, label %sw.default [
    i32 17337, label %sw.bb
    i32 17338, label %sw.bb
    i32 17339, label %sw.bb32
    i32 17340, label %sw.bb42
  ], !dbg !4958

sw.bb:                                            ; preds = %if.end23, %if.end23
  %19 = load i32, i32* %port.addr, align 4, !dbg !4959
  %cmp26 = icmp sgt i32 %19, 6, !dbg !4962
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !4963

if.then28:                                        ; preds = %sw.bb
  store i16 -19166, i16* %reg, align 2, !dbg !4964
  %20 = load i32, i32* %port.addr, align 4, !dbg !4966
  %sub = sub i32 %20, 7, !dbg !4967
  %conv29 = trunc i32 %sub to i8, !dbg !4966
  store i8 %conv29, i8* %port_shift, align 1, !dbg !4968
  br label %if.end31, !dbg !4969

if.else:                                          ; preds = %sw.bb
  store i16 -19167, i16* %reg, align 2, !dbg !4970
  %21 = load i32, i32* %port.addr, align 4, !dbg !4972
  %add = add i32 %21, 1, !dbg !4973
  %conv30 = trunc i32 %add to i8, !dbg !4972
  store i8 %conv30, i8* %port_shift, align 1, !dbg !4974
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then28
  br label %sw.epilog, !dbg !4975

sw.bb32:                                          ; preds = %if.end23
  %22 = load i32, i32* %port.addr, align 4, !dbg !4976
  %cmp33 = icmp sgt i32 %22, 2, !dbg !4978
  br i1 %cmp33, label %if.then35, label %if.else38, !dbg !4979

if.then35:                                        ; preds = %sw.bb32
  store i16 -10975, i16* %reg, align 2, !dbg !4980
  %23 = load i32, i32* %port.addr, align 4, !dbg !4982
  %sub36 = sub i32 %23, 3, !dbg !4983
  %conv37 = trunc i32 %sub36 to i8, !dbg !4982
  store i8 %conv37, i8* %port_shift, align 1, !dbg !4984
  br label %if.end41, !dbg !4985

if.else38:                                        ; preds = %sw.bb32
  store i16 -10976, i16* %reg, align 2, !dbg !4986
  %24 = load i32, i32* %port.addr, align 4, !dbg !4988
  %add39 = add i32 %24, 5, !dbg !4989
  %conv40 = trunc i32 %add39 to i8, !dbg !4988
  store i8 %conv40, i8* %port_shift, align 1, !dbg !4990
  br label %if.end41

if.end41:                                         ; preds = %if.else38, %if.then35
  br label %sw.epilog, !dbg !4991

sw.bb42:                                          ; preds = %if.end23
  %25 = load i32, i32* %port.addr, align 4, !dbg !4992
  %cmp43 = icmp sgt i32 %25, 3, !dbg !4994
  br i1 %cmp43, label %if.then45, label %if.else48, !dbg !4995

if.then45:                                        ; preds = %sw.bb42
  store i16 -10973, i16* %reg, align 2, !dbg !4996
  %26 = load i32, i32* %port.addr, align 4, !dbg !4998
  %sub46 = sub i32 %26, 4, !dbg !4999
  %conv47 = trunc i32 %sub46 to i8, !dbg !4998
  store i8 %conv47, i8* %port_shift, align 1, !dbg !5000
  br label %if.end51, !dbg !5001

if.else48:                                        ; preds = %sw.bb42
  store i16 -10974, i16* %reg, align 2, !dbg !5002
  %27 = load i32, i32* %port.addr, align 4, !dbg !5004
  %add49 = add i32 %27, 4, !dbg !5005
  %conv50 = trunc i32 %add49 to i8, !dbg !5004
  store i8 %conv50, i8* %port_shift, align 1, !dbg !5006
  br label %if.end51

if.end51:                                         ; preds = %if.else48, %if.then45
  br label %sw.epilog, !dbg !5007

sw.default:                                       ; preds = %if.end23
  store i1 false, i1* %retval, align 1, !dbg !5008
  br label %return, !dbg !5008

sw.epilog:                                        ; preds = %if.end51, %if.end41, %if.end31
  %28 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !5009
  %29 = load i16, i16* %reg, align 2, !dbg !5010
  %call52 = call i32 @pci_write_config_word(%struct.pci_dev* %28, i32 232, i16 zeroext %29) #8, !dbg !5011
  %30 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !5012
  %call53 = call i32 @pci_read_config_byte(%struct.pci_dev* %30, i32 228, i8* %value) #8, !dbg !5013
  %31 = load i8, i8* %value, align 1, !dbg !5014
  %conv54 = zext i8 %31 to i64, !dbg !5014
  %32 = load i8, i8* %port_shift, align 1, !dbg !5015
  %conv55 = zext i8 %32 to i32, !dbg !5015
  %sh_prom = zext i32 %conv55 to i64, !dbg !5015
  %shl = shl i64 1, %sh_prom, !dbg !5015
  %and = and i64 %conv54, %shl, !dbg !5016
  %tobool = icmp ne i64 %and, 0, !dbg !5017
  %lnot = xor i1 %tobool, true, !dbg !5017
  store i1 %lnot, i1* %retval, align 1, !dbg !5018
  br label %return, !dbg !5018

return:                                           ; preds = %sw.epilog, %sw.default, %if.then22, %if.then15, %if.then8, %if.then
  %33 = load i1, i1* %retval, align 1, !dbg !5019
  ret i1 %33, !dbg !5019
}

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @uhci_reset_hc(%struct.pci_dev* %pdev, i64 %base) #0 !dbg !5020 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %base.addr = alloca i64, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5023, metadata !DIExpression()), !dbg !5024
  store i64 %base, i64* %base.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %base.addr, metadata !5025, metadata !DIExpression()), !dbg !5026
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5027
  %call = call i32 @pci_write_config_word(%struct.pci_dev* %0, i32 192, i16 zeroext -28928) #8, !dbg !5028
  %1 = load i64, i64* %base.addr, align 8, !dbg !5029
  %add = add i64 %1, 0, !dbg !5030
  %conv = trunc i64 %add to i32, !dbg !5029
  call void @outw(i16 zeroext 2, i32 %conv) #8, !dbg !5031
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5032, !srcloc !5033
  call void @__const_udelay(i64 21475) #8, !dbg !5034
  %2 = load i64, i64* %base.addr, align 8, !dbg !5039
  %add1 = add i64 %2, 0, !dbg !5041
  %conv2 = trunc i64 %add1 to i32, !dbg !5039
  %call3 = call zeroext i16 @inw(i32 %conv2) #8, !dbg !5042
  %conv4 = zext i16 %call3 to i32, !dbg !5042
  %and = and i32 %conv4, 2, !dbg !5043
  %tobool = icmp ne i32 %and, 0, !dbg !5043
  br i1 %tobool, label %if.then, label %if.end, !dbg !5044

if.then:                                          ; preds = %entry
  %3 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5045
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 41, !dbg !5045
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0)) #10, !dbg !5045
  br label %if.end, !dbg !5045

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* %base.addr, align 8, !dbg !5046
  %add5 = add i64 %4, 4, !dbg !5047
  %conv6 = trunc i64 %add5 to i32, !dbg !5046
  call void @outw(i16 zeroext 0, i32 %conv6) #8, !dbg !5048
  %5 = load i64, i64* %base.addr, align 8, !dbg !5049
  %add7 = add i64 %5, 0, !dbg !5050
  %conv8 = trunc i64 %add7 to i32, !dbg !5049
  call void @outw(i16 zeroext 0, i32 %conv8) #8, !dbg !5051
  ret void, !dbg !5052
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outw(i16 zeroext %value, i32 %port) #0 !dbg !5053 {
entry:
  %value.addr = alloca i16, align 2
  %port.addr = alloca i32, align 4
  store i16 %value, i16* %value.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %value.addr, metadata !5057, metadata !DIExpression()), !dbg !5058
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5059, metadata !DIExpression()), !dbg !5058
  %0 = load i16, i16* %value.addr, align 2, !dbg !5058
  %1 = load i32, i32* %port.addr, align 4, !dbg !5058
  call void asm sideeffect "outw ${0:w}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %1) #6, !dbg !5058, !srcloc !5060
  ret void, !dbg !5058
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @inw(i32 %port) #0 !dbg !5061 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i16, align 2
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5064, metadata !DIExpression()), !dbg !5065
  call void @llvm.dbg.declare(metadata i16* %value, metadata !5066, metadata !DIExpression()), !dbg !5065
  %0 = load i32, i32* %port.addr, align 4, !dbg !5065
  %1 = call i16 asm sideeffect "inw ${1:w}, ${0:w}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #6, !dbg !5065, !srcloc !5067
  store i16 %1, i16* %value, align 2, !dbg !5065
  %2 = load i16, i16* %value, align 2, !dbg !5065
  ret i16 %2, !dbg !5065
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @uhci_check_and_reset_hc(%struct.pci_dev* %pdev, i64 %base) #0 !dbg !5068 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %base.addr = alloca i64, align 8
  %legsup = alloca i16, align 2
  %cmd = alloca i32, align 4
  %intr = alloca i32, align 4
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5071, metadata !DIExpression()), !dbg !5072
  store i64 %base, i64* %base.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %base.addr, metadata !5073, metadata !DIExpression()), !dbg !5074
  call void @llvm.dbg.declare(metadata i16* %legsup, metadata !5075, metadata !DIExpression()), !dbg !5076
  call void @llvm.dbg.declare(metadata i32* %cmd, metadata !5077, metadata !DIExpression()), !dbg !5078
  call void @llvm.dbg.declare(metadata i32* %intr, metadata !5079, metadata !DIExpression()), !dbg !5080
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5081
  %call = call i32 @pci_read_config_word(%struct.pci_dev* %0, i32 192, i16* %legsup) #8, !dbg !5082
  %1 = load i16, i16* %legsup, align 2, !dbg !5083
  %conv = zext i16 %1 to i32, !dbg !5083
  %and = and i32 %conv, -57153, !dbg !5085
  %tobool = icmp ne i32 %and, 0, !dbg !5085
  br i1 %tobool, label %if.then, label %if.end, !dbg !5086

if.then:                                          ; preds = %entry
  br label %reset_needed, !dbg !5087

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %base.addr, align 8, !dbg !5089
  %add = add i64 %2, 0, !dbg !5090
  %conv1 = trunc i64 %add to i32, !dbg !5089
  %call2 = call zeroext i16 @inw(i32 %conv1) #8, !dbg !5091
  %conv3 = zext i16 %call2 to i32, !dbg !5091
  store i32 %conv3, i32* %cmd, align 4, !dbg !5092
  %3 = load i32, i32* %cmd, align 4, !dbg !5093
  %and4 = and i32 %3, 1, !dbg !5095
  %tobool5 = icmp ne i32 %and4, 0, !dbg !5095
  br i1 %tobool5, label %if.then11, label %lor.lhs.false, !dbg !5096

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, i32* %cmd, align 4, !dbg !5097
  %and6 = and i32 %4, 64, !dbg !5098
  %tobool7 = icmp ne i32 %and6, 0, !dbg !5098
  br i1 %tobool7, label %lor.lhs.false8, label %if.then11, !dbg !5099

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %5 = load i32, i32* %cmd, align 4, !dbg !5100
  %and9 = and i32 %5, 8, !dbg !5101
  %tobool10 = icmp ne i32 %and9, 0, !dbg !5101
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5102

if.then11:                                        ; preds = %lor.lhs.false8, %lor.lhs.false, %if.end
  br label %reset_needed, !dbg !5103

if.end12:                                         ; preds = %lor.lhs.false8
  %6 = load i64, i64* %base.addr, align 8, !dbg !5105
  %add13 = add i64 %6, 4, !dbg !5106
  %conv14 = trunc i64 %add13 to i32, !dbg !5105
  %call15 = call zeroext i16 @inw(i32 %conv14) #8, !dbg !5107
  %conv16 = zext i16 %call15 to i32, !dbg !5107
  store i32 %conv16, i32* %intr, align 4, !dbg !5108
  %7 = load i32, i32* %intr, align 4, !dbg !5109
  %and17 = and i32 %7, -3, !dbg !5111
  %tobool18 = icmp ne i32 %and17, 0, !dbg !5111
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !5112

if.then19:                                        ; preds = %if.end12
  br label %reset_needed, !dbg !5113

if.end20:                                         ; preds = %if.end12
  store i32 0, i32* %retval, align 4, !dbg !5115
  br label %return, !dbg !5115

reset_needed:                                     ; preds = %if.then19, %if.then11, %if.then
  call void @llvm.dbg.label(metadata !5116), !dbg !5117
  %8 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5118
  %9 = load i64, i64* %base.addr, align 8, !dbg !5119
  call void @uhci_reset_hc(%struct.pci_dev* %8, i64 %9) #8, !dbg !5120
  store i32 1, i32* %retval, align 4, !dbg !5121
  br label %return, !dbg !5121

return:                                           ; preds = %reset_needed, %if.end20
  %10 = load i32, i32* %retval, align 4, !dbg !5122
  ret i32 %10, !dbg !5122
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_enable_intel_xhci_ports(%struct.pci_dev* %xhci_pdev) #0 !dbg !5123 {
entry:
  %xhci_pdev.addr = alloca %struct.pci_dev*, align 8
  %ports_available = alloca i32, align 4
  %ehci_found = alloca i8, align 1
  %companion = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %xhci_pdev, %struct.pci_dev** %xhci_pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %xhci_pdev.addr, metadata !5124, metadata !DIExpression()), !dbg !5125
  call void @llvm.dbg.declare(metadata i32* %ports_available, metadata !5126, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.declare(metadata i8* %ehci_found, metadata !5128, metadata !DIExpression()), !dbg !5129
  store i8 0, i8* %ehci_found, align 1, !dbg !5129
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %companion, metadata !5130, metadata !DIExpression()), !dbg !5131
  store %struct.pci_dev* null, %struct.pci_dev** %companion, align 8, !dbg !5131
  %0 = load %struct.pci_dev*, %struct.pci_dev** %xhci_pdev.addr, align 8, !dbg !5132
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 9, !dbg !5134
  %1 = load i16, i16* %subsystem_vendor, align 8, !dbg !5134
  %conv = zext i16 %1 to i32, !dbg !5132
  %cmp = icmp eq i32 %conv, 4173, !dbg !5135
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5136

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %xhci_pdev.addr, align 8, !dbg !5137
  %subsystem_device = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 10, !dbg !5138
  %3 = load i16, i16* %subsystem_device, align 2, !dbg !5138
  %conv2 = zext i16 %3 to i32, !dbg !5137
  %cmp3 = icmp eq i32 %conv2, 37032, !dbg !5139
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5140

if.then:                                          ; preds = %land.lhs.true
  br label %return, !dbg !5141

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %while.cond, !dbg !5142

while.cond:                                       ; preds = %if.end14, %if.end
  %4 = load %struct.pci_dev*, %struct.pci_dev** %companion, align 8, !dbg !5142
  %call = call %struct.pci_dev* @pci_get_device(i32 -1, i32 -1, %struct.pci_dev* %4) #8, !dbg !5142
  store %struct.pci_dev* %call, %struct.pci_dev** %companion, align 8, !dbg !5142
  %cmp5 = icmp ne %struct.pci_dev* %call, null, !dbg !5142
  br i1 %cmp5, label %while.body, label %while.end, !dbg !5142

while.body:                                       ; preds = %while.cond
  %5 = load %struct.pci_dev*, %struct.pci_dev** %companion, align 8, !dbg !5143
  %class = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 11, !dbg !5146
  %6 = load i32, i32* %class, align 4, !dbg !5146
  %cmp7 = icmp eq i32 %6, 787232, !dbg !5147
  br i1 %cmp7, label %land.lhs.true9, label %if.end14, !dbg !5148

land.lhs.true9:                                   ; preds = %while.body
  %7 = load %struct.pci_dev*, %struct.pci_dev** %companion, align 8, !dbg !5149
  %vendor = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 7, !dbg !5150
  %8 = load i16, i16* %vendor, align 4, !dbg !5150
  %conv10 = zext i16 %8 to i32, !dbg !5149
  %cmp11 = icmp eq i32 %conv10, 32902, !dbg !5151
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !5152

if.then13:                                        ; preds = %land.lhs.true9
  store i8 1, i8* %ehci_found, align 1, !dbg !5153
  br label %while.end, !dbg !5155

if.end14:                                         ; preds = %land.lhs.true9, %while.body
  br label %while.cond, !dbg !5142, !llvm.loop !5156

while.end:                                        ; preds = %if.then13, %while.cond
  %9 = load i8, i8* %ehci_found, align 1, !dbg !5158
  %tobool = trunc i8 %9 to i1, !dbg !5158
  br i1 %tobool, label %if.end16, label %if.then15, !dbg !5160

if.then15:                                        ; preds = %while.end
  br label %return, !dbg !5161

if.end16:                                         ; preds = %while.end
  %10 = load %struct.pci_dev*, %struct.pci_dev** %xhci_pdev.addr, align 8, !dbg !5162
  %call17 = call i32 @pci_read_config_dword(%struct.pci_dev* %10, i32 220, i32* %ports_available) #8, !dbg !5163
  %11 = load %struct.pci_dev*, %struct.pci_dev** %xhci_pdev.addr, align 8, !dbg !5164
  %12 = load i32, i32* %ports_available, align 4, !dbg !5165
  %call18 = call i32 @pci_write_config_dword(%struct.pci_dev* %11, i32 216, i32 %12) #8, !dbg !5166
  %13 = load %struct.pci_dev*, %struct.pci_dev** %xhci_pdev.addr, align 8, !dbg !5167
  %call19 = call i32 @pci_read_config_dword(%struct.pci_dev* %13, i32 216, i32* %ports_available) #8, !dbg !5168
  %14 = load %struct.pci_dev*, %struct.pci_dev** %xhci_pdev.addr, align 8, !dbg !5169
  %call20 = call i32 @pci_read_config_dword(%struct.pci_dev* %14, i32 212, i32* %ports_available) #8, !dbg !5170
  %15 = load %struct.pci_dev*, %struct.pci_dev** %xhci_pdev.addr, align 8, !dbg !5171
  %16 = load i32, i32* %ports_available, align 4, !dbg !5172
  %call21 = call i32 @pci_write_config_dword(%struct.pci_dev* %15, i32 208, i32 %16) #8, !dbg !5173
  %17 = load %struct.pci_dev*, %struct.pci_dev** %xhci_pdev.addr, align 8, !dbg !5174
  %call22 = call i32 @pci_read_config_dword(%struct.pci_dev* %17, i32 208, i32* %ports_available) #8, !dbg !5175
  br label %return, !dbg !5176

return:                                           ; preds = %if.end16, %if.then15, %if.then
  ret void, !dbg !5176
}

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_disable_xhci_ports(%struct.pci_dev* %xhci_pdev) #0 !dbg !5177 {
entry:
  %xhci_pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %xhci_pdev, %struct.pci_dev** %xhci_pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %xhci_pdev.addr, metadata !5178, metadata !DIExpression()), !dbg !5179
  %0 = load %struct.pci_dev*, %struct.pci_dev** %xhci_pdev.addr, align 8, !dbg !5180
  %call = call i32 @pci_write_config_dword(%struct.pci_dev* %0, i32 216, i32 0) #8, !dbg !5181
  %1 = load %struct.pci_dev*, %struct.pci_dev** %xhci_pdev.addr, align 8, !dbg !5182
  %call1 = call i32 @pci_write_config_dword(%struct.pci_dev* %1, i32 208, i32 0) #8, !dbg !5183
  ret void, !dbg !5184
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @quirk_usb_early_handoff(%struct.pci_dev* %pdev) #0 !dbg !5185 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %parent = alloca %struct.device_node*, align 8
  %is_rpi = alloca i8, align 1
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5186, metadata !DIExpression()), !dbg !5187
  call void @llvm.dbg.declare(metadata %struct.device_node** %parent, metadata !5188, metadata !DIExpression()), !dbg !5189
  call void @llvm.dbg.declare(metadata i8* %is_rpi, metadata !5190, metadata !DIExpression()), !dbg !5191
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5192
  %vendor = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 7, !dbg !5194
  %1 = load i16, i16* %vendor, align 4, !dbg !5194
  %conv = zext i16 %1 to i32, !dbg !5192
  %cmp = icmp eq i32 %conv, 6222, !dbg !5195
  br i1 %cmp, label %if.then, label %if.end, !dbg !5196

if.then:                                          ; preds = %entry
  br label %return, !dbg !5197

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5198
  %vendor2 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 7, !dbg !5200
  %3 = load i16, i16* %vendor2, align 4, !dbg !5200
  %conv3 = zext i16 %3 to i32, !dbg !5198
  %cmp4 = icmp eq i32 %conv3, 4358, !dbg !5201
  br i1 %cmp4, label %land.lhs.true, label %if.end14, !dbg !5202

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5203
  %device = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 8, !dbg !5204
  %5 = load i16, i16* %device, align 2, !dbg !5204
  %conv6 = zext i16 %5 to i32, !dbg !5203
  %cmp7 = icmp eq i32 %conv6, 13443, !dbg !5205
  br i1 %cmp7, label %if.then9, label %if.end14, !dbg !5206

if.then9:                                         ; preds = %land.lhs.true
  %6 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5207
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 1, !dbg !5209
  %7 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5209
  %dev = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %7, i32 0, i32 21, !dbg !5210
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !5211
  %8 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !5211
  %call = call %struct.device_node* @of_get_parent(%struct.device_node* %8) #8, !dbg !5212
  store %struct.device_node* %call, %struct.device_node** %parent, align 8, !dbg !5213
  %9 = load %struct.device_node*, %struct.device_node** %parent, align 8, !dbg !5214
  %call10 = call i32 @of_device_is_compatible(%struct.device_node* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !5215
  %tobool = icmp ne i32 %call10, 0, !dbg !5215
  %frombool = zext i1 %tobool to i8, !dbg !5216
  store i8 %frombool, i8* %is_rpi, align 1, !dbg !5216
  %10 = load %struct.device_node*, %struct.device_node** %parent, align 8, !dbg !5217
  call void @of_node_put(%struct.device_node* %10) #8, !dbg !5218
  %11 = load i8, i8* %is_rpi, align 1, !dbg !5219
  %tobool11 = trunc i8 %11 to i1, !dbg !5219
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !5221

if.then12:                                        ; preds = %if.then9
  br label %return, !dbg !5222

if.end13:                                         ; preds = %if.then9
  br label %if.end14, !dbg !5223

if.end14:                                         ; preds = %if.end13, %land.lhs.true, %if.end
  %12 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5224
  %class = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 11, !dbg !5226
  %13 = load i32, i32* %class, align 4, !dbg !5226
  %cmp15 = icmp ne i32 %13, 787200, !dbg !5227
  br i1 %cmp15, label %land.lhs.true17, label %if.end30, !dbg !5228

land.lhs.true17:                                  ; preds = %if.end14
  %14 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5229
  %class18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 11, !dbg !5230
  %15 = load i32, i32* %class18, align 4, !dbg !5230
  %cmp19 = icmp ne i32 %15, 787216, !dbg !5231
  br i1 %cmp19, label %land.lhs.true21, label %if.end30, !dbg !5232

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5233
  %class22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 11, !dbg !5234
  %17 = load i32, i32* %class22, align 4, !dbg !5234
  %cmp23 = icmp ne i32 %17, 787232, !dbg !5235
  br i1 %cmp23, label %land.lhs.true25, label %if.end30, !dbg !5236

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %18 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5237
  %class26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 11, !dbg !5238
  %19 = load i32, i32* %class26, align 4, !dbg !5238
  %cmp27 = icmp ne i32 %19, 787248, !dbg !5239
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !5240

if.then29:                                        ; preds = %land.lhs.true25
  br label %return, !dbg !5241

if.end30:                                         ; preds = %land.lhs.true25, %land.lhs.true21, %land.lhs.true17, %if.end14
  %20 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5242
  %call31 = call i32 @pci_enable_device(%struct.pci_dev* %20) #8, !dbg !5244
  %cmp32 = icmp slt i32 %call31, 0, !dbg !5245
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !5246

if.then34:                                        ; preds = %if.end30
  %21 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5247
  %dev35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 41, !dbg !5247
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !5247
  br label %return, !dbg !5249

if.end36:                                         ; preds = %if.end30
  %22 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5250
  %class37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 11, !dbg !5252
  %23 = load i32, i32* %class37, align 4, !dbg !5252
  %cmp38 = icmp eq i32 %23, 787200, !dbg !5253
  br i1 %cmp38, label %if.then40, label %if.else, !dbg !5254

if.then40:                                        ; preds = %if.end36
  %24 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5255
  call void @quirk_usb_handoff_uhci(%struct.pci_dev* %24) #8, !dbg !5256
  br label %if.end58, !dbg !5256

if.else:                                          ; preds = %if.end36
  %25 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5257
  %class41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 11, !dbg !5259
  %26 = load i32, i32* %class41, align 4, !dbg !5259
  %cmp42 = icmp eq i32 %26, 787216, !dbg !5260
  br i1 %cmp42, label %if.then44, label %if.else45, !dbg !5261

if.then44:                                        ; preds = %if.else
  %27 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5262
  call void @quirk_usb_handoff_ohci(%struct.pci_dev* %27) #8, !dbg !5263
  br label %if.end57, !dbg !5263

if.else45:                                        ; preds = %if.else
  %28 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5264
  %class46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 11, !dbg !5266
  %29 = load i32, i32* %class46, align 4, !dbg !5266
  %cmp47 = icmp eq i32 %29, 787232, !dbg !5267
  br i1 %cmp47, label %if.then49, label %if.else50, !dbg !5268

if.then49:                                        ; preds = %if.else45
  %30 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5269
  call void @quirk_usb_disable_ehci(%struct.pci_dev* %30) #8, !dbg !5270
  br label %if.end56, !dbg !5270

if.else50:                                        ; preds = %if.else45
  %31 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5271
  %class51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 11, !dbg !5273
  %32 = load i32, i32* %class51, align 4, !dbg !5273
  %cmp52 = icmp eq i32 %32, 787248, !dbg !5274
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !5275

if.then54:                                        ; preds = %if.else50
  %33 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5276
  call void @quirk_usb_handoff_xhci(%struct.pci_dev* %33) #8, !dbg !5277
  br label %if.end55, !dbg !5277

if.end55:                                         ; preds = %if.then54, %if.else50
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then49
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then44
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then40
  %34 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5278
  call void @pci_disable_device(%struct.pci_dev* %34) #8, !dbg !5279
  br label %return, !dbg !5280

return:                                           ; preds = %if.end58, %if.then34, %if.then29, %if.then12, %if.then
  ret void, !dbg !5280
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @amd_chipset_sb_type_init(%struct.amd_chipset_info* %pinfo) #0 !dbg !5281 {
entry:
  %retval = alloca i32, align 4
  %pinfo.addr = alloca %struct.amd_chipset_info*, align 8
  %rev = alloca i8, align 1
  store %struct.amd_chipset_info* %pinfo, %struct.amd_chipset_info** %pinfo.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.amd_chipset_info** %pinfo.addr, metadata !5285, metadata !DIExpression()), !dbg !5286
  call void @llvm.dbg.declare(metadata i8* %rev, metadata !5287, metadata !DIExpression()), !dbg !5288
  store i8 0, i8* %rev, align 1, !dbg !5288
  %0 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %pinfo.addr, align 8, !dbg !5289
  %sb_type = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %0, i32 0, i32 3, !dbg !5290
  %gen = getelementptr inbounds %struct.amd_chipset_type, %struct.amd_chipset_type* %sb_type, i32 0, i32 0, !dbg !5291
  store i32 8, i32* %gen, align 4, !dbg !5292
  %call = call %struct.pci_dev* @pci_get_device(i32 4098, i32 17285, %struct.pci_dev* null) #8, !dbg !5293
  %1 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %pinfo.addr, align 8, !dbg !5294
  %smbus_dev = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %1, i32 0, i32 1, !dbg !5295
  store %struct.pci_dev* %call, %struct.pci_dev** %smbus_dev, align 8, !dbg !5296
  %2 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %pinfo.addr, align 8, !dbg !5297
  %smbus_dev1 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %2, i32 0, i32 1, !dbg !5299
  %3 = load %struct.pci_dev*, %struct.pci_dev** %smbus_dev1, align 8, !dbg !5299
  %tobool = icmp ne %struct.pci_dev* %3, null, !dbg !5297
  br i1 %tobool, label %if.then, label %if.else33, !dbg !5300

if.then:                                          ; preds = %entry
  %4 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %pinfo.addr, align 8, !dbg !5301
  %smbus_dev2 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %4, i32 0, i32 1, !dbg !5303
  %5 = load %struct.pci_dev*, %struct.pci_dev** %smbus_dev2, align 8, !dbg !5303
  %revision = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 12, !dbg !5304
  %6 = load i8, i8* %revision, align 8, !dbg !5304
  store i8 %6, i8* %rev, align 1, !dbg !5305
  %7 = load i8, i8* %rev, align 1, !dbg !5306
  %conv = zext i8 %7 to i32, !dbg !5306
  %cmp = icmp sge i32 %conv, 16, !dbg !5308
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !5309

land.lhs.true:                                    ; preds = %if.then
  %8 = load i8, i8* %rev, align 1, !dbg !5310
  %conv4 = zext i8 %8 to i32, !dbg !5310
  %cmp5 = icmp sle i32 %conv4, 31, !dbg !5311
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !5312

if.then7:                                         ; preds = %land.lhs.true
  %9 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %pinfo.addr, align 8, !dbg !5313
  %sb_type8 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %9, i32 0, i32 3, !dbg !5314
  %gen9 = getelementptr inbounds %struct.amd_chipset_type, %struct.amd_chipset_type* %sb_type8, i32 0, i32 0, !dbg !5315
  store i32 1, i32* %gen9, align 4, !dbg !5316
  br label %if.end32, !dbg !5313

if.else:                                          ; preds = %land.lhs.true, %if.then
  %10 = load i8, i8* %rev, align 1, !dbg !5317
  %conv10 = zext i8 %10 to i32, !dbg !5317
  %cmp11 = icmp sge i32 %conv10, 48, !dbg !5319
  br i1 %cmp11, label %land.lhs.true13, label %if.else20, !dbg !5320

land.lhs.true13:                                  ; preds = %if.else
  %11 = load i8, i8* %rev, align 1, !dbg !5321
  %conv14 = zext i8 %11 to i32, !dbg !5321
  %cmp15 = icmp sle i32 %conv14, 63, !dbg !5322
  br i1 %cmp15, label %if.then17, label %if.else20, !dbg !5323

if.then17:                                        ; preds = %land.lhs.true13
  %12 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %pinfo.addr, align 8, !dbg !5324
  %sb_type18 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %12, i32 0, i32 3, !dbg !5325
  %gen19 = getelementptr inbounds %struct.amd_chipset_type, %struct.amd_chipset_type* %sb_type18, i32 0, i32 0, !dbg !5326
  store i32 2, i32* %gen19, align 4, !dbg !5327
  br label %if.end31, !dbg !5324

if.else20:                                        ; preds = %land.lhs.true13, %if.else
  %13 = load i8, i8* %rev, align 1, !dbg !5328
  %conv21 = zext i8 %13 to i32, !dbg !5328
  %cmp22 = icmp sge i32 %conv21, 64, !dbg !5330
  br i1 %cmp22, label %land.lhs.true24, label %if.end, !dbg !5331

land.lhs.true24:                                  ; preds = %if.else20
  %14 = load i8, i8* %rev, align 1, !dbg !5332
  %conv25 = zext i8 %14 to i32, !dbg !5332
  %cmp26 = icmp sle i32 %conv25, 79, !dbg !5333
  br i1 %cmp26, label %if.then28, label %if.end, !dbg !5334

if.then28:                                        ; preds = %land.lhs.true24
  %15 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %pinfo.addr, align 8, !dbg !5335
  %sb_type29 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %15, i32 0, i32 3, !dbg !5336
  %gen30 = getelementptr inbounds %struct.amd_chipset_type, %struct.amd_chipset_type* %sb_type29, i32 0, i32 0, !dbg !5337
  store i32 3, i32* %gen30, align 4, !dbg !5338
  br label %if.end, !dbg !5335

if.end:                                           ; preds = %if.then28, %land.lhs.true24, %if.else20
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then17
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then7
  br label %if.end91, !dbg !5339

if.else33:                                        ; preds = %entry
  %call34 = call %struct.pci_dev* @pci_get_device(i32 4130, i32 30731, %struct.pci_dev* null) #8, !dbg !5340
  %16 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %pinfo.addr, align 8, !dbg !5342
  %smbus_dev35 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %16, i32 0, i32 1, !dbg !5343
  store %struct.pci_dev* %call34, %struct.pci_dev** %smbus_dev35, align 8, !dbg !5344
  %17 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %pinfo.addr, align 8, !dbg !5345
  %smbus_dev36 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %17, i32 0, i32 1, !dbg !5347
  %18 = load %struct.pci_dev*, %struct.pci_dev** %smbus_dev36, align 8, !dbg !5347
  %tobool37 = icmp ne %struct.pci_dev* %18, null, !dbg !5345
  br i1 %tobool37, label %if.then38, label %if.else76, !dbg !5348

if.then38:                                        ; preds = %if.else33
  %19 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %pinfo.addr, align 8, !dbg !5349
  %smbus_dev39 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %19, i32 0, i32 1, !dbg !5351
  %20 = load %struct.pci_dev*, %struct.pci_dev** %smbus_dev39, align 8, !dbg !5351
  %revision40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 12, !dbg !5352
  %21 = load i8, i8* %revision40, align 8, !dbg !5352
  store i8 %21, i8* %rev, align 1, !dbg !5353
  %22 = load i8, i8* %rev, align 1, !dbg !5354
  %conv41 = zext i8 %22 to i32, !dbg !5354
  %cmp42 = icmp sge i32 %conv41, 17, !dbg !5356
  br i1 %cmp42, label %land.lhs.true44, label %if.else51, !dbg !5357

land.lhs.true44:                                  ; preds = %if.then38
  %23 = load i8, i8* %rev, align 1, !dbg !5358
  %conv45 = zext i8 %23 to i32, !dbg !5358
  %cmp46 = icmp sle i32 %conv45, 20, !dbg !5359
  br i1 %cmp46, label %if.then48, label %if.else51, !dbg !5360

if.then48:                                        ; preds = %land.lhs.true44
  %24 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %pinfo.addr, align 8, !dbg !5361
  %sb_type49 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %24, i32 0, i32 3, !dbg !5362
  %gen50 = getelementptr inbounds %struct.amd_chipset_type, %struct.amd_chipset_type* %sb_type49, i32 0, i32 0, !dbg !5363
  store i32 4, i32* %gen50, align 4, !dbg !5364
  br label %if.end75, !dbg !5361

if.else51:                                        ; preds = %land.lhs.true44, %if.then38
  %25 = load i8, i8* %rev, align 1, !dbg !5365
  %conv52 = zext i8 %25 to i32, !dbg !5365
  %cmp53 = icmp sge i32 %conv52, 21, !dbg !5367
  br i1 %cmp53, label %land.lhs.true55, label %if.else62, !dbg !5368

land.lhs.true55:                                  ; preds = %if.else51
  %26 = load i8, i8* %rev, align 1, !dbg !5369
  %conv56 = zext i8 %26 to i32, !dbg !5369
  %cmp57 = icmp sle i32 %conv56, 24, !dbg !5370
  br i1 %cmp57, label %if.then59, label %if.else62, !dbg !5371

if.then59:                                        ; preds = %land.lhs.true55
  %27 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %pinfo.addr, align 8, !dbg !5372
  %sb_type60 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %27, i32 0, i32 3, !dbg !5373
  %gen61 = getelementptr inbounds %struct.amd_chipset_type, %struct.amd_chipset_type* %sb_type60, i32 0, i32 0, !dbg !5374
  store i32 5, i32* %gen61, align 4, !dbg !5375
  br label %if.end74, !dbg !5372

if.else62:                                        ; preds = %land.lhs.true55, %if.else51
  %28 = load i8, i8* %rev, align 1, !dbg !5376
  %conv63 = zext i8 %28 to i32, !dbg !5376
  %cmp64 = icmp sge i32 %conv63, 57, !dbg !5378
  br i1 %cmp64, label %land.lhs.true66, label %if.end73, !dbg !5379

land.lhs.true66:                                  ; preds = %if.else62
  %29 = load i8, i8* %rev, align 1, !dbg !5380
  %conv67 = zext i8 %29 to i32, !dbg !5380
  %cmp68 = icmp sle i32 %conv67, 58, !dbg !5381
  br i1 %cmp68, label %if.then70, label %if.end73, !dbg !5382

if.then70:                                        ; preds = %land.lhs.true66
  %30 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %pinfo.addr, align 8, !dbg !5383
  %sb_type71 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %30, i32 0, i32 3, !dbg !5384
  %gen72 = getelementptr inbounds %struct.amd_chipset_type, %struct.amd_chipset_type* %sb_type71, i32 0, i32 0, !dbg !5385
  store i32 6, i32* %gen72, align 4, !dbg !5386
  br label %if.end73, !dbg !5383

if.end73:                                         ; preds = %if.then70, %land.lhs.true66, %if.else62
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then59
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then48
  br label %if.end90, !dbg !5387

if.else76:                                        ; preds = %if.else33
  %call77 = call %struct.pci_dev* @pci_get_device(i32 4130, i32 5212, %struct.pci_dev* null) #8, !dbg !5388
  %31 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %pinfo.addr, align 8, !dbg !5390
  %smbus_dev78 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %31, i32 0, i32 1, !dbg !5391
  store %struct.pci_dev* %call77, %struct.pci_dev** %smbus_dev78, align 8, !dbg !5392
  %32 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %pinfo.addr, align 8, !dbg !5393
  %smbus_dev79 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %32, i32 0, i32 1, !dbg !5395
  %33 = load %struct.pci_dev*, %struct.pci_dev** %smbus_dev79, align 8, !dbg !5395
  %tobool80 = icmp ne %struct.pci_dev* %33, null, !dbg !5393
  br i1 %tobool80, label %if.then81, label %if.else86, !dbg !5396

if.then81:                                        ; preds = %if.else76
  %34 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %pinfo.addr, align 8, !dbg !5397
  %smbus_dev82 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %34, i32 0, i32 1, !dbg !5399
  %35 = load %struct.pci_dev*, %struct.pci_dev** %smbus_dev82, align 8, !dbg !5399
  %revision83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 12, !dbg !5400
  %36 = load i8, i8* %revision83, align 8, !dbg !5400
  store i8 %36, i8* %rev, align 1, !dbg !5401
  %37 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %pinfo.addr, align 8, !dbg !5402
  %sb_type84 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %37, i32 0, i32 3, !dbg !5403
  %gen85 = getelementptr inbounds %struct.amd_chipset_type, %struct.amd_chipset_type* %sb_type84, i32 0, i32 0, !dbg !5404
  store i32 7, i32* %gen85, align 4, !dbg !5405
  br label %if.end89, !dbg !5406

if.else86:                                        ; preds = %if.else76
  %38 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %pinfo.addr, align 8, !dbg !5407
  %sb_type87 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %38, i32 0, i32 3, !dbg !5409
  %gen88 = getelementptr inbounds %struct.amd_chipset_type, %struct.amd_chipset_type* %sb_type87, i32 0, i32 0, !dbg !5410
  store i32 0, i32* %gen88, align 4, !dbg !5411
  store i32 0, i32* %retval, align 4, !dbg !5412
  br label %return, !dbg !5412

if.end89:                                         ; preds = %if.then81
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.end75
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.end32
  %39 = load i8, i8* %rev, align 1, !dbg !5413
  %40 = load %struct.amd_chipset_info*, %struct.amd_chipset_info** %pinfo.addr, align 8, !dbg !5414
  %sb_type92 = getelementptr inbounds %struct.amd_chipset_info, %struct.amd_chipset_info* %40, i32 0, i32 3, !dbg !5415
  %rev93 = getelementptr inbounds %struct.amd_chipset_type, %struct.amd_chipset_type* %sb_type92, i32 0, i32 1, !dbg !5416
  store i8 %39, i8* %rev93, align 4, !dbg !5417
  store i32 1, i32* %retval, align 4, !dbg !5418
  br label %return, !dbg !5418

return:                                           ; preds = %if.end91, %if.else86
  %41 = load i32, i32* %retval, align 4, !dbg !5419
  ret i32 %41, !dbg !5419
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb_p(i8 zeroext %value, i32 %port) #0 !dbg !5420 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !5423, metadata !DIExpression()), !dbg !5424
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5425, metadata !DIExpression()), !dbg !5424
  %0 = load i8, i8* %value.addr, align 1, !dbg !5424
  %1 = load i32, i32* %port.addr, align 4, !dbg !5424
  call void @outb(i8 zeroext %0, i32 %1) #8, !dbg !5424
  call void @slow_down_io() #8, !dbg !5424
  ret void, !dbg !5424
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb_p(i32 %port) #0 !dbg !5426 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5429, metadata !DIExpression()), !dbg !5430
  call void @llvm.dbg.declare(metadata i8* %value, metadata !5431, metadata !DIExpression()), !dbg !5430
  %0 = load i32, i32* %port.addr, align 4, !dbg !5430
  %call = call zeroext i8 @inb(i32 %0) #8, !dbg !5430
  store i8 %call, i8* %value, align 1, !dbg !5430
  call void @slow_down_io() #8, !dbg !5430
  %1 = load i8, i8* %value, align 1, !dbg !5430
  ret i8 %1, !dbg !5430
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outl_p(i32 %value, i32 %port) #0 !dbg !5432 {
entry:
  %value.addr = alloca i32, align 4
  %port.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5435, metadata !DIExpression()), !dbg !5436
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5437, metadata !DIExpression()), !dbg !5436
  %0 = load i32, i32* %value.addr, align 4, !dbg !5436
  %1 = load i32, i32* %port.addr, align 4, !dbg !5436
  call void @outl(i32 %0, i32 %1) #8, !dbg !5436
  call void @slow_down_io() #8, !dbg !5436
  ret void, !dbg !5436
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @inl_p(i32 %port) #0 !dbg !5438 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5441, metadata !DIExpression()), !dbg !5442
  call void @llvm.dbg.declare(metadata i32* %value, metadata !5443, metadata !DIExpression()), !dbg !5442
  %0 = load i32, i32* %port.addr, align 4, !dbg !5442
  %call = call i32 @inl(i32 %0) #8, !dbg !5442
  store i32 %call, i32* %value, align 4, !dbg !5442
  call void @slow_down_io() #8, !dbg !5442
  %1 = load i32, i32* %value, align 4, !dbg !5442
  ret i32 %1, !dbg !5442
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outl(i32 %value, i32 %port) #0 !dbg !5444 {
entry:
  %value.addr = alloca i32, align 4
  %port.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5445, metadata !DIExpression()), !dbg !5446
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5447, metadata !DIExpression()), !dbg !5446
  %0 = load i32, i32* %value.addr, align 4, !dbg !5446
  %1 = load i32, i32* %port.addr, align 4, !dbg !5446
  call void asm sideeffect "outl $0, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1) #6, !dbg !5446, !srcloc !5448
  ret void, !dbg !5446
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @inl(i32 %port) #0 !dbg !5449 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5450, metadata !DIExpression()), !dbg !5451
  call void @llvm.dbg.declare(metadata i32* %value, metadata !5452, metadata !DIExpression()), !dbg !5451
  %0 = load i32, i32* %port.addr, align 4, !dbg !5451
  %1 = call i32 asm sideeffect "inl ${1:w}, $0", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #6, !dbg !5451, !srcloc !5453
  store i32 %1, i32* %value, align 4, !dbg !5451
  %2 = load i32, i32* %value, align 4, !dbg !5451
  ret i32 %2, !dbg !5451
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb(i8 zeroext %value, i32 %port) #0 !dbg !5454 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !5455, metadata !DIExpression()), !dbg !5456
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5457, metadata !DIExpression()), !dbg !5456
  %0 = load i8, i8* %value.addr, align 1, !dbg !5456
  %1 = load i32, i32* %port.addr, align 4, !dbg !5456
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i32 %1) #6, !dbg !5456, !srcloc !5458
  ret void, !dbg !5456
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @slow_down_io() #0 !dbg !5459 {
entry:
  %0 = load void ()*, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 0), align 8, !dbg !5460
  call void %0() #8, !dbg !5461
  ret void, !dbg !5462
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb(i32 %port) #0 !dbg !5463 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5464, metadata !DIExpression()), !dbg !5465
  call void @llvm.dbg.declare(metadata i8* %value, metadata !5466, metadata !DIExpression()), !dbg !5465
  %0 = load i32, i32* %port.addr, align 4, !dbg !5465
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #6, !dbg !5465, !srcloc !5467
  store i8 %1, i8* %value, align 1, !dbg !5465
  %2 = load i8, i8* %value, align 1, !dbg !5465
  ret i8 %2, !dbg !5465
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !5468 {
entry:
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5469, metadata !DIExpression()), !dbg !5471
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5472, metadata !DIExpression()), !dbg !5471
  %0 = load i64, i64* %__edi, align 8, !dbg !5471
  store i64 %0, i64* %__edi, align 8, !dbg !5471
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5473, metadata !DIExpression()), !dbg !5471
  %1 = load i64, i64* %__esi, align 8, !dbg !5471
  store i64 %1, i64* %__esi, align 8, !dbg !5471
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5474, metadata !DIExpression()), !dbg !5471
  %2 = load i64, i64* %__edx, align 8, !dbg !5471
  store i64 %2, i64* %__edx, align 8, !dbg !5471
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5475, metadata !DIExpression()), !dbg !5471
  %3 = load i64, i64* %__ecx, align 8, !dbg !5471
  store i64 %3, i64* %__ecx, align 8, !dbg !5471
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5476, metadata !DIExpression()), !dbg !5471
  %4 = load i64, i64* %__eax, align 8, !dbg !5471
  store i64 %4, i64* %__eax, align 8, !dbg !5471
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5471
  %6 = call i64 @llvm.read_register.i64(metadata !4166), !dbg !5477
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #6, !dbg !5477, !srcloc !5480
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5477
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5477
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5477
  call void @llvm.write_register.i64(metadata !4166, i64 %asmresult1), !dbg !5477
  %8 = load i64, i64* %__eax, align 8, !dbg !5477
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5481, metadata !DIExpression()), !dbg !5483
  store i64 -1, i64* %__mask, align 8, !dbg !5483
  %9 = load i64, i64* %__mask, align 8, !dbg !5483
  store i64 %9, i64* %tmp, align 8, !dbg !5483
  %10 = load i64, i64* %tmp, align 8, !dbg !5483
  %and = and i64 %8, %10, !dbg !5477
  store i64 %and, i64* %__ret, align 8, !dbg !5477
  %11 = load i64, i64* %__ret, align 8, !dbg !5471
  store i64 %11, i64* %tmp2, align 8, !dbg !5484
  %12 = load i64, i64* %tmp2, align 8, !dbg !5471
  ret i64 %12, !dbg !5485
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !5486 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5487, metadata !DIExpression()), !dbg !5489
  %0 = load i64, i64* %__edi, align 8, !dbg !5489
  store i64 %0, i64* %__edi, align 8, !dbg !5489
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5490, metadata !DIExpression()), !dbg !5489
  %1 = load i64, i64* %__esi, align 8, !dbg !5489
  store i64 %1, i64* %__esi, align 8, !dbg !5489
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5491, metadata !DIExpression()), !dbg !5489
  %2 = load i64, i64* %__edx, align 8, !dbg !5489
  store i64 %2, i64* %__edx, align 8, !dbg !5489
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5492, metadata !DIExpression()), !dbg !5489
  %3 = load i64, i64* %__ecx, align 8, !dbg !5489
  store i64 %3, i64* %__ecx, align 8, !dbg !5489
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5493, metadata !DIExpression()), !dbg !5489
  %4 = load i64, i64* %__eax, align 8, !dbg !5489
  store i64 %4, i64* %__eax, align 8, !dbg !5489
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5489
  %6 = call i64 @llvm.read_register.i64(metadata !4166), !dbg !5489
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #6, !dbg !5489, !srcloc !5494
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5489
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5489
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5489
  call void @llvm.write_register.i64(metadata !4166, i64 %asmresult1), !dbg !5489
  ret void, !dbg !5495
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !5496 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5499, metadata !DIExpression()), !dbg !5500
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5501, metadata !DIExpression()), !dbg !5503
  %0 = load i64, i64* %__edi, align 8, !dbg !5503
  store i64 %0, i64* %__edi, align 8, !dbg !5503
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5504, metadata !DIExpression()), !dbg !5503
  %1 = load i64, i64* %__esi, align 8, !dbg !5503
  store i64 %1, i64* %__esi, align 8, !dbg !5503
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5505, metadata !DIExpression()), !dbg !5503
  %2 = load i64, i64* %__edx, align 8, !dbg !5503
  store i64 %2, i64* %__edx, align 8, !dbg !5503
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5506, metadata !DIExpression()), !dbg !5503
  %3 = load i64, i64* %__ecx, align 8, !dbg !5503
  store i64 %3, i64* %__ecx, align 8, !dbg !5503
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5507, metadata !DIExpression()), !dbg !5503
  %4 = load i64, i64* %__eax, align 8, !dbg !5503
  store i64 %4, i64* %__eax, align 8, !dbg !5503
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5503
  %6 = call i64 @llvm.read_register.i64(metadata !4166), !dbg !5503
  %7 = load i64, i64* %f.addr, align 8, !dbg !5503
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #6, !dbg !5503, !srcloc !5508
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5503
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5503
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5503
  call void @llvm.write_register.i64(metadata !4166, i64 %asmresult1), !dbg !5503
  ret void, !dbg !5509
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !5510 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !5513, metadata !DIExpression()), !dbg !5514
  ret void, !dbg !5515
}

; Function Attrs: noredzone
declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @quirk_usb_handoff_uhci(%struct.pci_dev* %pdev) #0 !dbg !5516 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %base = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5517, metadata !DIExpression()), !dbg !5518
  call void @llvm.dbg.declare(metadata i64* %base, metadata !5519, metadata !DIExpression()), !dbg !5520
  store i64 0, i64* %base, align 8, !dbg !5520
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5521, metadata !DIExpression()), !dbg !5522
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5523
  %call = call i32 @io_type_enabled(%struct.pci_dev* %0, i32 1) #8, !dbg !5523
  %tobool = icmp ne i32 %call, 0, !dbg !5523
  br i1 %tobool, label %if.end, label %if.then, !dbg !5525

if.then:                                          ; preds = %entry
  br label %if.end10, !dbg !5526

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !5527
  br label %for.cond, !dbg !5529

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4, !dbg !5530
  %cmp = icmp slt i32 %1, 6, !dbg !5532
  br i1 %cmp, label %for.body, label %for.end, !dbg !5533

for.body:                                         ; preds = %for.cond
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5534
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 44, !dbg !5534
  %3 = load i32, i32* %i, align 4, !dbg !5534
  %idxprom = sext i32 %3 to i64, !dbg !5534
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 %idxprom, !dbg !5534
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 3, !dbg !5534
  %4 = load i64, i64* %flags, align 8, !dbg !5534
  %and = and i64 %4, 256, !dbg !5536
  %tobool1 = icmp ne i64 %and, 0, !dbg !5536
  br i1 %tobool1, label %if.then2, label %if.end6, !dbg !5537

if.then2:                                         ; preds = %for.body
  %5 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5538
  %resource3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 44, !dbg !5538
  %6 = load i32, i32* %i, align 4, !dbg !5538
  %idxprom4 = sext i32 %6 to i64, !dbg !5538
  %arrayidx5 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource3, i64 0, i64 %idxprom4, !dbg !5538
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx5, i32 0, i32 0, !dbg !5538
  %7 = load i64, i64* %start, align 8, !dbg !5538
  store i64 %7, i64* %base, align 8, !dbg !5540
  br label %for.end, !dbg !5541

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !5542

for.inc:                                          ; preds = %if.end6
  %8 = load i32, i32* %i, align 4, !dbg !5543
  %inc = add i32 %8, 1, !dbg !5543
  store i32 %inc, i32* %i, align 4, !dbg !5543
  br label %for.cond, !dbg !5544, !llvm.loop !5545

for.end:                                          ; preds = %if.then2, %for.cond
  %9 = load i64, i64* %base, align 8, !dbg !5547
  %tobool7 = icmp ne i64 %9, 0, !dbg !5547
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !5549

if.then8:                                         ; preds = %for.end
  %10 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5550
  %11 = load i64, i64* %base, align 8, !dbg !5551
  %call9 = call i32 @uhci_check_and_reset_hc(%struct.pci_dev* %10, i64 %11) #8, !dbg !5552
  br label %if.end10, !dbg !5552

if.end10:                                         ; preds = %if.then, %if.then8, %for.end
  ret void, !dbg !5553
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @quirk_usb_handoff_ohci(%struct.pci_dev* %pdev) #0 !dbg !5554 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %base = alloca i8*, align 8
  %control = alloca i32, align 4
  %fminterval = alloca i32, align 4
  %no_fminterval = alloca i8, align 1
  %cnt = alloca i32, align 4
  %wait_time = alloca i32, align 4
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5555, metadata !DIExpression()), !dbg !5556
  call void @llvm.dbg.declare(metadata i8** %base, metadata !5557, metadata !DIExpression()), !dbg !5558
  call void @llvm.dbg.declare(metadata i32* %control, metadata !5559, metadata !DIExpression()), !dbg !5560
  call void @llvm.dbg.declare(metadata i32* %fminterval, metadata !5561, metadata !DIExpression()), !dbg !5562
  store i32 0, i32* %fminterval, align 4, !dbg !5562
  call void @llvm.dbg.declare(metadata i8* %no_fminterval, metadata !5563, metadata !DIExpression()), !dbg !5564
  store i8 0, i8* %no_fminterval, align 1, !dbg !5564
  call void @llvm.dbg.declare(metadata i32* %cnt, metadata !5565, metadata !DIExpression()), !dbg !5566
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5567
  %call = call i32 @mmio_resource_enabled(%struct.pci_dev* %0, i32 0) #8, !dbg !5569
  %tobool = icmp ne i32 %call, 0, !dbg !5569
  br i1 %tobool, label %if.end, label %if.then, !dbg !5570

if.then:                                          ; preds = %entry
  br label %return, !dbg !5571

if.end:                                           ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5572
  %call1 = call i8* @pci_ioremap_bar(%struct.pci_dev* %1, i32 0) #8, !dbg !5573
  store i8* %call1, i8** %base, align 8, !dbg !5574
  %2 = load i8*, i8** %base, align 8, !dbg !5575
  %cmp = icmp eq i8* %2, null, !dbg !5577
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5578

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !5579

if.end3:                                          ; preds = %if.end
  %3 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5580
  %vendor = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 7, !dbg !5582
  %4 = load i16, i16* %vendor, align 4, !dbg !5582
  %conv = zext i16 %4 to i32, !dbg !5580
  %cmp4 = icmp eq i32 %conv, 4281, !dbg !5583
  br i1 %cmp4, label %land.lhs.true, label %if.end10, !dbg !5584

land.lhs.true:                                    ; preds = %if.end3
  %5 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5585
  %device = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 8, !dbg !5586
  %6 = load i16, i16* %device, align 2, !dbg !5586
  %conv6 = zext i16 %6 to i32, !dbg !5585
  %cmp7 = icmp eq i32 %conv6, 21047, !dbg !5587
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !5588

if.then9:                                         ; preds = %land.lhs.true
  store i8 1, i8* %no_fminterval, align 1, !dbg !5589
  br label %if.end10, !dbg !5590

if.end10:                                         ; preds = %if.then9, %land.lhs.true, %if.end3
  %7 = load i8*, i8** %base, align 8, !dbg !5591
  %add.ptr = getelementptr i8, i8* %7, i64 4, !dbg !5592
  %call11 = call i32 @readl(i8* %add.ptr) #8, !dbg !5593
  store i32 %call11, i32* %control, align 4, !dbg !5594
  %8 = load i32, i32* %control, align 4, !dbg !5595
  %and = and i32 %8, 256, !dbg !5597
  %tobool12 = icmp ne i32 %and, 0, !dbg !5597
  br i1 %tobool12, label %if.then13, label %if.end28, !dbg !5598

if.then13:                                        ; preds = %if.end10
  call void @llvm.dbg.declare(metadata i32* %wait_time, metadata !5599, metadata !DIExpression()), !dbg !5601
  store i32 500, i32* %wait_time, align 4, !dbg !5601
  %9 = load i8*, i8** %base, align 8, !dbg !5602
  %add.ptr14 = getelementptr i8, i8* %9, i64 16, !dbg !5603
  call void @writel(i32 1073741824, i8* %add.ptr14) #8, !dbg !5604
  %10 = load i8*, i8** %base, align 8, !dbg !5605
  %add.ptr15 = getelementptr i8, i8* %10, i64 8, !dbg !5606
  call void @writel(i32 8, i8* %add.ptr15) #8, !dbg !5607
  br label %while.cond, !dbg !5608

while.cond:                                       ; preds = %while.body, %if.then13
  %11 = load i32, i32* %wait_time, align 4, !dbg !5609
  %cmp16 = icmp sgt i32 %11, 0, !dbg !5610
  br i1 %cmp16, label %land.rhs, label %land.end, !dbg !5611

land.rhs:                                         ; preds = %while.cond
  %12 = load i8*, i8** %base, align 8, !dbg !5612
  %add.ptr18 = getelementptr i8, i8* %12, i64 4, !dbg !5613
  %call19 = call i32 @readl(i8* %add.ptr18) #8, !dbg !5614
  %and20 = and i32 %call19, 256, !dbg !5615
  %tobool21 = icmp ne i32 %and20, 0, !dbg !5611
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %tobool21, %land.rhs ], !dbg !5616
  br i1 %13, label %while.body, label %while.end, !dbg !5608

while.body:                                       ; preds = %land.end
  %14 = load i32, i32* %wait_time, align 4, !dbg !5617
  %sub = sub i32 %14, 10, !dbg !5617
  store i32 %sub, i32* %wait_time, align 4, !dbg !5617
  call void @msleep(i32 10) #8, !dbg !5619
  br label %while.cond, !dbg !5608, !llvm.loop !5620

while.end:                                        ; preds = %land.end
  %15 = load i32, i32* %wait_time, align 4, !dbg !5622
  %cmp22 = icmp sle i32 %15, 0, !dbg !5624
  br i1 %cmp22, label %if.then24, label %if.end27, !dbg !5625

if.then24:                                        ; preds = %while.end
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5626
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 41, !dbg !5626
  %17 = load i8*, i8** %base, align 8, !dbg !5626
  %add.ptr25 = getelementptr i8, i8* %17, i64 4, !dbg !5626
  %call26 = call i32 @readl(i8* %add.ptr25) #8, !dbg !5626
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %call26) #10, !dbg !5626
  br label %if.end27, !dbg !5626

if.end27:                                         ; preds = %if.then24, %while.end
  br label %if.end28, !dbg !5627

if.end28:                                         ; preds = %if.end27, %if.end10
  %18 = load i8*, i8** %base, align 8, !dbg !5628
  %add.ptr29 = getelementptr i8, i8* %18, i64 20, !dbg !5629
  call void @writel(i32 -1, i8* %add.ptr29) #8, !dbg !5630
  %19 = load i32, i32* %control, align 4, !dbg !5631
  %and30 = and i32 %19, 512, !dbg !5632
  %20 = load i8*, i8** %base, align 8, !dbg !5633
  %add.ptr31 = getelementptr i8, i8* %20, i64 4, !dbg !5634
  call void @writel(i32 %and30, i8* %add.ptr31) #8, !dbg !5635
  %21 = load i8*, i8** %base, align 8, !dbg !5636
  %add.ptr32 = getelementptr i8, i8* %21, i64 4, !dbg !5637
  %call33 = call i32 @readl(i8* %add.ptr32) #8, !dbg !5638
  %22 = load i8, i8* %no_fminterval, align 1, !dbg !5639
  %tobool34 = trunc i8 %22 to i1, !dbg !5639
  br i1 %tobool34, label %if.end38, label %if.then35, !dbg !5641

if.then35:                                        ; preds = %if.end28
  %23 = load i8*, i8** %base, align 8, !dbg !5642
  %add.ptr36 = getelementptr i8, i8* %23, i64 52, !dbg !5643
  %call37 = call i32 @readl(i8* %add.ptr36) #8, !dbg !5644
  store i32 %call37, i32* %fminterval, align 4, !dbg !5645
  br label %if.end38, !dbg !5646

if.end38:                                         ; preds = %if.then35, %if.end28
  %24 = load i8*, i8** %base, align 8, !dbg !5647
  %add.ptr39 = getelementptr i8, i8* %24, i64 8, !dbg !5648
  call void @writel(i32 1, i8* %add.ptr39) #8, !dbg !5649
  store i32 30, i32* %cnt, align 4, !dbg !5650
  br label %for.cond, !dbg !5652

for.cond:                                         ; preds = %for.inc, %if.end38
  %25 = load i32, i32* %cnt, align 4, !dbg !5653
  %cmp40 = icmp sgt i32 %25, 0, !dbg !5655
  br i1 %cmp40, label %for.body, label %for.end, !dbg !5656

for.body:                                         ; preds = %for.cond
  %26 = load i8*, i8** %base, align 8, !dbg !5657
  %add.ptr42 = getelementptr i8, i8* %26, i64 8, !dbg !5660
  %call43 = call i32 @readl(i8* %add.ptr42) #8, !dbg !5661
  %and44 = and i32 %call43, 1, !dbg !5662
  %cmp45 = icmp eq i32 %and44, 0, !dbg !5663
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !5664

if.then47:                                        ; preds = %for.body
  br label %for.end, !dbg !5665

if.end48:                                         ; preds = %for.body
  call void @__const_udelay(i64 4295) #8, !dbg !5666
  br label %for.inc, !dbg !5671

for.inc:                                          ; preds = %if.end48
  %27 = load i32, i32* %cnt, align 4, !dbg !5672
  %dec = add i32 %27, -1, !dbg !5672
  store i32 %dec, i32* %cnt, align 4, !dbg !5672
  br label %for.cond, !dbg !5673, !llvm.loop !5674

for.end:                                          ; preds = %if.then47, %for.cond
  %28 = load i8, i8* %no_fminterval, align 1, !dbg !5676
  %tobool49 = trunc i8 %28 to i1, !dbg !5676
  br i1 %tobool49, label %if.end52, label %if.then50, !dbg !5678

if.then50:                                        ; preds = %for.end
  %29 = load i32, i32* %fminterval, align 4, !dbg !5679
  %30 = load i8*, i8** %base, align 8, !dbg !5680
  %add.ptr51 = getelementptr i8, i8* %30, i64 52, !dbg !5681
  call void @writel(i32 %29, i8* %add.ptr51) #8, !dbg !5682
  br label %if.end52, !dbg !5682

if.end52:                                         ; preds = %if.then50, %for.end
  %31 = load i8*, i8** %base, align 8, !dbg !5683
  call void @iounmap(i8* %31) #8, !dbg !5684
  br label %return, !dbg !5685

return:                                           ; preds = %if.end52, %if.then2, %if.then
  ret void, !dbg !5685
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @quirk_usb_disable_ehci(%struct.pci_dev* %pdev) #0 !dbg !5686 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %base = alloca i8*, align 8
  %op_reg_base = alloca i8*, align 8
  %hcc_params = alloca i32, align 4
  %cap = alloca i32, align 4
  %val = alloca i32, align 4
  %offset = alloca i8, align 1
  %cap_length = alloca i8, align 1
  %wait_time = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5687, metadata !DIExpression()), !dbg !5688
  call void @llvm.dbg.declare(metadata i8** %base, metadata !5689, metadata !DIExpression()), !dbg !5690
  call void @llvm.dbg.declare(metadata i8** %op_reg_base, metadata !5691, metadata !DIExpression()), !dbg !5692
  call void @llvm.dbg.declare(metadata i32* %hcc_params, metadata !5693, metadata !DIExpression()), !dbg !5694
  call void @llvm.dbg.declare(metadata i32* %cap, metadata !5695, metadata !DIExpression()), !dbg !5696
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5697, metadata !DIExpression()), !dbg !5698
  call void @llvm.dbg.declare(metadata i8* %offset, metadata !5699, metadata !DIExpression()), !dbg !5700
  call void @llvm.dbg.declare(metadata i8* %cap_length, metadata !5701, metadata !DIExpression()), !dbg !5702
  call void @llvm.dbg.declare(metadata i32* %wait_time, metadata !5703, metadata !DIExpression()), !dbg !5704
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5705, metadata !DIExpression()), !dbg !5706
  store i32 64, i32* %count, align 4, !dbg !5706
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5707
  %call = call i32 @mmio_resource_enabled(%struct.pci_dev* %0, i32 0) #8, !dbg !5709
  %tobool = icmp ne i32 %call, 0, !dbg !5709
  br i1 %tobool, label %if.end, label %if.then, !dbg !5710

if.then:                                          ; preds = %entry
  br label %return, !dbg !5711

if.end:                                           ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5712
  %call1 = call i8* @pci_ioremap_bar(%struct.pci_dev* %1, i32 0) #8, !dbg !5713
  store i8* %call1, i8** %base, align 8, !dbg !5714
  %2 = load i8*, i8** %base, align 8, !dbg !5715
  %cmp = icmp eq i8* %2, null, !dbg !5717
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5718

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !5719

if.end3:                                          ; preds = %if.end
  %3 = load i8*, i8** %base, align 8, !dbg !5720
  %call4 = call zeroext i8 @readb(i8* %3) #8, !dbg !5721
  store i8 %call4, i8* %cap_length, align 1, !dbg !5722
  %4 = load i8*, i8** %base, align 8, !dbg !5723
  %5 = load i8, i8* %cap_length, align 1, !dbg !5724
  %conv = zext i8 %5 to i32, !dbg !5724
  %idx.ext = sext i32 %conv to i64, !dbg !5725
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !5725
  store i8* %add.ptr, i8** %op_reg_base, align 8, !dbg !5726
  %6 = load i8*, i8** %base, align 8, !dbg !5727
  %add.ptr5 = getelementptr i8, i8* %6, i64 8, !dbg !5728
  %call6 = call i32 @readl(i8* %add.ptr5) #8, !dbg !5729
  store i32 %call6, i32* %hcc_params, align 4, !dbg !5730
  %7 = load i32, i32* %hcc_params, align 4, !dbg !5731
  %shr = lshr i32 %7, 8, !dbg !5732
  %and = and i32 %shr, 255, !dbg !5733
  %conv7 = trunc i32 %and to i8, !dbg !5734
  store i8 %conv7, i8* %offset, align 1, !dbg !5735
  br label %while.cond, !dbg !5736

while.cond:                                       ; preds = %sw.epilog, %if.end3
  %8 = load i8, i8* %offset, align 1, !dbg !5737
  %conv8 = zext i8 %8 to i32, !dbg !5737
  %tobool9 = icmp ne i32 %conv8, 0, !dbg !5737
  br i1 %tobool9, label %land.rhs, label %land.end, !dbg !5738

land.rhs:                                         ; preds = %while.cond
  %9 = load i32, i32* %count, align 4, !dbg !5739
  %dec = add i32 %9, -1, !dbg !5739
  store i32 %dec, i32* %count, align 4, !dbg !5739
  %tobool10 = icmp ne i32 %dec, 0, !dbg !5738
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %tobool10, %land.rhs ], !dbg !5740
  br i1 %10, label %while.body, label %while.end, !dbg !5736

while.body:                                       ; preds = %land.end
  %11 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5741
  %12 = load i8, i8* %offset, align 1, !dbg !5743
  %conv11 = zext i8 %12 to i32, !dbg !5743
  %call12 = call i32 @pci_read_config_dword(%struct.pci_dev* %11, i32 %conv11, i32* %cap) #8, !dbg !5744
  %13 = load i32, i32* %cap, align 4, !dbg !5745
  %and13 = and i32 %13, 255, !dbg !5746
  switch i32 %and13, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb14
  ], !dbg !5747

sw.bb:                                            ; preds = %while.body
  %14 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5748
  %15 = load i8*, i8** %op_reg_base, align 8, !dbg !5750
  %16 = load i32, i32* %cap, align 4, !dbg !5751
  %17 = load i8, i8* %offset, align 1, !dbg !5752
  call void @ehci_bios_handoff(%struct.pci_dev* %14, i8* %15, i32 %16, i8 zeroext %17) #8, !dbg !5753
  br label %sw.epilog, !dbg !5754

sw.bb14:                                          ; preds = %while.body
  store i32 0, i32* %cap, align 4, !dbg !5755
  br label %sw.default, !dbg !5756

sw.default:                                       ; preds = %while.body, %sw.bb14
  %18 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5757
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 41, !dbg !5757
  %19 = load i32, i32* %cap, align 4, !dbg !5757
  %and15 = and i32 %19, 255, !dbg !5757
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %and15) #10, !dbg !5757
  br label %sw.epilog, !dbg !5758

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %20 = load i32, i32* %cap, align 4, !dbg !5759
  %shr16 = lshr i32 %20, 8, !dbg !5760
  %and17 = and i32 %shr16, 255, !dbg !5761
  %conv18 = trunc i32 %and17 to i8, !dbg !5762
  store i8 %conv18, i8* %offset, align 1, !dbg !5763
  br label %while.cond, !dbg !5736, !llvm.loop !5764

while.end:                                        ; preds = %land.end
  %21 = load i32, i32* %count, align 4, !dbg !5766
  %tobool19 = icmp ne i32 %21, 0, !dbg !5766
  br i1 %tobool19, label %if.end22, label %if.then20, !dbg !5768

if.then20:                                        ; preds = %while.end
  %22 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5769
  %dev21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 41, !dbg !5770
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), %struct.device* %dev21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !5771
  br label %if.end22, !dbg !5771

if.end22:                                         ; preds = %if.then20, %while.end
  %23 = load i8*, i8** %op_reg_base, align 8, !dbg !5772
  %add.ptr23 = getelementptr i8, i8* %23, i64 4, !dbg !5773
  %call24 = call i32 @readl(i8* %add.ptr23) #8, !dbg !5774
  store i32 %call24, i32* %val, align 4, !dbg !5775
  %24 = load i32, i32* %val, align 4, !dbg !5776
  %and25 = and i32 %24, 4096, !dbg !5778
  %cmp26 = icmp eq i32 %and25, 0, !dbg !5779
  br i1 %cmp26, label %if.then28, label %if.end44, !dbg !5780

if.then28:                                        ; preds = %if.end22
  %25 = load i8*, i8** %op_reg_base, align 8, !dbg !5781
  %add.ptr29 = getelementptr i8, i8* %25, i64 0, !dbg !5783
  %call30 = call i32 @readl(i8* %add.ptr29) #8, !dbg !5784
  store i32 %call30, i32* %val, align 4, !dbg !5785
  %26 = load i32, i32* %val, align 4, !dbg !5786
  %and31 = and i32 %26, -2, !dbg !5786
  store i32 %and31, i32* %val, align 4, !dbg !5786
  %27 = load i32, i32* %val, align 4, !dbg !5787
  %28 = load i8*, i8** %op_reg_base, align 8, !dbg !5788
  %add.ptr32 = getelementptr i8, i8* %28, i64 0, !dbg !5789
  call void @writel(i32 %27, i8* %add.ptr32) #8, !dbg !5790
  store i32 2000, i32* %wait_time, align 4, !dbg !5791
  br label %do.body, !dbg !5792

do.body:                                          ; preds = %do.cond, %if.then28
  %29 = load i8*, i8** %op_reg_base, align 8, !dbg !5793
  %add.ptr33 = getelementptr i8, i8* %29, i64 4, !dbg !5795
  call void @writel(i32 63, i8* %add.ptr33) #8, !dbg !5796
  call void @__const_udelay(i64 429500) #8, !dbg !5797
  %30 = load i32, i32* %wait_time, align 4, !dbg !5802
  %sub = sub i32 %30, 100, !dbg !5802
  store i32 %sub, i32* %wait_time, align 4, !dbg !5802
  %31 = load i8*, i8** %op_reg_base, align 8, !dbg !5803
  %add.ptr34 = getelementptr i8, i8* %31, i64 4, !dbg !5804
  %call35 = call i32 @readl(i8* %add.ptr34) #8, !dbg !5805
  store i32 %call35, i32* %val, align 4, !dbg !5806
  %32 = load i32, i32* %val, align 4, !dbg !5807
  %cmp36 = icmp eq i32 %32, -1, !dbg !5809
  br i1 %cmp36, label %if.then40, label %lor.lhs.false, !dbg !5810

lor.lhs.false:                                    ; preds = %do.body
  %33 = load i32, i32* %val, align 4, !dbg !5811
  %and38 = and i32 %33, 4096, !dbg !5812
  %tobool39 = icmp ne i32 %and38, 0, !dbg !5812
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !5813

if.then40:                                        ; preds = %lor.lhs.false, %do.body
  br label %do.end, !dbg !5814

if.end41:                                         ; preds = %lor.lhs.false
  br label %do.cond, !dbg !5816

do.cond:                                          ; preds = %if.end41
  %34 = load i32, i32* %wait_time, align 4, !dbg !5817
  %cmp42 = icmp sgt i32 %34, 0, !dbg !5818
  br i1 %cmp42, label %do.body, label %do.end, !dbg !5816, !llvm.loop !5819

do.end:                                           ; preds = %do.cond, %if.then40
  br label %if.end44, !dbg !5821

if.end44:                                         ; preds = %do.end, %if.end22
  %35 = load i8*, i8** %op_reg_base, align 8, !dbg !5822
  %add.ptr45 = getelementptr i8, i8* %35, i64 8, !dbg !5823
  call void @writel(i32 0, i8* %add.ptr45) #8, !dbg !5824
  %36 = load i8*, i8** %op_reg_base, align 8, !dbg !5825
  %add.ptr46 = getelementptr i8, i8* %36, i64 4, !dbg !5826
  call void @writel(i32 63, i8* %add.ptr46) #8, !dbg !5827
  %37 = load i8*, i8** %base, align 8, !dbg !5828
  call void @iounmap(i8* %37) #8, !dbg !5829
  br label %return, !dbg !5830

return:                                           ; preds = %if.end44, %if.then2, %if.then
  ret void, !dbg !5830
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @quirk_usb_handoff_xhci(%struct.pci_dev* %pdev) #0 !dbg !5831 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %base = alloca i8*, align 8
  %ext_cap_offset = alloca i32, align 4
  %op_reg_base = alloca i8*, align 8
  %val = alloca i32, align 4
  %timeout = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5832, metadata !DIExpression()), !dbg !5833
  call void @llvm.dbg.declare(metadata i8** %base, metadata !5834, metadata !DIExpression()), !dbg !5835
  call void @llvm.dbg.declare(metadata i32* %ext_cap_offset, metadata !5836, metadata !DIExpression()), !dbg !5837
  call void @llvm.dbg.declare(metadata i8** %op_reg_base, metadata !5838, metadata !DIExpression()), !dbg !5839
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5840, metadata !DIExpression()), !dbg !5841
  call void @llvm.dbg.declare(metadata i32* %timeout, metadata !5842, metadata !DIExpression()), !dbg !5843
  call void @llvm.dbg.declare(metadata i32* %len, metadata !5844, metadata !DIExpression()), !dbg !5845
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5846
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 44, !dbg !5846
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !5846
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !5846
  %1 = load i64, i64* %start, align 8, !dbg !5846
  %cmp = icmp eq i64 %1, 0, !dbg !5846
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !5846

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5846
  %resource1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 44, !dbg !5846
  %arrayidx2 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource1, i64 0, i64 0, !dbg !5846
  %end = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx2, i32 0, i32 1, !dbg !5846
  %3 = load i64, i64* %end, align 8, !dbg !5846
  %4 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5846
  %resource3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 44, !dbg !5846
  %arrayidx4 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource3, i64 0, i64 0, !dbg !5846
  %start5 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx4, i32 0, i32 0, !dbg !5846
  %5 = load i64, i64* %start5, align 8, !dbg !5846
  %cmp6 = icmp eq i64 %3, %5, !dbg !5846
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !5846

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end, !dbg !5846

cond.false:                                       ; preds = %land.lhs.true, %entry
  %6 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5846
  %resource7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 44, !dbg !5846
  %arrayidx8 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource7, i64 0, i64 0, !dbg !5846
  %end9 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx8, i32 0, i32 1, !dbg !5846
  %7 = load i64, i64* %end9, align 8, !dbg !5846
  %8 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5846
  %resource10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 44, !dbg !5846
  %arrayidx11 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource10, i64 0, i64 0, !dbg !5846
  %start12 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx11, i32 0, i32 0, !dbg !5846
  %9 = load i64, i64* %start12, align 8, !dbg !5846
  %sub = sub i64 %7, %9, !dbg !5846
  %add = add i64 %sub, 1, !dbg !5846
  br label %cond.end, !dbg !5846

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %add, %cond.false ], !dbg !5846
  %conv = trunc i64 %cond to i32, !dbg !5846
  store i32 %conv, i32* %len, align 4, !dbg !5845
  %10 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5847
  %call = call i32 @mmio_resource_enabled(%struct.pci_dev* %10, i32 0) #8, !dbg !5849
  %tobool = icmp ne i32 %call, 0, !dbg !5849
  br i1 %tobool, label %if.end, label %if.then, !dbg !5850

if.then:                                          ; preds = %cond.end
  br label %return, !dbg !5851

if.end:                                           ; preds = %cond.end
  %11 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5852
  %resource13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 44, !dbg !5852
  %arrayidx14 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource13, i64 0, i64 0, !dbg !5852
  %start15 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx14, i32 0, i32 0, !dbg !5852
  %12 = load i64, i64* %start15, align 8, !dbg !5852
  %13 = load i32, i32* %len, align 4, !dbg !5853
  %conv16 = sext i32 %13 to i64, !dbg !5853
  %call17 = call i8* @ioremap(i64 %12, i64 %conv16) #8, !dbg !5854
  store i8* %call17, i8** %base, align 8, !dbg !5855
  %14 = load i8*, i8** %base, align 8, !dbg !5856
  %cmp18 = icmp eq i8* %14, null, !dbg !5858
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !5859

if.then20:                                        ; preds = %if.end
  br label %return, !dbg !5860

if.end21:                                         ; preds = %if.end
  %15 = load i8*, i8** %base, align 8, !dbg !5861
  %call22 = call i32 @xhci_find_next_ext_cap(i8* %15, i32 0, i32 1) #8, !dbg !5862
  store i32 %call22, i32* %ext_cap_offset, align 4, !dbg !5863
  %16 = load i32, i32* %ext_cap_offset, align 4, !dbg !5864
  %tobool23 = icmp ne i32 %16, 0, !dbg !5864
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !5866

if.then24:                                        ; preds = %if.end21
  br label %hc_init, !dbg !5867

if.end25:                                         ; preds = %if.end21
  %17 = load i32, i32* %ext_cap_offset, align 4, !dbg !5868
  %conv26 = sext i32 %17 to i64, !dbg !5868
  %add27 = add i64 %conv26, 4, !dbg !5870
  %18 = load i32, i32* %len, align 4, !dbg !5871
  %conv28 = sext i32 %18 to i64, !dbg !5871
  %cmp29 = icmp ugt i64 %add27, %conv28, !dbg !5872
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !5873

if.then31:                                        ; preds = %if.end25
  %19 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5874
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 41, !dbg !5874
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !5874
  br label %iounmap, !dbg !5876

if.end32:                                         ; preds = %if.end25
  %20 = load i8*, i8** %base, align 8, !dbg !5877
  %21 = load i32, i32* %ext_cap_offset, align 4, !dbg !5878
  %idx.ext = sext i32 %21 to i64, !dbg !5879
  %add.ptr = getelementptr i8, i8* %20, i64 %idx.ext, !dbg !5879
  %call33 = call i32 @readl(i8* %add.ptr) #8, !dbg !5880
  store i32 %call33, i32* %val, align 4, !dbg !5881
  %22 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5882
  %vendor = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 7, !dbg !5884
  %23 = load i16, i16* %vendor, align 4, !dbg !5884
  %conv34 = zext i16 %23 to i32, !dbg !5882
  %cmp35 = icmp eq i32 %conv34, 4172, !dbg !5885
  br i1 %cmp35, label %land.lhs.true37, label %lor.lhs.false, !dbg !5886

land.lhs.true37:                                  ; preds = %if.end32
  %24 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5887
  %device = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 8, !dbg !5888
  %25 = load i16, i16* %device, align 2, !dbg !5888
  %conv38 = zext i16 %25 to i32, !dbg !5887
  %cmp39 = icmp eq i32 %conv38, 33345, !dbg !5889
  br i1 %cmp39, label %if.then50, label %lor.lhs.false, !dbg !5890

lor.lhs.false:                                    ; preds = %land.lhs.true37, %if.end32
  %26 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5891
  %vendor41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 7, !dbg !5892
  %27 = load i16, i16* %vendor41, align 4, !dbg !5892
  %conv42 = zext i16 %27 to i32, !dbg !5891
  %cmp43 = icmp eq i32 %conv42, 6418, !dbg !5893
  br i1 %cmp43, label %land.lhs.true45, label %if.end53, !dbg !5894

land.lhs.true45:                                  ; preds = %lor.lhs.false
  %28 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5895
  %device46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 8, !dbg !5896
  %29 = load i16, i16* %device46, align 2, !dbg !5896
  %conv47 = zext i16 %29 to i32, !dbg !5895
  %cmp48 = icmp eq i32 %conv47, 20, !dbg !5897
  br i1 %cmp48, label %if.then50, label %if.end53, !dbg !5898

if.then50:                                        ; preds = %land.lhs.true45, %land.lhs.true37
  %30 = load i32, i32* %val, align 4, !dbg !5899
  %or = or i32 %30, 16777216, !dbg !5901
  %and = and i32 %or, -65537, !dbg !5902
  store i32 %and, i32* %val, align 4, !dbg !5903
  %31 = load i32, i32* %val, align 4, !dbg !5904
  %32 = load i8*, i8** %base, align 8, !dbg !5905
  %33 = load i32, i32* %ext_cap_offset, align 4, !dbg !5906
  %idx.ext51 = sext i32 %33 to i64, !dbg !5907
  %add.ptr52 = getelementptr i8, i8* %32, i64 %idx.ext51, !dbg !5907
  call void @writel(i32 %31, i8* %add.ptr52) #8, !dbg !5908
  br label %if.end53, !dbg !5909

if.end53:                                         ; preds = %if.then50, %land.lhs.true45, %lor.lhs.false
  %34 = load i32, i32* %val, align 4, !dbg !5910
  %and54 = and i32 %34, 65536, !dbg !5912
  %tobool55 = icmp ne i32 %and54, 0, !dbg !5912
  br i1 %tobool55, label %if.then56, label %if.end70, !dbg !5913

if.then56:                                        ; preds = %if.end53
  %35 = load i32, i32* %val, align 4, !dbg !5914
  %or57 = or i32 %35, 16777216, !dbg !5916
  %36 = load i8*, i8** %base, align 8, !dbg !5917
  %37 = load i32, i32* %ext_cap_offset, align 4, !dbg !5918
  %idx.ext58 = sext i32 %37 to i64, !dbg !5919
  %add.ptr59 = getelementptr i8, i8* %36, i64 %idx.ext58, !dbg !5919
  call void @writel(i32 %or57, i8* %add.ptr59) #8, !dbg !5920
  %38 = load i8*, i8** %base, align 8, !dbg !5921
  %39 = load i32, i32* %ext_cap_offset, align 4, !dbg !5922
  %idx.ext60 = sext i32 %39 to i64, !dbg !5923
  %add.ptr61 = getelementptr i8, i8* %38, i64 %idx.ext60, !dbg !5923
  %call62 = call i32 @handshake(i8* %add.ptr61, i32 65536, i32 0, i32 1000000, i32 10) #8, !dbg !5924
  store i32 %call62, i32* %timeout, align 4, !dbg !5925
  %40 = load i32, i32* %timeout, align 4, !dbg !5926
  %tobool63 = icmp ne i32 %40, 0, !dbg !5926
  br i1 %tobool63, label %if.then64, label %if.end69, !dbg !5928

if.then64:                                        ; preds = %if.then56
  %41 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5929
  %dev65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 41, !dbg !5929
  %42 = load i32, i32* %val, align 4, !dbg !5929
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i32 %42) #10, !dbg !5929
  %43 = load i32, i32* %val, align 4, !dbg !5931
  %and66 = and i32 %43, -65537, !dbg !5932
  %44 = load i8*, i8** %base, align 8, !dbg !5933
  %45 = load i32, i32* %ext_cap_offset, align 4, !dbg !5934
  %idx.ext67 = sext i32 %45 to i64, !dbg !5935
  %add.ptr68 = getelementptr i8, i8* %44, i64 %idx.ext67, !dbg !5935
  call void @writel(i32 %and66, i8* %add.ptr68) #8, !dbg !5936
  br label %if.end69, !dbg !5937

if.end69:                                         ; preds = %if.then64, %if.then56
  br label %if.end70, !dbg !5938

if.end70:                                         ; preds = %if.end69, %if.end53
  %46 = load i8*, i8** %base, align 8, !dbg !5939
  %47 = load i32, i32* %ext_cap_offset, align 4, !dbg !5940
  %idx.ext71 = sext i32 %47 to i64, !dbg !5941
  %add.ptr72 = getelementptr i8, i8* %46, i64 %idx.ext71, !dbg !5941
  %add.ptr73 = getelementptr i8, i8* %add.ptr72, i64 4, !dbg !5942
  %call74 = call i32 @readl(i8* %add.ptr73) #8, !dbg !5943
  store i32 %call74, i32* %val, align 4, !dbg !5944
  %48 = load i32, i32* %val, align 4, !dbg !5945
  %and75 = and i32 %48, 925678, !dbg !5945
  store i32 %and75, i32* %val, align 4, !dbg !5945
  %49 = load i32, i32* %val, align 4, !dbg !5946
  %or76 = or i32 %49, -536870912, !dbg !5946
  store i32 %or76, i32* %val, align 4, !dbg !5946
  %50 = load i32, i32* %val, align 4, !dbg !5947
  %51 = load i8*, i8** %base, align 8, !dbg !5948
  %52 = load i32, i32* %ext_cap_offset, align 4, !dbg !5949
  %idx.ext77 = sext i32 %52 to i64, !dbg !5950
  %add.ptr78 = getelementptr i8, i8* %51, i64 %idx.ext77, !dbg !5950
  %add.ptr79 = getelementptr i8, i8* %add.ptr78, i64 4, !dbg !5951
  call void @writel(i32 %50, i8* %add.ptr79) #8, !dbg !5952
  br label %hc_init, !dbg !5952

hc_init:                                          ; preds = %if.end70, %if.then24
  call void @llvm.dbg.label(metadata !5953), !dbg !5954
  %53 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5955
  %vendor80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 7, !dbg !5957
  %54 = load i16, i16* %vendor80, align 4, !dbg !5957
  %conv81 = zext i16 %54 to i32, !dbg !5955
  %cmp82 = icmp eq i32 %conv81, 32902, !dbg !5958
  br i1 %cmp82, label %if.then84, label %if.end85, !dbg !5959

if.then84:                                        ; preds = %hc_init
  %55 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5960
  call void @usb_enable_intel_xhci_ports(%struct.pci_dev* %55) #8, !dbg !5961
  br label %if.end85, !dbg !5961

if.end85:                                         ; preds = %if.then84, %hc_init
  %56 = load i8*, i8** %base, align 8, !dbg !5962
  %57 = load i8*, i8** %base, align 8, !dbg !5963
  %call86 = call i32 @readl(i8* %57) #8, !dbg !5963
  %shr = lshr i32 %call86, 0, !dbg !5963
  %and87 = and i32 %shr, 255, !dbg !5963
  %idx.ext88 = zext i32 %and87 to i64, !dbg !5964
  %add.ptr89 = getelementptr i8, i8* %56, i64 %idx.ext88, !dbg !5964
  store i8* %add.ptr89, i8** %op_reg_base, align 8, !dbg !5965
  %58 = load i8*, i8** %op_reg_base, align 8, !dbg !5966
  %add.ptr90 = getelementptr i8, i8* %58, i64 4, !dbg !5967
  %call91 = call i32 @handshake(i8* %add.ptr90, i32 2048, i32 0, i32 5000000, i32 10) #8, !dbg !5968
  store i32 %call91, i32* %timeout, align 4, !dbg !5969
  %59 = load i32, i32* %timeout, align 4, !dbg !5970
  %tobool92 = icmp ne i32 %59, 0, !dbg !5970
  br i1 %tobool92, label %if.then93, label %if.end97, !dbg !5972

if.then93:                                        ; preds = %if.end85
  %60 = load i8*, i8** %op_reg_base, align 8, !dbg !5973
  %add.ptr94 = getelementptr i8, i8* %60, i64 4, !dbg !5975
  %call95 = call i32 @readl(i8* %add.ptr94) #8, !dbg !5976
  store i32 %call95, i32* %val, align 4, !dbg !5977
  %61 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5978
  %dev96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 41, !dbg !5978
  %62 = load i32, i32* %val, align 4, !dbg !5978
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev96, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0), i32 %62) #10, !dbg !5978
  br label %if.end97, !dbg !5979

if.end97:                                         ; preds = %if.then93, %if.end85
  %63 = load i8*, i8** %op_reg_base, align 8, !dbg !5980
  %add.ptr98 = getelementptr i8, i8* %63, i64 0, !dbg !5981
  %call99 = call i32 @readl(i8* %add.ptr98) #8, !dbg !5982
  store i32 %call99, i32* %val, align 4, !dbg !5983
  %64 = load i32, i32* %val, align 4, !dbg !5984
  %and100 = and i32 %64, -1038, !dbg !5984
  store i32 %and100, i32* %val, align 4, !dbg !5984
  %65 = load i32, i32* %val, align 4, !dbg !5985
  %66 = load i8*, i8** %op_reg_base, align 8, !dbg !5986
  %add.ptr101 = getelementptr i8, i8* %66, i64 0, !dbg !5987
  call void @writel(i32 %65, i8* %add.ptr101) #8, !dbg !5988
  %67 = load i8*, i8** %op_reg_base, align 8, !dbg !5989
  %add.ptr102 = getelementptr i8, i8* %67, i64 4, !dbg !5990
  %call103 = call i32 @handshake(i8* %add.ptr102, i32 1, i32 1, i32 16000, i32 125) #8, !dbg !5991
  store i32 %call103, i32* %timeout, align 4, !dbg !5992
  %68 = load i32, i32* %timeout, align 4, !dbg !5993
  %tobool104 = icmp ne i32 %68, 0, !dbg !5993
  br i1 %tobool104, label %if.then105, label %if.end109, !dbg !5995

if.then105:                                       ; preds = %if.end97
  %69 = load i8*, i8** %op_reg_base, align 8, !dbg !5996
  %add.ptr106 = getelementptr i8, i8* %69, i64 4, !dbg !5998
  %call107 = call i32 @readl(i8* %add.ptr106) #8, !dbg !5999
  store i32 %call107, i32* %val, align 4, !dbg !6000
  %70 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !6001
  %dev108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 41, !dbg !6001
  %71 = load i32, i32* %val, align 4, !dbg !6001
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev108, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0), i32 16000, i32 %71) #10, !dbg !6001
  br label %if.end109, !dbg !6002

if.end109:                                        ; preds = %if.then105, %if.end97
  br label %iounmap, !dbg !5993

iounmap:                                          ; preds = %if.end109, %if.then31
  call void @llvm.dbg.label(metadata !6003), !dbg !6004
  %72 = load i8*, i8** %base, align 8, !dbg !6005
  call void @iounmap(i8* %72) #8, !dbg !6006
  br label %return, !dbg !6007

return:                                           ; preds = %iounmap, %if.then20, %if.then
  ret void, !dbg !6007
}

; Function Attrs: noredzone
declare dso_local void @pci_disable_device(%struct.pci_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @io_type_enabled(%struct.pci_dev* %pdev, i32 %mask) #0 !dbg !6008 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %mask.addr = alloca i32, align 4
  %cmd = alloca i16, align 2
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !6011, metadata !DIExpression()), !dbg !6012
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !6013, metadata !DIExpression()), !dbg !6014
  call void @llvm.dbg.declare(metadata i16* %cmd, metadata !6015, metadata !DIExpression()), !dbg !6016
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !6017
  %call = call i32 @pci_read_config_word(%struct.pci_dev* %0, i32 4, i16* %cmd) #8, !dbg !6018
  %tobool = icmp ne i32 %call, 0, !dbg !6018
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !6019

land.rhs:                                         ; preds = %entry
  %1 = load i16, i16* %cmd, align 2, !dbg !6020
  %conv = zext i16 %1 to i32, !dbg !6020
  %2 = load i32, i32* %mask.addr, align 4, !dbg !6021
  %and = and i32 %conv, %2, !dbg !6022
  %tobool1 = icmp ne i32 %and, 0, !dbg !6019
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !6023
  %land.ext = zext i1 %3 to i32, !dbg !6019
  ret i32 %land.ext, !dbg !6024
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mmio_resource_enabled(%struct.pci_dev* %pdev, i32 %idx) #0 !dbg !6025 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %idx.addr = alloca i32, align 4
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !6026, metadata !DIExpression()), !dbg !6027
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !6028, metadata !DIExpression()), !dbg !6029
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !6030
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 44, !dbg !6030
  %1 = load i32, i32* %idx.addr, align 4, !dbg !6030
  %idxprom = sext i32 %1 to i64, !dbg !6030
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 %idxprom, !dbg !6030
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !6030
  %2 = load i64, i64* %start, align 8, !dbg !6030
  %tobool = icmp ne i64 %2, 0, !dbg !6030
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6031

land.rhs:                                         ; preds = %entry
  %3 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !6032
  %call = call i32 @io_type_enabled(%struct.pci_dev* %3, i32 2) #8, !dbg !6032
  %tobool1 = icmp ne i32 %call, 0, !dbg !6031
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !6033
  %land.ext = zext i1 %4 to i32, !dbg !6031
  ret i32 %land.ext, !dbg !6034
}

; Function Attrs: noredzone
declare dso_local i8* @pci_ioremap_bar(%struct.pci_dev*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !6035 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6041, metadata !DIExpression()), !dbg !6042
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6043, metadata !DIExpression()), !dbg !6042
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !6042
  %1 = bitcast i8* %0 to i32*, !dbg !6042
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #6, !dbg !6042, !srcloc !6044
  store i32 %2, i32* %ret, align 4, !dbg !6042
  %3 = load i32, i32* %ret, align 4, !dbg !6042
  ret i32 %3, !dbg !6042
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !6045 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6049, metadata !DIExpression()), !dbg !6050
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6051, metadata !DIExpression()), !dbg !6050
  %0 = load i32, i32* %val.addr, align 4, !dbg !6050
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !6050
  %2 = bitcast i8* %1 to i32*, !dbg !6050
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #6, !dbg !6050, !srcloc !6052
  ret void, !dbg !6050
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #2

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @readb(i8* %addr) #0 !dbg !6053 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i8, align 1
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6056, metadata !DIExpression()), !dbg !6057
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !6058, metadata !DIExpression()), !dbg !6057
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !6057
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #6, !dbg !6057, !srcloc !6059
  store i8 %1, i8* %ret, align 1, !dbg !6057
  %2 = load i8, i8* %ret, align 1, !dbg !6057
  ret i8 %2, !dbg !6057
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ehci_bios_handoff(%struct.pci_dev* %pdev, i8* %op_reg_base, i32 %cap, i8 zeroext %offset) #0 !dbg !6060 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %op_reg_base.addr = alloca i8*, align 8
  %cap.addr = alloca i32, align 4
  %offset.addr = alloca i8, align 1
  %try_handoff = alloca i32, align 4
  %tried_handoff = alloca i32, align 4
  %msec = alloca i32, align 4
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !6063, metadata !DIExpression()), !dbg !6064
  store i8* %op_reg_base, i8** %op_reg_base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %op_reg_base.addr, metadata !6065, metadata !DIExpression()), !dbg !6066
  store i32 %cap, i32* %cap.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cap.addr, metadata !6067, metadata !DIExpression()), !dbg !6068
  store i8 %offset, i8* %offset.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %offset.addr, metadata !6069, metadata !DIExpression()), !dbg !6070
  call void @llvm.dbg.declare(metadata i32* %try_handoff, metadata !6071, metadata !DIExpression()), !dbg !6072
  store i32 1, i32* %try_handoff, align 4, !dbg !6072
  call void @llvm.dbg.declare(metadata i32* %tried_handoff, metadata !6073, metadata !DIExpression()), !dbg !6074
  store i32 0, i32* %tried_handoff, align 4, !dbg !6074
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !6075
  %vendor = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 7, !dbg !6077
  %1 = load i16, i16* %vendor, align 4, !dbg !6077
  %conv = zext i16 %1 to i32, !dbg !6075
  %cmp = icmp eq i32 %conv, 32902, !dbg !6078
  br i1 %cmp, label %land.lhs.true, label %if.end10, !dbg !6079

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !6080
  %device = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 8, !dbg !6081
  %3 = load i16, i16* %device, align 2, !dbg !6081
  %conv2 = zext i16 %3 to i32, !dbg !6080
  %cmp3 = icmp eq i32 %conv2, 10298, !dbg !6082
  br i1 %cmp3, label %if.then, label %lor.lhs.false, !dbg !6083

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !6084
  %device5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 8, !dbg !6085
  %5 = load i16, i16* %device5, align 2, !dbg !6085
  %conv6 = zext i16 %5 to i32, !dbg !6084
  %cmp7 = icmp eq i32 %conv6, 10188, !dbg !6086
  br i1 %cmp7, label %if.then, label %if.end10, !dbg !6087

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %call = call i32 @dmi_check_system(%struct.dmi_system_id* getelementptr inbounds ([5 x %struct.dmi_system_id], [5 x %struct.dmi_system_id]* bitcast ([5 x { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }]* @ehci_dmi_nohandoff_table to [5 x %struct.dmi_system_id]*), i64 0, i64 0)) #8, !dbg !6088
  %tobool = icmp ne i32 %call, 0, !dbg !6088
  br i1 %tobool, label %if.then9, label %if.end, !dbg !6091

if.then9:                                         ; preds = %if.then
  store i32 0, i32* %try_handoff, align 4, !dbg !6092
  br label %if.end, !dbg !6093

if.end:                                           ; preds = %if.then9, %if.then
  br label %if.end10, !dbg !6094

if.end10:                                         ; preds = %if.end, %lor.lhs.false, %entry
  %6 = load i32, i32* %try_handoff, align 4, !dbg !6095
  %tobool11 = icmp ne i32 %6, 0, !dbg !6095
  br i1 %tobool11, label %land.lhs.true12, label %if.end17, !dbg !6097

land.lhs.true12:                                  ; preds = %if.end10
  %7 = load i32, i32* %cap.addr, align 4, !dbg !6098
  %and = and i32 %7, 65536, !dbg !6099
  %tobool13 = icmp ne i32 %and, 0, !dbg !6099
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !6100

if.then14:                                        ; preds = %land.lhs.true12
  %8 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !6101
  %9 = load i8, i8* %offset.addr, align 1, !dbg !6103
  %conv15 = zext i8 %9 to i32, !dbg !6103
  %add = add i32 %conv15, 3, !dbg !6104
  %call16 = call i32 @pci_write_config_byte(%struct.pci_dev* %8, i32 %add, i8 zeroext 1) #8, !dbg !6105
  br label %if.end17, !dbg !6106

if.end17:                                         ; preds = %if.then14, %land.lhs.true12, %if.end10
  %10 = load i32, i32* %try_handoff, align 4, !dbg !6107
  %tobool18 = icmp ne i32 %10, 0, !dbg !6107
  br i1 %tobool18, label %if.then19, label %if.end26, !dbg !6109

if.then19:                                        ; preds = %if.end17
  call void @llvm.dbg.declare(metadata i32* %msec, metadata !6110, metadata !DIExpression()), !dbg !6112
  store i32 1000, i32* %msec, align 4, !dbg !6112
  br label %while.cond, !dbg !6113

while.cond:                                       ; preds = %while.body, %if.then19
  %11 = load i32, i32* %cap.addr, align 4, !dbg !6114
  %and20 = and i32 %11, 65536, !dbg !6115
  %tobool21 = icmp ne i32 %and20, 0, !dbg !6115
  br i1 %tobool21, label %land.rhs, label %land.end, !dbg !6116

land.rhs:                                         ; preds = %while.cond
  %12 = load i32, i32* %msec, align 4, !dbg !6117
  %cmp22 = icmp sgt i32 %12, 0, !dbg !6118
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp22, %land.rhs ], !dbg !6119
  br i1 %13, label %while.body, label %while.end, !dbg !6113

while.body:                                       ; preds = %land.end
  store i32 1, i32* %tried_handoff, align 4, !dbg !6120
  call void @msleep(i32 10) #8, !dbg !6122
  %14 = load i32, i32* %msec, align 4, !dbg !6123
  %sub = sub i32 %14, 10, !dbg !6123
  store i32 %sub, i32* %msec, align 4, !dbg !6123
  %15 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !6124
  %16 = load i8, i8* %offset.addr, align 1, !dbg !6125
  %conv24 = zext i8 %16 to i32, !dbg !6125
  %call25 = call i32 @pci_read_config_dword(%struct.pci_dev* %15, i32 %conv24, i32* %cap.addr) #8, !dbg !6126
  br label %while.cond, !dbg !6113, !llvm.loop !6127

while.end:                                        ; preds = %land.end
  br label %if.end26, !dbg !6129

if.end26:                                         ; preds = %while.end, %if.end17
  %17 = load i32, i32* %cap.addr, align 4, !dbg !6130
  %and27 = and i32 %17, 65536, !dbg !6132
  %tobool28 = icmp ne i32 %and27, 0, !dbg !6132
  br i1 %tobool28, label %if.then29, label %if.end36, !dbg !6133

if.then29:                                        ; preds = %if.end26
  %18 = load i32, i32* %try_handoff, align 4, !dbg !6134
  %tobool30 = icmp ne i32 %18, 0, !dbg !6134
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !6137

if.then31:                                        ; preds = %if.then29
  %19 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !6138
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 41, !dbg !6138
  %20 = load i32, i32* %cap.addr, align 4, !dbg !6138
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %20) #10, !dbg !6138
  br label %if.end32, !dbg !6138

if.end32:                                         ; preds = %if.then31, %if.then29
  %21 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !6139
  %22 = load i8, i8* %offset.addr, align 1, !dbg !6140
  %conv33 = zext i8 %22 to i32, !dbg !6140
  %add34 = add i32 %conv33, 2, !dbg !6141
  %call35 = call i32 @pci_write_config_byte(%struct.pci_dev* %21, i32 %add34, i8 zeroext 0) #8, !dbg !6142
  br label %if.end36, !dbg !6143

if.end36:                                         ; preds = %if.end32, %if.end26
  %23 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !6144
  %24 = load i8, i8* %offset.addr, align 1, !dbg !6145
  %conv37 = zext i8 %24 to i32, !dbg !6145
  %add38 = add i32 %conv37, 4, !dbg !6146
  %call39 = call i32 @pci_write_config_dword(%struct.pci_dev* %23, i32 %add38, i32 0) #8, !dbg !6147
  %25 = load i32, i32* %tried_handoff, align 4, !dbg !6148
  %tobool40 = icmp ne i32 %25, 0, !dbg !6148
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !6150

if.then41:                                        ; preds = %if.end36
  %26 = load i8*, i8** %op_reg_base.addr, align 8, !dbg !6151
  %add.ptr = getelementptr i8, i8* %26, i64 64, !dbg !6152
  call void @writel(i32 0, i8* %add.ptr) #8, !dbg !6153
  br label %if.end42, !dbg !6153

if.end42:                                         ; preds = %if.then41, %if.end36
  ret void, !dbg !6154
}

; Function Attrs: cold noredzone
declare dso_local void @dev_printk(i8*, %struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @dmi_check_system(%struct.dmi_system_id*) #2

; Function Attrs: noredzone
declare dso_local i8* @ioremap(i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_find_next_ext_cap(i8* %base, i32 %start, i32 %id) #0 !dbg !6155 {
entry:
  %retval = alloca i32, align 4
  %base.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %id.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %next = alloca i32, align 4
  %offset = alloca i32, align 4
  store i8* %base, i8** %base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %base.addr, metadata !6159, metadata !DIExpression()), !dbg !6160
  store i32 %start, i32* %start.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !6161, metadata !DIExpression()), !dbg !6162
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !6163, metadata !DIExpression()), !dbg !6164
  call void @llvm.dbg.declare(metadata i32* %val, metadata !6165, metadata !DIExpression()), !dbg !6166
  call void @llvm.dbg.declare(metadata i32* %next, metadata !6167, metadata !DIExpression()), !dbg !6168
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !6169, metadata !DIExpression()), !dbg !6170
  %0 = load i32, i32* %start.addr, align 4, !dbg !6171
  store i32 %0, i32* %offset, align 4, !dbg !6172
  %1 = load i32, i32* %start.addr, align 4, !dbg !6173
  %tobool = icmp ne i32 %1, 0, !dbg !6173
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6175

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %start.addr, align 4, !dbg !6176
  %cmp = icmp eq i32 %2, 16, !dbg !6177
  br i1 %cmp, label %if.then, label %if.end6, !dbg !6178

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i8*, i8** %base.addr, align 8, !dbg !6179
  %add.ptr = getelementptr i8, i8* %3, i64 16, !dbg !6181
  %call = call i32 @readl(i8* %add.ptr) #8, !dbg !6182
  store i32 %call, i32* %val, align 4, !dbg !6183
  %4 = load i32, i32* %val, align 4, !dbg !6184
  %cmp1 = icmp eq i32 %4, -1, !dbg !6186
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !6187

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !6188
  br label %return, !dbg !6188

if.end:                                           ; preds = %if.then
  %5 = load i32, i32* %val, align 4, !dbg !6189
  %shr = lshr i32 %5, 16, !dbg !6189
  %and = and i32 %shr, 65535, !dbg !6189
  %shl = shl i32 %and, 2, !dbg !6190
  store i32 %shl, i32* %offset, align 4, !dbg !6191
  %6 = load i32, i32* %offset, align 4, !dbg !6192
  %tobool3 = icmp ne i32 %6, 0, !dbg !6192
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !6194

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6195
  br label %return, !dbg !6195

if.end5:                                          ; preds = %if.end
  br label %if.end6, !dbg !6196

if.end6:                                          ; preds = %if.end5, %lor.lhs.false
  br label %do.body, !dbg !6197

do.body:                                          ; preds = %do.cond, %if.end6
  %7 = load i8*, i8** %base.addr, align 8, !dbg !6198
  %8 = load i32, i32* %offset, align 4, !dbg !6200
  %idx.ext = zext i32 %8 to i64, !dbg !6201
  %add.ptr7 = getelementptr i8, i8* %7, i64 %idx.ext, !dbg !6201
  %call8 = call i32 @readl(i8* %add.ptr7) #8, !dbg !6202
  store i32 %call8, i32* %val, align 4, !dbg !6203
  %9 = load i32, i32* %val, align 4, !dbg !6204
  %cmp9 = icmp eq i32 %9, -1, !dbg !6206
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6207

if.then10:                                        ; preds = %do.body
  store i32 0, i32* %retval, align 4, !dbg !6208
  br label %return, !dbg !6208

if.end11:                                         ; preds = %do.body
  %10 = load i32, i32* %offset, align 4, !dbg !6209
  %11 = load i32, i32* %start.addr, align 4, !dbg !6211
  %cmp12 = icmp ne i32 %10, %11, !dbg !6212
  br i1 %cmp12, label %land.lhs.true, label %if.end19, !dbg !6213

land.lhs.true:                                    ; preds = %if.end11
  %12 = load i32, i32* %id.addr, align 4, !dbg !6214
  %cmp13 = icmp eq i32 %12, 0, !dbg !6215
  br i1 %cmp13, label %if.then18, label %lor.lhs.false14, !dbg !6216

lor.lhs.false14:                                  ; preds = %land.lhs.true
  %13 = load i32, i32* %val, align 4, !dbg !6217
  %shr15 = lshr i32 %13, 0, !dbg !6217
  %and16 = and i32 %shr15, 255, !dbg !6217
  %14 = load i32, i32* %id.addr, align 4, !dbg !6218
  %cmp17 = icmp eq i32 %and16, %14, !dbg !6219
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !6220

if.then18:                                        ; preds = %lor.lhs.false14, %land.lhs.true
  %15 = load i32, i32* %offset, align 4, !dbg !6221
  store i32 %15, i32* %retval, align 4, !dbg !6222
  br label %return, !dbg !6222

if.end19:                                         ; preds = %lor.lhs.false14, %if.end11
  %16 = load i32, i32* %val, align 4, !dbg !6223
  %shr20 = lshr i32 %16, 8, !dbg !6223
  %and21 = and i32 %shr20, 255, !dbg !6223
  store i32 %and21, i32* %next, align 4, !dbg !6224
  %17 = load i32, i32* %next, align 4, !dbg !6225
  %shl22 = shl i32 %17, 2, !dbg !6226
  %18 = load i32, i32* %offset, align 4, !dbg !6227
  %add = add i32 %18, %shl22, !dbg !6227
  store i32 %add, i32* %offset, align 4, !dbg !6227
  br label %do.cond, !dbg !6228

do.cond:                                          ; preds = %if.end19
  %19 = load i32, i32* %next, align 4, !dbg !6229
  %tobool23 = icmp ne i32 %19, 0, !dbg !6228
  br i1 %tobool23, label %do.body, label %do.end, !dbg !6228, !llvm.loop !6230

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, align 4, !dbg !6232
  br label %return, !dbg !6232

return:                                           ; preds = %do.end, %if.then18, %if.then10, %if.then4, %if.then2
  %20 = load i32, i32* %retval, align 4, !dbg !6233
  ret i32 %20, !dbg !6233
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @handshake(i8* %ptr, i32 %mask, i32 %done, i32 %wait_usec, i32 %delay_usec) #0 !dbg !6234 {
entry:
  %ptr.addr = alloca i8*, align 8
  %mask.addr = alloca i32, align 4
  %done.addr = alloca i32, align 4
  %wait_usec.addr = alloca i32, align 4
  %delay_usec.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %__timeout_us = alloca i64, align 8
  %__delay_us = alloca i64, align 8
  %__timeout = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6237, metadata !DIExpression()), !dbg !6238
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !6239, metadata !DIExpression()), !dbg !6240
  store i32 %done, i32* %done.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %done.addr, metadata !6241, metadata !DIExpression()), !dbg !6242
  store i32 %wait_usec, i32* %wait_usec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wait_usec.addr, metadata !6243, metadata !DIExpression()), !dbg !6244
  store i32 %delay_usec, i32* %delay_usec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %delay_usec.addr, metadata !6245, metadata !DIExpression()), !dbg !6246
  call void @llvm.dbg.declare(metadata i32* %result, metadata !6247, metadata !DIExpression()), !dbg !6248
  call void @llvm.dbg.declare(metadata i64* %__timeout_us, metadata !6249, metadata !DIExpression()), !dbg !6251
  %0 = load i32, i32* %wait_usec.addr, align 4, !dbg !6251
  %conv = sext i32 %0 to i64, !dbg !6251
  store i64 %conv, i64* %__timeout_us, align 8, !dbg !6251
  call void @llvm.dbg.declare(metadata i64* %__delay_us, metadata !6252, metadata !DIExpression()), !dbg !6251
  %1 = load i32, i32* %delay_usec.addr, align 4, !dbg !6251
  %conv1 = sext i32 %1 to i64, !dbg !6251
  store i64 %conv1, i64* %__delay_us, align 8, !dbg !6251
  call void @llvm.dbg.declare(metadata i64* %__timeout, metadata !6253, metadata !DIExpression()), !dbg !6251
  %call = call i64 @ktime_get() #8, !dbg !6251
  %2 = load i64, i64* %__timeout_us, align 8, !dbg !6251
  %call2 = call i64 @ktime_add_us(i64 %call, i64 %2) #8, !dbg !6251
  store i64 %call2, i64* %__timeout, align 8, !dbg !6251
  br label %for.cond, !dbg !6251

for.cond:                                         ; preds = %if.end21, %entry
  %3 = load i8*, i8** %ptr.addr, align 8, !dbg !6254
  %call3 = call i32 @readl(i8* %3) #8, !dbg !6254
  store i32 %call3, i32* %result, align 4, !dbg !6254
  %4 = load i32, i32* %result, align 4, !dbg !6258
  %5 = load i32, i32* %mask.addr, align 4, !dbg !6258
  %and = and i32 %4, %5, !dbg !6258
  %6 = load i32, i32* %done.addr, align 4, !dbg !6258
  %cmp = icmp eq i32 %and, %6, !dbg !6258
  br i1 %cmp, label %if.then, label %if.end, !dbg !6254

if.then:                                          ; preds = %for.cond
  br label %for.end, !dbg !6258

if.end:                                           ; preds = %for.cond
  %7 = load i64, i64* %__timeout_us, align 8, !dbg !6260
  %tobool = icmp ne i64 %7, 0, !dbg !6260
  br i1 %tobool, label %land.lhs.true, label %if.end11, !dbg !6260

land.lhs.true:                                    ; preds = %if.end
  %call5 = call i64 @ktime_get() #8, !dbg !6260
  %8 = load i64, i64* %__timeout, align 8, !dbg !6260
  %call6 = call i32 @ktime_compare(i64 %call5, i64 %8) #8, !dbg !6260
  %cmp7 = icmp sgt i32 %call6, 0, !dbg !6260
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !6254

if.then9:                                         ; preds = %land.lhs.true
  %9 = load i8*, i8** %ptr.addr, align 8, !dbg !6262
  %call10 = call i32 @readl(i8* %9) #8, !dbg !6262
  store i32 %call10, i32* %result, align 4, !dbg !6262
  br label %for.end, !dbg !6262

if.end11:                                         ; preds = %land.lhs.true, %if.end
  %10 = load i64, i64* %__delay_us, align 8, !dbg !6264
  %tobool12 = icmp ne i64 %10, 0, !dbg !6264
  br i1 %tobool12, label %if.then13, label %if.end21, !dbg !6254

if.then13:                                        ; preds = %if.end11
  %11 = load i64, i64* %__delay_us, align 8, !dbg !6266
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !6266
  br i1 %12, label %if.then14, label %if.else19, !dbg !6269

if.then14:                                        ; preds = %if.then13
  %13 = load i64, i64* %__delay_us, align 8, !dbg !6270
  %div = udiv i64 %13, 20000, !dbg !6270
  %cmp15 = icmp uge i64 %div, 1, !dbg !6270
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !6273

if.then17:                                        ; preds = %if.then14
  call void @__bad_udelay() #8, !dbg !6270
  br label %if.end18, !dbg !6270

if.else:                                          ; preds = %if.then14
  %14 = load i64, i64* %__delay_us, align 8, !dbg !6270
  %mul = mul i64 %14, 4295, !dbg !6270
  call void @__const_udelay(i64 %mul) #8, !dbg !6270
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then17
  br label %if.end20, !dbg !6273

if.else19:                                        ; preds = %if.then13
  %15 = load i64, i64* %__delay_us, align 8, !dbg !6274
  call void @__udelay(i64 %15) #8, !dbg !6274
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.end18
  br label %if.end21, !dbg !6264

if.end21:                                         ; preds = %if.end20, %if.end11
  br label %for.cond, !dbg !6276, !llvm.loop !6277

for.end:                                          ; preds = %if.then9, %if.then
  %16 = load i32, i32* %result, align 4, !dbg !6251
  %17 = load i32, i32* %mask.addr, align 4, !dbg !6251
  %and22 = and i32 %16, %17, !dbg !6251
  %18 = load i32, i32* %done.addr, align 4, !dbg !6251
  %cmp23 = icmp eq i32 %and22, %18, !dbg !6251
  %19 = zext i1 %cmp23 to i64, !dbg !6251
  %cond = select i1 %cmp23, i32 0, i32 -110, !dbg !6251
  store i32 %cond, i32* %tmp, align 4, !dbg !6278
  %20 = load i32, i32* %tmp, align 4, !dbg !6251
  ret i32 %20, !dbg !6279
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_add_us(i64 %kt, i64 %usec) #0 !dbg !6280 {
entry:
  %kt.addr = alloca i64, align 8
  %usec.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !6285, metadata !DIExpression()), !dbg !6286
  store i64 %usec, i64* %usec.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %usec.addr, metadata !6287, metadata !DIExpression()), !dbg !6288
  %0 = load i64, i64* %kt.addr, align 8, !dbg !6289
  %1 = load i64, i64* %usec.addr, align 8, !dbg !6289
  %mul = mul i64 %1, 1000, !dbg !6289
  %add = add i64 %0, %mul, !dbg !6289
  ret i64 %add, !dbg !6290
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ktime_compare(i64 %cmp1, i64 %cmp2) #0 !dbg !6291 {
entry:
  %retval = alloca i32, align 4
  %cmp1.addr = alloca i64, align 8
  %cmp2.addr = alloca i64, align 8
  store i64 %cmp1, i64* %cmp1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp1.addr, metadata !6294, metadata !DIExpression()), !dbg !6295
  store i64 %cmp2, i64* %cmp2.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp2.addr, metadata !6296, metadata !DIExpression()), !dbg !6297
  %0 = load i64, i64* %cmp1.addr, align 8, !dbg !6298
  %1 = load i64, i64* %cmp2.addr, align 8, !dbg !6300
  %cmp = icmp slt i64 %0, %1, !dbg !6301
  br i1 %cmp, label %if.then, label %if.end, !dbg !6302

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !6303
  br label %return, !dbg !6303

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %cmp1.addr, align 8, !dbg !6304
  %3 = load i64, i64* %cmp2.addr, align 8, !dbg !6306
  %cmp3 = icmp sgt i64 %2, %3, !dbg !6307
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6308

if.then4:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !6309
  br label %return, !dbg !6309

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6310
  br label %return, !dbg !6310

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !6311
  ret i32 %4, !dbg !6311
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone
declare dso_local void @__bad_udelay() #2

; Function Attrs: noredzone
declare dso_local void @__udelay(i64) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { noredzone }
attributes #9 = { noredzone nounwind }
attributes #10 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4166}
!llvm.module.flags = !{!4167, !4168, !4169, !4170}
!llvm.ident = !{!4171}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "amd_chipset", scope: !2, file: !3, line: 139, type: !4153, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !123, globals: !4123, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/host/pci-quirks.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !118}
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "amd_chipset_gen", file: !3, line: 114, baseType: !7, size: 32, elements: !108)
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116, !117}
!109 = !DIEnumerator(name: "NOT_AMD_CHIPSET", value: 0, isUnsigned: true)
!110 = !DIEnumerator(name: "AMD_CHIPSET_SB600", value: 1, isUnsigned: true)
!111 = !DIEnumerator(name: "AMD_CHIPSET_SB700", value: 2, isUnsigned: true)
!112 = !DIEnumerator(name: "AMD_CHIPSET_SB800", value: 3, isUnsigned: true)
!113 = !DIEnumerator(name: "AMD_CHIPSET_HUDSON2", value: 4, isUnsigned: true)
!114 = !DIEnumerator(name: "AMD_CHIPSET_BOLTON", value: 5, isUnsigned: true)
!115 = !DIEnumerator(name: "AMD_CHIPSET_YANGTZE", value: 6, isUnsigned: true)
!116 = !DIEnumerator(name: "AMD_CHIPSET_TAISHAN", value: 7, isUnsigned: true)
!117 = !DIEnumerator(name: "AMD_CHIPSET_UNKNOWN", value: 8, isUnsigned: true)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !119, line: 10, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!120 = !{!121, !122}
!121 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!123 = !{!124, !125, !166, !197, !4119, !4121}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !127, line: 309, size: 19264, elements: !128)
!127 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!128 = !{!129, !136, !3922, !3923, !3924, !3925, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !4017, !4018, !4019, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4093, !4094, !4095, !4096, !4097, !4098, !4100, !4101, !4102, !4105, !4112, !4113, !4114, !4115, !4116, !4117, !4118}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !126, file: !127, line: 310, baseType: !130, size: 128)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !131, line: 178, size: 128, elements: !132)
!131 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!132 = !{!133, !135}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !130, file: !131, line: 179, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !130, file: !131, line: 179, baseType: !134, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !126, file: !127, line: 311, baseType: !137, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !127, line: 605, size: 8064, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145, !146, !173, !174, !175, !203, !206, !207, !211, !213, !214, !215, !216, !220, !222, !224, !3918, !3919, !3920, !3921}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !138, file: !127, line: 606, baseType: !130, size: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !138, file: !127, line: 607, baseType: !137, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !138, file: !127, line: 608, baseType: !130, size: 128, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !138, file: !127, line: 609, baseType: !130, size: 128, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !138, file: !127, line: 610, baseType: !125, size: 64, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !138, file: !127, line: 611, baseType: !130, size: 128, offset: 512)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !138, file: !127, line: 613, baseType: !147, size: 256, offset: 640)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 256, elements: !171)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !150, line: 20, size: 512, elements: !151)
!150 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!151 = !{!152, !160, !161, !165, !167, !168, !169, !170}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !149, file: !150, line: 21, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !131, line: 158, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !131, line: 153, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !156, line: 23, baseType: !157)
!156 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !158, line: 31, baseType: !159)
!158 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!159 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !149, file: !150, line: 22, baseType: !153, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !149, file: !150, line: 23, baseType: !162, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!164 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !149, file: !150, line: 24, baseType: !166, size: 64, offset: 192)
!166 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !149, file: !150, line: 25, baseType: !166, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !149, file: !150, line: 26, baseType: !148, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !149, file: !150, line: 26, baseType: !148, size: 64, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !149, file: !150, line: 26, baseType: !148, size: 64, offset: 448)
!171 = !{!172}
!172 = !DISubrange(count: 4)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !138, file: !127, line: 614, baseType: !130, size: 128, offset: 896)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !138, file: !127, line: 615, baseType: !149, size: 512, offset: 1024)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !138, file: !127, line: 617, baseType: !176, size: 64, offset: 1536)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !127, line: 731, size: 320, elements: !178)
!178 = !{!179, !184, !188, !192, !199}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !177, file: !127, line: 732, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!183, !137}
!183 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !177, file: !127, line: 733, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !137}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !177, file: !127, line: 734, baseType: !189, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!124, !137, !7, !183}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !177, file: !127, line: 735, baseType: !193, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!183, !137, !7, !183, !183, !196}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !156, line: 21, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !158, line: 27, baseType: !7)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !177, file: !127, line: 736, baseType: !200, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!183, !137, !7, !183, !183, !197}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !138, file: !127, line: 618, baseType: !204, size: 64, offset: 1600)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !127, line: 537, flags: DIFlagFwdDecl)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !138, file: !127, line: 619, baseType: !124, size: 64, offset: 1664)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !138, file: !127, line: 620, baseType: !208, size: 64, offset: 1728)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !210, line: 123, flags: DIFlagFwdDecl)
!210 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!211 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !138, file: !127, line: 622, baseType: !212, size: 8, offset: 1792)
!212 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !138, file: !127, line: 623, baseType: !212, size: 8, offset: 1800)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !138, file: !127, line: 624, baseType: !212, size: 8, offset: 1808)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !138, file: !127, line: 625, baseType: !212, size: 8, offset: 1816)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !138, file: !127, line: 630, baseType: !217, size: 384, offset: 1824)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 384, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 48)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !138, file: !127, line: 632, baseType: !221, size: 16, offset: 2208)
!221 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !138, file: !127, line: 633, baseType: !223, size: 16, offset: 2224)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !127, line: 237, baseType: !221)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !138, file: !127, line: 634, baseType: !225, size: 64, offset: 2240)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !227)
!227 = !{!228, !3372, !3373, !3376, !3377, !3428, !3519, !3520, !3521, !3522, !3523, !3532, !3637, !3650, !3845, !3846, !3850, !3852, !3853, !3854, !3858, !3864, !3865, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3906, !3907, !3908, !3911, !3914, !3915, !3916, !3917}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !226, file: !73, line: 462, baseType: !229, size: 512)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !230, line: 64, size: 512, elements: !231)
!230 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!231 = !{!232, !233, !234, !236, !296, !3223, !3362, !3367, !3368, !3369, !3370, !3371}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !229, file: !230, line: 65, baseType: !162, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !229, file: !230, line: 66, baseType: !130, size: 128, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !229, file: !230, line: 67, baseType: !235, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !229, file: !230, line: 68, baseType: !237, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !230, line: 192, size: 704, elements: !239)
!239 = !{!240, !241, !257, !258}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !238, file: !230, line: 193, baseType: !130, size: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !238, file: !230, line: 194, baseType: !242, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !243, line: 83, baseType: !244)
!243 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !243, line: 71, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !244, file: !243, line: 72, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !244, file: !243, line: 72, elements: !248)
!248 = !{!249}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !247, file: !243, line: 73, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !243, line: 20, elements: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !250, file: !243, line: 21, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !254, line: 25, baseType: !255)
!254 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 25, elements: !256)
!256 = !{}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !238, file: !230, line: 195, baseType: !229, size: 512, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !238, file: !230, line: 196, baseType: !259, size: 64, offset: 640)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !230, line: 156, size: 192, elements: !262)
!262 = !{!263, !268, !273}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !261, file: !230, line: 157, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!183, !237, !235}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !261, file: !230, line: 158, baseType: !269, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!162, !237, !235}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !261, file: !230, line: 159, baseType: !274, size: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!183, !237, !235, !278}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !230, line: 148, size: 20736, elements: !280)
!280 = !{!281, !286, !290, !291, !295}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !279, file: !230, line: 149, baseType: !282, size: 192)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 192, elements: !284)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!284 = !{!285}
!285 = !DISubrange(count: 3)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !279, file: !230, line: 150, baseType: !287, size: 4096, offset: 192)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 4096, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !279, file: !230, line: 151, baseType: !183, size: 32, offset: 4288)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !279, file: !230, line: 152, baseType: !292, size: 16384, offset: 4320)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 16384, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 2048)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !279, file: !230, line: 153, baseType: !183, size: 32, offset: 20704)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !229, file: !230, line: 69, baseType: !297, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !230, line: 138, size: 448, elements: !299)
!299 = !{!300, !304, !332, !334, !3185, !3213, !3217}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !298, file: !230, line: 139, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !235}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !298, file: !230, line: 140, baseType: !305, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !308, line: 230, size: 128, elements: !309)
!308 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!309 = !{!310, !325}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !307, file: !308, line: 231, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!314, !235, !319, !283}
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !131, line: 60, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !316, line: 73, baseType: !317)
!316 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !316, line: 15, baseType: !318)
!318 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !308, line: 30, size: 128, elements: !321)
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !320, file: !308, line: 31, baseType: !162, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !320, file: !308, line: 32, baseType: !324, size: 16, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !131, line: 19, baseType: !221)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !307, file: !308, line: 232, baseType: !326, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!314, !235, !319, !162, !329}
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !131, line: 55, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !316, line: 72, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !316, line: 16, baseType: !166)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !298, file: !230, line: 141, baseType: !333, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !298, file: !230, line: 142, baseType: !335, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !308, line: 84, size: 320, elements: !339)
!339 = !{!340, !341, !345, !3182, !3183}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !338, file: !308, line: 85, baseType: !162, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !338, file: !308, line: 86, baseType: !342, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!324, !235, !319, !183}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !338, file: !308, line: 88, baseType: !346, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!324, !235, !349, !183}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !308, line: 168, size: 448, elements: !351)
!351 = !{!352, !353, !354, !355, !3177, !3178}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !350, file: !308, line: 169, baseType: !320, size: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !350, file: !308, line: 170, baseType: !329, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !350, file: !308, line: 171, baseType: !124, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !350, file: !308, line: 172, baseType: !356, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!314, !359, !235, !349, !283, !530, !329}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !361)
!361 = !{!362, !380, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3160, !3161, !3170, !3171, !3172, !3173, !3174, !3175, !3176}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !360, file: !44, line: 920, baseType: !363, size: 128)
!363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !360, file: !44, line: 917, size: 128, elements: !364)
!364 = !{!365, !371}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !363, file: !44, line: 918, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !367, line: 58, size: 64, elements: !368)
!367 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !366, file: !367, line: 59, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !363, file: !44, line: 919, baseType: !372, size: 128, align: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !131, line: 216, size: 128, align: 64, elements: !373)
!373 = !{!374, !376}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !372, file: !131, line: 217, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !372, file: !131, line: 218, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !375}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !360, file: !44, line: 921, baseType: !381, size: 128, offset: 128)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !382, line: 8, size: 128, elements: !383)
!382 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!383 = !{!384, !388}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !381, file: !382, line: 9, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !387, line: 18, flags: DIFlagFwdDecl)
!387 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!388 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !381, file: !382, line: 10, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !387, line: 89, size: 1536, elements: !391)
!391 = !{!392, !393, !403, !411, !412, !427, !3110, !3112, !3124, !3125, !3126, !3127, !3128, !3134, !3135, !3136}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !390, file: !387, line: 91, baseType: !7, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !390, file: !387, line: 92, baseType: !394, size: 32, offset: 32)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !395, line: 277, baseType: !396)
!395 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !395, line: 277, size: 32, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !396, file: !395, line: 277, baseType: !399, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !395, line: 70, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !395, line: 65, size: 32, elements: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !400, file: !395, line: 66, baseType: !7, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !390, file: !387, line: 93, baseType: !404, size: 128, offset: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !405, line: 38, size: 128, elements: !406)
!405 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!406 = !{!407, !409}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !404, file: !405, line: 39, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !404, file: !405, line: 39, baseType: !410, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !390, file: !387, line: 94, baseType: !389, size: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !390, file: !387, line: 95, baseType: !413, size: 128, offset: 256)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !387, line: 47, size: 128, elements: !414)
!414 = !{!415, !424}
!415 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !387, line: 48, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !387, line: 48, size: 64, elements: !417)
!417 = !{!418, !423}
!418 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !387, line: 49, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !416, file: !387, line: 49, size: 64, elements: !420)
!420 = !{!421, !422}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !419, file: !387, line: 50, baseType: !197, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !419, file: !387, line: 50, baseType: !197, size: 32, offset: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !416, file: !387, line: 52, baseType: !155, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !413, file: !387, line: 54, baseType: !425, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !390, file: !387, line: 96, baseType: !428, size: 64, offset: 384)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !430)
!430 = !{!431, !432, !433, !441, !448, !449, !597, !2821, !2822, !2823, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !3086, !3094, !3095, !3096, !3106, !3107, !3108, !3109}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !429, file: !44, line: 611, baseType: !324, size: 16)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !429, file: !44, line: 612, baseType: !221, size: 16, offset: 16)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !429, file: !44, line: 613, baseType: !434, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !435, line: 23, baseType: !436)
!435 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !435, line: 21, size: 32, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !436, file: !435, line: 22, baseType: !439, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !131, line: 32, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !316, line: 49, baseType: !7)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !429, file: !44, line: 614, baseType: !442, size: 32, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !435, line: 28, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !435, line: 26, size: 32, elements: !444)
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !443, file: !435, line: 27, baseType: !446, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !131, line: 33, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !316, line: 50, baseType: !7)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !429, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !429, file: !44, line: 622, baseType: !450, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !453)
!453 = !{!454, !458, !471, !475, !481, !485, !491, !495, !499, !503, !507, !508, !514, !518, !544, !573, !577, !583, !588, !592, !593}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !452, file: !44, line: 1865, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!389, !428, !389, !7}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !452, file: !44, line: 1866, baseType: !459, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!162, !389, !428, !462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !464, line: 10, size: 128, elements: !465)
!464 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!465 = !{!466, !470}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !463, file: !464, line: 11, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !124}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !463, file: !464, line: 12, baseType: !124, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !452, file: !44, line: 1867, baseType: !472, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!183, !428, !183}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !452, file: !44, line: 1868, baseType: !476, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!479, !428, !183}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !452, file: !44, line: 1870, baseType: !482, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!183, !389, !283, !183}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !452, file: !44, line: 1872, baseType: !486, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!183, !428, !389, !324, !489}
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !131, line: 30, baseType: !490)
!490 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !452, file: !44, line: 1873, baseType: !492, size: 64, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!183, !389, !428, !389}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !452, file: !44, line: 1874, baseType: !496, size: 64, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!183, !428, !389}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !452, file: !44, line: 1875, baseType: !500, size: 64, offset: 512)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!183, !428, !389, !162}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !452, file: !44, line: 1876, baseType: !504, size: 64, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!183, !428, !389, !324}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !452, file: !44, line: 1877, baseType: !496, size: 64, offset: 640)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !452, file: !44, line: 1878, baseType: !509, size: 64, offset: 704)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!183, !428, !389, !324, !512}
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !131, line: 16, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !131, line: 13, baseType: !197)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !452, file: !44, line: 1879, baseType: !515, size: 64, offset: 768)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!183, !428, !389, !428, !389, !7}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !452, file: !44, line: 1881, baseType: !519, size: 64, offset: 832)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!183, !389, !522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !524)
!524 = !{!525, !526, !527, !528, !529, !533, !541, !542, !543}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !523, file: !44, line: 220, baseType: !7, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !523, file: !44, line: 221, baseType: !324, size: 16, offset: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !523, file: !44, line: 222, baseType: !434, size: 32, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !523, file: !44, line: 223, baseType: !442, size: 32, offset: 96)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !523, file: !44, line: 224, baseType: !530, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !131, line: 46, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !316, line: 88, baseType: !532)
!532 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !523, file: !44, line: 225, baseType: !534, size: 128, offset: 192)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !535, line: 13, size: 128, elements: !536)
!535 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!536 = !{!537, !540}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !534, file: !535, line: 14, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !535, line: 8, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !158, line: 30, baseType: !532)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !534, file: !535, line: 15, baseType: !318, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !523, file: !44, line: 226, baseType: !534, size: 128, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !523, file: !44, line: 227, baseType: !534, size: 128, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !523, file: !44, line: 234, baseType: !359, size: 64, offset: 576)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !452, file: !44, line: 1882, baseType: !545, size: 64, offset: 896)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!183, !548, !550, !197, !7}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !552, line: 22, size: 1152, elements: !553)
!552 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!553 = !{!554, !555, !556, !557, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !551, file: !552, line: 23, baseType: !197, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !551, file: !552, line: 24, baseType: !324, size: 16, offset: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !551, file: !552, line: 25, baseType: !7, size: 32, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !551, file: !552, line: 26, baseType: !558, size: 32, offset: 96)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !131, line: 104, baseType: !197)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !551, file: !552, line: 27, baseType: !155, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !551, file: !552, line: 28, baseType: !155, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !551, file: !552, line: 37, baseType: !155, size: 64, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !551, file: !552, line: 38, baseType: !512, size: 32, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !551, file: !552, line: 39, baseType: !512, size: 32, offset: 352)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !551, file: !552, line: 40, baseType: !434, size: 32, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !551, file: !552, line: 41, baseType: !442, size: 32, offset: 416)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !551, file: !552, line: 42, baseType: !530, size: 64, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !551, file: !552, line: 43, baseType: !534, size: 128, offset: 512)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !551, file: !552, line: 44, baseType: !534, size: 128, offset: 640)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !551, file: !552, line: 45, baseType: !534, size: 128, offset: 768)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !551, file: !552, line: 46, baseType: !534, size: 128, offset: 896)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !551, file: !552, line: 47, baseType: !155, size: 64, offset: 1024)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !551, file: !552, line: 48, baseType: !155, size: 64, offset: 1088)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !452, file: !44, line: 1883, baseType: !574, size: 64, offset: 960)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!314, !389, !283, !329}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !452, file: !44, line: 1884, baseType: !578, size: 64, offset: 1024)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!183, !428, !581, !155, !155}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !452, file: !44, line: 1886, baseType: !584, size: 64, offset: 1088)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!183, !428, !587, !183}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !452, file: !44, line: 1887, baseType: !589, size: 64, offset: 1152)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!183, !428, !389, !359, !7, !324}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !452, file: !44, line: 1890, baseType: !504, size: 64, offset: 1216)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !452, file: !44, line: 1891, baseType: !594, size: 64, offset: 1280)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!183, !428, !479, !183}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !429, file: !44, line: 623, baseType: !598, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !656, !2428, !2510, !2593, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2609, !2613, !2614, !2617, !2618, !2621, !2622, !2623, !2664, !2691, !2692, !2693, !2694, !2695, !2696, !2699, !2701, !2708, !2709, !2711, !2712, !2713, !2772, !2773, !2788, !2789, !2790, !2791, !2792, !2795, !2796, !2797, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !599, file: !44, line: 1417, baseType: !130, size: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !599, file: !44, line: 1418, baseType: !512, size: 32, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !599, file: !44, line: 1419, baseType: !212, size: 8, offset: 160)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !599, file: !44, line: 1420, baseType: !166, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !599, file: !44, line: 1421, baseType: !530, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !599, file: !44, line: 1422, baseType: !607, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !609)
!609 = !{!610, !611, !612, !619, !623, !627, !631, !635, !636, !646, !649, !650, !651, !653, !654, !655}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !608, file: !44, line: 2229, baseType: !162, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !608, file: !44, line: 2230, baseType: !183, size: 32, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !608, file: !44, line: 2238, baseType: !613, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!183, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !618, line: 28, flags: DIFlagFwdDecl)
!618 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!619 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !608, file: !44, line: 2239, baseType: !620, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !608, file: !44, line: 2240, baseType: !624, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!389, !607, !183, !162, !124}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !608, file: !44, line: 2242, baseType: !628, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !598}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !608, file: !44, line: 2243, baseType: !632, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !634, line: 76, flags: DIFlagFwdDecl)
!634 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !608, file: !44, line: 2244, baseType: !607, size: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !608, file: !44, line: 2245, baseType: !637, size: 64, offset: 512)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !131, line: 182, size: 64, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !637, file: !131, line: 183, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !131, line: 186, size: 128, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !641, file: !131, line: 187, baseType: !640, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !641, file: !131, line: 187, baseType: !645, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !608, file: !44, line: 2247, baseType: !647, offset: 576)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !648, line: 187, elements: !256)
!648 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!649 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !608, file: !44, line: 2248, baseType: !647, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !608, file: !44, line: 2249, baseType: !647, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !608, file: !44, line: 2250, baseType: !652, offset: 576)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, elements: !284)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !608, file: !44, line: 2252, baseType: !647, offset: 576)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !608, file: !44, line: 2253, baseType: !647, offset: 576)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !608, file: !44, line: 2254, baseType: !647, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !599, file: !44, line: 1423, baseType: !657, size: 64, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !660)
!660 = !{!661, !665, !669, !670, !674, !680, !684, !685, !686, !690, !694, !695, !696, !697, !703, !708, !709, !716, !717, !718, !719, !2412, !2427}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !659, file: !44, line: 1936, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!428, !598}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !659, file: !44, line: 1937, baseType: !666, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !428}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !659, file: !44, line: 1938, baseType: !666, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !659, file: !44, line: 1940, baseType: !671, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !428, !183}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !659, file: !44, line: 1941, baseType: !675, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!183, !428, !678}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !659, file: !44, line: 1942, baseType: !681, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!183, !428}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !659, file: !44, line: 1943, baseType: !666, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !659, file: !44, line: 1944, baseType: !628, size: 64, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !659, file: !44, line: 1945, baseType: !687, size: 64, offset: 512)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!183, !598, !183}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !659, file: !44, line: 1946, baseType: !691, size: 64, offset: 576)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!183, !598}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !659, file: !44, line: 1947, baseType: !691, size: 64, offset: 640)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !659, file: !44, line: 1948, baseType: !691, size: 64, offset: 704)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !659, file: !44, line: 1949, baseType: !691, size: 64, offset: 768)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !659, file: !44, line: 1950, baseType: !698, size: 64, offset: 832)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!183, !389, !701}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !659, file: !44, line: 1951, baseType: !704, size: 64, offset: 896)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!183, !598, !707, !283}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !659, file: !44, line: 1952, baseType: !628, size: 64, offset: 960)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !659, file: !44, line: 1954, baseType: !710, size: 64, offset: 1024)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!183, !713, !389}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !715, line: 539, flags: DIFlagFwdDecl)
!715 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!716 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !659, file: !44, line: 1955, baseType: !710, size: 64, offset: 1088)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !659, file: !44, line: 1956, baseType: !710, size: 64, offset: 1152)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !659, file: !44, line: 1957, baseType: !710, size: 64, offset: 1216)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !659, file: !44, line: 1963, baseType: !720, size: 64, offset: 1280)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!183, !598, !723, !746}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !725, line: 68, size: 512, align: 128, elements: !726)
!725 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!726 = !{!727, !728, !2404, !2411}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !724, file: !725, line: 69, baseType: !166, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !725, line: 77, baseType: !729, size: 320, offset: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !724, file: !725, line: 77, size: 320, elements: !730)
!730 = !{!731, !919, !924, !952, !960, !966, !2335, !2403}
!731 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 78, baseType: !732, size: 320)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 78, size: 320, elements: !733)
!733 = !{!734, !735, !917, !918}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !732, file: !725, line: 84, baseType: !130, size: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !732, file: !725, line: 86, baseType: !736, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !738)
!738 = !{!739, !740, !748, !749, !754, !769, !785, !786, !787, !788, !910, !911, !914, !915, !916}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !737, file: !44, line: 452, baseType: !428, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !737, file: !44, line: 453, baseType: !741, size: 128, offset: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !742, line: 292, size: 128, elements: !743)
!742 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!743 = !{!744, !745, !747}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !741, file: !742, line: 293, baseType: !242)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !741, file: !742, line: 295, baseType: !746, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !131, line: 148, baseType: !7)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !741, file: !742, line: 296, baseType: !124, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !737, file: !44, line: 454, baseType: !746, size: 32, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !737, file: !44, line: 455, baseType: !750, size: 32, offset: 224)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !131, line: 168, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 166, size: 32, elements: !752)
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !751, file: !131, line: 167, baseType: !183, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !737, file: !44, line: 460, baseType: !755, size: 128, offset: 256)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !756, line: 125, size: 128, elements: !757)
!756 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!757 = !{!758, !768}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !755, file: !756, line: 126, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !756, line: 31, size: 64, elements: !760)
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !759, file: !756, line: 32, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !756, line: 24, size: 192, align: 64, elements: !764)
!764 = !{!765, !766, !767}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !763, file: !756, line: 25, baseType: !166, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !763, file: !756, line: 26, baseType: !762, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !763, file: !756, line: 27, baseType: !762, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !755, file: !756, line: 127, baseType: !762, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !737, file: !44, line: 461, baseType: !770, size: 256, offset: 384)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !771, line: 35, size: 256, elements: !772)
!771 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!772 = !{!773, !781, !782, !784}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !770, file: !771, line: 36, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !775, line: 13, baseType: !776)
!775 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !131, line: 175, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 173, size: 64, elements: !778)
!778 = !{!779}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !777, file: !131, line: 174, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !156, line: 22, baseType: !539)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !770, file: !771, line: 42, baseType: !774, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !770, file: !771, line: 46, baseType: !783, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !243, line: 29, baseType: !250)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !770, file: !771, line: 47, baseType: !130, size: 128, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !737, file: !44, line: 462, baseType: !166, size: 64, offset: 640)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !737, file: !44, line: 463, baseType: !166, size: 64, offset: 704)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !737, file: !44, line: 464, baseType: !166, size: 64, offset: 768)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !737, file: !44, line: 465, baseType: !789, size: 64, offset: 832)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !792)
!792 = !{!793, !797, !801, !805, !809, !813, !819, !825, !829, !834, !838, !842, !846, !874, !878, !884, !885, !886, !890, !895, !899, !906}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !791, file: !44, line: 368, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!183, !723, !678}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !791, file: !44, line: 369, baseType: !798, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!183, !359, !723}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !791, file: !44, line: 372, baseType: !802, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!183, !736, !678}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !791, file: !44, line: 375, baseType: !806, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!183, !723}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !791, file: !44, line: 381, baseType: !810, size: 64, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!183, !359, !736, !134, !7}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !791, file: !44, line: 383, baseType: !814, size: 64, offset: 320)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !817}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !791, file: !44, line: 385, baseType: !820, size: 64, offset: 384)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!183, !359, !736, !530, !7, !7, !823, !824}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !791, file: !44, line: 388, baseType: !826, size: 64, offset: 448)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!183, !359, !736, !530, !7, !7, !723, !124}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !791, file: !44, line: 393, baseType: !830, size: 64, offset: 512)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!833, !736, !833}
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !131, line: 125, baseType: !155)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !791, file: !44, line: 394, baseType: !835, size: 64, offset: 576)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !723, !7, !7}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !791, file: !44, line: 395, baseType: !839, size: 64, offset: 640)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!183, !723, !746}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !791, file: !44, line: 396, baseType: !843, size: 64, offset: 704)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !723}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !791, file: !44, line: 397, baseType: !847, size: 64, offset: 768)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!314, !850, !872}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !852)
!852 = !{!853, !854, !855, !859, !860, !861, !864, !865}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !851, file: !44, line: 321, baseType: !359, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !851, file: !44, line: 326, baseType: !530, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !851, file: !44, line: 327, baseType: !856, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !850, !318, !318}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !851, file: !44, line: 328, baseType: !124, size: 64, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !851, file: !44, line: 329, baseType: !183, size: 32, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !851, file: !44, line: 330, baseType: !862, size: 16, offset: 288)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !156, line: 19, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !158, line: 24, baseType: !221)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !851, file: !44, line: 331, baseType: !862, size: 16, offset: 304)
!865 = !DIDerivedType(tag: DW_TAG_member, scope: !851, file: !44, line: 332, baseType: !866, size: 64, offset: 320)
!866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !851, file: !44, line: 332, size: 64, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !866, file: !44, line: 333, baseType: !7, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !866, file: !44, line: 334, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !791, file: !44, line: 402, baseType: !875, size: 64, offset: 832)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!183, !736, !723, !723, !5}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !791, file: !44, line: 404, baseType: !879, size: 64, offset: 896)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!489, !723, !882}
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !883, line: 305, baseType: !7)
!883 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!884 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !791, file: !44, line: 405, baseType: !843, size: 64, offset: 960)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !791, file: !44, line: 406, baseType: !806, size: 64, offset: 1024)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !791, file: !44, line: 407, baseType: !887, size: 64, offset: 1088)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!183, !723, !166, !166}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !791, file: !44, line: 409, baseType: !891, size: 64, offset: 1152)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !723, !894, !894}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !791, file: !44, line: 410, baseType: !896, size: 64, offset: 1216)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!183, !736, !723}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !791, file: !44, line: 413, baseType: !900, size: 64, offset: 1280)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!183, !903, !359, !905}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !791, file: !44, line: 415, baseType: !907, size: 64, offset: 1344)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !359}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !737, file: !44, line: 466, baseType: !166, size: 64, offset: 896)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !737, file: !44, line: 467, baseType: !912, size: 32, offset: 960)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !913, line: 8, baseType: !197)
!913 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!914 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !737, file: !44, line: 468, baseType: !242, offset: 992)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !737, file: !44, line: 469, baseType: !130, size: 128, offset: 1024)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !737, file: !44, line: 470, baseType: !124, size: 64, offset: 1152)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !732, file: !725, line: 87, baseType: !166, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !732, file: !725, line: 94, baseType: !166, size: 64, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 96, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 96, size: 64, elements: !921)
!921 = !{!922}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !920, file: !725, line: 101, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !131, line: 143, baseType: !155)
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 103, baseType: !925, size: 320)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 103, size: 320, elements: !926)
!926 = !{!927, !937, !940, !941}
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !725, line: 104, baseType: !928, size: 128)
!928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !925, file: !725, line: 104, size: 128, elements: !929)
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !928, file: !725, line: 105, baseType: !130, size: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !928, file: !725, line: 106, baseType: !932, size: 128)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !928, file: !725, line: 106, size: 128, elements: !933)
!933 = !{!934, !935, !936}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !932, file: !725, line: 107, baseType: !723, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !932, file: !725, line: 109, baseType: !183, size: 32, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !932, file: !725, line: 110, baseType: !183, size: 32, offset: 96)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !925, file: !725, line: 117, baseType: !938, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !725, line: 117, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !925, file: !725, line: 119, baseType: !124, size: 64, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !925, file: !725, line: 120, baseType: !942, size: 64, offset: 256)
!942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !925, file: !725, line: 120, size: 64, elements: !943)
!943 = !{!944, !945, !946}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !942, file: !725, line: 121, baseType: !124, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !942, file: !725, line: 122, baseType: !166, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !942, file: !725, line: 123, baseType: !947, size: 32)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !942, file: !725, line: 123, size: 32, elements: !948)
!948 = !{!949, !950, !951}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !947, file: !725, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !947, file: !725, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !947, file: !725, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!952 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 130, baseType: !953, size: 192)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 130, size: 192, elements: !954)
!954 = !{!955, !956, !957, !958, !959}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !953, file: !725, line: 131, baseType: !166, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !953, file: !725, line: 134, baseType: !212, size: 8, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !953, file: !725, line: 135, baseType: !212, size: 8, offset: 72)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !953, file: !725, line: 136, baseType: !750, size: 32, offset: 96)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !953, file: !725, line: 137, baseType: !7, size: 32, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 139, baseType: !961, size: 256)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 139, size: 256, elements: !962)
!962 = !{!963, !964, !965}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !961, file: !725, line: 140, baseType: !166, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !961, file: !725, line: 141, baseType: !750, size: 32, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !961, file: !725, line: 143, baseType: !130, size: 128, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 145, baseType: !967, size: 256)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 145, size: 256, elements: !968)
!968 = !{!969, !970, !972, !973, !2334}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !967, file: !725, line: 146, baseType: !166, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !967, file: !725, line: 147, baseType: !971, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !715, line: 509, baseType: !723)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !967, file: !725, line: 148, baseType: !166, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !725, line: 149, baseType: !974, size: 64, offset: 192)
!974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !725, line: 149, size: 64, elements: !975)
!975 = !{!976, !2333}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !974, file: !725, line: 150, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !725, line: 388, size: 7296, elements: !979)
!979 = !{!980, !2329}
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !725, line: 389, baseType: !981, size: 7296)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !725, line: 389, size: 7296, elements: !982)
!982 = !{!983, !1101, !1102, !1103, !1107, !1108, !1109, !1110, !1111, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1152, !1158, !1161, !1207, !1208, !2313, !2314, !2317, !2318, !2319, !2322, !2323, !2324, !2327, !2328}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !981, file: !725, line: 390, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !725, line: 305, size: 1472, elements: !986)
!986 = !{!987, !988, !989, !990, !991, !992, !993, !994, !1001, !1002, !1007, !1008, !1011, !1095, !1096, !1097, !1098, !1099}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !985, file: !725, line: 308, baseType: !166, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !985, file: !725, line: 309, baseType: !166, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !985, file: !725, line: 313, baseType: !984, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !985, file: !725, line: 313, baseType: !984, size: 64, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !985, file: !725, line: 315, baseType: !763, size: 192, align: 64, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !985, file: !725, line: 323, baseType: !166, size: 64, offset: 448)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !985, file: !725, line: 327, baseType: !977, size: 64, offset: 512)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !985, file: !725, line: 333, baseType: !995, size: 64, offset: 576)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !715, line: 284, baseType: !996)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !715, line: 284, size: 64, elements: !997)
!997 = !{!998}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !996, file: !715, line: 284, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1000, line: 19, baseType: !166)
!1000 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !985, file: !725, line: 334, baseType: !166, size: 64, offset: 640)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !985, file: !725, line: 343, baseType: !1003, size: 256, offset: 704)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !985, file: !725, line: 340, size: 256, elements: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1003, file: !725, line: 341, baseType: !763, size: 192, align: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1003, file: !725, line: 342, baseType: !166, size: 64, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !985, file: !725, line: 351, baseType: !130, size: 128, offset: 960)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !985, file: !725, line: 353, baseType: !1009, size: 64, offset: 1088)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !725, line: 353, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !985, file: !725, line: 356, baseType: !1012, size: 64, offset: 1152)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1014)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1015)
!1015 = !{!1016, !1020, !1021, !1025, !1029, !1069, !1073, !1077, !1081, !1082, !1083, !1087, !1091}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1014, file: !14, line: 558, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{null, !984}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1014, file: !14, line: 559, baseType: !1017, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1014, file: !14, line: 560, baseType: !1022, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!183, !984, !166}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1014, file: !14, line: 561, baseType: !1026, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!183, !984}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1014, file: !14, line: 562, baseType: !1030, size: 64, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!1033, !1034}
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !725, line: 682, baseType: !7)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1040, !1041, !1042, !1049, !1056, !1062, !1063, !1064, !1066, !1068}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1035, file: !14, line: 509, baseType: !984, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1035, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1035, file: !14, line: 511, baseType: !746, size: 32, offset: 96)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1035, file: !14, line: 512, baseType: !166, size: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1035, file: !14, line: 513, baseType: !166, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1035, file: !14, line: 514, baseType: !1043, size: 64, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !715, line: 385, baseType: !1045)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !715, line: 385, size: 64, elements: !1046)
!1046 = !{!1047}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1045, file: !715, line: 385, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1000, line: 15, baseType: !166)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1035, file: !14, line: 516, baseType: !1050, size: 64, offset: 320)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !715, line: 359, baseType: !1052)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !715, line: 359, size: 64, elements: !1053)
!1053 = !{!1054}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1052, file: !715, line: 359, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1000, line: 16, baseType: !166)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1035, file: !14, line: 519, baseType: !1057, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1000, line: 21, baseType: !1058)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1000, line: 21, size: 64, elements: !1059)
!1059 = !{!1060}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1058, file: !1000, line: 21, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1000, line: 14, baseType: !166)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1035, file: !14, line: 521, baseType: !723, size: 64, offset: 448)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1035, file: !14, line: 522, baseType: !723, size: 64, offset: 512)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1035, file: !14, line: 528, baseType: !1065, size: 64, offset: 576)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1035, file: !14, line: 532, baseType: !1067, size: 64, offset: 640)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1035, file: !14, line: 536, baseType: !971, size: 64, offset: 704)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1014, file: !14, line: 563, baseType: !1070, size: 64, offset: 320)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!1033, !1034, !13}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1014, file: !14, line: 565, baseType: !1074, size: 64, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !1034, !166, !166}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1014, file: !14, line: 567, baseType: !1078, size: 64, offset: 448)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!166, !984}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1014, file: !14, line: 571, baseType: !1030, size: 64, offset: 512)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1014, file: !14, line: 574, baseType: !1030, size: 64, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1014, file: !14, line: 579, baseType: !1084, size: 64, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!183, !984, !166, !124, !183, !183}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1014, file: !14, line: 585, baseType: !1088, size: 64, offset: 704)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!162, !984}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1014, file: !14, line: 615, baseType: !1092, size: 64, offset: 768)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!723, !984, !166}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !985, file: !725, line: 359, baseType: !166, size: 64, offset: 1216)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !985, file: !725, line: 361, baseType: !359, size: 64, offset: 1280)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !985, file: !725, line: 362, baseType: !124, size: 64, offset: 1344)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !985, file: !725, line: 365, baseType: !774, size: 64, offset: 1408)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !985, file: !725, line: 373, baseType: !1100, offset: 1472)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !725, line: 296, elements: !256)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !981, file: !725, line: 391, baseType: !759, size: 64, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !981, file: !725, line: 392, baseType: !155, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !981, file: !725, line: 394, baseType: !1104, size: 64, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!166, !359, !166, !166, !166, !166}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !981, file: !725, line: 398, baseType: !166, size: 64, offset: 256)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !981, file: !725, line: 399, baseType: !166, size: 64, offset: 320)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !981, file: !725, line: 405, baseType: !166, size: 64, offset: 384)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !981, file: !725, line: 406, baseType: !166, size: 64, offset: 448)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !981, file: !725, line: 407, baseType: !1112, size: 64, offset: 512)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !715, line: 286, baseType: !1114)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !715, line: 286, size: 64, elements: !1115)
!1115 = !{!1116}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1114, file: !715, line: 286, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1000, line: 18, baseType: !166)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !981, file: !725, line: 416, baseType: !750, size: 32, offset: 576)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !981, file: !725, line: 428, baseType: !750, size: 32, offset: 608)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !981, file: !725, line: 437, baseType: !750, size: 32, offset: 640)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !981, file: !725, line: 447, baseType: !750, size: 32, offset: 672)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !981, file: !725, line: 450, baseType: !774, size: 64, offset: 704)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !981, file: !725, line: 452, baseType: !183, size: 32, offset: 768)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !981, file: !725, line: 454, baseType: !242, offset: 800)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !981, file: !725, line: 457, baseType: !770, size: 256, offset: 832)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !981, file: !725, line: 459, baseType: !130, size: 128, offset: 1088)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !981, file: !725, line: 466, baseType: !166, size: 64, offset: 1216)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !981, file: !725, line: 467, baseType: !166, size: 64, offset: 1280)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !981, file: !725, line: 469, baseType: !166, size: 64, offset: 1344)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !981, file: !725, line: 470, baseType: !166, size: 64, offset: 1408)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !981, file: !725, line: 471, baseType: !776, size: 64, offset: 1472)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !981, file: !725, line: 472, baseType: !166, size: 64, offset: 1536)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !981, file: !725, line: 473, baseType: !166, size: 64, offset: 1600)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !981, file: !725, line: 474, baseType: !166, size: 64, offset: 1664)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !981, file: !725, line: 475, baseType: !166, size: 64, offset: 1728)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !981, file: !725, line: 477, baseType: !242, offset: 1792)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !981, file: !725, line: 478, baseType: !166, size: 64, offset: 1792)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !981, file: !725, line: 478, baseType: !166, size: 64, offset: 1856)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !981, file: !725, line: 478, baseType: !166, size: 64, offset: 1920)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !981, file: !725, line: 478, baseType: !166, size: 64, offset: 1984)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !981, file: !725, line: 479, baseType: !166, size: 64, offset: 2048)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !981, file: !725, line: 479, baseType: !166, size: 64, offset: 2112)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !981, file: !725, line: 479, baseType: !166, size: 64, offset: 2176)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !981, file: !725, line: 480, baseType: !166, size: 64, offset: 2240)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !981, file: !725, line: 480, baseType: !166, size: 64, offset: 2304)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !981, file: !725, line: 480, baseType: !166, size: 64, offset: 2368)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !981, file: !725, line: 480, baseType: !166, size: 64, offset: 2432)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !981, file: !725, line: 482, baseType: !1149, size: 2816, offset: 2496)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 2816, elements: !1150)
!1150 = !{!1151}
!1151 = !DISubrange(count: 44)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !981, file: !725, line: 488, baseType: !1153, size: 256, offset: 5312)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1154, line: 60, size: 256, elements: !1155)
!1154 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1155 = !{!1156}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1153, file: !1154, line: 61, baseType: !1157, size: 256)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 256, elements: !171)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !981, file: !725, line: 490, baseType: !1159, size: 64, offset: 5568)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !725, line: 490, flags: DIFlagFwdDecl)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !981, file: !725, line: 493, baseType: !1162, size: 896, offset: 5632)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1163, line: 53, baseType: !1164)
!1163 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1163, line: 13, size: 896, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1169, !1172, !1173, !1180, !1181, !1201, !1202, !1203}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1164, file: !1163, line: 18, baseType: !155, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1164, file: !1163, line: 28, baseType: !776, size: 64, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1164, file: !1163, line: 31, baseType: !770, size: 256, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1164, file: !1163, line: 32, baseType: !1170, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1163, line: 32, flags: DIFlagFwdDecl)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1164, file: !1163, line: 37, baseType: !221, size: 16, offset: 448)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1164, file: !1163, line: 40, baseType: !1174, size: 192, offset: 512)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1175, line: 53, size: 192, elements: !1176)
!1175 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1176 = !{!1177, !1178, !1179}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1174, file: !1175, line: 54, baseType: !774, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1174, file: !1175, line: 55, baseType: !242, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1174, file: !1175, line: 59, baseType: !130, size: 128, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1164, file: !1163, line: 41, baseType: !124, size: 64, offset: 704)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1164, file: !1163, line: 42, baseType: !1182, size: 64, offset: 768)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1184)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1185, line: 13, size: 896, elements: !1186)
!1185 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1186 = !{!1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1184, file: !1185, line: 14, baseType: !124, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1184, file: !1185, line: 15, baseType: !166, size: 64, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1184, file: !1185, line: 17, baseType: !166, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1184, file: !1185, line: 17, baseType: !166, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1184, file: !1185, line: 19, baseType: !318, size: 64, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1184, file: !1185, line: 21, baseType: !318, size: 64, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1184, file: !1185, line: 22, baseType: !318, size: 64, offset: 384)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1184, file: !1185, line: 23, baseType: !318, size: 64, offset: 448)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1184, file: !1185, line: 24, baseType: !318, size: 64, offset: 512)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1184, file: !1185, line: 25, baseType: !318, size: 64, offset: 576)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1184, file: !1185, line: 26, baseType: !318, size: 64, offset: 640)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1184, file: !1185, line: 27, baseType: !318, size: 64, offset: 704)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1184, file: !1185, line: 28, baseType: !318, size: 64, offset: 768)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1184, file: !1185, line: 29, baseType: !318, size: 64, offset: 832)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1164, file: !1163, line: 44, baseType: !750, size: 32, offset: 832)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1164, file: !1163, line: 50, baseType: !862, size: 16, offset: 864)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1164, file: !1163, line: 51, baseType: !1204, size: 16, offset: 880)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !156, line: 18, baseType: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !158, line: 23, baseType: !1206)
!1206 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !981, file: !725, line: 495, baseType: !166, size: 64, offset: 6528)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !981, file: !725, line: 497, baseType: !1209, size: 64, offset: 6592)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !725, line: 381, size: 384, elements: !1211)
!1211 = !{!1212, !1213, !2312}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1210, file: !725, line: 382, baseType: !750, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1210, file: !725, line: 383, baseType: !1214, size: 128, offset: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !725, line: 376, size: 128, elements: !1215)
!1215 = !{!1216, !2310}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1214, file: !725, line: 377, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1219, line: 640, size: 48640, elements: !1220)
!1219 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1220 = !{!1221, !1227, !1229, !1230, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1247, !1265, !1276, !1361, !1362, !1363, !1374, !1375, !1377, !1378, !1379, !1380, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1458, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1496, !1498, !1499, !1500, !1512, !1513, !1514, !1515, !1516, !1517, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1541, !1546, !1730, !1731, !1732, !1733, !1737, !1740, !1743, !1746, !1749, !1752, !1853, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1899, !1900, !1901, !1902, !1903, !1908, !1909, !1910, !1913, !1914, !1917, !1920, !1923, !1926, !1969, !1972, !1973, !2052, !2053, !2056, !2057, !2060, !2061, !2062, !2066, !2067, !2068, !2081, !2082, !2083, !2093, !2098, !2101, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1218, file: !1219, line: 646, baseType: !1222, size: 128)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1223, line: 56, size: 128, elements: !1224)
!1223 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1224 = !{!1225, !1226}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1222, file: !1223, line: 57, baseType: !166, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1222, file: !1223, line: 58, baseType: !197, size: 32, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1218, file: !1219, line: 649, baseType: !1228, size: 64, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !318)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1218, file: !1219, line: 657, baseType: !124, size: 64, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1218, file: !1219, line: 658, baseType: !1231, size: 32, offset: 256)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1232, line: 113, baseType: !1233)
!1232 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1232, line: 111, size: 32, elements: !1234)
!1234 = !{!1235}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1233, file: !1232, line: 112, baseType: !750, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1218, file: !1219, line: 660, baseType: !7, size: 32, offset: 288)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1218, file: !1219, line: 661, baseType: !7, size: 32, offset: 320)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1218, file: !1219, line: 684, baseType: !183, size: 32, offset: 352)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1218, file: !1219, line: 686, baseType: !183, size: 32, offset: 384)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1218, file: !1219, line: 687, baseType: !183, size: 32, offset: 416)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1218, file: !1219, line: 688, baseType: !183, size: 32, offset: 448)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1218, file: !1219, line: 689, baseType: !7, size: 32, offset: 480)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1218, file: !1219, line: 691, baseType: !1244, size: 64, offset: 512)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1246)
!1246 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1219, line: 691, flags: DIFlagFwdDecl)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1218, file: !1219, line: 692, baseType: !1248, size: 832, offset: 576)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1219, line: 451, size: 832, elements: !1249)
!1249 = !{!1250, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1248, file: !1219, line: 453, baseType: !1251, size: 128)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1219, line: 325, size: 128, elements: !1252)
!1252 = !{!1253, !1254}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1251, file: !1219, line: 326, baseType: !166, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1251, file: !1219, line: 327, baseType: !197, size: 32, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1248, file: !1219, line: 454, baseType: !763, size: 192, align: 64, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1248, file: !1219, line: 455, baseType: !130, size: 128, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1248, file: !1219, line: 456, baseType: !7, size: 32, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1248, file: !1219, line: 458, baseType: !155, size: 64, offset: 512)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1248, file: !1219, line: 459, baseType: !155, size: 64, offset: 576)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1248, file: !1219, line: 460, baseType: !155, size: 64, offset: 640)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1248, file: !1219, line: 461, baseType: !155, size: 64, offset: 704)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1248, file: !1219, line: 463, baseType: !155, size: 64, offset: 768)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1248, file: !1219, line: 465, baseType: !1264, offset: 832)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1219, line: 415, elements: !256)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1218, file: !1219, line: 693, baseType: !1266, size: 384, offset: 1408)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1219, line: 489, size: 384, elements: !1267)
!1267 = !{!1268, !1269, !1270, !1271, !1272, !1273, !1274}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1266, file: !1219, line: 490, baseType: !130, size: 128)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1266, file: !1219, line: 491, baseType: !166, size: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1266, file: !1219, line: 492, baseType: !166, size: 64, offset: 192)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1266, file: !1219, line: 493, baseType: !7, size: 32, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1266, file: !1219, line: 494, baseType: !221, size: 16, offset: 288)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1266, file: !1219, line: 495, baseType: !221, size: 16, offset: 304)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1266, file: !1219, line: 497, baseType: !1275, size: 64, offset: 320)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1218, file: !1219, line: 697, baseType: !1277, size: 1792, offset: 1792)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1219, line: 507, size: 1792, elements: !1278)
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1358, !1359}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1277, file: !1219, line: 508, baseType: !763, size: 192, align: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1277, file: !1219, line: 515, baseType: !155, size: 64, offset: 192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1277, file: !1219, line: 516, baseType: !155, size: 64, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1277, file: !1219, line: 517, baseType: !155, size: 64, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1277, file: !1219, line: 518, baseType: !155, size: 64, offset: 384)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1277, file: !1219, line: 519, baseType: !155, size: 64, offset: 448)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1277, file: !1219, line: 526, baseType: !780, size: 64, offset: 512)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1277, file: !1219, line: 527, baseType: !155, size: 64, offset: 576)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1277, file: !1219, line: 528, baseType: !7, size: 32, offset: 640)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1277, file: !1219, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1277, file: !1219, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1277, file: !1219, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1277, file: !1219, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1277, file: !1219, line: 563, baseType: !1293, size: 512, offset: 704)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1294)
!1294 = !{!1295, !1303, !1304, !1309, !1352, !1355, !1356, !1357}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1293, file: !20, line: 119, baseType: !1296, size: 256)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1297, line: 9, size: 256, elements: !1298)
!1297 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1298 = !{!1299, !1300}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1296, file: !1297, line: 10, baseType: !763, size: 192, align: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1296, file: !1297, line: 11, baseType: !1301, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1302, line: 29, baseType: !780)
!1302 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1293, file: !20, line: 120, baseType: !1301, size: 64, offset: 256)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1293, file: !20, line: 121, baseType: !1305, size: 64, offset: 320)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!19, !1308}
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1293, file: !20, line: 122, baseType: !1310, size: 64, offset: 384)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1312)
!1312 = !{!1313, !1333, !1334, !1337, !1342, !1343, !1347, !1351}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1311, file: !20, line: 160, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1316)
!1316 = !{!1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1315, file: !20, line: 215, baseType: !783)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1315, file: !20, line: 216, baseType: !7, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1315, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1315, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1315, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1315, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1315, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1315, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1315, file: !20, line: 233, baseType: !1301, size: 64, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1315, file: !20, line: 234, baseType: !1308, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1315, file: !20, line: 235, baseType: !1301, size: 64, offset: 256)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1315, file: !20, line: 236, baseType: !1308, size: 64, offset: 320)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1315, file: !20, line: 237, baseType: !1330, size: 4096, offset: 512)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1311, size: 4096, elements: !1331)
!1331 = !{!1332}
!1332 = !DISubrange(count: 8)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1311, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1311, file: !20, line: 162, baseType: !1335, size: 32, offset: 96)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !131, line: 27, baseType: !1336)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !316, line: 96, baseType: !183)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1311, file: !20, line: 163, baseType: !1338, size: 32, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !395, line: 276, baseType: !1339)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !395, line: 276, size: 32, elements: !1340)
!1340 = !{!1341}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1339, file: !395, line: 276, baseType: !399, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1311, file: !20, line: 164, baseType: !1308, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1311, file: !20, line: 165, baseType: !1344, size: 128, offset: 256)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1297, line: 14, size: 128, elements: !1345)
!1345 = !{!1346}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1344, file: !1297, line: 15, baseType: !755, size: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1311, file: !20, line: 166, baseType: !1348, size: 64, offset: 384)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!1301}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1311, file: !20, line: 167, baseType: !1301, size: 64, offset: 448)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1293, file: !20, line: 123, baseType: !1353, size: 8, offset: 448)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !156, line: 17, baseType: !1354)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !158, line: 21, baseType: !212)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1293, file: !20, line: 124, baseType: !1353, size: 8, offset: 456)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1293, file: !20, line: 125, baseType: !1353, size: 8, offset: 464)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1293, file: !20, line: 126, baseType: !1353, size: 8, offset: 472)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1277, file: !1219, line: 572, baseType: !1293, size: 512, offset: 1216)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1277, file: !1219, line: 580, baseType: !1360, size: 64, offset: 1728)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1218, file: !1219, line: 721, baseType: !7, size: 32, offset: 3584)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1218, file: !1219, line: 722, baseType: !183, size: 32, offset: 3616)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1218, file: !1219, line: 723, baseType: !1364, size: 64, offset: 3648)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1366)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1367, line: 17, baseType: !1368)
!1367 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1367, line: 17, size: 64, elements: !1369)
!1369 = !{!1370}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1368, file: !1367, line: 17, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 64, elements: !1372)
!1372 = !{!1373}
!1373 = !DISubrange(count: 1)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1218, file: !1219, line: 724, baseType: !1366, size: 64, offset: 3712)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1218, file: !1219, line: 749, baseType: !1376, offset: 3776)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1219, line: 290, elements: !256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1218, file: !1219, line: 751, baseType: !130, size: 128, offset: 3776)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1218, file: !1219, line: 757, baseType: !977, size: 64, offset: 3904)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1218, file: !1219, line: 758, baseType: !977, size: 64, offset: 3968)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1218, file: !1219, line: 761, baseType: !1381, size: 320, offset: 4032)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1154, line: 34, size: 320, elements: !1382)
!1382 = !{!1383, !1384}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1381, file: !1154, line: 35, baseType: !155, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1381, file: !1154, line: 36, baseType: !1385, size: 256, offset: 64)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !984, size: 256, elements: !171)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1218, file: !1219, line: 766, baseType: !183, size: 32, offset: 4352)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1218, file: !1219, line: 767, baseType: !183, size: 32, offset: 4384)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1218, file: !1219, line: 768, baseType: !183, size: 32, offset: 4416)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1218, file: !1219, line: 770, baseType: !183, size: 32, offset: 4448)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1218, file: !1219, line: 772, baseType: !166, size: 64, offset: 4480)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1218, file: !1219, line: 775, baseType: !7, size: 32, offset: 4544)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1218, file: !1219, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1218, file: !1219, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1218, file: !1219, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1218, file: !1219, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1218, file: !1219, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1218, file: !1219, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1218, file: !1219, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1218, file: !1219, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1218, file: !1219, line: 831, baseType: !166, size: 64, offset: 4672)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1218, file: !1219, line: 833, baseType: !1402, size: 384, offset: 4736)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1403)
!1403 = !{!1404, !1409}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1402, file: !25, line: 26, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!318, !1408}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, scope: !1402, file: !25, line: 27, baseType: !1410, size: 320, offset: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1402, file: !25, line: 27, size: 320, elements: !1411)
!1411 = !{!1412, !1421, !1448}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1410, file: !25, line: 36, baseType: !1413, size: 320)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1410, file: !25, line: 29, size: 320, elements: !1414)
!1414 = !{!1415, !1416, !1417, !1418, !1419, !1420}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1413, file: !25, line: 30, baseType: !196, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1413, file: !25, line: 31, baseType: !197, size: 32, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1413, file: !25, line: 32, baseType: !197, size: 32, offset: 96)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1413, file: !25, line: 33, baseType: !197, size: 32, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1413, file: !25, line: 34, baseType: !155, size: 64, offset: 192)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1413, file: !25, line: 35, baseType: !196, size: 64, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1410, file: !25, line: 46, baseType: !1422, size: 192)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1410, file: !25, line: 38, size: 192, elements: !1423)
!1423 = !{!1424, !1425, !1426, !1447}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1422, file: !25, line: 39, baseType: !1335, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1422, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1422, file: !25, line: 41, baseType: !1427, size: 64, offset: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1422, file: !25, line: 41, size: 64, elements: !1428)
!1428 = !{!1429, !1437}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1427, file: !25, line: 42, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1432, line: 7, size: 128, elements: !1433)
!1432 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1433 = !{!1434, !1436}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1431, file: !1432, line: 8, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !316, line: 93, baseType: !532)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1431, file: !1432, line: 9, baseType: !532, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1427, file: !25, line: 43, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1440, line: 7, size: 64, elements: !1441)
!1440 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1441 = !{!1442, !1446}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1439, file: !1440, line: 8, baseType: !1443, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1440, line: 5, baseType: !1444)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !156, line: 20, baseType: !1445)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !158, line: 26, baseType: !183)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1439, file: !1440, line: 9, baseType: !1444, size: 32, offset: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1422, file: !25, line: 45, baseType: !155, size: 64, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1410, file: !25, line: 54, baseType: !1449, size: 256)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1410, file: !25, line: 48, size: 256, elements: !1450)
!1450 = !{!1451, !1454, !1455, !1456, !1457}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1449, file: !25, line: 49, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1449, file: !25, line: 50, baseType: !183, size: 32, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1449, file: !25, line: 51, baseType: !183, size: 32, offset: 96)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1449, file: !25, line: 52, baseType: !166, size: 64, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1449, file: !25, line: 53, baseType: !166, size: 64, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1218, file: !1219, line: 835, baseType: !1459, size: 32, offset: 5120)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !131, line: 22, baseType: !1460)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !316, line: 28, baseType: !183)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1218, file: !1219, line: 836, baseType: !1459, size: 32, offset: 5152)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1218, file: !1219, line: 840, baseType: !166, size: 64, offset: 5184)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1218, file: !1219, line: 849, baseType: !1217, size: 64, offset: 5248)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1218, file: !1219, line: 852, baseType: !1217, size: 64, offset: 5312)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1218, file: !1219, line: 857, baseType: !130, size: 128, offset: 5376)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1218, file: !1219, line: 858, baseType: !130, size: 128, offset: 5504)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1218, file: !1219, line: 859, baseType: !1217, size: 64, offset: 5632)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1218, file: !1219, line: 867, baseType: !130, size: 128, offset: 5696)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1218, file: !1219, line: 868, baseType: !130, size: 128, offset: 5824)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1218, file: !1219, line: 871, baseType: !1471, size: 64, offset: 5952)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1477, !1479, !1480, !1487, !1488}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1472, file: !53, line: 61, baseType: !1231, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1472, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1472, file: !53, line: 63, baseType: !242, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1472, file: !53, line: 65, baseType: !1478, size: 256, offset: 64)
!1478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 256, elements: !171)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1472, file: !53, line: 66, baseType: !637, size: 64, offset: 320)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1472, file: !53, line: 68, baseType: !1481, size: 128, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1482, line: 40, baseType: !1483)
!1482 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1482, line: 36, size: 128, elements: !1484)
!1484 = !{!1485, !1486}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1483, file: !1482, line: 37, baseType: !242)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1483, file: !1482, line: 38, baseType: !130, size: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1472, file: !53, line: 69, baseType: !372, size: 128, align: 64, offset: 512)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1472, file: !53, line: 70, baseType: !1489, size: 128, offset: 640)
!1489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1490, size: 128, elements: !1372)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1491)
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1490, file: !53, line: 55, baseType: !183, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1490, file: !53, line: 56, baseType: !1494, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1218, file: !1219, line: 872, baseType: !1497, size: 512, offset: 6016)
!1497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 512, elements: !171)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1218, file: !1219, line: 873, baseType: !130, size: 128, offset: 6528)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1218, file: !1219, line: 874, baseType: !130, size: 128, offset: 6656)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1218, file: !1219, line: 876, baseType: !1501, size: 64, offset: 6784)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1503, line: 26, size: 192, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1504 = !{!1505, !1506}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1502, file: !1503, line: 27, baseType: !7, size: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1502, file: !1503, line: 28, baseType: !1507, size: 128, offset: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1508, line: 43, size: 128, elements: !1509)
!1508 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1509 = !{!1510, !1511}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1507, file: !1508, line: 44, baseType: !783)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1507, file: !1508, line: 45, baseType: !130, size: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1218, file: !1219, line: 879, baseType: !707, size: 64, offset: 6848)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1218, file: !1219, line: 882, baseType: !707, size: 64, offset: 6912)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1218, file: !1219, line: 884, baseType: !155, size: 64, offset: 6976)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1218, file: !1219, line: 885, baseType: !155, size: 64, offset: 7040)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1218, file: !1219, line: 890, baseType: !155, size: 64, offset: 7104)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1218, file: !1219, line: 891, baseType: !1518, size: 128, offset: 7168)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1219, line: 242, size: 128, elements: !1519)
!1519 = !{!1520, !1521, !1522}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1518, file: !1219, line: 244, baseType: !155, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1518, file: !1219, line: 245, baseType: !155, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1518, file: !1219, line: 246, baseType: !783, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1218, file: !1219, line: 900, baseType: !166, size: 64, offset: 7296)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1218, file: !1219, line: 901, baseType: !166, size: 64, offset: 7360)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1218, file: !1219, line: 904, baseType: !155, size: 64, offset: 7424)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1218, file: !1219, line: 907, baseType: !155, size: 64, offset: 7488)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1218, file: !1219, line: 910, baseType: !166, size: 64, offset: 7552)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1218, file: !1219, line: 911, baseType: !166, size: 64, offset: 7616)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1218, file: !1219, line: 914, baseType: !1530, size: 640, offset: 7680)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1531, line: 123, size: 640, elements: !1532)
!1531 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1532 = !{!1533, !1539, !1540}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1530, file: !1531, line: 124, baseType: !1534, size: 576)
!1534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1535, size: 576, elements: !284)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1531, line: 108, size: 192, elements: !1536)
!1536 = !{!1537, !1538}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1535, file: !1531, line: 109, baseType: !155, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1535, file: !1531, line: 110, baseType: !1344, size: 128, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1530, file: !1531, line: 125, baseType: !7, size: 32, offset: 576)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1530, file: !1531, line: 126, baseType: !7, size: 32, offset: 608)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1218, file: !1219, line: 917, baseType: !1542, size: 192, offset: 8320)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1531, line: 134, size: 192, elements: !1543)
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1542, file: !1531, line: 135, baseType: !372, size: 128, align: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1542, file: !1531, line: 136, baseType: !7, size: 32, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1218, file: !1219, line: 923, baseType: !1547, size: 64, offset: 8512)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1549)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1550, line: 111, size: 1280, elements: !1551)
!1550 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1571, !1572, !1573, !1574, !1575, !1576, !1683, !1684, !1685, !1686, !1712, !1715, !1725}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1549, file: !1550, line: 112, baseType: !750, size: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1549, file: !1550, line: 120, baseType: !434, size: 32, offset: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1549, file: !1550, line: 121, baseType: !442, size: 32, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1549, file: !1550, line: 122, baseType: !434, size: 32, offset: 96)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1549, file: !1550, line: 123, baseType: !442, size: 32, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1549, file: !1550, line: 124, baseType: !434, size: 32, offset: 160)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1549, file: !1550, line: 125, baseType: !442, size: 32, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1549, file: !1550, line: 126, baseType: !434, size: 32, offset: 224)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1549, file: !1550, line: 127, baseType: !442, size: 32, offset: 256)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1549, file: !1550, line: 128, baseType: !7, size: 32, offset: 288)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1549, file: !1550, line: 129, baseType: !1563, size: 64, offset: 320)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1564, line: 26, baseType: !1565)
!1564 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1564, line: 24, size: 64, elements: !1566)
!1566 = !{!1567}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1565, file: !1564, line: 25, baseType: !1568, size: 64)
!1568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 64, elements: !1569)
!1569 = !{!1570}
!1570 = !DISubrange(count: 2)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1549, file: !1550, line: 130, baseType: !1563, size: 64, offset: 384)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1549, file: !1550, line: 131, baseType: !1563, size: 64, offset: 448)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1549, file: !1550, line: 132, baseType: !1563, size: 64, offset: 512)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1549, file: !1550, line: 133, baseType: !1563, size: 64, offset: 576)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1549, file: !1550, line: 135, baseType: !212, size: 8, offset: 640)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1549, file: !1550, line: 137, baseType: !1577, size: 64, offset: 704)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1579, line: 189, size: 1664, elements: !1580)
!1579 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1580 = !{!1581, !1582, !1585, !1590, !1591, !1594, !1595, !1600, !1601, !1602, !1603, !1605, !1606, !1607, !1608, !1609, !1647, !1668}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1578, file: !1579, line: 190, baseType: !1231, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1578, file: !1579, line: 191, baseType: !1583, size: 32, offset: 32)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1579, line: 28, baseType: !1584)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !131, line: 98, baseType: !1444)
!1585 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !1579, line: 192, baseType: !1586, size: 192, offset: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1578, file: !1579, line: 192, size: 192, elements: !1587)
!1587 = !{!1588, !1589}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1586, file: !1579, line: 193, baseType: !130, size: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1586, file: !1579, line: 194, baseType: !763, size: 192, align: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1578, file: !1579, line: 199, baseType: !770, size: 256, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1578, file: !1579, line: 200, baseType: !1592, size: 64, offset: 512)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1579, line: 200, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1578, file: !1579, line: 201, baseType: !124, size: 64, offset: 576)
!1595 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !1579, line: 202, baseType: !1596, size: 64, offset: 640)
!1596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1578, file: !1579, line: 202, size: 64, elements: !1597)
!1597 = !{!1598, !1599}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1596, file: !1579, line: 203, baseType: !538, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1596, file: !1579, line: 204, baseType: !538, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1578, file: !1579, line: 206, baseType: !538, size: 64, offset: 704)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1578, file: !1579, line: 207, baseType: !434, size: 32, offset: 768)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1578, file: !1579, line: 208, baseType: !442, size: 32, offset: 800)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1578, file: !1579, line: 209, baseType: !1604, size: 32, offset: 832)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1579, line: 31, baseType: !558)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1578, file: !1579, line: 210, baseType: !221, size: 16, offset: 864)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1578, file: !1579, line: 211, baseType: !221, size: 16, offset: 880)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1578, file: !1579, line: 215, baseType: !1206, size: 16, offset: 896)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1578, file: !1579, line: 222, baseType: !166, size: 64, offset: 960)
!1609 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !1579, line: 239, baseType: !1610, size: 320, offset: 1024)
!1610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1578, file: !1579, line: 239, size: 320, elements: !1611)
!1611 = !{!1612, !1639}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1610, file: !1579, line: 240, baseType: !1613, size: 320)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1579, line: 108, size: 320, elements: !1614)
!1614 = !{!1615, !1616, !1628, !1631, !1638}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1613, file: !1579, line: 110, baseType: !166, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1613, file: !1579, line: 111, baseType: !1617, size: 64, offset: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1613, file: !1579, line: 111, size: 64, elements: !1618)
!1618 = !{!1619, !1627}
!1619 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1579, line: 112, baseType: !1620, size: 64)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1617, file: !1579, line: 112, size: 64, elements: !1621)
!1621 = !{!1622, !1623}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1620, file: !1579, line: 114, baseType: !862, size: 16)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1620, file: !1579, line: 115, baseType: !1624, size: 48, offset: 16)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 48, elements: !1625)
!1625 = !{!1626}
!1626 = !DISubrange(count: 6)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1617, file: !1579, line: 121, baseType: !166, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1613, file: !1579, line: 123, baseType: !1629, size: 64, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1579, line: 96, flags: DIFlagFwdDecl)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1613, file: !1579, line: 124, baseType: !1632, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1579, line: 102, size: 192, elements: !1634)
!1634 = !{!1635, !1636, !1637}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1633, file: !1579, line: 103, baseType: !372, size: 128, align: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1633, file: !1579, line: 104, baseType: !1231, size: 32, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1633, file: !1579, line: 105, baseType: !489, size: 8, offset: 160)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1613, file: !1579, line: 125, baseType: !162, size: 64, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, scope: !1610, file: !1579, line: 241, baseType: !1640, size: 320)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1610, file: !1579, line: 241, size: 320, elements: !1641)
!1641 = !{!1642, !1643, !1644, !1645, !1646}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1640, file: !1579, line: 242, baseType: !166, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1640, file: !1579, line: 243, baseType: !166, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1640, file: !1579, line: 244, baseType: !1629, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1640, file: !1579, line: 245, baseType: !1632, size: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1640, file: !1579, line: 246, baseType: !283, size: 64, offset: 256)
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !1579, line: 254, baseType: !1648, size: 256, offset: 1344)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1578, file: !1579, line: 254, size: 256, elements: !1649)
!1649 = !{!1650, !1656}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1648, file: !1579, line: 255, baseType: !1651, size: 256)
!1651 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1579, line: 128, size: 256, elements: !1652)
!1652 = !{!1653, !1654}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1651, file: !1579, line: 129, baseType: !124, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1651, file: !1579, line: 130, baseType: !1655, size: 256)
!1655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 256, elements: !171)
!1656 = !DIDerivedType(tag: DW_TAG_member, scope: !1648, file: !1579, line: 256, baseType: !1657, size: 256)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1648, file: !1579, line: 256, size: 256, elements: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1657, file: !1579, line: 258, baseType: !130, size: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1657, file: !1579, line: 259, baseType: !1661, size: 128, offset: 128)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1662, line: 22, size: 128, elements: !1663)
!1662 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1663 = !{!1664, !1667}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1661, file: !1662, line: 23, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1662, line: 23, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1661, file: !1662, line: 24, baseType: !166, size: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1578, file: !1579, line: 274, baseType: !1669, size: 64, offset: 1600)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1579, line: 170, size: 192, elements: !1671)
!1671 = !{!1672, !1681, !1682}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1670, file: !1579, line: 171, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1579, line: 165, baseType: !1674)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!183, !1577, !1677, !1679, !1577}
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1630)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1651)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1670, file: !1579, line: 172, baseType: !1577, size: 64, offset: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1670, file: !1579, line: 173, baseType: !1629, size: 64, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1549, file: !1550, line: 138, baseType: !1577, size: 64, offset: 768)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1549, file: !1550, line: 139, baseType: !1577, size: 64, offset: 832)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1549, file: !1550, line: 140, baseType: !1577, size: 64, offset: 896)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1549, file: !1550, line: 145, baseType: !1687, size: 64, offset: 960)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1689, line: 13, size: 896, elements: !1690)
!1689 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1688, file: !1689, line: 14, baseType: !1231, size: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1688, file: !1689, line: 15, baseType: !750, size: 32, offset: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1688, file: !1689, line: 16, baseType: !750, size: 32, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1688, file: !1689, line: 21, baseType: !774, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1688, file: !1689, line: 27, baseType: !166, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1688, file: !1689, line: 28, baseType: !166, size: 64, offset: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1688, file: !1689, line: 29, baseType: !774, size: 64, offset: 320)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1688, file: !1689, line: 32, baseType: !641, size: 128, offset: 384)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1688, file: !1689, line: 33, baseType: !434, size: 32, offset: 512)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1688, file: !1689, line: 37, baseType: !774, size: 64, offset: 576)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1688, file: !1689, line: 44, baseType: !1702, size: 256, offset: 640)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1703, line: 15, size: 256, elements: !1704)
!1703 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1704 = !{!1705, !1706, !1707, !1708, !1709, !1710, !1711}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1702, file: !1703, line: 16, baseType: !783)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1702, file: !1703, line: 18, baseType: !183, size: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1702, file: !1703, line: 19, baseType: !183, size: 32, offset: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1702, file: !1703, line: 20, baseType: !183, size: 32, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1702, file: !1703, line: 21, baseType: !183, size: 32, offset: 96)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1702, file: !1703, line: 22, baseType: !166, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1702, file: !1703, line: 23, baseType: !166, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1549, file: !1550, line: 146, baseType: !1713, size: 64, offset: 1024)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !725, line: 516, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1549, file: !1550, line: 147, baseType: !1716, size: 64, offset: 1088)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1550, line: 25, size: 64, elements: !1718)
!1718 = !{!1719, !1720, !1721}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1717, file: !1550, line: 26, baseType: !750, size: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1717, file: !1550, line: 27, baseType: !183, size: 32, offset: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1717, file: !1550, line: 28, baseType: !1722, offset: 64)
!1722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, elements: !1723)
!1723 = !{!1724}
!1724 = !DISubrange(count: 0)
!1725 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !1550, line: 149, baseType: !1726, size: 128, offset: 1152)
!1726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1549, file: !1550, line: 149, size: 128, elements: !1727)
!1727 = !{!1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1726, file: !1550, line: 150, baseType: !183, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1726, file: !1550, line: 151, baseType: !372, size: 128, align: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1218, file: !1219, line: 926, baseType: !1547, size: 64, offset: 8576)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1218, file: !1219, line: 929, baseType: !1547, size: 64, offset: 8640)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1218, file: !1219, line: 933, baseType: !1577, size: 64, offset: 8704)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1218, file: !1219, line: 943, baseType: !1734, size: 128, offset: 8768)
!1734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 128, elements: !1735)
!1735 = !{!1736}
!1736 = !DISubrange(count: 16)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1218, file: !1219, line: 945, baseType: !1738, size: 64, offset: 8896)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1219, line: 49, flags: DIFlagFwdDecl)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1218, file: !1219, line: 956, baseType: !1741, size: 64, offset: 8960)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1219, line: 45, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1218, file: !1219, line: 959, baseType: !1744, size: 64, offset: 9024)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1219, line: 959, flags: DIFlagFwdDecl)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1218, file: !1219, line: 962, baseType: !1747, size: 64, offset: 9088)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1219, line: 66, flags: DIFlagFwdDecl)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1218, file: !1219, line: 966, baseType: !1750, size: 64, offset: 9152)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1219, line: 50, flags: DIFlagFwdDecl)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1218, file: !1219, line: 969, baseType: !1753, size: 64, offset: 9216)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1755, line: 82, size: 7296, elements: !1756)
!1755 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1756 = !{!1757, !1758, !1759, !1760, !1761, !1762, !1763, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1792, !1801, !1802, !1804, !1805, !1806, !1809, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1839, !1840, !1847, !1848, !1849, !1850, !1851, !1852}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1754, file: !1755, line: 83, baseType: !1231, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1754, file: !1755, line: 84, baseType: !750, size: 32, offset: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1754, file: !1755, line: 85, baseType: !183, size: 32, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1754, file: !1755, line: 86, baseType: !130, size: 128, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1754, file: !1755, line: 88, baseType: !1481, size: 128, offset: 256)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1754, file: !1755, line: 91, baseType: !1217, size: 64, offset: 384)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1754, file: !1755, line: 94, baseType: !1764, size: 192, offset: 448)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1765, line: 30, size: 192, elements: !1766)
!1765 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1766 = !{!1767, !1768}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1764, file: !1765, line: 31, baseType: !130, size: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1764, file: !1765, line: 32, baseType: !1769, size: 64, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1770, line: 25, baseType: !1771)
!1770 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1770, line: 23, size: 64, elements: !1772)
!1772 = !{!1773}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1771, file: !1770, line: 24, baseType: !1371, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1754, file: !1755, line: 97, baseType: !637, size: 64, offset: 640)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1754, file: !1755, line: 100, baseType: !183, size: 32, offset: 704)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1754, file: !1755, line: 106, baseType: !183, size: 32, offset: 736)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1754, file: !1755, line: 107, baseType: !1217, size: 64, offset: 768)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1754, file: !1755, line: 110, baseType: !183, size: 32, offset: 832)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1754, file: !1755, line: 111, baseType: !7, size: 32, offset: 864)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1754, file: !1755, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1754, file: !1755, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1754, file: !1755, line: 128, baseType: !183, size: 32, offset: 928)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1754, file: !1755, line: 129, baseType: !130, size: 128, offset: 960)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1754, file: !1755, line: 132, baseType: !1293, size: 512, offset: 1088)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1754, file: !1755, line: 133, baseType: !1301, size: 64, offset: 1600)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1754, file: !1755, line: 140, baseType: !1787, size: 256, offset: 1664)
!1787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1788, size: 256, elements: !1569)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1755, line: 38, size: 128, elements: !1789)
!1789 = !{!1790, !1791}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1788, file: !1755, line: 39, baseType: !155, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1788, file: !1755, line: 40, baseType: !155, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1754, file: !1755, line: 146, baseType: !1793, size: 192, offset: 1920)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1755, line: 66, size: 192, elements: !1794)
!1794 = !{!1795}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1793, file: !1755, line: 67, baseType: !1796, size: 192)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1755, line: 47, size: 192, elements: !1797)
!1797 = !{!1798, !1799, !1800}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1796, file: !1755, line: 48, baseType: !776, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1796, file: !1755, line: 49, baseType: !776, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1796, file: !1755, line: 50, baseType: !776, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1754, file: !1755, line: 150, baseType: !1530, size: 640, offset: 2112)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1754, file: !1755, line: 153, baseType: !1803, size: 256, offset: 2752)
!1803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1471, size: 256, elements: !171)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1754, file: !1755, line: 159, baseType: !1471, size: 64, offset: 3008)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1754, file: !1755, line: 162, baseType: !183, size: 32, offset: 3072)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1754, file: !1755, line: 164, baseType: !1807, size: 64, offset: 3136)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1755, line: 164, flags: DIFlagFwdDecl)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1754, file: !1755, line: 175, baseType: !1810, size: 32, offset: 3200)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !395, line: 805, baseType: !1811)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !395, line: 798, size: 32, elements: !1812)
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1811, file: !395, line: 803, baseType: !394, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1811, file: !395, line: 804, baseType: !242, offset: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1754, file: !1755, line: 176, baseType: !155, size: 64, offset: 3264)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1754, file: !1755, line: 176, baseType: !155, size: 64, offset: 3328)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1754, file: !1755, line: 176, baseType: !155, size: 64, offset: 3392)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1754, file: !1755, line: 176, baseType: !155, size: 64, offset: 3456)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1754, file: !1755, line: 177, baseType: !155, size: 64, offset: 3520)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1754, file: !1755, line: 178, baseType: !155, size: 64, offset: 3584)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1754, file: !1755, line: 179, baseType: !1518, size: 128, offset: 3648)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1754, file: !1755, line: 180, baseType: !166, size: 64, offset: 3776)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1754, file: !1755, line: 180, baseType: !166, size: 64, offset: 3840)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1754, file: !1755, line: 180, baseType: !166, size: 64, offset: 3904)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1754, file: !1755, line: 180, baseType: !166, size: 64, offset: 3968)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1754, file: !1755, line: 181, baseType: !166, size: 64, offset: 4032)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1754, file: !1755, line: 181, baseType: !166, size: 64, offset: 4096)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1754, file: !1755, line: 181, baseType: !166, size: 64, offset: 4160)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1754, file: !1755, line: 181, baseType: !166, size: 64, offset: 4224)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1754, file: !1755, line: 182, baseType: !166, size: 64, offset: 4288)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1754, file: !1755, line: 182, baseType: !166, size: 64, offset: 4352)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1754, file: !1755, line: 182, baseType: !166, size: 64, offset: 4416)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1754, file: !1755, line: 182, baseType: !166, size: 64, offset: 4480)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1754, file: !1755, line: 183, baseType: !166, size: 64, offset: 4544)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1754, file: !1755, line: 183, baseType: !166, size: 64, offset: 4608)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1754, file: !1755, line: 184, baseType: !1837, offset: 4672)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1838, line: 12, elements: !256)
!1838 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1754, file: !1755, line: 192, baseType: !159, size: 64, offset: 4672)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1754, file: !1755, line: 203, baseType: !1841, size: 2048, offset: 4736)
!1841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1842, size: 2048, elements: !1735)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1843, line: 43, size: 128, elements: !1844)
!1843 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1844 = !{!1845, !1846}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1842, file: !1843, line: 44, baseType: !331, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1842, file: !1843, line: 45, baseType: !331, size: 64, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1754, file: !1755, line: 220, baseType: !489, size: 8, offset: 6784)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1754, file: !1755, line: 221, baseType: !1206, size: 16, offset: 6800)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1754, file: !1755, line: 222, baseType: !1206, size: 16, offset: 6816)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1754, file: !1755, line: 224, baseType: !977, size: 64, offset: 6848)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1754, file: !1755, line: 227, baseType: !1174, size: 192, offset: 6912)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1754, file: !1755, line: 233, baseType: !1174, size: 192, offset: 7104)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1218, file: !1219, line: 970, baseType: !1854, size: 64, offset: 9280)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1755, line: 20, size: 16576, elements: !1856)
!1856 = !{!1857, !1858, !1859, !1860}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1855, file: !1755, line: 21, baseType: !242)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1855, file: !1755, line: 22, baseType: !1231, size: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1855, file: !1755, line: 23, baseType: !1481, size: 128, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1855, file: !1755, line: 24, baseType: !1861, size: 16384, offset: 192)
!1861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1862, size: 16384, elements: !288)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1765, line: 49, size: 256, elements: !1863)
!1863 = !{!1864}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1862, file: !1765, line: 50, baseType: !1865, size: 256)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1765, line: 35, size: 256, elements: !1866)
!1866 = !{!1867, !1874, !1875, !1881}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1865, file: !1765, line: 37, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1869, line: 19, baseType: !1870)
!1869 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1869, line: 18, baseType: !1872)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{null, !183}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1865, file: !1765, line: 38, baseType: !166, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1865, file: !1765, line: 44, baseType: !1876, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1869, line: 22, baseType: !1877)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1869, line: 21, baseType: !1879)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{null}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1865, file: !1765, line: 46, baseType: !1769, size: 64, offset: 192)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1218, file: !1219, line: 971, baseType: !1769, size: 64, offset: 9344)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1218, file: !1219, line: 972, baseType: !1769, size: 64, offset: 9408)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1218, file: !1219, line: 974, baseType: !1769, size: 64, offset: 9472)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1218, file: !1219, line: 975, baseType: !1764, size: 192, offset: 9536)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1218, file: !1219, line: 976, baseType: !166, size: 64, offset: 9728)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1218, file: !1219, line: 977, baseType: !329, size: 64, offset: 9792)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1218, file: !1219, line: 978, baseType: !7, size: 32, offset: 9856)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1218, file: !1219, line: 980, baseType: !375, size: 64, offset: 9920)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1218, file: !1219, line: 989, baseType: !1891, size: 128, offset: 9984)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1892, line: 35, size: 128, elements: !1893)
!1892 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1893 = !{!1894, !1895, !1896}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1891, file: !1892, line: 36, baseType: !183, size: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1891, file: !1892, line: 37, baseType: !750, size: 32, offset: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1891, file: !1892, line: 38, baseType: !1897, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1892, line: 23, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1218, file: !1219, line: 992, baseType: !155, size: 64, offset: 10112)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1218, file: !1219, line: 993, baseType: !155, size: 64, offset: 10176)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1218, file: !1219, line: 996, baseType: !242, offset: 10240)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1218, file: !1219, line: 999, baseType: !783, offset: 10240)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1218, file: !1219, line: 1001, baseType: !1904, size: 64, offset: 10240)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1219, line: 636, size: 64, elements: !1905)
!1905 = !{!1906}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1904, file: !1219, line: 637, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1218, file: !1219, line: 1005, baseType: !755, size: 128, offset: 10304)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1218, file: !1219, line: 1007, baseType: !1217, size: 64, offset: 10432)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1218, file: !1219, line: 1009, baseType: !1911, size: 64, offset: 10496)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1219, line: 1009, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1218, file: !1219, line: 1043, baseType: !124, size: 64, offset: 10560)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1218, file: !1219, line: 1046, baseType: !1915, size: 64, offset: 10624)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1219, line: 41, flags: DIFlagFwdDecl)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1218, file: !1219, line: 1050, baseType: !1918, size: 64, offset: 10688)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1219, line: 42, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1218, file: !1219, line: 1054, baseType: !1921, size: 64, offset: 10752)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1219, line: 55, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1218, file: !1219, line: 1056, baseType: !1924, size: 64, offset: 10816)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1219, line: 40, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1218, file: !1219, line: 1058, baseType: !1927, size: 64, offset: 10880)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1929, line: 99, size: 704, elements: !1930)
!1929 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1930 = !{!1931, !1932, !1933, !1934, !1935, !1936, !1937, !1956, !1957}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1928, file: !1929, line: 100, baseType: !774, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1928, file: !1929, line: 101, baseType: !750, size: 32, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1928, file: !1929, line: 102, baseType: !750, size: 32, offset: 96)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1928, file: !1929, line: 105, baseType: !242, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1928, file: !1929, line: 107, baseType: !221, size: 16, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1928, file: !1929, line: 109, baseType: !741, size: 128, offset: 192)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1928, file: !1929, line: 110, baseType: !1938, size: 64, offset: 320)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1929, line: 73, size: 448, elements: !1940)
!1940 = !{!1941, !1944, !1945, !1950, !1955}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1939, file: !1929, line: 74, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1929, line: 74, flags: DIFlagFwdDecl)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1939, file: !1929, line: 75, baseType: !1927, size: 64, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, scope: !1939, file: !1929, line: 83, baseType: !1946, size: 128, offset: 128)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1939, file: !1929, line: 83, size: 128, elements: !1947)
!1947 = !{!1948, !1949}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1946, file: !1929, line: 84, baseType: !130, size: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1946, file: !1929, line: 85, baseType: !938, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, scope: !1939, file: !1929, line: 87, baseType: !1951, size: 128, offset: 256)
!1951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1939, file: !1929, line: 87, size: 128, elements: !1952)
!1952 = !{!1953, !1954}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1951, file: !1929, line: 88, baseType: !641, size: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1951, file: !1929, line: 89, baseType: !372, size: 128, align: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1939, file: !1929, line: 92, baseType: !7, size: 32, offset: 384)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1928, file: !1929, line: 111, baseType: !637, size: 64, offset: 384)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1928, file: !1929, line: 113, baseType: !1958, size: 256, offset: 448)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1959, line: 102, size: 256, elements: !1960)
!1959 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1960 = !{!1961, !1962, !1963}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1958, file: !1959, line: 103, baseType: !774, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1958, file: !1959, line: 104, baseType: !130, size: 128, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1958, file: !1959, line: 105, baseType: !1964, size: 64, offset: 192)
!1964 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1959, line: 21, baseType: !1965)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{null, !1968}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1218, file: !1219, line: 1061, baseType: !1970, size: 64, offset: 10944)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1219, line: 43, flags: DIFlagFwdDecl)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1218, file: !1219, line: 1064, baseType: !166, size: 64, offset: 11008)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1218, file: !1219, line: 1065, baseType: !1974, size: 64, offset: 11072)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1765, line: 14, baseType: !1976)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1765, line: 12, size: 384, elements: !1977)
!1977 = !{!1978}
!1978 = !DIDerivedType(tag: DW_TAG_member, scope: !1976, file: !1765, line: 13, baseType: !1979, size: 384)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1976, file: !1765, line: 13, size: 384, elements: !1980)
!1980 = !{!1981, !1982, !1983, !1984}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1979, file: !1765, line: 13, baseType: !183, size: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1979, file: !1765, line: 13, baseType: !183, size: 32, offset: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1979, file: !1765, line: 13, baseType: !183, size: 32, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1979, file: !1765, line: 13, baseType: !1985, size: 256, offset: 128)
!1985 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1986, line: 32, size: 256, elements: !1987)
!1986 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1987 = !{!1988, !1993, !2006, !2012, !2021, !2041, !2046}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1985, file: !1986, line: 37, baseType: !1989, size: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1985, file: !1986, line: 34, size: 64, elements: !1990)
!1990 = !{!1991, !1992}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1989, file: !1986, line: 35, baseType: !1460, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1989, file: !1986, line: 36, baseType: !440, size: 32, offset: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1985, file: !1986, line: 45, baseType: !1994, size: 192)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1985, file: !1986, line: 40, size: 192, elements: !1995)
!1995 = !{!1996, !1998, !1999, !2005}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1994, file: !1986, line: 41, baseType: !1997, size: 32)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !316, line: 95, baseType: !183)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1994, file: !1986, line: 42, baseType: !183, size: 32, offset: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1994, file: !1986, line: 43, baseType: !2000, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1986, line: 11, baseType: !2001)
!2001 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1986, line: 8, size: 64, elements: !2002)
!2002 = !{!2003, !2004}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2001, file: !1986, line: 9, baseType: !183, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2001, file: !1986, line: 10, baseType: !124, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1994, file: !1986, line: 44, baseType: !183, size: 32, offset: 128)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1985, file: !1986, line: 52, baseType: !2007, size: 128)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1985, file: !1986, line: 48, size: 128, elements: !2008)
!2008 = !{!2009, !2010, !2011}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2007, file: !1986, line: 49, baseType: !1460, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2007, file: !1986, line: 50, baseType: !440, size: 32, offset: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2007, file: !1986, line: 51, baseType: !2000, size: 64, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1985, file: !1986, line: 61, baseType: !2013, size: 256)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1985, file: !1986, line: 55, size: 256, elements: !2014)
!2014 = !{!2015, !2016, !2017, !2018, !2020}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2013, file: !1986, line: 56, baseType: !1460, size: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2013, file: !1986, line: 57, baseType: !440, size: 32, offset: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2013, file: !1986, line: 58, baseType: !183, size: 32, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2013, file: !1986, line: 59, baseType: !2019, size: 64, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !316, line: 94, baseType: !317)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2013, file: !1986, line: 60, baseType: !2019, size: 64, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1985, file: !1986, line: 95, baseType: !2022, size: 256)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1985, file: !1986, line: 64, size: 256, elements: !2023)
!2023 = !{!2024, !2025}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2022, file: !1986, line: 65, baseType: !124, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, scope: !2022, file: !1986, line: 77, baseType: !2026, size: 192, offset: 64)
!2026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2022, file: !1986, line: 77, size: 192, elements: !2027)
!2027 = !{!2028, !2029, !2036}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2026, file: !1986, line: 82, baseType: !1206, size: 16)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2026, file: !1986, line: 88, baseType: !2030, size: 192)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2026, file: !1986, line: 84, size: 192, elements: !2031)
!2031 = !{!2032, !2034, !2035}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2030, file: !1986, line: 85, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 64, elements: !1331)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2030, file: !1986, line: 86, baseType: !124, size: 64, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2030, file: !1986, line: 87, baseType: !124, size: 64, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2026, file: !1986, line: 93, baseType: !2037, size: 96)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2026, file: !1986, line: 90, size: 96, elements: !2038)
!2038 = !{!2039, !2040}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2037, file: !1986, line: 91, baseType: !2033, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2037, file: !1986, line: 92, baseType: !198, size: 32, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1985, file: !1986, line: 101, baseType: !2042, size: 128)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1985, file: !1986, line: 98, size: 128, elements: !2043)
!2043 = !{!2044, !2045}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2042, file: !1986, line: 99, baseType: !318, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2042, file: !1986, line: 100, baseType: !183, size: 32, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1985, file: !1986, line: 108, baseType: !2047, size: 128)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1985, file: !1986, line: 104, size: 128, elements: !2048)
!2048 = !{!2049, !2050, !2051}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2047, file: !1986, line: 105, baseType: !124, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2047, file: !1986, line: 106, baseType: !183, size: 32, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2047, file: !1986, line: 107, baseType: !7, size: 32, offset: 96)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1218, file: !1219, line: 1067, baseType: !1837, offset: 11136)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1218, file: !1219, line: 1099, baseType: !2054, size: 64, offset: 11136)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1219, line: 56, flags: DIFlagFwdDecl)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1218, file: !1219, line: 1103, baseType: !130, size: 128, offset: 11200)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1218, file: !1219, line: 1104, baseType: !2058, size: 64, offset: 11328)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1219, line: 46, flags: DIFlagFwdDecl)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1218, file: !1219, line: 1105, baseType: !1174, size: 192, offset: 11392)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1218, file: !1219, line: 1106, baseType: !7, size: 32, offset: 11584)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1218, file: !1219, line: 1109, baseType: !2063, size: 128, offset: 11648)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2064, size: 128, elements: !1569)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1219, line: 51, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1218, file: !1219, line: 1110, baseType: !1174, size: 192, offset: 11776)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1218, file: !1219, line: 1111, baseType: !130, size: 128, offset: 11968)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1218, file: !1219, line: 1173, baseType: !2069, size: 64, offset: 12096)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2071, line: 62, size: 256, align: 256, elements: !2072)
!2071 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2072 = !{!2073, !2074, !2075, !2080}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2070, file: !2071, line: 75, baseType: !198, size: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2070, file: !2071, line: 90, baseType: !198, size: 32, offset: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2070, file: !2071, line: 124, baseType: !2076, size: 64, offset: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2070, file: !2071, line: 109, size: 64, elements: !2077)
!2077 = !{!2078, !2079}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2076, file: !2071, line: 110, baseType: !157, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2076, file: !2071, line: 112, baseType: !157, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2070, file: !2071, line: 144, baseType: !198, size: 32, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1218, file: !1219, line: 1174, baseType: !197, size: 32, offset: 12160)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1218, file: !1219, line: 1179, baseType: !166, size: 64, offset: 12224)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1218, file: !1219, line: 1182, baseType: !2084, size: 128, offset: 12288)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1154, line: 76, size: 128, elements: !2085)
!2085 = !{!2086, !2091, !2092}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2084, file: !1154, line: 85, baseType: !2087, size: 64)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2088, line: 7, size: 64, elements: !2089)
!2088 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2089 = !{!2090}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2087, file: !2088, line: 12, baseType: !1368, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2084, file: !1154, line: 88, baseType: !489, size: 8, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2084, file: !1154, line: 95, baseType: !489, size: 8, offset: 72)
!2093 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !1219, line: 1184, baseType: !2094, size: 128, offset: 12416)
!2094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1218, file: !1219, line: 1184, size: 128, elements: !2095)
!2095 = !{!2096, !2097}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2094, file: !1219, line: 1185, baseType: !1231, size: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2094, file: !1219, line: 1186, baseType: !372, size: 128, align: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1218, file: !1219, line: 1190, baseType: !2099, size: 64, offset: 12544)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1219, line: 53, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1218, file: !1219, line: 1192, baseType: !2102, size: 128, offset: 12608)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1154, line: 64, size: 128, elements: !2103)
!2103 = !{!2104, !2105, !2106}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2102, file: !1154, line: 65, baseType: !723, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2102, file: !1154, line: 67, baseType: !198, size: 32, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2102, file: !1154, line: 68, baseType: !198, size: 32, offset: 96)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1218, file: !1219, line: 1206, baseType: !183, size: 32, offset: 12736)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1218, file: !1219, line: 1207, baseType: !183, size: 32, offset: 12768)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1218, file: !1219, line: 1209, baseType: !166, size: 64, offset: 12800)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1218, file: !1219, line: 1219, baseType: !155, size: 64, offset: 12864)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1218, file: !1219, line: 1220, baseType: !155, size: 64, offset: 12928)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1218, file: !1219, line: 1317, baseType: !183, size: 32, offset: 12992)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1218, file: !1219, line: 1319, baseType: !1217, size: 64, offset: 13056)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1218, file: !1219, line: 1322, baseType: !2115, size: 64, offset: 13120)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2117, line: 56, size: 512, elements: !2118)
!2117 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2118 = !{!2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2116, file: !2117, line: 57, baseType: !2115, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2116, file: !2117, line: 58, baseType: !124, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2116, file: !2117, line: 59, baseType: !166, size: 64, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2116, file: !2117, line: 60, baseType: !166, size: 64, offset: 192)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2116, file: !2117, line: 61, baseType: !823, size: 64, offset: 256)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2116, file: !2117, line: 62, baseType: !7, size: 32, offset: 320)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2116, file: !2117, line: 63, baseType: !154, size: 64, offset: 384)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2116, file: !2117, line: 64, baseType: !2127, size: 64, offset: 448)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1218, file: !1219, line: 1326, baseType: !1231, size: 32, offset: 13184)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1218, file: !1219, line: 1342, baseType: !124, size: 64, offset: 13248)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1218, file: !1219, line: 1343, baseType: !157, size: 64, offset: 13312)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1218, file: !1219, line: 1344, baseType: !155, size: 64, offset: 13376)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1218, file: !1219, line: 1345, baseType: !157, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1218, file: !1219, line: 1346, baseType: !157, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1218, file: !1219, line: 1347, baseType: !157, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1218, file: !1219, line: 1348, baseType: !372, size: 128, align: 64, offset: 13504)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1218, file: !1219, line: 1358, baseType: !2138, size: 34816, offset: 13824)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2139, line: 485, size: 34816, elements: !2140)
!2139 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2140 = !{!2141, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2170, !2171, !2172, !2173, !2174, !2175, !2178, !2179, !2180}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2138, file: !2139, line: 487, baseType: !2142, size: 192)
!2142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2143, size: 192, elements: !284)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2144, line: 16, size: 64, elements: !2145)
!2144 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2145 = !{!2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2143, file: !2144, line: 17, baseType: !862, size: 16)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2143, file: !2144, line: 18, baseType: !862, size: 16, offset: 16)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2143, file: !2144, line: 19, baseType: !862, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2143, file: !2144, line: 19, baseType: !862, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2143, file: !2144, line: 19, baseType: !862, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2143, file: !2144, line: 19, baseType: !862, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2143, file: !2144, line: 19, baseType: !862, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2143, file: !2144, line: 20, baseType: !862, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2143, file: !2144, line: 20, baseType: !862, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2143, file: !2144, line: 20, baseType: !862, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2143, file: !2144, line: 20, baseType: !862, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2143, file: !2144, line: 20, baseType: !862, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2143, file: !2144, line: 20, baseType: !862, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2138, file: !2139, line: 491, baseType: !166, size: 64, offset: 192)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2138, file: !2139, line: 495, baseType: !221, size: 16, offset: 256)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2138, file: !2139, line: 496, baseType: !221, size: 16, offset: 272)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2138, file: !2139, line: 497, baseType: !221, size: 16, offset: 288)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2138, file: !2139, line: 498, baseType: !221, size: 16, offset: 304)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2138, file: !2139, line: 502, baseType: !166, size: 64, offset: 320)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2138, file: !2139, line: 503, baseType: !166, size: 64, offset: 384)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2138, file: !2139, line: 514, baseType: !2167, size: 256, offset: 448)
!2167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2168, size: 256, elements: !171)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2139, line: 483, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2138, file: !2139, line: 516, baseType: !166, size: 64, offset: 704)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2138, file: !2139, line: 518, baseType: !166, size: 64, offset: 768)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2138, file: !2139, line: 520, baseType: !166, size: 64, offset: 832)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2138, file: !2139, line: 521, baseType: !166, size: 64, offset: 896)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2138, file: !2139, line: 522, baseType: !166, size: 64, offset: 960)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2138, file: !2139, line: 528, baseType: !2176, size: 64, offset: 1024)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2139, line: 10, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2138, file: !2139, line: 535, baseType: !166, size: 64, offset: 1088)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2138, file: !2139, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2138, file: !2139, line: 540, baseType: !2181, size: 33280, offset: 1536)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2182, line: 317, size: 33280, elements: !2183)
!2182 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2183 = !{!2184, !2185, !2186}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2181, file: !2182, line: 330, baseType: !7, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2181, file: !2182, line: 337, baseType: !166, size: 64, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2181, file: !2182, line: 348, baseType: !2187, size: 32768, offset: 512)
!2187 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2182, line: 304, size: 32768, elements: !2188)
!2188 = !{!2189, !2204, !2243, !2293, !2306}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2187, file: !2182, line: 305, baseType: !2190, size: 896)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2182, line: 12, size: 896, elements: !2191)
!2191 = !{!2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2203}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2190, file: !2182, line: 13, baseType: !197, size: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2190, file: !2182, line: 14, baseType: !197, size: 32, offset: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2190, file: !2182, line: 15, baseType: !197, size: 32, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2190, file: !2182, line: 16, baseType: !197, size: 32, offset: 96)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2190, file: !2182, line: 17, baseType: !197, size: 32, offset: 128)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2190, file: !2182, line: 18, baseType: !197, size: 32, offset: 160)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2190, file: !2182, line: 19, baseType: !197, size: 32, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2190, file: !2182, line: 22, baseType: !2200, size: 640, offset: 224)
!2200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 640, elements: !2201)
!2201 = !{!2202}
!2202 = !DISubrange(count: 20)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2190, file: !2182, line: 25, baseType: !197, size: 32, offset: 864)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2187, file: !2182, line: 306, baseType: !2205, size: 4096, align: 128)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2182, line: 34, size: 4096, align: 128, elements: !2206)
!2206 = !{!2207, !2208, !2209, !2210, !2211, !2226, !2227, !2228, !2232, !2234, !2238}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2205, file: !2182, line: 35, baseType: !862, size: 16)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2205, file: !2182, line: 36, baseType: !862, size: 16, offset: 16)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2205, file: !2182, line: 37, baseType: !862, size: 16, offset: 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2205, file: !2182, line: 38, baseType: !862, size: 16, offset: 48)
!2211 = !DIDerivedType(tag: DW_TAG_member, scope: !2205, file: !2182, line: 39, baseType: !2212, size: 128, offset: 64)
!2212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2205, file: !2182, line: 39, size: 128, elements: !2213)
!2213 = !{!2214, !2219}
!2214 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !2182, line: 40, baseType: !2215, size: 128)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2212, file: !2182, line: 40, size: 128, elements: !2216)
!2216 = !{!2217, !2218}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2215, file: !2182, line: 41, baseType: !155, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2215, file: !2182, line: 42, baseType: !155, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !2182, line: 44, baseType: !2220, size: 128)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2212, file: !2182, line: 44, size: 128, elements: !2221)
!2221 = !{!2222, !2223, !2224, !2225}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2220, file: !2182, line: 45, baseType: !197, size: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2220, file: !2182, line: 46, baseType: !197, size: 32, offset: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2220, file: !2182, line: 47, baseType: !197, size: 32, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2220, file: !2182, line: 48, baseType: !197, size: 32, offset: 96)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2205, file: !2182, line: 51, baseType: !197, size: 32, offset: 192)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2205, file: !2182, line: 52, baseType: !197, size: 32, offset: 224)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2205, file: !2182, line: 55, baseType: !2229, size: 1024, offset: 256)
!2229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 1024, elements: !2230)
!2230 = !{!2231}
!2231 = !DISubrange(count: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2205, file: !2182, line: 58, baseType: !2233, size: 2048, offset: 1280)
!2233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 2048, elements: !288)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2205, file: !2182, line: 60, baseType: !2235, size: 384, offset: 3328)
!2235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 384, elements: !2236)
!2236 = !{!2237}
!2237 = !DISubrange(count: 12)
!2238 = !DIDerivedType(tag: DW_TAG_member, scope: !2205, file: !2182, line: 62, baseType: !2239, size: 384, offset: 3712)
!2239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2205, file: !2182, line: 62, size: 384, elements: !2240)
!2240 = !{!2241, !2242}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2239, file: !2182, line: 63, baseType: !2235, size: 384)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2239, file: !2182, line: 64, baseType: !2235, size: 384)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2187, file: !2182, line: 307, baseType: !2244, size: 1088)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2182, line: 79, size: 1088, elements: !2245)
!2245 = !{!2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2292}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2244, file: !2182, line: 80, baseType: !197, size: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2244, file: !2182, line: 81, baseType: !197, size: 32, offset: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2244, file: !2182, line: 82, baseType: !197, size: 32, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2244, file: !2182, line: 83, baseType: !197, size: 32, offset: 96)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2244, file: !2182, line: 84, baseType: !197, size: 32, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2244, file: !2182, line: 85, baseType: !197, size: 32, offset: 160)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2244, file: !2182, line: 86, baseType: !197, size: 32, offset: 192)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2244, file: !2182, line: 88, baseType: !2200, size: 640, offset: 224)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2244, file: !2182, line: 89, baseType: !1353, size: 8, offset: 864)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2244, file: !2182, line: 90, baseType: !1353, size: 8, offset: 872)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2244, file: !2182, line: 91, baseType: !1353, size: 8, offset: 880)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2244, file: !2182, line: 92, baseType: !1353, size: 8, offset: 888)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2244, file: !2182, line: 93, baseType: !1353, size: 8, offset: 896)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2244, file: !2182, line: 94, baseType: !1353, size: 8, offset: 904)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2244, file: !2182, line: 95, baseType: !2261, size: 64, offset: 960)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2263, line: 11, size: 128, elements: !2264)
!2263 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2264 = !{!2265, !2266}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2262, file: !2263, line: 12, baseType: !318, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2262, file: !2263, line: 13, baseType: !2267, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2269, line: 56, size: 1344, elements: !2270)
!2269 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2270 = !{!2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2268, file: !2269, line: 61, baseType: !166, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2268, file: !2269, line: 62, baseType: !166, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2268, file: !2269, line: 63, baseType: !166, size: 64, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2268, file: !2269, line: 64, baseType: !166, size: 64, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2268, file: !2269, line: 65, baseType: !166, size: 64, offset: 256)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2268, file: !2269, line: 66, baseType: !166, size: 64, offset: 320)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2268, file: !2269, line: 68, baseType: !166, size: 64, offset: 384)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2268, file: !2269, line: 69, baseType: !166, size: 64, offset: 448)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2268, file: !2269, line: 70, baseType: !166, size: 64, offset: 512)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2268, file: !2269, line: 71, baseType: !166, size: 64, offset: 576)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2268, file: !2269, line: 72, baseType: !166, size: 64, offset: 640)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2268, file: !2269, line: 73, baseType: !166, size: 64, offset: 704)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2268, file: !2269, line: 74, baseType: !166, size: 64, offset: 768)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2268, file: !2269, line: 75, baseType: !166, size: 64, offset: 832)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2268, file: !2269, line: 76, baseType: !166, size: 64, offset: 896)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2268, file: !2269, line: 81, baseType: !166, size: 64, offset: 960)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2268, file: !2269, line: 83, baseType: !166, size: 64, offset: 1024)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2268, file: !2269, line: 84, baseType: !166, size: 64, offset: 1088)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2268, file: !2269, line: 85, baseType: !166, size: 64, offset: 1152)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2268, file: !2269, line: 86, baseType: !166, size: 64, offset: 1216)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2268, file: !2269, line: 87, baseType: !166, size: 64, offset: 1280)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2244, file: !2182, line: 96, baseType: !197, size: 32, offset: 1024)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2187, file: !2182, line: 308, baseType: !2294, size: 4608, align: 512)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2182, line: 289, size: 4608, align: 512, elements: !2295)
!2295 = !{!2296, !2297, !2304}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2294, file: !2182, line: 290, baseType: !2205, size: 4096, align: 128)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2294, file: !2182, line: 291, baseType: !2298, size: 512, offset: 4096)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2182, line: 268, size: 512, elements: !2299)
!2299 = !{!2300, !2301, !2302}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2298, file: !2182, line: 269, baseType: !155, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2298, file: !2182, line: 270, baseType: !155, size: 64, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2298, file: !2182, line: 271, baseType: !2303, size: 384, offset: 128)
!2303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 384, elements: !1625)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2294, file: !2182, line: 292, baseType: !2305, offset: 4608)
!2305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1353, elements: !1723)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2187, file: !2182, line: 309, baseType: !2307, size: 32768)
!2307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1353, size: 32768, elements: !2308)
!2308 = !{!2309}
!2309 = !DISubrange(count: 4096)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1214, file: !725, line: 378, baseType: !2311, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1210, file: !725, line: 384, baseType: !1502, size: 192, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !981, file: !725, line: 500, baseType: !242, offset: 6656)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !981, file: !725, line: 501, baseType: !2315, size: 64, offset: 6656)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !725, line: 387, flags: DIFlagFwdDecl)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !981, file: !725, line: 516, baseType: !1713, size: 64, offset: 6720)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !981, file: !725, line: 519, baseType: !359, size: 64, offset: 6784)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !981, file: !725, line: 521, baseType: !2320, size: 64, offset: 6848)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !725, line: 521, flags: DIFlagFwdDecl)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !981, file: !725, line: 545, baseType: !750, size: 32, offset: 6912)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !981, file: !725, line: 548, baseType: !489, size: 8, offset: 6944)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !981, file: !725, line: 550, baseType: !2325, offset: 6952)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2326, line: 142, elements: !256)
!2326 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !981, file: !725, line: 554, baseType: !1958, size: 256, offset: 6976)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !981, file: !725, line: 557, baseType: !197, size: 32, offset: 7232)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !978, file: !725, line: 565, baseType: !2330, offset: 7296)
!2330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, elements: !2331)
!2331 = !{!2332}
!2332 = !DISubrange(count: -1)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !974, file: !725, line: 151, baseType: !750, size: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !967, file: !725, line: 156, baseType: !242, offset: 256)
!2335 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !725, line: 159, baseType: !2336, size: 128)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !729, file: !725, line: 159, size: 128, elements: !2337)
!2337 = !{!2338, !2402}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2336, file: !725, line: 161, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2341)
!2341 = !{!2342, !2352, !2373, !2374, !2375, !2376, !2377, !2389, !2390, !2391}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2340, file: !31, line: 111, baseType: !2343, size: 384)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2344)
!2344 = !{!2345, !2347, !2348, !2349, !2350, !2351}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2343, file: !31, line: 20, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2343, file: !31, line: 21, baseType: !2346, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2343, file: !31, line: 22, baseType: !2346, size: 64, offset: 128)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2343, file: !31, line: 23, baseType: !166, size: 64, offset: 192)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2343, file: !31, line: 24, baseType: !166, size: 64, offset: 256)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2343, file: !31, line: 25, baseType: !166, size: 64, offset: 320)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2340, file: !31, line: 112, baseType: !2353, size: 64, offset: 384)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2355, line: 105, size: 128, elements: !2356)
!2355 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2356 = !{!2357, !2358}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2354, file: !2355, line: 110, baseType: !166, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2354, file: !2355, line: 118, baseType: !2359, size: 64, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2355, line: 95, size: 448, elements: !2361)
!2361 = !{!2362, !2363, !2368, !2369, !2370, !2371, !2372}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2360, file: !2355, line: 96, baseType: !774, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2360, file: !2355, line: 97, baseType: !2364, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2355, line: 60, baseType: !2366)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{null, !2353}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2360, file: !2355, line: 98, baseType: !2364, size: 64, offset: 128)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2360, file: !2355, line: 99, baseType: !489, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2360, file: !2355, line: 100, baseType: !489, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2360, file: !2355, line: 101, baseType: !372, size: 128, align: 64, offset: 256)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2360, file: !2355, line: 102, baseType: !2353, size: 64, offset: 384)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2340, file: !31, line: 113, baseType: !2354, size: 128, offset: 448)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2340, file: !31, line: 114, baseType: !1502, size: 192, offset: 576)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2340, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2340, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2340, file: !31, line: 117, baseType: !2378, size: 64, offset: 832)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2380)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2381)
!2381 = !{!2382, !2383, !2387, !2388}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2380, file: !31, line: 73, baseType: !843, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2380, file: !31, line: 78, baseType: !2384, size: 64, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{null, !2339}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2380, file: !31, line: 83, baseType: !2384, size: 64, offset: 128)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2380, file: !31, line: 89, baseType: !1030, size: 64, offset: 192)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2340, file: !31, line: 118, baseType: !124, size: 64, offset: 896)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2340, file: !31, line: 119, baseType: !183, size: 32, offset: 960)
!2391 = !DIDerivedType(tag: DW_TAG_member, scope: !2340, file: !31, line: 120, baseType: !2392, size: 128, offset: 1024)
!2392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2340, file: !31, line: 120, size: 128, elements: !2393)
!2393 = !{!2394, !2400}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2392, file: !31, line: 121, baseType: !2395, size: 128)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2396, line: 6, size: 128, elements: !2397)
!2396 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2397 = !{!2398, !2399}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2395, file: !2396, line: 7, baseType: !155, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2395, file: !2396, line: 8, baseType: !155, size: 64, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2392, file: !31, line: 122, baseType: !2401)
!2401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2395, elements: !1723)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2336, file: !725, line: 162, baseType: !124, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !729, file: !725, line: 176, baseType: !372, size: 128, align: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !725, line: 179, baseType: !2405, size: 32, offset: 384)
!2405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !724, file: !725, line: 179, size: 32, elements: !2406)
!2406 = !{!2407, !2408, !2409, !2410}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2405, file: !725, line: 184, baseType: !750, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2405, file: !725, line: 192, baseType: !7, size: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2405, file: !725, line: 194, baseType: !7, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2405, file: !725, line: 195, baseType: !183, size: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !724, file: !725, line: 199, baseType: !750, size: 32, offset: 416)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !659, file: !44, line: 1964, baseType: !2413, size: 64, offset: 1344)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!318, !598, !2416}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2418, line: 12, size: 256, elements: !2419)
!2418 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2419 = !{!2420, !2421, !2422, !2423, !2424}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2417, file: !2418, line: 13, baseType: !746, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2417, file: !2418, line: 16, baseType: !183, size: 32, offset: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2417, file: !2418, line: 23, baseType: !166, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2417, file: !2418, line: 30, baseType: !166, size: 64, offset: 128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2417, file: !2418, line: 33, baseType: !2425, size: 64, offset: 192)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !725, line: 27, flags: DIFlagFwdDecl)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !659, file: !44, line: 1966, baseType: !2413, size: 64, offset: 1408)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !599, file: !44, line: 1424, baseType: !2429, size: 64, offset: 448)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2431)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2432)
!2432 = !{!2433, !2479, !2483, !2487, !2488, !2489, !2490, !2491, !2496, !2501, !2505}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2431, file: !38, line: 323, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!183, !2437}
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2439)
!2439 = !{!2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2464, !2465, !2466}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2438, file: !38, line: 295, baseType: !641, size: 128)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2438, file: !38, line: 296, baseType: !130, size: 128, offset: 128)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2438, file: !38, line: 297, baseType: !130, size: 128, offset: 256)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2438, file: !38, line: 298, baseType: !130, size: 128, offset: 384)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2438, file: !38, line: 299, baseType: !1174, size: 192, offset: 512)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2438, file: !38, line: 300, baseType: !242, offset: 704)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2438, file: !38, line: 301, baseType: !750, size: 32, offset: 704)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2438, file: !38, line: 302, baseType: !598, size: 64, offset: 768)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2438, file: !38, line: 303, baseType: !2449, size: 64, offset: 832)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2450)
!2450 = !{!2451, !2463}
!2451 = !DIDerivedType(tag: DW_TAG_member, scope: !2449, file: !38, line: 69, baseType: !2452, size: 32)
!2452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2449, file: !38, line: 69, size: 32, elements: !2453)
!2453 = !{!2454, !2455, !2456}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2452, file: !38, line: 70, baseType: !434, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2452, file: !38, line: 71, baseType: !442, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2452, file: !38, line: 72, baseType: !2457, size: 32)
!2457 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2458, line: 24, baseType: !2459)
!2458 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2458, line: 22, size: 32, elements: !2460)
!2460 = !{!2461}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2459, file: !2458, line: 23, baseType: !2462, size: 32)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2458, line: 20, baseType: !440)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2449, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2438, file: !38, line: 304, baseType: !530, size: 64, offset: 896)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2438, file: !38, line: 305, baseType: !166, size: 64, offset: 960)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2438, file: !38, line: 306, baseType: !2467, size: 576, offset: 1024)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2468)
!2468 = !{!2469, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2467, file: !38, line: 206, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !532)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2467, file: !38, line: 207, baseType: !2470, size: 64, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2467, file: !38, line: 208, baseType: !2470, size: 64, offset: 128)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2467, file: !38, line: 209, baseType: !2470, size: 64, offset: 192)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2467, file: !38, line: 210, baseType: !2470, size: 64, offset: 256)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2467, file: !38, line: 211, baseType: !2470, size: 64, offset: 320)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2467, file: !38, line: 212, baseType: !2470, size: 64, offset: 384)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2467, file: !38, line: 213, baseType: !538, size: 64, offset: 448)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2467, file: !38, line: 214, baseType: !538, size: 64, offset: 512)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2431, file: !38, line: 324, baseType: !2480, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!2437, !598, !183}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2431, file: !38, line: 325, baseType: !2484, size: 64, offset: 128)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{null, !2437}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2431, file: !38, line: 326, baseType: !2434, size: 64, offset: 192)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2431, file: !38, line: 327, baseType: !2434, size: 64, offset: 256)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2431, file: !38, line: 328, baseType: !2434, size: 64, offset: 320)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2431, file: !38, line: 329, baseType: !687, size: 64, offset: 384)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2431, file: !38, line: 332, baseType: !2492, size: 64, offset: 448)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!2495, !428}
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2431, file: !38, line: 333, baseType: !2497, size: 64, offset: 512)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!183, !428, !2500}
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2431, file: !38, line: 335, baseType: !2502, size: 64, offset: 576)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!183, !428, !2495}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2431, file: !38, line: 337, baseType: !2506, size: 64, offset: 640)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!183, !598, !2509}
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !599, file: !44, line: 1425, baseType: !2511, size: 64, offset: 512)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2513)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2514)
!2514 = !{!2515, !2519, !2520, !2524, !2525, !2526, !2541, !2564, !2568, !2569, !2592}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2513, file: !38, line: 429, baseType: !2516, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!183, !598, !183, !183, !548}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2513, file: !38, line: 430, baseType: !687, size: 64, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2513, file: !38, line: 431, baseType: !2521, size: 64, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!183, !598, !7}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2513, file: !38, line: 432, baseType: !2521, size: 64, offset: 192)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2513, file: !38, line: 433, baseType: !687, size: 64, offset: 256)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2513, file: !38, line: 434, baseType: !2527, size: 64, offset: 320)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!183, !598, !183, !2530}
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2532)
!2532 = !{!2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2531, file: !38, line: 416, baseType: !183, size: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2531, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2531, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2531, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2531, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2531, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2531, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2531, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2513, file: !38, line: 435, baseType: !2542, size: 64, offset: 384)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!183, !598, !2449, !2545}
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2547)
!2547 = !{!2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2546, file: !38, line: 344, baseType: !183, size: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2546, file: !38, line: 345, baseType: !155, size: 64, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2546, file: !38, line: 346, baseType: !155, size: 64, offset: 128)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2546, file: !38, line: 347, baseType: !155, size: 64, offset: 192)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2546, file: !38, line: 348, baseType: !155, size: 64, offset: 256)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2546, file: !38, line: 349, baseType: !155, size: 64, offset: 320)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2546, file: !38, line: 350, baseType: !155, size: 64, offset: 384)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2546, file: !38, line: 351, baseType: !780, size: 64, offset: 448)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2546, file: !38, line: 353, baseType: !780, size: 64, offset: 512)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2546, file: !38, line: 354, baseType: !183, size: 32, offset: 576)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2546, file: !38, line: 355, baseType: !183, size: 32, offset: 608)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2546, file: !38, line: 356, baseType: !155, size: 64, offset: 640)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2546, file: !38, line: 357, baseType: !155, size: 64, offset: 704)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2546, file: !38, line: 358, baseType: !155, size: 64, offset: 768)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2546, file: !38, line: 359, baseType: !780, size: 64, offset: 832)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2546, file: !38, line: 360, baseType: !183, size: 32, offset: 896)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2513, file: !38, line: 436, baseType: !2565, size: 64, offset: 448)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!183, !598, !2509, !2545}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2513, file: !38, line: 438, baseType: !2542, size: 64, offset: 512)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2513, file: !38, line: 439, baseType: !2570, size: 64, offset: 576)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!183, !598, !2573}
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2575)
!2575 = !{!2576, !2577}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2574, file: !38, line: 410, baseType: !7, size: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2574, file: !38, line: 411, baseType: !2578, size: 1344, offset: 64)
!2578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2579, size: 1344, elements: !284)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2580)
!2580 = !{!2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2591}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2579, file: !38, line: 396, baseType: !7, size: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2579, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2579, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2579, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2579, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2579, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2579, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2579, file: !38, line: 404, baseType: !159, size: 64, offset: 256)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2579, file: !38, line: 405, baseType: !2590, size: 64, offset: 320)
!2590 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !131, line: 126, baseType: !155)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2579, file: !38, line: 406, baseType: !2590, size: 64, offset: 384)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2513, file: !38, line: 440, baseType: !2521, size: 64, offset: 640)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !599, file: !44, line: 1426, baseType: !2594, size: 64, offset: 576)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2596)
!2596 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !599, file: !44, line: 1427, baseType: !166, size: 64, offset: 640)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !599, file: !44, line: 1428, baseType: !166, size: 64, offset: 704)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !599, file: !44, line: 1429, baseType: !166, size: 64, offset: 768)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !599, file: !44, line: 1430, baseType: !389, size: 64, offset: 832)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !599, file: !44, line: 1431, baseType: !770, size: 256, offset: 896)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !599, file: !44, line: 1432, baseType: !183, size: 32, offset: 1152)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !599, file: !44, line: 1433, baseType: !750, size: 32, offset: 1184)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !599, file: !44, line: 1437, baseType: !2605, size: 64, offset: 1216)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2608)
!2608 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !599, file: !44, line: 1449, baseType: !2610, size: 64, offset: 1280)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !405, line: 34, size: 64, elements: !2611)
!2611 = !{!2612}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2610, file: !405, line: 35, baseType: !408, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !599, file: !44, line: 1450, baseType: !130, size: 128, offset: 1344)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !599, file: !44, line: 1451, baseType: !2615, size: 64, offset: 1472)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !599, file: !44, line: 1452, baseType: !1924, size: 64, offset: 1536)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !599, file: !44, line: 1453, baseType: !2619, size: 64, offset: 1600)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !599, file: !44, line: 1454, baseType: !641, size: 128, offset: 1664)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !599, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !599, file: !44, line: 1456, baseType: !2624, size: 2432, offset: 1856)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2625)
!2625 = !{!2626, !2627, !2628, !2630, !2662}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2624, file: !38, line: 519, baseType: !7, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2624, file: !38, line: 520, baseType: !770, size: 256, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2624, file: !38, line: 521, baseType: !2629, size: 192, offset: 320)
!2629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 192, elements: !284)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2624, file: !38, line: 522, baseType: !2631, size: 1728, offset: 512)
!2631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2632, size: 1728, elements: !284)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2633)
!2633 = !{!2634, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2632, file: !38, line: 223, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2637)
!2637 = !{!2638, !2639, !2652, !2653}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2636, file: !38, line: 444, baseType: !183, size: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2636, file: !38, line: 445, baseType: !2640, size: 64, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2642)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2643)
!2643 = !{!2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2642, file: !38, line: 311, baseType: !687, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2642, file: !38, line: 312, baseType: !687, size: 64, offset: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2642, file: !38, line: 313, baseType: !687, size: 64, offset: 128)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2642, file: !38, line: 314, baseType: !687, size: 64, offset: 192)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2642, file: !38, line: 315, baseType: !2434, size: 64, offset: 256)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2642, file: !38, line: 316, baseType: !2434, size: 64, offset: 320)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2642, file: !38, line: 317, baseType: !2434, size: 64, offset: 384)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2642, file: !38, line: 318, baseType: !2506, size: 64, offset: 448)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2636, file: !38, line: 446, baseType: !632, size: 64, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2636, file: !38, line: 447, baseType: !2635, size: 64, offset: 192)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2632, file: !38, line: 224, baseType: !183, size: 32, offset: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2632, file: !38, line: 226, baseType: !130, size: 128, offset: 128)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2632, file: !38, line: 227, baseType: !166, size: 64, offset: 256)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2632, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2632, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2632, file: !38, line: 230, baseType: !2470, size: 64, offset: 384)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2632, file: !38, line: 231, baseType: !2470, size: 64, offset: 448)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2632, file: !38, line: 232, baseType: !124, size: 64, offset: 512)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2624, file: !38, line: 523, baseType: !2663, size: 192, offset: 2240)
!2663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2640, size: 192, elements: !284)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !599, file: !44, line: 1458, baseType: !2665, size: 2112, offset: 4288)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2666)
!2666 = !{!2667, !2668, !2669}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2665, file: !44, line: 1411, baseType: !183, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2665, file: !44, line: 1412, baseType: !1481, size: 128, offset: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2665, file: !44, line: 1413, baseType: !2670, size: 1920, offset: 192)
!2670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2671, size: 1920, elements: !284)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2672, line: 12, size: 640, elements: !2673)
!2672 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2673 = !{!2674, !2682, !2684, !2689, !2690}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2671, file: !2672, line: 13, baseType: !2675, size: 320)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2676, line: 17, size: 320, elements: !2677)
!2676 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2677 = !{!2678, !2679, !2680, !2681}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2675, file: !2676, line: 18, baseType: !183, size: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2675, file: !2676, line: 19, baseType: !183, size: 32, offset: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2675, file: !2676, line: 20, baseType: !1481, size: 128, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2675, file: !2676, line: 22, baseType: !372, size: 128, align: 64, offset: 192)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2671, file: !2672, line: 14, baseType: !2683, size: 64, offset: 320)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2671, file: !2672, line: 15, baseType: !2685, size: 64, offset: 384)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2686, line: 16, size: 64, elements: !2687)
!2686 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2687 = !{!2688}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2685, file: !2686, line: 17, baseType: !1217, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2671, file: !2672, line: 16, baseType: !1481, size: 128, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2671, file: !2672, line: 17, baseType: !750, size: 32, offset: 576)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !599, file: !44, line: 1465, baseType: !124, size: 64, offset: 6400)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !599, file: !44, line: 1468, baseType: !197, size: 32, offset: 6464)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !599, file: !44, line: 1470, baseType: !538, size: 64, offset: 6528)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !599, file: !44, line: 1471, baseType: !538, size: 64, offset: 6592)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !599, file: !44, line: 1473, baseType: !198, size: 32, offset: 6656)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !599, file: !44, line: 1474, baseType: !2697, size: 64, offset: 6720)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !599, file: !44, line: 1477, baseType: !2700, size: 256, offset: 6784)
!2700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 256, elements: !2230)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !599, file: !44, line: 1478, baseType: !2702, size: 128, offset: 7040)
!2702 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2703, line: 18, baseType: !2704)
!2703 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2703, line: 16, size: 128, elements: !2705)
!2705 = !{!2706}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2704, file: !2703, line: 17, baseType: !2707, size: 128)
!2707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1354, size: 128, elements: !1735)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !599, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !599, file: !44, line: 1481, baseType: !2710, size: 32, offset: 7200)
!2710 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !131, line: 150, baseType: !7)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !599, file: !44, line: 1487, baseType: !1174, size: 192, offset: 7232)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !599, file: !44, line: 1493, baseType: !162, size: 64, offset: 7424)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !599, file: !44, line: 1495, baseType: !2714, size: 64, offset: 7488)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2716)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !387, line: 135, size: 1024, align: 512, elements: !2717)
!2717 = !{!2718, !2722, !2723, !2730, !2736, !2740, !2744, !2748, !2749, !2753, !2757, !2762, !2766}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2716, file: !387, line: 136, baseType: !2719, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!183, !389, !7}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2716, file: !387, line: 137, baseType: !2719, size: 64, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2716, file: !387, line: 138, baseType: !2724, size: 64, offset: 128)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!183, !2727, !2729}
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2716, file: !387, line: 139, baseType: !2731, size: 64, offset: 192)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!183, !2727, !7, !162, !2734}
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2716, file: !387, line: 141, baseType: !2737, size: 64, offset: 256)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!183, !2727}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2716, file: !387, line: 142, baseType: !2741, size: 64, offset: 320)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!183, !389}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2716, file: !387, line: 143, baseType: !2745, size: 64, offset: 384)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{null, !389}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2716, file: !387, line: 144, baseType: !2745, size: 64, offset: 448)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2716, file: !387, line: 145, baseType: !2750, size: 64, offset: 512)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{null, !389, !428}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2716, file: !387, line: 146, baseType: !2754, size: 64, offset: 576)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!283, !389, !283, !183}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2716, file: !387, line: 147, baseType: !2758, size: 64, offset: 640)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!385, !2761}
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2716, file: !387, line: 148, baseType: !2763, size: 64, offset: 704)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!183, !548, !489}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2716, file: !387, line: 149, baseType: !2767, size: 64, offset: 768)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!389, !389, !2770}
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !599, file: !44, line: 1500, baseType: !183, size: 32, offset: 7552)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !599, file: !44, line: 1502, baseType: !2774, size: 448, offset: 7616)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2418, line: 60, size: 448, elements: !2775)
!2775 = !{!2776, !2781, !2782, !2783, !2784, !2785, !2786}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2774, file: !2418, line: 61, baseType: !2777, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!166, !2780, !2416}
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2774, file: !2418, line: 63, baseType: !2777, size: 64, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2774, file: !2418, line: 66, baseType: !318, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2774, file: !2418, line: 67, baseType: !183, size: 32, offset: 192)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2774, file: !2418, line: 68, baseType: !7, size: 32, offset: 224)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2774, file: !2418, line: 71, baseType: !130, size: 128, offset: 256)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2774, file: !2418, line: 77, baseType: !2787, size: 64, offset: 384)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !599, file: !44, line: 1505, baseType: !774, size: 64, offset: 8064)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !599, file: !44, line: 1508, baseType: !774, size: 64, offset: 8128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !599, file: !44, line: 1511, baseType: !183, size: 32, offset: 8192)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !599, file: !44, line: 1514, baseType: !912, size: 32, offset: 8224)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !599, file: !44, line: 1517, baseType: !2793, size: 64, offset: 8256)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1959, line: 18, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !599, file: !44, line: 1518, baseType: !637, size: 64, offset: 8320)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !599, file: !44, line: 1525, baseType: !1713, size: 64, offset: 8384)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !599, file: !44, line: 1532, baseType: !2798, size: 64, offset: 8448)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2799, line: 52, size: 64, elements: !2800)
!2799 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2800 = !{!2801}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2798, file: !2799, line: 53, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2799, line: 40, size: 256, elements: !2804)
!2804 = !{!2805, !2806, !2811}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2803, file: !2799, line: 42, baseType: !242)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2803, file: !2799, line: 44, baseType: !2807, size: 192)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2799, line: 28, size: 192, elements: !2808)
!2808 = !{!2809, !2810}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2807, file: !2799, line: 29, baseType: !130, size: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2807, file: !2799, line: 31, baseType: !318, size: 64, offset: 128)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2803, file: !2799, line: 49, baseType: !318, size: 64, offset: 192)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !599, file: !44, line: 1533, baseType: !2798, size: 64, offset: 8512)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !599, file: !44, line: 1534, baseType: !372, size: 128, align: 64, offset: 8576)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !599, file: !44, line: 1535, baseType: !1958, size: 256, offset: 8704)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !599, file: !44, line: 1537, baseType: !1174, size: 192, offset: 8960)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !599, file: !44, line: 1542, baseType: !183, size: 32, offset: 9152)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !599, file: !44, line: 1545, baseType: !242, offset: 9184)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !599, file: !44, line: 1546, baseType: !130, size: 128, offset: 9216)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !599, file: !44, line: 1548, baseType: !242, offset: 9344)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !599, file: !44, line: 1549, baseType: !130, size: 128, offset: 9344)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !429, file: !44, line: 624, baseType: !736, size: 64, offset: 256)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !429, file: !44, line: 631, baseType: !166, size: 64, offset: 320)
!2823 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !44, line: 639, baseType: !2824, size: 32, offset: 384)
!2824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !429, file: !44, line: 639, size: 32, elements: !2825)
!2825 = !{!2826, !2828}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2824, file: !44, line: 640, baseType: !2827, size: 32)
!2827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2824, file: !44, line: 641, baseType: !7, size: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !429, file: !44, line: 643, baseType: !512, size: 32, offset: 416)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !429, file: !44, line: 644, baseType: !530, size: 64, offset: 448)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !429, file: !44, line: 645, baseType: !534, size: 128, offset: 512)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !429, file: !44, line: 646, baseType: !534, size: 128, offset: 640)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !429, file: !44, line: 647, baseType: !534, size: 128, offset: 768)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !429, file: !44, line: 648, baseType: !242, offset: 896)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !429, file: !44, line: 649, baseType: !221, size: 16, offset: 896)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !429, file: !44, line: 650, baseType: !1353, size: 8, offset: 912)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !429, file: !44, line: 651, baseType: !1353, size: 8, offset: 920)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !429, file: !44, line: 652, baseType: !2590, size: 64, offset: 960)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !429, file: !44, line: 659, baseType: !166, size: 64, offset: 1024)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !429, file: !44, line: 660, baseType: !770, size: 256, offset: 1088)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !429, file: !44, line: 662, baseType: !166, size: 64, offset: 1344)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !429, file: !44, line: 663, baseType: !166, size: 64, offset: 1408)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !429, file: !44, line: 665, baseType: !641, size: 128, offset: 1472)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !429, file: !44, line: 666, baseType: !130, size: 128, offset: 1600)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !429, file: !44, line: 675, baseType: !130, size: 128, offset: 1728)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !429, file: !44, line: 676, baseType: !130, size: 128, offset: 1856)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !429, file: !44, line: 677, baseType: !130, size: 128, offset: 1984)
!2848 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !44, line: 678, baseType: !2849, size: 128, offset: 2112)
!2849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !429, file: !44, line: 678, size: 128, elements: !2850)
!2850 = !{!2851, !2852}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2849, file: !44, line: 679, baseType: !637, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2849, file: !44, line: 680, baseType: !372, size: 128, align: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !429, file: !44, line: 682, baseType: !776, size: 64, offset: 2240)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !429, file: !44, line: 683, baseType: !776, size: 64, offset: 2304)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !429, file: !44, line: 684, baseType: !750, size: 32, offset: 2368)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !429, file: !44, line: 685, baseType: !750, size: 32, offset: 2400)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !429, file: !44, line: 686, baseType: !750, size: 32, offset: 2432)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !429, file: !44, line: 688, baseType: !750, size: 32, offset: 2464)
!2859 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !44, line: 690, baseType: !2860, size: 64, offset: 2496)
!2860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !429, file: !44, line: 690, size: 64, elements: !2861)
!2861 = !{!2862, !3085}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2860, file: !44, line: 691, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2865)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2866)
!2866 = !{!2867, !2868, !2872, !2877, !2881, !2882, !2883, !2887, !2900, !2901, !2909, !2913, !2914, !2918, !2919, !2923, !2928, !2929, !2933, !2937, !3045, !3049, !3050, !3054, !3055, !3059, !3063, !3068, !3072, !3076, !3080, !3084}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2865, file: !44, line: 1823, baseType: !632, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2865, file: !44, line: 1824, baseType: !2869, size: 64, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!530, !359, !530, !183}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2865, file: !44, line: 1825, baseType: !2873, size: 64, offset: 128)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!314, !359, !283, !329, !2876}
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2865, file: !44, line: 1826, baseType: !2878, size: 64, offset: 192)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!314, !359, !162, !329, !2876}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2865, file: !44, line: 1827, baseType: !847, size: 64, offset: 256)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2865, file: !44, line: 1828, baseType: !847, size: 64, offset: 320)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2865, file: !44, line: 1829, baseType: !2884, size: 64, offset: 384)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!183, !850, !489}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2865, file: !44, line: 1830, baseType: !2888, size: 64, offset: 448)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!183, !359, !2891}
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2893)
!2893 = !{!2894, !2899}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2892, file: !44, line: 1777, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2896)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!183, !2891, !162, !183, !530, !155, !7}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2892, file: !44, line: 1778, baseType: !530, size: 64, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2865, file: !44, line: 1831, baseType: !2888, size: 64, offset: 512)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2865, file: !44, line: 1832, baseType: !2902, size: 64, offset: 576)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!2905, !359, !2907}
!2905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2906, line: 52, baseType: !7)
!2906 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !618, line: 27, flags: DIFlagFwdDecl)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2865, file: !44, line: 1833, baseType: !2910, size: 64, offset: 640)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!318, !359, !7, !166}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2865, file: !44, line: 1834, baseType: !2910, size: 64, offset: 704)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2865, file: !44, line: 1835, baseType: !2915, size: 64, offset: 768)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!183, !359, !984}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2865, file: !44, line: 1836, baseType: !166, size: 64, offset: 832)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2865, file: !44, line: 1837, baseType: !2920, size: 64, offset: 896)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!183, !428, !359}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2865, file: !44, line: 1838, baseType: !2924, size: 64, offset: 960)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!183, !359, !2927}
!2927 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !124)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2865, file: !44, line: 1839, baseType: !2920, size: 64, offset: 1024)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2865, file: !44, line: 1840, baseType: !2930, size: 64, offset: 1088)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!183, !359, !530, !530, !183}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2865, file: !44, line: 1841, baseType: !2934, size: 64, offset: 1152)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!183, !183, !359, !183}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2865, file: !44, line: 1842, baseType: !2938, size: 64, offset: 1216)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!183, !359, !183, !2941}
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2943)
!2943 = !{!2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2975, !2976, !2977, !2990, !3021}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2942, file: !44, line: 1063, baseType: !2941, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2942, file: !44, line: 1064, baseType: !130, size: 128, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2942, file: !44, line: 1065, baseType: !641, size: 128, offset: 192)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2942, file: !44, line: 1066, baseType: !130, size: 128, offset: 320)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2942, file: !44, line: 1069, baseType: !130, size: 128, offset: 448)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2942, file: !44, line: 1072, baseType: !2927, size: 64, offset: 576)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2942, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2942, file: !44, line: 1074, baseType: !212, size: 8, offset: 672)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2942, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2942, file: !44, line: 1076, baseType: !183, size: 32, offset: 736)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2942, file: !44, line: 1077, baseType: !1481, size: 128, offset: 768)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2942, file: !44, line: 1078, baseType: !359, size: 64, offset: 896)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2942, file: !44, line: 1079, baseType: !530, size: 64, offset: 960)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2942, file: !44, line: 1080, baseType: !530, size: 64, offset: 1024)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2942, file: !44, line: 1082, baseType: !2959, size: 64, offset: 1088)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2961)
!2961 = !{!2962, !2970, !2971, !2972, !2973, !2974}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2960, file: !44, line: 1315, baseType: !2963)
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2964, line: 20, baseType: !2965)
!2964 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2964, line: 11, elements: !2966)
!2966 = !{!2967}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2965, file: !2964, line: 12, baseType: !2968)
!2968 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !254, line: 33, baseType: !2969)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 31, elements: !256)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2960, file: !44, line: 1316, baseType: !183, size: 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2960, file: !44, line: 1317, baseType: !183, size: 32, offset: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2960, file: !44, line: 1318, baseType: !2959, size: 64, offset: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2960, file: !44, line: 1319, baseType: !359, size: 64, offset: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2960, file: !44, line: 1320, baseType: !372, size: 128, align: 64, offset: 192)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2942, file: !44, line: 1084, baseType: !166, size: 64, offset: 1152)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2942, file: !44, line: 1085, baseType: !166, size: 64, offset: 1216)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2942, file: !44, line: 1087, baseType: !2978, size: 64, offset: 1280)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2980)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2981)
!2981 = !{!2982, !2986}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2980, file: !44, line: 1012, baseType: !2983, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{null, !2941, !2941}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2980, file: !44, line: 1013, baseType: !2987, size: 64, offset: 64)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{null, !2941}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2942, file: !44, line: 1088, baseType: !2991, size: 64, offset: 1344)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2993)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2994)
!2994 = !{!2995, !2999, !3003, !3004, !3008, !3012, !3016, !3020}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2993, file: !44, line: 1017, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!2927, !2927}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2993, file: !44, line: 1018, baseType: !3000, size: 64, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{null, !2927}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2993, file: !44, line: 1019, baseType: !2987, size: 64, offset: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2993, file: !44, line: 1020, baseType: !3005, size: 64, offset: 192)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!183, !2941, !183}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2993, file: !44, line: 1021, baseType: !3009, size: 64, offset: 256)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!489, !2941}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2993, file: !44, line: 1022, baseType: !3013, size: 64, offset: 320)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!183, !2941, !183, !134}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2993, file: !44, line: 1023, baseType: !3017, size: 64, offset: 384)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{null, !2941, !824}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2993, file: !44, line: 1024, baseType: !3009, size: 64, offset: 448)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2942, file: !44, line: 1097, baseType: !3022, size: 256, offset: 1408)
!3022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2942, file: !44, line: 1089, size: 256, elements: !3023)
!3023 = !{!3024, !3033, !3039}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3022, file: !44, line: 1090, baseType: !3025, size: 256)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3026, line: 10, size: 256, elements: !3027)
!3026 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3027 = !{!3028, !3029, !3032}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3025, file: !3026, line: 11, baseType: !197, size: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3025, file: !3026, line: 12, baseType: !3030, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3026, line: 5, flags: DIFlagFwdDecl)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3025, file: !3026, line: 13, baseType: !130, size: 128, offset: 128)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3022, file: !44, line: 1091, baseType: !3034, size: 64)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3026, line: 17, size: 64, elements: !3035)
!3035 = !{!3036}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3034, file: !3026, line: 18, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3026, line: 16, flags: DIFlagFwdDecl)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3022, file: !44, line: 1096, baseType: !3040, size: 192)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3022, file: !44, line: 1092, size: 192, elements: !3041)
!3041 = !{!3042, !3043, !3044}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3040, file: !44, line: 1093, baseType: !130, size: 128)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3040, file: !44, line: 1094, baseType: !183, size: 32, offset: 128)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3040, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2865, file: !44, line: 1843, baseType: !3046, size: 64, offset: 1280)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!314, !359, !723, !183, !329, !2876, !183}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2865, file: !44, line: 1844, baseType: !1104, size: 64, offset: 1344)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2865, file: !44, line: 1845, baseType: !3051, size: 64, offset: 1408)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!183, !183}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2865, file: !44, line: 1846, baseType: !2938, size: 64, offset: 1472)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2865, file: !44, line: 1847, baseType: !3056, size: 64, offset: 1536)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!314, !2099, !359, !2876, !329, !7}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2865, file: !44, line: 1848, baseType: !3060, size: 64, offset: 1600)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!314, !359, !2876, !2099, !329, !7}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2865, file: !44, line: 1849, baseType: !3064, size: 64, offset: 1664)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!183, !359, !318, !3067, !824}
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2865, file: !44, line: 1850, baseType: !3069, size: 64, offset: 1728)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!318, !359, !183, !530, !530}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2865, file: !44, line: 1852, baseType: !3073, size: 64, offset: 1792)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{null, !713, !359}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2865, file: !44, line: 1856, baseType: !3077, size: 64, offset: 1856)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!314, !359, !530, !359, !530, !329, !7}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2865, file: !44, line: 1858, baseType: !3081, size: 64, offset: 1920)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!530, !359, !530, !359, !530, !530, !7}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2865, file: !44, line: 1861, baseType: !2930, size: 64, offset: 1984)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2860, file: !44, line: 692, baseType: !666, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !429, file: !44, line: 694, baseType: !3087, size: 64, offset: 2560)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3089)
!3089 = !{!3090, !3091, !3092, !3093}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3088, file: !44, line: 1101, baseType: !242)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3088, file: !44, line: 1102, baseType: !130, size: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3088, file: !44, line: 1103, baseType: !130, size: 128, offset: 128)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3088, file: !44, line: 1104, baseType: !130, size: 128, offset: 256)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !429, file: !44, line: 695, baseType: !737, size: 1216, align: 64, offset: 2624)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !429, file: !44, line: 696, baseType: !130, size: 128, offset: 3840)
!3096 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !44, line: 697, baseType: !3097, size: 64, offset: 3968)
!3097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !429, file: !44, line: 697, size: 64, elements: !3098)
!3098 = !{!3099, !3100, !3101, !3104, !3105}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3097, file: !44, line: 698, baseType: !2099, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3097, file: !44, line: 699, baseType: !2615, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3097, file: !44, line: 700, baseType: !3102, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3097, file: !44, line: 701, baseType: !283, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3097, file: !44, line: 702, baseType: !7, size: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !429, file: !44, line: 705, baseType: !198, size: 32, offset: 4032)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !429, file: !44, line: 708, baseType: !198, size: 32, offset: 4064)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !429, file: !44, line: 709, baseType: !2697, size: 64, offset: 4096)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !429, file: !44, line: 720, baseType: !124, size: 64, offset: 4160)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !390, file: !387, line: 98, baseType: !3111, size: 256, offset: 448)
!3111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 256, elements: !2230)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !390, file: !387, line: 101, baseType: !3113, size: 32, offset: 704)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3114, line: 25, size: 32, elements: !3115)
!3114 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3115 = !{!3116}
!3116 = !DIDerivedType(tag: DW_TAG_member, scope: !3113, file: !3114, line: 26, baseType: !3117, size: 32)
!3117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3113, file: !3114, line: 26, size: 32, elements: !3118)
!3118 = !{!3119}
!3119 = !DIDerivedType(tag: DW_TAG_member, scope: !3117, file: !3114, line: 30, baseType: !3120, size: 32)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3117, file: !3114, line: 30, size: 32, elements: !3121)
!3121 = !{!3122, !3123}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3120, file: !3114, line: 31, baseType: !242)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3120, file: !3114, line: 32, baseType: !183, size: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !390, file: !387, line: 102, baseType: !2714, size: 64, offset: 768)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !390, file: !387, line: 103, baseType: !598, size: 64, offset: 832)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !390, file: !387, line: 104, baseType: !166, size: 64, offset: 896)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !390, file: !387, line: 105, baseType: !124, size: 64, offset: 960)
!3128 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !387, line: 107, baseType: !3129, size: 128, offset: 1024)
!3129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !387, line: 107, size: 128, elements: !3130)
!3130 = !{!3131, !3132}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3129, file: !387, line: 108, baseType: !130, size: 128)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3129, file: !387, line: 109, baseType: !3133, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !390, file: !387, line: 111, baseType: !130, size: 128, offset: 1152)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !390, file: !387, line: 112, baseType: !130, size: 128, offset: 1280)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !390, file: !387, line: 120, baseType: !3137, size: 128, offset: 1408)
!3137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !387, line: 116, size: 128, elements: !3138)
!3138 = !{!3139, !3140, !3141}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3137, file: !387, line: 117, baseType: !641, size: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3137, file: !387, line: 118, baseType: !404, size: 128)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3137, file: !387, line: 119, baseType: !372, size: 128, align: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !360, file: !44, line: 922, baseType: !428, size: 64, offset: 256)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !360, file: !44, line: 923, baseType: !2863, size: 64, offset: 320)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !360, file: !44, line: 929, baseType: !242, offset: 384)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !360, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !360, file: !44, line: 931, baseType: !774, size: 64, offset: 448)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !360, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !360, file: !44, line: 933, baseType: !2710, size: 32, offset: 544)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !360, file: !44, line: 934, baseType: !1174, size: 192, offset: 576)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !360, file: !44, line: 935, baseType: !530, size: 64, offset: 768)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !360, file: !44, line: 936, baseType: !3152, size: 192, offset: 832)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3153)
!3153 = !{!3154, !3155, !3156, !3157, !3158, !3159}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3152, file: !44, line: 886, baseType: !2963)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3152, file: !44, line: 887, baseType: !1471, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3152, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3152, file: !44, line: 889, baseType: !434, size: 32, offset: 96)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3152, file: !44, line: 889, baseType: !434, size: 32, offset: 128)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3152, file: !44, line: 890, baseType: !183, size: 32, offset: 160)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !360, file: !44, line: 937, baseType: !1547, size: 64, offset: 1024)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !360, file: !44, line: 938, baseType: !3162, size: 256, offset: 1088)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3163)
!3163 = !{!3164, !3165, !3166, !3167, !3168, !3169}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3162, file: !44, line: 897, baseType: !166, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3162, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3162, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3162, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3162, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3162, file: !44, line: 904, baseType: !530, size: 64, offset: 192)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !360, file: !44, line: 940, baseType: !155, size: 64, offset: 1344)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !360, file: !44, line: 945, baseType: !124, size: 64, offset: 1408)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !360, file: !44, line: 949, baseType: !130, size: 128, offset: 1472)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !360, file: !44, line: 950, baseType: !130, size: 128, offset: 1600)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !360, file: !44, line: 952, baseType: !736, size: 64, offset: 1728)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !360, file: !44, line: 953, baseType: !912, size: 32, offset: 1792)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !360, file: !44, line: 954, baseType: !912, size: 32, offset: 1824)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !350, file: !308, line: 174, baseType: !356, size: 64, offset: 320)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !350, file: !308, line: 176, baseType: !3179, size: 64, offset: 384)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!183, !359, !235, !349, !984}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !338, file: !308, line: 90, baseType: !333, size: 64, offset: 192)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !338, file: !308, line: 91, baseType: !3184, size: 64, offset: 256)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !298, file: !230, line: 143, baseType: !3186, size: 64, offset: 256)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!3189, !235}
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3191)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3192)
!3192 = !{!3193, !3194, !3198, !3202, !3208, !3212}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3191, file: !61, line: 40, baseType: !60, size: 32)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3191, file: !61, line: 41, baseType: !3195, size: 64, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!489}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3191, file: !61, line: 42, baseType: !3199, size: 64, offset: 128)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!124}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3191, file: !61, line: 43, baseType: !3203, size: 64, offset: 192)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!2127, !3206}
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3191, file: !61, line: 44, baseType: !3209, size: 64, offset: 256)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!2127}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3191, file: !61, line: 45, baseType: !467, size: 64, offset: 320)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !298, file: !230, line: 144, baseType: !3214, size: 64, offset: 320)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!2127, !235}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !298, file: !230, line: 145, baseType: !3218, size: 64, offset: 384)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{null, !235, !3221, !3222}
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !229, file: !230, line: 70, baseType: !3224, size: 64, offset: 384)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !618, line: 123, size: 1024, elements: !3226)
!3226 = !{!3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3355, !3356, !3357, !3358, !3359}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3225, file: !618, line: 124, baseType: !750, size: 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3225, file: !618, line: 125, baseType: !750, size: 32, offset: 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3225, file: !618, line: 135, baseType: !3224, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3225, file: !618, line: 136, baseType: !162, size: 64, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3225, file: !618, line: 138, baseType: !763, size: 192, align: 64, offset: 192)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3225, file: !618, line: 140, baseType: !2127, size: 64, offset: 384)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3225, file: !618, line: 141, baseType: !7, size: 32, offset: 448)
!3234 = !DIDerivedType(tag: DW_TAG_member, scope: !3225, file: !618, line: 142, baseType: !3235, size: 256, offset: 512)
!3235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3225, file: !618, line: 142, size: 256, elements: !3236)
!3236 = !{!3237, !3283, !3287}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3235, file: !618, line: 143, baseType: !3238, size: 192)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !618, line: 91, size: 192, elements: !3239)
!3239 = !{!3240, !3241, !3242}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3238, file: !618, line: 92, baseType: !166, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3238, file: !618, line: 94, baseType: !759, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3238, file: !618, line: 100, baseType: !3243, size: 64, offset: 128)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !618, line: 180, size: 704, elements: !3245)
!3245 = !{!3246, !3247, !3248, !3255, !3256, !3257, !3281, !3282}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3244, file: !618, line: 182, baseType: !3224, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3244, file: !618, line: 183, baseType: !7, size: 32, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3244, file: !618, line: 186, baseType: !3249, size: 192, offset: 128)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3250, line: 19, size: 192, elements: !3251)
!3250 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3251 = !{!3252, !3253, !3254}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3249, file: !3250, line: 20, baseType: !741, size: 128)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3249, file: !3250, line: 21, baseType: !7, size: 32, offset: 128)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3249, file: !3250, line: 22, baseType: !7, size: 32, offset: 160)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3244, file: !618, line: 187, baseType: !197, size: 32, offset: 320)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3244, file: !618, line: 188, baseType: !197, size: 32, offset: 352)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3244, file: !618, line: 189, baseType: !3258, size: 64, offset: 384)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !618, line: 168, size: 320, elements: !3260)
!3260 = !{!3261, !3265, !3269, !3273, !3277}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3259, file: !618, line: 169, baseType: !3262, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!183, !713, !3243}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3259, file: !618, line: 171, baseType: !3266, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!183, !3224, !162, !324}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3259, file: !618, line: 173, baseType: !3270, size: 64, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!183, !3224}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3259, file: !618, line: 174, baseType: !3274, size: 64, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!183, !3224, !3224, !162}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3259, file: !618, line: 176, baseType: !3278, size: 64, offset: 256)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!183, !713, !3224, !3243}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3244, file: !618, line: 192, baseType: !130, size: 128, offset: 448)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3244, file: !618, line: 194, baseType: !1481, size: 128, offset: 576)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3235, file: !618, line: 144, baseType: !3284, size: 64)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !618, line: 103, size: 64, elements: !3285)
!3285 = !{!3286}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3284, file: !618, line: 104, baseType: !3224, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3235, file: !618, line: 145, baseType: !3288, size: 256)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !618, line: 107, size: 256, elements: !3289)
!3289 = !{!3290, !3350, !3353, !3354}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3288, file: !618, line: 108, baseType: !3291, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3293)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !618, line: 217, size: 768, elements: !3294)
!3294 = !{!3295, !3315, !3319, !3323, !3327, !3331, !3335, !3339, !3340, !3341, !3342, !3346}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3293, file: !618, line: 222, baseType: !3296, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!183, !3299}
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !618, line: 197, size: 1088, elements: !3301)
!3301 = !{!3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3300, file: !618, line: 199, baseType: !3224, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3300, file: !618, line: 200, baseType: !359, size: 64, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3300, file: !618, line: 201, baseType: !713, size: 64, offset: 128)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3300, file: !618, line: 202, baseType: !124, size: 64, offset: 192)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3300, file: !618, line: 205, baseType: !1174, size: 192, offset: 256)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3300, file: !618, line: 206, baseType: !1174, size: 192, offset: 448)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3300, file: !618, line: 207, baseType: !183, size: 32, offset: 640)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3300, file: !618, line: 208, baseType: !130, size: 128, offset: 704)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3300, file: !618, line: 209, baseType: !283, size: 64, offset: 832)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3300, file: !618, line: 211, baseType: !329, size: 64, offset: 896)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3300, file: !618, line: 212, baseType: !489, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3300, file: !618, line: 213, baseType: !489, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3300, file: !618, line: 214, baseType: !1012, size: 64, offset: 1024)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3293, file: !618, line: 223, baseType: !3316, size: 64, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{null, !3299}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3293, file: !618, line: 236, baseType: !3320, size: 64, offset: 128)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!183, !713, !124}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3293, file: !618, line: 238, baseType: !3324, size: 64, offset: 192)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!124, !713, !2876}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3293, file: !618, line: 239, baseType: !3328, size: 64, offset: 256)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!124, !713, !124, !2876}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3293, file: !618, line: 240, baseType: !3332, size: 64, offset: 320)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{null, !713, !124}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3293, file: !618, line: 242, baseType: !3336, size: 64, offset: 384)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!314, !3299, !283, !329, !530}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3293, file: !618, line: 252, baseType: !329, size: 64, offset: 448)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3293, file: !618, line: 259, baseType: !489, size: 8, offset: 512)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3293, file: !618, line: 260, baseType: !3336, size: 64, offset: 576)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3293, file: !618, line: 263, baseType: !3343, size: 64, offset: 640)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!2905, !3299, !2907}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3293, file: !618, line: 266, baseType: !3347, size: 64, offset: 704)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!183, !3299, !984}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3288, file: !618, line: 109, baseType: !3351, size: 64, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !618, line: 31, flags: DIFlagFwdDecl)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3288, file: !618, line: 110, baseType: !530, size: 64, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3288, file: !618, line: 111, baseType: !3224, size: 64, offset: 192)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3225, file: !618, line: 148, baseType: !124, size: 64, offset: 768)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3225, file: !618, line: 154, baseType: !155, size: 64, offset: 832)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3225, file: !618, line: 156, baseType: !221, size: 16, offset: 896)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3225, file: !618, line: 157, baseType: !324, size: 16, offset: 912)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3225, file: !618, line: 158, baseType: !3360, size: 64, offset: 960)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !618, line: 32, flags: DIFlagFwdDecl)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !229, file: !230, line: 71, baseType: !3363, size: 32, offset: 448)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3364, line: 19, size: 32, elements: !3365)
!3364 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3365 = !{!3366}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3363, file: !3364, line: 20, baseType: !1231, size: 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !229, file: !230, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !229, file: !230, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !229, file: !230, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !229, file: !230, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !229, file: !230, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !226, file: !73, line: 463, baseType: !225, size: 64, offset: 512)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !226, file: !73, line: 465, baseType: !3374, size: 64, offset: 576)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !226, file: !73, line: 467, baseType: !162, size: 64, offset: 640)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !226, file: !73, line: 468, baseType: !3378, size: 64, offset: 704)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3380)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3381)
!3381 = !{!3382, !3383, !3384, !3388, !3393, !3397}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3380, file: !73, line: 88, baseType: !162, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3380, file: !73, line: 89, baseType: !335, size: 64, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3380, file: !73, line: 90, baseType: !3385, size: 64, offset: 128)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!183, !225, !278}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3380, file: !73, line: 91, baseType: !3389, size: 64, offset: 192)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!283, !225, !3392, !3221, !3222}
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3380, file: !73, line: 93, baseType: !3394, size: 64, offset: 256)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{null, !225}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3380, file: !73, line: 95, baseType: !3398, size: 64, offset: 320)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3400)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3401)
!3401 = !{!3402, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3400, file: !80, line: 279, baseType: !3403, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!183, !225}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3400, file: !80, line: 280, baseType: !3394, size: 64, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3400, file: !80, line: 281, baseType: !3403, size: 64, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3400, file: !80, line: 282, baseType: !3403, size: 64, offset: 192)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3400, file: !80, line: 283, baseType: !3403, size: 64, offset: 256)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3400, file: !80, line: 284, baseType: !3403, size: 64, offset: 320)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3400, file: !80, line: 285, baseType: !3403, size: 64, offset: 384)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3400, file: !80, line: 286, baseType: !3403, size: 64, offset: 448)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3400, file: !80, line: 287, baseType: !3403, size: 64, offset: 512)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3400, file: !80, line: 288, baseType: !3403, size: 64, offset: 576)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3400, file: !80, line: 289, baseType: !3403, size: 64, offset: 640)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3400, file: !80, line: 290, baseType: !3403, size: 64, offset: 704)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3400, file: !80, line: 291, baseType: !3403, size: 64, offset: 768)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3400, file: !80, line: 292, baseType: !3403, size: 64, offset: 832)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3400, file: !80, line: 293, baseType: !3403, size: 64, offset: 896)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3400, file: !80, line: 294, baseType: !3403, size: 64, offset: 960)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3400, file: !80, line: 295, baseType: !3403, size: 64, offset: 1024)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3400, file: !80, line: 296, baseType: !3403, size: 64, offset: 1088)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3400, file: !80, line: 297, baseType: !3403, size: 64, offset: 1152)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3400, file: !80, line: 298, baseType: !3403, size: 64, offset: 1216)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3400, file: !80, line: 299, baseType: !3403, size: 64, offset: 1280)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3400, file: !80, line: 300, baseType: !3403, size: 64, offset: 1344)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3400, file: !80, line: 301, baseType: !3403, size: 64, offset: 1408)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !226, file: !73, line: 470, baseType: !3429, size: 64, offset: 768)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3431, line: 82, size: 1408, elements: !3432)
!3431 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3432 = !{!3433, !3434, !3435, !3436, !3437, !3438, !3439, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3514, !3517, !3518}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3430, file: !3431, line: 83, baseType: !162, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3430, file: !3431, line: 84, baseType: !162, size: 64, offset: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3430, file: !3431, line: 85, baseType: !225, size: 64, offset: 128)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3430, file: !3431, line: 86, baseType: !335, size: 64, offset: 192)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3430, file: !3431, line: 87, baseType: !335, size: 64, offset: 256)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3430, file: !3431, line: 88, baseType: !335, size: 64, offset: 320)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3430, file: !3431, line: 90, baseType: !3440, size: 64, offset: 384)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!183, !225, !3443}
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3445)
!3445 = !{!3446, !3447, !3448, !3449, !3450, !3451, !3452, !3465, !3478, !3479, !3480, !3481, !3482, !3490, !3491, !3492, !3493, !3494, !3495}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3444, file: !67, line: 96, baseType: !162, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3444, file: !67, line: 97, baseType: !3429, size: 64, offset: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3444, file: !67, line: 99, baseType: !632, size: 64, offset: 128)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3444, file: !67, line: 100, baseType: !162, size: 64, offset: 192)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3444, file: !67, line: 102, baseType: !489, size: 8, offset: 256)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3444, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3444, file: !67, line: 105, baseType: !3453, size: 64, offset: 320)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3455)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3456, line: 262, size: 1600, elements: !3457)
!3456 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3457 = !{!3458, !3459, !3460, !3464}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3455, file: !3456, line: 263, baseType: !2700, size: 256)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3455, file: !3456, line: 264, baseType: !2700, size: 256, offset: 256)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3455, file: !3456, line: 265, baseType: !3461, size: 1024, offset: 512)
!3461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 1024, elements: !3462)
!3462 = !{!3463}
!3463 = !DISubrange(count: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3455, file: !3456, line: 266, baseType: !2127, size: 64, offset: 1536)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3444, file: !67, line: 106, baseType: !3466, size: 64, offset: 384)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3468)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3456, line: 210, size: 256, elements: !3469)
!3469 = !{!3470, !3474, !3476, !3477}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3468, file: !3456, line: 211, baseType: !3471, size: 72)
!3471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1354, size: 72, elements: !3472)
!3472 = !{!3473}
!3473 = !DISubrange(count: 9)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3468, file: !3456, line: 212, baseType: !3475, size: 64, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3456, line: 14, baseType: !166)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3468, file: !3456, line: 213, baseType: !198, size: 32, offset: 192)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3468, file: !3456, line: 214, baseType: !198, size: 32, offset: 224)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3444, file: !67, line: 108, baseType: !3403, size: 64, offset: 448)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3444, file: !67, line: 109, baseType: !3394, size: 64, offset: 512)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3444, file: !67, line: 110, baseType: !3403, size: 64, offset: 576)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3444, file: !67, line: 111, baseType: !3394, size: 64, offset: 640)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3444, file: !67, line: 112, baseType: !3483, size: 64, offset: 704)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!183, !225, !3486}
!3486 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3487)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3488)
!3488 = !{!3489}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3487, file: !80, line: 51, baseType: !183, size: 32)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3444, file: !67, line: 113, baseType: !3403, size: 64, offset: 768)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3444, file: !67, line: 114, baseType: !335, size: 64, offset: 832)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3444, file: !67, line: 115, baseType: !335, size: 64, offset: 896)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3444, file: !67, line: 117, baseType: !3398, size: 64, offset: 960)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3444, file: !67, line: 118, baseType: !3394, size: 64, offset: 1024)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3444, file: !67, line: 120, baseType: !3496, size: 64, offset: 1088)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3430, file: !3431, line: 91, baseType: !3385, size: 64, offset: 448)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3430, file: !3431, line: 92, baseType: !3403, size: 64, offset: 512)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3430, file: !3431, line: 93, baseType: !3394, size: 64, offset: 576)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3430, file: !3431, line: 94, baseType: !3403, size: 64, offset: 640)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3430, file: !3431, line: 95, baseType: !3394, size: 64, offset: 704)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3430, file: !3431, line: 97, baseType: !3403, size: 64, offset: 768)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3430, file: !3431, line: 98, baseType: !3403, size: 64, offset: 832)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3430, file: !3431, line: 100, baseType: !3483, size: 64, offset: 896)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3430, file: !3431, line: 101, baseType: !3403, size: 64, offset: 960)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3430, file: !3431, line: 103, baseType: !3403, size: 64, offset: 1024)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3430, file: !3431, line: 105, baseType: !3403, size: 64, offset: 1088)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3430, file: !3431, line: 107, baseType: !3398, size: 64, offset: 1152)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3430, file: !3431, line: 109, baseType: !3511, size: 64, offset: 1216)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3513)
!3513 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3431, line: 109, flags: DIFlagFwdDecl)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3430, file: !3431, line: 111, baseType: !3515, size: 64, offset: 1280)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3431, line: 111, flags: DIFlagFwdDecl)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3430, file: !3431, line: 112, baseType: !647, offset: 1344)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3430, file: !3431, line: 114, baseType: !489, size: 8, offset: 1344)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !226, file: !73, line: 471, baseType: !3443, size: 64, offset: 832)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !226, file: !73, line: 473, baseType: !124, size: 64, offset: 896)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !226, file: !73, line: 475, baseType: !124, size: 64, offset: 960)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !226, file: !73, line: 480, baseType: !1174, size: 192, offset: 1024)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !226, file: !73, line: 484, baseType: !3524, size: 576, offset: 1216)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3525)
!3525 = !{!3526, !3527, !3528, !3529, !3530, !3531}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3524, file: !73, line: 362, baseType: !130, size: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3524, file: !73, line: 363, baseType: !130, size: 128, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3524, file: !73, line: 364, baseType: !130, size: 128, offset: 256)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3524, file: !73, line: 365, baseType: !130, size: 128, offset: 384)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3524, file: !73, line: 366, baseType: !489, size: 8, offset: 512)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3524, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !226, file: !73, line: 485, baseType: !3533, size: 2304, offset: 1792)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3534)
!3534 = !{!3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3630, !3634}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3533, file: !80, line: 566, baseType: !3486, size: 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3533, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3533, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3533, file: !80, line: 569, baseType: !489, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3533, file: !80, line: 570, baseType: !489, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3533, file: !80, line: 571, baseType: !489, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3533, file: !80, line: 572, baseType: !489, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3533, file: !80, line: 573, baseType: !489, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3533, file: !80, line: 574, baseType: !489, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3533, file: !80, line: 575, baseType: !489, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3533, file: !80, line: 576, baseType: !489, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3533, file: !80, line: 577, baseType: !197, size: 32, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3533, file: !80, line: 578, baseType: !242, offset: 96)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3533, file: !80, line: 580, baseType: !130, size: 128, offset: 128)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3533, file: !80, line: 581, baseType: !1502, size: 192, offset: 256)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3533, file: !80, line: 582, baseType: !3551, size: 64, offset: 448)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3553, line: 43, size: 1472, elements: !3554)
!3553 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3554 = !{!3555, !3556, !3557, !3558, !3559, !3562, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3552, file: !3553, line: 44, baseType: !162, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3552, file: !3553, line: 45, baseType: !183, size: 32, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3552, file: !3553, line: 46, baseType: !130, size: 128, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3552, file: !3553, line: 47, baseType: !242, offset: 256)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3552, file: !3553, line: 48, baseType: !3560, size: 64, offset: 256)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3552, file: !3553, line: 49, baseType: !3563, size: 320, offset: 320)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3564, line: 11, size: 320, elements: !3565)
!3564 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3565 = !{!3566, !3567, !3568, !3573}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3563, file: !3564, line: 16, baseType: !641, size: 128)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3563, file: !3564, line: 17, baseType: !166, size: 64, offset: 128)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3563, file: !3564, line: 18, baseType: !3569, size: 64, offset: 192)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{null, !3572}
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3563, file: !3564, line: 19, baseType: !197, size: 32, offset: 256)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3552, file: !3553, line: 50, baseType: !166, size: 64, offset: 640)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3552, file: !3553, line: 51, baseType: !1301, size: 64, offset: 704)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3552, file: !3553, line: 52, baseType: !1301, size: 64, offset: 768)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3552, file: !3553, line: 53, baseType: !1301, size: 64, offset: 832)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3552, file: !3553, line: 54, baseType: !1301, size: 64, offset: 896)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3552, file: !3553, line: 55, baseType: !1301, size: 64, offset: 960)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3552, file: !3553, line: 56, baseType: !166, size: 64, offset: 1024)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3552, file: !3553, line: 57, baseType: !166, size: 64, offset: 1088)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3552, file: !3553, line: 58, baseType: !166, size: 64, offset: 1152)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3552, file: !3553, line: 59, baseType: !166, size: 64, offset: 1216)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3552, file: !3553, line: 60, baseType: !166, size: 64, offset: 1280)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3552, file: !3553, line: 61, baseType: !225, size: 64, offset: 1344)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3552, file: !3553, line: 62, baseType: !489, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3552, file: !3553, line: 63, baseType: !489, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3533, file: !80, line: 583, baseType: !489, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3533, file: !80, line: 584, baseType: !489, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3533, file: !80, line: 585, baseType: !489, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3533, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3533, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3533, file: !80, line: 592, baseType: !1293, size: 512, offset: 576)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3533, file: !80, line: 593, baseType: !155, size: 64, offset: 1088)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3533, file: !80, line: 594, baseType: !1958, size: 256, offset: 1152)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3533, file: !80, line: 595, baseType: !1481, size: 128, offset: 1408)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3533, file: !80, line: 596, baseType: !3560, size: 64, offset: 1536)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3533, file: !80, line: 597, baseType: !750, size: 32, offset: 1600)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3533, file: !80, line: 598, baseType: !750, size: 32, offset: 1632)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3533, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3533, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3533, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3533, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3533, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3533, file: !80, line: 604, baseType: !489, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3533, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3533, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3533, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3533, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3533, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3533, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3533, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3533, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3533, file: !80, line: 613, baseType: !183, size: 32, offset: 1792)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3533, file: !80, line: 614, baseType: !183, size: 32, offset: 1824)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3533, file: !80, line: 615, baseType: !155, size: 64, offset: 1856)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3533, file: !80, line: 616, baseType: !155, size: 64, offset: 1920)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3533, file: !80, line: 617, baseType: !155, size: 64, offset: 1984)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3533, file: !80, line: 618, baseType: !155, size: 64, offset: 2048)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3533, file: !80, line: 620, baseType: !3621, size: 64, offset: 2112)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3623)
!3623 = !{!3624, !3625, !3626, !3627}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3622, file: !80, line: 537, baseType: !242)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3622, file: !80, line: 538, baseType: !7, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3622, file: !80, line: 540, baseType: !130, size: 128, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3622, file: !80, line: 543, baseType: !3628, size: 64, offset: 192)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3533, file: !80, line: 621, baseType: !3631, size: 64, offset: 2176)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{null, !225, !1444}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3533, file: !80, line: 622, baseType: !3635, size: 64, offset: 2240)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !226, file: !73, line: 486, baseType: !3638, size: 64, offset: 4096)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3640)
!3640 = !{!3641, !3642, !3643, !3647, !3648, !3649}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3639, file: !80, line: 643, baseType: !3400, size: 1472)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3639, file: !80, line: 644, baseType: !3403, size: 64, offset: 1472)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3639, file: !80, line: 645, baseType: !3644, size: 64, offset: 1536)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{null, !225, !489}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3639, file: !80, line: 646, baseType: !3403, size: 64, offset: 1600)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3639, file: !80, line: 647, baseType: !3394, size: 64, offset: 1664)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3639, file: !80, line: 648, baseType: !3394, size: 64, offset: 1728)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !226, file: !73, line: 493, baseType: !3651, size: 64, offset: 4160)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3653)
!3653 = !{!3654, !3655, !3656, !3829, !3830, !3831, !3832, !3833, !3834, !3837, !3838, !3839, !3840, !3841, !3842, !3843}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3652, file: !94, line: 163, baseType: !130, size: 128)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3652, file: !94, line: 164, baseType: !162, size: 64, offset: 128)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3652, file: !94, line: 165, baseType: !3657, size: 64, offset: 192)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3659)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3660)
!3660 = !{!3661, !3779, !3790, !3795, !3799, !3806, !3810, !3814, !3821, !3825}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3659, file: !94, line: 106, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!183, !3651, !3665, !93}
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3667, line: 51, size: 1344, elements: !3668)
!3667 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3668 = !{!3669, !3670, !3672, !3673, !3763, !3772, !3773, !3774, !3775, !3776, !3777, !3778}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3666, file: !3667, line: 52, baseType: !162, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3666, file: !3667, line: 53, baseType: !3671, size: 32, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3667, line: 28, baseType: !197)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3666, file: !3667, line: 54, baseType: !162, size: 64, offset: 128)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3666, file: !3667, line: 55, baseType: !3674, size: 192, offset: 192)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3675, line: 17, size: 192, elements: !3676)
!3675 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3676 = !{!3677, !3679, !3762}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3674, file: !3675, line: 18, baseType: !3678, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3674, file: !3675, line: 19, baseType: !3680, size: 64, offset: 64)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3682)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3675, line: 110, size: 1152, elements: !3683)
!3683 = !{!3684, !3688, !3692, !3698, !3704, !3708, !3712, !3717, !3721, !3722, !3726, !3730, !3734, !3745, !3746, !3747, !3748, !3758}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3682, file: !3675, line: 111, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!3678, !3678}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3682, file: !3675, line: 112, baseType: !3689, size: 64, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{null, !3678}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3682, file: !3675, line: 113, baseType: !3693, size: 64, offset: 128)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!489, !3696}
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3674)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3682, file: !3675, line: 114, baseType: !3699, size: 64, offset: 192)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!2127, !3696, !3702}
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3682, file: !3675, line: 116, baseType: !3705, size: 64, offset: 256)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!489, !3696, !162}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3682, file: !3675, line: 118, baseType: !3709, size: 64, offset: 320)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!183, !3696, !162, !7, !124, !329}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3682, file: !3675, line: 123, baseType: !3713, size: 64, offset: 384)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!183, !3696, !162, !3716, !329}
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3682, file: !3675, line: 126, baseType: !3718, size: 64, offset: 448)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!162, !3696}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3682, file: !3675, line: 127, baseType: !3718, size: 64, offset: 512)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3682, file: !3675, line: 128, baseType: !3723, size: 64, offset: 576)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!3678, !3696}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3682, file: !3675, line: 130, baseType: !3727, size: 64, offset: 640)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!3678, !3696, !3678}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3682, file: !3675, line: 133, baseType: !3731, size: 64, offset: 704)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!3678, !3696, !162}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3682, file: !3675, line: 135, baseType: !3735, size: 64, offset: 768)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!183, !3696, !162, !162, !7, !7, !3738}
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3675, line: 43, size: 640, elements: !3740)
!3740 = !{!3741, !3742, !3743}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3739, file: !3675, line: 44, baseType: !3678, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3739, file: !3675, line: 45, baseType: !7, size: 32, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3739, file: !3675, line: 46, baseType: !3744, size: 512, offset: 128)
!3744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 512, elements: !1331)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3682, file: !3675, line: 140, baseType: !3727, size: 64, offset: 832)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3682, file: !3675, line: 143, baseType: !3723, size: 64, offset: 896)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3682, file: !3675, line: 145, baseType: !3685, size: 64, offset: 960)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3682, file: !3675, line: 146, baseType: !3749, size: 64, offset: 1024)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!183, !3696, !3752}
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3675, line: 29, size: 128, elements: !3754)
!3754 = !{!3755, !3756, !3757}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3753, file: !3675, line: 30, baseType: !7, size: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3753, file: !3675, line: 31, baseType: !7, size: 32, offset: 32)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3753, file: !3675, line: 32, baseType: !3696, size: 64, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3682, file: !3675, line: 148, baseType: !3759, size: 64, offset: 1088)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!183, !3696, !225}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3674, file: !3675, line: 20, baseType: !225, size: 64, offset: 128)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3666, file: !3667, line: 57, baseType: !3764, size: 64, offset: 384)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3667, line: 31, size: 704, elements: !3766)
!3766 = !{!3767, !3768, !3769, !3770, !3771}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3765, file: !3667, line: 32, baseType: !283, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3765, file: !3667, line: 33, baseType: !183, size: 32, offset: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3765, file: !3667, line: 34, baseType: !124, size: 64, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3765, file: !3667, line: 35, baseType: !3764, size: 64, offset: 192)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3765, file: !3667, line: 43, baseType: !350, size: 448, offset: 256)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3666, file: !3667, line: 58, baseType: !3764, size: 64, offset: 448)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3666, file: !3667, line: 59, baseType: !3665, size: 64, offset: 512)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3666, file: !3667, line: 60, baseType: !3665, size: 64, offset: 576)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3666, file: !3667, line: 61, baseType: !3665, size: 64, offset: 640)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3666, file: !3667, line: 63, baseType: !229, size: 512, offset: 704)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3666, file: !3667, line: 65, baseType: !166, size: 64, offset: 1216)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3666, file: !3667, line: 66, baseType: !124, size: 64, offset: 1280)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3659, file: !94, line: 108, baseType: !3780, size: 64, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!183, !3651, !3783, !93}
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3785)
!3785 = !{!3786, !3787, !3788}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3784, file: !94, line: 64, baseType: !3678, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3784, file: !94, line: 65, baseType: !183, size: 32, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3784, file: !94, line: 66, baseType: !3789, size: 512, offset: 96)
!3789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 512, elements: !1735)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3659, file: !94, line: 110, baseType: !3791, size: 64, offset: 128)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!183, !3651, !7, !3794}
!3794 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !131, line: 164, baseType: !166)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3659, file: !94, line: 111, baseType: !3796, size: 64, offset: 192)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{null, !3651, !7}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3659, file: !94, line: 112, baseType: !3800, size: 64, offset: 256)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!183, !3651, !3665, !3803, !7, !3805, !2683}
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3659, file: !94, line: 117, baseType: !3807, size: 64, offset: 320)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!183, !3651, !7, !7, !124}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3659, file: !94, line: 119, baseType: !3811, size: 64, offset: 384)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{null, !3651, !7, !7}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3659, file: !94, line: 121, baseType: !3815, size: 64, offset: 448)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!183, !3651, !3818, !489}
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3820, line: 11, flags: DIFlagFwdDecl)
!3820 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3659, file: !94, line: 122, baseType: !3822, size: 64, offset: 512)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{null, !3651, !3818}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3659, file: !94, line: 123, baseType: !3826, size: 64, offset: 576)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!183, !3651, !3783, !3805, !2683}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3652, file: !94, line: 166, baseType: !124, size: 64, offset: 256)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3652, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3652, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3652, file: !94, line: 171, baseType: !3678, size: 64, offset: 384)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3652, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3652, file: !94, line: 173, baseType: !3835, size: 64, offset: 512)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3652, file: !94, line: 175, baseType: !3651, size: 64, offset: 576)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3652, file: !94, line: 182, baseType: !3794, size: 64, offset: 640)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3652, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3652, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3652, file: !94, line: 185, baseType: !741, size: 128, offset: 768)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3652, file: !94, line: 186, baseType: !1174, size: 192, offset: 896)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3652, file: !94, line: 187, baseType: !3844, offset: 1088)
!3844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2331)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !226, file: !73, line: 499, baseType: !130, size: 128, offset: 4224)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !226, file: !73, line: 502, baseType: !3847, size: 64, offset: 4352)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3849)
!3849 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !226, file: !73, line: 504, baseType: !3851, size: 64, offset: 4416)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !226, file: !73, line: 505, baseType: !155, size: 64, offset: 4480)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !226, file: !73, line: 510, baseType: !155, size: 64, offset: 4544)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !226, file: !73, line: 511, baseType: !3855, size: 64, offset: 4608)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3857)
!3857 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !226, file: !73, line: 513, baseType: !3859, size: 64, offset: 4672)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3861)
!3861 = !{!3862, !3863}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3860, file: !73, line: 293, baseType: !7, size: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3860, file: !73, line: 294, baseType: !166, size: 64, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !226, file: !73, line: 515, baseType: !130, size: 128, offset: 4736)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !226, file: !73, line: 526, baseType: !3866, offset: 4864)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3867, line: 5, elements: !256)
!3867 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !226, file: !73, line: 528, baseType: !3665, size: 64, offset: 4864)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !226, file: !73, line: 529, baseType: !3678, size: 64, offset: 4928)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !226, file: !73, line: 534, baseType: !512, size: 32, offset: 4992)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !226, file: !73, line: 535, baseType: !197, size: 32, offset: 5024)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !226, file: !73, line: 537, baseType: !242, offset: 5056)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !226, file: !73, line: 538, baseType: !130, size: 128, offset: 5056)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !226, file: !73, line: 540, baseType: !3875, size: 64, offset: 5184)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3877, line: 54, size: 960, elements: !3878)
!3877 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3878 = !{!3879, !3880, !3881, !3882, !3883, !3884, !3885, !3889, !3893, !3894, !3895, !3896, !3900, !3904, !3905}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3876, file: !3877, line: 55, baseType: !162, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3876, file: !3877, line: 56, baseType: !632, size: 64, offset: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3876, file: !3877, line: 58, baseType: !335, size: 64, offset: 128)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3876, file: !3877, line: 59, baseType: !335, size: 64, offset: 192)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3876, file: !3877, line: 60, baseType: !235, size: 64, offset: 256)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3876, file: !3877, line: 62, baseType: !3385, size: 64, offset: 320)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3876, file: !3877, line: 63, baseType: !3886, size: 64, offset: 384)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!283, !225, !3392}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3876, file: !3877, line: 65, baseType: !3890, size: 64, offset: 448)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{null, !3875}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3876, file: !3877, line: 66, baseType: !3394, size: 64, offset: 512)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3876, file: !3877, line: 68, baseType: !3403, size: 64, offset: 576)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3876, file: !3877, line: 70, baseType: !3189, size: 64, offset: 640)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3876, file: !3877, line: 71, baseType: !3897, size: 64, offset: 704)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!2127, !225}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3876, file: !3877, line: 73, baseType: !3901, size: 64, offset: 768)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{null, !225, !3221, !3222}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3876, file: !3877, line: 75, baseType: !3398, size: 64, offset: 832)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3876, file: !3877, line: 77, baseType: !3515, size: 64, offset: 896)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !226, file: !73, line: 541, baseType: !335, size: 64, offset: 5248)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !226, file: !73, line: 543, baseType: !3394, size: 64, offset: 5312)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !226, file: !73, line: 544, baseType: !3909, size: 64, offset: 5376)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !226, file: !73, line: 545, baseType: !3912, size: 64, offset: 5440)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !226, file: !73, line: 547, baseType: !489, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !226, file: !73, line: 548, baseType: !489, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !226, file: !73, line: 549, baseType: !489, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !226, file: !73, line: 550, baseType: !489, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !138, file: !127, line: 635, baseType: !226, size: 5568, offset: 2304)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !138, file: !127, line: 636, baseType: !349, size: 64, offset: 7872)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !138, file: !127, line: 637, baseType: !349, size: 64, offset: 7936)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !138, file: !127, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !126, file: !127, line: 312, baseType: !137, size: 64, offset: 192)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !126, file: !127, line: 314, baseType: !124, size: 64, offset: 256)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !126, file: !127, line: 315, baseType: !208, size: 64, offset: 320)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !126, file: !127, line: 316, baseType: !3926, size: 64, offset: 384)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !127, line: 69, size: 832, elements: !3928)
!3928 = !{!3929, !3930, !3931, !3934, !3935}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3927, file: !127, line: 70, baseType: !137, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3927, file: !127, line: 71, baseType: !130, size: 128, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3927, file: !127, line: 72, baseType: !3932, size: 64, offset: 192)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !127, line: 72, flags: DIFlagFwdDecl)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3927, file: !127, line: 73, baseType: !212, size: 8, offset: 256)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3927, file: !127, line: 74, baseType: !229, size: 512, offset: 320)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !126, file: !127, line: 318, baseType: !7, size: 32, offset: 448)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !126, file: !127, line: 319, baseType: !221, size: 16, offset: 480)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !126, file: !127, line: 320, baseType: !221, size: 16, offset: 496)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !126, file: !127, line: 321, baseType: !221, size: 16, offset: 512)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !126, file: !127, line: 322, baseType: !221, size: 16, offset: 528)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !126, file: !127, line: 323, baseType: !7, size: 32, offset: 544)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !126, file: !127, line: 324, baseType: !1353, size: 8, offset: 576)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !126, file: !127, line: 325, baseType: !1353, size: 8, offset: 584)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !126, file: !127, line: 330, baseType: !1353, size: 8, offset: 592)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !126, file: !127, line: 331, baseType: !1353, size: 8, offset: 600)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !126, file: !127, line: 332, baseType: !1353, size: 8, offset: 608)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !126, file: !127, line: 333, baseType: !1353, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !126, file: !127, line: 334, baseType: !1353, size: 8, offset: 624)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !126, file: !127, line: 335, baseType: !1353, size: 8, offset: 632)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !126, file: !127, line: 336, baseType: !862, size: 16, offset: 640)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !126, file: !127, line: 337, baseType: !3805, size: 64, offset: 704)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !126, file: !127, line: 339, baseType: !3953, size: 64, offset: 768)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !127, line: 858, size: 2048, elements: !3955)
!3955 = !{!3956, !3957, !3958, !3970, !3974, !3978, !3982, !3986, !3987, !3991, !4010, !4011, !4012}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3954, file: !127, line: 859, baseType: !130, size: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3954, file: !127, line: 860, baseType: !162, size: 64, offset: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3954, file: !127, line: 861, baseType: !3959, size: 64, offset: 192)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3961)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3456, line: 38, size: 256, elements: !3962)
!3962 = !{!3963, !3964, !3965, !3966, !3967, !3968, !3969}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3961, file: !3456, line: 39, baseType: !198, size: 32)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3961, file: !3456, line: 39, baseType: !198, size: 32, offset: 32)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !3961, file: !3456, line: 40, baseType: !198, size: 32, offset: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !3961, file: !3456, line: 40, baseType: !198, size: 32, offset: 96)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3961, file: !3456, line: 41, baseType: !198, size: 32, offset: 128)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !3961, file: !3456, line: 41, baseType: !198, size: 32, offset: 160)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3961, file: !3456, line: 42, baseType: !3475, size: 64, offset: 192)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3954, file: !127, line: 862, baseType: !3971, size: 64, offset: 256)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!183, !125, !3959}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3954, file: !127, line: 863, baseType: !3975, size: 64, offset: 320)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{null, !125}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3954, file: !127, line: 864, baseType: !3979, size: 64, offset: 384)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!183, !125, !3486}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3954, file: !127, line: 865, baseType: !3983, size: 64, offset: 448)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!183, !125}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3954, file: !127, line: 866, baseType: !3975, size: 64, offset: 512)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !3954, file: !127, line: 867, baseType: !3988, size: 64, offset: 576)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!183, !125, !183}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !3954, file: !127, line: 868, baseType: !3992, size: 64, offset: 640)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3994)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !127, line: 795, size: 384, elements: !3995)
!3995 = !{!3996, !4002, !4006, !4007, !4008, !4009}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !3994, file: !127, line: 797, baseType: !3997, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!4000, !125, !4001}
!4000 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !127, line: 772, baseType: !7)
!4001 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !127, line: 180, baseType: !7)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !3994, file: !127, line: 801, baseType: !4003, size: 64, offset: 64)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!4000, !125}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !3994, file: !127, line: 804, baseType: !4003, size: 64, offset: 128)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !3994, file: !127, line: 807, baseType: !3975, size: 64, offset: 192)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !3994, file: !127, line: 808, baseType: !3975, size: 64, offset: 256)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3994, file: !127, line: 811, baseType: !3975, size: 64, offset: 320)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3954, file: !127, line: 869, baseType: !335, size: 64, offset: 704)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3954, file: !127, line: 870, baseType: !3444, size: 1152, offset: 768)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3954, file: !127, line: 871, baseType: !4013, size: 128, offset: 1920)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !127, line: 759, size: 128, elements: !4014)
!4014 = !{!4015, !4016}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4013, file: !127, line: 760, baseType: !242)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4013, file: !127, line: 761, baseType: !130, size: 128)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !126, file: !127, line: 340, baseType: !155, size: 64, offset: 832)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !126, file: !127, line: 346, baseType: !3860, size: 128, offset: 896)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !126, file: !127, line: 348, baseType: !4020, size: 32, offset: 1024)
!4020 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !127, line: 155, baseType: !183)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !126, file: !127, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !126, file: !127, line: 352, baseType: !1353, size: 8, offset: 1064)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !126, file: !127, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !126, file: !127, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !126, file: !127, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !126, file: !127, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !126, file: !127, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !126, file: !127, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !126, file: !127, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !126, file: !127, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !126, file: !127, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !126, file: !127, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !126, file: !127, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !126, file: !127, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !126, file: !127, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !126, file: !127, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !126, file: !127, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !126, file: !127, line: 376, baseType: !7, size: 32, offset: 1120)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !126, file: !127, line: 377, baseType: !7, size: 32, offset: 1152)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !126, file: !127, line: 380, baseType: !4041, size: 64, offset: 1216)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !127, line: 303, flags: DIFlagFwdDecl)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !126, file: !127, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !126, file: !127, line: 383, baseType: !183, size: 32, offset: 1312)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !126, file: !127, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !126, file: !127, line: 387, baseType: !4001, size: 32, offset: 1376)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !126, file: !127, line: 388, baseType: !226, size: 5568, offset: 1408)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !126, file: !127, line: 390, baseType: !183, size: 32, offset: 6976)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !126, file: !127, line: 396, baseType: !7, size: 32, offset: 7008)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !126, file: !127, line: 397, baseType: !4051, size: 8704, offset: 7040)
!4051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 8704, elements: !4052)
!4052 = !{!4053}
!4053 = !DISubrange(count: 17)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !126, file: !127, line: 399, baseType: !489, size: 8, offset: 15744)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !126, file: !127, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !126, file: !127, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !126, file: !127, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !126, file: !127, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !126, file: !127, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !126, file: !127, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !126, file: !127, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !126, file: !127, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !126, file: !127, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !126, file: !127, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !126, file: !127, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !126, file: !127, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !126, file: !127, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !126, file: !127, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !126, file: !127, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !126, file: !127, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !126, file: !127, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !126, file: !127, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !126, file: !127, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !126, file: !127, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !126, file: !127, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !126, file: !127, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !126, file: !127, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !126, file: !127, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !126, file: !127, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !126, file: !127, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !126, file: !127, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !126, file: !127, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !126, file: !127, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !126, file: !127, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !126, file: !127, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !126, file: !127, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !126, file: !127, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !126, file: !127, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !126, file: !127, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !126, file: !127, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !126, file: !127, line: 450, baseType: !4092, size: 16, offset: 15792)
!4092 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !127, line: 206, baseType: !221)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !126, file: !127, line: 451, baseType: !750, size: 32, offset: 15808)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !126, file: !127, line: 453, baseType: !3789, size: 512, offset: 15840)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !126, file: !127, line: 454, baseType: !637, size: 64, offset: 16384)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !126, file: !127, line: 455, baseType: !349, size: 64, offset: 16448)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !126, file: !127, line: 456, baseType: !183, size: 32, offset: 16512)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !126, file: !127, line: 457, baseType: !4099, size: 1088, offset: 16576)
!4099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 1088, elements: !4052)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !126, file: !127, line: 458, baseType: !4099, size: 1088, offset: 17664)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !126, file: !127, line: 469, baseType: !335, size: 64, offset: 18752)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !126, file: !127, line: 471, baseType: !4103, size: 64, offset: 18816)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !127, line: 304, flags: DIFlagFwdDecl)
!4105 = !DIDerivedType(tag: DW_TAG_member, scope: !126, file: !127, line: 478, baseType: !4106, size: 64, offset: 18880)
!4106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !126, file: !127, line: 478, size: 64, elements: !4107)
!4107 = !{!4108, !4111}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4106, file: !127, line: 479, baseType: !4109, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !127, line: 305, flags: DIFlagFwdDecl)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4106, file: !127, line: 480, baseType: !125, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !126, file: !127, line: 482, baseType: !862, size: 16, offset: 18944)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !126, file: !127, line: 483, baseType: !1353, size: 8, offset: 18960)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !126, file: !127, line: 497, baseType: !862, size: 16, offset: 18976)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !126, file: !127, line: 498, baseType: !154, size: 64, offset: 19008)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !126, file: !127, line: 499, baseType: !329, size: 64, offset: 19072)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !126, file: !127, line: 500, baseType: !283, size: 64, offset: 19136)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !126, file: !127, line: 502, baseType: !166, size: 64, offset: 19200)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !212)
!4123 = !{!4124, !0, !4126, !4128}
!4124 = !DIGlobalVariableExpression(var: !4125, expr: !DIExpression())
!4125 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_usb_early_handoff240", scope: !2, file: !3, line: 1286, type: !124, isLocal: true, isDefinition: true)
!4126 = !DIGlobalVariableExpression(var: !4127, expr: !DIExpression())
!4127 = distinct !DIGlobalVariable(name: "amd_lock", scope: !2, file: !3, line: 141, type: !242, isLocal: true, isDefinition: true)
!4128 = !DIGlobalVariableExpression(var: !4129, expr: !DIExpression())
!4129 = distinct !DIGlobalVariable(name: "ehci_dmi_nohandoff_table", scope: !2, file: !3, line: 822, type: !4130, isLocal: true, isDefinition: true)
!4130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4131, size: 13760, elements: !4151)
!4131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4132)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !3456, line: 566, size: 2752, elements: !4133)
!4133 = !{!4134, !4139, !4140, !4150}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4132, file: !3456, line: 567, baseType: !4135, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!183, !4138}
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !4132, file: !3456, line: 568, baseType: !162, size: 64, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !4132, file: !3456, line: 569, baseType: !4141, size: 2560, offset: 128)
!4141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4142, size: 2560, elements: !171)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !3456, line: 560, size: 640, elements: !4143)
!4143 = !{!4144, !4145, !4146}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4142, file: !3456, line: 561, baseType: !212, size: 7, flags: DIFlagBitField, extraData: i64 0)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !4142, file: !3456, line: 562, baseType: !212, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !4142, file: !3456, line: 563, baseType: !4147, size: 632, offset: 8)
!4147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 632, elements: !4148)
!4148 = !{!4149}
!4149 = !DISubrange(count: 79)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4132, file: !3456, line: 570, baseType: !124, size: 64, offset: 2688)
!4151 = !{!4152}
!4152 = !DISubrange(count: 5)
!4153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_chipset_info", file: !3, line: 131, size: 320, elements: !4154)
!4154 = !{!4155, !4156, !4157, !4158, !4163, !4164, !4165}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_dev", scope: !4153, file: !3, line: 132, baseType: !125, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_dev", scope: !4153, file: !3, line: 133, baseType: !125, size: 64, offset: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_type", scope: !4153, file: !3, line: 134, baseType: !183, size: 32, offset: 128)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "sb_type", scope: !4153, file: !3, line: 135, baseType: !4159, size: 64, offset: 160)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_chipset_type", file: !3, line: 126, size: 64, elements: !4160)
!4160 = !{!4161, !4162}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "gen", scope: !4159, file: !3, line: 127, baseType: !107, size: 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4159, file: !3, line: 128, baseType: !1353, size: 8, offset: 32)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "isoc_reqs", scope: !4153, file: !3, line: 136, baseType: !183, size: 32, offset: 224)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "probe_count", scope: !4153, file: !3, line: 137, baseType: !183, size: 32, offset: 256)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "need_pll_quirk", scope: !4153, file: !3, line: 138, baseType: !489, size: 8, offset: 288)
!4166 = !{!"rsp"}
!4167 = !{i32 7, !"Dwarf Version", i32 4}
!4168 = !{i32 2, !"Debug Info Version", i32 3}
!4169 = !{i32 1, !"wchar_size", i32 2}
!4170 = !{i32 1, !"Code Model", i32 2}
!4171 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4172 = distinct !DISubprogram(name: "sb800_prefetch", scope: !3, file: !3, line: 194, type: !4173, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !256)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{null, !225, !183}
!4175 = !DILocalVariable(name: "dev", arg: 1, scope: !4172, file: !3, line: 194, type: !225)
!4176 = !DILocation(line: 194, column: 36, scope: !4172)
!4177 = !DILocalVariable(name: "on", arg: 2, scope: !4172, file: !3, line: 194, type: !183)
!4178 = !DILocation(line: 194, column: 45, scope: !4172)
!4179 = !DILocalVariable(name: "misc", scope: !4172, file: !3, line: 196, type: !862)
!4180 = !DILocation(line: 196, column: 6, scope: !4172)
!4181 = !DILocalVariable(name: "pdev", scope: !4172, file: !3, line: 197, type: !125)
!4182 = !DILocation(line: 197, column: 18, scope: !4172)
!4183 = !DILocalVariable(name: "__mptr", scope: !4184, file: !3, line: 197, type: !124)
!4184 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 197, column: 25)
!4185 = !DILocation(line: 197, column: 25, scope: !4184)
!4186 = !DILocation(line: 197, column: 25, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 197, column: 25)
!4188 = !DILocation(line: 199, column: 23, scope: !4172)
!4189 = !DILocation(line: 199, column: 2, scope: !4172)
!4190 = !DILocation(line: 200, column: 6, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 200, column: 6)
!4192 = !DILocation(line: 200, column: 9, scope: !4191)
!4193 = !DILocation(line: 200, column: 6, scope: !4172)
!4194 = !DILocation(line: 201, column: 25, scope: !4191)
!4195 = !DILocation(line: 201, column: 37, scope: !4191)
!4196 = !DILocation(line: 201, column: 42, scope: !4191)
!4197 = !DILocation(line: 201, column: 3, scope: !4191)
!4198 = !DILocation(line: 203, column: 25, scope: !4191)
!4199 = !DILocation(line: 203, column: 37, scope: !4191)
!4200 = !DILocation(line: 203, column: 42, scope: !4191)
!4201 = !DILocation(line: 203, column: 3, scope: !4191)
!4202 = !DILocation(line: 204, column: 1, scope: !4172)
!4203 = distinct !DISubprogram(name: "usb_hcd_amd_remote_wakeup_quirk", scope: !3, file: !3, line: 289, type: !3984, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !256)
!4204 = !DILocalVariable(name: "pdev", arg: 1, scope: !4203, file: !3, line: 289, type: !125)
!4205 = !DILocation(line: 289, column: 53, scope: !4203)
!4206 = !DILocation(line: 292, column: 2, scope: !4203)
!4207 = !DILocation(line: 293, column: 26, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 293, column: 6)
!4209 = !DILocation(line: 293, column: 30, scope: !4208)
!4210 = !DILocation(line: 293, column: 53, scope: !4208)
!4211 = !DILocation(line: 294, column: 26, scope: !4208)
!4212 = !DILocation(line: 294, column: 30, scope: !4208)
!4213 = !DILocation(line: 293, column: 6, scope: !4203)
!4214 = !DILocation(line: 296, column: 3, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 294, column: 54)
!4216 = !DILocation(line: 298, column: 2, scope: !4203)
!4217 = !DILocation(line: 299, column: 1, scope: !4203)
!4218 = distinct !DISubprogram(name: "usb_amd_find_chipset_info", scope: !3, file: !3, line: 207, type: !1879, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!4219 = !DILocalVariable(name: "lock", arg: 1, scope: !4220, file: !4221, line: 407, type: !1067)
!4220 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4221, file: !4221, line: 407, type: !4222, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!4221 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4222 = !DISubroutineType(types: !4223)
!4223 = !{null, !1067, !166}
!4224 = !DILocation(line: 407, column: 64, scope: !4220, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 276, column: 3, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 270, column: 35)
!4227 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 270, column: 6)
!4228 = !DILocalVariable(name: "flags", arg: 2, scope: !4220, file: !4221, line: 407, type: !166)
!4229 = !DILocation(line: 407, column: 84, scope: !4220, inlinedAt: !4225)
!4230 = !DILocalVariable(name: "lock", arg: 1, scope: !4231, file: !4221, line: 327, type: !1067)
!4231 = distinct !DISubprogram(name: "spinlock_check", scope: !4221, file: !4221, line: 327, type: !4232, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!4234, !1067}
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!4235 = !DILocation(line: 327, column: 67, scope: !4231, inlinedAt: !4236)
!4236 = distinct !DILocation(line: 269, column: 2, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4238, file: !3, line: 269, column: 2)
!4238 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 269, column: 2)
!4239 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 269, column: 2)
!4240 = distinct !DILexicalBlock(scope: !4241, file: !3, line: 269, column: 2)
!4241 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 269, column: 2)
!4242 = !DILocation(line: 407, column: 64, scope: !4220, inlinedAt: !4243)
!4243 = distinct !DILocation(line: 222, column: 2, scope: !4218)
!4244 = !DILocation(line: 407, column: 84, scope: !4220, inlinedAt: !4243)
!4245 = !DILocation(line: 407, column: 64, scope: !4220, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 218, column: 3, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4248, file: !3, line: 216, column: 35)
!4248 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 216, column: 6)
!4249 = !DILocation(line: 407, column: 84, scope: !4220, inlinedAt: !4246)
!4250 = !DILocation(line: 407, column: 64, scope: !4220, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 285, column: 3, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 281, column: 9)
!4253 = !DILocation(line: 407, column: 84, scope: !4220, inlinedAt: !4251)
!4254 = !DILocation(line: 327, column: 67, scope: !4231, inlinedAt: !4255)
!4255 = distinct !DILocation(line: 213, column: 2, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 213, column: 2)
!4257 = distinct !DILexicalBlock(scope: !4258, file: !3, line: 213, column: 2)
!4258 = distinct !DILexicalBlock(scope: !4259, file: !3, line: 213, column: 2)
!4259 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 213, column: 2)
!4260 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 213, column: 2)
!4261 = !DILocalVariable(name: "flags", scope: !4218, file: !3, line: 209, type: !166)
!4262 = !DILocation(line: 209, column: 16, scope: !4218)
!4263 = !DILocalVariable(name: "info", scope: !4218, file: !3, line: 210, type: !4153)
!4264 = !DILocation(line: 210, column: 26, scope: !4218)
!4265 = !DILocation(line: 211, column: 7, scope: !4218)
!4266 = !DILocation(line: 211, column: 22, scope: !4218)
!4267 = !DILocation(line: 213, column: 2, scope: !4218)
!4268 = !DILocation(line: 213, column: 2, scope: !4260)
!4269 = !DILocalVariable(name: "__dummy", scope: !4270, file: !3, line: 213, type: !166)
!4270 = distinct !DILexicalBlock(scope: !4259, file: !3, line: 213, column: 2)
!4271 = !DILocation(line: 213, column: 2, scope: !4270)
!4272 = !DILocalVariable(name: "__dummy2", scope: !4270, file: !3, line: 213, type: !166)
!4273 = !DILocation(line: 213, column: 2, scope: !4259)
!4274 = !DILocation(line: 213, column: 2, scope: !4258)
!4275 = !DILocation(line: 213, column: 2, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4258, file: !3, line: 213, column: 2)
!4277 = !DILocalVariable(name: "__dummy", scope: !4278, file: !3, line: 213, type: !166)
!4278 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 213, column: 2)
!4279 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 213, column: 2)
!4280 = !DILocation(line: 213, column: 2, scope: !4278)
!4281 = !DILocalVariable(name: "__dummy2", scope: !4278, file: !3, line: 213, type: !166)
!4282 = !DILocation(line: 213, column: 2, scope: !4279)
!4283 = !DILocation(line: 213, column: 2, scope: !4257)
!4284 = !{i32 -2141114512}
!4285 = !DILocation(line: 329, column: 10, scope: !4231, inlinedAt: !4255)
!4286 = !DILocation(line: 329, column: 16, scope: !4231, inlinedAt: !4255)
!4287 = !DILocation(line: 213, column: 2, scope: !4256)
!4288 = !DILocation(line: 216, column: 18, scope: !4248)
!4289 = !DILocation(line: 216, column: 30, scope: !4248)
!4290 = !DILocation(line: 216, column: 6, scope: !4218)
!4291 = !DILocation(line: 217, column: 26, scope: !4247)
!4292 = !DILocation(line: 218, column: 37, scope: !4247)
!4293 = !DILocalVariable(name: "__dummy", scope: !4294, file: !4221, line: 409, type: !166)
!4294 = distinct !DILexicalBlock(scope: !4295, file: !4221, line: 409, column: 2)
!4295 = distinct !DILexicalBlock(scope: !4220, file: !4221, line: 409, column: 2)
!4296 = !DILocation(line: 409, column: 2, scope: !4294, inlinedAt: !4246)
!4297 = !DILocalVariable(name: "__dummy2", scope: !4294, file: !4221, line: 409, type: !166)
!4298 = !DILocalVariable(name: "__dummy", scope: !4299, file: !4221, line: 409, type: !166)
!4299 = distinct !DILexicalBlock(scope: !4300, file: !4221, line: 409, column: 2)
!4300 = distinct !DILexicalBlock(scope: !4301, file: !4221, line: 409, column: 2)
!4301 = distinct !DILexicalBlock(scope: !4302, file: !4221, line: 409, column: 2)
!4302 = distinct !DILexicalBlock(scope: !4295, file: !4221, line: 409, column: 2)
!4303 = !DILocation(line: 409, column: 2, scope: !4299, inlinedAt: !4246)
!4304 = !DILocalVariable(name: "__dummy2", scope: !4299, file: !4221, line: 409, type: !166)
!4305 = !DILocation(line: 409, column: 2, scope: !4300, inlinedAt: !4246)
!4306 = !DILocation(line: 409, column: 2, scope: !4307, inlinedAt: !4246)
!4307 = distinct !DILexicalBlock(scope: !4302, file: !4221, line: 409, column: 2)
!4308 = !{i32 -2145318927}
!4309 = !DILocation(line: 409, column: 2, scope: !4310, inlinedAt: !4246)
!4310 = distinct !DILexicalBlock(scope: !4307, file: !4221, line: 409, column: 2)
!4311 = !DILocation(line: 219, column: 3, scope: !4247)
!4312 = !DILocation(line: 221, column: 2, scope: !4218)
!4313 = !DILocation(line: 222, column: 36, scope: !4218)
!4314 = !DILocation(line: 409, column: 2, scope: !4294, inlinedAt: !4243)
!4315 = !DILocation(line: 409, column: 2, scope: !4299, inlinedAt: !4243)
!4316 = !DILocation(line: 409, column: 2, scope: !4300, inlinedAt: !4243)
!4317 = !DILocation(line: 409, column: 2, scope: !4307, inlinedAt: !4243)
!4318 = !DILocation(line: 409, column: 2, scope: !4310, inlinedAt: !4243)
!4319 = !DILocation(line: 224, column: 7, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 224, column: 6)
!4321 = !DILocation(line: 224, column: 6, scope: !4218)
!4322 = !DILocation(line: 225, column: 3, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4320, file: !3, line: 224, column: 40)
!4324 = !DILocation(line: 228, column: 15, scope: !4218)
!4325 = !DILocation(line: 228, column: 23, scope: !4218)
!4326 = !DILocation(line: 228, column: 2, scope: !4218)
!4327 = !DILocation(line: 230, column: 30, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 228, column: 28)
!4329 = !DILocation(line: 230, column: 38, scope: !4328)
!4330 = !DILocation(line: 230, column: 25, scope: !4328)
!4331 = !DILocation(line: 230, column: 42, scope: !4328)
!4332 = !DILocation(line: 230, column: 8, scope: !4328)
!4333 = !DILocation(line: 230, column: 23, scope: !4328)
!4334 = !DILocation(line: 231, column: 3, scope: !4328)
!4335 = !DILocation(line: 235, column: 8, scope: !4328)
!4336 = !DILocation(line: 235, column: 23, scope: !4328)
!4337 = !DILocation(line: 236, column: 3, scope: !4328)
!4338 = !DILocation(line: 238, column: 8, scope: !4328)
!4339 = !DILocation(line: 238, column: 23, scope: !4328)
!4340 = !DILocation(line: 239, column: 3, scope: !4328)
!4341 = !DILocation(line: 242, column: 12, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 242, column: 6)
!4343 = !DILocation(line: 242, column: 6, scope: !4218)
!4344 = !DILocation(line: 243, column: 12, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 243, column: 7)
!4346 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 242, column: 28)
!4347 = !DILocation(line: 243, column: 7, scope: !4345)
!4348 = !DILocation(line: 243, column: 7, scope: !4346)
!4349 = !DILocation(line: 244, column: 21, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 243, column: 23)
!4351 = !DILocation(line: 244, column: 4, scope: !4350)
!4352 = !DILocation(line: 245, column: 9, scope: !4350)
!4353 = !DILocation(line: 245, column: 19, scope: !4350)
!4354 = !DILocation(line: 246, column: 3, scope: !4350)
!4355 = !DILocation(line: 247, column: 3, scope: !4346)
!4356 = !DILocation(line: 250, column: 16, scope: !4218)
!4357 = !DILocation(line: 250, column: 7, scope: !4218)
!4358 = !DILocation(line: 250, column: 14, scope: !4218)
!4359 = !DILocation(line: 251, column: 11, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 251, column: 6)
!4361 = !DILocation(line: 251, column: 6, scope: !4360)
!4362 = !DILocation(line: 251, column: 6, scope: !4218)
!4363 = !DILocation(line: 252, column: 8, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4360, file: !3, line: 251, column: 19)
!4365 = !DILocation(line: 252, column: 16, scope: !4364)
!4366 = !DILocation(line: 253, column: 2, scope: !4364)
!4367 = !DILocation(line: 254, column: 17, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4360, file: !3, line: 253, column: 9)
!4369 = !DILocation(line: 254, column: 8, scope: !4368)
!4370 = !DILocation(line: 254, column: 15, scope: !4368)
!4371 = !DILocation(line: 255, column: 12, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4368, file: !3, line: 255, column: 7)
!4373 = !DILocation(line: 255, column: 7, scope: !4372)
!4374 = !DILocation(line: 255, column: 7, scope: !4368)
!4375 = !DILocation(line: 256, column: 9, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 255, column: 20)
!4377 = !DILocation(line: 256, column: 17, scope: !4376)
!4378 = !DILocation(line: 257, column: 3, scope: !4376)
!4379 = !DILocation(line: 258, column: 18, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 257, column: 10)
!4381 = !DILocation(line: 258, column: 9, scope: !4380)
!4382 = !DILocation(line: 258, column: 16, scope: !4380)
!4383 = !DILocation(line: 260, column: 13, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 260, column: 8)
!4385 = !DILocation(line: 260, column: 8, scope: !4384)
!4386 = !DILocation(line: 260, column: 8, scope: !4380)
!4387 = !DILocation(line: 261, column: 10, scope: !4384)
!4388 = !DILocation(line: 261, column: 18, scope: !4384)
!4389 = !DILocation(line: 261, column: 5, scope: !4384)
!4390 = !DILocation(line: 265, column: 2, scope: !4218)
!4391 = !DILabel(scope: !4218, name: "commit", file: !3, line: 267)
!4392 = !DILocation(line: 267, column: 1, scope: !4218)
!4393 = !DILocation(line: 269, column: 2, scope: !4218)
!4394 = !DILocation(line: 269, column: 2, scope: !4241)
!4395 = !DILocalVariable(name: "__dummy", scope: !4396, file: !3, line: 269, type: !166)
!4396 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 269, column: 2)
!4397 = !DILocation(line: 269, column: 2, scope: !4396)
!4398 = !DILocalVariable(name: "__dummy2", scope: !4396, file: !3, line: 269, type: !166)
!4399 = !DILocation(line: 269, column: 2, scope: !4240)
!4400 = !DILocation(line: 269, column: 2, scope: !4239)
!4401 = !DILocation(line: 269, column: 2, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 269, column: 2)
!4403 = !DILocalVariable(name: "__dummy", scope: !4404, file: !3, line: 269, type: !166)
!4404 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 269, column: 2)
!4405 = distinct !DILexicalBlock(scope: !4402, file: !3, line: 269, column: 2)
!4406 = !DILocation(line: 269, column: 2, scope: !4404)
!4407 = !DILocalVariable(name: "__dummy2", scope: !4404, file: !3, line: 269, type: !166)
!4408 = !DILocation(line: 269, column: 2, scope: !4405)
!4409 = !DILocation(line: 269, column: 2, scope: !4238)
!4410 = !{i32 -2141113418}
!4411 = !DILocation(line: 329, column: 10, scope: !4231, inlinedAt: !4236)
!4412 = !DILocation(line: 329, column: 16, scope: !4231, inlinedAt: !4236)
!4413 = !DILocation(line: 269, column: 2, scope: !4237)
!4414 = !DILocation(line: 270, column: 18, scope: !4227)
!4415 = !DILocation(line: 270, column: 30, scope: !4227)
!4416 = !DILocation(line: 270, column: 6, scope: !4218)
!4417 = !DILocation(line: 274, column: 26, scope: !4226)
!4418 = !DILocation(line: 276, column: 37, scope: !4226)
!4419 = !DILocation(line: 409, column: 2, scope: !4294, inlinedAt: !4225)
!4420 = !DILocation(line: 409, column: 2, scope: !4299, inlinedAt: !4225)
!4421 = !DILocation(line: 409, column: 2, scope: !4300, inlinedAt: !4225)
!4422 = !DILocation(line: 409, column: 2, scope: !4307, inlinedAt: !4225)
!4423 = !DILocation(line: 409, column: 2, scope: !4310, inlinedAt: !4225)
!4424 = !DILocation(line: 278, column: 20, scope: !4226)
!4425 = !DILocation(line: 278, column: 3, scope: !4226)
!4426 = !DILocation(line: 279, column: 20, scope: !4226)
!4427 = !DILocation(line: 279, column: 3, scope: !4226)
!4428 = !DILocation(line: 281, column: 2, scope: !4226)
!4429 = !DILocation(line: 283, column: 8, scope: !4252)
!4430 = !DILocation(line: 283, column: 19, scope: !4252)
!4431 = !DILocation(line: 284, column: 17, scope: !4252)
!4432 = !DILocation(line: 285, column: 37, scope: !4252)
!4433 = !DILocation(line: 409, column: 2, scope: !4294, inlinedAt: !4251)
!4434 = !DILocation(line: 409, column: 2, scope: !4299, inlinedAt: !4251)
!4435 = !DILocation(line: 409, column: 2, scope: !4300, inlinedAt: !4251)
!4436 = !DILocation(line: 409, column: 2, scope: !4307, inlinedAt: !4251)
!4437 = !DILocation(line: 409, column: 2, scope: !4310, inlinedAt: !4251)
!4438 = !DILocation(line: 287, column: 1, scope: !4218)
!4439 = distinct !DISubprogram(name: "usb_amd_hang_symptom_quirk", scope: !3, file: !3, line: 302, type: !3196, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !256)
!4440 = !DILocalVariable(name: "rev", scope: !4439, file: !3, line: 304, type: !1353)
!4441 = !DILocation(line: 304, column: 5, scope: !4439)
!4442 = !DILocation(line: 306, column: 2, scope: !4439)
!4443 = !DILocation(line: 307, column: 28, scope: !4439)
!4444 = !DILocation(line: 307, column: 6, scope: !4439)
!4445 = !DILocation(line: 309, column: 29, scope: !4439)
!4446 = !DILocation(line: 309, column: 33, scope: !4439)
!4447 = !DILocation(line: 309, column: 54, scope: !4439)
!4448 = !DILocation(line: 310, column: 25, scope: !4439)
!4449 = !DILocation(line: 310, column: 29, scope: !4439)
!4450 = !DILocation(line: 310, column: 50, scope: !4439)
!4451 = !DILocation(line: 311, column: 5, scope: !4439)
!4452 = !DILocation(line: 311, column: 9, scope: !4439)
!4453 = !DILocation(line: 311, column: 17, scope: !4439)
!4454 = !DILocation(line: 311, column: 20, scope: !4439)
!4455 = !DILocation(line: 311, column: 24, scope: !4439)
!4456 = !DILocation(line: 0, scope: !4439)
!4457 = !DILocation(line: 309, column: 2, scope: !4439)
!4458 = distinct !DISubprogram(name: "usb_amd_prefetch_quirk", scope: !3, file: !3, line: 315, type: !3196, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !256)
!4459 = !DILocation(line: 317, column: 2, scope: !4458)
!4460 = !DILocation(line: 319, column: 29, scope: !4458)
!4461 = !DILocation(line: 319, column: 33, scope: !4458)
!4462 = !DILocation(line: 319, column: 2, scope: !4458)
!4463 = distinct !DISubprogram(name: "usb_amd_quirk_pll_check", scope: !3, file: !3, line: 323, type: !3196, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !256)
!4464 = !DILocation(line: 325, column: 2, scope: !4463)
!4465 = !DILocation(line: 326, column: 21, scope: !4463)
!4466 = !DILocation(line: 326, column: 2, scope: !4463)
!4467 = distinct !DISubprogram(name: "usb_amd_quirk_pll_disable", scope: !3, file: !3, line: 457, type: !1879, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !256)
!4468 = !DILocation(line: 459, column: 2, scope: !4467)
!4469 = !DILocation(line: 460, column: 1, scope: !4467)
!4470 = distinct !DISubprogram(name: "usb_amd_quirk_pll", scope: !3, file: !3, line: 340, type: !1872, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!4471 = !DILocation(line: 407, column: 64, scope: !4220, inlinedAt: !4472)
!4472 = distinct !DILocation(line: 398, column: 3, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4474, file: !3, line: 397, column: 27)
!4474 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 397, column: 6)
!4475 = !DILocation(line: 407, column: 84, scope: !4220, inlinedAt: !4472)
!4476 = !DILocation(line: 407, column: 64, scope: !4220, inlinedAt: !4477)
!4477 = distinct !DILocation(line: 384, column: 3, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4479, file: !3, line: 383, column: 9)
!4479 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 375, column: 13)
!4480 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 362, column: 6)
!4481 = !DILocation(line: 407, column: 84, scope: !4220, inlinedAt: !4477)
!4482 = !DILocation(line: 407, column: 64, scope: !4220, inlinedAt: !4483)
!4483 = distinct !DILocation(line: 357, column: 4, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4485, file: !3, line: 356, column: 34)
!4485 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 356, column: 7)
!4486 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 354, column: 9)
!4487 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 348, column: 6)
!4488 = !DILocation(line: 407, column: 84, scope: !4220, inlinedAt: !4483)
!4489 = !DILocation(line: 407, column: 64, scope: !4220, inlinedAt: !4490)
!4490 = distinct !DILocation(line: 351, column: 4, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 350, column: 34)
!4492 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 350, column: 7)
!4493 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 348, column: 15)
!4494 = !DILocation(line: 407, column: 84, scope: !4220, inlinedAt: !4490)
!4495 = !DILocation(line: 407, column: 64, scope: !4220, inlinedAt: !4496)
!4496 = distinct !DILocation(line: 453, column: 2, scope: !4470)
!4497 = !DILocation(line: 407, column: 84, scope: !4220, inlinedAt: !4496)
!4498 = !DILocation(line: 327, column: 67, scope: !4231, inlinedAt: !4499)
!4499 = distinct !DILocation(line: 346, column: 2, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4501, file: !3, line: 346, column: 2)
!4501 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 346, column: 2)
!4502 = distinct !DILexicalBlock(scope: !4503, file: !3, line: 346, column: 2)
!4503 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 346, column: 2)
!4504 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 346, column: 2)
!4505 = !DILocalVariable(name: "disable", arg: 1, scope: !4470, file: !3, line: 340, type: !183)
!4506 = !DILocation(line: 340, column: 35, scope: !4470)
!4507 = !DILocalVariable(name: "addr", scope: !4470, file: !3, line: 342, type: !197)
!4508 = !DILocation(line: 342, column: 6, scope: !4470)
!4509 = !DILocalVariable(name: "addr_low", scope: !4470, file: !3, line: 342, type: !197)
!4510 = !DILocation(line: 342, column: 12, scope: !4470)
!4511 = !DILocalVariable(name: "addr_high", scope: !4470, file: !3, line: 342, type: !197)
!4512 = !DILocation(line: 342, column: 22, scope: !4470)
!4513 = !DILocalVariable(name: "val", scope: !4470, file: !3, line: 342, type: !197)
!4514 = !DILocation(line: 342, column: 33, scope: !4470)
!4515 = !DILocalVariable(name: "bit", scope: !4470, file: !3, line: 343, type: !197)
!4516 = !DILocation(line: 343, column: 6, scope: !4470)
!4517 = !DILocation(line: 343, column: 12, scope: !4470)
!4518 = !DILocalVariable(name: "flags", scope: !4470, file: !3, line: 344, type: !166)
!4519 = !DILocation(line: 344, column: 16, scope: !4470)
!4520 = !DILocation(line: 346, column: 2, scope: !4470)
!4521 = !DILocation(line: 346, column: 2, scope: !4504)
!4522 = !DILocalVariable(name: "__dummy", scope: !4523, file: !3, line: 346, type: !166)
!4523 = distinct !DILexicalBlock(scope: !4503, file: !3, line: 346, column: 2)
!4524 = !DILocation(line: 346, column: 2, scope: !4523)
!4525 = !DILocalVariable(name: "__dummy2", scope: !4523, file: !3, line: 346, type: !166)
!4526 = !DILocation(line: 346, column: 2, scope: !4503)
!4527 = !DILocation(line: 346, column: 2, scope: !4502)
!4528 = !DILocation(line: 346, column: 2, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 346, column: 2)
!4530 = !DILocalVariable(name: "__dummy", scope: !4531, file: !3, line: 346, type: !166)
!4531 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 346, column: 2)
!4532 = distinct !DILexicalBlock(scope: !4529, file: !3, line: 346, column: 2)
!4533 = !DILocation(line: 346, column: 2, scope: !4531)
!4534 = !DILocalVariable(name: "__dummy2", scope: !4531, file: !3, line: 346, type: !166)
!4535 = !DILocation(line: 346, column: 2, scope: !4532)
!4536 = !DILocation(line: 346, column: 2, scope: !4501)
!4537 = !{i32 -2141111729}
!4538 = !DILocation(line: 329, column: 10, scope: !4231, inlinedAt: !4499)
!4539 = !DILocation(line: 329, column: 16, scope: !4231, inlinedAt: !4499)
!4540 = !DILocation(line: 346, column: 2, scope: !4500)
!4541 = !DILocation(line: 348, column: 6, scope: !4487)
!4542 = !DILocation(line: 348, column: 6, scope: !4470)
!4543 = !DILocation(line: 349, column: 24, scope: !4493)
!4544 = !DILocation(line: 350, column: 19, scope: !4492)
!4545 = !DILocation(line: 350, column: 29, scope: !4492)
!4546 = !DILocation(line: 350, column: 7, scope: !4493)
!4547 = !DILocation(line: 351, column: 38, scope: !4491)
!4548 = !DILocation(line: 409, column: 2, scope: !4294, inlinedAt: !4490)
!4549 = !DILocation(line: 409, column: 2, scope: !4299, inlinedAt: !4490)
!4550 = !DILocation(line: 409, column: 2, scope: !4300, inlinedAt: !4490)
!4551 = !DILocation(line: 409, column: 2, scope: !4307, inlinedAt: !4490)
!4552 = !DILocation(line: 409, column: 2, scope: !4310, inlinedAt: !4490)
!4553 = !DILocation(line: 352, column: 4, scope: !4491)
!4554 = !DILocation(line: 354, column: 2, scope: !4493)
!4555 = !DILocation(line: 355, column: 24, scope: !4486)
!4556 = !DILocation(line: 356, column: 19, scope: !4485)
!4557 = !DILocation(line: 356, column: 29, scope: !4485)
!4558 = !DILocation(line: 356, column: 7, scope: !4486)
!4559 = !DILocation(line: 357, column: 38, scope: !4484)
!4560 = !DILocation(line: 409, column: 2, scope: !4294, inlinedAt: !4483)
!4561 = !DILocation(line: 409, column: 2, scope: !4299, inlinedAt: !4483)
!4562 = !DILocation(line: 409, column: 2, scope: !4300, inlinedAt: !4483)
!4563 = !DILocation(line: 409, column: 2, scope: !4307, inlinedAt: !4483)
!4564 = !DILocation(line: 409, column: 2, scope: !4310, inlinedAt: !4483)
!4565 = !DILocation(line: 358, column: 4, scope: !4484)
!4566 = !DILocation(line: 362, column: 26, scope: !4480)
!4567 = !DILocation(line: 362, column: 30, scope: !4480)
!4568 = !DILocation(line: 362, column: 51, scope: !4480)
!4569 = !DILocation(line: 363, column: 24, scope: !4480)
!4570 = !DILocation(line: 363, column: 28, scope: !4480)
!4571 = !DILocation(line: 363, column: 51, scope: !4480)
!4572 = !DILocation(line: 364, column: 24, scope: !4480)
!4573 = !DILocation(line: 364, column: 28, scope: !4480)
!4574 = !DILocation(line: 362, column: 6, scope: !4470)
!4575 = !DILocation(line: 365, column: 3, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 364, column: 51)
!4577 = !DILocation(line: 366, column: 14, scope: !4576)
!4578 = !DILocation(line: 366, column: 12, scope: !4576)
!4579 = !DILocation(line: 367, column: 3, scope: !4576)
!4580 = !DILocation(line: 368, column: 15, scope: !4576)
!4581 = !DILocation(line: 368, column: 13, scope: !4576)
!4582 = !DILocation(line: 369, column: 10, scope: !4576)
!4583 = !DILocation(line: 369, column: 20, scope: !4576)
!4584 = !DILocation(line: 369, column: 27, scope: !4576)
!4585 = !DILocation(line: 369, column: 25, scope: !4576)
!4586 = !DILocation(line: 369, column: 8, scope: !4576)
!4587 = !DILocation(line: 371, column: 16, scope: !4576)
!4588 = !DILocation(line: 371, column: 3, scope: !4576)
!4589 = !DILocation(line: 372, column: 16, scope: !4576)
!4590 = !DILocation(line: 372, column: 3, scope: !4576)
!4591 = !DILocation(line: 373, column: 16, scope: !4576)
!4592 = !DILocation(line: 373, column: 3, scope: !4576)
!4593 = !DILocation(line: 374, column: 15, scope: !4576)
!4594 = !DILocation(line: 374, column: 9, scope: !4576)
!4595 = !DILocation(line: 374, column: 7, scope: !4576)
!4596 = !DILocation(line: 375, column: 2, scope: !4576)
!4597 = !DILocation(line: 375, column: 33, scope: !4479)
!4598 = !DILocation(line: 375, column: 37, scope: !4479)
!4599 = !DILocation(line: 375, column: 58, scope: !4479)
!4600 = !DILocation(line: 376, column: 24, scope: !4479)
!4601 = !DILocation(line: 376, column: 4, scope: !4479)
!4602 = !DILocation(line: 376, column: 28, scope: !4479)
!4603 = !DILocation(line: 375, column: 13, scope: !4480)
!4604 = !DILocation(line: 377, column: 37, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4479, file: !3, line: 376, column: 37)
!4606 = !DILocation(line: 377, column: 3, scope: !4605)
!4607 = !DILocation(line: 379, column: 18, scope: !4605)
!4608 = !DILocation(line: 379, column: 3, scope: !4605)
!4609 = !DILocation(line: 380, column: 14, scope: !4605)
!4610 = !DILocation(line: 380, column: 3, scope: !4605)
!4611 = !DILocation(line: 381, column: 18, scope: !4605)
!4612 = !DILocation(line: 381, column: 3, scope: !4605)
!4613 = !DILocation(line: 382, column: 13, scope: !4605)
!4614 = !DILocation(line: 382, column: 9, scope: !4605)
!4615 = !DILocation(line: 382, column: 7, scope: !4605)
!4616 = !DILocation(line: 383, column: 2, scope: !4605)
!4617 = !DILocation(line: 384, column: 37, scope: !4478)
!4618 = !DILocation(line: 409, column: 2, scope: !4294, inlinedAt: !4477)
!4619 = !DILocation(line: 409, column: 2, scope: !4299, inlinedAt: !4477)
!4620 = !DILocation(line: 409, column: 2, scope: !4300, inlinedAt: !4477)
!4621 = !DILocation(line: 409, column: 2, scope: !4307, inlinedAt: !4477)
!4622 = !DILocation(line: 409, column: 2, scope: !4310, inlinedAt: !4477)
!4623 = !DILocation(line: 385, column: 3, scope: !4478)
!4624 = !DILocation(line: 388, column: 6, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 388, column: 6)
!4626 = !DILocation(line: 388, column: 6, scope: !4470)
!4627 = !DILocation(line: 389, column: 7, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4625, file: !3, line: 388, column: 15)
!4629 = !DILocation(line: 390, column: 7, scope: !4628)
!4630 = !DILocation(line: 391, column: 2, scope: !4628)
!4631 = !DILocation(line: 392, column: 7, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4625, file: !3, line: 391, column: 9)
!4633 = !DILocation(line: 393, column: 7, scope: !4632)
!4634 = !DILocation(line: 395, column: 9, scope: !4470)
!4635 = !DILocation(line: 395, column: 14, scope: !4470)
!4636 = !DILocation(line: 395, column: 2, scope: !4470)
!4637 = !DILocation(line: 397, column: 19, scope: !4474)
!4638 = !DILocation(line: 397, column: 7, scope: !4474)
!4639 = !DILocation(line: 397, column: 6, scope: !4470)
!4640 = !DILocation(line: 398, column: 37, scope: !4473)
!4641 = !DILocation(line: 409, column: 2, scope: !4294, inlinedAt: !4472)
!4642 = !DILocation(line: 409, column: 2, scope: !4299, inlinedAt: !4472)
!4643 = !DILocation(line: 409, column: 2, scope: !4300, inlinedAt: !4472)
!4644 = !DILocation(line: 409, column: 2, scope: !4307, inlinedAt: !4472)
!4645 = !DILocation(line: 409, column: 2, scope: !4310, inlinedAt: !4472)
!4646 = !DILocation(line: 399, column: 3, scope: !4473)
!4647 = !DILocation(line: 402, column: 18, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 402, column: 6)
!4649 = !DILocation(line: 402, column: 26, scope: !4648)
!4650 = !DILocation(line: 402, column: 31, scope: !4648)
!4651 = !DILocation(line: 402, column: 46, scope: !4648)
!4652 = !DILocation(line: 402, column: 54, scope: !4648)
!4653 = !DILocation(line: 402, column: 6, scope: !4470)
!4654 = !DILocation(line: 403, column: 8, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 402, column: 60)
!4656 = !DILocation(line: 404, column: 38, scope: !4655)
!4657 = !DILocation(line: 405, column: 25, scope: !4655)
!4658 = !DILocation(line: 404, column: 3, scope: !4655)
!4659 = !DILocation(line: 406, column: 37, scope: !4655)
!4660 = !DILocation(line: 406, column: 3, scope: !4655)
!4661 = !DILocation(line: 409, column: 7, scope: !4655)
!4662 = !DILocation(line: 410, column: 10, scope: !4655)
!4663 = !DILocation(line: 410, column: 17, scope: !4655)
!4664 = !DILocation(line: 410, column: 21, scope: !4655)
!4665 = !DILocation(line: 410, column: 14, scope: !4655)
!4666 = !DILocation(line: 410, column: 30, scope: !4655)
!4667 = !DILocation(line: 410, column: 34, scope: !4655)
!4668 = !DILocation(line: 410, column: 27, scope: !4655)
!4669 = !DILocation(line: 410, column: 7, scope: !4655)
!4670 = !DILocation(line: 411, column: 13, scope: !4655)
!4671 = !DILocation(line: 411, column: 12, scope: !4655)
!4672 = !DILocation(line: 411, column: 18, scope: !4655)
!4673 = !DILocation(line: 411, column: 29, scope: !4655)
!4674 = !DILocation(line: 411, column: 28, scope: !4655)
!4675 = !DILocation(line: 411, column: 34, scope: !4655)
!4676 = !DILocation(line: 411, column: 24, scope: !4655)
!4677 = !DILocation(line: 411, column: 7, scope: !4655)
!4678 = !DILocation(line: 412, column: 38, scope: !4655)
!4679 = !DILocation(line: 413, column: 25, scope: !4655)
!4680 = !DILocation(line: 412, column: 3, scope: !4655)
!4681 = !DILocation(line: 415, column: 8, scope: !4655)
!4682 = !DILocation(line: 416, column: 38, scope: !4655)
!4683 = !DILocation(line: 417, column: 25, scope: !4655)
!4684 = !DILocation(line: 416, column: 3, scope: !4655)
!4685 = !DILocation(line: 418, column: 37, scope: !4655)
!4686 = !DILocation(line: 418, column: 3, scope: !4655)
!4687 = !DILocation(line: 420, column: 7, scope: !4655)
!4688 = !DILocation(line: 421, column: 10, scope: !4655)
!4689 = !DILocation(line: 421, column: 14, scope: !4655)
!4690 = !DILocation(line: 421, column: 7, scope: !4655)
!4691 = !DILocation(line: 423, column: 38, scope: !4655)
!4692 = !DILocation(line: 424, column: 25, scope: !4655)
!4693 = !DILocation(line: 423, column: 3, scope: !4655)
!4694 = !DILocation(line: 425, column: 2, scope: !4655)
!4695 = !DILocation(line: 425, column: 25, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 425, column: 13)
!4697 = !DILocation(line: 425, column: 33, scope: !4696)
!4698 = !DILocation(line: 425, column: 13, scope: !4648)
!4699 = !DILocation(line: 426, column: 8, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 425, column: 39)
!4701 = !DILocation(line: 427, column: 38, scope: !4700)
!4702 = !DILocation(line: 428, column: 25, scope: !4700)
!4703 = !DILocation(line: 427, column: 3, scope: !4700)
!4704 = !DILocation(line: 429, column: 37, scope: !4700)
!4705 = !DILocation(line: 429, column: 3, scope: !4700)
!4706 = !DILocation(line: 431, column: 7, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 431, column: 7)
!4708 = !DILocation(line: 431, column: 7, scope: !4700)
!4709 = !DILocation(line: 432, column: 8, scope: !4707)
!4710 = !DILocation(line: 432, column: 4, scope: !4707)
!4711 = !DILocation(line: 434, column: 8, scope: !4707)
!4712 = !DILocation(line: 436, column: 38, scope: !4700)
!4713 = !DILocation(line: 437, column: 25, scope: !4700)
!4714 = !DILocation(line: 436, column: 3, scope: !4700)
!4715 = !DILocation(line: 439, column: 8, scope: !4700)
!4716 = !DILocation(line: 440, column: 38, scope: !4700)
!4717 = !DILocation(line: 441, column: 25, scope: !4700)
!4718 = !DILocation(line: 440, column: 3, scope: !4700)
!4719 = !DILocation(line: 442, column: 37, scope: !4700)
!4720 = !DILocation(line: 442, column: 3, scope: !4700)
!4721 = !DILocation(line: 444, column: 7, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 444, column: 7)
!4723 = !DILocation(line: 444, column: 7, scope: !4700)
!4724 = !DILocation(line: 445, column: 8, scope: !4722)
!4725 = !DILocation(line: 445, column: 4, scope: !4722)
!4726 = !DILocation(line: 447, column: 8, scope: !4722)
!4727 = !DILocation(line: 449, column: 38, scope: !4700)
!4728 = !DILocation(line: 450, column: 25, scope: !4700)
!4729 = !DILocation(line: 449, column: 3, scope: !4700)
!4730 = !DILocation(line: 451, column: 2, scope: !4700)
!4731 = !DILocation(line: 453, column: 36, scope: !4470)
!4732 = !DILocation(line: 409, column: 2, scope: !4294, inlinedAt: !4496)
!4733 = !DILocation(line: 409, column: 2, scope: !4299, inlinedAt: !4496)
!4734 = !DILocation(line: 409, column: 2, scope: !4300, inlinedAt: !4496)
!4735 = !DILocation(line: 409, column: 2, scope: !4307, inlinedAt: !4496)
!4736 = !DILocation(line: 409, column: 2, scope: !4310, inlinedAt: !4496)
!4737 = !DILocation(line: 454, column: 2, scope: !4470)
!4738 = !DILocation(line: 455, column: 1, scope: !4470)
!4739 = distinct !DISubprogram(name: "usb_asmedia_modifyflowcontrol", scope: !3, file: !3, line: 487, type: !3976, scopeLine: 488, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !256)
!4740 = !DILocalVariable(name: "pdev", arg: 1, scope: !4739, file: !3, line: 487, type: !125)
!4741 = !DILocation(line: 487, column: 52, scope: !4739)
!4742 = !DILocation(line: 489, column: 29, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 489, column: 6)
!4744 = !DILocation(line: 489, column: 6, scope: !4743)
!4745 = !DILocation(line: 489, column: 35, scope: !4743)
!4746 = !DILocation(line: 489, column: 6, scope: !4739)
!4747 = !DILocation(line: 490, column: 3, scope: !4743)
!4748 = !DILocation(line: 493, column: 25, scope: !4739)
!4749 = !DILocation(line: 493, column: 2, scope: !4739)
!4750 = !DILocation(line: 494, column: 25, scope: !4739)
!4751 = !DILocation(line: 494, column: 2, scope: !4739)
!4752 = !DILocation(line: 495, column: 24, scope: !4739)
!4753 = !DILocation(line: 495, column: 2, scope: !4739)
!4754 = !DILocation(line: 497, column: 29, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 497, column: 6)
!4756 = !DILocation(line: 497, column: 6, scope: !4755)
!4757 = !DILocation(line: 497, column: 35, scope: !4755)
!4758 = !DILocation(line: 497, column: 6, scope: !4739)
!4759 = !DILocation(line: 498, column: 3, scope: !4755)
!4760 = !DILocation(line: 501, column: 25, scope: !4739)
!4761 = !DILocation(line: 501, column: 2, scope: !4739)
!4762 = !DILocation(line: 502, column: 25, scope: !4739)
!4763 = !DILocation(line: 502, column: 2, scope: !4739)
!4764 = !DILocation(line: 503, column: 24, scope: !4739)
!4765 = !DILocation(line: 503, column: 2, scope: !4739)
!4766 = !DILocation(line: 504, column: 1, scope: !4739)
!4767 = distinct !DISubprogram(name: "usb_asmedia_wait_write", scope: !3, file: !3, line: 463, type: !3984, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!4768 = !DILocalVariable(name: "pdev", arg: 1, scope: !4767, file: !3, line: 463, type: !125)
!4769 = !DILocation(line: 463, column: 51, scope: !4767)
!4770 = !DILocalVariable(name: "retry_count", scope: !4767, file: !3, line: 465, type: !166)
!4771 = !DILocation(line: 465, column: 16, scope: !4767)
!4772 = !DILocalVariable(name: "value", scope: !4767, file: !3, line: 466, type: !212)
!4773 = !DILocation(line: 466, column: 16, scope: !4767)
!4774 = !DILocation(line: 468, column: 19, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 468, column: 2)
!4776 = !DILocation(line: 468, column: 7, scope: !4775)
!4777 = !DILocation(line: 468, column: 27, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 468, column: 2)
!4779 = !DILocation(line: 468, column: 39, scope: !4778)
!4780 = !DILocation(line: 468, column: 2, scope: !4775)
!4781 = !DILocation(line: 470, column: 24, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4778, file: !3, line: 468, column: 59)
!4783 = !DILocation(line: 470, column: 3, scope: !4782)
!4784 = !DILocation(line: 472, column: 7, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4782, file: !3, line: 472, column: 7)
!4786 = !DILocation(line: 472, column: 13, scope: !4785)
!4787 = !DILocation(line: 472, column: 7, scope: !4782)
!4788 = !DILocation(line: 473, column: 4, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4785, file: !3, line: 472, column: 22)
!4790 = !DILocation(line: 474, column: 4, scope: !4789)
!4791 = !DILocation(line: 477, column: 8, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4782, file: !3, line: 477, column: 7)
!4793 = !DILocation(line: 477, column: 14, scope: !4792)
!4794 = !DILocation(line: 477, column: 40, scope: !4792)
!4795 = !DILocation(line: 477, column: 7, scope: !4782)
!4796 = !DILocation(line: 478, column: 4, scope: !4792)
!4797 = !DILocation(line: 480, column: 3, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4799, file: !3, line: 480, column: 3)
!4799 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 480, column: 3)
!4800 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 480, column: 3)
!4801 = distinct !DILexicalBlock(scope: !4782, file: !3, line: 480, column: 3)
!4802 = !DILocation(line: 481, column: 2, scope: !4782)
!4803 = !DILocation(line: 468, column: 44, scope: !4778)
!4804 = !DILocation(line: 468, column: 2, scope: !4778)
!4805 = distinct !{!4805, !4780, !4806}
!4806 = !DILocation(line: 481, column: 2, scope: !4775)
!4807 = !DILocation(line: 483, column: 2, scope: !4767)
!4808 = !DILocation(line: 484, column: 2, scope: !4767)
!4809 = !DILocation(line: 485, column: 1, scope: !4767)
!4810 = distinct !DISubprogram(name: "usb_amd_quirk_pll_enable", scope: !3, file: !3, line: 507, type: !1879, scopeLine: 508, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !256)
!4811 = !DILocation(line: 509, column: 2, scope: !4810)
!4812 = !DILocation(line: 510, column: 1, scope: !4810)
!4813 = distinct !DISubprogram(name: "usb_amd_dev_put", scope: !3, file: !3, line: 513, type: !1879, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !256)
!4814 = !DILocation(line: 407, column: 64, scope: !4220, inlinedAt: !4815)
!4815 = distinct !DILocation(line: 522, column: 3, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 521, column: 35)
!4817 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 521, column: 6)
!4818 = !DILocation(line: 407, column: 84, scope: !4220, inlinedAt: !4815)
!4819 = !DILocation(line: 407, column: 64, scope: !4220, inlinedAt: !4820)
!4820 = distinct !DILocation(line: 537, column: 2, scope: !4813)
!4821 = !DILocation(line: 407, column: 84, scope: !4220, inlinedAt: !4820)
!4822 = !DILocation(line: 327, column: 67, scope: !4231, inlinedAt: !4823)
!4823 = distinct !DILocation(line: 518, column: 2, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 518, column: 2)
!4825 = distinct !DILexicalBlock(scope: !4826, file: !3, line: 518, column: 2)
!4826 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 518, column: 2)
!4827 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 518, column: 2)
!4828 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 518, column: 2)
!4829 = !DILocalVariable(name: "nb", scope: !4813, file: !3, line: 515, type: !125)
!4830 = !DILocation(line: 515, column: 18, scope: !4813)
!4831 = !DILocalVariable(name: "smbus", scope: !4813, file: !3, line: 515, type: !125)
!4832 = !DILocation(line: 515, column: 23, scope: !4813)
!4833 = !DILocalVariable(name: "flags", scope: !4813, file: !3, line: 516, type: !166)
!4834 = !DILocation(line: 516, column: 16, scope: !4813)
!4835 = !DILocation(line: 518, column: 2, scope: !4813)
!4836 = !DILocation(line: 518, column: 2, scope: !4828)
!4837 = !DILocalVariable(name: "__dummy", scope: !4838, file: !3, line: 518, type: !166)
!4838 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 518, column: 2)
!4839 = !DILocation(line: 518, column: 2, scope: !4838)
!4840 = !DILocalVariable(name: "__dummy2", scope: !4838, file: !3, line: 518, type: !166)
!4841 = !DILocation(line: 518, column: 2, scope: !4827)
!4842 = !DILocation(line: 518, column: 2, scope: !4826)
!4843 = !DILocation(line: 518, column: 2, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4826, file: !3, line: 518, column: 2)
!4845 = !DILocalVariable(name: "__dummy", scope: !4846, file: !3, line: 518, type: !166)
!4846 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 518, column: 2)
!4847 = distinct !DILexicalBlock(scope: !4844, file: !3, line: 518, column: 2)
!4848 = !DILocation(line: 518, column: 2, scope: !4846)
!4849 = !DILocalVariable(name: "__dummy2", scope: !4846, file: !3, line: 518, type: !166)
!4850 = !DILocation(line: 518, column: 2, scope: !4847)
!4851 = !DILocation(line: 518, column: 2, scope: !4825)
!4852 = !{i32 -2141109424}
!4853 = !DILocation(line: 329, column: 10, scope: !4231, inlinedAt: !4823)
!4854 = !DILocation(line: 329, column: 16, scope: !4231, inlinedAt: !4823)
!4855 = !DILocation(line: 518, column: 2, scope: !4824)
!4856 = !DILocation(line: 520, column: 25, scope: !4813)
!4857 = !DILocation(line: 521, column: 18, scope: !4817)
!4858 = !DILocation(line: 521, column: 30, scope: !4817)
!4859 = !DILocation(line: 521, column: 6, scope: !4813)
!4860 = !DILocation(line: 522, column: 37, scope: !4816)
!4861 = !DILocation(line: 409, column: 2, scope: !4294, inlinedAt: !4815)
!4862 = !DILocation(line: 409, column: 2, scope: !4299, inlinedAt: !4815)
!4863 = !DILocation(line: 409, column: 2, scope: !4300, inlinedAt: !4815)
!4864 = !DILocation(line: 409, column: 2, scope: !4307, inlinedAt: !4815)
!4865 = !DILocation(line: 409, column: 2, scope: !4310, inlinedAt: !4815)
!4866 = !DILocation(line: 523, column: 3, scope: !4816)
!4867 = !DILocation(line: 527, column: 22, scope: !4813)
!4868 = !DILocation(line: 527, column: 8, scope: !4813)
!4869 = !DILocation(line: 528, column: 22, scope: !4813)
!4870 = !DILocation(line: 528, column: 8, scope: !4813)
!4871 = !DILocation(line: 530, column: 21, scope: !4813)
!4872 = !DILocation(line: 531, column: 24, scope: !4813)
!4873 = !DILocation(line: 532, column: 22, scope: !4813)
!4874 = !DILocation(line: 533, column: 2, scope: !4813)
!4875 = !DILocation(line: 534, column: 24, scope: !4813)
!4876 = !DILocation(line: 535, column: 29, scope: !4813)
!4877 = !DILocation(line: 537, column: 36, scope: !4813)
!4878 = !DILocation(line: 409, column: 2, scope: !4294, inlinedAt: !4820)
!4879 = !DILocation(line: 409, column: 2, scope: !4299, inlinedAt: !4820)
!4880 = !DILocation(line: 409, column: 2, scope: !4300, inlinedAt: !4820)
!4881 = !DILocation(line: 409, column: 2, scope: !4307, inlinedAt: !4820)
!4882 = !DILocation(line: 409, column: 2, scope: !4310, inlinedAt: !4820)
!4883 = !DILocation(line: 539, column: 14, scope: !4813)
!4884 = !DILocation(line: 539, column: 2, scope: !4813)
!4885 = !DILocation(line: 540, column: 14, scope: !4813)
!4886 = !DILocation(line: 540, column: 2, scope: !4813)
!4887 = !DILocation(line: 541, column: 1, scope: !4813)
!4888 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4889, file: !4889, line: 666, type: !4890, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!4889 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!166}
!4892 = !DILocalVariable(name: "f", scope: !4888, file: !4889, line: 668, type: !166)
!4893 = !DILocation(line: 668, column: 16, scope: !4888)
!4894 = !DILocation(line: 670, column: 6, scope: !4888)
!4895 = !DILocation(line: 670, column: 4, scope: !4888)
!4896 = !DILocation(line: 671, column: 2, scope: !4888)
!4897 = !DILocation(line: 672, column: 9, scope: !4888)
!4898 = !DILocation(line: 672, column: 2, scope: !4888)
!4899 = distinct !DISubprogram(name: "usb_amd_pt_check_port", scope: !3, file: !3, line: 550, type: !4900, scopeLine: 551, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !256)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!489, !225, !183}
!4902 = !DILocalVariable(name: "device", arg: 1, scope: !4899, file: !3, line: 550, type: !225)
!4903 = !DILocation(line: 550, column: 43, scope: !4899)
!4904 = !DILocalVariable(name: "port", arg: 2, scope: !4899, file: !3, line: 550, type: !183)
!4905 = !DILocation(line: 550, column: 55, scope: !4899)
!4906 = !DILocalVariable(name: "value", scope: !4899, file: !3, line: 552, type: !212)
!4907 = !DILocation(line: 552, column: 16, scope: !4899)
!4908 = !DILocalVariable(name: "port_shift", scope: !4899, file: !3, line: 552, type: !212)
!4909 = !DILocation(line: 552, column: 23, scope: !4899)
!4910 = !DILocalVariable(name: "pdev", scope: !4899, file: !3, line: 553, type: !125)
!4911 = !DILocation(line: 553, column: 18, scope: !4899)
!4912 = !DILocalVariable(name: "reg", scope: !4899, file: !3, line: 554, type: !862)
!4913 = !DILocation(line: 554, column: 6, scope: !4899)
!4914 = !DILocalVariable(name: "__mptr", scope: !4915, file: !3, line: 556, type: !124)
!4915 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 556, column: 9)
!4916 = !DILocation(line: 556, column: 9, scope: !4915)
!4917 = !DILocation(line: 556, column: 9, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 556, column: 9)
!4919 = !DILocation(line: 556, column: 7, scope: !4899)
!4920 = !DILocation(line: 557, column: 24, scope: !4899)
!4921 = !DILocation(line: 557, column: 2, scope: !4899)
!4922 = !DILocation(line: 559, column: 23, scope: !4899)
!4923 = !DILocation(line: 559, column: 2, scope: !4899)
!4924 = !DILocation(line: 560, column: 6, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 560, column: 6)
!4926 = !DILocation(line: 560, column: 12, scope: !4925)
!4927 = !DILocation(line: 560, column: 6, scope: !4899)
!4928 = !DILocation(line: 561, column: 3, scope: !4925)
!4929 = !DILocation(line: 563, column: 24, scope: !4899)
!4930 = !DILocation(line: 563, column: 2, scope: !4899)
!4931 = !DILocation(line: 565, column: 23, scope: !4899)
!4932 = !DILocation(line: 565, column: 2, scope: !4899)
!4933 = !DILocation(line: 566, column: 6, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 566, column: 6)
!4935 = !DILocation(line: 566, column: 12, scope: !4934)
!4936 = !DILocation(line: 566, column: 6, scope: !4899)
!4937 = !DILocation(line: 567, column: 3, scope: !4934)
!4938 = !DILocation(line: 569, column: 24, scope: !4899)
!4939 = !DILocation(line: 569, column: 2, scope: !4899)
!4940 = !DILocation(line: 571, column: 23, scope: !4899)
!4941 = !DILocation(line: 571, column: 2, scope: !4899)
!4942 = !DILocation(line: 572, column: 6, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 572, column: 6)
!4944 = !DILocation(line: 572, column: 12, scope: !4943)
!4945 = !DILocation(line: 572, column: 6, scope: !4899)
!4946 = !DILocation(line: 573, column: 3, scope: !4943)
!4947 = !DILocation(line: 575, column: 24, scope: !4899)
!4948 = !DILocation(line: 575, column: 2, scope: !4899)
!4949 = !DILocation(line: 577, column: 23, scope: !4899)
!4950 = !DILocation(line: 577, column: 2, scope: !4899)
!4951 = !DILocation(line: 578, column: 6, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 578, column: 6)
!4953 = !DILocation(line: 578, column: 12, scope: !4952)
!4954 = !DILocation(line: 578, column: 6, scope: !4899)
!4955 = !DILocation(line: 579, column: 3, scope: !4952)
!4956 = !DILocation(line: 582, column: 10, scope: !4899)
!4957 = !DILocation(line: 582, column: 16, scope: !4899)
!4958 = !DILocation(line: 582, column: 2, scope: !4899)
!4959 = !DILocation(line: 590, column: 7, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 590, column: 7)
!4961 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 582, column: 24)
!4962 = !DILocation(line: 590, column: 12, scope: !4960)
!4963 = !DILocation(line: 590, column: 7, scope: !4961)
!4964 = !DILocation(line: 591, column: 8, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 590, column: 17)
!4966 = !DILocation(line: 592, column: 17, scope: !4965)
!4967 = !DILocation(line: 592, column: 22, scope: !4965)
!4968 = !DILocation(line: 592, column: 15, scope: !4965)
!4969 = !DILocation(line: 593, column: 3, scope: !4965)
!4970 = !DILocation(line: 594, column: 8, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 593, column: 10)
!4972 = !DILocation(line: 595, column: 17, scope: !4971)
!4973 = !DILocation(line: 595, column: 22, scope: !4971)
!4974 = !DILocation(line: 595, column: 15, scope: !4971)
!4975 = !DILocation(line: 597, column: 3, scope: !4961)
!4976 = !DILocation(line: 604, column: 7, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 604, column: 7)
!4978 = !DILocation(line: 604, column: 12, scope: !4977)
!4979 = !DILocation(line: 604, column: 7, scope: !4961)
!4980 = !DILocation(line: 605, column: 8, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4977, file: !3, line: 604, column: 17)
!4982 = !DILocation(line: 606, column: 17, scope: !4981)
!4983 = !DILocation(line: 606, column: 22, scope: !4981)
!4984 = !DILocation(line: 606, column: 15, scope: !4981)
!4985 = !DILocation(line: 607, column: 3, scope: !4981)
!4986 = !DILocation(line: 608, column: 8, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4977, file: !3, line: 607, column: 10)
!4988 = !DILocation(line: 609, column: 17, scope: !4987)
!4989 = !DILocation(line: 609, column: 22, scope: !4987)
!4990 = !DILocation(line: 609, column: 15, scope: !4987)
!4991 = !DILocation(line: 611, column: 3, scope: !4961)
!4992 = !DILocation(line: 618, column: 7, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 618, column: 7)
!4994 = !DILocation(line: 618, column: 12, scope: !4993)
!4995 = !DILocation(line: 618, column: 7, scope: !4961)
!4996 = !DILocation(line: 619, column: 8, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4993, file: !3, line: 618, column: 17)
!4998 = !DILocation(line: 620, column: 17, scope: !4997)
!4999 = !DILocation(line: 620, column: 22, scope: !4997)
!5000 = !DILocation(line: 620, column: 15, scope: !4997)
!5001 = !DILocation(line: 621, column: 3, scope: !4997)
!5002 = !DILocation(line: 622, column: 8, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4993, file: !3, line: 621, column: 10)
!5004 = !DILocation(line: 623, column: 17, scope: !5003)
!5005 = !DILocation(line: 623, column: 22, scope: !5003)
!5006 = !DILocation(line: 623, column: 15, scope: !5003)
!5007 = !DILocation(line: 625, column: 3, scope: !4961)
!5008 = !DILocation(line: 627, column: 3, scope: !4961)
!5009 = !DILocation(line: 629, column: 24, scope: !4899)
!5010 = !DILocation(line: 629, column: 44, scope: !4899)
!5011 = !DILocation(line: 629, column: 2, scope: !4899)
!5012 = !DILocation(line: 630, column: 23, scope: !4899)
!5013 = !DILocation(line: 630, column: 2, scope: !4899)
!5014 = !DILocation(line: 632, column: 11, scope: !4899)
!5015 = !DILocation(line: 632, column: 19, scope: !4899)
!5016 = !DILocation(line: 632, column: 17, scope: !4899)
!5017 = !DILocation(line: 632, column: 9, scope: !4899)
!5018 = !DILocation(line: 632, column: 2, scope: !4899)
!5019 = !DILocation(line: 633, column: 1, scope: !4899)
!5020 = distinct !DISubprogram(name: "uhci_reset_hc", scope: !3, file: !3, line: 640, type: !5021, scopeLine: 641, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{null, !125, !166}
!5023 = !DILocalVariable(name: "pdev", arg: 1, scope: !5020, file: !3, line: 640, type: !125)
!5024 = !DILocation(line: 640, column: 36, scope: !5020)
!5025 = !DILocalVariable(name: "base", arg: 2, scope: !5020, file: !3, line: 640, type: !166)
!5026 = !DILocation(line: 640, column: 56, scope: !5020)
!5027 = !DILocation(line: 645, column: 24, scope: !5020)
!5028 = !DILocation(line: 645, column: 2, scope: !5020)
!5029 = !DILocation(line: 652, column: 28, scope: !5020)
!5030 = !DILocation(line: 652, column: 33, scope: !5020)
!5031 = !DILocation(line: 652, column: 2, scope: !5020)
!5032 = !DILocation(line: 653, column: 2, scope: !5020)
!5033 = !{i32 -2141107322}
!5034 = !DILocation(line: 654, column: 2, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5036, file: !3, line: 654, column: 2)
!5036 = distinct !DILexicalBlock(scope: !5037, file: !3, line: 654, column: 2)
!5037 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 654, column: 2)
!5038 = distinct !DILexicalBlock(scope: !5020, file: !3, line: 654, column: 2)
!5039 = !DILocation(line: 655, column: 10, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5020, file: !3, line: 655, column: 6)
!5041 = !DILocation(line: 655, column: 15, scope: !5040)
!5042 = !DILocation(line: 655, column: 6, scope: !5040)
!5043 = !DILocation(line: 655, column: 30, scope: !5040)
!5044 = !DILocation(line: 655, column: 6, scope: !5020)
!5045 = !DILocation(line: 656, column: 3, scope: !5040)
!5046 = !DILocation(line: 661, column: 10, scope: !5020)
!5047 = !DILocation(line: 661, column: 15, scope: !5020)
!5048 = !DILocation(line: 661, column: 2, scope: !5020)
!5049 = !DILocation(line: 662, column: 10, scope: !5020)
!5050 = !DILocation(line: 662, column: 15, scope: !5020)
!5051 = !DILocation(line: 662, column: 2, scope: !5020)
!5052 = !DILocation(line: 663, column: 1, scope: !5020)
!5053 = distinct !DISubprogram(name: "outw", scope: !5054, file: !5054, line: 335, type: !5055, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5054 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!5055 = !DISubroutineType(types: !5056)
!5056 = !{null, !221, !183}
!5057 = !DILocalVariable(name: "value", arg: 1, scope: !5053, file: !5054, line: 335, type: !221)
!5058 = !DILocation(line: 335, column: 1, scope: !5053)
!5059 = !DILocalVariable(name: "port", arg: 2, scope: !5053, file: !5054, line: 335, type: !183)
!5060 = !{i32 -2143553344}
!5061 = distinct !DISubprogram(name: "inw", scope: !5054, file: !5054, line: 335, type: !5062, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5062 = !DISubroutineType(types: !5063)
!5063 = !{!221, !183}
!5064 = !DILocalVariable(name: "port", arg: 1, scope: !5061, file: !5054, line: 335, type: !183)
!5065 = !DILocation(line: 335, column: 1, scope: !5061)
!5066 = !DILocalVariable(name: "value", scope: !5061, file: !5054, line: 335, type: !221)
!5067 = !{i32 -2143553142}
!5068 = distinct !DISubprogram(name: "uhci_check_and_reset_hc", scope: !3, file: !3, line: 672, type: !5069, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5069 = !DISubroutineType(types: !5070)
!5070 = !{!183, !125, !166}
!5071 = !DILocalVariable(name: "pdev", arg: 1, scope: !5068, file: !3, line: 672, type: !125)
!5072 = !DILocation(line: 672, column: 45, scope: !5068)
!5073 = !DILocalVariable(name: "base", arg: 2, scope: !5068, file: !3, line: 672, type: !166)
!5074 = !DILocation(line: 672, column: 65, scope: !5068)
!5075 = !DILocalVariable(name: "legsup", scope: !5068, file: !3, line: 674, type: !862)
!5076 = !DILocation(line: 674, column: 6, scope: !5068)
!5077 = !DILocalVariable(name: "cmd", scope: !5068, file: !3, line: 675, type: !7)
!5078 = !DILocation(line: 675, column: 15, scope: !5068)
!5079 = !DILocalVariable(name: "intr", scope: !5068, file: !3, line: 675, type: !7)
!5080 = !DILocation(line: 675, column: 20, scope: !5068)
!5081 = !DILocation(line: 687, column: 23, scope: !5068)
!5082 = !DILocation(line: 687, column: 2, scope: !5068)
!5083 = !DILocation(line: 688, column: 6, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 688, column: 6)
!5085 = !DILocation(line: 688, column: 13, scope: !5084)
!5086 = !DILocation(line: 688, column: 6, scope: !5068)
!5087 = !DILocation(line: 691, column: 3, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 688, column: 58)
!5089 = !DILocation(line: 694, column: 12, scope: !5068)
!5090 = !DILocation(line: 694, column: 17, scope: !5068)
!5091 = !DILocation(line: 694, column: 8, scope: !5068)
!5092 = !DILocation(line: 694, column: 6, scope: !5068)
!5093 = !DILocation(line: 695, column: 7, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 695, column: 6)
!5095 = !DILocation(line: 695, column: 11, scope: !5094)
!5096 = !DILocation(line: 695, column: 30, scope: !5094)
!5097 = !DILocation(line: 695, column: 35, scope: !5094)
!5098 = !DILocation(line: 695, column: 39, scope: !5094)
!5099 = !DILocation(line: 695, column: 64, scope: !5094)
!5100 = !DILocation(line: 696, column: 6, scope: !5094)
!5101 = !DILocation(line: 696, column: 10, scope: !5094)
!5102 = !DILocation(line: 695, column: 6, scope: !5068)
!5103 = !DILocation(line: 699, column: 3, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 696, column: 31)
!5105 = !DILocation(line: 702, column: 13, scope: !5068)
!5106 = !DILocation(line: 702, column: 18, scope: !5068)
!5107 = !DILocation(line: 702, column: 9, scope: !5068)
!5108 = !DILocation(line: 702, column: 7, scope: !5068)
!5109 = !DILocation(line: 703, column: 6, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 703, column: 6)
!5111 = !DILocation(line: 703, column: 11, scope: !5110)
!5112 = !DILocation(line: 703, column: 6, scope: !5068)
!5113 = !DILocation(line: 706, column: 3, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 703, column: 37)
!5115 = !DILocation(line: 708, column: 2, scope: !5068)
!5116 = !DILabel(scope: !5068, name: "reset_needed", file: !3, line: 710)
!5117 = !DILocation(line: 710, column: 1, scope: !5068)
!5118 = !DILocation(line: 712, column: 16, scope: !5068)
!5119 = !DILocation(line: 712, column: 22, scope: !5068)
!5120 = !DILocation(line: 712, column: 2, scope: !5068)
!5121 = !DILocation(line: 713, column: 2, scope: !5068)
!5122 = !DILocation(line: 714, column: 1, scope: !5068)
!5123 = distinct !DISubprogram(name: "usb_enable_intel_xhci_ports", scope: !3, file: !3, line: 1039, type: !3976, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5124 = !DILocalVariable(name: "xhci_pdev", arg: 1, scope: !5123, file: !3, line: 1039, type: !125)
!5125 = !DILocation(line: 1039, column: 50, scope: !5123)
!5126 = !DILocalVariable(name: "ports_available", scope: !5123, file: !3, line: 1041, type: !197)
!5127 = !DILocation(line: 1041, column: 7, scope: !5123)
!5128 = !DILocalVariable(name: "ehci_found", scope: !5123, file: !3, line: 1042, type: !489)
!5129 = !DILocation(line: 1042, column: 8, scope: !5123)
!5130 = !DILocalVariable(name: "companion", scope: !5123, file: !3, line: 1043, type: !125)
!5131 = !DILocation(line: 1043, column: 18, scope: !5123)
!5132 = !DILocation(line: 1048, column: 6, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 1048, column: 6)
!5134 = !DILocation(line: 1048, column: 17, scope: !5133)
!5135 = !DILocation(line: 1048, column: 34, scope: !5133)
!5136 = !DILocation(line: 1048, column: 56, scope: !5133)
!5137 = !DILocation(line: 1049, column: 6, scope: !5133)
!5138 = !DILocation(line: 1049, column: 17, scope: !5133)
!5139 = !DILocation(line: 1049, column: 34, scope: !5133)
!5140 = !DILocation(line: 1048, column: 6, scope: !5123)
!5141 = !DILocation(line: 1050, column: 3, scope: !5133)
!5142 = !DILocation(line: 1053, column: 2, scope: !5123)
!5143 = !DILocation(line: 1054, column: 7, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 1054, column: 7)
!5145 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 1053, column: 30)
!5146 = !DILocation(line: 1054, column: 18, scope: !5144)
!5147 = !DILocation(line: 1054, column: 24, scope: !5144)
!5148 = !DILocation(line: 1054, column: 53, scope: !5144)
!5149 = !DILocation(line: 1055, column: 7, scope: !5144)
!5150 = !DILocation(line: 1055, column: 18, scope: !5144)
!5151 = !DILocation(line: 1055, column: 25, scope: !5144)
!5152 = !DILocation(line: 1054, column: 7, scope: !5145)
!5153 = !DILocation(line: 1056, column: 15, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 1055, column: 49)
!5155 = !DILocation(line: 1057, column: 4, scope: !5154)
!5156 = distinct !{!5156, !5142, !5157}
!5157 = !DILocation(line: 1059, column: 2, scope: !5123)
!5158 = !DILocation(line: 1061, column: 7, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 1061, column: 6)
!5160 = !DILocation(line: 1061, column: 6, scope: !5123)
!5161 = !DILocation(line: 1062, column: 3, scope: !5159)
!5162 = !DILocation(line: 1080, column: 24, scope: !5123)
!5163 = !DILocation(line: 1080, column: 2, scope: !5123)
!5164 = !DILocation(line: 1090, column: 25, scope: !5123)
!5165 = !DILocation(line: 1091, column: 4, scope: !5123)
!5166 = !DILocation(line: 1090, column: 2, scope: !5123)
!5167 = !DILocation(line: 1093, column: 24, scope: !5123)
!5168 = !DILocation(line: 1093, column: 2, scope: !5123)
!5169 = !DILocation(line: 1103, column: 24, scope: !5123)
!5170 = !DILocation(line: 1103, column: 2, scope: !5123)
!5171 = !DILocation(line: 1113, column: 25, scope: !5123)
!5172 = !DILocation(line: 1114, column: 4, scope: !5123)
!5173 = !DILocation(line: 1113, column: 2, scope: !5123)
!5174 = !DILocation(line: 1116, column: 24, scope: !5123)
!5175 = !DILocation(line: 1116, column: 2, scope: !5123)
!5176 = !DILocation(line: 1121, column: 1, scope: !5123)
!5177 = distinct !DISubprogram(name: "usb_disable_xhci_ports", scope: !3, file: !3, line: 1124, type: !3976, scopeLine: 1125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5178 = !DILocalVariable(name: "xhci_pdev", arg: 1, scope: !5177, file: !3, line: 1124, type: !125)
!5179 = !DILocation(line: 1124, column: 45, scope: !5177)
!5180 = !DILocation(line: 1126, column: 25, scope: !5177)
!5181 = !DILocation(line: 1126, column: 2, scope: !5177)
!5182 = !DILocation(line: 1127, column: 25, scope: !5177)
!5183 = !DILocation(line: 1127, column: 2, scope: !5177)
!5184 = !DILocation(line: 1128, column: 1, scope: !5177)
!5185 = distinct !DISubprogram(name: "quirk_usb_early_handoff", scope: !3, file: !3, line: 1242, type: !3976, scopeLine: 1243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5186 = !DILocalVariable(name: "pdev", arg: 1, scope: !5185, file: !3, line: 1242, type: !125)
!5187 = !DILocation(line: 1242, column: 53, scope: !5185)
!5188 = !DILocalVariable(name: "parent", scope: !5185, file: !3, line: 1244, type: !3665)
!5189 = !DILocation(line: 1244, column: 22, scope: !5185)
!5190 = !DILocalVariable(name: "is_rpi", scope: !5185, file: !3, line: 1245, type: !489)
!5191 = !DILocation(line: 1245, column: 7, scope: !5185)
!5192 = !DILocation(line: 1250, column: 6, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 1250, column: 6)
!5194 = !DILocation(line: 1250, column: 12, scope: !5193)
!5195 = !DILocation(line: 1250, column: 19, scope: !5193)
!5196 = !DILocation(line: 1250, column: 6, scope: !5185)
!5197 = !DILocation(line: 1251, column: 3, scope: !5193)
!5198 = !DILocation(line: 1257, column: 6, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 1257, column: 6)
!5200 = !DILocation(line: 1257, column: 12, scope: !5199)
!5201 = !DILocation(line: 1257, column: 19, scope: !5199)
!5202 = !DILocation(line: 1257, column: 40, scope: !5199)
!5203 = !DILocation(line: 1257, column: 43, scope: !5199)
!5204 = !DILocation(line: 1257, column: 49, scope: !5199)
!5205 = !DILocation(line: 1257, column: 56, scope: !5199)
!5206 = !DILocation(line: 1257, column: 6, scope: !5185)
!5207 = !DILocation(line: 1258, column: 26, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 1257, column: 67)
!5209 = !DILocation(line: 1258, column: 32, scope: !5208)
!5210 = !DILocation(line: 1258, column: 37, scope: !5208)
!5211 = !DILocation(line: 1258, column: 41, scope: !5208)
!5212 = !DILocation(line: 1258, column: 12, scope: !5208)
!5213 = !DILocation(line: 1258, column: 10, scope: !5208)
!5214 = !DILocation(line: 1259, column: 36, scope: !5208)
!5215 = !DILocation(line: 1259, column: 12, scope: !5208)
!5216 = !DILocation(line: 1259, column: 10, scope: !5208)
!5217 = !DILocation(line: 1260, column: 15, scope: !5208)
!5218 = !DILocation(line: 1260, column: 3, scope: !5208)
!5219 = !DILocation(line: 1261, column: 7, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 1261, column: 7)
!5221 = !DILocation(line: 1261, column: 7, scope: !5208)
!5222 = !DILocation(line: 1262, column: 4, scope: !5220)
!5223 = !DILocation(line: 1263, column: 2, scope: !5208)
!5224 = !DILocation(line: 1265, column: 6, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 1265, column: 6)
!5226 = !DILocation(line: 1265, column: 12, scope: !5225)
!5227 = !DILocation(line: 1265, column: 18, scope: !5225)
!5228 = !DILocation(line: 1265, column: 47, scope: !5225)
!5229 = !DILocation(line: 1266, column: 4, scope: !5225)
!5230 = !DILocation(line: 1266, column: 10, scope: !5225)
!5231 = !DILocation(line: 1266, column: 16, scope: !5225)
!5232 = !DILocation(line: 1266, column: 45, scope: !5225)
!5233 = !DILocation(line: 1267, column: 4, scope: !5225)
!5234 = !DILocation(line: 1267, column: 10, scope: !5225)
!5235 = !DILocation(line: 1267, column: 16, scope: !5225)
!5236 = !DILocation(line: 1267, column: 45, scope: !5225)
!5237 = !DILocation(line: 1268, column: 4, scope: !5225)
!5238 = !DILocation(line: 1268, column: 10, scope: !5225)
!5239 = !DILocation(line: 1268, column: 16, scope: !5225)
!5240 = !DILocation(line: 1265, column: 6, scope: !5185)
!5241 = !DILocation(line: 1269, column: 3, scope: !5225)
!5242 = !DILocation(line: 1271, column: 24, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 1271, column: 6)
!5244 = !DILocation(line: 1271, column: 6, scope: !5243)
!5245 = !DILocation(line: 1271, column: 30, scope: !5243)
!5246 = !DILocation(line: 1271, column: 6, scope: !5185)
!5247 = !DILocation(line: 1272, column: 3, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 1271, column: 35)
!5249 = !DILocation(line: 1274, column: 3, scope: !5248)
!5250 = !DILocation(line: 1276, column: 6, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5185, file: !3, line: 1276, column: 6)
!5252 = !DILocation(line: 1276, column: 12, scope: !5251)
!5253 = !DILocation(line: 1276, column: 18, scope: !5251)
!5254 = !DILocation(line: 1276, column: 6, scope: !5185)
!5255 = !DILocation(line: 1277, column: 26, scope: !5251)
!5256 = !DILocation(line: 1277, column: 3, scope: !5251)
!5257 = !DILocation(line: 1278, column: 11, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 1278, column: 11)
!5259 = !DILocation(line: 1278, column: 17, scope: !5258)
!5260 = !DILocation(line: 1278, column: 23, scope: !5258)
!5261 = !DILocation(line: 1278, column: 11, scope: !5251)
!5262 = !DILocation(line: 1279, column: 26, scope: !5258)
!5263 = !DILocation(line: 1279, column: 3, scope: !5258)
!5264 = !DILocation(line: 1280, column: 11, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5258, file: !3, line: 1280, column: 11)
!5266 = !DILocation(line: 1280, column: 17, scope: !5265)
!5267 = !DILocation(line: 1280, column: 23, scope: !5265)
!5268 = !DILocation(line: 1280, column: 11, scope: !5258)
!5269 = !DILocation(line: 1281, column: 26, scope: !5265)
!5270 = !DILocation(line: 1281, column: 3, scope: !5265)
!5271 = !DILocation(line: 1282, column: 11, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5265, file: !3, line: 1282, column: 11)
!5273 = !DILocation(line: 1282, column: 17, scope: !5272)
!5274 = !DILocation(line: 1282, column: 23, scope: !5272)
!5275 = !DILocation(line: 1282, column: 11, scope: !5265)
!5276 = !DILocation(line: 1283, column: 26, scope: !5272)
!5277 = !DILocation(line: 1283, column: 3, scope: !5272)
!5278 = !DILocation(line: 1284, column: 21, scope: !5185)
!5279 = !DILocation(line: 1284, column: 2, scope: !5185)
!5280 = !DILocation(line: 1285, column: 1, scope: !5185)
!5281 = distinct !DISubprogram(name: "amd_chipset_sb_type_init", scope: !3, file: !3, line: 151, type: !5282, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5282 = !DISubroutineType(types: !5283)
!5283 = !{!183, !5284}
!5284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!5285 = !DILocalVariable(name: "pinfo", arg: 1, scope: !5281, file: !3, line: 151, type: !5284)
!5286 = !DILocation(line: 151, column: 62, scope: !5281)
!5287 = !DILocalVariable(name: "rev", scope: !5281, file: !3, line: 153, type: !1353)
!5288 = !DILocation(line: 153, column: 5, scope: !5281)
!5289 = !DILocation(line: 154, column: 2, scope: !5281)
!5290 = !DILocation(line: 154, column: 9, scope: !5281)
!5291 = !DILocation(line: 154, column: 17, scope: !5281)
!5292 = !DILocation(line: 154, column: 21, scope: !5281)
!5293 = !DILocation(line: 156, column: 21, scope: !5281)
!5294 = !DILocation(line: 156, column: 2, scope: !5281)
!5295 = !DILocation(line: 156, column: 9, scope: !5281)
!5296 = !DILocation(line: 156, column: 19, scope: !5281)
!5297 = !DILocation(line: 158, column: 6, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5281, file: !3, line: 158, column: 6)
!5299 = !DILocation(line: 158, column: 13, scope: !5298)
!5300 = !DILocation(line: 158, column: 6, scope: !5281)
!5301 = !DILocation(line: 159, column: 9, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 158, column: 24)
!5303 = !DILocation(line: 159, column: 16, scope: !5302)
!5304 = !DILocation(line: 159, column: 27, scope: !5302)
!5305 = !DILocation(line: 159, column: 7, scope: !5302)
!5306 = !DILocation(line: 160, column: 7, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5302, file: !3, line: 160, column: 7)
!5308 = !DILocation(line: 160, column: 11, scope: !5307)
!5309 = !DILocation(line: 160, column: 19, scope: !5307)
!5310 = !DILocation(line: 160, column: 22, scope: !5307)
!5311 = !DILocation(line: 160, column: 26, scope: !5307)
!5312 = !DILocation(line: 160, column: 7, scope: !5302)
!5313 = !DILocation(line: 161, column: 4, scope: !5307)
!5314 = !DILocation(line: 161, column: 11, scope: !5307)
!5315 = !DILocation(line: 161, column: 19, scope: !5307)
!5316 = !DILocation(line: 161, column: 23, scope: !5307)
!5317 = !DILocation(line: 162, column: 12, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 162, column: 12)
!5319 = !DILocation(line: 162, column: 16, scope: !5318)
!5320 = !DILocation(line: 162, column: 24, scope: !5318)
!5321 = !DILocation(line: 162, column: 27, scope: !5318)
!5322 = !DILocation(line: 162, column: 31, scope: !5318)
!5323 = !DILocation(line: 162, column: 12, scope: !5307)
!5324 = !DILocation(line: 163, column: 4, scope: !5318)
!5325 = !DILocation(line: 163, column: 11, scope: !5318)
!5326 = !DILocation(line: 163, column: 19, scope: !5318)
!5327 = !DILocation(line: 163, column: 23, scope: !5318)
!5328 = !DILocation(line: 164, column: 12, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5318, file: !3, line: 164, column: 12)
!5330 = !DILocation(line: 164, column: 16, scope: !5329)
!5331 = !DILocation(line: 164, column: 24, scope: !5329)
!5332 = !DILocation(line: 164, column: 27, scope: !5329)
!5333 = !DILocation(line: 164, column: 31, scope: !5329)
!5334 = !DILocation(line: 164, column: 12, scope: !5318)
!5335 = !DILocation(line: 165, column: 4, scope: !5329)
!5336 = !DILocation(line: 165, column: 11, scope: !5329)
!5337 = !DILocation(line: 165, column: 19, scope: !5329)
!5338 = !DILocation(line: 165, column: 23, scope: !5329)
!5339 = !DILocation(line: 166, column: 2, scope: !5302)
!5340 = !DILocation(line: 167, column: 22, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 166, column: 9)
!5342 = !DILocation(line: 167, column: 3, scope: !5341)
!5343 = !DILocation(line: 167, column: 10, scope: !5341)
!5344 = !DILocation(line: 167, column: 20, scope: !5341)
!5345 = !DILocation(line: 170, column: 7, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 170, column: 7)
!5347 = !DILocation(line: 170, column: 14, scope: !5346)
!5348 = !DILocation(line: 170, column: 7, scope: !5341)
!5349 = !DILocation(line: 171, column: 10, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5346, file: !3, line: 170, column: 25)
!5351 = !DILocation(line: 171, column: 17, scope: !5350)
!5352 = !DILocation(line: 171, column: 28, scope: !5350)
!5353 = !DILocation(line: 171, column: 8, scope: !5350)
!5354 = !DILocation(line: 172, column: 8, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 172, column: 8)
!5356 = !DILocation(line: 172, column: 12, scope: !5355)
!5357 = !DILocation(line: 172, column: 20, scope: !5355)
!5358 = !DILocation(line: 172, column: 23, scope: !5355)
!5359 = !DILocation(line: 172, column: 27, scope: !5355)
!5360 = !DILocation(line: 172, column: 8, scope: !5350)
!5361 = !DILocation(line: 173, column: 5, scope: !5355)
!5362 = !DILocation(line: 173, column: 12, scope: !5355)
!5363 = !DILocation(line: 173, column: 20, scope: !5355)
!5364 = !DILocation(line: 173, column: 24, scope: !5355)
!5365 = !DILocation(line: 174, column: 13, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5355, file: !3, line: 174, column: 13)
!5367 = !DILocation(line: 174, column: 17, scope: !5366)
!5368 = !DILocation(line: 174, column: 25, scope: !5366)
!5369 = !DILocation(line: 174, column: 28, scope: !5366)
!5370 = !DILocation(line: 174, column: 32, scope: !5366)
!5371 = !DILocation(line: 174, column: 13, scope: !5355)
!5372 = !DILocation(line: 175, column: 5, scope: !5366)
!5373 = !DILocation(line: 175, column: 12, scope: !5366)
!5374 = !DILocation(line: 175, column: 20, scope: !5366)
!5375 = !DILocation(line: 175, column: 24, scope: !5366)
!5376 = !DILocation(line: 176, column: 13, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 176, column: 13)
!5378 = !DILocation(line: 176, column: 17, scope: !5377)
!5379 = !DILocation(line: 176, column: 25, scope: !5377)
!5380 = !DILocation(line: 176, column: 28, scope: !5377)
!5381 = !DILocation(line: 176, column: 32, scope: !5377)
!5382 = !DILocation(line: 176, column: 13, scope: !5366)
!5383 = !DILocation(line: 177, column: 5, scope: !5377)
!5384 = !DILocation(line: 177, column: 12, scope: !5377)
!5385 = !DILocation(line: 177, column: 20, scope: !5377)
!5386 = !DILocation(line: 177, column: 24, scope: !5377)
!5387 = !DILocation(line: 178, column: 3, scope: !5350)
!5388 = !DILocation(line: 179, column: 23, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5346, file: !3, line: 178, column: 10)
!5390 = !DILocation(line: 179, column: 4, scope: !5389)
!5391 = !DILocation(line: 179, column: 11, scope: !5389)
!5392 = !DILocation(line: 179, column: 21, scope: !5389)
!5393 = !DILocation(line: 181, column: 8, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 181, column: 8)
!5395 = !DILocation(line: 181, column: 15, scope: !5394)
!5396 = !DILocation(line: 181, column: 8, scope: !5389)
!5397 = !DILocation(line: 182, column: 11, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 181, column: 26)
!5399 = !DILocation(line: 182, column: 18, scope: !5398)
!5400 = !DILocation(line: 182, column: 29, scope: !5398)
!5401 = !DILocation(line: 182, column: 9, scope: !5398)
!5402 = !DILocation(line: 183, column: 5, scope: !5398)
!5403 = !DILocation(line: 183, column: 12, scope: !5398)
!5404 = !DILocation(line: 183, column: 20, scope: !5398)
!5405 = !DILocation(line: 183, column: 24, scope: !5398)
!5406 = !DILocation(line: 184, column: 4, scope: !5398)
!5407 = !DILocation(line: 185, column: 5, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 184, column: 11)
!5409 = !DILocation(line: 185, column: 12, scope: !5408)
!5410 = !DILocation(line: 185, column: 20, scope: !5408)
!5411 = !DILocation(line: 185, column: 24, scope: !5408)
!5412 = !DILocation(line: 186, column: 5, scope: !5408)
!5413 = !DILocation(line: 190, column: 23, scope: !5281)
!5414 = !DILocation(line: 190, column: 2, scope: !5281)
!5415 = !DILocation(line: 190, column: 9, scope: !5281)
!5416 = !DILocation(line: 190, column: 17, scope: !5281)
!5417 = !DILocation(line: 190, column: 21, scope: !5281)
!5418 = !DILocation(line: 191, column: 2, scope: !5281)
!5419 = !DILocation(line: 192, column: 1, scope: !5281)
!5420 = distinct !DISubprogram(name: "outb_p", scope: !5054, file: !5054, line: 334, type: !5421, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5421 = !DISubroutineType(types: !5422)
!5422 = !{null, !212, !183}
!5423 = !DILocalVariable(name: "value", arg: 1, scope: !5420, file: !5054, line: 334, type: !212)
!5424 = !DILocation(line: 334, column: 1, scope: !5420)
!5425 = !DILocalVariable(name: "port", arg: 2, scope: !5420, file: !5054, line: 334, type: !183)
!5426 = distinct !DISubprogram(name: "inb_p", scope: !5054, file: !5054, line: 334, type: !5427, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5427 = !DISubroutineType(types: !5428)
!5428 = !{!212, !183}
!5429 = !DILocalVariable(name: "port", arg: 1, scope: !5426, file: !5054, line: 334, type: !183)
!5430 = !DILocation(line: 334, column: 1, scope: !5426)
!5431 = !DILocalVariable(name: "value", scope: !5426, file: !5054, line: 334, type: !212)
!5432 = distinct !DISubprogram(name: "outl_p", scope: !5054, file: !5054, line: 336, type: !5433, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5433 = !DISubroutineType(types: !5434)
!5434 = !{null, !7, !183}
!5435 = !DILocalVariable(name: "value", arg: 1, scope: !5432, file: !5054, line: 336, type: !7)
!5436 = !DILocation(line: 336, column: 1, scope: !5432)
!5437 = !DILocalVariable(name: "port", arg: 2, scope: !5432, file: !5054, line: 336, type: !183)
!5438 = distinct !DISubprogram(name: "inl_p", scope: !5054, file: !5054, line: 336, type: !5439, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5439 = !DISubroutineType(types: !5440)
!5440 = !{!7, !183}
!5441 = !DILocalVariable(name: "port", arg: 1, scope: !5438, file: !5054, line: 336, type: !183)
!5442 = !DILocation(line: 336, column: 1, scope: !5438)
!5443 = !DILocalVariable(name: "value", scope: !5438, file: !5054, line: 336, type: !7)
!5444 = distinct !DISubprogram(name: "outl", scope: !5054, file: !5054, line: 336, type: !5433, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5445 = !DILocalVariable(name: "value", arg: 1, scope: !5444, file: !5054, line: 336, type: !7)
!5446 = !DILocation(line: 336, column: 1, scope: !5444)
!5447 = !DILocalVariable(name: "port", arg: 2, scope: !5444, file: !5054, line: 336, type: !183)
!5448 = !{i32 -2143550591}
!5449 = distinct !DISubprogram(name: "inl", scope: !5054, file: !5054, line: 336, type: !5439, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5450 = !DILocalVariable(name: "port", arg: 1, scope: !5449, file: !5054, line: 336, type: !183)
!5451 = !DILocation(line: 336, column: 1, scope: !5449)
!5452 = !DILocalVariable(name: "value", scope: !5449, file: !5054, line: 336, type: !7)
!5453 = !{i32 -2143550389}
!5454 = distinct !DISubprogram(name: "outb", scope: !5054, file: !5054, line: 334, type: !5421, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5455 = !DILocalVariable(name: "value", arg: 1, scope: !5454, file: !5054, line: 334, type: !212)
!5456 = !DILocation(line: 334, column: 1, scope: !5454)
!5457 = !DILocalVariable(name: "port", arg: 2, scope: !5454, file: !5054, line: 334, type: !183)
!5458 = !{i32 -2143556087}
!5459 = distinct !DISubprogram(name: "slow_down_io", scope: !4889, file: !4889, line: 40, type: !1879, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5460 = !DILocation(line: 42, column: 13, scope: !5459)
!5461 = !DILocation(line: 42, column: 2, scope: !5459)
!5462 = !DILocation(line: 48, column: 1, scope: !5459)
!5463 = distinct !DISubprogram(name: "inb", scope: !5054, file: !5054, line: 334, type: !5427, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5464 = !DILocalVariable(name: "port", arg: 1, scope: !5463, file: !5054, line: 334, type: !183)
!5465 = !DILocation(line: 334, column: 1, scope: !5463)
!5466 = !DILocalVariable(name: "value", scope: !5463, file: !5054, line: 334, type: !212)
!5467 = !{i32 -2143555885}
!5468 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4889, file: !4889, line: 646, type: !4890, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5469 = !DILocalVariable(name: "__ret", scope: !5470, file: !4889, line: 648, type: !166)
!5470 = distinct !DILexicalBlock(scope: !5468, file: !4889, line: 648, column: 9)
!5471 = !DILocation(line: 648, column: 9, scope: !5470)
!5472 = !DILocalVariable(name: "__edi", scope: !5470, file: !4889, line: 648, type: !166)
!5473 = !DILocalVariable(name: "__esi", scope: !5470, file: !4889, line: 648, type: !166)
!5474 = !DILocalVariable(name: "__edx", scope: !5470, file: !4889, line: 648, type: !166)
!5475 = !DILocalVariable(name: "__ecx", scope: !5470, file: !4889, line: 648, type: !166)
!5476 = !DILocalVariable(name: "__eax", scope: !5470, file: !4889, line: 648, type: !166)
!5477 = !DILocation(line: 648, column: 9, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5479, file: !4889, line: 648, column: 9)
!5479 = distinct !DILexicalBlock(scope: !5470, file: !4889, line: 648, column: 9)
!5480 = !{i32 -2145605571, i32 -2145603256, i32 -2145603022, i32 -2145602971, i32 -2145602943, i32 -2145602918, i32 -2145603234, i32 -2145603221, i32 -2145602783, i32 -2145602664, i32 -2145603129, i32 -2145603102, i32 -2145603074, i32 -2145603044}
!5481 = !DILocalVariable(name: "__mask", scope: !5482, file: !4889, line: 648, type: !166)
!5482 = distinct !DILexicalBlock(scope: !5478, file: !4889, line: 648, column: 9)
!5483 = !DILocation(line: 648, column: 9, scope: !5482)
!5484 = !DILocation(line: 648, column: 9, scope: !5479)
!5485 = !DILocation(line: 648, column: 2, scope: !5468)
!5486 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4889, file: !4889, line: 656, type: !1879, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5487 = !DILocalVariable(name: "__edi", scope: !5488, file: !4889, line: 658, type: !166)
!5488 = distinct !DILexicalBlock(scope: !5486, file: !4889, line: 658, column: 2)
!5489 = !DILocation(line: 658, column: 2, scope: !5488)
!5490 = !DILocalVariable(name: "__esi", scope: !5488, file: !4889, line: 658, type: !166)
!5491 = !DILocalVariable(name: "__edx", scope: !5488, file: !4889, line: 658, type: !166)
!5492 = !DILocalVariable(name: "__ecx", scope: !5488, file: !4889, line: 658, type: !166)
!5493 = !DILocalVariable(name: "__eax", scope: !5488, file: !4889, line: 658, type: !166)
!5494 = !{i32 -2145598477, i32 -2145597745, i32 -2145597511, i32 -2145597460, i32 -2145597432, i32 -2145597407, i32 -2145597723, i32 -2145597710, i32 -2145597272, i32 -2145597153, i32 -2145597618, i32 -2145597591, i32 -2145597563, i32 -2145597533}
!5495 = !DILocation(line: 659, column: 1, scope: !5486)
!5496 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4889, file: !4889, line: 651, type: !5497, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5497 = !DISubroutineType(types: !5498)
!5498 = !{null, !166}
!5499 = !DILocalVariable(name: "f", arg: 1, scope: !5496, file: !4889, line: 651, type: !166)
!5500 = !DILocation(line: 651, column: 65, scope: !5496)
!5501 = !DILocalVariable(name: "__edi", scope: !5502, file: !4889, line: 653, type: !166)
!5502 = distinct !DILexicalBlock(scope: !5496, file: !4889, line: 653, column: 2)
!5503 = !DILocation(line: 653, column: 2, scope: !5502)
!5504 = !DILocalVariable(name: "__esi", scope: !5502, file: !4889, line: 653, type: !166)
!5505 = !DILocalVariable(name: "__edx", scope: !5502, file: !4889, line: 653, type: !166)
!5506 = !DILocalVariable(name: "__ecx", scope: !5502, file: !4889, line: 653, type: !166)
!5507 = !DILocalVariable(name: "__eax", scope: !5502, file: !4889, line: 653, type: !166)
!5508 = !{i32 -2145601104, i32 -2145600354, i32 -2145600120, i32 -2145600069, i32 -2145600041, i32 -2145600016, i32 -2145600332, i32 -2145600319, i32 -2145599881, i32 -2145599762, i32 -2145600227, i32 -2145600200, i32 -2145600172, i32 -2145600142}
!5509 = !DILocation(line: 654, column: 1, scope: !5496)
!5510 = distinct !DISubprogram(name: "of_node_put", scope: !3667, file: !3667, line: 129, type: !5511, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5511 = !DISubroutineType(types: !5512)
!5512 = !{null, !3665}
!5513 = !DILocalVariable(name: "node", arg: 1, scope: !5510, file: !3667, line: 129, type: !3665)
!5514 = !DILocation(line: 129, column: 52, scope: !5510)
!5515 = !DILocation(line: 129, column: 60, scope: !5510)
!5516 = distinct !DISubprogram(name: "quirk_usb_handoff_uhci", scope: !3, file: !3, line: 726, type: !3976, scopeLine: 727, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5517 = !DILocalVariable(name: "pdev", arg: 1, scope: !5516, file: !3, line: 726, type: !125)
!5518 = !DILocation(line: 726, column: 52, scope: !5516)
!5519 = !DILocalVariable(name: "base", scope: !5516, file: !3, line: 728, type: !166)
!5520 = !DILocation(line: 728, column: 16, scope: !5516)
!5521 = !DILocalVariable(name: "i", scope: !5516, file: !3, line: 729, type: !183)
!5522 = !DILocation(line: 729, column: 6, scope: !5516)
!5523 = !DILocation(line: 731, column: 7, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5516, file: !3, line: 731, column: 6)
!5525 = !DILocation(line: 731, column: 6, scope: !5516)
!5526 = !DILocation(line: 732, column: 3, scope: !5524)
!5527 = !DILocation(line: 734, column: 9, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5516, file: !3, line: 734, column: 2)
!5529 = !DILocation(line: 734, column: 7, scope: !5528)
!5530 = !DILocation(line: 734, column: 14, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 734, column: 2)
!5532 = !DILocation(line: 734, column: 16, scope: !5531)
!5533 = !DILocation(line: 734, column: 2, scope: !5528)
!5534 = !DILocation(line: 735, column: 8, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 735, column: 7)
!5536 = !DILocation(line: 735, column: 36, scope: !5535)
!5537 = !DILocation(line: 735, column: 7, scope: !5531)
!5538 = !DILocation(line: 736, column: 11, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 735, column: 54)
!5540 = !DILocation(line: 736, column: 9, scope: !5539)
!5541 = !DILocation(line: 737, column: 4, scope: !5539)
!5542 = !DILocation(line: 735, column: 51, scope: !5535)
!5543 = !DILocation(line: 734, column: 37, scope: !5531)
!5544 = !DILocation(line: 734, column: 2, scope: !5531)
!5545 = distinct !{!5545, !5533, !5546}
!5546 = !DILocation(line: 738, column: 3, scope: !5528)
!5547 = !DILocation(line: 740, column: 6, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5516, file: !3, line: 740, column: 6)
!5549 = !DILocation(line: 740, column: 6, scope: !5516)
!5550 = !DILocation(line: 741, column: 27, scope: !5548)
!5551 = !DILocation(line: 741, column: 33, scope: !5548)
!5552 = !DILocation(line: 741, column: 3, scope: !5548)
!5553 = !DILocation(line: 742, column: 1, scope: !5516)
!5554 = distinct !DISubprogram(name: "quirk_usb_handoff_ohci", scope: !3, file: !3, line: 749, type: !3976, scopeLine: 750, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5555 = !DILocalVariable(name: "pdev", arg: 1, scope: !5554, file: !3, line: 749, type: !125)
!5556 = !DILocation(line: 749, column: 52, scope: !5554)
!5557 = !DILocalVariable(name: "base", scope: !5554, file: !3, line: 751, type: !124)
!5558 = !DILocation(line: 751, column: 16, scope: !5554)
!5559 = !DILocalVariable(name: "control", scope: !5554, file: !3, line: 752, type: !197)
!5560 = !DILocation(line: 752, column: 6, scope: !5554)
!5561 = !DILocalVariable(name: "fminterval", scope: !5554, file: !3, line: 753, type: !197)
!5562 = !DILocation(line: 753, column: 6, scope: !5554)
!5563 = !DILocalVariable(name: "no_fminterval", scope: !5554, file: !3, line: 754, type: !489)
!5564 = !DILocation(line: 754, column: 7, scope: !5554)
!5565 = !DILocalVariable(name: "cnt", scope: !5554, file: !3, line: 755, type: !183)
!5566 = !DILocation(line: 755, column: 6, scope: !5554)
!5567 = !DILocation(line: 757, column: 29, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 757, column: 6)
!5569 = !DILocation(line: 757, column: 7, scope: !5568)
!5570 = !DILocation(line: 757, column: 6, scope: !5554)
!5571 = !DILocation(line: 758, column: 3, scope: !5568)
!5572 = !DILocation(line: 760, column: 25, scope: !5554)
!5573 = !DILocation(line: 760, column: 9, scope: !5554)
!5574 = !DILocation(line: 760, column: 7, scope: !5554)
!5575 = !DILocation(line: 761, column: 6, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 761, column: 6)
!5577 = !DILocation(line: 761, column: 11, scope: !5576)
!5578 = !DILocation(line: 761, column: 6, scope: !5554)
!5579 = !DILocation(line: 762, column: 3, scope: !5576)
!5580 = !DILocation(line: 768, column: 6, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 768, column: 6)
!5582 = !DILocation(line: 768, column: 12, scope: !5581)
!5583 = !DILocation(line: 768, column: 19, scope: !5581)
!5584 = !DILocation(line: 768, column: 39, scope: !5581)
!5585 = !DILocation(line: 768, column: 42, scope: !5581)
!5586 = !DILocation(line: 768, column: 48, scope: !5581)
!5587 = !DILocation(line: 768, column: 55, scope: !5581)
!5588 = !DILocation(line: 768, column: 6, scope: !5554)
!5589 = !DILocation(line: 769, column: 17, scope: !5581)
!5590 = !DILocation(line: 769, column: 3, scope: !5581)
!5591 = !DILocation(line: 771, column: 18, scope: !5554)
!5592 = !DILocation(line: 771, column: 23, scope: !5554)
!5593 = !DILocation(line: 771, column: 12, scope: !5554)
!5594 = !DILocation(line: 771, column: 10, scope: !5554)
!5595 = !DILocation(line: 779, column: 6, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 779, column: 6)
!5597 = !DILocation(line: 779, column: 14, scope: !5596)
!5598 = !DILocation(line: 779, column: 6, scope: !5554)
!5599 = !DILocalVariable(name: "wait_time", scope: !5600, file: !3, line: 780, type: !183)
!5600 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 779, column: 30)
!5601 = !DILocation(line: 780, column: 7, scope: !5600)
!5602 = !DILocation(line: 781, column: 24, scope: !5600)
!5603 = !DILocation(line: 781, column: 29, scope: !5600)
!5604 = !DILocation(line: 781, column: 3, scope: !5600)
!5605 = !DILocation(line: 782, column: 20, scope: !5600)
!5606 = !DILocation(line: 782, column: 25, scope: !5600)
!5607 = !DILocation(line: 782, column: 3, scope: !5600)
!5608 = !DILocation(line: 783, column: 3, scope: !5600)
!5609 = !DILocation(line: 783, column: 10, scope: !5600)
!5610 = !DILocation(line: 783, column: 20, scope: !5600)
!5611 = !DILocation(line: 783, column: 24, scope: !5600)
!5612 = !DILocation(line: 784, column: 11, scope: !5600)
!5613 = !DILocation(line: 784, column: 16, scope: !5600)
!5614 = !DILocation(line: 784, column: 5, scope: !5600)
!5615 = !DILocation(line: 784, column: 32, scope: !5600)
!5616 = !DILocation(line: 0, scope: !5600)
!5617 = !DILocation(line: 785, column: 14, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5600, file: !3, line: 784, column: 48)
!5619 = !DILocation(line: 786, column: 4, scope: !5618)
!5620 = distinct !{!5620, !5608, !5621}
!5621 = !DILocation(line: 787, column: 3, scope: !5600)
!5622 = !DILocation(line: 788, column: 7, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5600, file: !3, line: 788, column: 7)
!5624 = !DILocation(line: 788, column: 17, scope: !5623)
!5625 = !DILocation(line: 788, column: 7, scope: !5600)
!5626 = !DILocation(line: 789, column: 4, scope: !5623)
!5627 = !DILocation(line: 792, column: 2, scope: !5600)
!5628 = !DILocation(line: 796, column: 19, scope: !5554)
!5629 = !DILocation(line: 796, column: 24, scope: !5554)
!5630 = !DILocation(line: 796, column: 2, scope: !5554)
!5631 = !DILocation(line: 799, column: 9, scope: !5554)
!5632 = !DILocation(line: 799, column: 17, scope: !5554)
!5633 = !DILocation(line: 799, column: 35, scope: !5554)
!5634 = !DILocation(line: 799, column: 40, scope: !5554)
!5635 = !DILocation(line: 799, column: 2, scope: !5554)
!5636 = !DILocation(line: 800, column: 8, scope: !5554)
!5637 = !DILocation(line: 800, column: 13, scope: !5554)
!5638 = !DILocation(line: 800, column: 2, scope: !5554)
!5639 = !DILocation(line: 803, column: 7, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 803, column: 6)
!5641 = !DILocation(line: 803, column: 6, scope: !5554)
!5642 = !DILocation(line: 804, column: 22, scope: !5640)
!5643 = !DILocation(line: 804, column: 27, scope: !5640)
!5644 = !DILocation(line: 804, column: 16, scope: !5640)
!5645 = !DILocation(line: 804, column: 14, scope: !5640)
!5646 = !DILocation(line: 804, column: 3, scope: !5640)
!5647 = !DILocation(line: 806, column: 19, scope: !5554)
!5648 = !DILocation(line: 806, column: 24, scope: !5554)
!5649 = !DILocation(line: 806, column: 2, scope: !5554)
!5650 = !DILocation(line: 809, column: 11, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 809, column: 2)
!5652 = !DILocation(line: 809, column: 7, scope: !5651)
!5653 = !DILocation(line: 809, column: 17, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5651, file: !3, line: 809, column: 2)
!5655 = !DILocation(line: 809, column: 21, scope: !5654)
!5656 = !DILocation(line: 809, column: 2, scope: !5651)
!5657 = !DILocation(line: 810, column: 14, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 810, column: 7)
!5659 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 809, column: 33)
!5660 = !DILocation(line: 810, column: 19, scope: !5658)
!5661 = !DILocation(line: 810, column: 8, scope: !5658)
!5662 = !DILocation(line: 810, column: 37, scope: !5658)
!5663 = !DILocation(line: 810, column: 49, scope: !5658)
!5664 = !DILocation(line: 810, column: 7, scope: !5659)
!5665 = !DILocation(line: 811, column: 4, scope: !5658)
!5666 = !DILocation(line: 812, column: 3, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5668, file: !3, line: 812, column: 3)
!5668 = distinct !DILexicalBlock(scope: !5669, file: !3, line: 812, column: 3)
!5669 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 812, column: 3)
!5670 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 812, column: 3)
!5671 = !DILocation(line: 813, column: 2, scope: !5659)
!5672 = !DILocation(line: 809, column: 26, scope: !5654)
!5673 = !DILocation(line: 809, column: 2, scope: !5654)
!5674 = distinct !{!5674, !5656, !5675}
!5675 = !DILocation(line: 813, column: 2, scope: !5651)
!5676 = !DILocation(line: 815, column: 7, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 815, column: 6)
!5678 = !DILocation(line: 815, column: 6, scope: !5554)
!5679 = !DILocation(line: 816, column: 10, scope: !5677)
!5680 = !DILocation(line: 816, column: 22, scope: !5677)
!5681 = !DILocation(line: 816, column: 27, scope: !5677)
!5682 = !DILocation(line: 816, column: 3, scope: !5677)
!5683 = !DILocation(line: 819, column: 10, scope: !5554)
!5684 = !DILocation(line: 819, column: 2, scope: !5554)
!5685 = !DILocation(line: 820, column: 1, scope: !5554)
!5686 = distinct !DISubprogram(name: "quirk_usb_disable_ehci", scope: !3, file: !3, line: 929, type: !3976, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5687 = !DILocalVariable(name: "pdev", arg: 1, scope: !5686, file: !3, line: 929, type: !125)
!5688 = !DILocation(line: 929, column: 52, scope: !5686)
!5689 = !DILocalVariable(name: "base", scope: !5686, file: !3, line: 931, type: !124)
!5690 = !DILocation(line: 931, column: 16, scope: !5686)
!5691 = !DILocalVariable(name: "op_reg_base", scope: !5686, file: !3, line: 931, type: !124)
!5692 = !DILocation(line: 931, column: 23, scope: !5686)
!5693 = !DILocalVariable(name: "hcc_params", scope: !5686, file: !3, line: 932, type: !197)
!5694 = !DILocation(line: 932, column: 6, scope: !5686)
!5695 = !DILocalVariable(name: "cap", scope: !5686, file: !3, line: 932, type: !197)
!5696 = !DILocation(line: 932, column: 18, scope: !5686)
!5697 = !DILocalVariable(name: "val", scope: !5686, file: !3, line: 932, type: !197)
!5698 = !DILocation(line: 932, column: 23, scope: !5686)
!5699 = !DILocalVariable(name: "offset", scope: !5686, file: !3, line: 933, type: !1353)
!5700 = !DILocation(line: 933, column: 5, scope: !5686)
!5701 = !DILocalVariable(name: "cap_length", scope: !5686, file: !3, line: 933, type: !1353)
!5702 = !DILocation(line: 933, column: 13, scope: !5686)
!5703 = !DILocalVariable(name: "wait_time", scope: !5686, file: !3, line: 934, type: !183)
!5704 = !DILocation(line: 934, column: 6, scope: !5686)
!5705 = !DILocalVariable(name: "count", scope: !5686, file: !3, line: 934, type: !183)
!5706 = !DILocation(line: 934, column: 17, scope: !5686)
!5707 = !DILocation(line: 936, column: 29, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 936, column: 6)
!5709 = !DILocation(line: 936, column: 7, scope: !5708)
!5710 = !DILocation(line: 936, column: 6, scope: !5686)
!5711 = !DILocation(line: 937, column: 3, scope: !5708)
!5712 = !DILocation(line: 939, column: 25, scope: !5686)
!5713 = !DILocation(line: 939, column: 9, scope: !5686)
!5714 = !DILocation(line: 939, column: 7, scope: !5686)
!5715 = !DILocation(line: 940, column: 6, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 940, column: 6)
!5717 = !DILocation(line: 940, column: 11, scope: !5716)
!5718 = !DILocation(line: 940, column: 6, scope: !5686)
!5719 = !DILocation(line: 941, column: 3, scope: !5716)
!5720 = !DILocation(line: 943, column: 21, scope: !5686)
!5721 = !DILocation(line: 943, column: 15, scope: !5686)
!5722 = !DILocation(line: 943, column: 13, scope: !5686)
!5723 = !DILocation(line: 944, column: 16, scope: !5686)
!5724 = !DILocation(line: 944, column: 23, scope: !5686)
!5725 = !DILocation(line: 944, column: 21, scope: !5686)
!5726 = !DILocation(line: 944, column: 14, scope: !5686)
!5727 = !DILocation(line: 950, column: 21, scope: !5686)
!5728 = !DILocation(line: 950, column: 26, scope: !5686)
!5729 = !DILocation(line: 950, column: 15, scope: !5686)
!5730 = !DILocation(line: 950, column: 13, scope: !5686)
!5731 = !DILocation(line: 951, column: 12, scope: !5686)
!5732 = !DILocation(line: 951, column: 23, scope: !5686)
!5733 = !DILocation(line: 951, column: 29, scope: !5686)
!5734 = !DILocation(line: 951, column: 11, scope: !5686)
!5735 = !DILocation(line: 951, column: 9, scope: !5686)
!5736 = !DILocation(line: 952, column: 2, scope: !5686)
!5737 = !DILocation(line: 952, column: 9, scope: !5686)
!5738 = !DILocation(line: 952, column: 16, scope: !5686)
!5739 = !DILocation(line: 952, column: 19, scope: !5686)
!5740 = !DILocation(line: 0, scope: !5686)
!5741 = !DILocation(line: 953, column: 25, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 952, column: 28)
!5743 = !DILocation(line: 953, column: 31, scope: !5742)
!5744 = !DILocation(line: 953, column: 3, scope: !5742)
!5745 = !DILocation(line: 955, column: 11, scope: !5742)
!5746 = !DILocation(line: 955, column: 15, scope: !5742)
!5747 = !DILocation(line: 955, column: 3, scope: !5742)
!5748 = !DILocation(line: 957, column: 22, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 955, column: 23)
!5750 = !DILocation(line: 957, column: 28, scope: !5749)
!5751 = !DILocation(line: 957, column: 41, scope: !5749)
!5752 = !DILocation(line: 957, column: 46, scope: !5749)
!5753 = !DILocation(line: 957, column: 4, scope: !5749)
!5754 = !DILocation(line: 958, column: 4, scope: !5749)
!5755 = !DILocation(line: 960, column: 8, scope: !5749)
!5756 = !DILocation(line: 960, column: 4, scope: !5749)
!5757 = !DILocation(line: 963, column: 4, scope: !5749)
!5758 = !DILocation(line: 966, column: 3, scope: !5749)
!5759 = !DILocation(line: 967, column: 13, scope: !5742)
!5760 = !DILocation(line: 967, column: 17, scope: !5742)
!5761 = !DILocation(line: 967, column: 23, scope: !5742)
!5762 = !DILocation(line: 967, column: 12, scope: !5742)
!5763 = !DILocation(line: 967, column: 10, scope: !5742)
!5764 = distinct !{!5764, !5736, !5765}
!5765 = !DILocation(line: 968, column: 2, scope: !5686)
!5766 = !DILocation(line: 969, column: 7, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 969, column: 6)
!5768 = !DILocation(line: 969, column: 6, scope: !5686)
!5769 = !DILocation(line: 970, column: 27, scope: !5767)
!5770 = !DILocation(line: 970, column: 33, scope: !5767)
!5771 = !DILocation(line: 970, column: 3, scope: !5767)
!5772 = !DILocation(line: 975, column: 14, scope: !5686)
!5773 = !DILocation(line: 975, column: 26, scope: !5686)
!5774 = !DILocation(line: 975, column: 8, scope: !5686)
!5775 = !DILocation(line: 975, column: 6, scope: !5686)
!5776 = !DILocation(line: 976, column: 7, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 976, column: 6)
!5778 = !DILocation(line: 976, column: 11, scope: !5777)
!5779 = !DILocation(line: 976, column: 33, scope: !5777)
!5780 = !DILocation(line: 976, column: 6, scope: !5686)
!5781 = !DILocation(line: 977, column: 15, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 976, column: 39)
!5783 = !DILocation(line: 977, column: 27, scope: !5782)
!5784 = !DILocation(line: 977, column: 9, scope: !5782)
!5785 = !DILocation(line: 977, column: 7, scope: !5782)
!5786 = !DILocation(line: 978, column: 7, scope: !5782)
!5787 = !DILocation(line: 979, column: 10, scope: !5782)
!5788 = !DILocation(line: 979, column: 15, scope: !5782)
!5789 = !DILocation(line: 979, column: 27, scope: !5782)
!5790 = !DILocation(line: 979, column: 3, scope: !5782)
!5791 = !DILocation(line: 981, column: 13, scope: !5782)
!5792 = !DILocation(line: 982, column: 3, scope: !5782)
!5793 = !DILocation(line: 983, column: 17, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5782, file: !3, line: 982, column: 6)
!5795 = !DILocation(line: 983, column: 29, scope: !5794)
!5796 = !DILocation(line: 983, column: 4, scope: !5794)
!5797 = !DILocation(line: 984, column: 4, scope: !5798)
!5798 = distinct !DILexicalBlock(scope: !5799, file: !3, line: 984, column: 4)
!5799 = distinct !DILexicalBlock(scope: !5800, file: !3, line: 984, column: 4)
!5800 = distinct !DILexicalBlock(scope: !5801, file: !3, line: 984, column: 4)
!5801 = distinct !DILexicalBlock(scope: !5794, file: !3, line: 984, column: 4)
!5802 = !DILocation(line: 985, column: 14, scope: !5794)
!5803 = !DILocation(line: 986, column: 16, scope: !5794)
!5804 = !DILocation(line: 986, column: 28, scope: !5794)
!5805 = !DILocation(line: 986, column: 10, scope: !5794)
!5806 = !DILocation(line: 986, column: 8, scope: !5794)
!5807 = !DILocation(line: 987, column: 9, scope: !5808)
!5808 = distinct !DILexicalBlock(scope: !5794, file: !3, line: 987, column: 8)
!5809 = !DILocation(line: 987, column: 13, scope: !5808)
!5810 = !DILocation(line: 987, column: 25, scope: !5808)
!5811 = !DILocation(line: 987, column: 29, scope: !5808)
!5812 = !DILocation(line: 987, column: 33, scope: !5808)
!5813 = !DILocation(line: 987, column: 8, scope: !5794)
!5814 = !DILocation(line: 988, column: 5, scope: !5815)
!5815 = distinct !DILexicalBlock(scope: !5808, file: !3, line: 987, column: 56)
!5816 = !DILocation(line: 990, column: 3, scope: !5794)
!5817 = !DILocation(line: 990, column: 12, scope: !5782)
!5818 = !DILocation(line: 990, column: 22, scope: !5782)
!5819 = distinct !{!5819, !5792, !5820}
!5820 = !DILocation(line: 990, column: 25, scope: !5782)
!5821 = !DILocation(line: 991, column: 2, scope: !5782)
!5822 = !DILocation(line: 992, column: 12, scope: !5686)
!5823 = !DILocation(line: 992, column: 24, scope: !5686)
!5824 = !DILocation(line: 992, column: 2, scope: !5686)
!5825 = !DILocation(line: 993, column: 15, scope: !5686)
!5826 = !DILocation(line: 993, column: 27, scope: !5686)
!5827 = !DILocation(line: 993, column: 2, scope: !5686)
!5828 = !DILocation(line: 995, column: 10, scope: !5686)
!5829 = !DILocation(line: 995, column: 2, scope: !5686)
!5830 = !DILocation(line: 996, column: 1, scope: !5686)
!5831 = distinct !DISubprogram(name: "quirk_usb_handoff_xhci", scope: !3, file: !3, line: 1139, type: !3976, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!5832 = !DILocalVariable(name: "pdev", arg: 1, scope: !5831, file: !3, line: 1139, type: !125)
!5833 = !DILocation(line: 1139, column: 52, scope: !5831)
!5834 = !DILocalVariable(name: "base", scope: !5831, file: !3, line: 1141, type: !124)
!5835 = !DILocation(line: 1141, column: 16, scope: !5831)
!5836 = !DILocalVariable(name: "ext_cap_offset", scope: !5831, file: !3, line: 1142, type: !183)
!5837 = !DILocation(line: 1142, column: 6, scope: !5831)
!5838 = !DILocalVariable(name: "op_reg_base", scope: !5831, file: !3, line: 1143, type: !124)
!5839 = !DILocation(line: 1143, column: 16, scope: !5831)
!5840 = !DILocalVariable(name: "val", scope: !5831, file: !3, line: 1144, type: !197)
!5841 = !DILocation(line: 1144, column: 6, scope: !5831)
!5842 = !DILocalVariable(name: "timeout", scope: !5831, file: !3, line: 1145, type: !183)
!5843 = !DILocation(line: 1145, column: 6, scope: !5831)
!5844 = !DILocalVariable(name: "len", scope: !5831, file: !3, line: 1146, type: !183)
!5845 = !DILocation(line: 1146, column: 6, scope: !5831)
!5846 = !DILocation(line: 1146, column: 12, scope: !5831)
!5847 = !DILocation(line: 1148, column: 29, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5831, file: !3, line: 1148, column: 6)
!5849 = !DILocation(line: 1148, column: 7, scope: !5848)
!5850 = !DILocation(line: 1148, column: 6, scope: !5831)
!5851 = !DILocation(line: 1149, column: 3, scope: !5848)
!5852 = !DILocation(line: 1151, column: 17, scope: !5831)
!5853 = !DILocation(line: 1151, column: 46, scope: !5831)
!5854 = !DILocation(line: 1151, column: 9, scope: !5831)
!5855 = !DILocation(line: 1151, column: 7, scope: !5831)
!5856 = !DILocation(line: 1152, column: 6, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5831, file: !3, line: 1152, column: 6)
!5858 = !DILocation(line: 1152, column: 11, scope: !5857)
!5859 = !DILocation(line: 1152, column: 6, scope: !5831)
!5860 = !DILocation(line: 1153, column: 3, scope: !5857)
!5861 = !DILocation(line: 1159, column: 42, scope: !5831)
!5862 = !DILocation(line: 1159, column: 19, scope: !5831)
!5863 = !DILocation(line: 1159, column: 17, scope: !5831)
!5864 = !DILocation(line: 1161, column: 7, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5831, file: !3, line: 1161, column: 6)
!5866 = !DILocation(line: 1161, column: 6, scope: !5831)
!5867 = !DILocation(line: 1162, column: 3, scope: !5865)
!5868 = !DILocation(line: 1164, column: 7, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5831, file: !3, line: 1164, column: 6)
!5870 = !DILocation(line: 1164, column: 22, scope: !5869)
!5871 = !DILocation(line: 1164, column: 39, scope: !5869)
!5872 = !DILocation(line: 1164, column: 37, scope: !5869)
!5873 = !DILocation(line: 1164, column: 6, scope: !5831)
!5874 = !DILocation(line: 1166, column: 3, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 1164, column: 44)
!5876 = !DILocation(line: 1167, column: 3, scope: !5875)
!5877 = !DILocation(line: 1169, column: 14, scope: !5831)
!5878 = !DILocation(line: 1169, column: 21, scope: !5831)
!5879 = !DILocation(line: 1169, column: 19, scope: !5831)
!5880 = !DILocation(line: 1169, column: 8, scope: !5831)
!5881 = !DILocation(line: 1169, column: 6, scope: !5831)
!5882 = !DILocation(line: 1172, column: 7, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5831, file: !3, line: 1172, column: 6)
!5884 = !DILocation(line: 1172, column: 13, scope: !5883)
!5885 = !DILocation(line: 1172, column: 20, scope: !5883)
!5886 = !DILocation(line: 1172, column: 40, scope: !5883)
!5887 = !DILocation(line: 1172, column: 43, scope: !5883)
!5888 = !DILocation(line: 1172, column: 49, scope: !5883)
!5889 = !DILocation(line: 1172, column: 56, scope: !5883)
!5890 = !DILocation(line: 1172, column: 67, scope: !5883)
!5891 = !DILocation(line: 1173, column: 5, scope: !5883)
!5892 = !DILocation(line: 1173, column: 11, scope: !5883)
!5893 = !DILocation(line: 1173, column: 18, scope: !5883)
!5894 = !DILocation(line: 1174, column: 5, scope: !5883)
!5895 = !DILocation(line: 1174, column: 8, scope: !5883)
!5896 = !DILocation(line: 1174, column: 14, scope: !5883)
!5897 = !DILocation(line: 1174, column: 21, scope: !5883)
!5898 = !DILocation(line: 1172, column: 6, scope: !5831)
!5899 = !DILocation(line: 1175, column: 10, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5883, file: !3, line: 1174, column: 33)
!5901 = !DILocation(line: 1175, column: 14, scope: !5900)
!5902 = !DILocation(line: 1175, column: 34, scope: !5900)
!5903 = !DILocation(line: 1175, column: 7, scope: !5900)
!5904 = !DILocation(line: 1176, column: 10, scope: !5900)
!5905 = !DILocation(line: 1176, column: 15, scope: !5900)
!5906 = !DILocation(line: 1176, column: 22, scope: !5900)
!5907 = !DILocation(line: 1176, column: 20, scope: !5900)
!5908 = !DILocation(line: 1176, column: 3, scope: !5900)
!5909 = !DILocation(line: 1177, column: 2, scope: !5900)
!5910 = !DILocation(line: 1180, column: 6, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5831, file: !3, line: 1180, column: 6)
!5912 = !DILocation(line: 1180, column: 10, scope: !5911)
!5913 = !DILocation(line: 1180, column: 6, scope: !5831)
!5914 = !DILocation(line: 1181, column: 10, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5911, file: !3, line: 1180, column: 32)
!5916 = !DILocation(line: 1181, column: 14, scope: !5915)
!5917 = !DILocation(line: 1181, column: 34, scope: !5915)
!5918 = !DILocation(line: 1181, column: 41, scope: !5915)
!5919 = !DILocation(line: 1181, column: 39, scope: !5915)
!5920 = !DILocation(line: 1181, column: 3, scope: !5915)
!5921 = !DILocation(line: 1184, column: 23, scope: !5915)
!5922 = !DILocation(line: 1184, column: 30, scope: !5915)
!5923 = !DILocation(line: 1184, column: 28, scope: !5915)
!5924 = !DILocation(line: 1184, column: 13, scope: !5915)
!5925 = !DILocation(line: 1184, column: 11, scope: !5915)
!5926 = !DILocation(line: 1188, column: 7, scope: !5927)
!5927 = distinct !DILexicalBlock(scope: !5915, file: !3, line: 1188, column: 7)
!5928 = !DILocation(line: 1188, column: 7, scope: !5915)
!5929 = !DILocation(line: 1189, column: 4, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5927, file: !3, line: 1188, column: 16)
!5931 = !DILocation(line: 1192, column: 11, scope: !5930)
!5932 = !DILocation(line: 1192, column: 15, scope: !5930)
!5933 = !DILocation(line: 1192, column: 38, scope: !5930)
!5934 = !DILocation(line: 1192, column: 45, scope: !5930)
!5935 = !DILocation(line: 1192, column: 43, scope: !5930)
!5936 = !DILocation(line: 1192, column: 4, scope: !5930)
!5937 = !DILocation(line: 1193, column: 3, scope: !5930)
!5938 = !DILocation(line: 1194, column: 2, scope: !5915)
!5939 = !DILocation(line: 1196, column: 14, scope: !5831)
!5940 = !DILocation(line: 1196, column: 21, scope: !5831)
!5941 = !DILocation(line: 1196, column: 19, scope: !5831)
!5942 = !DILocation(line: 1196, column: 36, scope: !5831)
!5943 = !DILocation(line: 1196, column: 8, scope: !5831)
!5944 = !DILocation(line: 1196, column: 6, scope: !5831)
!5945 = !DILocation(line: 1198, column: 6, scope: !5831)
!5946 = !DILocation(line: 1200, column: 6, scope: !5831)
!5947 = !DILocation(line: 1202, column: 9, scope: !5831)
!5948 = !DILocation(line: 1202, column: 14, scope: !5831)
!5949 = !DILocation(line: 1202, column: 21, scope: !5831)
!5950 = !DILocation(line: 1202, column: 19, scope: !5831)
!5951 = !DILocation(line: 1202, column: 36, scope: !5831)
!5952 = !DILocation(line: 1202, column: 2, scope: !5831)
!5953 = !DILabel(scope: !5831, name: "hc_init", file: !3, line: 1204)
!5954 = !DILocation(line: 1204, column: 1, scope: !5831)
!5955 = !DILocation(line: 1205, column: 6, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5831, file: !3, line: 1205, column: 6)
!5957 = !DILocation(line: 1205, column: 12, scope: !5956)
!5958 = !DILocation(line: 1205, column: 19, scope: !5956)
!5959 = !DILocation(line: 1205, column: 6, scope: !5831)
!5960 = !DILocation(line: 1206, column: 31, scope: !5956)
!5961 = !DILocation(line: 1206, column: 3, scope: !5956)
!5962 = !DILocation(line: 1208, column: 16, scope: !5831)
!5963 = !DILocation(line: 1208, column: 23, scope: !5831)
!5964 = !DILocation(line: 1208, column: 21, scope: !5831)
!5965 = !DILocation(line: 1208, column: 14, scope: !5831)
!5966 = !DILocation(line: 1213, column: 22, scope: !5831)
!5967 = !DILocation(line: 1213, column: 34, scope: !5831)
!5968 = !DILocation(line: 1213, column: 12, scope: !5831)
!5969 = !DILocation(line: 1213, column: 10, scope: !5831)
!5970 = !DILocation(line: 1216, column: 6, scope: !5971)
!5971 = distinct !DILexicalBlock(scope: !5831, file: !3, line: 1216, column: 6)
!5972 = !DILocation(line: 1216, column: 6, scope: !5831)
!5973 = !DILocation(line: 1217, column: 15, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5971, file: !3, line: 1216, column: 15)
!5975 = !DILocation(line: 1217, column: 27, scope: !5974)
!5976 = !DILocation(line: 1217, column: 9, scope: !5974)
!5977 = !DILocation(line: 1217, column: 7, scope: !5974)
!5978 = !DILocation(line: 1218, column: 3, scope: !5974)
!5979 = !DILocation(line: 1221, column: 2, scope: !5974)
!5980 = !DILocation(line: 1224, column: 14, scope: !5831)
!5981 = !DILocation(line: 1224, column: 26, scope: !5831)
!5982 = !DILocation(line: 1224, column: 8, scope: !5831)
!5983 = !DILocation(line: 1224, column: 6, scope: !5831)
!5984 = !DILocation(line: 1225, column: 6, scope: !5831)
!5985 = !DILocation(line: 1226, column: 9, scope: !5831)
!5986 = !DILocation(line: 1226, column: 14, scope: !5831)
!5987 = !DILocation(line: 1226, column: 26, scope: !5831)
!5988 = !DILocation(line: 1226, column: 2, scope: !5831)
!5989 = !DILocation(line: 1229, column: 22, scope: !5831)
!5990 = !DILocation(line: 1229, column: 34, scope: !5831)
!5991 = !DILocation(line: 1229, column: 12, scope: !5831)
!5992 = !DILocation(line: 1229, column: 10, scope: !5831)
!5993 = !DILocation(line: 1231, column: 6, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5831, file: !3, line: 1231, column: 6)
!5995 = !DILocation(line: 1231, column: 6, scope: !5831)
!5996 = !DILocation(line: 1232, column: 15, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 1231, column: 15)
!5998 = !DILocation(line: 1232, column: 27, scope: !5997)
!5999 = !DILocation(line: 1232, column: 9, scope: !5997)
!6000 = !DILocation(line: 1232, column: 7, scope: !5997)
!6001 = !DILocation(line: 1233, column: 3, scope: !5997)
!6002 = !DILocation(line: 1236, column: 2, scope: !5997)
!6003 = !DILabel(scope: !5831, name: "iounmap", file: !3, line: 1238)
!6004 = !DILocation(line: 1238, column: 1, scope: !5831)
!6005 = !DILocation(line: 1239, column: 10, scope: !5831)
!6006 = !DILocation(line: 1239, column: 2, scope: !5831)
!6007 = !DILocation(line: 1240, column: 1, scope: !5831)
!6008 = distinct !DISubprogram(name: "io_type_enabled", scope: !3, file: !3, line: 717, type: !6009, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!6009 = !DISubroutineType(types: !6010)
!6010 = !{!183, !125, !7}
!6011 = !DILocalVariable(name: "pdev", arg: 1, scope: !6008, file: !3, line: 717, type: !125)
!6012 = !DILocation(line: 717, column: 51, scope: !6008)
!6013 = !DILocalVariable(name: "mask", arg: 2, scope: !6008, file: !3, line: 717, type: !7)
!6014 = !DILocation(line: 717, column: 70, scope: !6008)
!6015 = !DILocalVariable(name: "cmd", scope: !6008, file: !3, line: 719, type: !862)
!6016 = !DILocation(line: 719, column: 6, scope: !6008)
!6017 = !DILocation(line: 720, column: 31, scope: !6008)
!6018 = !DILocation(line: 720, column: 10, scope: !6008)
!6019 = !DILocation(line: 720, column: 56, scope: !6008)
!6020 = !DILocation(line: 720, column: 60, scope: !6008)
!6021 = !DILocation(line: 720, column: 66, scope: !6008)
!6022 = !DILocation(line: 720, column: 64, scope: !6008)
!6023 = !DILocation(line: 0, scope: !6008)
!6024 = !DILocation(line: 720, column: 2, scope: !6008)
!6025 = distinct !DISubprogram(name: "mmio_resource_enabled", scope: !3, file: !3, line: 744, type: !3989, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!6026 = !DILocalVariable(name: "pdev", arg: 1, scope: !6025, file: !3, line: 744, type: !125)
!6027 = !DILocation(line: 744, column: 50, scope: !6025)
!6028 = !DILocalVariable(name: "idx", arg: 2, scope: !6025, file: !3, line: 744, type: !183)
!6029 = !DILocation(line: 744, column: 60, scope: !6025)
!6030 = !DILocation(line: 746, column: 9, scope: !6025)
!6031 = !DILocation(line: 746, column: 39, scope: !6025)
!6032 = !DILocation(line: 746, column: 42, scope: !6025)
!6033 = !DILocation(line: 0, scope: !6025)
!6034 = !DILocation(line: 746, column: 2, scope: !6025)
!6035 = distinct !DISubprogram(name: "readl", scope: !5054, file: !5054, line: 59, type: !6036, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!6036 = !DISubroutineType(types: !6037)
!6037 = !{!7, !6038}
!6038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6039, size: 64)
!6039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6040)
!6040 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6041 = !DILocalVariable(name: "addr", arg: 1, scope: !6035, file: !5054, line: 59, type: !6038)
!6042 = !DILocation(line: 59, column: 1, scope: !6035)
!6043 = !DILocalVariable(name: "ret", scope: !6035, file: !5054, line: 59, type: !7)
!6044 = !{i32 -2143568350}
!6045 = distinct !DISubprogram(name: "writel", scope: !5054, file: !5054, line: 67, type: !6046, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!6046 = !DISubroutineType(types: !6047)
!6047 = !{null, !7, !6048}
!6048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6040, size: 64)
!6049 = !DILocalVariable(name: "val", arg: 1, scope: !6045, file: !5054, line: 67, type: !7)
!6050 = !DILocation(line: 67, column: 1, scope: !6045)
!6051 = !DILocalVariable(name: "addr", arg: 2, scope: !6045, file: !5054, line: 67, type: !6048)
!6052 = !{i32 -2143565957}
!6053 = distinct !DISubprogram(name: "readb", scope: !5054, file: !5054, line: 57, type: !6054, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!6054 = !DISubroutineType(types: !6055)
!6055 = !{!212, !6038}
!6056 = !DILocalVariable(name: "addr", arg: 1, scope: !6053, file: !5054, line: 57, type: !6038)
!6057 = !DILocation(line: 57, column: 1, scope: !6053)
!6058 = !DILocalVariable(name: "ret", scope: !6053, file: !5054, line: 57, type: !212)
!6059 = !{i32 -2143569181}
!6060 = distinct !DISubprogram(name: "ehci_bios_handoff", scope: !3, file: !3, line: 855, type: !6061, scopeLine: 858, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!6061 = !DISubroutineType(types: !6062)
!6062 = !{null, !125, !124, !197, !1353}
!6063 = !DILocalVariable(name: "pdev", arg: 1, scope: !6060, file: !3, line: 855, type: !125)
!6064 = !DILocation(line: 855, column: 47, scope: !6060)
!6065 = !DILocalVariable(name: "op_reg_base", arg: 2, scope: !6060, file: !3, line: 856, type: !124)
!6066 = !DILocation(line: 856, column: 20, scope: !6060)
!6067 = !DILocalVariable(name: "cap", arg: 3, scope: !6060, file: !3, line: 857, type: !197)
!6068 = !DILocation(line: 857, column: 10, scope: !6060)
!6069 = !DILocalVariable(name: "offset", arg: 4, scope: !6060, file: !3, line: 857, type: !1353)
!6070 = !DILocation(line: 857, column: 18, scope: !6060)
!6071 = !DILocalVariable(name: "try_handoff", scope: !6060, file: !3, line: 859, type: !183)
!6072 = !DILocation(line: 859, column: 6, scope: !6060)
!6073 = !DILocalVariable(name: "tried_handoff", scope: !6060, file: !3, line: 859, type: !183)
!6074 = !DILocation(line: 859, column: 23, scope: !6060)
!6075 = !DILocation(line: 867, column: 6, scope: !6076)
!6076 = distinct !DILexicalBlock(scope: !6060, file: !3, line: 867, column: 6)
!6077 = !DILocation(line: 867, column: 12, scope: !6076)
!6078 = !DILocation(line: 867, column: 19, scope: !6076)
!6079 = !DILocation(line: 867, column: 29, scope: !6076)
!6080 = !DILocation(line: 867, column: 33, scope: !6076)
!6081 = !DILocation(line: 867, column: 39, scope: !6076)
!6082 = !DILocation(line: 867, column: 46, scope: !6076)
!6083 = !DILocation(line: 867, column: 56, scope: !6076)
!6084 = !DILocation(line: 868, column: 4, scope: !6076)
!6085 = !DILocation(line: 868, column: 10, scope: !6076)
!6086 = !DILocation(line: 868, column: 17, scope: !6076)
!6087 = !DILocation(line: 867, column: 6, scope: !6060)
!6088 = !DILocation(line: 869, column: 7, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !6090, file: !3, line: 869, column: 7)
!6090 = distinct !DILexicalBlock(scope: !6076, file: !3, line: 868, column: 29)
!6091 = !DILocation(line: 869, column: 7, scope: !6090)
!6092 = !DILocation(line: 870, column: 16, scope: !6089)
!6093 = !DILocation(line: 870, column: 4, scope: !6089)
!6094 = !DILocation(line: 871, column: 2, scope: !6090)
!6095 = !DILocation(line: 873, column: 6, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !6060, file: !3, line: 873, column: 6)
!6097 = !DILocation(line: 873, column: 18, scope: !6096)
!6098 = !DILocation(line: 873, column: 22, scope: !6096)
!6099 = !DILocation(line: 873, column: 26, scope: !6096)
!6100 = !DILocation(line: 873, column: 6, scope: !6060)
!6101 = !DILocation(line: 894, column: 25, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6096, file: !3, line: 873, column: 50)
!6103 = !DILocation(line: 894, column: 31, scope: !6102)
!6104 = !DILocation(line: 894, column: 38, scope: !6102)
!6105 = !DILocation(line: 894, column: 3, scope: !6102)
!6106 = !DILocation(line: 895, column: 2, scope: !6102)
!6107 = !DILocation(line: 898, column: 6, scope: !6108)
!6108 = distinct !DILexicalBlock(scope: !6060, file: !3, line: 898, column: 6)
!6109 = !DILocation(line: 898, column: 6, scope: !6060)
!6110 = !DILocalVariable(name: "msec", scope: !6111, file: !3, line: 899, type: !183)
!6111 = distinct !DILexicalBlock(scope: !6108, file: !3, line: 898, column: 19)
!6112 = !DILocation(line: 899, column: 7, scope: !6111)
!6113 = !DILocation(line: 900, column: 3, scope: !6111)
!6114 = !DILocation(line: 900, column: 11, scope: !6111)
!6115 = !DILocation(line: 900, column: 15, scope: !6111)
!6116 = !DILocation(line: 900, column: 38, scope: !6111)
!6117 = !DILocation(line: 900, column: 42, scope: !6111)
!6118 = !DILocation(line: 900, column: 47, scope: !6111)
!6119 = !DILocation(line: 0, scope: !6111)
!6120 = !DILocation(line: 901, column: 18, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6111, file: !3, line: 900, column: 53)
!6122 = !DILocation(line: 902, column: 4, scope: !6121)
!6123 = !DILocation(line: 903, column: 9, scope: !6121)
!6124 = !DILocation(line: 904, column: 26, scope: !6121)
!6125 = !DILocation(line: 904, column: 32, scope: !6121)
!6126 = !DILocation(line: 904, column: 4, scope: !6121)
!6127 = distinct !{!6127, !6113, !6128}
!6128 = !DILocation(line: 905, column: 3, scope: !6111)
!6129 = !DILocation(line: 906, column: 2, scope: !6111)
!6130 = !DILocation(line: 908, column: 6, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6060, file: !3, line: 908, column: 6)
!6132 = !DILocation(line: 908, column: 10, scope: !6131)
!6133 = !DILocation(line: 908, column: 6, scope: !6060)
!6134 = !DILocation(line: 912, column: 7, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !6136, file: !3, line: 912, column: 7)
!6136 = distinct !DILexicalBlock(scope: !6131, file: !3, line: 908, column: 33)
!6137 = !DILocation(line: 912, column: 7, scope: !6136)
!6138 = !DILocation(line: 913, column: 4, scope: !6135)
!6139 = !DILocation(line: 916, column: 25, scope: !6136)
!6140 = !DILocation(line: 916, column: 31, scope: !6136)
!6141 = !DILocation(line: 916, column: 38, scope: !6136)
!6142 = !DILocation(line: 916, column: 3, scope: !6136)
!6143 = !DILocation(line: 917, column: 2, scope: !6136)
!6144 = !DILocation(line: 920, column: 25, scope: !6060)
!6145 = !DILocation(line: 920, column: 31, scope: !6060)
!6146 = !DILocation(line: 920, column: 38, scope: !6060)
!6147 = !DILocation(line: 920, column: 2, scope: !6060)
!6148 = !DILocation(line: 925, column: 6, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6060, file: !3, line: 925, column: 6)
!6150 = !DILocation(line: 925, column: 6, scope: !6060)
!6151 = !DILocation(line: 926, column: 13, scope: !6149)
!6152 = !DILocation(line: 926, column: 25, scope: !6149)
!6153 = !DILocation(line: 926, column: 3, scope: !6149)
!6154 = !DILocation(line: 927, column: 1, scope: !6060)
!6155 = distinct !DISubprogram(name: "xhci_find_next_ext_cap", scope: !6156, file: !6156, line: 97, type: !6157, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!6156 = !DIFile(filename: "drivers/usb/host/xhci-ext-caps.h", directory: "/home/lizy2001/genbc/linux")
!6157 = !DISubroutineType(types: !6158)
!6158 = !{!183, !124, !197, !183}
!6159 = !DILocalVariable(name: "base", arg: 1, scope: !6155, file: !6156, line: 97, type: !124)
!6160 = !DILocation(line: 97, column: 56, scope: !6155)
!6161 = !DILocalVariable(name: "start", arg: 2, scope: !6155, file: !6156, line: 97, type: !197)
!6162 = !DILocation(line: 97, column: 66, scope: !6155)
!6163 = !DILocalVariable(name: "id", arg: 3, scope: !6155, file: !6156, line: 97, type: !183)
!6164 = !DILocation(line: 97, column: 77, scope: !6155)
!6165 = !DILocalVariable(name: "val", scope: !6155, file: !6156, line: 99, type: !197)
!6166 = !DILocation(line: 99, column: 6, scope: !6155)
!6167 = !DILocalVariable(name: "next", scope: !6155, file: !6156, line: 100, type: !197)
!6168 = !DILocation(line: 100, column: 6, scope: !6155)
!6169 = !DILocalVariable(name: "offset", scope: !6155, file: !6156, line: 101, type: !197)
!6170 = !DILocation(line: 101, column: 6, scope: !6155)
!6171 = !DILocation(line: 103, column: 11, scope: !6155)
!6172 = !DILocation(line: 103, column: 9, scope: !6155)
!6173 = !DILocation(line: 104, column: 7, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6155, file: !6156, line: 104, column: 6)
!6175 = !DILocation(line: 104, column: 13, scope: !6174)
!6176 = !DILocation(line: 104, column: 16, scope: !6174)
!6177 = !DILocation(line: 104, column: 22, scope: !6174)
!6178 = !DILocation(line: 104, column: 6, scope: !6155)
!6179 = !DILocation(line: 105, column: 15, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6174, file: !6156, line: 104, column: 49)
!6181 = !DILocation(line: 105, column: 20, scope: !6180)
!6182 = !DILocation(line: 105, column: 9, scope: !6180)
!6183 = !DILocation(line: 105, column: 7, scope: !6180)
!6184 = !DILocation(line: 106, column: 7, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6180, file: !6156, line: 106, column: 7)
!6186 = !DILocation(line: 106, column: 11, scope: !6185)
!6187 = !DILocation(line: 106, column: 7, scope: !6180)
!6188 = !DILocation(line: 107, column: 4, scope: !6185)
!6189 = !DILocation(line: 108, column: 12, scope: !6180)
!6190 = !DILocation(line: 108, column: 35, scope: !6180)
!6191 = !DILocation(line: 108, column: 10, scope: !6180)
!6192 = !DILocation(line: 109, column: 8, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6180, file: !6156, line: 109, column: 7)
!6194 = !DILocation(line: 109, column: 7, scope: !6180)
!6195 = !DILocation(line: 110, column: 4, scope: !6193)
!6196 = !DILocation(line: 111, column: 2, scope: !6180)
!6197 = !DILocation(line: 112, column: 2, scope: !6155)
!6198 = !DILocation(line: 113, column: 15, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6155, file: !6156, line: 112, column: 5)
!6200 = !DILocation(line: 113, column: 22, scope: !6199)
!6201 = !DILocation(line: 113, column: 20, scope: !6199)
!6202 = !DILocation(line: 113, column: 9, scope: !6199)
!6203 = !DILocation(line: 113, column: 7, scope: !6199)
!6204 = !DILocation(line: 114, column: 7, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6199, file: !6156, line: 114, column: 7)
!6206 = !DILocation(line: 114, column: 11, scope: !6205)
!6207 = !DILocation(line: 114, column: 7, scope: !6199)
!6208 = !DILocation(line: 115, column: 4, scope: !6205)
!6209 = !DILocation(line: 116, column: 7, scope: !6210)
!6210 = distinct !DILexicalBlock(scope: !6199, file: !6156, line: 116, column: 7)
!6211 = !DILocation(line: 116, column: 17, scope: !6210)
!6212 = !DILocation(line: 116, column: 14, scope: !6210)
!6213 = !DILocation(line: 116, column: 23, scope: !6210)
!6214 = !DILocation(line: 116, column: 27, scope: !6210)
!6215 = !DILocation(line: 116, column: 30, scope: !6210)
!6216 = !DILocation(line: 116, column: 35, scope: !6210)
!6217 = !DILocation(line: 116, column: 38, scope: !6210)
!6218 = !DILocation(line: 116, column: 63, scope: !6210)
!6219 = !DILocation(line: 116, column: 60, scope: !6210)
!6220 = !DILocation(line: 116, column: 7, scope: !6199)
!6221 = !DILocation(line: 117, column: 11, scope: !6210)
!6222 = !DILocation(line: 117, column: 4, scope: !6210)
!6223 = !DILocation(line: 119, column: 10, scope: !6199)
!6224 = !DILocation(line: 119, column: 8, scope: !6199)
!6225 = !DILocation(line: 120, column: 13, scope: !6199)
!6226 = !DILocation(line: 120, column: 18, scope: !6199)
!6227 = !DILocation(line: 120, column: 10, scope: !6199)
!6228 = !DILocation(line: 121, column: 2, scope: !6199)
!6229 = !DILocation(line: 121, column: 11, scope: !6155)
!6230 = distinct !{!6230, !6197, !6231}
!6231 = !DILocation(line: 121, column: 15, scope: !6155)
!6232 = !DILocation(line: 123, column: 2, scope: !6155)
!6233 = !DILocation(line: 124, column: 1, scope: !6155)
!6234 = distinct !DISubprogram(name: "handshake", scope: !3, file: !3, line: 1011, type: !6235, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!6235 = !DISubroutineType(types: !6236)
!6236 = !{!183, !124, !197, !197, !183, !183}
!6237 = !DILocalVariable(name: "ptr", arg: 1, scope: !6234, file: !3, line: 1011, type: !124)
!6238 = !DILocation(line: 1011, column: 36, scope: !6234)
!6239 = !DILocalVariable(name: "mask", arg: 2, scope: !6234, file: !3, line: 1011, type: !197)
!6240 = !DILocation(line: 1011, column: 45, scope: !6234)
!6241 = !DILocalVariable(name: "done", arg: 3, scope: !6234, file: !3, line: 1011, type: !197)
!6242 = !DILocation(line: 1011, column: 55, scope: !6234)
!6243 = !DILocalVariable(name: "wait_usec", arg: 4, scope: !6234, file: !3, line: 1012, type: !183)
!6244 = !DILocation(line: 1012, column: 7, scope: !6234)
!6245 = !DILocalVariable(name: "delay_usec", arg: 5, scope: !6234, file: !3, line: 1012, type: !183)
!6246 = !DILocation(line: 1012, column: 22, scope: !6234)
!6247 = !DILocalVariable(name: "result", scope: !6234, file: !3, line: 1014, type: !197)
!6248 = !DILocation(line: 1014, column: 6, scope: !6234)
!6249 = !DILocalVariable(name: "__timeout_us", scope: !6250, file: !3, line: 1016, type: !155)
!6250 = distinct !DILexicalBlock(scope: !6234, file: !3, line: 1016, column: 9)
!6251 = !DILocation(line: 1016, column: 9, scope: !6250)
!6252 = !DILocalVariable(name: "__delay_us", scope: !6250, file: !3, line: 1016, type: !166)
!6253 = !DILocalVariable(name: "__timeout", scope: !6250, file: !3, line: 1016, type: !1301)
!6254 = !DILocation(line: 1016, column: 9, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6256, file: !3, line: 1016, column: 9)
!6256 = distinct !DILexicalBlock(scope: !6257, file: !3, line: 1016, column: 9)
!6257 = distinct !DILexicalBlock(scope: !6250, file: !3, line: 1016, column: 9)
!6258 = !DILocation(line: 1016, column: 9, scope: !6259)
!6259 = distinct !DILexicalBlock(scope: !6255, file: !3, line: 1016, column: 9)
!6260 = !DILocation(line: 1016, column: 9, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6255, file: !3, line: 1016, column: 9)
!6262 = !DILocation(line: 1016, column: 9, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6261, file: !3, line: 1016, column: 9)
!6264 = !DILocation(line: 1016, column: 9, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6255, file: !3, line: 1016, column: 9)
!6266 = !DILocation(line: 1016, column: 9, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !6268, file: !3, line: 1016, column: 9)
!6268 = distinct !DILexicalBlock(scope: !6265, file: !3, line: 1016, column: 9)
!6269 = !DILocation(line: 1016, column: 9, scope: !6268)
!6270 = !DILocation(line: 1016, column: 9, scope: !6271)
!6271 = distinct !DILexicalBlock(scope: !6272, file: !3, line: 1016, column: 9)
!6272 = distinct !DILexicalBlock(scope: !6267, file: !3, line: 1016, column: 9)
!6273 = !DILocation(line: 1016, column: 9, scope: !6272)
!6274 = !DILocation(line: 1016, column: 9, scope: !6275)
!6275 = distinct !DILexicalBlock(scope: !6267, file: !3, line: 1016, column: 9)
!6276 = !DILocation(line: 1016, column: 9, scope: !6256)
!6277 = distinct !{!6277, !6278, !6278}
!6278 = !DILocation(line: 1016, column: 9, scope: !6257)
!6279 = !DILocation(line: 1016, column: 2, scope: !6234)
!6280 = distinct !DISubprogram(name: "ktime_add_us", scope: !1302, file: !1302, line: 179, type: !6281, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!6281 = !DISubroutineType(types: !6282)
!6282 = !{!1301, !6283, !6284}
!6283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1301)
!6284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!6285 = !DILocalVariable(name: "kt", arg: 1, scope: !6280, file: !1302, line: 179, type: !6283)
!6286 = !DILocation(line: 179, column: 50, scope: !6280)
!6287 = !DILocalVariable(name: "usec", arg: 2, scope: !6280, file: !1302, line: 179, type: !6284)
!6288 = !DILocation(line: 179, column: 64, scope: !6280)
!6289 = !DILocation(line: 181, column: 9, scope: !6280)
!6290 = !DILocation(line: 181, column: 2, scope: !6280)
!6291 = distinct !DISubprogram(name: "ktime_compare", scope: !1302, file: !1302, line: 95, type: !6292, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !256)
!6292 = !DISubroutineType(types: !6293)
!6293 = !{!183, !6283, !6283}
!6294 = !DILocalVariable(name: "cmp1", arg: 1, scope: !6291, file: !1302, line: 95, type: !6283)
!6295 = !DILocation(line: 95, column: 47, scope: !6291)
!6296 = !DILocalVariable(name: "cmp2", arg: 2, scope: !6291, file: !1302, line: 95, type: !6283)
!6297 = !DILocation(line: 95, column: 67, scope: !6291)
!6298 = !DILocation(line: 97, column: 6, scope: !6299)
!6299 = distinct !DILexicalBlock(scope: !6291, file: !1302, line: 97, column: 6)
!6300 = !DILocation(line: 97, column: 13, scope: !6299)
!6301 = !DILocation(line: 97, column: 11, scope: !6299)
!6302 = !DILocation(line: 97, column: 6, scope: !6291)
!6303 = !DILocation(line: 98, column: 3, scope: !6299)
!6304 = !DILocation(line: 99, column: 6, scope: !6305)
!6305 = distinct !DILexicalBlock(scope: !6291, file: !1302, line: 99, column: 6)
!6306 = !DILocation(line: 99, column: 13, scope: !6305)
!6307 = !DILocation(line: 99, column: 11, scope: !6305)
!6308 = !DILocation(line: 99, column: 6, scope: !6291)
!6309 = !DILocation(line: 100, column: 3, scope: !6305)
!6310 = !DILocation(line: 101, column: 2, scope: !6291)
!6311 = !DILocation(line: 102, column: 1, scope: !6291)
