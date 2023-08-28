; ModuleID = '../bcout/drivers/pci/vpd.llvm.bc'
source_filename = "drivers/pci/vpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section .pci_fixup_early, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x8086, (~0)\09\09\09"
module asm ".long 0x0200, 8\09\09"
module asm ".long quirk_f0_vpd_link - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x0060\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long quirk_blacklist_vpd - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x007c\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long quirk_blacklist_vpd - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x0413\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long quirk_blacklist_vpd - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x0078\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long quirk_blacklist_vpd - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x0079\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long quirk_blacklist_vpd - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x0073\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long quirk_blacklist_vpd - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x0071\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long quirk_blacklist_vpd - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x005b\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long quirk_blacklist_vpd - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x002f\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long quirk_blacklist_vpd - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x005d\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long quirk_blacklist_vpd - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1000, 0x005f\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long quirk_blacklist_vpd - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1969, (~0)\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long quirk_blacklist_vpd - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1077, 0x2261\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long quirk_blacklist_vpd - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1c36, 0x0031\09\09\09"
module asm ".long 0x0604, 8\09\09"
module asm ".long quirk_blacklist_vpd - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x14e4, 0x164a\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long quirk_brcm_570x_limit_vpd - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x14e4, 0x16aa\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long quirk_brcm_570x_limit_vpd - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x14e4, 0x164c\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long quirk_brcm_570x_limit_vpd - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x14e4, 0x16ac\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long quirk_brcm_570x_limit_vpd - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x14e4, 0x1639\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long quirk_brcm_570x_limit_vpd - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x14e4, 0x163a\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long quirk_brcm_570x_limit_vpd - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"
module asm ".section .pci_fixup_final, \22a\22\09\09\09\09"
module asm ".balign\0916\09\09\09\09\09"
module asm ".short 0x1425, (~0)\09\09\09"
module asm ".long (~0), 0\09\09"
module asm ".long quirk_chelsio_extend_vpd - .\09\09\09\09"
module asm ".previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.kmem_cache = type opaque
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
%struct.pci_vpd = type { %struct.pci_vpd_ops*, %struct.bin_attribute*, %struct.mutex, i32, i16, i8, i8 }
%struct.pci_vpd_ops = type { {}*, i64 (%struct.pci_dev*, i64, i64, i8*)*, i32 (%struct.pci_dev*, i64)* }
%union.anon.65 = type { %struct.pci_sriov* }
%struct.pci_sriov = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, %struct.pci_dev*, %struct.pci_dev*, i32, i8, i16, i16, [6 x i64], i8 }

@pci_vpd_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !0
@.str = private unnamed_addr constant [11 x i8] c"&vpd->lock\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vpd\00", align 1
@__UNIQUE_ID___addressable_quirk_f0_vpd_link232 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_f0_vpd_link to i8*), section ".discard.addressable", align 8, !dbg !4053
@__UNIQUE_ID___addressable_quirk_blacklist_vpd233 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_blacklist_vpd to i8*), section ".discard.addressable", align 8, !dbg !4055
@__UNIQUE_ID___addressable_quirk_blacklist_vpd234 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_blacklist_vpd to i8*), section ".discard.addressable", align 8, !dbg !4057
@__UNIQUE_ID___addressable_quirk_blacklist_vpd235 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_blacklist_vpd to i8*), section ".discard.addressable", align 8, !dbg !4059
@__UNIQUE_ID___addressable_quirk_blacklist_vpd236 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_blacklist_vpd to i8*), section ".discard.addressable", align 8, !dbg !4061
@__UNIQUE_ID___addressable_quirk_blacklist_vpd237 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_blacklist_vpd to i8*), section ".discard.addressable", align 8, !dbg !4063
@__UNIQUE_ID___addressable_quirk_blacklist_vpd238 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_blacklist_vpd to i8*), section ".discard.addressable", align 8, !dbg !4065
@__UNIQUE_ID___addressable_quirk_blacklist_vpd239 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_blacklist_vpd to i8*), section ".discard.addressable", align 8, !dbg !4067
@__UNIQUE_ID___addressable_quirk_blacklist_vpd240 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_blacklist_vpd to i8*), section ".discard.addressable", align 8, !dbg !4069
@__UNIQUE_ID___addressable_quirk_blacklist_vpd241 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_blacklist_vpd to i8*), section ".discard.addressable", align 8, !dbg !4071
@__UNIQUE_ID___addressable_quirk_blacklist_vpd242 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_blacklist_vpd to i8*), section ".discard.addressable", align 8, !dbg !4073
@__UNIQUE_ID___addressable_quirk_blacklist_vpd243 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_blacklist_vpd to i8*), section ".discard.addressable", align 8, !dbg !4075
@__UNIQUE_ID___addressable_quirk_blacklist_vpd244 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_blacklist_vpd to i8*), section ".discard.addressable", align 8, !dbg !4077
@__UNIQUE_ID___addressable_quirk_blacklist_vpd245 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_blacklist_vpd to i8*), section ".discard.addressable", align 8, !dbg !4079
@__UNIQUE_ID___addressable_quirk_blacklist_vpd246 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_blacklist_vpd to i8*), section ".discard.addressable", align 8, !dbg !4081
@__UNIQUE_ID___addressable_quirk_brcm_570x_limit_vpd247 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_brcm_570x_limit_vpd to i8*), section ".discard.addressable", align 8, !dbg !4083
@__UNIQUE_ID___addressable_quirk_brcm_570x_limit_vpd248 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_brcm_570x_limit_vpd to i8*), section ".discard.addressable", align 8, !dbg !4085
@__UNIQUE_ID___addressable_quirk_brcm_570x_limit_vpd249 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_brcm_570x_limit_vpd to i8*), section ".discard.addressable", align 8, !dbg !4087
@__UNIQUE_ID___addressable_quirk_brcm_570x_limit_vpd250 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_brcm_570x_limit_vpd to i8*), section ".discard.addressable", align 8, !dbg !4089
@__UNIQUE_ID___addressable_quirk_brcm_570x_limit_vpd251 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_brcm_570x_limit_vpd to i8*), section ".discard.addressable", align 8, !dbg !4091
@__UNIQUE_ID___addressable_quirk_brcm_570x_limit_vpd252 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_brcm_570x_limit_vpd to i8*), section ".discard.addressable", align 8, !dbg !4093
@__UNIQUE_ID___addressable_quirk_chelsio_extend_vpd253 = internal global i8* bitcast (void (%struct.pci_dev*)* @quirk_chelsio_extend_vpd to i8*), section ".discard.addressable", align 8, !dbg !4095
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pci_vpd_f0_ops = internal constant { i64 (%struct.pci_dev*, i64, i64, i8*)*, i64 (%struct.pci_dev*, i64, i64, i8*)*, i32 (%struct.pci_dev*, i64)* } { i64 (%struct.pci_dev*, i64, i64, i8*)* @pci_vpd_f0_read, i64 (%struct.pci_dev*, i64, i64, i8*)* @pci_vpd_f0_write, i32 (%struct.pci_dev*, i64)* @pci_vpd_f0_set_size }, align 8, !dbg !4097
@pci_vpd_ops = internal constant { i64 (%struct.pci_dev*, i64, i64, i8*)*, i64 (%struct.pci_dev*, i64, i64, i8*)*, i32 (%struct.pci_dev*, i64)* } { i64 (%struct.pci_dev*, i64, i64, i8*)* @pci_vpd_read, i64 (%struct.pci_dev*, i64, i64, i8*)* @pci_vpd_write, i32 (%struct.pci_dev*, i64)* @pci_vpd_set_size }, align 8, !dbg !4099
@.str.5 = private unnamed_addr constant [46 x i8] c"invalid large VPD tag %02x size at offset %zu\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"invalid %s VPD tag %02x at offset %zu\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"large\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@jiffies = external dso_local global i64, align 8
@.str.9 = private unnamed_addr constant [114 x i8] c"VPD access failed.  This is likely a firmware bug on this device.  Contact the card vendor for a firmware update\0A\00", align 1
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8
@.str.10 = private unnamed_addr constant [88 x i8] c"[Firmware Bug]: disabling VPD access (can't determine size of non-standard VPD format)\0A\00", align 1
@llvm.used = appending global [22 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_f0_vpd_link232 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_blacklist_vpd233 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_blacklist_vpd234 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_blacklist_vpd235 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_blacklist_vpd236 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_blacklist_vpd237 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_blacklist_vpd238 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_blacklist_vpd239 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_blacklist_vpd240 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_blacklist_vpd241 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_blacklist_vpd242 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_blacklist_vpd243 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_blacklist_vpd244 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_blacklist_vpd245 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_blacklist_vpd246 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_brcm_570x_limit_vpd247 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_brcm_570x_limit_vpd248 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_brcm_570x_limit_vpd249 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_brcm_570x_limit_vpd250 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_brcm_570x_limit_vpd251 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_brcm_570x_limit_vpd252 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_quirk_chelsio_extend_vpd253 to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @pci_read_vpd(%struct.pci_dev* %dev, i64 %pos, i64 %count, i8* %buf) #0 !dbg !4106 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pos.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4107, metadata !DIExpression()), !dbg !4108
  store i64 %pos, i64* %pos.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pos.addr, metadata !4109, metadata !DIExpression()), !dbg !4110
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4111, metadata !DIExpression()), !dbg !4112
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4113, metadata !DIExpression()), !dbg !4114
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4115
  %vpd = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 58, !dbg !4117
  %1 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !4117
  %tobool = icmp ne %struct.pci_vpd* %1, null, !dbg !4115
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4118

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4119
  %vpd1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 58, !dbg !4120
  %3 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd1, align 8, !dbg !4120
  %ops = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %3, i32 0, i32 0, !dbg !4121
  %4 = load %struct.pci_vpd_ops*, %struct.pci_vpd_ops** %ops, align 8, !dbg !4121
  %tobool2 = icmp ne %struct.pci_vpd_ops* %4, null, !dbg !4119
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4122

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -19, i64* %retval, align 8, !dbg !4123
  br label %return, !dbg !4123

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4124
  %vpd3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 58, !dbg !4125
  %6 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd3, align 8, !dbg !4125
  %ops4 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %6, i32 0, i32 0, !dbg !4126
  %7 = load %struct.pci_vpd_ops*, %struct.pci_vpd_ops** %ops4, align 8, !dbg !4126
  %read = getelementptr inbounds %struct.pci_vpd_ops, %struct.pci_vpd_ops* %7, i32 0, i32 0, !dbg !4127
  %read5 = bitcast {}** %read to i64 (%struct.pci_dev*, i64, i64, i8*)**, !dbg !4127
  %8 = load i64 (%struct.pci_dev*, i64, i64, i8*)*, i64 (%struct.pci_dev*, i64, i64, i8*)** %read5, align 8, !dbg !4127
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4128
  %10 = load i64, i64* %pos.addr, align 8, !dbg !4129
  %11 = load i64, i64* %count.addr, align 8, !dbg !4130
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !4131
  %call = call i64 %8(%struct.pci_dev* %9, i64 %10, i64 %11, i8* %12) #7, !dbg !4124
  store i64 %call, i64* %retval, align 8, !dbg !4132
  br label %return, !dbg !4132

return:                                           ; preds = %if.end, %if.then
  %13 = load i64, i64* %retval, align 8, !dbg !4133
  ret i64 %13, !dbg !4133
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @pci_write_vpd(%struct.pci_dev* %dev, i64 %pos, i64 %count, i8* %buf) #0 !dbg !4134 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pos.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4135, metadata !DIExpression()), !dbg !4136
  store i64 %pos, i64* %pos.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pos.addr, metadata !4137, metadata !DIExpression()), !dbg !4138
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4139, metadata !DIExpression()), !dbg !4140
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4141, metadata !DIExpression()), !dbg !4142
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4143
  %vpd = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 58, !dbg !4145
  %1 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !4145
  %tobool = icmp ne %struct.pci_vpd* %1, null, !dbg !4143
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4146

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4147
  %vpd1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 58, !dbg !4148
  %3 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd1, align 8, !dbg !4148
  %ops = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %3, i32 0, i32 0, !dbg !4149
  %4 = load %struct.pci_vpd_ops*, %struct.pci_vpd_ops** %ops, align 8, !dbg !4149
  %tobool2 = icmp ne %struct.pci_vpd_ops* %4, null, !dbg !4147
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4150

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -19, i64* %retval, align 8, !dbg !4151
  br label %return, !dbg !4151

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4152
  %vpd3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 58, !dbg !4153
  %6 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd3, align 8, !dbg !4153
  %ops4 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %6, i32 0, i32 0, !dbg !4154
  %7 = load %struct.pci_vpd_ops*, %struct.pci_vpd_ops** %ops4, align 8, !dbg !4154
  %write = getelementptr inbounds %struct.pci_vpd_ops, %struct.pci_vpd_ops* %7, i32 0, i32 1, !dbg !4155
  %8 = load i64 (%struct.pci_dev*, i64, i64, i8*)*, i64 (%struct.pci_dev*, i64, i64, i8*)** %write, align 8, !dbg !4155
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4156
  %10 = load i64, i64* %pos.addr, align 8, !dbg !4157
  %11 = load i64, i64* %count.addr, align 8, !dbg !4158
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !4159
  %call = call i64 %8(%struct.pci_dev* %9, i64 %10, i64 %11, i8* %12) #7, !dbg !4152
  store i64 %call, i64* %retval, align 8, !dbg !4160
  br label %return, !dbg !4160

return:                                           ; preds = %if.end, %if.then
  %13 = load i64, i64* %retval, align 8, !dbg !4161
  ret i64 %13, !dbg !4161
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_set_vpd_size(%struct.pci_dev* %dev, i64 %len) #0 !dbg !4162 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %len.addr = alloca i64, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4163, metadata !DIExpression()), !dbg !4164
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !4165, metadata !DIExpression()), !dbg !4166
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4167
  %vpd = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 58, !dbg !4169
  %1 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !4169
  %tobool = icmp ne %struct.pci_vpd* %1, null, !dbg !4167
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4170

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4171
  %vpd1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 58, !dbg !4172
  %3 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd1, align 8, !dbg !4172
  %ops = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %3, i32 0, i32 0, !dbg !4173
  %4 = load %struct.pci_vpd_ops*, %struct.pci_vpd_ops** %ops, align 8, !dbg !4173
  %tobool2 = icmp ne %struct.pci_vpd_ops* %4, null, !dbg !4171
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4174

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, i32* %retval, align 4, !dbg !4175
  br label %return, !dbg !4175

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4176
  %vpd3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 58, !dbg !4177
  %6 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd3, align 8, !dbg !4177
  %ops4 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %6, i32 0, i32 0, !dbg !4178
  %7 = load %struct.pci_vpd_ops*, %struct.pci_vpd_ops** %ops4, align 8, !dbg !4178
  %set_size = getelementptr inbounds %struct.pci_vpd_ops, %struct.pci_vpd_ops* %7, i32 0, i32 2, !dbg !4179
  %8 = load i32 (%struct.pci_dev*, i64)*, i32 (%struct.pci_dev*, i64)** %set_size, align 8, !dbg !4179
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4180
  %10 = load i64, i64* %len.addr, align 8, !dbg !4181
  %call = call i32 %8(%struct.pci_dev* %9, i64 %10) #7, !dbg !4176
  store i32 %call, i32* %retval, align 4, !dbg !4182
  br label %return, !dbg !4182

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !4183
  ret i32 %11, !dbg !4183
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_vpd_init(%struct.pci_dev* %dev) #0 !dbg !2 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %vpd = alloca %struct.pci_vpd*, align 8
  %cap = alloca i8, align 1
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4184, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.declare(metadata %struct.pci_vpd** %vpd, metadata !4186, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.declare(metadata i8* %cap, metadata !4188, metadata !DIExpression()), !dbg !4189
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4190
  %call = call i32 @pci_find_capability(%struct.pci_dev* %0, i32 3) #7, !dbg !4191
  %conv = trunc i32 %call to i8, !dbg !4191
  store i8 %conv, i8* %cap, align 1, !dbg !4192
  %1 = load i8, i8* %cap, align 1, !dbg !4193
  %tobool = icmp ne i8 %1, 0, !dbg !4193
  br i1 %tobool, label %if.end, label %if.then, !dbg !4195

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4196
  br label %return, !dbg !4196

if.end:                                           ; preds = %entry
  %call1 = call i8* @kzalloc(i64 48, i32 2592) #7, !dbg !4197
  %2 = bitcast i8* %call1 to %struct.pci_vpd*, !dbg !4197
  store %struct.pci_vpd* %2, %struct.pci_vpd** %vpd, align 8, !dbg !4198
  %3 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !4199
  %tobool2 = icmp ne %struct.pci_vpd* %3, null, !dbg !4199
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4201

if.then3:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4202
  br label %return, !dbg !4202

if.end4:                                          ; preds = %if.end
  %4 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !4203
  %len = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %4, i32 0, i32 3, !dbg !4204
  store i32 32768, i32* %len, align 8, !dbg !4205
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4206
  %dev_flags = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 47, !dbg !4208
  %6 = load i16, i16* %dev_flags, align 2, !dbg !4208
  %conv5 = zext i16 %6 to i32, !dbg !4206
  %and = and i32 %conv5, 256, !dbg !4209
  %tobool6 = icmp ne i32 %and, 0, !dbg !4209
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !4210

if.then7:                                         ; preds = %if.end4
  %7 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !4211
  %ops = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %7, i32 0, i32 0, !dbg !4212
  store %struct.pci_vpd_ops* bitcast ({ i64 (%struct.pci_dev*, i64, i64, i8*)*, i64 (%struct.pci_dev*, i64, i64, i8*)*, i32 (%struct.pci_dev*, i64)* }* @pci_vpd_f0_ops to %struct.pci_vpd_ops*), %struct.pci_vpd_ops** %ops, align 8, !dbg !4213
  br label %if.end9, !dbg !4211

if.else:                                          ; preds = %if.end4
  %8 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !4214
  %ops8 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %8, i32 0, i32 0, !dbg !4215
  store %struct.pci_vpd_ops* bitcast ({ i64 (%struct.pci_dev*, i64, i64, i8*)*, i64 (%struct.pci_dev*, i64, i64, i8*)*, i32 (%struct.pci_dev*, i64)* }* @pci_vpd_ops to %struct.pci_vpd_ops*), %struct.pci_vpd_ops** %ops8, align 8, !dbg !4216
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  br label %do.body, !dbg !4217

do.body:                                          ; preds = %if.end9
  %9 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !4218
  %lock = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %9, i32 0, i32 2, !dbg !4218
  call void @__mutex_init(%struct.mutex* %lock, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* @pci_vpd_init.__key) #7, !dbg !4218
  br label %do.end, !dbg !4218

do.end:                                           ; preds = %do.body
  %10 = load i8, i8* %cap, align 1, !dbg !4220
  %11 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !4221
  %cap10 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %11, i32 0, i32 5, !dbg !4222
  store i8 %10, i8* %cap10, align 2, !dbg !4223
  %12 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !4224
  %busy = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %12, i32 0, i32 6, !dbg !4225
  %bf.load = load i8, i8* %busy, align 1, !dbg !4226
  %bf.clear = and i8 %bf.load, -2, !dbg !4226
  store i8 %bf.clear, i8* %busy, align 1, !dbg !4226
  %13 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !4227
  %valid = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %13, i32 0, i32 6, !dbg !4228
  %bf.load11 = load i8, i8* %valid, align 1, !dbg !4229
  %bf.clear12 = and i8 %bf.load11, -3, !dbg !4229
  store i8 %bf.clear12, i8* %valid, align 1, !dbg !4229
  %14 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !4230
  %15 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4231
  %vpd13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 58, !dbg !4232
  store %struct.pci_vpd* %14, %struct.pci_vpd** %vpd13, align 8, !dbg !4233
  store i32 0, i32* %retval, align 4, !dbg !4234
  br label %return, !dbg !4234

return:                                           ; preds = %do.end, %if.then3, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !4235
  ret i32 %16, !dbg !4235
}

; Function Attrs: noredzone
declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4236 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4239, metadata !DIExpression()), !dbg !4243
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4249, metadata !DIExpression()), !dbg !4250
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4251, metadata !DIExpression()), !dbg !4252
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4253, metadata !DIExpression()), !dbg !4254
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4255, metadata !DIExpression()), !dbg !4259
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4261, metadata !DIExpression()), !dbg !4265
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4267, metadata !DIExpression()), !dbg !4271
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4276, metadata !DIExpression()), !dbg !4277
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4278, metadata !DIExpression()), !dbg !4279
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4280, metadata !DIExpression()), !dbg !4281
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4282, metadata !DIExpression()), !dbg !4283
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4284, metadata !DIExpression()), !dbg !4285
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4286, metadata !DIExpression()), !dbg !4287
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4288, metadata !DIExpression()), !dbg !4289
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4290, metadata !DIExpression()), !dbg !4291
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4292, metadata !DIExpression()), !dbg !4293
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4294, metadata !DIExpression()), !dbg !4295
  %0 = load i64, i64* %size.addr, align 8, !dbg !4296
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4297
  %or = or i32 %1, 256, !dbg !4298
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4299
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !4300
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4301

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4302
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4303
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4304

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4305
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4306
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4307
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !4308
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4285
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4309
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4310
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4311
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4312
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4313
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4314
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !4315
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4315
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4315
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4315
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !4315
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4316
  br label %kmalloc.exit, !dbg !4316

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4317
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4318
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4318
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4320

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4321
  br label %kmalloc_index.exit.i, !dbg !4321

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4322
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4324
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4325

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4326
  br label %kmalloc_index.exit.i, !dbg !4326

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4327
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4329
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4330

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4331
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4332
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4333

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4334
  br label %kmalloc_index.exit.i, !dbg !4334

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4335
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4337
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4338

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4339
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4340
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4341

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4342
  br label %kmalloc_index.exit.i, !dbg !4342

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4343
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4345
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4346

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4347
  br label %kmalloc_index.exit.i, !dbg !4347

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4348
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4350
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4351

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4352
  br label %kmalloc_index.exit.i, !dbg !4352

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4353
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4355
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4356

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4357
  br label %kmalloc_index.exit.i, !dbg !4357

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4358
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4360
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4361

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4362
  br label %kmalloc_index.exit.i, !dbg !4362

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4363
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4365
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4366

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4367
  br label %kmalloc_index.exit.i, !dbg !4367

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4368
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4370
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4371

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4372
  br label %kmalloc_index.exit.i, !dbg !4372

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4373
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4375
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4376

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4377
  br label %kmalloc_index.exit.i, !dbg !4377

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4378
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4380
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4381

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4382
  br label %kmalloc_index.exit.i, !dbg !4382

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4383
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4385
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4386

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4387
  br label %kmalloc_index.exit.i, !dbg !4387

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4388
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4390
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4391

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4392
  br label %kmalloc_index.exit.i, !dbg !4392

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4393
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4395
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4396

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4397
  br label %kmalloc_index.exit.i, !dbg !4397

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4398
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4400
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4401

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4402
  br label %kmalloc_index.exit.i, !dbg !4402

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4403
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4405
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4406

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4407
  br label %kmalloc_index.exit.i, !dbg !4407

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4408
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4410
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4411

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4412
  br label %kmalloc_index.exit.i, !dbg !4412

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4413
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4415
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4416

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4417
  br label %kmalloc_index.exit.i, !dbg !4417

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4418
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4420
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4421

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4422
  br label %kmalloc_index.exit.i, !dbg !4422

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4423
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4425
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4426

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4427
  br label %kmalloc_index.exit.i, !dbg !4427

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4428
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4430
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4431

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4432
  br label %kmalloc_index.exit.i, !dbg !4432

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4433
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4435
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4436

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4437
  br label %kmalloc_index.exit.i, !dbg !4437

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4438
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4440
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4441

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4442
  br label %kmalloc_index.exit.i, !dbg !4442

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4443
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4445
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4446

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4447
  br label %kmalloc_index.exit.i, !dbg !4447

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4448
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4450
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4451

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4452
  br label %kmalloc_index.exit.i, !dbg !4452

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4453
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4455
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4456

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4457
  br label %kmalloc_index.exit.i, !dbg !4457

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4458
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4460
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4461

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4462
  br label %kmalloc_index.exit.i, !dbg !4462

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !4463, !srcloc !4466
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #8, !dbg !4467, !srcloc !4470
  unreachable, !dbg !4471

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4472
  store i32 %45, i32* %index.i, align 4, !dbg !4473
  %46 = load i32, i32* %index.i, align 4, !dbg !4474
  %tobool.i = icmp ne i32 %46, 0, !dbg !4474
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4476

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4477
  br label %kmalloc.exit, !dbg !4477

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4478
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4479
  %and.i.i = and i32 %48, 17, !dbg !4479
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4479
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4479
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4479
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4479
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4481

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4482
  br label %kmalloc_type.exit.i, !dbg !4482

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4483
  %and2.i.i = and i32 %49, 1, !dbg !4484
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4483
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4483
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4483
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4485
  br label %kmalloc_type.exit.i, !dbg !4485

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4486
  %idxprom.i = zext i32 %51 to i64, !dbg !4487
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4487
  %52 = load i32, i32* %index.i, align 4, !dbg !4488
  %idxprom6.i = zext i32 %52 to i64, !dbg !4487
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4487
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4487
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4489
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4490
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4491
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4492
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !4493
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4493
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4493
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4493
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !4493
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4254
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4494
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4495
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4496
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4497
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !4498
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4499
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4500
  store i8* %62, i8** %retval.i, align 8, !dbg !4501
  br label %kmalloc.exit, !dbg !4501

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4502
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4503
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !4504
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4504
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4504
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4504
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !4504
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4505
  br label %kmalloc.exit, !dbg !4505

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4506
  ret i8* %65, !dbg !4507
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_vpd_release(%struct.pci_dev* %dev) #0 !dbg !4508 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4509, metadata !DIExpression()), !dbg !4510
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4511
  %vpd = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 58, !dbg !4512
  %1 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !4512
  %2 = bitcast %struct.pci_vpd* %1 to i8*, !dbg !4511
  call void @kfree(i8* %2) #7, !dbg !4513
  ret void, !dbg !4514
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pcie_vpd_create_sysfs_dev_files(%struct.pci_dev* %dev) #0 !dbg !4515 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %retval = alloca i32, align 4
  %attr = alloca %struct.bin_attribute*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4516, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.declare(metadata i32* %retval, metadata !4518, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.declare(metadata %struct.bin_attribute** %attr, metadata !4520, metadata !DIExpression()), !dbg !4521
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4522
  %vpd = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 58, !dbg !4524
  %1 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !4524
  %tobool = icmp ne %struct.pci_vpd* %1, null, !dbg !4522
  br i1 %tobool, label %if.end, label %if.then, !dbg !4525

if.then:                                          ; preds = %entry
  br label %return, !dbg !4526

if.end:                                           ; preds = %entry
  %call = call i8* @kzalloc(i64 56, i32 2592) #7, !dbg !4527
  %2 = bitcast i8* %call to %struct.bin_attribute*, !dbg !4527
  store %struct.bin_attribute* %2, %struct.bin_attribute** %attr, align 8, !dbg !4528
  %3 = load %struct.bin_attribute*, %struct.bin_attribute** %attr, align 8, !dbg !4529
  %tobool1 = icmp ne %struct.bin_attribute* %3, null, !dbg !4529
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4531

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !4532

if.end3:                                          ; preds = %if.end
  br label %do.body, !dbg !4533

do.body:                                          ; preds = %if.end3
  br label %do.end, !dbg !4534

do.end:                                           ; preds = %do.body
  %4 = load %struct.bin_attribute*, %struct.bin_attribute** %attr, align 8, !dbg !4536
  %size = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %4, i32 0, i32 1, !dbg !4537
  store i64 0, i64* %size, align 8, !dbg !4538
  %5 = load %struct.bin_attribute*, %struct.bin_attribute** %attr, align 8, !dbg !4539
  %attr4 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %5, i32 0, i32 0, !dbg !4540
  %name = getelementptr inbounds %struct.attribute, %struct.attribute* %attr4, i32 0, i32 0, !dbg !4541
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %name, align 8, !dbg !4542
  %6 = load %struct.bin_attribute*, %struct.bin_attribute** %attr, align 8, !dbg !4543
  %attr5 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %6, i32 0, i32 0, !dbg !4544
  %mode = getelementptr inbounds %struct.attribute, %struct.attribute* %attr5, i32 0, i32 1, !dbg !4545
  store i16 384, i16* %mode, align 8, !dbg !4546
  %7 = load %struct.bin_attribute*, %struct.bin_attribute** %attr, align 8, !dbg !4547
  %read = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %7, i32 0, i32 3, !dbg !4548
  store i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @read_vpd_attr, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)** %read, align 8, !dbg !4549
  %8 = load %struct.bin_attribute*, %struct.bin_attribute** %attr, align 8, !dbg !4550
  %write = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %8, i32 0, i32 4, !dbg !4551
  store i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @write_vpd_attr, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)** %write, align 8, !dbg !4552
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4553
  %dev6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 41, !dbg !4554
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev6, i32 0, i32 0, !dbg !4555
  %10 = load %struct.bin_attribute*, %struct.bin_attribute** %attr, align 8, !dbg !4556
  %call7 = call i32 @sysfs_create_bin_file(%struct.kobject* %kobj, %struct.bin_attribute* %10) #7, !dbg !4557
  store i32 %call7, i32* %retval, align 4, !dbg !4558
  %11 = load i32, i32* %retval, align 4, !dbg !4559
  %tobool8 = icmp ne i32 %11, 0, !dbg !4559
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4561

if.then9:                                         ; preds = %do.end
  %12 = load %struct.bin_attribute*, %struct.bin_attribute** %attr, align 8, !dbg !4562
  %13 = bitcast %struct.bin_attribute* %12 to i8*, !dbg !4562
  call void @kfree(i8* %13) #7, !dbg !4564
  br label %return, !dbg !4565

if.end10:                                         ; preds = %do.end
  %14 = load %struct.bin_attribute*, %struct.bin_attribute** %attr, align 8, !dbg !4566
  %15 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4567
  %vpd11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 58, !dbg !4568
  %16 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd11, align 8, !dbg !4568
  %attr12 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %16, i32 0, i32 1, !dbg !4569
  store %struct.bin_attribute* %14, %struct.bin_attribute** %attr12, align 8, !dbg !4570
  br label %return, !dbg !4571

return:                                           ; preds = %if.end10, %if.then9, %if.then2, %if.then
  ret void, !dbg !4571
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @read_vpd_attr(%struct.file* %filp, %struct.kobject* %kobj, %struct.bin_attribute* %bin_attr, i8* %buf, i64 %off, i64 %count) #0 !dbg !4572 {
entry:
  %filp.addr = alloca %struct.file*, align 8
  %kobj.addr = alloca %struct.kobject*, align 8
  %bin_attr.addr = alloca %struct.bin_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %off.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %dev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !4573, metadata !DIExpression()), !dbg !4574
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4575, metadata !DIExpression()), !dbg !4576
  store %struct.bin_attribute* %bin_attr, %struct.bin_attribute** %bin_attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bin_attribute** %bin_attr.addr, metadata !4577, metadata !DIExpression()), !dbg !4578
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4579, metadata !DIExpression()), !dbg !4580
  store i64 %off, i64* %off.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %off.addr, metadata !4581, metadata !DIExpression()), !dbg !4582
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4583, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !4585, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4587, metadata !DIExpression()), !dbg !4589
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4589
  %call = call %struct.device* @kobj_to_dev(%struct.kobject* %0) #7, !dbg !4589
  %1 = bitcast %struct.device* %call to i8*, !dbg !4589
  store i8* %1, i8** %__mptr, align 8, !dbg !4589
  br label %do.body, !dbg !4589

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4590

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4589
  %add.ptr = getelementptr i8, i8* %2, i64 -176, !dbg !4589
  %3 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !4589
  store %struct.pci_dev* %3, %struct.pci_dev** %tmp, align 8, !dbg !4590
  %4 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !4589
  store %struct.pci_dev* %4, %struct.pci_dev** %dev, align 8, !dbg !4586
  %5 = load %struct.bin_attribute*, %struct.bin_attribute** %bin_attr.addr, align 8, !dbg !4592
  %size = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %5, i32 0, i32 1, !dbg !4594
  %6 = load i64, i64* %size, align 8, !dbg !4594
  %cmp = icmp ugt i64 %6, 0, !dbg !4595
  br i1 %cmp, label %if.then, label %if.end10, !dbg !4596

if.then:                                          ; preds = %do.end
  %7 = load i64, i64* %off.addr, align 8, !dbg !4597
  %8 = load %struct.bin_attribute*, %struct.bin_attribute** %bin_attr.addr, align 8, !dbg !4600
  %size1 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %8, i32 0, i32 1, !dbg !4601
  %9 = load i64, i64* %size1, align 8, !dbg !4601
  %cmp2 = icmp ugt i64 %7, %9, !dbg !4602
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !4603

if.then3:                                         ; preds = %if.then
  store i64 0, i64* %count.addr, align 8, !dbg !4604
  br label %if.end9, !dbg !4605

if.else:                                          ; preds = %if.then
  %10 = load i64, i64* %count.addr, align 8, !dbg !4606
  %11 = load %struct.bin_attribute*, %struct.bin_attribute** %bin_attr.addr, align 8, !dbg !4608
  %size4 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %11, i32 0, i32 1, !dbg !4609
  %12 = load i64, i64* %size4, align 8, !dbg !4609
  %13 = load i64, i64* %off.addr, align 8, !dbg !4610
  %sub = sub i64 %12, %13, !dbg !4611
  %cmp5 = icmp ugt i64 %10, %sub, !dbg !4612
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !4613

if.then6:                                         ; preds = %if.else
  %14 = load %struct.bin_attribute*, %struct.bin_attribute** %bin_attr.addr, align 8, !dbg !4614
  %size7 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %14, i32 0, i32 1, !dbg !4615
  %15 = load i64, i64* %size7, align 8, !dbg !4615
  %16 = load i64, i64* %off.addr, align 8, !dbg !4616
  %sub8 = sub i64 %15, %16, !dbg !4617
  store i64 %sub8, i64* %count.addr, align 8, !dbg !4618
  br label %if.end, !dbg !4619

if.end:                                           ; preds = %if.then6, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then3
  br label %if.end10, !dbg !4620

if.end10:                                         ; preds = %if.end9, %do.end
  %17 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4621
  %18 = load i64, i64* %off.addr, align 8, !dbg !4622
  %19 = load i64, i64* %count.addr, align 8, !dbg !4623
  %20 = load i8*, i8** %buf.addr, align 8, !dbg !4624
  %call11 = call i64 @pci_read_vpd(%struct.pci_dev* %17, i64 %18, i64 %19, i8* %20) #7, !dbg !4625
  ret i64 %call11, !dbg !4626
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @write_vpd_attr(%struct.file* %filp, %struct.kobject* %kobj, %struct.bin_attribute* %bin_attr, i8* %buf, i64 %off, i64 %count) #0 !dbg !4627 {
entry:
  %filp.addr = alloca %struct.file*, align 8
  %kobj.addr = alloca %struct.kobject*, align 8
  %bin_attr.addr = alloca %struct.bin_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %off.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %dev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !4628, metadata !DIExpression()), !dbg !4629
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4630, metadata !DIExpression()), !dbg !4631
  store %struct.bin_attribute* %bin_attr, %struct.bin_attribute** %bin_attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bin_attribute** %bin_attr.addr, metadata !4632, metadata !DIExpression()), !dbg !4633
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4634, metadata !DIExpression()), !dbg !4635
  store i64 %off, i64* %off.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %off.addr, metadata !4636, metadata !DIExpression()), !dbg !4637
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4638, metadata !DIExpression()), !dbg !4639
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !4640, metadata !DIExpression()), !dbg !4641
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4642, metadata !DIExpression()), !dbg !4644
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4644
  %call = call %struct.device* @kobj_to_dev(%struct.kobject* %0) #7, !dbg !4644
  %1 = bitcast %struct.device* %call to i8*, !dbg !4644
  store i8* %1, i8** %__mptr, align 8, !dbg !4644
  br label %do.body, !dbg !4644

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4645

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4644
  %add.ptr = getelementptr i8, i8* %2, i64 -176, !dbg !4644
  %3 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !4644
  store %struct.pci_dev* %3, %struct.pci_dev** %tmp, align 8, !dbg !4645
  %4 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !4644
  store %struct.pci_dev* %4, %struct.pci_dev** %dev, align 8, !dbg !4641
  %5 = load %struct.bin_attribute*, %struct.bin_attribute** %bin_attr.addr, align 8, !dbg !4647
  %size = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %5, i32 0, i32 1, !dbg !4649
  %6 = load i64, i64* %size, align 8, !dbg !4649
  %cmp = icmp ugt i64 %6, 0, !dbg !4650
  br i1 %cmp, label %if.then, label %if.end10, !dbg !4651

if.then:                                          ; preds = %do.end
  %7 = load i64, i64* %off.addr, align 8, !dbg !4652
  %8 = load %struct.bin_attribute*, %struct.bin_attribute** %bin_attr.addr, align 8, !dbg !4655
  %size1 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %8, i32 0, i32 1, !dbg !4656
  %9 = load i64, i64* %size1, align 8, !dbg !4656
  %cmp2 = icmp ugt i64 %7, %9, !dbg !4657
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !4658

if.then3:                                         ; preds = %if.then
  store i64 0, i64* %count.addr, align 8, !dbg !4659
  br label %if.end9, !dbg !4660

if.else:                                          ; preds = %if.then
  %10 = load i64, i64* %count.addr, align 8, !dbg !4661
  %11 = load %struct.bin_attribute*, %struct.bin_attribute** %bin_attr.addr, align 8, !dbg !4663
  %size4 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %11, i32 0, i32 1, !dbg !4664
  %12 = load i64, i64* %size4, align 8, !dbg !4664
  %13 = load i64, i64* %off.addr, align 8, !dbg !4665
  %sub = sub i64 %12, %13, !dbg !4666
  %cmp5 = icmp ugt i64 %10, %sub, !dbg !4667
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !4668

if.then6:                                         ; preds = %if.else
  %14 = load %struct.bin_attribute*, %struct.bin_attribute** %bin_attr.addr, align 8, !dbg !4669
  %size7 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %14, i32 0, i32 1, !dbg !4670
  %15 = load i64, i64* %size7, align 8, !dbg !4670
  %16 = load i64, i64* %off.addr, align 8, !dbg !4671
  %sub8 = sub i64 %15, %16, !dbg !4672
  store i64 %sub8, i64* %count.addr, align 8, !dbg !4673
  br label %if.end, !dbg !4674

if.end:                                           ; preds = %if.then6, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then3
  br label %if.end10, !dbg !4675

if.end10:                                         ; preds = %if.end9, %do.end
  %17 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4676
  %18 = load i64, i64* %off.addr, align 8, !dbg !4677
  %19 = load i64, i64* %count.addr, align 8, !dbg !4678
  %20 = load i8*, i8** %buf.addr, align 8, !dbg !4679
  %call11 = call i64 @pci_write_vpd(%struct.pci_dev* %17, i64 %18, i64 %19, i8* %20) #7, !dbg !4680
  ret i64 %call11, !dbg !4681
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_bin_file(%struct.kobject*, %struct.bin_attribute*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pcie_vpd_remove_sysfs_dev_files(%struct.pci_dev* %dev) #0 !dbg !4682 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4683, metadata !DIExpression()), !dbg !4684
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4685
  %vpd = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 58, !dbg !4687
  %1 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !4687
  %tobool = icmp ne %struct.pci_vpd* %1, null, !dbg !4685
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4688

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4689
  %vpd1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 58, !dbg !4690
  %3 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd1, align 8, !dbg !4690
  %attr = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %3, i32 0, i32 1, !dbg !4691
  %4 = load %struct.bin_attribute*, %struct.bin_attribute** %attr, align 8, !dbg !4691
  %tobool2 = icmp ne %struct.bin_attribute* %4, null, !dbg !4689
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4692

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4693
  %dev3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 41, !dbg !4695
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev3, i32 0, i32 0, !dbg !4696
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4697
  %vpd4 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 58, !dbg !4698
  %7 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd4, align 8, !dbg !4698
  %attr5 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %7, i32 0, i32 1, !dbg !4699
  %8 = load %struct.bin_attribute*, %struct.bin_attribute** %attr5, align 8, !dbg !4699
  call void @sysfs_remove_bin_file(%struct.kobject* %kobj, %struct.bin_attribute* %8) #7, !dbg !4700
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4701
  %vpd6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 58, !dbg !4702
  %10 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd6, align 8, !dbg !4702
  %attr7 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %10, i32 0, i32 1, !dbg !4703
  %11 = load %struct.bin_attribute*, %struct.bin_attribute** %attr7, align 8, !dbg !4703
  %12 = bitcast %struct.bin_attribute* %11 to i8*, !dbg !4701
  call void @kfree(i8* %12) #7, !dbg !4704
  br label %if.end, !dbg !4705

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !4706
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_bin_file(%struct.kobject*, %struct.bin_attribute*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_vpd_find_tag(i8* %buf, i32 %off, i32 %len, i8 zeroext %rdt) #0 !dbg !4707 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %off.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %rdt.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %val = alloca i8, align 1
  %tag = alloca i8, align 1
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4712, metadata !DIExpression()), !dbg !4713
  store i32 %off, i32* %off.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %off.addr, metadata !4714, metadata !DIExpression()), !dbg !4715
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !4716, metadata !DIExpression()), !dbg !4717
  store i8 %rdt, i8* %rdt.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %rdt.addr, metadata !4718, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4720, metadata !DIExpression()), !dbg !4721
  %0 = load i32, i32* %off.addr, align 4, !dbg !4722
  store i32 %0, i32* %i, align 4, !dbg !4724
  br label %for.cond, !dbg !4725

for.cond:                                         ; preds = %if.end35, %entry
  %1 = load i32, i32* %i, align 4, !dbg !4726
  %2 = load i32, i32* %len.addr, align 4, !dbg !4728
  %cmp = icmp ult i32 %1, %2, !dbg !4729
  br i1 %cmp, label %for.body, label %for.end, !dbg !4730

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8* %val, metadata !4731, metadata !DIExpression()), !dbg !4733
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !4734
  %4 = load i32, i32* %i, align 4, !dbg !4735
  %idxprom = sext i32 %4 to i64, !dbg !4734
  %arrayidx = getelementptr i8, i8* %3, i64 %idxprom, !dbg !4734
  %5 = load i8, i8* %arrayidx, align 1, !dbg !4734
  store i8 %5, i8* %val, align 1, !dbg !4733
  %6 = load i8, i8* %val, align 1, !dbg !4736
  %conv = zext i8 %6 to i32, !dbg !4736
  %and = and i32 %conv, 128, !dbg !4738
  %tobool = icmp ne i32 %and, 0, !dbg !4738
  br i1 %tobool, label %if.then, label %if.else, !dbg !4739

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !4740
  %add = add i32 %7, 3, !dbg !4743
  %8 = load i32, i32* %len.addr, align 4, !dbg !4744
  %cmp1 = icmp ugt i32 %add, %8, !dbg !4745
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !4746

if.then3:                                         ; preds = %if.then
  br label %for.end, !dbg !4747

if.end:                                           ; preds = %if.then
  %9 = load i8, i8* %val, align 1, !dbg !4748
  %conv4 = zext i8 %9 to i32, !dbg !4748
  %10 = load i8, i8* %rdt.addr, align 1, !dbg !4750
  %conv5 = zext i8 %10 to i32, !dbg !4750
  %cmp6 = icmp eq i32 %conv4, %conv5, !dbg !4751
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !4752

if.then8:                                         ; preds = %if.end
  %11 = load i32, i32* %i, align 4, !dbg !4753
  store i32 %11, i32* %retval, align 4, !dbg !4754
  br label %return, !dbg !4754

if.end9:                                          ; preds = %if.end
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !4755
  %13 = load i32, i32* %i, align 4, !dbg !4756
  %idxprom10 = sext i32 %13 to i64, !dbg !4755
  %arrayidx11 = getelementptr i8, i8* %12, i64 %idxprom10, !dbg !4755
  %call = call zeroext i16 @pci_vpd_lrdt_size(i8* %arrayidx11) #7, !dbg !4757
  %conv12 = zext i16 %call to i32, !dbg !4757
  %add13 = add i32 3, %conv12, !dbg !4758
  %14 = load i32, i32* %i, align 4, !dbg !4759
  %add14 = add i32 %14, %add13, !dbg !4759
  store i32 %add14, i32* %i, align 4, !dbg !4759
  br label %if.end35, !dbg !4760

if.else:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8* %tag, metadata !4761, metadata !DIExpression()), !dbg !4763
  %15 = load i8, i8* %val, align 1, !dbg !4764
  %conv15 = zext i8 %15 to i32, !dbg !4764
  %and16 = and i32 %conv15, -8, !dbg !4765
  %conv17 = trunc i32 %and16 to i8, !dbg !4764
  store i8 %conv17, i8* %tag, align 1, !dbg !4763
  %16 = load i8, i8* %tag, align 1, !dbg !4766
  %conv18 = zext i8 %16 to i32, !dbg !4766
  %17 = load i8, i8* %rdt.addr, align 1, !dbg !4768
  %conv19 = zext i8 %17 to i32, !dbg !4768
  %cmp20 = icmp eq i32 %conv18, %conv19, !dbg !4769
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !4770

if.then22:                                        ; preds = %if.else
  %18 = load i32, i32* %i, align 4, !dbg !4771
  store i32 %18, i32* %retval, align 4, !dbg !4772
  br label %return, !dbg !4772

if.end23:                                         ; preds = %if.else
  %19 = load i8, i8* %tag, align 1, !dbg !4773
  %conv24 = zext i8 %19 to i32, !dbg !4773
  %cmp25 = icmp eq i32 %conv24, 120, !dbg !4775
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !4776

if.then27:                                        ; preds = %if.end23
  br label %for.end, !dbg !4777

if.end28:                                         ; preds = %if.end23
  %20 = load i8*, i8** %buf.addr, align 8, !dbg !4778
  %21 = load i32, i32* %i, align 4, !dbg !4779
  %idxprom29 = sext i32 %21 to i64, !dbg !4778
  %arrayidx30 = getelementptr i8, i8* %20, i64 %idxprom29, !dbg !4778
  %call31 = call zeroext i8 @pci_vpd_srdt_size(i8* %arrayidx30) #7, !dbg !4780
  %conv32 = zext i8 %call31 to i32, !dbg !4780
  %add33 = add i32 1, %conv32, !dbg !4781
  %22 = load i32, i32* %i, align 4, !dbg !4782
  %add34 = add i32 %22, %add33, !dbg !4782
  store i32 %add34, i32* %i, align 4, !dbg !4782
  br label %if.end35

if.end35:                                         ; preds = %if.end28, %if.end9
  br label %for.cond, !dbg !4783, !llvm.loop !4784

for.end:                                          ; preds = %if.then27, %if.then3, %for.cond
  store i32 -2, i32* %retval, align 4, !dbg !4786
  br label %return, !dbg !4786

return:                                           ; preds = %for.end, %if.then22, %if.then8
  %23 = load i32, i32* %retval, align 4, !dbg !4787
  ret i32 %23, !dbg !4787
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @pci_vpd_lrdt_size(i8* %lrdt) #0 !dbg !4788 {
entry:
  %lrdt.addr = alloca i8*, align 8
  store i8* %lrdt, i8** %lrdt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lrdt.addr, metadata !4791, metadata !DIExpression()), !dbg !4792
  %0 = load i8*, i8** %lrdt.addr, align 8, !dbg !4793
  %arrayidx = getelementptr i8, i8* %0, i64 1, !dbg !4793
  %1 = load i8, i8* %arrayidx, align 1, !dbg !4793
  %conv = zext i8 %1 to i16, !dbg !4794
  %conv1 = zext i16 %conv to i32, !dbg !4794
  %2 = load i8*, i8** %lrdt.addr, align 8, !dbg !4795
  %arrayidx2 = getelementptr i8, i8* %2, i64 2, !dbg !4795
  %3 = load i8, i8* %arrayidx2, align 1, !dbg !4795
  %conv3 = zext i8 %3 to i16, !dbg !4796
  %conv4 = zext i16 %conv3 to i32, !dbg !4796
  %shl = shl i32 %conv4, 8, !dbg !4797
  %add = add i32 %conv1, %shl, !dbg !4798
  %conv5 = trunc i32 %add to i16, !dbg !4794
  ret i16 %conv5, !dbg !4799
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @pci_vpd_srdt_size(i8* %srdt) #0 !dbg !4800 {
entry:
  %srdt.addr = alloca i8*, align 8
  store i8* %srdt, i8** %srdt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %srdt.addr, metadata !4803, metadata !DIExpression()), !dbg !4804
  %0 = load i8*, i8** %srdt.addr, align 8, !dbg !4805
  %1 = load i8, i8* %0, align 1, !dbg !4806
  %conv = zext i8 %1 to i32, !dbg !4807
  %and = and i32 %conv, 7, !dbg !4808
  %conv1 = trunc i32 %and to i8, !dbg !4807
  ret i8 %conv1, !dbg !4809
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_vpd_find_info_keyword(i8* %buf, i32 %off, i32 %len, i8* %kw) #0 !dbg !4810 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %off.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %kw.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4813, metadata !DIExpression()), !dbg !4814
  store i32 %off, i32* %off.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %off.addr, metadata !4815, metadata !DIExpression()), !dbg !4816
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !4817, metadata !DIExpression()), !dbg !4818
  store i8* %kw, i8** %kw.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %kw.addr, metadata !4819, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4821, metadata !DIExpression()), !dbg !4822
  %0 = load i32, i32* %off.addr, align 4, !dbg !4823
  store i32 %0, i32* %i, align 4, !dbg !4825
  br label %for.cond, !dbg !4826

for.cond:                                         ; preds = %if.end, %entry
  %1 = load i32, i32* %i, align 4, !dbg !4827
  %add = add i32 %1, 3, !dbg !4829
  %2 = load i32, i32* %off.addr, align 4, !dbg !4830
  %3 = load i32, i32* %len.addr, align 4, !dbg !4831
  %add1 = add i32 %2, %3, !dbg !4832
  %cmp = icmp ule i32 %add, %add1, !dbg !4833
  br i1 %cmp, label %for.body, label %for.end, !dbg !4834

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !4835
  %5 = load i32, i32* %i, align 4, !dbg !4838
  %add2 = add i32 %5, 0, !dbg !4839
  %idxprom = sext i32 %add2 to i64, !dbg !4835
  %arrayidx = getelementptr i8, i8* %4, i64 %idxprom, !dbg !4835
  %6 = load i8, i8* %arrayidx, align 1, !dbg !4835
  %conv = zext i8 %6 to i32, !dbg !4835
  %7 = load i8*, i8** %kw.addr, align 8, !dbg !4840
  %arrayidx3 = getelementptr i8, i8* %7, i64 0, !dbg !4840
  %8 = load i8, i8* %arrayidx3, align 1, !dbg !4840
  %conv4 = sext i8 %8 to i32, !dbg !4840
  %cmp5 = icmp eq i32 %conv, %conv4, !dbg !4841
  br i1 %cmp5, label %land.lhs.true, label %if.end, !dbg !4842

land.lhs.true:                                    ; preds = %for.body
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !4843
  %10 = load i32, i32* %i, align 4, !dbg !4844
  %add7 = add i32 %10, 1, !dbg !4845
  %idxprom8 = sext i32 %add7 to i64, !dbg !4843
  %arrayidx9 = getelementptr i8, i8* %9, i64 %idxprom8, !dbg !4843
  %11 = load i8, i8* %arrayidx9, align 1, !dbg !4843
  %conv10 = zext i8 %11 to i32, !dbg !4843
  %12 = load i8*, i8** %kw.addr, align 8, !dbg !4846
  %arrayidx11 = getelementptr i8, i8* %12, i64 1, !dbg !4846
  %13 = load i8, i8* %arrayidx11, align 1, !dbg !4846
  %conv12 = sext i8 %13 to i32, !dbg !4846
  %cmp13 = icmp eq i32 %conv10, %conv12, !dbg !4847
  br i1 %cmp13, label %if.then, label %if.end, !dbg !4848

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32, i32* %i, align 4, !dbg !4849
  store i32 %14, i32* %retval, align 4, !dbg !4850
  br label %return, !dbg !4850

if.end:                                           ; preds = %land.lhs.true, %for.body
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !4851
  %16 = load i32, i32* %i, align 4, !dbg !4852
  %idxprom15 = sext i32 %16 to i64, !dbg !4851
  %arrayidx16 = getelementptr i8, i8* %15, i64 %idxprom15, !dbg !4851
  %call = call zeroext i8 @pci_vpd_info_field_size(i8* %arrayidx16) #7, !dbg !4853
  %conv17 = zext i8 %call to i32, !dbg !4853
  %add18 = add i32 3, %conv17, !dbg !4854
  %17 = load i32, i32* %i, align 4, !dbg !4855
  %add19 = add i32 %17, %add18, !dbg !4855
  store i32 %add19, i32* %i, align 4, !dbg !4855
  br label %for.cond, !dbg !4856, !llvm.loop !4857

for.end:                                          ; preds = %for.cond
  store i32 -2, i32* %retval, align 4, !dbg !4859
  br label %return, !dbg !4859

return:                                           ; preds = %for.end, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !4860
  ret i32 %18, !dbg !4860
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @pci_vpd_info_field_size(i8* %info_field) #0 !dbg !4861 {
entry:
  %info_field.addr = alloca i8*, align 8
  store i8* %info_field, i8** %info_field.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %info_field.addr, metadata !4862, metadata !DIExpression()), !dbg !4863
  %0 = load i8*, i8** %info_field.addr, align 8, !dbg !4864
  %arrayidx = getelementptr i8, i8* %0, i64 2, !dbg !4864
  %1 = load i8, i8* %arrayidx, align 1, !dbg !4864
  ret i8 %1, !dbg !4865
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @quirk_f0_vpd_link(%struct.pci_dev* %dev) #0 !dbg !4866 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %f0 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4867, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %f0, metadata !4869, metadata !DIExpression()), !dbg !4870
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4871
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 6, !dbg !4871
  %1 = load i32, i32* %devfn, align 8, !dbg !4871
  %and = and i32 %1, 7, !dbg !4871
  %tobool = icmp ne i32 %and, 0, !dbg !4871
  br i1 %tobool, label %if.end, label %if.then, !dbg !4873

if.then:                                          ; preds = %entry
  br label %return, !dbg !4874

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4875
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 1, !dbg !4876
  %3 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4876
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4877
  %devfn1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 6, !dbg !4877
  %5 = load i32, i32* %devfn1, align 8, !dbg !4877
  %shr = lshr i32 %5, 3, !dbg !4877
  %and2 = and i32 %shr, 31, !dbg !4877
  %and3 = and i32 %and2, 31, !dbg !4877
  %shl = shl i32 %and3, 3, !dbg !4877
  %call = call %struct.pci_dev* @pci_get_slot(%struct.pci_bus* %3, i32 %shl) #7, !dbg !4878
  store %struct.pci_dev* %call, %struct.pci_dev** %f0, align 8, !dbg !4879
  %6 = load %struct.pci_dev*, %struct.pci_dev** %f0, align 8, !dbg !4880
  %tobool4 = icmp ne %struct.pci_dev* %6, null, !dbg !4880
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4882

if.then5:                                         ; preds = %if.end
  br label %return, !dbg !4883

if.end6:                                          ; preds = %if.end
  %7 = load %struct.pci_dev*, %struct.pci_dev** %f0, align 8, !dbg !4884
  %vpd = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 58, !dbg !4886
  %8 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !4886
  %tobool7 = icmp ne %struct.pci_vpd* %8, null, !dbg !4884
  br i1 %tobool7, label %land.lhs.true, label %if.end23, !dbg !4887

land.lhs.true:                                    ; preds = %if.end6
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4888
  %class = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 11, !dbg !4889
  %10 = load i32, i32* %class, align 4, !dbg !4889
  %11 = load %struct.pci_dev*, %struct.pci_dev** %f0, align 8, !dbg !4890
  %class8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 11, !dbg !4891
  %12 = load i32, i32* %class8, align 4, !dbg !4891
  %cmp = icmp eq i32 %10, %12, !dbg !4892
  br i1 %cmp, label %land.lhs.true9, label %if.end23, !dbg !4893

land.lhs.true9:                                   ; preds = %land.lhs.true
  %13 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4894
  %vendor = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 7, !dbg !4895
  %14 = load i16, i16* %vendor, align 4, !dbg !4895
  %conv = zext i16 %14 to i32, !dbg !4894
  %15 = load %struct.pci_dev*, %struct.pci_dev** %f0, align 8, !dbg !4896
  %vendor10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 7, !dbg !4897
  %16 = load i16, i16* %vendor10, align 4, !dbg !4897
  %conv11 = zext i16 %16 to i32, !dbg !4896
  %cmp12 = icmp eq i32 %conv, %conv11, !dbg !4898
  br i1 %cmp12, label %land.lhs.true14, label %if.end23, !dbg !4899

land.lhs.true14:                                  ; preds = %land.lhs.true9
  %17 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4900
  %device = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 8, !dbg !4901
  %18 = load i16, i16* %device, align 2, !dbg !4901
  %conv15 = zext i16 %18 to i32, !dbg !4900
  %19 = load %struct.pci_dev*, %struct.pci_dev** %f0, align 8, !dbg !4902
  %device16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 8, !dbg !4903
  %20 = load i16, i16* %device16, align 2, !dbg !4903
  %conv17 = zext i16 %20 to i32, !dbg !4902
  %cmp18 = icmp eq i32 %conv15, %conv17, !dbg !4904
  br i1 %cmp18, label %if.then20, label %if.end23, !dbg !4905

if.then20:                                        ; preds = %land.lhs.true14
  %21 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4906
  %dev_flags = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 47, !dbg !4907
  %22 = load i16, i16* %dev_flags, align 2, !dbg !4908
  %conv21 = zext i16 %22 to i32, !dbg !4908
  %or = or i32 %conv21, 256, !dbg !4908
  %conv22 = trunc i32 %or to i16, !dbg !4908
  store i16 %conv22, i16* %dev_flags, align 2, !dbg !4908
  br label %if.end23, !dbg !4906

if.end23:                                         ; preds = %if.then20, %land.lhs.true14, %land.lhs.true9, %land.lhs.true, %if.end6
  %23 = load %struct.pci_dev*, %struct.pci_dev** %f0, align 8, !dbg !4909
  call void @pci_dev_put(%struct.pci_dev* %23) #7, !dbg !4910
  br label %return, !dbg !4911

return:                                           ; preds = %if.end23, %if.then5, %if.then
  ret void, !dbg !4911
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @quirk_blacklist_vpd(%struct.pci_dev* %dev) #0 !dbg !4912 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4913, metadata !DIExpression()), !dbg !4914
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4915
  %vpd = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 58, !dbg !4917
  %1 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !4917
  %tobool = icmp ne %struct.pci_vpd* %1, null, !dbg !4915
  br i1 %tobool, label %if.then, label %if.end, !dbg !4918

if.then:                                          ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4919
  %vpd1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 58, !dbg !4921
  %3 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd1, align 8, !dbg !4921
  %len = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %3, i32 0, i32 3, !dbg !4922
  store i32 0, i32* %len, align 8, !dbg !4923
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4924
  %dev2 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 41, !dbg !4924
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev2, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !4924
  br label %if.end, !dbg !4925

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4926
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @quirk_brcm_570x_limit_vpd(%struct.pci_dev* %dev) #0 !dbg !4927 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4928, metadata !DIExpression()), !dbg !4929
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4930
  %device = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 8, !dbg !4932
  %1 = load i16, i16* %device, align 2, !dbg !4932
  %conv = zext i16 %1 to i32, !dbg !4930
  %cmp = icmp eq i32 %conv, 5706, !dbg !4933
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4934

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4935
  %device2 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 8, !dbg !4936
  %3 = load i16, i16* %device2, align 2, !dbg !4936
  %conv3 = zext i16 %3 to i32, !dbg !4935
  %cmp4 = icmp eq i32 %conv3, 5802, !dbg !4937
  br i1 %cmp4, label %if.then, label %lor.lhs.false6, !dbg !4938

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4939
  %device7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 8, !dbg !4940
  %5 = load i16, i16* %device7, align 2, !dbg !4940
  %conv8 = zext i16 %5 to i32, !dbg !4939
  %cmp9 = icmp eq i32 %conv8, 5708, !dbg !4941
  br i1 %cmp9, label %if.then, label %lor.lhs.false11, !dbg !4942

lor.lhs.false11:                                  ; preds = %lor.lhs.false6
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4943
  %device12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 8, !dbg !4944
  %7 = load i16, i16* %device12, align 2, !dbg !4944
  %conv13 = zext i16 %7 to i32, !dbg !4943
  %cmp14 = icmp eq i32 %conv13, 5804, !dbg !4945
  br i1 %cmp14, label %if.then, label %lor.lhs.false16, !dbg !4946

lor.lhs.false16:                                  ; preds = %lor.lhs.false11
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4947
  %device17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 8, !dbg !4948
  %9 = load i16, i16* %device17, align 2, !dbg !4948
  %conv18 = zext i16 %9 to i32, !dbg !4947
  %cmp19 = icmp eq i32 %conv18, 5689, !dbg !4949
  br i1 %cmp19, label %land.lhs.true, label %if.end26, !dbg !4950

land.lhs.true:                                    ; preds = %lor.lhs.false16
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4951
  %revision = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 12, !dbg !4952
  %11 = load i8, i8* %revision, align 8, !dbg !4952
  %conv21 = zext i8 %11 to i32, !dbg !4951
  %and = and i32 %conv21, 240, !dbg !4953
  %cmp22 = icmp eq i32 %and, 0, !dbg !4954
  br i1 %cmp22, label %if.then, label %if.end26, !dbg !4955

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false11, %lor.lhs.false6, %lor.lhs.false, %entry
  %12 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4956
  %vpd = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 58, !dbg !4959
  %13 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !4959
  %tobool = icmp ne %struct.pci_vpd* %13, null, !dbg !4956
  br i1 %tobool, label %if.then24, label %if.end, !dbg !4960

if.then24:                                        ; preds = %if.then
  %14 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4961
  %vpd25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 58, !dbg !4962
  %15 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd25, align 8, !dbg !4962
  %len = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %15, i32 0, i32 3, !dbg !4963
  store i32 128, i32* %len, align 8, !dbg !4964
  br label %if.end, !dbg !4961

if.end:                                           ; preds = %if.then24, %if.then
  br label %if.end26, !dbg !4965

if.end26:                                         ; preds = %if.end, %land.lhs.true, %lor.lhs.false16
  ret void, !dbg !4966
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @quirk_chelsio_extend_vpd(%struct.pci_dev* %dev) #0 !dbg !4967 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %chip = alloca i32, align 4
  %func = alloca i32, align 4
  %prod = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4968, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.declare(metadata i32* %chip, metadata !4970, metadata !DIExpression()), !dbg !4971
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4972
  %device = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 8, !dbg !4973
  %1 = load i16, i16* %device, align 2, !dbg !4973
  %conv = zext i16 %1 to i32, !dbg !4972
  %and = and i32 %conv, 61440, !dbg !4974
  %shr = ashr i32 %and, 12, !dbg !4975
  store i32 %shr, i32* %chip, align 4, !dbg !4971
  call void @llvm.dbg.declare(metadata i32* %func, metadata !4976, metadata !DIExpression()), !dbg !4977
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4978
  %device1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 8, !dbg !4979
  %3 = load i16, i16* %device1, align 2, !dbg !4979
  %conv2 = zext i16 %3 to i32, !dbg !4978
  %and3 = and i32 %conv2, 3840, !dbg !4980
  %shr4 = ashr i32 %and3, 8, !dbg !4981
  store i32 %shr4, i32* %func, align 4, !dbg !4977
  call void @llvm.dbg.declare(metadata i32* %prod, metadata !4982, metadata !DIExpression()), !dbg !4983
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4984
  %device5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 8, !dbg !4985
  %5 = load i16, i16* %device5, align 2, !dbg !4985
  %conv6 = zext i16 %5 to i32, !dbg !4984
  %and7 = and i32 %conv6, 255, !dbg !4986
  %shr8 = ashr i32 %and7, 0, !dbg !4987
  store i32 %shr8, i32* %prod, align 4, !dbg !4983
  %6 = load i32, i32* %chip, align 4, !dbg !4988
  %cmp = icmp eq i32 %6, 0, !dbg !4990
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !4991

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %prod, align 4, !dbg !4992
  %cmp10 = icmp sge i32 %7, 32, !dbg !4993
  br i1 %cmp10, label %if.then, label %if.else, !dbg !4994

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4995
  %call = call i32 @pci_set_vpd_size(%struct.pci_dev* %8, i64 8192) #7, !dbg !4996
  br label %if.end19, !dbg !4996

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load i32, i32* %chip, align 4, !dbg !4997
  %cmp12 = icmp sge i32 %9, 4, !dbg !4999
  br i1 %cmp12, label %land.lhs.true14, label %if.end, !dbg !5000

land.lhs.true14:                                  ; preds = %if.else
  %10 = load i32, i32* %func, align 4, !dbg !5001
  %cmp15 = icmp slt i32 %10, 8, !dbg !5002
  br i1 %cmp15, label %if.then17, label %if.end, !dbg !5003

if.then17:                                        ; preds = %land.lhs.true14
  %11 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5004
  %call18 = call i32 @pci_set_vpd_size(%struct.pci_dev* %11, i64 2048) #7, !dbg !5005
  br label %if.end, !dbg !5005

if.end:                                           ; preds = %if.then17, %land.lhs.true14, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then
  ret void, !dbg !5006
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !5007 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5011, metadata !DIExpression()), !dbg !5016
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5018, metadata !DIExpression()), !dbg !5019
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5020, metadata !DIExpression()), !dbg !5021
  %0 = load i64, i64* %size.addr, align 8, !dbg !5022
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5024
  br i1 %1, label %if.then, label %if.end447, !dbg !5025

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5026
  %tobool = icmp ne i64 %2, 0, !dbg !5026
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5029

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5030
  br label %return, !dbg !5030

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5031
  %cmp = icmp ult i64 %3, 4096, !dbg !5033
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5034

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5035
  br label %return, !dbg !5035

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub = sub i64 %4, 1, !dbg !5036
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5036
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5036

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub4 = sub i64 %6, 1, !dbg !5036
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5036
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5036

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub6 = sub i64 %8, 1, !dbg !5036
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5036
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5036

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5036

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub9 = sub i64 %9, 1, !dbg !5036
  %and = and i64 %sub9, -9223372036854775808, !dbg !5036
  %tobool10 = icmp ne i64 %and, 0, !dbg !5036
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5036

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5036

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub13 = sub i64 %10, 1, !dbg !5036
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5036
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5036
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5036

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5036

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub18 = sub i64 %11, 1, !dbg !5036
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5036
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5036
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5036

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5036

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub23 = sub i64 %12, 1, !dbg !5036
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5036
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5036
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5036

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5036

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub28 = sub i64 %13, 1, !dbg !5036
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5036
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5036
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5036

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5036

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub33 = sub i64 %14, 1, !dbg !5036
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5036
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5036
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5036

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5036

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub38 = sub i64 %15, 1, !dbg !5036
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5036
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5036
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5036

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5036

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub43 = sub i64 %16, 1, !dbg !5036
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5036
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5036
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5036

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5036

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub48 = sub i64 %17, 1, !dbg !5036
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5036
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5036
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5036

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5036

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub53 = sub i64 %18, 1, !dbg !5036
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5036
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5036
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5036

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5036

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub58 = sub i64 %19, 1, !dbg !5036
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5036
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5036
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5036

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5036

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub63 = sub i64 %20, 1, !dbg !5036
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5036
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5036
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5036

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5036

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub68 = sub i64 %21, 1, !dbg !5036
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5036
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5036
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5036

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5036

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub73 = sub i64 %22, 1, !dbg !5036
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5036
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5036
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5036

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5036

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub78 = sub i64 %23, 1, !dbg !5036
  %and79 = and i64 %sub78, 562949953421312, !dbg !5036
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5036
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5036

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5036

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub83 = sub i64 %24, 1, !dbg !5036
  %and84 = and i64 %sub83, 281474976710656, !dbg !5036
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5036
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5036

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5036

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub88 = sub i64 %25, 1, !dbg !5036
  %and89 = and i64 %sub88, 140737488355328, !dbg !5036
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5036
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5036

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5036

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub93 = sub i64 %26, 1, !dbg !5036
  %and94 = and i64 %sub93, 70368744177664, !dbg !5036
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5036
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5036

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5036

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub98 = sub i64 %27, 1, !dbg !5036
  %and99 = and i64 %sub98, 35184372088832, !dbg !5036
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5036
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5036

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5036

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub103 = sub i64 %28, 1, !dbg !5036
  %and104 = and i64 %sub103, 17592186044416, !dbg !5036
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5036
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5036

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5036

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub108 = sub i64 %29, 1, !dbg !5036
  %and109 = and i64 %sub108, 8796093022208, !dbg !5036
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5036
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5036

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5036

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub113 = sub i64 %30, 1, !dbg !5036
  %and114 = and i64 %sub113, 4398046511104, !dbg !5036
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5036
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5036

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5036

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub118 = sub i64 %31, 1, !dbg !5036
  %and119 = and i64 %sub118, 2199023255552, !dbg !5036
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5036
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5036

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5036

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub123 = sub i64 %32, 1, !dbg !5036
  %and124 = and i64 %sub123, 1099511627776, !dbg !5036
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5036
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5036

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5036

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub128 = sub i64 %33, 1, !dbg !5036
  %and129 = and i64 %sub128, 549755813888, !dbg !5036
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5036
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5036

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5036

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub133 = sub i64 %34, 1, !dbg !5036
  %and134 = and i64 %sub133, 274877906944, !dbg !5036
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5036
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5036

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5036

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub138 = sub i64 %35, 1, !dbg !5036
  %and139 = and i64 %sub138, 137438953472, !dbg !5036
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5036
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5036

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5036

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub143 = sub i64 %36, 1, !dbg !5036
  %and144 = and i64 %sub143, 68719476736, !dbg !5036
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5036
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5036

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5036

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub148 = sub i64 %37, 1, !dbg !5036
  %and149 = and i64 %sub148, 34359738368, !dbg !5036
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5036
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5036

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5036

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub153 = sub i64 %38, 1, !dbg !5036
  %and154 = and i64 %sub153, 17179869184, !dbg !5036
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5036
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5036

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5036

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub158 = sub i64 %39, 1, !dbg !5036
  %and159 = and i64 %sub158, 8589934592, !dbg !5036
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5036
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5036

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5036

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub163 = sub i64 %40, 1, !dbg !5036
  %and164 = and i64 %sub163, 4294967296, !dbg !5036
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5036
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5036

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5036

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub168 = sub i64 %41, 1, !dbg !5036
  %and169 = and i64 %sub168, 2147483648, !dbg !5036
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5036
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5036

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5036

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub173 = sub i64 %42, 1, !dbg !5036
  %and174 = and i64 %sub173, 1073741824, !dbg !5036
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5036
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5036

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5036

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub178 = sub i64 %43, 1, !dbg !5036
  %and179 = and i64 %sub178, 536870912, !dbg !5036
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5036
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5036

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5036

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub183 = sub i64 %44, 1, !dbg !5036
  %and184 = and i64 %sub183, 268435456, !dbg !5036
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5036
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5036

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5036

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub188 = sub i64 %45, 1, !dbg !5036
  %and189 = and i64 %sub188, 134217728, !dbg !5036
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5036
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5036

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5036

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub193 = sub i64 %46, 1, !dbg !5036
  %and194 = and i64 %sub193, 67108864, !dbg !5036
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5036
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5036

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5036

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub198 = sub i64 %47, 1, !dbg !5036
  %and199 = and i64 %sub198, 33554432, !dbg !5036
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5036
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5036

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5036

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub203 = sub i64 %48, 1, !dbg !5036
  %and204 = and i64 %sub203, 16777216, !dbg !5036
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5036
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5036

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5036

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub208 = sub i64 %49, 1, !dbg !5036
  %and209 = and i64 %sub208, 8388608, !dbg !5036
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5036
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5036

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5036

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub213 = sub i64 %50, 1, !dbg !5036
  %and214 = and i64 %sub213, 4194304, !dbg !5036
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5036
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5036

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5036

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub218 = sub i64 %51, 1, !dbg !5036
  %and219 = and i64 %sub218, 2097152, !dbg !5036
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5036
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5036

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5036

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub223 = sub i64 %52, 1, !dbg !5036
  %and224 = and i64 %sub223, 1048576, !dbg !5036
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5036
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5036

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5036

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub228 = sub i64 %53, 1, !dbg !5036
  %and229 = and i64 %sub228, 524288, !dbg !5036
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5036
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5036

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5036

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub233 = sub i64 %54, 1, !dbg !5036
  %and234 = and i64 %sub233, 262144, !dbg !5036
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5036
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5036

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5036

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub238 = sub i64 %55, 1, !dbg !5036
  %and239 = and i64 %sub238, 131072, !dbg !5036
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5036
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5036

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5036

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub243 = sub i64 %56, 1, !dbg !5036
  %and244 = and i64 %sub243, 65536, !dbg !5036
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5036
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5036

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5036

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub248 = sub i64 %57, 1, !dbg !5036
  %and249 = and i64 %sub248, 32768, !dbg !5036
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5036
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5036

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5036

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub253 = sub i64 %58, 1, !dbg !5036
  %and254 = and i64 %sub253, 16384, !dbg !5036
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5036
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5036

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5036

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub258 = sub i64 %59, 1, !dbg !5036
  %and259 = and i64 %sub258, 8192, !dbg !5036
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5036
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5036

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5036

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub263 = sub i64 %60, 1, !dbg !5036
  %and264 = and i64 %sub263, 4096, !dbg !5036
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5036
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5036

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5036

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub268 = sub i64 %61, 1, !dbg !5036
  %and269 = and i64 %sub268, 2048, !dbg !5036
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5036
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5036

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5036

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub273 = sub i64 %62, 1, !dbg !5036
  %and274 = and i64 %sub273, 1024, !dbg !5036
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5036
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5036

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5036

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub278 = sub i64 %63, 1, !dbg !5036
  %and279 = and i64 %sub278, 512, !dbg !5036
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5036
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5036

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5036

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub283 = sub i64 %64, 1, !dbg !5036
  %and284 = and i64 %sub283, 256, !dbg !5036
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5036
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5036

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5036

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub288 = sub i64 %65, 1, !dbg !5036
  %and289 = and i64 %sub288, 128, !dbg !5036
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5036
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5036

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5036

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub293 = sub i64 %66, 1, !dbg !5036
  %and294 = and i64 %sub293, 64, !dbg !5036
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5036
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5036

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5036

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub298 = sub i64 %67, 1, !dbg !5036
  %and299 = and i64 %sub298, 32, !dbg !5036
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5036
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5036

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5036

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub303 = sub i64 %68, 1, !dbg !5036
  %and304 = and i64 %sub303, 16, !dbg !5036
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5036
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5036

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5036

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub308 = sub i64 %69, 1, !dbg !5036
  %and309 = and i64 %sub308, 8, !dbg !5036
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5036
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5036

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5036

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub313 = sub i64 %70, 1, !dbg !5036
  %and314 = and i64 %sub313, 4, !dbg !5036
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5036
  %71 = zext i1 %tobool315 to i64, !dbg !5036
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5036
  br label %cond.end, !dbg !5036

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5036
  br label %cond.end317, !dbg !5036

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5036
  br label %cond.end319, !dbg !5036

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5036
  br label %cond.end321, !dbg !5036

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5036
  br label %cond.end323, !dbg !5036

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5036
  br label %cond.end325, !dbg !5036

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5036
  br label %cond.end327, !dbg !5036

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5036
  br label %cond.end329, !dbg !5036

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5036
  br label %cond.end331, !dbg !5036

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5036
  br label %cond.end333, !dbg !5036

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5036
  br label %cond.end335, !dbg !5036

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5036
  br label %cond.end337, !dbg !5036

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5036
  br label %cond.end339, !dbg !5036

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5036
  br label %cond.end341, !dbg !5036

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5036
  br label %cond.end343, !dbg !5036

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5036
  br label %cond.end345, !dbg !5036

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5036
  br label %cond.end347, !dbg !5036

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5036
  br label %cond.end349, !dbg !5036

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5036
  br label %cond.end351, !dbg !5036

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5036
  br label %cond.end353, !dbg !5036

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5036
  br label %cond.end355, !dbg !5036

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5036
  br label %cond.end357, !dbg !5036

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5036
  br label %cond.end359, !dbg !5036

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5036
  br label %cond.end361, !dbg !5036

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5036
  br label %cond.end363, !dbg !5036

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5036
  br label %cond.end365, !dbg !5036

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5036
  br label %cond.end367, !dbg !5036

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5036
  br label %cond.end369, !dbg !5036

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5036
  br label %cond.end371, !dbg !5036

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5036
  br label %cond.end373, !dbg !5036

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5036
  br label %cond.end375, !dbg !5036

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5036
  br label %cond.end377, !dbg !5036

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5036
  br label %cond.end379, !dbg !5036

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5036
  br label %cond.end381, !dbg !5036

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5036
  br label %cond.end383, !dbg !5036

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5036
  br label %cond.end385, !dbg !5036

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5036
  br label %cond.end387, !dbg !5036

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5036
  br label %cond.end389, !dbg !5036

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5036
  br label %cond.end391, !dbg !5036

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5036
  br label %cond.end393, !dbg !5036

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5036
  br label %cond.end395, !dbg !5036

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5036
  br label %cond.end397, !dbg !5036

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5036
  br label %cond.end399, !dbg !5036

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5036
  br label %cond.end401, !dbg !5036

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5036
  br label %cond.end403, !dbg !5036

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5036
  br label %cond.end405, !dbg !5036

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5036
  br label %cond.end407, !dbg !5036

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5036
  br label %cond.end409, !dbg !5036

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5036
  br label %cond.end411, !dbg !5036

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5036
  br label %cond.end413, !dbg !5036

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5036
  br label %cond.end415, !dbg !5036

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5036
  br label %cond.end417, !dbg !5036

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5036
  br label %cond.end419, !dbg !5036

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5036
  br label %cond.end421, !dbg !5036

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5036
  br label %cond.end423, !dbg !5036

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5036
  br label %cond.end425, !dbg !5036

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5036
  br label %cond.end427, !dbg !5036

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5036
  br label %cond.end429, !dbg !5036

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5036
  br label %cond.end431, !dbg !5036

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5036
  br label %cond.end433, !dbg !5036

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5036
  br label %cond.end435, !dbg !5036

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5036
  br label %cond.end437, !dbg !5036

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5036
  br label %cond.end440, !dbg !5036

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5036

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5036
  br label %cond.end444, !dbg !5036

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5036
  %sub443 = sub i64 %72, 1, !dbg !5036
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !5036
  br label %cond.end444, !dbg !5036

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5036
  %sub446 = sub i32 %cond445, 12, !dbg !5037
  %add = add i32 %sub446, 1, !dbg !5038
  store i32 %add, i32* %retval, align 4, !dbg !5039
  br label %return, !dbg !5039

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5040
  %dec = add i64 %73, -1, !dbg !5040
  store i64 %dec, i64* %size.addr, align 8, !dbg !5040
  %74 = load i64, i64* %size.addr, align 8, !dbg !5041
  %shr = lshr i64 %74, 12, !dbg !5041
  store i64 %shr, i64* %size.addr, align 8, !dbg !5041
  %75 = load i64, i64* %size.addr, align 8, !dbg !5042
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5019
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5043
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5044
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !5043, !srcloc !5045
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5043
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5046
  %add.i = add i32 %79, 1, !dbg !5047
  store i32 %add.i, i32* %retval, align 4, !dbg !5048
  br label %return, !dbg !5048

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5049
  ret i32 %80, !dbg !5049
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !5050 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5011, metadata !DIExpression()), !dbg !5054
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5018, metadata !DIExpression()), !dbg !5056
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5057, metadata !DIExpression()), !dbg !5058
  %0 = load i64, i64* %n.addr, align 8, !dbg !5059
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5056
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5060
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5061
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !5060, !srcloc !5045
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5060
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5062
  %add.i = add i32 %4, 1, !dbg !5063
  %sub = sub i32 %add.i, 1, !dbg !5064
  ret i32 %sub, !dbg !5065
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5066 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5070, metadata !DIExpression()), !dbg !5071
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5072, metadata !DIExpression()), !dbg !5073
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5074, metadata !DIExpression()), !dbg !5075
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5076, metadata !DIExpression()), !dbg !5077
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5078
  ret i8* %0, !dbg !5079
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pci_vpd_f0_read(%struct.pci_dev* %dev, i64 %pos, i64 %count, i8* %arg) #0 !dbg !5080 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pos.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %tdev = alloca %struct.pci_dev*, align 8
  %ret = alloca i64, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5081, metadata !DIExpression()), !dbg !5082
  store i64 %pos, i64* %pos.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pos.addr, metadata !5083, metadata !DIExpression()), !dbg !5084
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5085, metadata !DIExpression()), !dbg !5086
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !5087, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %tdev, metadata !5089, metadata !DIExpression()), !dbg !5090
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5091
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 1, !dbg !5092
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5092
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5093
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 6, !dbg !5093
  %3 = load i32, i32* %devfn, align 8, !dbg !5093
  %shr = lshr i32 %3, 3, !dbg !5093
  %and = and i32 %shr, 31, !dbg !5093
  %and1 = and i32 %and, 31, !dbg !5093
  %shl = shl i32 %and1, 3, !dbg !5093
  %call = call %struct.pci_dev* @pci_get_slot(%struct.pci_bus* %1, i32 %shl) #7, !dbg !5094
  store %struct.pci_dev* %call, %struct.pci_dev** %tdev, align 8, !dbg !5090
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !5095, metadata !DIExpression()), !dbg !5096
  %4 = load %struct.pci_dev*, %struct.pci_dev** %tdev, align 8, !dbg !5097
  %tobool = icmp ne %struct.pci_dev* %4, null, !dbg !5097
  br i1 %tobool, label %if.end, label %if.then, !dbg !5099

if.then:                                          ; preds = %entry
  store i64 -19, i64* %retval, align 8, !dbg !5100
  br label %return, !dbg !5100

if.end:                                           ; preds = %entry
  %5 = load %struct.pci_dev*, %struct.pci_dev** %tdev, align 8, !dbg !5101
  %6 = load i64, i64* %pos.addr, align 8, !dbg !5102
  %7 = load i64, i64* %count.addr, align 8, !dbg !5103
  %8 = load i8*, i8** %arg.addr, align 8, !dbg !5104
  %call2 = call i64 @pci_read_vpd(%struct.pci_dev* %5, i64 %6, i64 %7, i8* %8) #7, !dbg !5105
  store i64 %call2, i64* %ret, align 8, !dbg !5106
  %9 = load %struct.pci_dev*, %struct.pci_dev** %tdev, align 8, !dbg !5107
  call void @pci_dev_put(%struct.pci_dev* %9) #7, !dbg !5108
  %10 = load i64, i64* %ret, align 8, !dbg !5109
  store i64 %10, i64* %retval, align 8, !dbg !5110
  br label %return, !dbg !5110

return:                                           ; preds = %if.end, %if.then
  %11 = load i64, i64* %retval, align 8, !dbg !5111
  ret i64 %11, !dbg !5111
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pci_vpd_f0_write(%struct.pci_dev* %dev, i64 %pos, i64 %count, i8* %arg) #0 !dbg !5112 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pos.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %tdev = alloca %struct.pci_dev*, align 8
  %ret = alloca i64, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5113, metadata !DIExpression()), !dbg !5114
  store i64 %pos, i64* %pos.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pos.addr, metadata !5115, metadata !DIExpression()), !dbg !5116
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5117, metadata !DIExpression()), !dbg !5118
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !5119, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %tdev, metadata !5121, metadata !DIExpression()), !dbg !5122
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5123
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 1, !dbg !5124
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5124
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5125
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 6, !dbg !5125
  %3 = load i32, i32* %devfn, align 8, !dbg !5125
  %shr = lshr i32 %3, 3, !dbg !5125
  %and = and i32 %shr, 31, !dbg !5125
  %and1 = and i32 %and, 31, !dbg !5125
  %shl = shl i32 %and1, 3, !dbg !5125
  %call = call %struct.pci_dev* @pci_get_slot(%struct.pci_bus* %1, i32 %shl) #7, !dbg !5126
  store %struct.pci_dev* %call, %struct.pci_dev** %tdev, align 8, !dbg !5122
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !5127, metadata !DIExpression()), !dbg !5128
  %4 = load %struct.pci_dev*, %struct.pci_dev** %tdev, align 8, !dbg !5129
  %tobool = icmp ne %struct.pci_dev* %4, null, !dbg !5129
  br i1 %tobool, label %if.end, label %if.then, !dbg !5131

if.then:                                          ; preds = %entry
  store i64 -19, i64* %retval, align 8, !dbg !5132
  br label %return, !dbg !5132

if.end:                                           ; preds = %entry
  %5 = load %struct.pci_dev*, %struct.pci_dev** %tdev, align 8, !dbg !5133
  %6 = load i64, i64* %pos.addr, align 8, !dbg !5134
  %7 = load i64, i64* %count.addr, align 8, !dbg !5135
  %8 = load i8*, i8** %arg.addr, align 8, !dbg !5136
  %call2 = call i64 @pci_write_vpd(%struct.pci_dev* %5, i64 %6, i64 %7, i8* %8) #7, !dbg !5137
  store i64 %call2, i64* %ret, align 8, !dbg !5138
  %9 = load %struct.pci_dev*, %struct.pci_dev** %tdev, align 8, !dbg !5139
  call void @pci_dev_put(%struct.pci_dev* %9) #7, !dbg !5140
  %10 = load i64, i64* %ret, align 8, !dbg !5141
  store i64 %10, i64* %retval, align 8, !dbg !5142
  br label %return, !dbg !5142

return:                                           ; preds = %if.end, %if.then
  %11 = load i64, i64* %retval, align 8, !dbg !5143
  ret i64 %11, !dbg !5143
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_vpd_f0_set_size(%struct.pci_dev* %dev, i64 %len) #0 !dbg !5144 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %len.addr = alloca i64, align 8
  %tdev = alloca %struct.pci_dev*, align 8
  %ret = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5145, metadata !DIExpression()), !dbg !5146
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5147, metadata !DIExpression()), !dbg !5148
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %tdev, metadata !5149, metadata !DIExpression()), !dbg !5150
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5151
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 1, !dbg !5152
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5152
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5153
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 6, !dbg !5153
  %3 = load i32, i32* %devfn, align 8, !dbg !5153
  %shr = lshr i32 %3, 3, !dbg !5153
  %and = and i32 %shr, 31, !dbg !5153
  %and1 = and i32 %and, 31, !dbg !5153
  %shl = shl i32 %and1, 3, !dbg !5153
  %call = call %struct.pci_dev* @pci_get_slot(%struct.pci_bus* %1, i32 %shl) #7, !dbg !5154
  store %struct.pci_dev* %call, %struct.pci_dev** %tdev, align 8, !dbg !5150
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5155, metadata !DIExpression()), !dbg !5156
  %4 = load %struct.pci_dev*, %struct.pci_dev** %tdev, align 8, !dbg !5157
  %tobool = icmp ne %struct.pci_dev* %4, null, !dbg !5157
  br i1 %tobool, label %if.end, label %if.then, !dbg !5159

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5160
  br label %return, !dbg !5160

if.end:                                           ; preds = %entry
  %5 = load %struct.pci_dev*, %struct.pci_dev** %tdev, align 8, !dbg !5161
  %6 = load i64, i64* %len.addr, align 8, !dbg !5162
  %call2 = call i32 @pci_set_vpd_size(%struct.pci_dev* %5, i64 %6) #7, !dbg !5163
  store i32 %call2, i32* %ret, align 4, !dbg !5164
  %7 = load %struct.pci_dev*, %struct.pci_dev** %tdev, align 8, !dbg !5165
  call void @pci_dev_put(%struct.pci_dev* %7) #7, !dbg !5166
  %8 = load i32, i32* %ret, align 4, !dbg !5167
  store i32 %8, i32* %retval, align 4, !dbg !5168
  br label %return, !dbg !5168

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !5169
  ret i32 %9, !dbg !5169
}

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @pci_get_slot(%struct.pci_bus*, i32) #2

; Function Attrs: noredzone
declare dso_local void @pci_dev_put(%struct.pci_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pci_vpd_read(%struct.pci_dev* %dev, i64 %pos, i64 %count, i8* %arg) #0 !dbg !5170 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pos.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %vpd = alloca %struct.pci_vpd*, align 8
  %ret = alloca i32, align 4
  %end = alloca i64, align 8
  %buf = alloca i8*, align 8
  %val = alloca i32, align 4
  %i = alloca i32, align 4
  %skip = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5171, metadata !DIExpression()), !dbg !5172
  store i64 %pos, i64* %pos.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pos.addr, metadata !5173, metadata !DIExpression()), !dbg !5174
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5175, metadata !DIExpression()), !dbg !5176
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !5177, metadata !DIExpression()), !dbg !5178
  call void @llvm.dbg.declare(metadata %struct.pci_vpd** %vpd, metadata !5179, metadata !DIExpression()), !dbg !5180
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5181
  %vpd1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 58, !dbg !5182
  %1 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd1, align 8, !dbg !5182
  store %struct.pci_vpd* %1, %struct.pci_vpd** %vpd, align 8, !dbg !5180
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5183, metadata !DIExpression()), !dbg !5184
  call void @llvm.dbg.declare(metadata i64* %end, metadata !5185, metadata !DIExpression()), !dbg !5186
  %2 = load i64, i64* %pos.addr, align 8, !dbg !5187
  %3 = load i64, i64* %count.addr, align 8, !dbg !5188
  %add = add i64 %2, %3, !dbg !5189
  store i64 %add, i64* %end, align 8, !dbg !5186
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !5190, metadata !DIExpression()), !dbg !5192
  %4 = load i8*, i8** %arg.addr, align 8, !dbg !5193
  store i8* %4, i8** %buf, align 8, !dbg !5192
  %5 = load i64, i64* %pos.addr, align 8, !dbg !5194
  %cmp = icmp slt i64 %5, 0, !dbg !5196
  br i1 %cmp, label %if.then, label %if.end, !dbg !5197

if.then:                                          ; preds = %entry
  store i64 -22, i64* %retval, align 8, !dbg !5198
  br label %return, !dbg !5198

if.end:                                           ; preds = %entry
  %6 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5199
  %valid = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %6, i32 0, i32 6, !dbg !5201
  %bf.load = load i8, i8* %valid, align 1, !dbg !5201
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5201
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5201
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5201
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5199
  br i1 %tobool, label %if.end8, label %if.then2, !dbg !5202

if.then2:                                         ; preds = %if.end
  %7 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5203
  %valid3 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %7, i32 0, i32 6, !dbg !5205
  %bf.load4 = load i8, i8* %valid3, align 1, !dbg !5206
  %bf.clear5 = and i8 %bf.load4, -3, !dbg !5206
  %bf.set = or i8 %bf.clear5, 2, !dbg !5206
  store i8 %bf.set, i8* %valid3, align 1, !dbg !5206
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5207
  %9 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5208
  %len = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %9, i32 0, i32 3, !dbg !5209
  %10 = load i32, i32* %len, align 8, !dbg !5209
  %conv = zext i32 %10 to i64, !dbg !5208
  %call = call i64 @pci_vpd_size(%struct.pci_dev* %8, i64 %conv) #7, !dbg !5210
  %conv6 = trunc i64 %call to i32, !dbg !5210
  %11 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5211
  %len7 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %11, i32 0, i32 3, !dbg !5212
  store i32 %conv6, i32* %len7, align 8, !dbg !5213
  br label %if.end8, !dbg !5214

if.end8:                                          ; preds = %if.then2, %if.end
  %12 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5215
  %len9 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %12, i32 0, i32 3, !dbg !5217
  %13 = load i32, i32* %len9, align 8, !dbg !5217
  %cmp10 = icmp eq i32 %13, 0, !dbg !5218
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !5219

if.then12:                                        ; preds = %if.end8
  store i64 -5, i64* %retval, align 8, !dbg !5220
  br label %return, !dbg !5220

if.end13:                                         ; preds = %if.end8
  %14 = load i64, i64* %pos.addr, align 8, !dbg !5221
  %15 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5223
  %len14 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %15, i32 0, i32 3, !dbg !5224
  %16 = load i32, i32* %len14, align 8, !dbg !5224
  %conv15 = zext i32 %16 to i64, !dbg !5223
  %cmp16 = icmp sgt i64 %14, %conv15, !dbg !5225
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !5226

if.then18:                                        ; preds = %if.end13
  store i64 0, i64* %retval, align 8, !dbg !5227
  br label %return, !dbg !5227

if.end19:                                         ; preds = %if.end13
  %17 = load i64, i64* %end, align 8, !dbg !5228
  %18 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5230
  %len20 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %18, i32 0, i32 3, !dbg !5231
  %19 = load i32, i32* %len20, align 8, !dbg !5231
  %conv21 = zext i32 %19 to i64, !dbg !5230
  %cmp22 = icmp sgt i64 %17, %conv21, !dbg !5232
  br i1 %cmp22, label %if.then24, label %if.end27, !dbg !5233

if.then24:                                        ; preds = %if.end19
  %20 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5234
  %len25 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %20, i32 0, i32 3, !dbg !5236
  %21 = load i32, i32* %len25, align 8, !dbg !5236
  %conv26 = zext i32 %21 to i64, !dbg !5234
  store i64 %conv26, i64* %end, align 8, !dbg !5237
  %22 = load i64, i64* %end, align 8, !dbg !5238
  %23 = load i64, i64* %pos.addr, align 8, !dbg !5239
  %sub = sub i64 %22, %23, !dbg !5240
  store i64 %sub, i64* %count.addr, align 8, !dbg !5241
  br label %if.end27, !dbg !5242

if.end27:                                         ; preds = %if.then24, %if.end19
  %24 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5243
  %lock = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %24, i32 0, i32 2, !dbg !5245
  %call28 = call i32 @mutex_lock_killable(%struct.mutex* %lock) #7, !dbg !5246
  %tobool29 = icmp ne i32 %call28, 0, !dbg !5246
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !5247

if.then30:                                        ; preds = %if.end27
  store i64 -4, i64* %retval, align 8, !dbg !5248
  br label %return, !dbg !5248

if.end31:                                         ; preds = %if.end27
  %25 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5249
  %call32 = call i32 @pci_vpd_wait(%struct.pci_dev* %25) #7, !dbg !5250
  store i32 %call32, i32* %ret, align 4, !dbg !5251
  %26 = load i32, i32* %ret, align 4, !dbg !5252
  %cmp33 = icmp slt i32 %26, 0, !dbg !5254
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !5255

if.then35:                                        ; preds = %if.end31
  br label %out, !dbg !5256

if.end36:                                         ; preds = %if.end31
  br label %while.cond, !dbg !5257

while.cond:                                       ; preds = %for.end, %if.end36
  %27 = load i64, i64* %pos.addr, align 8, !dbg !5258
  %28 = load i64, i64* %end, align 8, !dbg !5259
  %cmp37 = icmp slt i64 %27, %28, !dbg !5260
  br i1 %cmp37, label %while.body, label %while.end, !dbg !5257

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5261, metadata !DIExpression()), !dbg !5263
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5264, metadata !DIExpression()), !dbg !5265
  call void @llvm.dbg.declare(metadata i32* %skip, metadata !5266, metadata !DIExpression()), !dbg !5267
  %29 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5268
  %30 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5269
  %cap = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %30, i32 0, i32 5, !dbg !5270
  %31 = load i8, i8* %cap, align 2, !dbg !5270
  %conv39 = zext i8 %31 to i32, !dbg !5269
  %add40 = add i32 %conv39, 2, !dbg !5271
  %32 = load i64, i64* %pos.addr, align 8, !dbg !5272
  %and = and i64 %32, -4, !dbg !5273
  %conv41 = trunc i64 %and to i16, !dbg !5272
  %call42 = call i32 @pci_user_write_config_word(%struct.pci_dev* %29, i32 %add40, i16 zeroext %conv41) #7, !dbg !5274
  store i32 %call42, i32* %ret, align 4, !dbg !5275
  %33 = load i32, i32* %ret, align 4, !dbg !5276
  %cmp43 = icmp slt i32 %33, 0, !dbg !5278
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !5279

if.then45:                                        ; preds = %while.body
  br label %while.end, !dbg !5280

if.end46:                                         ; preds = %while.body
  %34 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5281
  %busy = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %34, i32 0, i32 6, !dbg !5282
  %bf.load47 = load i8, i8* %busy, align 1, !dbg !5283
  %bf.clear48 = and i8 %bf.load47, -2, !dbg !5283
  %bf.set49 = or i8 %bf.clear48, 1, !dbg !5283
  store i8 %bf.set49, i8* %busy, align 1, !dbg !5283
  %35 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5284
  %flag = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %35, i32 0, i32 4, !dbg !5285
  store i16 -32768, i16* %flag, align 4, !dbg !5286
  %36 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5287
  %call50 = call i32 @pci_vpd_wait(%struct.pci_dev* %36) #7, !dbg !5288
  store i32 %call50, i32* %ret, align 4, !dbg !5289
  %37 = load i32, i32* %ret, align 4, !dbg !5290
  %cmp51 = icmp slt i32 %37, 0, !dbg !5292
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !5293

if.then53:                                        ; preds = %if.end46
  br label %while.end, !dbg !5294

if.end54:                                         ; preds = %if.end46
  %38 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5295
  %39 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5296
  %cap55 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %39, i32 0, i32 5, !dbg !5297
  %40 = load i8, i8* %cap55, align 2, !dbg !5297
  %conv56 = zext i8 %40 to i32, !dbg !5296
  %add57 = add i32 %conv56, 4, !dbg !5298
  %call58 = call i32 @pci_user_read_config_dword(%struct.pci_dev* %38, i32 %add57, i32* %val) #7, !dbg !5299
  store i32 %call58, i32* %ret, align 4, !dbg !5300
  %41 = load i32, i32* %ret, align 4, !dbg !5301
  %cmp59 = icmp slt i32 %41, 0, !dbg !5303
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !5304

if.then61:                                        ; preds = %if.end54
  br label %while.end, !dbg !5305

if.end62:                                         ; preds = %if.end54
  %42 = load i64, i64* %pos.addr, align 8, !dbg !5306
  %and63 = and i64 %42, 3, !dbg !5307
  %conv64 = trunc i64 %and63 to i32, !dbg !5306
  store i32 %conv64, i32* %skip, align 4, !dbg !5308
  store i32 0, i32* %i, align 4, !dbg !5309
  br label %for.cond, !dbg !5311

for.cond:                                         ; preds = %for.inc, %if.end62
  %43 = load i32, i32* %i, align 4, !dbg !5312
  %conv65 = zext i32 %43 to i64, !dbg !5312
  %cmp66 = icmp ult i64 %conv65, 4, !dbg !5314
  br i1 %cmp66, label %for.body, label %for.end, !dbg !5315

for.body:                                         ; preds = %for.cond
  %44 = load i32, i32* %i, align 4, !dbg !5316
  %45 = load i32, i32* %skip, align 4, !dbg !5319
  %cmp68 = icmp uge i32 %44, %45, !dbg !5320
  br i1 %cmp68, label %if.then70, label %if.end76, !dbg !5321

if.then70:                                        ; preds = %for.body
  %46 = load i32, i32* %val, align 4, !dbg !5322
  %conv71 = trunc i32 %46 to i8, !dbg !5322
  %47 = load i8*, i8** %buf, align 8, !dbg !5324
  %incdec.ptr = getelementptr i8, i8* %47, i32 1, !dbg !5324
  store i8* %incdec.ptr, i8** %buf, align 8, !dbg !5324
  store i8 %conv71, i8* %47, align 1, !dbg !5325
  %48 = load i64, i64* %pos.addr, align 8, !dbg !5326
  %inc = add i64 %48, 1, !dbg !5326
  store i64 %inc, i64* %pos.addr, align 8, !dbg !5326
  %49 = load i64, i64* %end, align 8, !dbg !5328
  %cmp72 = icmp eq i64 %inc, %49, !dbg !5329
  br i1 %cmp72, label %if.then74, label %if.end75, !dbg !5330

if.then74:                                        ; preds = %if.then70
  br label %for.end, !dbg !5331

if.end75:                                         ; preds = %if.then70
  br label %if.end76, !dbg !5332

if.end76:                                         ; preds = %if.end75, %for.body
  %50 = load i32, i32* %val, align 4, !dbg !5333
  %shr = lshr i32 %50, 8, !dbg !5333
  store i32 %shr, i32* %val, align 4, !dbg !5333
  br label %for.inc, !dbg !5334

for.inc:                                          ; preds = %if.end76
  %51 = load i32, i32* %i, align 4, !dbg !5335
  %inc77 = add i32 %51, 1, !dbg !5335
  store i32 %inc77, i32* %i, align 4, !dbg !5335
  br label %for.cond, !dbg !5336, !llvm.loop !5337

for.end:                                          ; preds = %if.then74, %for.cond
  br label %while.cond, !dbg !5257, !llvm.loop !5339

while.end:                                        ; preds = %if.then61, %if.then53, %if.then45, %while.cond
  br label %out, !dbg !5257

out:                                              ; preds = %while.end, %if.then35
  call void @llvm.dbg.label(metadata !5341), !dbg !5342
  %52 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5343
  %lock78 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %52, i32 0, i32 2, !dbg !5344
  call void @mutex_unlock(%struct.mutex* %lock78) #7, !dbg !5345
  %53 = load i32, i32* %ret, align 4, !dbg !5346
  %tobool79 = icmp ne i32 %53, 0, !dbg !5346
  br i1 %tobool79, label %cond.true, label %cond.false, !dbg !5346

cond.true:                                        ; preds = %out
  %54 = load i32, i32* %ret, align 4, !dbg !5347
  %conv80 = sext i32 %54 to i64, !dbg !5347
  br label %cond.end, !dbg !5346

cond.false:                                       ; preds = %out
  %55 = load i64, i64* %count.addr, align 8, !dbg !5348
  br label %cond.end, !dbg !5346

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv80, %cond.true ], [ %55, %cond.false ], !dbg !5346
  store i64 %cond, i64* %retval, align 8, !dbg !5349
  br label %return, !dbg !5349

return:                                           ; preds = %cond.end, %if.then30, %if.then18, %if.then12, %if.then
  %56 = load i64, i64* %retval, align 8, !dbg !5350
  ret i64 %56, !dbg !5350
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pci_vpd_write(%struct.pci_dev* %dev, i64 %pos, i64 %count, i8* %arg) #0 !dbg !5351 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pos.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %vpd = alloca %struct.pci_vpd*, align 8
  %buf = alloca i8*, align 8
  %end = alloca i64, align 8
  %ret = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5352, metadata !DIExpression()), !dbg !5353
  store i64 %pos, i64* %pos.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pos.addr, metadata !5354, metadata !DIExpression()), !dbg !5355
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5356, metadata !DIExpression()), !dbg !5357
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !5358, metadata !DIExpression()), !dbg !5359
  call void @llvm.dbg.declare(metadata %struct.pci_vpd** %vpd, metadata !5360, metadata !DIExpression()), !dbg !5361
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5362
  %vpd1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 58, !dbg !5363
  %1 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd1, align 8, !dbg !5363
  store %struct.pci_vpd* %1, %struct.pci_vpd** %vpd, align 8, !dbg !5361
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !5364, metadata !DIExpression()), !dbg !5365
  %2 = load i8*, i8** %arg.addr, align 8, !dbg !5366
  store i8* %2, i8** %buf, align 8, !dbg !5365
  call void @llvm.dbg.declare(metadata i64* %end, metadata !5367, metadata !DIExpression()), !dbg !5368
  %3 = load i64, i64* %pos.addr, align 8, !dbg !5369
  %4 = load i64, i64* %count.addr, align 8, !dbg !5370
  %add = add i64 %3, %4, !dbg !5371
  store i64 %add, i64* %end, align 8, !dbg !5368
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5372, metadata !DIExpression()), !dbg !5373
  store i32 0, i32* %ret, align 4, !dbg !5373
  %5 = load i64, i64* %pos.addr, align 8, !dbg !5374
  %cmp = icmp slt i64 %5, 0, !dbg !5376
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5377

lor.lhs.false:                                    ; preds = %entry
  %6 = load i64, i64* %pos.addr, align 8, !dbg !5378
  %and = and i64 %6, 3, !dbg !5379
  %tobool = icmp ne i64 %and, 0, !dbg !5379
  br i1 %tobool, label %if.then, label %lor.lhs.false2, !dbg !5380

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %7 = load i64, i64* %count.addr, align 8, !dbg !5381
  %and3 = and i64 %7, 3, !dbg !5382
  %tobool4 = icmp ne i64 %and3, 0, !dbg !5382
  br i1 %tobool4, label %if.then, label %if.end, !dbg !5383

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i64 -22, i64* %retval, align 8, !dbg !5384
  br label %return, !dbg !5384

if.end:                                           ; preds = %lor.lhs.false2
  %8 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5385
  %valid = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %8, i32 0, i32 6, !dbg !5387
  %bf.load = load i8, i8* %valid, align 1, !dbg !5387
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5387
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5387
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5387
  %tobool5 = icmp ne i32 %bf.cast, 0, !dbg !5385
  br i1 %tobool5, label %if.end12, label %if.then6, !dbg !5388

if.then6:                                         ; preds = %if.end
  %9 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5389
  %valid7 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %9, i32 0, i32 6, !dbg !5391
  %bf.load8 = load i8, i8* %valid7, align 1, !dbg !5392
  %bf.clear9 = and i8 %bf.load8, -3, !dbg !5392
  %bf.set = or i8 %bf.clear9, 2, !dbg !5392
  store i8 %bf.set, i8* %valid7, align 1, !dbg !5392
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5393
  %11 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5394
  %len = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %11, i32 0, i32 3, !dbg !5395
  %12 = load i32, i32* %len, align 8, !dbg !5395
  %conv = zext i32 %12 to i64, !dbg !5394
  %call = call i64 @pci_vpd_size(%struct.pci_dev* %10, i64 %conv) #7, !dbg !5396
  %conv10 = trunc i64 %call to i32, !dbg !5396
  %13 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5397
  %len11 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %13, i32 0, i32 3, !dbg !5398
  store i32 %conv10, i32* %len11, align 8, !dbg !5399
  br label %if.end12, !dbg !5400

if.end12:                                         ; preds = %if.then6, %if.end
  %14 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5401
  %len13 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %14, i32 0, i32 3, !dbg !5403
  %15 = load i32, i32* %len13, align 8, !dbg !5403
  %cmp14 = icmp eq i32 %15, 0, !dbg !5404
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !5405

if.then16:                                        ; preds = %if.end12
  store i64 -5, i64* %retval, align 8, !dbg !5406
  br label %return, !dbg !5406

if.end17:                                         ; preds = %if.end12
  %16 = load i64, i64* %end, align 8, !dbg !5407
  %17 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5409
  %len18 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %17, i32 0, i32 3, !dbg !5410
  %18 = load i32, i32* %len18, align 8, !dbg !5410
  %conv19 = zext i32 %18 to i64, !dbg !5409
  %cmp20 = icmp sgt i64 %16, %conv19, !dbg !5411
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !5412

if.then22:                                        ; preds = %if.end17
  store i64 -22, i64* %retval, align 8, !dbg !5413
  br label %return, !dbg !5413

if.end23:                                         ; preds = %if.end17
  %19 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5414
  %lock = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %19, i32 0, i32 2, !dbg !5416
  %call24 = call i32 @mutex_lock_killable(%struct.mutex* %lock) #7, !dbg !5417
  %tobool25 = icmp ne i32 %call24, 0, !dbg !5417
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5418

if.then26:                                        ; preds = %if.end23
  store i64 -4, i64* %retval, align 8, !dbg !5419
  br label %return, !dbg !5419

if.end27:                                         ; preds = %if.end23
  %20 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5420
  %call28 = call i32 @pci_vpd_wait(%struct.pci_dev* %20) #7, !dbg !5421
  store i32 %call28, i32* %ret, align 4, !dbg !5422
  %21 = load i32, i32* %ret, align 4, !dbg !5423
  %cmp29 = icmp slt i32 %21, 0, !dbg !5425
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !5426

if.then31:                                        ; preds = %if.end27
  br label %out, !dbg !5427

if.end32:                                         ; preds = %if.end27
  br label %while.cond, !dbg !5428

while.cond:                                       ; preds = %if.end70, %if.end32
  %22 = load i64, i64* %pos.addr, align 8, !dbg !5429
  %23 = load i64, i64* %end, align 8, !dbg !5430
  %cmp33 = icmp slt i64 %22, %23, !dbg !5431
  br i1 %cmp33, label %while.body, label %while.end, !dbg !5428

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5432, metadata !DIExpression()), !dbg !5434
  %24 = load i8*, i8** %buf, align 8, !dbg !5435
  %incdec.ptr = getelementptr i8, i8* %24, i32 1, !dbg !5435
  store i8* %incdec.ptr, i8** %buf, align 8, !dbg !5435
  %25 = load i8, i8* %24, align 1, !dbg !5436
  %conv35 = zext i8 %25 to i32, !dbg !5436
  store i32 %conv35, i32* %val, align 4, !dbg !5437
  %26 = load i8*, i8** %buf, align 8, !dbg !5438
  %incdec.ptr36 = getelementptr i8, i8* %26, i32 1, !dbg !5438
  store i8* %incdec.ptr36, i8** %buf, align 8, !dbg !5438
  %27 = load i8, i8* %26, align 1, !dbg !5439
  %conv37 = zext i8 %27 to i32, !dbg !5439
  %shl = shl i32 %conv37, 8, !dbg !5440
  %28 = load i32, i32* %val, align 4, !dbg !5441
  %or = or i32 %28, %shl, !dbg !5441
  store i32 %or, i32* %val, align 4, !dbg !5441
  %29 = load i8*, i8** %buf, align 8, !dbg !5442
  %incdec.ptr38 = getelementptr i8, i8* %29, i32 1, !dbg !5442
  store i8* %incdec.ptr38, i8** %buf, align 8, !dbg !5442
  %30 = load i8, i8* %29, align 1, !dbg !5443
  %conv39 = zext i8 %30 to i32, !dbg !5443
  %shl40 = shl i32 %conv39, 16, !dbg !5444
  %31 = load i32, i32* %val, align 4, !dbg !5445
  %or41 = or i32 %31, %shl40, !dbg !5445
  store i32 %or41, i32* %val, align 4, !dbg !5445
  %32 = load i8*, i8** %buf, align 8, !dbg !5446
  %incdec.ptr42 = getelementptr i8, i8* %32, i32 1, !dbg !5446
  store i8* %incdec.ptr42, i8** %buf, align 8, !dbg !5446
  %33 = load i8, i8* %32, align 1, !dbg !5447
  %conv43 = zext i8 %33 to i32, !dbg !5447
  %shl44 = shl i32 %conv43, 24, !dbg !5448
  %34 = load i32, i32* %val, align 4, !dbg !5449
  %or45 = or i32 %34, %shl44, !dbg !5449
  store i32 %or45, i32* %val, align 4, !dbg !5449
  %35 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5450
  %36 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5451
  %cap = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %36, i32 0, i32 5, !dbg !5452
  %37 = load i8, i8* %cap, align 2, !dbg !5452
  %conv46 = zext i8 %37 to i32, !dbg !5451
  %add47 = add i32 %conv46, 4, !dbg !5453
  %38 = load i32, i32* %val, align 4, !dbg !5454
  %call48 = call i32 @pci_user_write_config_dword(%struct.pci_dev* %35, i32 %add47, i32 %38) #7, !dbg !5455
  store i32 %call48, i32* %ret, align 4, !dbg !5456
  %39 = load i32, i32* %ret, align 4, !dbg !5457
  %cmp49 = icmp slt i32 %39, 0, !dbg !5459
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !5460

if.then51:                                        ; preds = %while.body
  br label %while.end, !dbg !5461

if.end52:                                         ; preds = %while.body
  %40 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5462
  %41 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5463
  %cap53 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %41, i32 0, i32 5, !dbg !5464
  %42 = load i8, i8* %cap53, align 2, !dbg !5464
  %conv54 = zext i8 %42 to i32, !dbg !5463
  %add55 = add i32 %conv54, 2, !dbg !5465
  %43 = load i64, i64* %pos.addr, align 8, !dbg !5466
  %or56 = or i64 %43, 32768, !dbg !5467
  %conv57 = trunc i64 %or56 to i16, !dbg !5466
  %call58 = call i32 @pci_user_write_config_word(%struct.pci_dev* %40, i32 %add55, i16 zeroext %conv57) #7, !dbg !5468
  store i32 %call58, i32* %ret, align 4, !dbg !5469
  %44 = load i32, i32* %ret, align 4, !dbg !5470
  %cmp59 = icmp slt i32 %44, 0, !dbg !5472
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !5473

if.then61:                                        ; preds = %if.end52
  br label %while.end, !dbg !5474

if.end62:                                         ; preds = %if.end52
  %45 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5475
  %busy = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %45, i32 0, i32 6, !dbg !5476
  %bf.load63 = load i8, i8* %busy, align 1, !dbg !5477
  %bf.clear64 = and i8 %bf.load63, -2, !dbg !5477
  %bf.set65 = or i8 %bf.clear64, 1, !dbg !5477
  store i8 %bf.set65, i8* %busy, align 1, !dbg !5477
  %46 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5478
  %flag = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %46, i32 0, i32 4, !dbg !5479
  store i16 0, i16* %flag, align 4, !dbg !5480
  %47 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5481
  %call66 = call i32 @pci_vpd_wait(%struct.pci_dev* %47) #7, !dbg !5482
  store i32 %call66, i32* %ret, align 4, !dbg !5483
  %48 = load i32, i32* %ret, align 4, !dbg !5484
  %cmp67 = icmp slt i32 %48, 0, !dbg !5486
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !5487

if.then69:                                        ; preds = %if.end62
  br label %while.end, !dbg !5488

if.end70:                                         ; preds = %if.end62
  %49 = load i64, i64* %pos.addr, align 8, !dbg !5489
  %add71 = add i64 %49, 4, !dbg !5489
  store i64 %add71, i64* %pos.addr, align 8, !dbg !5489
  br label %while.cond, !dbg !5428, !llvm.loop !5490

while.end:                                        ; preds = %if.then69, %if.then61, %if.then51, %while.cond
  br label %out, !dbg !5428

out:                                              ; preds = %while.end, %if.then31
  call void @llvm.dbg.label(metadata !5492), !dbg !5493
  %50 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5494
  %lock72 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %50, i32 0, i32 2, !dbg !5495
  call void @mutex_unlock(%struct.mutex* %lock72) #7, !dbg !5496
  %51 = load i32, i32* %ret, align 4, !dbg !5497
  %tobool73 = icmp ne i32 %51, 0, !dbg !5497
  br i1 %tobool73, label %cond.true, label %cond.false, !dbg !5497

cond.true:                                        ; preds = %out
  %52 = load i32, i32* %ret, align 4, !dbg !5498
  %conv74 = sext i32 %52 to i64, !dbg !5498
  br label %cond.end, !dbg !5497

cond.false:                                       ; preds = %out
  %53 = load i64, i64* %count.addr, align 8, !dbg !5499
  br label %cond.end, !dbg !5497

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv74, %cond.true ], [ %53, %cond.false ], !dbg !5497
  store i64 %cond, i64* %retval, align 8, !dbg !5500
  br label %return, !dbg !5500

return:                                           ; preds = %cond.end, %if.then26, %if.then22, %if.then16, %if.then
  %54 = load i64, i64* %retval, align 8, !dbg !5501
  ret i64 %54, !dbg !5501
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_vpd_set_size(%struct.pci_dev* %dev, i64 %len) #0 !dbg !5502 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %len.addr = alloca i64, align 8
  %vpd = alloca %struct.pci_vpd*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5503, metadata !DIExpression()), !dbg !5504
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5505, metadata !DIExpression()), !dbg !5506
  call void @llvm.dbg.declare(metadata %struct.pci_vpd** %vpd, metadata !5507, metadata !DIExpression()), !dbg !5508
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5509
  %vpd1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 58, !dbg !5510
  %1 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd1, align 8, !dbg !5510
  store %struct.pci_vpd* %1, %struct.pci_vpd** %vpd, align 8, !dbg !5508
  %2 = load i64, i64* %len.addr, align 8, !dbg !5511
  %cmp = icmp eq i64 %2, 0, !dbg !5513
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5514

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, i64* %len.addr, align 8, !dbg !5515
  %cmp2 = icmp ugt i64 %3, 32768, !dbg !5516
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5517

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -5, i32* %retval, align 4, !dbg !5518
  br label %return, !dbg !5518

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5519
  %valid = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %4, i32 0, i32 6, !dbg !5520
  %bf.load = load i8, i8* %valid, align 1, !dbg !5521
  %bf.clear = and i8 %bf.load, -3, !dbg !5521
  %bf.set = or i8 %bf.clear, 2, !dbg !5521
  store i8 %bf.set, i8* %valid, align 1, !dbg !5521
  %5 = load i64, i64* %len.addr, align 8, !dbg !5522
  %conv = trunc i64 %5 to i32, !dbg !5522
  %6 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5523
  %len3 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %6, i32 0, i32 3, !dbg !5524
  store i32 %conv, i32* %len3, align 8, !dbg !5525
  store i32 0, i32* %retval, align 4, !dbg !5526
  br label %return, !dbg !5526

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5527
  ret i32 %7, !dbg !5527
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pci_vpd_size(%struct.pci_dev* %dev, i64 %old_size) #0 !dbg !5528 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.pci_dev*, align 8
  %old_size.addr = alloca i64, align 8
  %off = alloca i64, align 8
  %header = alloca [3 x i8], align 1
  %tag = alloca i8, align 1
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5531, metadata !DIExpression()), !dbg !5532
  store i64 %old_size, i64* %old_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %old_size.addr, metadata !5533, metadata !DIExpression()), !dbg !5534
  call void @llvm.dbg.declare(metadata i64* %off, metadata !5535, metadata !DIExpression()), !dbg !5536
  store i64 0, i64* %off, align 8, !dbg !5536
  call void @llvm.dbg.declare(metadata [3 x i8]* %header, metadata !5537, metadata !DIExpression()), !dbg !5539
  br label %while.cond, !dbg !5540

while.cond:                                       ; preds = %if.end62, %entry
  %0 = load i64, i64* %off, align 8, !dbg !5541
  %1 = load i64, i64* %old_size.addr, align 8, !dbg !5542
  %cmp = icmp ult i64 %0, %1, !dbg !5543
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5544

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5545
  %3 = load i64, i64* %off, align 8, !dbg !5546
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %header, i64 0, i64 0, !dbg !5547
  %call = call i64 @pci_read_vpd(%struct.pci_dev* %2, i64 %3, i64 1, i8* %arraydecay) #7, !dbg !5548
  %cmp1 = icmp eq i64 %call, 1, !dbg !5549
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ], !dbg !5550
  br i1 %4, label %while.body, label %while.end, !dbg !5540

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i8* %tag, metadata !5551, metadata !DIExpression()), !dbg !5553
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %header, i64 0, i64 0, !dbg !5554
  %5 = load i8, i8* %arrayidx, align 1, !dbg !5554
  %conv = zext i8 %5 to i32, !dbg !5554
  %and = and i32 %conv, 128, !dbg !5556
  %tobool = icmp ne i32 %and, 0, !dbg !5556
  br i1 %tobool, label %if.then, label %if.else, !dbg !5557

if.then:                                          ; preds = %while.body
  %arraydecay2 = getelementptr inbounds [3 x i8], [3 x i8]* %header, i64 0, i64 0, !dbg !5558
  %call3 = call zeroext i16 @pci_vpd_lrdt_tag(i8* %arraydecay2) #7, !dbg !5560
  %conv4 = trunc i16 %call3 to i8, !dbg !5560
  store i8 %conv4, i8* %tag, align 1, !dbg !5561
  %6 = load i8, i8* %tag, align 1, !dbg !5562
  %conv5 = zext i8 %6 to i32, !dbg !5562
  %cmp6 = icmp eq i32 %conv5, 2, !dbg !5564
  br i1 %cmp6, label %if.then15, label %lor.lhs.false, !dbg !5565

lor.lhs.false:                                    ; preds = %if.then
  %7 = load i8, i8* %tag, align 1, !dbg !5566
  %conv8 = zext i8 %7 to i32, !dbg !5566
  %cmp9 = icmp eq i32 %conv8, 16, !dbg !5567
  br i1 %cmp9, label %if.then15, label %lor.lhs.false11, !dbg !5568

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %8 = load i8, i8* %tag, align 1, !dbg !5569
  %conv12 = zext i8 %8 to i32, !dbg !5569
  %cmp13 = icmp eq i32 %conv12, 17, !dbg !5570
  br i1 %cmp13, label %if.then15, label %if.end30, !dbg !5571

if.then15:                                        ; preds = %lor.lhs.false11, %lor.lhs.false, %if.then
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5572
  %10 = load i64, i64* %off, align 8, !dbg !5575
  %add = add i64 %10, 1, !dbg !5576
  %arrayidx16 = getelementptr [3 x i8], [3 x i8]* %header, i64 0, i64 1, !dbg !5577
  %call17 = call i64 @pci_read_vpd(%struct.pci_dev* %9, i64 %add, i64 2, i8* %arrayidx16) #7, !dbg !5578
  %cmp18 = icmp ne i64 %call17, 2, !dbg !5579
  br i1 %cmp18, label %if.then20, label %if.end, !dbg !5580

if.then20:                                        ; preds = %if.then15
  %11 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5581
  %dev21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 41, !dbg !5581
  %12 = load i8, i8* %tag, align 1, !dbg !5581
  %conv22 = zext i8 %12 to i32, !dbg !5581
  %13 = load i64, i64* %off, align 8, !dbg !5581
  %add23 = add i64 %13, 1, !dbg !5581
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev21, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %conv22, i64 %add23) #11, !dbg !5581
  store i64 0, i64* %retval, align 8, !dbg !5583
  br label %return, !dbg !5583

if.end:                                           ; preds = %if.then15
  %arraydecay24 = getelementptr inbounds [3 x i8], [3 x i8]* %header, i64 0, i64 0, !dbg !5584
  %call25 = call zeroext i16 @pci_vpd_lrdt_size(i8* %arraydecay24) #7, !dbg !5585
  %conv26 = zext i16 %call25 to i32, !dbg !5585
  %add27 = add i32 3, %conv26, !dbg !5586
  %conv28 = sext i32 %add27 to i64, !dbg !5587
  %14 = load i64, i64* %off, align 8, !dbg !5588
  %add29 = add i64 %14, %conv28, !dbg !5588
  store i64 %add29, i64* %off, align 8, !dbg !5588
  br label %if.end30, !dbg !5589

if.end30:                                         ; preds = %if.end, %lor.lhs.false11
  br label %if.end39, !dbg !5590

if.else:                                          ; preds = %while.body
  %arraydecay31 = getelementptr inbounds [3 x i8], [3 x i8]* %header, i64 0, i64 0, !dbg !5591
  %call32 = call zeroext i8 @pci_vpd_srdt_size(i8* %arraydecay31) #7, !dbg !5593
  %conv33 = zext i8 %call32 to i32, !dbg !5593
  %add34 = add i32 1, %conv33, !dbg !5594
  %conv35 = sext i32 %add34 to i64, !dbg !5595
  %15 = load i64, i64* %off, align 8, !dbg !5596
  %add36 = add i64 %15, %conv35, !dbg !5596
  store i64 %add36, i64* %off, align 8, !dbg !5596
  %arraydecay37 = getelementptr inbounds [3 x i8], [3 x i8]* %header, i64 0, i64 0, !dbg !5597
  %call38 = call zeroext i8 @pci_vpd_srdt_tag(i8* %arraydecay37) #7, !dbg !5598
  store i8 %call38, i8* %tag, align 1, !dbg !5599
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.end30
  %16 = load i8, i8* %tag, align 1, !dbg !5600
  %conv40 = zext i8 %16 to i32, !dbg !5600
  %cmp41 = icmp eq i32 %conv40, 15, !dbg !5602
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !5603

if.then43:                                        ; preds = %if.end39
  %17 = load i64, i64* %off, align 8, !dbg !5604
  store i64 %17, i64* %retval, align 8, !dbg !5605
  br label %return, !dbg !5605

if.end44:                                         ; preds = %if.end39
  %18 = load i8, i8* %tag, align 1, !dbg !5606
  %conv45 = zext i8 %18 to i32, !dbg !5606
  %cmp46 = icmp ne i32 %conv45, 2, !dbg !5608
  br i1 %cmp46, label %land.lhs.true, label %if.end62, !dbg !5609

land.lhs.true:                                    ; preds = %if.end44
  %19 = load i8, i8* %tag, align 1, !dbg !5610
  %conv48 = zext i8 %19 to i32, !dbg !5610
  %cmp49 = icmp ne i32 %conv48, 16, !dbg !5611
  br i1 %cmp49, label %land.lhs.true51, label %if.end62, !dbg !5612

land.lhs.true51:                                  ; preds = %land.lhs.true
  %20 = load i8, i8* %tag, align 1, !dbg !5613
  %conv52 = zext i8 %20 to i32, !dbg !5613
  %cmp53 = icmp ne i32 %conv52, 17, !dbg !5614
  br i1 %cmp53, label %if.then55, label %if.end62, !dbg !5615

if.then55:                                        ; preds = %land.lhs.true51
  %21 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5616
  %dev56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 41, !dbg !5616
  %arrayidx57 = getelementptr [3 x i8], [3 x i8]* %header, i64 0, i64 0, !dbg !5616
  %22 = load i8, i8* %arrayidx57, align 1, !dbg !5616
  %conv58 = zext i8 %22 to i32, !dbg !5616
  %and59 = and i32 %conv58, 128, !dbg !5616
  %tobool60 = icmp ne i32 %and59, 0, !dbg !5616
  %23 = zext i1 %tobool60 to i64, !dbg !5616
  %cond = select i1 %tobool60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), !dbg !5616
  %24 = load i8, i8* %tag, align 1, !dbg !5616
  %conv61 = zext i8 %24 to i32, !dbg !5616
  %25 = load i64, i64* %off, align 8, !dbg !5616
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %cond, i32 %conv61, i64 %25) #11, !dbg !5616
  store i64 0, i64* %retval, align 8, !dbg !5618
  br label %return, !dbg !5618

if.end62:                                         ; preds = %land.lhs.true51, %land.lhs.true, %if.end44
  br label %while.cond, !dbg !5540, !llvm.loop !5619

while.end:                                        ; preds = %land.end
  store i64 0, i64* %retval, align 8, !dbg !5621
  br label %return, !dbg !5621

return:                                           ; preds = %while.end, %if.then55, %if.then43, %if.then20
  %26 = load i64, i64* %retval, align 8, !dbg !5622
  ret i64 %26, !dbg !5622
}

; Function Attrs: noredzone
declare dso_local i32 @mutex_lock_killable(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_vpd_wait(%struct.pci_dev* %dev) #0 !dbg !5623 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !5624, metadata !DIExpression()), !dbg !5630
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !5634, metadata !DIExpression()), !dbg !5636
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !5637, metadata !DIExpression()), !dbg !5639
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !5640, metadata !DIExpression()), !dbg !5645
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %vpd = alloca %struct.pci_vpd*, align 8
  %timeout = alloca i64, align 8
  %max_sleep = alloca i64, align 8
  %status = alloca i16, align 2
  %ret = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5647, metadata !DIExpression()), !dbg !5648
  call void @llvm.dbg.declare(metadata %struct.pci_vpd** %vpd, metadata !5649, metadata !DIExpression()), !dbg !5650
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5651
  %vpd1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 58, !dbg !5652
  %1 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd1, align 8, !dbg !5652
  store %struct.pci_vpd* %1, %struct.pci_vpd** %vpd, align 8, !dbg !5650
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !5653, metadata !DIExpression()), !dbg !5654
  %2 = load volatile i64, i64* @jiffies, align 8, !dbg !5655
  store i32 125, i32* %m.addr.i, align 4
  %3 = load i32, i32* %m.addr.i, align 4, !dbg !5656
  %4 = call i1 @llvm.is.constant.i32(i32 %3) #8, !dbg !5658
  br i1 %4, label %if.then.i, label %if.else.i, !dbg !5659

if.then.i:                                        ; preds = %entry
  %5 = load i32, i32* %m.addr.i, align 4, !dbg !5660
  %cmp.i = icmp slt i32 %5, 0, !dbg !5663
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5664

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !5665
  br label %msecs_to_jiffies.exit, !dbg !5665

if.end.i:                                         ; preds = %if.then.i
  %6 = load i32, i32* %m.addr.i, align 4, !dbg !5666
  %call.i = call i64 @_msecs_to_jiffies(i32 %6) #10, !dbg !5667
  store i64 %call.i, i64* %retval.i, align 8, !dbg !5668
  br label %msecs_to_jiffies.exit, !dbg !5668

if.else.i:                                        ; preds = %entry
  %7 = load i32, i32* %m.addr.i, align 4, !dbg !5669
  %call2.i = call i64 @__msecs_to_jiffies(i32 %7) #10, !dbg !5671
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !5672
  br label %msecs_to_jiffies.exit, !dbg !5672

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %8 = load i64, i64* %retval.i, align 8, !dbg !5673
  %add = add i64 %2, %8, !dbg !5674
  store i64 %add, i64* %timeout, align 8, !dbg !5654
  call void @llvm.dbg.declare(metadata i64* %max_sleep, metadata !5675, metadata !DIExpression()), !dbg !5676
  store i64 16, i64* %max_sleep, align 8, !dbg !5676
  call void @llvm.dbg.declare(metadata i16* %status, metadata !5677, metadata !DIExpression()), !dbg !5678
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5679, metadata !DIExpression()), !dbg !5680
  %9 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5681
  %busy = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %9, i32 0, i32 6, !dbg !5683
  %bf.load = load i8, i8* %busy, align 1, !dbg !5683
  %bf.clear = and i8 %bf.load, 1, !dbg !5683
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5683
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5681
  br i1 %tobool, label %if.end, label %if.then, !dbg !5684

if.then:                                          ; preds = %msecs_to_jiffies.exit
  store i32 0, i32* %retval, align 4, !dbg !5685
  br label %return, !dbg !5685

if.end:                                           ; preds = %msecs_to_jiffies.exit
  br label %do.body, !dbg !5686

do.body:                                          ; preds = %do.cond, %if.end
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5687
  %11 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5688
  %cap = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %11, i32 0, i32 5, !dbg !5689
  %12 = load i8, i8* %cap, align 2, !dbg !5689
  %conv = zext i8 %12 to i32, !dbg !5688
  %add2 = add i32 %conv, 2, !dbg !5690
  %call3 = call i32 @pci_user_read_config_word(%struct.pci_dev* %10, i32 %add2, i16* %status) #7, !dbg !5691
  store i32 %call3, i32* %ret, align 4, !dbg !5692
  %13 = load i32, i32* %ret, align 4, !dbg !5693
  %cmp = icmp slt i32 %13, 0, !dbg !5695
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !5696

if.then5:                                         ; preds = %do.body
  %14 = load i32, i32* %ret, align 4, !dbg !5697
  store i32 %14, i32* %retval, align 4, !dbg !5698
  br label %return, !dbg !5698

if.end6:                                          ; preds = %do.body
  %15 = load i16, i16* %status, align 2, !dbg !5699
  %conv7 = zext i16 %15 to i32, !dbg !5699
  %and = and i32 %conv7, 32768, !dbg !5701
  %16 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5702
  %flag = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %16, i32 0, i32 4, !dbg !5703
  %17 = load i16, i16* %flag, align 4, !dbg !5703
  %conv8 = zext i16 %17 to i32, !dbg !5702
  %cmp9 = icmp eq i32 %and, %conv8, !dbg !5704
  br i1 %cmp9, label %if.then11, label %if.end15, !dbg !5705

if.then11:                                        ; preds = %if.end6
  %18 = load %struct.pci_vpd*, %struct.pci_vpd** %vpd, align 8, !dbg !5706
  %busy12 = getelementptr inbounds %struct.pci_vpd, %struct.pci_vpd* %18, i32 0, i32 6, !dbg !5708
  %bf.load13 = load i8, i8* %busy12, align 1, !dbg !5709
  %bf.clear14 = and i8 %bf.load13, -2, !dbg !5709
  store i8 %bf.clear14, i8* %busy12, align 1, !dbg !5709
  store i32 0, i32* %retval, align 4, !dbg !5710
  br label %return, !dbg !5710

if.end15:                                         ; preds = %if.end6
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !5636
  %19 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !5636
  %20 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #13, !dbg !5639, !srcloc !5711
  store i64 %20, i64* %pfo_val__.i, align 8, !dbg !5639
  %21 = load i64, i64* %pfo_val__.i, align 8, !dbg !5639
  %22 = inttoptr i64 %21 to %struct.task_struct*, !dbg !5639
  store %struct.task_struct* %22, %struct.task_struct** %tmp.i, align 8, !dbg !5639
  %23 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !5639
  store %struct.task_struct* %23, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5630
  %24 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5630
  store %struct.task_struct* %24, %struct.task_struct** %tmp1.i, align 8, !dbg !5630
  %25 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !5630
  %call17 = call i32 @fatal_signal_pending(%struct.task_struct* %25) #7, !dbg !5712
  %tobool18 = icmp ne i32 %call17, 0, !dbg !5712
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !5713

if.then19:                                        ; preds = %if.end15
  store i32 -4, i32* %retval, align 4, !dbg !5714
  br label %return, !dbg !5714

if.end20:                                         ; preds = %if.end15
  %26 = load i64, i64* %timeout, align 8, !dbg !5715
  %27 = load volatile i64, i64* @jiffies, align 8, !dbg !5715
  %sub = sub i64 %26, %27, !dbg !5715
  %cmp21 = icmp slt i64 %sub, 0, !dbg !5715
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !5717

if.then23:                                        ; preds = %if.end20
  br label %do.end, !dbg !5718

if.end24:                                         ; preds = %if.end20
  %28 = load i64, i64* %max_sleep, align 8, !dbg !5719
  call void @usleep_range(i64 10, i64 %28) #7, !dbg !5720
  %29 = load i64, i64* %max_sleep, align 8, !dbg !5721
  %cmp25 = icmp ult i64 %29, 1024, !dbg !5723
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !5724

if.then27:                                        ; preds = %if.end24
  %30 = load i64, i64* %max_sleep, align 8, !dbg !5725
  %mul = mul i64 %30, 2, !dbg !5725
  store i64 %mul, i64* %max_sleep, align 8, !dbg !5725
  br label %if.end28, !dbg !5726

if.end28:                                         ; preds = %if.then27, %if.end24
  br label %do.cond, !dbg !5727

do.cond:                                          ; preds = %if.end28
  br i1 true, label %do.body, label %do.end, !dbg !5727, !llvm.loop !5728

do.end:                                           ; preds = %do.cond, %if.then23
  %31 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5730
  %dev29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 41, !dbg !5730
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev29, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !5730
  store i32 -110, i32* %retval, align 4, !dbg !5731
  br label %return, !dbg !5731

return:                                           ; preds = %do.end, %if.then19, %if.then11, %if.then5, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !5732
  ret i32 %32, !dbg !5732
}

; Function Attrs: noredzone
declare dso_local i32 @pci_user_write_config_word(%struct.pci_dev*, i32, i16 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_user_read_config_dword(%struct.pci_dev*, i32, i32*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @pci_vpd_lrdt_tag(i8* %lrdt) #0 !dbg !5733 {
entry:
  %lrdt.addr = alloca i8*, align 8
  store i8* %lrdt, i8** %lrdt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lrdt.addr, metadata !5734, metadata !DIExpression()), !dbg !5735
  %0 = load i8*, i8** %lrdt.addr, align 8, !dbg !5736
  %arrayidx = getelementptr i8, i8* %0, i64 0, !dbg !5736
  %1 = load i8, i8* %arrayidx, align 1, !dbg !5736
  %conv = zext i8 %1 to i32, !dbg !5736
  %and = and i32 %conv, 127, !dbg !5737
  %conv1 = trunc i32 %and to i16, !dbg !5738
  ret i16 %conv1, !dbg !5739
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @pci_vpd_srdt_tag(i8* %srdt) #0 !dbg !5740 {
entry:
  %srdt.addr = alloca i8*, align 8
  store i8* %srdt, i8** %srdt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %srdt.addr, metadata !5741, metadata !DIExpression()), !dbg !5742
  %0 = load i8*, i8** %srdt.addr, align 8, !dbg !5743
  %1 = load i8, i8* %0, align 1, !dbg !5744
  %conv = zext i8 %1 to i32, !dbg !5745
  %and = and i32 %conv, 120, !dbg !5746
  %shr = ashr i32 %and, 3, !dbg !5747
  %conv1 = trunc i32 %shr to i8, !dbg !5748
  ret i8 %conv1, !dbg !5749
}

; Function Attrs: noredzone
declare dso_local i32 @pci_user_read_config_word(%struct.pci_dev*, i32, i16*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fatal_signal_pending(%struct.task_struct* %p) #0 !dbg !5750 {
entry:
  %p.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %p, %struct.task_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %p.addr, metadata !5753, metadata !DIExpression()), !dbg !5754
  %0 = load %struct.task_struct*, %struct.task_struct** %p.addr, align 8, !dbg !5755
  %call = call i32 @signal_pending(%struct.task_struct* %0) #7, !dbg !5756
  %tobool = icmp ne i32 %call, 0, !dbg !5756
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5757

land.rhs:                                         ; preds = %entry
  %1 = load %struct.task_struct*, %struct.task_struct** %p.addr, align 8, !dbg !5758
  %call1 = call i32 @__fatal_signal_pending(%struct.task_struct* %1) #7, !dbg !5759
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5757
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !5760
  %land.ext = zext i1 %2 to i32, !dbg !5757
  ret i32 %land.ext, !dbg !5761
}

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !5762 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !5763, metadata !DIExpression()), !dbg !5764
  %0 = load i32, i32* %m.addr, align 4, !dbg !5765
  %conv = zext i32 %0 to i64, !dbg !5765
  %add = add i64 %conv, 4, !dbg !5766
  %sub = sub i64 %add, 1, !dbg !5767
  %div = sdiv i64 %sub, 4, !dbg !5768
  ret i64 %div, !dbg !5769
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @signal_pending(%struct.task_struct* %p) #0 !dbg !5770 {
entry:
  %p.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %p, %struct.task_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %p.addr, metadata !5771, metadata !DIExpression()), !dbg !5772
  %0 = load %struct.task_struct*, %struct.task_struct** %p.addr, align 8, !dbg !5773
  %call = call i32 @test_tsk_thread_flag(%struct.task_struct* %0, i32 2) #7, !dbg !5773
  %tobool = icmp ne i32 %call, 0, !dbg !5773
  %lnot = xor i1 %tobool, true, !dbg !5773
  %lnot1 = xor i1 %lnot, true, !dbg !5773
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5773
  %conv = sext i32 %lnot.ext to i64, !dbg !5773
  %conv2 = trunc i64 %conv to i32, !dbg !5773
  ret i32 %conv2, !dbg !5774
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__fatal_signal_pending(%struct.task_struct* %p) #0 !dbg !5775 {
entry:
  %p.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %p, %struct.task_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %p.addr, metadata !5776, metadata !DIExpression()), !dbg !5777
  %0 = load %struct.task_struct*, %struct.task_struct** %p.addr, align 8, !dbg !5778
  %pending = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i32 0, i32 79, !dbg !5778
  %signal = getelementptr inbounds %struct.sigpending, %struct.sigpending* %pending, i32 0, i32 1, !dbg !5778
  %call = call i32 @sigismember(%struct.sigset_t* %signal, i32 9) #7, !dbg !5778
  %tobool = icmp ne i32 %call, 0, !dbg !5778
  %lnot = xor i1 %tobool, true, !dbg !5778
  %lnot1 = xor i1 %lnot, true, !dbg !5778
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5778
  %conv = sext i32 %lnot.ext to i64, !dbg !5778
  %conv2 = trunc i64 %conv to i32, !dbg !5778
  ret i32 %conv2, !dbg !5779
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @test_tsk_thread_flag(%struct.task_struct* %tsk, i32 %flag) #0 !dbg !5780 {
entry:
  %tsk.addr = alloca %struct.task_struct*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.task_struct* %tsk, %struct.task_struct** %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %tsk.addr, metadata !5783, metadata !DIExpression()), !dbg !5784
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !5785, metadata !DIExpression()), !dbg !5786
  %0 = load %struct.task_struct*, %struct.task_struct** %tsk.addr, align 8, !dbg !5787
  %call = call %struct.thread_info* @task_thread_info(%struct.task_struct* %0) #7, !dbg !5788
  %1 = load i32, i32* %flag.addr, align 4, !dbg !5789
  %call1 = call i32 @test_ti_thread_flag(%struct.thread_info* %call, i32 %1) #7, !dbg !5790
  ret i32 %call1, !dbg !5791
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @test_ti_thread_flag(%struct.thread_info* %ti, i32 %flag) #0 !dbg !5792 {
entry:
  %ti.addr = alloca %struct.thread_info*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.thread_info* %ti, %struct.thread_info** %ti.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thread_info** %ti.addr, metadata !5797, metadata !DIExpression()), !dbg !5798
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !5799, metadata !DIExpression()), !dbg !5800
  %0 = load i32, i32* %flag.addr, align 4, !dbg !5801
  %conv = sext i32 %0 to i64, !dbg !5801
  %1 = load %struct.thread_info*, %struct.thread_info** %ti.addr, align 8, !dbg !5802
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %1, i32 0, i32 0, !dbg !5803
  %call = call zeroext i1 @test_bit(i64 %conv, i64* %flags) #7, !dbg !5804
  %conv1 = zext i1 %call to i32, !dbg !5804
  ret i32 %conv1, !dbg !5805
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.thread_info* @task_thread_info(%struct.task_struct* %task) #0 !dbg !5806 {
entry:
  %task.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %task, %struct.task_struct** %task.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %task.addr, metadata !5809, metadata !DIExpression()), !dbg !5810
  %0 = load %struct.task_struct*, %struct.task_struct** %task.addr, align 8, !dbg !5811
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i32 0, i32 0, !dbg !5812
  ret %struct.thread_info* %thread_info, !dbg !5813
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !5814 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !5821, metadata !DIExpression()), !dbg !5823
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !5825, metadata !DIExpression()), !dbg !5826
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !5827, metadata !DIExpression()), !dbg !5828
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5829, metadata !DIExpression()), !dbg !5831
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5833, metadata !DIExpression()), !dbg !5834
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5835, metadata !DIExpression()), !dbg !5843
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5845, metadata !DIExpression()), !dbg !5846
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5847, metadata !DIExpression()), !dbg !5848
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5849, metadata !DIExpression()), !dbg !5850
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5851
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5852
  %div = sdiv i64 %1, 64, !dbg !5852
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5853
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5851
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5854
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5855
  %conv.i = trunc i64 %4 to i32, !dbg !5855
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #10, !dbg !5856
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5857
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5857
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #10, !dbg !5857
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5858
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5858
  br i1 %8, label %cond.true, label %cond.false, !dbg !5858

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !5858
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !5858
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !5859
  %and.i = and i64 %11, 63, !dbg !5860
  %shl.i = shl i64 1, %and.i, !dbg !5861
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !5862
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5863
  %shr.i = ashr i64 %13, 6, !dbg !5864
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !5862
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !5862
  %and1.i = and i64 %shl.i, %14, !dbg !5865
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !5866
  %conv = zext i1 %cmp.i to i32, !dbg !5858
  br label %cond.end, !dbg !5858

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !5858
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !5858
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !5867
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !5868
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #8, !dbg !5869, !srcloc !5870
  store i8 %19, i8* %oldbit.i, align 1, !dbg !5869
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !5871
  %tobool.i = trunc i8 %20 to i1, !dbg !5871
  %conv2 = zext i1 %tobool.i to i32, !dbg !5858
  br label %cond.end, !dbg !5858

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5858
  %tobool = icmp ne i32 %cond, 0, !dbg !5858
  ret i1 %tobool, !dbg !5872
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !5873 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5877, metadata !DIExpression()), !dbg !5878
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5879, metadata !DIExpression()), !dbg !5880
  ret i1 true, !dbg !5881
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5882 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5886, metadata !DIExpression()), !dbg !5887
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5888, metadata !DIExpression()), !dbg !5889
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5890, metadata !DIExpression()), !dbg !5891
  ret void, !dbg !5892
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sigismember(%struct.sigset_t* %set, i32 %_sig) #0 !dbg !5893 {
entry:
  %set.addr = alloca %struct.sigset_t*, align 8
  %_sig.addr = alloca i32, align 4
  %sig = alloca i64, align 8
  store %struct.sigset_t* %set, %struct.sigset_t** %set.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sigset_t** %set.addr, metadata !5898, metadata !DIExpression()), !dbg !5899
  store i32 %_sig, i32* %_sig.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_sig.addr, metadata !5900, metadata !DIExpression()), !dbg !5901
  call void @llvm.dbg.declare(metadata i64* %sig, metadata !5902, metadata !DIExpression()), !dbg !5903
  %0 = load i32, i32* %_sig.addr, align 4, !dbg !5904
  %sub = sub i32 %0, 1, !dbg !5905
  %conv = sext i32 %sub to i64, !dbg !5904
  store i64 %conv, i64* %sig, align 8, !dbg !5903
  %1 = load %struct.sigset_t*, %struct.sigset_t** %set.addr, align 8, !dbg !5906
  %sig1 = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %1, i32 0, i32 0, !dbg !5908
  %arrayidx = getelementptr [1 x i64], [1 x i64]* %sig1, i64 0, i64 0, !dbg !5906
  %2 = load i64, i64* %arrayidx, align 8, !dbg !5906
  %3 = load i64, i64* %sig, align 8, !dbg !5909
  %shr = lshr i64 %2, %3, !dbg !5910
  %and = and i64 1, %shr, !dbg !5911
  %conv2 = trunc i64 %and to i32, !dbg !5912
  ret i32 %conv2, !dbg !5913
}

; Function Attrs: noredzone
declare dso_local i32 @pci_user_write_config_dword(%struct.pci_dev*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @kobj_to_dev(%struct.kobject* %kobj) #0 !dbg !5914 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.device*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5917, metadata !DIExpression()), !dbg !5918
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5919, metadata !DIExpression()), !dbg !5921
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5921
  %1 = bitcast %struct.kobject* %0 to i8*, !dbg !5921
  store i8* %1, i8** %__mptr, align 8, !dbg !5921
  br label %do.body, !dbg !5921

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5922

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5921
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5921
  %3 = bitcast i8* %add.ptr to %struct.device*, !dbg !5921
  store %struct.device* %3, %struct.device** %tmp, align 8, !dbg !5922
  %4 = load %struct.device*, %struct.device** %tmp, align 8, !dbg !5921
  ret %struct.device* %4, !dbg !5924
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { cold noredzone }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind readnone }

!llvm.dbg.cu = !{!4023}
!llvm.module.flags = !{!4101, !4102, !4103, !4104}
!llvm.ident = !{!4105}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__key", scope: !2, file: !3, line: 387, type: !532, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "pci_vpd_init", scope: !3, file: !3, line: 369, type: !4, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!3 = !DIFile(filename: "drivers/pci/vpd.c", directory: "/home/lizy2001/genbc/linux")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !9, line: 309, size: 19264, elements: !10)
!9 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!10 = !{!11, !18, !3776, !3777, !3778, !3779, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3807, !3870, !3871, !3872, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3946, !3947, !3949, !3950, !3951, !3952, !3954, !3955, !3956, !3984, !4016, !4017, !4018, !4019, !4020, !4021, !4022}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !8, file: !9, line: 310, baseType: !12, size: 128)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !13, line: 178, size: 128, elements: !14)
!13 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !17}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !12, file: !13, line: 179, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !12, file: !13, line: 179, baseType: !16, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !8, file: !9, line: 311, baseType: !19, size: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !9, line: 605, size: 8064, elements: !21)
!21 = !{!22, !23, !24, !25, !26, !27, !28, !55, !56, !57, !86, !89, !90, !94, !96, !97, !98, !99, !103, !105, !107, !3772, !3773, !3774, !3775}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !20, file: !9, line: 606, baseType: !12, size: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !20, file: !9, line: 607, baseType: !19, size: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !20, file: !9, line: 608, baseType: !12, size: 128, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !20, file: !9, line: 609, baseType: !12, size: 128, offset: 320)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !20, file: !9, line: 610, baseType: !7, size: 64, offset: 448)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !20, file: !9, line: 611, baseType: !12, size: 128, offset: 512)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !20, file: !9, line: 613, baseType: !29, size: 256, offset: 640)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 256, elements: !53)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !32, line: 20, size: 512, elements: !33)
!32 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!33 = !{!34, !42, !43, !47, !49, !50, !51, !52}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !31, file: !32, line: 21, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !13, line: 158, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !13, line: 153, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !38, line: 23, baseType: !39)
!38 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !40, line: 31, baseType: !41)
!40 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!41 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !31, file: !32, line: 22, baseType: !35, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !31, file: !32, line: 23, baseType: !44, size: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !31, file: !32, line: 24, baseType: !48, size: 64, offset: 192)
!48 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !31, file: !32, line: 25, baseType: !48, size: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !31, file: !32, line: 26, baseType: !30, size: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !31, file: !32, line: 26, baseType: !30, size: 64, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !31, file: !32, line: 26, baseType: !30, size: 64, offset: 448)
!53 = !{!54}
!54 = !DISubrange(count: 4)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !20, file: !9, line: 614, baseType: !12, size: 128, offset: 896)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !20, file: !9, line: 615, baseType: !31, size: 512, offset: 1024)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !20, file: !9, line: 617, baseType: !58, size: 64, offset: 1536)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !9, line: 731, size: 320, elements: !60)
!60 = !{!61, !65, !69, !75, !82}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !59, file: !9, line: 732, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!6, !19}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !59, file: !9, line: 733, baseType: !66, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !19}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !59, file: !9, line: 734, baseType: !70, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!73, !19, !74, !6}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!74 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !59, file: !9, line: 735, baseType: !76, size: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!6, !19, !74, !6, !6, !79}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !38, line: 21, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !40, line: 27, baseType: !74)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !59, file: !9, line: 736, baseType: !83, size: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!6, !19, !74, !6, !6, !80}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !20, file: !9, line: 618, baseType: !87, size: 64, offset: 1600)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !9, line: 537, flags: DIFlagFwdDecl)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !20, file: !9, line: 619, baseType: !73, size: 64, offset: 1664)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !20, file: !9, line: 620, baseType: !91, size: 64, offset: 1728)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !93, line: 123, flags: DIFlagFwdDecl)
!93 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!94 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !20, file: !9, line: 622, baseType: !95, size: 8, offset: 1792)
!95 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !20, file: !9, line: 623, baseType: !95, size: 8, offset: 1800)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !20, file: !9, line: 624, baseType: !95, size: 8, offset: 1808)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !20, file: !9, line: 625, baseType: !95, size: 8, offset: 1816)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !20, file: !9, line: 630, baseType: !100, size: 384, offset: 1824)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 384, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 48)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !20, file: !9, line: 632, baseType: !104, size: 16, offset: 2208)
!104 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !20, file: !9, line: 633, baseType: !106, size: 16, offset: 2224)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !9, line: 237, baseType: !104)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !20, file: !9, line: 634, baseType: !108, size: 64, offset: 2240)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !110, line: 461, size: 5568, elements: !111)
!110 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!111 = !{!112, !3300, !3301, !3304, !3305, !3357, !3454, !3455, !3456, !3457, !3458, !3473, !3591, !3604, !3607, !3608, !3612, !3614, !3615, !3616, !3620, !3626, !3627, !3630, !3634, !3724, !3725, !3726, !3727, !3728, !3760, !3761, !3762, !3765, !3768, !3769, !3770, !3771}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !109, file: !110, line: 462, baseType: !113, size: 512)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !114, line: 64, size: 512, elements: !115)
!114 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!115 = !{!116, !117, !118, !120, !180, !3151, !3290, !3295, !3296, !3297, !3298, !3299}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !113, file: !114, line: 65, baseType: !44, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !113, file: !114, line: 66, baseType: !12, size: 128, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !113, file: !114, line: 67, baseType: !119, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !113, file: !114, line: 68, baseType: !121, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !114, line: 192, size: 704, elements: !123)
!123 = !{!124, !125, !141, !142}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !122, file: !114, line: 193, baseType: !12, size: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !122, file: !114, line: 194, baseType: !126, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !127, line: 83, baseType: !128)
!127 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !127, line: 71, elements: !129)
!129 = !{!130}
!130 = !DIDerivedType(tag: DW_TAG_member, scope: !128, file: !127, line: 72, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !128, file: !127, line: 72, elements: !132)
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !131, file: !127, line: 73, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !127, line: 20, elements: !135)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !134, file: !127, line: 21, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !138, line: 25, baseType: !139)
!138 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 25, elements: !140)
!140 = !{}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !122, file: !114, line: 195, baseType: !113, size: 512, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !122, file: !114, line: 196, baseType: !143, size: 64, offset: 640)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !114, line: 156, size: 192, elements: !146)
!146 = !{!147, !152, !157}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !145, file: !114, line: 157, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!6, !121, !119}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !145, file: !114, line: 158, baseType: !153, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!44, !121, !119}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !145, file: !114, line: 159, baseType: !158, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!6, !121, !119, !162}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !114, line: 148, size: 20736, elements: !164)
!164 = !{!165, !170, !174, !175, !179}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !163, file: !114, line: 149, baseType: !166, size: 192)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 192, elements: !168)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!168 = !{!169}
!169 = !DISubrange(count: 3)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !163, file: !114, line: 150, baseType: !171, size: 4096, offset: 192)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 4096, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !163, file: !114, line: 151, baseType: !6, size: 32, offset: 4288)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !163, file: !114, line: 152, baseType: !176, size: 16384, offset: 4320)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 16384, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 2048)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !163, file: !114, line: 153, baseType: !6, size: 32, offset: 20704)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !113, file: !114, line: 69, baseType: !181, size: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !114, line: 138, size: 448, elements: !183)
!183 = !{!184, !188, !216, !218, !3107, !3141, !3145}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !182, file: !114, line: 139, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !119}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !182, file: !114, line: 140, baseType: !189, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !192, line: 230, size: 128, elements: !193)
!192 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!193 = !{!194, !209}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !191, file: !192, line: 231, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!198, !119, !203, !167}
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !13, line: 60, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !200, line: 73, baseType: !201)
!200 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !200, line: 15, baseType: !202)
!202 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !192, line: 30, size: 128, elements: !205)
!205 = !{!206, !207}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !204, file: !192, line: 31, baseType: !44, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !204, file: !192, line: 32, baseType: !208, size: 16, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !13, line: 19, baseType: !104)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !191, file: !192, line: 232, baseType: !210, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!198, !119, !203, !44, !213}
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 55, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !200, line: 72, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !200, line: 16, baseType: !48)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !182, file: !114, line: 141, baseType: !217, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !182, file: !114, line: 142, baseType: !219, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !192, line: 84, size: 320, elements: !223)
!223 = !{!224, !225, !229, !3104, !3105}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !222, file: !192, line: 85, baseType: !44, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !222, file: !192, line: 86, baseType: !226, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!208, !119, !203, !6}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !222, file: !192, line: 88, baseType: !230, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!208, !119, !233, !6}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !192, line: 168, size: 448, elements: !235)
!235 = !{!236, !237, !238, !239, !3099, !3100}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !234, file: !192, line: 169, baseType: !204, size: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !234, file: !192, line: 170, baseType: !213, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !234, file: !192, line: 171, baseType: !73, size: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !234, file: !192, line: 172, baseType: !240, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!198, !243, !119, !233, !167, !415, !213}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !245, line: 916, size: 1856, align: 32, elements: !246)
!245 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!246 = !{!247, !265, !3049, !3050, !3051, !3052, !3061, !3062, !3063, !3064, !3065, !3066, !3082, !3083, !3092, !3093, !3094, !3095, !3096, !3097, !3098}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !244, file: !245, line: 920, baseType: !248, size: 128)
!248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !244, file: !245, line: 917, size: 128, elements: !249)
!249 = !{!250, !256}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !248, file: !245, line: 918, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !252, line: 58, size: 64, elements: !253)
!252 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !251, file: !252, line: 59, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !248, file: !245, line: 919, baseType: !257, size: 128, align: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !13, line: 216, size: 128, align: 64, elements: !258)
!258 = !{!259, !261}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !257, file: !13, line: 217, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !257, file: !13, line: 218, baseType: !262, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !260}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !244, file: !245, line: 921, baseType: !266, size: 128, offset: 128)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !267, line: 8, size: 128, elements: !268)
!267 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!268 = !{!269, !273}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !266, file: !267, line: 9, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !272, line: 18, flags: DIFlagFwdDecl)
!272 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!273 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !266, file: !267, line: 10, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !272, line: 89, size: 1536, elements: !276)
!276 = !{!277, !278, !288, !296, !297, !312, !3017, !3019, !3031, !3032, !3033, !3034, !3035, !3041, !3042, !3043}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !275, file: !272, line: 91, baseType: !74, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !275, file: !272, line: 92, baseType: !279, size: 32, offset: 32)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !280, line: 277, baseType: !281)
!280 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !280, line: 277, size: 32, elements: !282)
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !281, file: !280, line: 277, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !280, line: 70, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !280, line: 65, size: 32, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !285, file: !280, line: 66, baseType: !74, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !275, file: !272, line: 93, baseType: !289, size: 128, offset: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !290, line: 38, size: 128, elements: !291)
!290 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!291 = !{!292, !294}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !290, line: 39, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !289, file: !290, line: 39, baseType: !295, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !275, file: !272, line: 94, baseType: !274, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !275, file: !272, line: 95, baseType: !298, size: 128, offset: 256)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !272, line: 47, size: 128, elements: !299)
!299 = !{!300, !309}
!300 = !DIDerivedType(tag: DW_TAG_member, scope: !298, file: !272, line: 48, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !298, file: !272, line: 48, size: 64, elements: !302)
!302 = !{!303, !308}
!303 = !DIDerivedType(tag: DW_TAG_member, scope: !301, file: !272, line: 49, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !301, file: !272, line: 49, size: 64, elements: !305)
!305 = !{!306, !307}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !304, file: !272, line: 50, baseType: !80, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !304, file: !272, line: 50, baseType: !80, size: 32, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !301, file: !272, line: 52, baseType: !37, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !298, file: !272, line: 54, baseType: !310, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !275, file: !272, line: 96, baseType: !313, size: 64, offset: 384)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !245, line: 610, size: 4224, elements: !315)
!315 = !{!316, !317, !318, !326, !333, !334, !482, !2728, !2729, !2730, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2993, !3001, !3002, !3003, !3013, !3014, !3015, !3016}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !314, file: !245, line: 611, baseType: !208, size: 16)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !314, file: !245, line: 612, baseType: !104, size: 16, offset: 16)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !314, file: !245, line: 613, baseType: !319, size: 32, offset: 32)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !320, line: 23, baseType: !321)
!320 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 21, size: 32, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !321, file: !320, line: 22, baseType: !324, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !13, line: 32, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !200, line: 49, baseType: !74)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !314, file: !245, line: 614, baseType: !327, size: 32, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !320, line: 28, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 26, size: 32, elements: !329)
!329 = !{!330}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !328, file: !320, line: 27, baseType: !331, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !13, line: 33, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !200, line: 50, baseType: !74)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !314, file: !245, line: 615, baseType: !74, size: 32, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !314, file: !245, line: 622, baseType: !335, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !245, line: 1864, size: 1536, align: 512, elements: !338)
!338 = !{!339, !343, !356, !360, !366, !370, !376, !380, !384, !388, !392, !393, !399, !403, !429, !458, !462, !468, !473, !477, !478}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !337, file: !245, line: 1865, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!274, !313, !274, !74}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !337, file: !245, line: 1866, baseType: !344, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!44, !274, !313, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !349, line: 10, size: 128, elements: !350)
!349 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!350 = !{!351, !355}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !348, file: !349, line: 11, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !73}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !348, file: !349, line: 12, baseType: !73, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !337, file: !245, line: 1867, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!6, !313, !6}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !337, file: !245, line: 1868, baseType: !361, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!364, !313, !6}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !245, line: 581, flags: DIFlagFwdDecl)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !337, file: !245, line: 1870, baseType: !367, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!6, !274, !167, !6}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !337, file: !245, line: 1872, baseType: !371, size: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!6, !313, !274, !208, !374}
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !13, line: 30, baseType: !375)
!375 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !337, file: !245, line: 1873, baseType: !377, size: 64, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!6, !274, !313, !274}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !337, file: !245, line: 1874, baseType: !381, size: 64, offset: 448)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!6, !313, !274}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !337, file: !245, line: 1875, baseType: !385, size: 64, offset: 512)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!6, !313, !274, !44}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !337, file: !245, line: 1876, baseType: !389, size: 64, offset: 576)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!6, !313, !274, !208}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !337, file: !245, line: 1877, baseType: !381, size: 64, offset: 640)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !337, file: !245, line: 1878, baseType: !394, size: 64, offset: 704)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!6, !313, !274, !208, !397}
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !13, line: 16, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !13, line: 13, baseType: !80)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !337, file: !245, line: 1879, baseType: !400, size: 64, offset: 768)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!6, !313, !274, !313, !274, !74}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !337, file: !245, line: 1881, baseType: !404, size: 64, offset: 832)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!6, !274, !407}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !245, line: 219, size: 640, elements: !409)
!409 = !{!410, !411, !412, !413, !414, !418, !426, !427, !428}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !408, file: !245, line: 220, baseType: !74, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !408, file: !245, line: 221, baseType: !208, size: 16, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !408, file: !245, line: 222, baseType: !319, size: 32, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !408, file: !245, line: 223, baseType: !327, size: 32, offset: 96)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !408, file: !245, line: 224, baseType: !415, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !13, line: 46, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !200, line: 88, baseType: !417)
!417 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !408, file: !245, line: 225, baseType: !419, size: 128, offset: 192)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !420, line: 13, size: 128, elements: !421)
!420 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!421 = !{!422, !425}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !419, file: !420, line: 14, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !420, line: 8, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !40, line: 30, baseType: !417)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !419, file: !420, line: 15, baseType: !202, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !408, file: !245, line: 226, baseType: !419, size: 128, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !408, file: !245, line: 227, baseType: !419, size: 128, offset: 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !408, file: !245, line: 234, baseType: !243, size: 64, offset: 576)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !337, file: !245, line: 1882, baseType: !430, size: 64, offset: 896)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!6, !433, !435, !80, !74}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !437, line: 22, size: 1152, elements: !438)
!437 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!438 = !{!439, !440, !441, !442, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !436, file: !437, line: 23, baseType: !80, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !436, file: !437, line: 24, baseType: !208, size: 16, offset: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !436, file: !437, line: 25, baseType: !74, size: 32, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !436, file: !437, line: 26, baseType: !443, size: 32, offset: 96)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 104, baseType: !80)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !436, file: !437, line: 27, baseType: !37, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !436, file: !437, line: 28, baseType: !37, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !436, file: !437, line: 37, baseType: !37, size: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !436, file: !437, line: 38, baseType: !397, size: 32, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !436, file: !437, line: 39, baseType: !397, size: 32, offset: 352)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !436, file: !437, line: 40, baseType: !319, size: 32, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !436, file: !437, line: 41, baseType: !327, size: 32, offset: 416)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !436, file: !437, line: 42, baseType: !415, size: 64, offset: 448)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !436, file: !437, line: 43, baseType: !419, size: 128, offset: 512)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !436, file: !437, line: 44, baseType: !419, size: 128, offset: 640)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !436, file: !437, line: 45, baseType: !419, size: 128, offset: 768)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !436, file: !437, line: 46, baseType: !419, size: 128, offset: 896)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !436, file: !437, line: 47, baseType: !37, size: 64, offset: 1024)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !436, file: !437, line: 48, baseType: !37, size: 64, offset: 1088)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !337, file: !245, line: 1883, baseType: !459, size: 64, offset: 960)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!198, !274, !167, !213}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !337, file: !245, line: 1884, baseType: !463, size: 64, offset: 1024)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!6, !313, !466, !37, !37}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !245, line: 50, flags: DIFlagFwdDecl)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !337, file: !245, line: 1886, baseType: !469, size: 64, offset: 1088)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!6, !313, !472, !6}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !337, file: !245, line: 1887, baseType: !474, size: 64, offset: 1152)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!6, !313, !274, !243, !74, !208}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !337, file: !245, line: 1890, baseType: !389, size: 64, offset: 1216)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !337, file: !245, line: 1891, baseType: !479, size: 64, offset: 1280)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!6, !313, !364, !6}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !314, file: !245, line: 623, baseType: !483, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !245, line: 1416, size: 9472, elements: !485)
!485 = !{!486, !487, !488, !489, !490, !491, !541, !2329, !2417, !2500, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2516, !2520, !2521, !2524, !2525, !2528, !2529, !2530, !2571, !2598, !2599, !2600, !2601, !2602, !2603, !2606, !2608, !2615, !2616, !2618, !2619, !2620, !2679, !2680, !2695, !2696, !2697, !2698, !2699, !2702, !2703, !2704, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !484, file: !245, line: 1417, baseType: !12, size: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !484, file: !245, line: 1418, baseType: !397, size: 32, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !484, file: !245, line: 1419, baseType: !95, size: 8, offset: 160)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !484, file: !245, line: 1420, baseType: !48, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !484, file: !245, line: 1421, baseType: !415, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !484, file: !245, line: 1422, baseType: !492, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !245, line: 2228, size: 576, elements: !494)
!494 = !{!495, !496, !497, !504, !508, !512, !516, !520, !521, !531, !534, !535, !536, !538, !539, !540}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !493, file: !245, line: 2229, baseType: !44, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !493, file: !245, line: 2230, baseType: !6, size: 32, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !493, file: !245, line: 2238, baseType: !498, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!6, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !503, line: 28, flags: DIFlagFwdDecl)
!503 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!504 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !493, file: !245, line: 2239, baseType: !505, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!507 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !245, line: 70, flags: DIFlagFwdDecl)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !493, file: !245, line: 2240, baseType: !509, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!274, !492, !6, !44, !73}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !493, file: !245, line: 2242, baseType: !513, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !483}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !493, file: !245, line: 2243, baseType: !517, size: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !519, line: 189, flags: DIFlagFwdDecl)
!519 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/lizy2001/genbc/linux")
!520 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !493, file: !245, line: 2244, baseType: !492, size: 64, offset: 448)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !493, file: !245, line: 2245, baseType: !522, size: 64, offset: 512)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !13, line: 182, size: 64, elements: !523)
!523 = !{!524}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !522, file: !13, line: 183, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !13, line: 186, size: 128, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !526, file: !13, line: 187, baseType: !525, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !526, file: !13, line: 187, baseType: !530, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !493, file: !245, line: 2247, baseType: !532, offset: 576)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !533, line: 187, elements: !140)
!533 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!534 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !493, file: !245, line: 2248, baseType: !532, offset: 576)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !493, file: !245, line: 2249, baseType: !532, offset: 576)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !493, file: !245, line: 2250, baseType: !537, offset: 576)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, elements: !168)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !493, file: !245, line: 2252, baseType: !532, offset: 576)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !493, file: !245, line: 2253, baseType: !532, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !493, file: !245, line: 2254, baseType: !532, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !484, file: !245, line: 1423, baseType: !542, size: 64, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !245, line: 1935, size: 1472, elements: !545)
!545 = !{!546, !550, !554, !555, !559, !566, !570, !571, !572, !576, !580, !581, !582, !583, !589, !594, !595, !602, !603, !604, !605, !2313, !2328}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !544, file: !245, line: 1936, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!313, !483}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !544, file: !245, line: 1937, baseType: !551, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !313}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !544, file: !245, line: 1938, baseType: !551, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !544, file: !245, line: 1940, baseType: !556, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !313, !6}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !544, file: !245, line: 1941, baseType: !560, size: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!6, !313, !563}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !565, line: 40, flags: DIFlagFwdDecl)
!565 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!566 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !544, file: !245, line: 1942, baseType: !567, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!6, !313}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !544, file: !245, line: 1943, baseType: !551, size: 64, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !544, file: !245, line: 1944, baseType: !513, size: 64, offset: 448)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !544, file: !245, line: 1945, baseType: !573, size: 64, offset: 512)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!6, !483, !6}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !544, file: !245, line: 1946, baseType: !577, size: 64, offset: 576)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!6, !483}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !544, file: !245, line: 1947, baseType: !577, size: 64, offset: 640)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !544, file: !245, line: 1948, baseType: !577, size: 64, offset: 704)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !544, file: !245, line: 1949, baseType: !577, size: 64, offset: 768)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !544, file: !245, line: 1950, baseType: !584, size: 64, offset: 832)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!6, !274, !587}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !245, line: 57, flags: DIFlagFwdDecl)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !544, file: !245, line: 1951, baseType: !590, size: 64, offset: 896)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!6, !483, !593, !167}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !544, file: !245, line: 1952, baseType: !513, size: 64, offset: 960)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !544, file: !245, line: 1954, baseType: !596, size: 64, offset: 1024)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!6, !599, !274}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !601, line: 539, flags: DIFlagFwdDecl)
!601 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!602 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !544, file: !245, line: 1955, baseType: !596, size: 64, offset: 1088)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !544, file: !245, line: 1956, baseType: !596, size: 64, offset: 1152)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !544, file: !245, line: 1957, baseType: !596, size: 64, offset: 1216)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !544, file: !245, line: 1963, baseType: !606, size: 64, offset: 1280)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!6, !483, !609, !632}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !611, line: 68, size: 512, align: 128, elements: !612)
!611 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!612 = !{!613, !614, !2305, !2312}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !610, file: !611, line: 69, baseType: !48, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !611, line: 77, baseType: !615, size: 320, offset: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !610, file: !611, line: 77, size: 320, elements: !616)
!616 = !{!617, !812, !817, !845, !853, !859, !2229, !2304}
!617 = !DIDerivedType(tag: DW_TAG_member, scope: !615, file: !611, line: 78, baseType: !618, size: 320)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !615, file: !611, line: 78, size: 320, elements: !619)
!619 = !{!620, !621, !810, !811}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !618, file: !611, line: 84, baseType: !12, size: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !618, file: !611, line: 86, baseType: !622, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !245, line: 451, size: 1216, align: 64, elements: !624)
!624 = !{!625, !626, !634, !635, !640, !655, !671, !672, !673, !674, !803, !804, !807, !808, !809}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !623, file: !245, line: 452, baseType: !313, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !623, file: !245, line: 453, baseType: !627, size: 128, offset: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !628, line: 292, size: 128, elements: !629)
!628 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!629 = !{!630, !631, !633}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !627, file: !628, line: 293, baseType: !126)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !627, file: !628, line: 295, baseType: !632, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !13, line: 148, baseType: !74)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !627, file: !628, line: 296, baseType: !73, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !623, file: !245, line: 454, baseType: !632, size: 32, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !623, file: !245, line: 455, baseType: !636, size: 32, offset: 224)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !13, line: 168, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 166, size: 32, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !637, file: !13, line: 167, baseType: !6, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !623, file: !245, line: 460, baseType: !641, size: 128, offset: 256)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !642, line: 125, size: 128, elements: !643)
!642 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!643 = !{!644, !654}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !641, file: !642, line: 126, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !642, line: 31, size: 64, elements: !646)
!646 = !{!647}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !645, file: !642, line: 32, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !642, line: 24, size: 192, align: 64, elements: !650)
!650 = !{!651, !652, !653}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !649, file: !642, line: 25, baseType: !48, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !649, file: !642, line: 26, baseType: !648, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !649, file: !642, line: 27, baseType: !648, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !641, file: !642, line: 127, baseType: !648, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !623, file: !245, line: 461, baseType: !656, size: 256, offset: 384)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !657, line: 35, size: 256, elements: !658)
!657 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!658 = !{!659, !667, !668, !670}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !656, file: !657, line: 36, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !661, line: 13, baseType: !662)
!661 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !13, line: 175, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 173, size: 64, elements: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !663, file: !13, line: 174, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !38, line: 22, baseType: !424)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !656, file: !657, line: 42, baseType: !660, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !656, file: !657, line: 46, baseType: !669, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !127, line: 29, baseType: !134)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !656, file: !657, line: 47, baseType: !12, size: 128, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !623, file: !245, line: 462, baseType: !48, size: 64, offset: 640)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !623, file: !245, line: 463, baseType: !48, size: 64, offset: 704)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !623, file: !245, line: 464, baseType: !48, size: 64, offset: 768)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !623, file: !245, line: 465, baseType: !675, size: 64, offset: 832)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !245, line: 367, size: 1408, elements: !678)
!678 = !{!679, !683, !687, !691, !695, !699, !705, !711, !715, !720, !724, !728, !732, !760, !771, !777, !778, !779, !783, !788, !792, !799}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !677, file: !245, line: 368, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!6, !609, !563}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !677, file: !245, line: 369, baseType: !684, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!6, !243, !609}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !677, file: !245, line: 372, baseType: !688, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!6, !622, !563}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !677, file: !245, line: 375, baseType: !692, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!6, !609}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !677, file: !245, line: 381, baseType: !696, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!6, !243, !622, !16, !74}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !677, file: !245, line: 383, baseType: !700, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !703}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !245, line: 290, flags: DIFlagFwdDecl)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !677, file: !245, line: 385, baseType: !706, size: 64, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!6, !243, !622, !415, !74, !74, !709, !710}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !677, file: !245, line: 388, baseType: !712, size: 64, offset: 448)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!6, !243, !622, !415, !74, !74, !609, !73}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !677, file: !245, line: 393, baseType: !716, size: 64, offset: 512)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!719, !622, !719}
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !13, line: 125, baseType: !37)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !677, file: !245, line: 394, baseType: !721, size: 64, offset: 576)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !609, !74, !74}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !677, file: !245, line: 395, baseType: !725, size: 64, offset: 640)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!6, !609, !632}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !677, file: !245, line: 396, baseType: !729, size: 64, offset: 704)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{null, !609}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !677, file: !245, line: 397, baseType: !733, size: 64, offset: 768)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!198, !736, !758}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !245, line: 320, size: 384, elements: !738)
!738 = !{!739, !740, !741, !745, !746, !747, !750, !751}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !737, file: !245, line: 321, baseType: !243, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !737, file: !245, line: 326, baseType: !415, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !737, file: !245, line: 327, baseType: !742, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !736, !202, !202}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !737, file: !245, line: 328, baseType: !73, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !737, file: !245, line: 329, baseType: !6, size: 32, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !737, file: !245, line: 330, baseType: !748, size: 16, offset: 288)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !38, line: 19, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !40, line: 24, baseType: !104)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !737, file: !245, line: 331, baseType: !748, size: 16, offset: 304)
!751 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !245, line: 332, baseType: !752, size: 64, offset: 320)
!752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !737, file: !245, line: 332, size: 64, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !752, file: !245, line: 333, baseType: !74, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !752, file: !245, line: 334, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !245, line: 334, flags: DIFlagFwdDecl)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !245, line: 64, flags: DIFlagFwdDecl)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !677, file: !245, line: 402, baseType: !761, size: 64, offset: 832)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!6, !622, !609, !609, !764}
!764 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !765, line: 15, baseType: !74, size: 32, elements: !766)
!765 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!766 = !{!767, !768, !769, !770}
!767 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!768 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!769 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!770 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !677, file: !245, line: 404, baseType: !772, size: 64, offset: 896)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!374, !609, !775}
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !776, line: 305, baseType: !74)
!776 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!777 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !677, file: !245, line: 405, baseType: !729, size: 64, offset: 960)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !677, file: !245, line: 406, baseType: !692, size: 64, offset: 1024)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !677, file: !245, line: 407, baseType: !780, size: 64, offset: 1088)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!6, !609, !48, !48}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !677, file: !245, line: 409, baseType: !784, size: 64, offset: 1152)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{null, !609, !787, !787}
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !677, file: !245, line: 410, baseType: !789, size: 64, offset: 1216)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!6, !622, !609}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !677, file: !245, line: 413, baseType: !793, size: 64, offset: 1280)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!6, !796, !243, !798}
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !245, line: 61, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !677, file: !245, line: 415, baseType: !800, size: 64, offset: 1344)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !243}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !623, file: !245, line: 466, baseType: !48, size: 64, offset: 896)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !623, file: !245, line: 467, baseType: !805, size: 32, offset: 960)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !806, line: 8, baseType: !80)
!806 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!807 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !623, file: !245, line: 468, baseType: !126, offset: 992)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !623, file: !245, line: 469, baseType: !12, size: 128, offset: 1024)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !623, file: !245, line: 470, baseType: !73, size: 64, offset: 1152)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !618, file: !611, line: 87, baseType: !48, size: 64, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !618, file: !611, line: 94, baseType: !48, size: 64, offset: 256)
!812 = !DIDerivedType(tag: DW_TAG_member, scope: !615, file: !611, line: 96, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !615, file: !611, line: 96, size: 64, elements: !814)
!814 = !{!815}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !813, file: !611, line: 101, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !13, line: 143, baseType: !37)
!817 = !DIDerivedType(tag: DW_TAG_member, scope: !615, file: !611, line: 103, baseType: !818, size: 320)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !615, file: !611, line: 103, size: 320, elements: !819)
!819 = !{!820, !830, !833, !834}
!820 = !DIDerivedType(tag: DW_TAG_member, scope: !818, file: !611, line: 104, baseType: !821, size: 128)
!821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !818, file: !611, line: 104, size: 128, elements: !822)
!822 = !{!823, !824}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !821, file: !611, line: 105, baseType: !12, size: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, scope: !821, file: !611, line: 106, baseType: !825, size: 128)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !821, file: !611, line: 106, size: 128, elements: !826)
!826 = !{!827, !828, !829}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !825, file: !611, line: 107, baseType: !609, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !825, file: !611, line: 109, baseType: !6, size: 32, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !825, file: !611, line: 110, baseType: !6, size: 32, offset: 96)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !818, file: !611, line: 117, baseType: !831, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !611, line: 117, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !818, file: !611, line: 119, baseType: !73, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, scope: !818, file: !611, line: 120, baseType: !835, size: 64, offset: 256)
!835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !818, file: !611, line: 120, size: 64, elements: !836)
!836 = !{!837, !838, !839}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !835, file: !611, line: 121, baseType: !73, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !835, file: !611, line: 122, baseType: !48, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !835, file: !611, line: 123, baseType: !840, size: 32)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !835, file: !611, line: 123, size: 32, elements: !841)
!841 = !{!842, !843, !844}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !840, file: !611, line: 124, baseType: !74, size: 16, flags: DIFlagBitField, extraData: i64 0)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !840, file: !611, line: 125, baseType: !74, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !840, file: !611, line: 126, baseType: !74, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!845 = !DIDerivedType(tag: DW_TAG_member, scope: !615, file: !611, line: 130, baseType: !846, size: 192)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !615, file: !611, line: 130, size: 192, elements: !847)
!847 = !{!848, !849, !850, !851, !852}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !846, file: !611, line: 131, baseType: !48, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !846, file: !611, line: 134, baseType: !95, size: 8, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !846, file: !611, line: 135, baseType: !95, size: 8, offset: 72)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !846, file: !611, line: 136, baseType: !636, size: 32, offset: 96)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !846, file: !611, line: 137, baseType: !74, size: 32, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, scope: !615, file: !611, line: 139, baseType: !854, size: 256)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !615, file: !611, line: 139, size: 256, elements: !855)
!855 = !{!856, !857, !858}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !854, file: !611, line: 140, baseType: !48, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !854, file: !611, line: 141, baseType: !636, size: 32, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !854, file: !611, line: 143, baseType: !12, size: 128, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, scope: !615, file: !611, line: 145, baseType: !860, size: 256)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !615, file: !611, line: 145, size: 256, elements: !861)
!861 = !{!862, !863, !865, !866, !2228}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !860, file: !611, line: 146, baseType: !48, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !860, file: !611, line: 147, baseType: !864, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !601, line: 509, baseType: !609)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !860, file: !611, line: 148, baseType: !48, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, scope: !860, file: !611, line: 149, baseType: !867, size: 64, offset: 192)
!867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !860, file: !611, line: 149, size: 64, elements: !868)
!868 = !{!869, !2227}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !867, file: !611, line: 150, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !611, line: 388, size: 7296, elements: !872)
!872 = !{!873, !2223}
!873 = !DIDerivedType(tag: DW_TAG_member, scope: !871, file: !611, line: 389, baseType: !874, size: 7296)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !871, file: !611, line: 389, size: 7296, elements: !875)
!875 = !{!876, !999, !1000, !1001, !1005, !1006, !1007, !1008, !1009, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1050, !1056, !1059, !1089, !1090, !2207, !2208, !2211, !2212, !2213, !2216, !2217, !2218, !2221, !2222}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !874, file: !611, line: 390, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !611, line: 305, size: 1472, elements: !879)
!879 = !{!880, !881, !882, !883, !884, !885, !886, !887, !894, !895, !900, !901, !904, !993, !994, !995, !996, !997}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !878, file: !611, line: 308, baseType: !48, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !878, file: !611, line: 309, baseType: !48, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !878, file: !611, line: 313, baseType: !877, size: 64, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !878, file: !611, line: 313, baseType: !877, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !878, file: !611, line: 315, baseType: !649, size: 192, align: 64, offset: 256)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !878, file: !611, line: 323, baseType: !48, size: 64, offset: 448)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !878, file: !611, line: 327, baseType: !870, size: 64, offset: 512)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !878, file: !611, line: 333, baseType: !888, size: 64, offset: 576)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !601, line: 284, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !601, line: 284, size: 64, elements: !890)
!890 = !{!891}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !889, file: !601, line: 284, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !893, line: 19, baseType: !48)
!893 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!894 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !878, file: !611, line: 334, baseType: !48, size: 64, offset: 640)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !878, file: !611, line: 343, baseType: !896, size: 256, offset: 704)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !878, file: !611, line: 340, size: 256, elements: !897)
!897 = !{!898, !899}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !896, file: !611, line: 341, baseType: !649, size: 192, align: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !896, file: !611, line: 342, baseType: !48, size: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !878, file: !611, line: 351, baseType: !12, size: 128, offset: 960)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !878, file: !611, line: 353, baseType: !902, size: 64, offset: 1088)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !611, line: 353, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !878, file: !611, line: 356, baseType: !905, size: 64, offset: 1152)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !907)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !565, line: 557, size: 832, elements: !908)
!908 = !{!909, !913, !914, !918, !922, !962, !971, !975, !979, !980, !981, !985, !989}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !907, file: !565, line: 558, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{null, !877}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !907, file: !565, line: 559, baseType: !910, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !907, file: !565, line: 560, baseType: !915, size: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!6, !877, !48}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !907, file: !565, line: 561, baseType: !919, size: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!6, !877}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !907, file: !565, line: 562, baseType: !923, size: 64, offset: 256)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !611, line: 682, baseType: !74)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !565, line: 508, size: 768, elements: !929)
!929 = !{!930, !931, !932, !933, !934, !935, !942, !949, !955, !956, !957, !959, !961}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !928, file: !565, line: 509, baseType: !877, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !928, file: !565, line: 510, baseType: !74, size: 32, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !928, file: !565, line: 511, baseType: !632, size: 32, offset: 96)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !928, file: !565, line: 512, baseType: !48, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !928, file: !565, line: 513, baseType: !48, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !928, file: !565, line: 514, baseType: !936, size: 64, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !601, line: 385, baseType: !938)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !601, line: 385, size: 64, elements: !939)
!939 = !{!940}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !938, file: !601, line: 385, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !893, line: 15, baseType: !48)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !928, file: !565, line: 516, baseType: !943, size: 64, offset: 320)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !601, line: 359, baseType: !945)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !601, line: 359, size: 64, elements: !946)
!946 = !{!947}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !945, file: !601, line: 359, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !893, line: 16, baseType: !48)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !928, file: !565, line: 519, baseType: !950, size: 64, offset: 384)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !893, line: 21, baseType: !951)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !893, line: 21, size: 64, elements: !952)
!952 = !{!953}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !951, file: !893, line: 21, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !893, line: 14, baseType: !48)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !928, file: !565, line: 521, baseType: !609, size: 64, offset: 448)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !928, file: !565, line: 522, baseType: !609, size: 64, offset: 512)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !928, file: !565, line: 528, baseType: !958, size: 64, offset: 576)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !928, file: !565, line: 532, baseType: !960, size: 64, offset: 640)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !928, file: !565, line: 536, baseType: !864, size: 64, offset: 704)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !907, file: !565, line: 563, baseType: !963, size: 64, offset: 320)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!926, !927, !966}
!966 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !565, line: 546, baseType: !74, size: 32, elements: !967)
!967 = !{!968, !969, !970}
!968 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!969 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!970 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !907, file: !565, line: 565, baseType: !972, size: 64, offset: 384)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !927, !48, !48}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !907, file: !565, line: 567, baseType: !976, size: 64, offset: 448)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!48, !877}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !907, file: !565, line: 571, baseType: !923, size: 64, offset: 512)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !907, file: !565, line: 574, baseType: !923, size: 64, offset: 576)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !907, file: !565, line: 579, baseType: !982, size: 64, offset: 640)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!6, !877, !48, !73, !6, !6}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !907, file: !565, line: 585, baseType: !986, size: 64, offset: 704)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!44, !877}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !907, file: !565, line: 615, baseType: !990, size: 64, offset: 768)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!609, !877, !48}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !878, file: !611, line: 359, baseType: !48, size: 64, offset: 1216)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !878, file: !611, line: 361, baseType: !243, size: 64, offset: 1280)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !878, file: !611, line: 362, baseType: !73, size: 64, offset: 1344)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !878, file: !611, line: 365, baseType: !660, size: 64, offset: 1408)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !878, file: !611, line: 373, baseType: !998, offset: 1472)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !611, line: 296, elements: !140)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !874, file: !611, line: 391, baseType: !645, size: 64, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !874, file: !611, line: 392, baseType: !37, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !874, file: !611, line: 394, baseType: !1002, size: 64, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!48, !243, !48, !48, !48, !48}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !874, file: !611, line: 398, baseType: !48, size: 64, offset: 256)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !874, file: !611, line: 399, baseType: !48, size: 64, offset: 320)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !874, file: !611, line: 405, baseType: !48, size: 64, offset: 384)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !874, file: !611, line: 406, baseType: !48, size: 64, offset: 448)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !874, file: !611, line: 407, baseType: !1010, size: 64, offset: 512)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !601, line: 286, baseType: !1012)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !601, line: 286, size: 64, elements: !1013)
!1013 = !{!1014}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1012, file: !601, line: 286, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !893, line: 18, baseType: !48)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !874, file: !611, line: 416, baseType: !636, size: 32, offset: 576)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !874, file: !611, line: 428, baseType: !636, size: 32, offset: 608)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !874, file: !611, line: 437, baseType: !636, size: 32, offset: 640)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !874, file: !611, line: 447, baseType: !636, size: 32, offset: 672)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !874, file: !611, line: 450, baseType: !660, size: 64, offset: 704)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !874, file: !611, line: 452, baseType: !6, size: 32, offset: 768)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !874, file: !611, line: 454, baseType: !126, offset: 800)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !874, file: !611, line: 457, baseType: !656, size: 256, offset: 832)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !874, file: !611, line: 459, baseType: !12, size: 128, offset: 1088)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !874, file: !611, line: 466, baseType: !48, size: 64, offset: 1216)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !874, file: !611, line: 467, baseType: !48, size: 64, offset: 1280)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !874, file: !611, line: 469, baseType: !48, size: 64, offset: 1344)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !874, file: !611, line: 470, baseType: !48, size: 64, offset: 1408)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !874, file: !611, line: 471, baseType: !662, size: 64, offset: 1472)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !874, file: !611, line: 472, baseType: !48, size: 64, offset: 1536)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !874, file: !611, line: 473, baseType: !48, size: 64, offset: 1600)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !874, file: !611, line: 474, baseType: !48, size: 64, offset: 1664)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !874, file: !611, line: 475, baseType: !48, size: 64, offset: 1728)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !874, file: !611, line: 477, baseType: !126, offset: 1792)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !874, file: !611, line: 478, baseType: !48, size: 64, offset: 1792)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !874, file: !611, line: 478, baseType: !48, size: 64, offset: 1856)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !874, file: !611, line: 478, baseType: !48, size: 64, offset: 1920)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !874, file: !611, line: 478, baseType: !48, size: 64, offset: 1984)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !874, file: !611, line: 479, baseType: !48, size: 64, offset: 2048)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !874, file: !611, line: 479, baseType: !48, size: 64, offset: 2112)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !874, file: !611, line: 479, baseType: !48, size: 64, offset: 2176)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !874, file: !611, line: 480, baseType: !48, size: 64, offset: 2240)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !874, file: !611, line: 480, baseType: !48, size: 64, offset: 2304)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !874, file: !611, line: 480, baseType: !48, size: 64, offset: 2368)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !874, file: !611, line: 480, baseType: !48, size: 64, offset: 2432)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !874, file: !611, line: 482, baseType: !1047, size: 2816, offset: 2496)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 2816, elements: !1048)
!1048 = !{!1049}
!1049 = !DISubrange(count: 44)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !874, file: !611, line: 488, baseType: !1051, size: 256, offset: 5312)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1052, line: 60, size: 256, elements: !1053)
!1052 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1053 = !{!1054}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1051, file: !1052, line: 61, baseType: !1055, size: 256)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 256, elements: !53)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !874, file: !611, line: 490, baseType: !1057, size: 64, offset: 5568)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !611, line: 490, flags: DIFlagFwdDecl)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !874, file: !611, line: 493, baseType: !1060, size: 896, offset: 5632)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1061, line: 53, baseType: !1062)
!1061 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1061, line: 13, size: 896, elements: !1063)
!1063 = !{!1064, !1065, !1066, !1067, !1070, !1071, !1078, !1079, !1083, !1084, !1085}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1062, file: !1061, line: 18, baseType: !37, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1062, file: !1061, line: 28, baseType: !662, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1062, file: !1061, line: 31, baseType: !656, size: 256, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1062, file: !1061, line: 32, baseType: !1068, size: 64, offset: 384)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1061, line: 32, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1062, file: !1061, line: 37, baseType: !104, size: 16, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1062, file: !1061, line: 40, baseType: !1072, size: 192, offset: 512)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1073, line: 53, size: 192, elements: !1074)
!1073 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1074 = !{!1075, !1076, !1077}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1072, file: !1073, line: 54, baseType: !660, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1072, file: !1073, line: 55, baseType: !126, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1072, file: !1073, line: 59, baseType: !12, size: 128, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1062, file: !1061, line: 41, baseType: !73, size: 64, offset: 704)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1062, file: !1061, line: 42, baseType: !1080, size: 64, offset: 768)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1082)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1061, line: 42, flags: DIFlagFwdDecl)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1062, file: !1061, line: 44, baseType: !636, size: 32, offset: 832)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1062, file: !1061, line: 50, baseType: !748, size: 16, offset: 864)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1062, file: !1061, line: 51, baseType: !1086, size: 16, offset: 880)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !38, line: 18, baseType: !1087)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !40, line: 23, baseType: !1088)
!1088 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !874, file: !611, line: 495, baseType: !48, size: 64, offset: 6528)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !874, file: !611, line: 497, baseType: !1091, size: 64, offset: 6592)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !611, line: 381, size: 384, elements: !1093)
!1093 = !{!1094, !1095, !2206}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1092, file: !611, line: 382, baseType: !636, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1092, file: !611, line: 383, baseType: !1096, size: 128, offset: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !611, line: 376, size: 128, elements: !1097)
!1097 = !{!1098, !2204}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1096, file: !611, line: 377, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1101, line: 640, size: 48640, elements: !1102)
!1101 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1102 = !{!1103, !1109, !1111, !1112, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1129, !1147, !1158, !1248, !1249, !1250, !1261, !1262, !1264, !1265, !1266, !1267, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1351, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1390, !1392, !1393, !1394, !1406, !1407, !1408, !1409, !1410, !1411, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1435, !1440, !1624, !1625, !1626, !1627, !1631, !1634, !1637, !1640, !1643, !1646, !1747, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1793, !1794, !1795, !1796, !1797, !1802, !1803, !1804, !1807, !1808, !1811, !1814, !1817, !1820, !1863, !1866, !1867, !1946, !1947, !1950, !1951, !1954, !1955, !1956, !1960, !1961, !1962, !1975, !1976, !1977, !1987, !1992, !1995, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1100, file: !1101, line: 646, baseType: !1104, size: 128)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1105, line: 56, size: 128, elements: !1106)
!1105 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1106 = !{!1107, !1108}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1104, file: !1105, line: 57, baseType: !48, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1104, file: !1105, line: 58, baseType: !80, size: 32, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1100, file: !1101, line: 649, baseType: !1110, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !202)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1100, file: !1101, line: 657, baseType: !73, size: 64, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1100, file: !1101, line: 658, baseType: !1113, size: 32, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1114, line: 113, baseType: !1115)
!1114 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1114, line: 111, size: 32, elements: !1116)
!1116 = !{!1117}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1115, file: !1114, line: 112, baseType: !636, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1100, file: !1101, line: 660, baseType: !74, size: 32, offset: 288)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1100, file: !1101, line: 661, baseType: !74, size: 32, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1100, file: !1101, line: 684, baseType: !6, size: 32, offset: 352)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1100, file: !1101, line: 686, baseType: !6, size: 32, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1100, file: !1101, line: 687, baseType: !6, size: 32, offset: 416)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1100, file: !1101, line: 688, baseType: !6, size: 32, offset: 448)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1100, file: !1101, line: 689, baseType: !74, size: 32, offset: 480)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1100, file: !1101, line: 691, baseType: !1126, size: 64, offset: 512)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1128)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1101, line: 691, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1100, file: !1101, line: 692, baseType: !1130, size: 832, offset: 576)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1101, line: 451, size: 832, elements: !1131)
!1131 = !{!1132, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1130, file: !1101, line: 453, baseType: !1133, size: 128)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1101, line: 325, size: 128, elements: !1134)
!1134 = !{!1135, !1136}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1133, file: !1101, line: 326, baseType: !48, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1133, file: !1101, line: 327, baseType: !80, size: 32, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1130, file: !1101, line: 454, baseType: !649, size: 192, align: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1130, file: !1101, line: 455, baseType: !12, size: 128, offset: 320)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1130, file: !1101, line: 456, baseType: !74, size: 32, offset: 448)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1130, file: !1101, line: 458, baseType: !37, size: 64, offset: 512)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1130, file: !1101, line: 459, baseType: !37, size: 64, offset: 576)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1130, file: !1101, line: 460, baseType: !37, size: 64, offset: 640)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1130, file: !1101, line: 461, baseType: !37, size: 64, offset: 704)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1130, file: !1101, line: 463, baseType: !37, size: 64, offset: 768)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1130, file: !1101, line: 465, baseType: !1146, offset: 832)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1101, line: 415, elements: !140)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1100, file: !1101, line: 693, baseType: !1148, size: 384, offset: 1408)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1101, line: 489, size: 384, elements: !1149)
!1149 = !{!1150, !1151, !1152, !1153, !1154, !1155, !1156}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1148, file: !1101, line: 490, baseType: !12, size: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1148, file: !1101, line: 491, baseType: !48, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1148, file: !1101, line: 492, baseType: !48, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1148, file: !1101, line: 493, baseType: !74, size: 32, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1148, file: !1101, line: 494, baseType: !104, size: 16, offset: 288)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1148, file: !1101, line: 495, baseType: !104, size: 16, offset: 304)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1148, file: !1101, line: 497, baseType: !1157, size: 64, offset: 320)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1100, file: !1101, line: 697, baseType: !1159, size: 1792, offset: 1792)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1101, line: 507, size: 1792, elements: !1160)
!1160 = !{!1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1245, !1246}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1159, file: !1101, line: 508, baseType: !649, size: 192, align: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1159, file: !1101, line: 515, baseType: !37, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1159, file: !1101, line: 516, baseType: !37, size: 64, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1159, file: !1101, line: 517, baseType: !37, size: 64, offset: 320)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1159, file: !1101, line: 518, baseType: !37, size: 64, offset: 384)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1159, file: !1101, line: 519, baseType: !37, size: 64, offset: 448)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1159, file: !1101, line: 526, baseType: !666, size: 64, offset: 512)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1159, file: !1101, line: 527, baseType: !37, size: 64, offset: 576)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1159, file: !1101, line: 528, baseType: !74, size: 32, offset: 640)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1159, file: !1101, line: 554, baseType: !74, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1159, file: !1101, line: 555, baseType: !74, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1159, file: !1101, line: 556, baseType: !74, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1159, file: !1101, line: 557, baseType: !74, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1159, file: !1101, line: 563, baseType: !1175, size: 512, offset: 704)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !1176, line: 118, size: 512, elements: !1177)
!1176 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!1177 = !{!1178, !1186, !1187, !1196, !1239, !1242, !1243, !1244}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1175, file: !1176, line: 119, baseType: !1179, size: 256)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1180, line: 9, size: 256, elements: !1181)
!1180 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1181 = !{!1182, !1183}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1179, file: !1180, line: 10, baseType: !649, size: 192, align: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1179, file: !1180, line: 11, baseType: !1184, size: 64, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1185, line: 29, baseType: !666)
!1185 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1175, file: !1176, line: 120, baseType: !1184, size: 64, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1175, file: !1176, line: 121, baseType: !1188, size: 64, offset: 320)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!1191, !1195}
!1191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !1176, line: 65, baseType: !74, size: 32, elements: !1192)
!1192 = !{!1193, !1194}
!1193 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!1194 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1175, file: !1176, line: 122, baseType: !1197, size: 64, offset: 384)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !1176, line: 159, size: 512, align: 512, elements: !1199)
!1199 = !{!1200, !1220, !1221, !1224, !1229, !1230, !1234, !1238}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1198, file: !1176, line: 160, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !1176, line: 214, size: 4608, align: 512, elements: !1203)
!1203 = !{!1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1202, file: !1176, line: 215, baseType: !669)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1202, file: !1176, line: 216, baseType: !74, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1202, file: !1176, line: 217, baseType: !74, size: 32, offset: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1202, file: !1176, line: 218, baseType: !74, size: 32, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1202, file: !1176, line: 219, baseType: !74, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1202, file: !1176, line: 220, baseType: !74, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1202, file: !1176, line: 221, baseType: !74, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1202, file: !1176, line: 222, baseType: !74, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1202, file: !1176, line: 233, baseType: !1184, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1202, file: !1176, line: 234, baseType: !1195, size: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1202, file: !1176, line: 235, baseType: !1184, size: 64, offset: 256)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1202, file: !1176, line: 236, baseType: !1195, size: 64, offset: 320)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1202, file: !1176, line: 237, baseType: !1217, size: 4096, offset: 512)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1198, size: 4096, elements: !1218)
!1218 = !{!1219}
!1219 = !DISubrange(count: 8)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1198, file: !1176, line: 161, baseType: !74, size: 32, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1198, file: !1176, line: 162, baseType: !1222, size: 32, offset: 96)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !13, line: 27, baseType: !1223)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !200, line: 96, baseType: !6)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1198, file: !1176, line: 163, baseType: !1225, size: 32, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !280, line: 276, baseType: !1226)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !280, line: 276, size: 32, elements: !1227)
!1227 = !{!1228}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1226, file: !280, line: 276, baseType: !284, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1198, file: !1176, line: 164, baseType: !1195, size: 64, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1198, file: !1176, line: 165, baseType: !1231, size: 128, offset: 256)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1180, line: 14, size: 128, elements: !1232)
!1232 = !{!1233}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1231, file: !1180, line: 15, baseType: !641, size: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1198, file: !1176, line: 166, baseType: !1235, size: 64, offset: 384)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!1184}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1198, file: !1176, line: 167, baseType: !1184, size: 64, offset: 448)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1175, file: !1176, line: 123, baseType: !1240, size: 8, offset: 448)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !38, line: 17, baseType: !1241)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !40, line: 21, baseType: !95)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1175, file: !1176, line: 124, baseType: !1240, size: 8, offset: 456)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1175, file: !1176, line: 125, baseType: !1240, size: 8, offset: 464)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1175, file: !1176, line: 126, baseType: !1240, size: 8, offset: 472)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1159, file: !1101, line: 572, baseType: !1175, size: 512, offset: 1216)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1159, file: !1101, line: 580, baseType: !1247, size: 64, offset: 1728)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1100, file: !1101, line: 721, baseType: !74, size: 32, offset: 3584)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1100, file: !1101, line: 722, baseType: !6, size: 32, offset: 3616)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1100, file: !1101, line: 723, baseType: !1251, size: 64, offset: 3648)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1253)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1254, line: 17, baseType: !1255)
!1254 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1254, line: 17, size: 64, elements: !1256)
!1256 = !{!1257}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1255, file: !1254, line: 17, baseType: !1258, size: 64)
!1258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 64, elements: !1259)
!1259 = !{!1260}
!1260 = !DISubrange(count: 1)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1100, file: !1101, line: 724, baseType: !1253, size: 64, offset: 3712)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1100, file: !1101, line: 749, baseType: !1263, offset: 3776)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1101, line: 290, elements: !140)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1100, file: !1101, line: 751, baseType: !12, size: 128, offset: 3776)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1100, file: !1101, line: 757, baseType: !870, size: 64, offset: 3904)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1100, file: !1101, line: 758, baseType: !870, size: 64, offset: 3968)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1100, file: !1101, line: 761, baseType: !1268, size: 320, offset: 4032)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1052, line: 34, size: 320, elements: !1269)
!1269 = !{!1270, !1271}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1268, file: !1052, line: 35, baseType: !37, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1268, file: !1052, line: 36, baseType: !1272, size: 256, offset: 64)
!1272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !877, size: 256, elements: !53)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1100, file: !1101, line: 766, baseType: !6, size: 32, offset: 4352)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1100, file: !1101, line: 767, baseType: !6, size: 32, offset: 4384)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1100, file: !1101, line: 768, baseType: !6, size: 32, offset: 4416)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1100, file: !1101, line: 770, baseType: !6, size: 32, offset: 4448)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1100, file: !1101, line: 772, baseType: !48, size: 64, offset: 4480)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1100, file: !1101, line: 775, baseType: !74, size: 32, offset: 4544)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1100, file: !1101, line: 778, baseType: !74, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1100, file: !1101, line: 779, baseType: !74, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1100, file: !1101, line: 780, baseType: !74, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1100, file: !1101, line: 803, baseType: !74, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1100, file: !1101, line: 806, baseType: !74, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1100, file: !1101, line: 807, baseType: !74, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1100, file: !1101, line: 809, baseType: !74, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1100, file: !1101, line: 815, baseType: !74, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1100, file: !1101, line: 831, baseType: !48, size: 64, offset: 4672)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1100, file: !1101, line: 833, baseType: !1289, size: 384, offset: 4736)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !1290, line: 25, size: 384, elements: !1291)
!1290 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!1291 = !{!1292, !1297}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1289, file: !1290, line: 26, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!202, !1296}
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1289, file: !1290, line: 27, baseType: !1298, size: 320, offset: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1289, file: !1290, line: 27, size: 320, elements: !1299)
!1299 = !{!1300, !1309, !1341}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1298, file: !1290, line: 36, baseType: !1301, size: 320)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1298, file: !1290, line: 29, size: 320, elements: !1302)
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1308}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1301, file: !1290, line: 30, baseType: !79, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1301, file: !1290, line: 31, baseType: !80, size: 32, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1301, file: !1290, line: 32, baseType: !80, size: 32, offset: 96)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1301, file: !1290, line: 33, baseType: !80, size: 32, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1301, file: !1290, line: 34, baseType: !37, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1301, file: !1290, line: 35, baseType: !79, size: 64, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1298, file: !1290, line: 46, baseType: !1310, size: 192)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1298, file: !1290, line: 38, size: 192, elements: !1311)
!1311 = !{!1312, !1313, !1319, !1340}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1310, file: !1290, line: 39, baseType: !1222, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1310, file: !1290, line: 40, baseType: !1314, size: 32, offset: 32)
!1314 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !1290, line: 16, baseType: !74, size: 32, elements: !1315)
!1315 = !{!1316, !1317, !1318}
!1316 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!1317 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!1318 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!1319 = !DIDerivedType(tag: DW_TAG_member, scope: !1310, file: !1290, line: 41, baseType: !1320, size: 64, offset: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1310, file: !1290, line: 41, size: 64, elements: !1321)
!1321 = !{!1322, !1330}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1320, file: !1290, line: 42, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1325, line: 7, size: 128, elements: !1326)
!1325 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1326 = !{!1327, !1329}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1324, file: !1325, line: 8, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !200, line: 93, baseType: !417)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1324, file: !1325, line: 9, baseType: !417, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1320, file: !1290, line: 43, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1333, line: 7, size: 64, elements: !1334)
!1333 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1334 = !{!1335, !1339}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1332, file: !1333, line: 8, baseType: !1336, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1333, line: 5, baseType: !1337)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !38, line: 20, baseType: !1338)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !40, line: 26, baseType: !6)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1332, file: !1333, line: 9, baseType: !1337, size: 32, offset: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1310, file: !1290, line: 45, baseType: !37, size: 64, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1298, file: !1290, line: 54, baseType: !1342, size: 256)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1298, file: !1290, line: 48, size: 256, elements: !1343)
!1343 = !{!1344, !1347, !1348, !1349, !1350}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1342, file: !1290, line: 49, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1290, line: 14, flags: DIFlagFwdDecl)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1342, file: !1290, line: 50, baseType: !6, size: 32, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1342, file: !1290, line: 51, baseType: !6, size: 32, offset: 96)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1342, file: !1290, line: 52, baseType: !48, size: 64, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1342, file: !1290, line: 53, baseType: !48, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1100, file: !1101, line: 835, baseType: !1352, size: 32, offset: 5120)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !13, line: 22, baseType: !1353)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !200, line: 28, baseType: !6)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1100, file: !1101, line: 836, baseType: !1352, size: 32, offset: 5152)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1100, file: !1101, line: 840, baseType: !48, size: 64, offset: 5184)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1100, file: !1101, line: 849, baseType: !1099, size: 64, offset: 5248)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1100, file: !1101, line: 852, baseType: !1099, size: 64, offset: 5312)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1100, file: !1101, line: 857, baseType: !12, size: 128, offset: 5376)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1100, file: !1101, line: 858, baseType: !12, size: 128, offset: 5504)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1100, file: !1101, line: 859, baseType: !1099, size: 64, offset: 5632)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1100, file: !1101, line: 867, baseType: !12, size: 128, offset: 5696)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1100, file: !1101, line: 868, baseType: !12, size: 128, offset: 5824)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1100, file: !1101, line: 871, baseType: !1364, size: 64, offset: 5952)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1366, line: 59, size: 768, elements: !1367)
!1366 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!1367 = !{!1368, !1369, !1370, !1371, !1373, !1374, !1381, !1382}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1365, file: !1366, line: 61, baseType: !1113, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1365, file: !1366, line: 62, baseType: !74, size: 32, offset: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1365, file: !1366, line: 63, baseType: !126, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1365, file: !1366, line: 65, baseType: !1372, size: 256, offset: 64)
!1372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 256, elements: !53)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1365, file: !1366, line: 66, baseType: !522, size: 64, offset: 320)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1365, file: !1366, line: 68, baseType: !1375, size: 128, offset: 384)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1376, line: 40, baseType: !1377)
!1376 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1376, line: 36, size: 128, elements: !1378)
!1378 = !{!1379, !1380}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1377, file: !1376, line: 37, baseType: !126)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1377, file: !1376, line: 38, baseType: !12, size: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1365, file: !1366, line: 69, baseType: !257, size: 128, align: 64, offset: 512)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1365, file: !1366, line: 70, baseType: !1383, size: 128, offset: 640)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 128, elements: !1259)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1366, line: 54, size: 128, elements: !1385)
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1384, file: !1366, line: 55, baseType: !6, size: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1384, file: !1366, line: 56, baseType: !1388, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1366, line: 56, flags: DIFlagFwdDecl)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1100, file: !1101, line: 872, baseType: !1391, size: 512, offset: 6016)
!1391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 512, elements: !53)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1100, file: !1101, line: 873, baseType: !12, size: 128, offset: 6528)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1100, file: !1101, line: 874, baseType: !12, size: 128, offset: 6656)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1100, file: !1101, line: 876, baseType: !1395, size: 64, offset: 6784)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1397, line: 26, size: 192, elements: !1398)
!1397 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1398 = !{!1399, !1400}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1396, file: !1397, line: 27, baseType: !74, size: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1396, file: !1397, line: 28, baseType: !1401, size: 128, offset: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1402, line: 43, size: 128, elements: !1403)
!1402 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1401, file: !1402, line: 44, baseType: !669)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1401, file: !1402, line: 45, baseType: !12, size: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1100, file: !1101, line: 879, baseType: !593, size: 64, offset: 6848)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1100, file: !1101, line: 882, baseType: !593, size: 64, offset: 6912)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1100, file: !1101, line: 884, baseType: !37, size: 64, offset: 6976)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1100, file: !1101, line: 885, baseType: !37, size: 64, offset: 7040)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1100, file: !1101, line: 890, baseType: !37, size: 64, offset: 7104)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1100, file: !1101, line: 891, baseType: !1412, size: 128, offset: 7168)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1101, line: 242, size: 128, elements: !1413)
!1413 = !{!1414, !1415, !1416}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1412, file: !1101, line: 244, baseType: !37, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1412, file: !1101, line: 245, baseType: !37, size: 64, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1412, file: !1101, line: 246, baseType: !669, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1100, file: !1101, line: 900, baseType: !48, size: 64, offset: 7296)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1100, file: !1101, line: 901, baseType: !48, size: 64, offset: 7360)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1100, file: !1101, line: 904, baseType: !37, size: 64, offset: 7424)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1100, file: !1101, line: 907, baseType: !37, size: 64, offset: 7488)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1100, file: !1101, line: 910, baseType: !48, size: 64, offset: 7552)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1100, file: !1101, line: 911, baseType: !48, size: 64, offset: 7616)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1100, file: !1101, line: 914, baseType: !1424, size: 640, offset: 7680)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1425, line: 123, size: 640, elements: !1426)
!1425 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1426 = !{!1427, !1433, !1434}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1424, file: !1425, line: 124, baseType: !1428, size: 576)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1429, size: 576, elements: !168)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1425, line: 108, size: 192, elements: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1429, file: !1425, line: 109, baseType: !37, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1429, file: !1425, line: 110, baseType: !1231, size: 128, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1424, file: !1425, line: 125, baseType: !74, size: 32, offset: 576)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1424, file: !1425, line: 126, baseType: !74, size: 32, offset: 608)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1100, file: !1101, line: 917, baseType: !1436, size: 192, offset: 8320)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1425, line: 134, size: 192, elements: !1437)
!1437 = !{!1438, !1439}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1436, file: !1425, line: 135, baseType: !257, size: 128, align: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1436, file: !1425, line: 136, baseType: !74, size: 32, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1100, file: !1101, line: 923, baseType: !1441, size: 64, offset: 8512)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1443)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1444, line: 111, size: 1280, elements: !1445)
!1444 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1445 = !{!1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1465, !1466, !1467, !1468, !1469, !1470, !1577, !1578, !1579, !1580, !1606, !1609, !1619}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1443, file: !1444, line: 112, baseType: !636, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1443, file: !1444, line: 120, baseType: !319, size: 32, offset: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1443, file: !1444, line: 121, baseType: !327, size: 32, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1443, file: !1444, line: 122, baseType: !319, size: 32, offset: 96)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1443, file: !1444, line: 123, baseType: !327, size: 32, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1443, file: !1444, line: 124, baseType: !319, size: 32, offset: 160)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1443, file: !1444, line: 125, baseType: !327, size: 32, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1443, file: !1444, line: 126, baseType: !319, size: 32, offset: 224)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1443, file: !1444, line: 127, baseType: !327, size: 32, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1443, file: !1444, line: 128, baseType: !74, size: 32, offset: 288)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1443, file: !1444, line: 129, baseType: !1457, size: 64, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1458, line: 26, baseType: !1459)
!1458 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1458, line: 24, size: 64, elements: !1460)
!1460 = !{!1461}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1459, file: !1458, line: 25, baseType: !1462, size: 64)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !1463)
!1463 = !{!1464}
!1464 = !DISubrange(count: 2)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1443, file: !1444, line: 130, baseType: !1457, size: 64, offset: 384)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1443, file: !1444, line: 131, baseType: !1457, size: 64, offset: 448)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1443, file: !1444, line: 132, baseType: !1457, size: 64, offset: 512)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1443, file: !1444, line: 133, baseType: !1457, size: 64, offset: 576)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1443, file: !1444, line: 135, baseType: !95, size: 8, offset: 640)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1443, file: !1444, line: 137, baseType: !1471, size: 64, offset: 704)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1473, line: 189, size: 1664, elements: !1474)
!1473 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1474 = !{!1475, !1476, !1479, !1484, !1485, !1488, !1489, !1494, !1495, !1496, !1497, !1499, !1500, !1501, !1502, !1503, !1541, !1562}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1472, file: !1473, line: 190, baseType: !1113, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1472, file: !1473, line: 191, baseType: !1477, size: 32, offset: 32)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1473, line: 28, baseType: !1478)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !13, line: 98, baseType: !1337)
!1479 = !DIDerivedType(tag: DW_TAG_member, scope: !1472, file: !1473, line: 192, baseType: !1480, size: 192, offset: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1472, file: !1473, line: 192, size: 192, elements: !1481)
!1481 = !{!1482, !1483}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1480, file: !1473, line: 193, baseType: !12, size: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1480, file: !1473, line: 194, baseType: !649, size: 192, align: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1472, file: !1473, line: 199, baseType: !656, size: 256, offset: 256)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1472, file: !1473, line: 200, baseType: !1486, size: 64, offset: 512)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1473, line: 200, flags: DIFlagFwdDecl)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1472, file: !1473, line: 201, baseType: !73, size: 64, offset: 576)
!1489 = !DIDerivedType(tag: DW_TAG_member, scope: !1472, file: !1473, line: 202, baseType: !1490, size: 64, offset: 640)
!1490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1472, file: !1473, line: 202, size: 64, elements: !1491)
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1490, file: !1473, line: 203, baseType: !423, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1490, file: !1473, line: 204, baseType: !423, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1472, file: !1473, line: 206, baseType: !423, size: 64, offset: 704)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1472, file: !1473, line: 207, baseType: !319, size: 32, offset: 768)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1472, file: !1473, line: 208, baseType: !327, size: 32, offset: 800)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1472, file: !1473, line: 209, baseType: !1498, size: 32, offset: 832)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1473, line: 31, baseType: !443)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1472, file: !1473, line: 210, baseType: !104, size: 16, offset: 864)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1472, file: !1473, line: 211, baseType: !104, size: 16, offset: 880)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1472, file: !1473, line: 215, baseType: !1088, size: 16, offset: 896)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1472, file: !1473, line: 222, baseType: !48, size: 64, offset: 960)
!1503 = !DIDerivedType(tag: DW_TAG_member, scope: !1472, file: !1473, line: 239, baseType: !1504, size: 320, offset: 1024)
!1504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1472, file: !1473, line: 239, size: 320, elements: !1505)
!1505 = !{!1506, !1533}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1504, file: !1473, line: 240, baseType: !1507, size: 320)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1473, line: 108, size: 320, elements: !1508)
!1508 = !{!1509, !1510, !1522, !1525, !1532}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1507, file: !1473, line: 110, baseType: !48, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !1507, file: !1473, line: 111, baseType: !1511, size: 64, offset: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1507, file: !1473, line: 111, size: 64, elements: !1512)
!1512 = !{!1513, !1521}
!1513 = !DIDerivedType(tag: DW_TAG_member, scope: !1511, file: !1473, line: 112, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1511, file: !1473, line: 112, size: 64, elements: !1515)
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1514, file: !1473, line: 114, baseType: !748, size: 16)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1514, file: !1473, line: 115, baseType: !1518, size: 48, offset: 16)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 48, elements: !1519)
!1519 = !{!1520}
!1520 = !DISubrange(count: 6)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1511, file: !1473, line: 121, baseType: !48, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1507, file: !1473, line: 123, baseType: !1523, size: 64, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1473, line: 96, flags: DIFlagFwdDecl)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1507, file: !1473, line: 124, baseType: !1526, size: 64, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1473, line: 102, size: 192, elements: !1528)
!1528 = !{!1529, !1530, !1531}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1527, file: !1473, line: 103, baseType: !257, size: 128, align: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1527, file: !1473, line: 104, baseType: !1113, size: 32, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1527, file: !1473, line: 105, baseType: !374, size: 8, offset: 160)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1507, file: !1473, line: 125, baseType: !44, size: 64, offset: 256)
!1533 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !1473, line: 241, baseType: !1534, size: 320)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1504, file: !1473, line: 241, size: 320, elements: !1535)
!1535 = !{!1536, !1537, !1538, !1539, !1540}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1534, file: !1473, line: 242, baseType: !48, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1534, file: !1473, line: 243, baseType: !48, size: 64, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1534, file: !1473, line: 244, baseType: !1523, size: 64, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1534, file: !1473, line: 245, baseType: !1526, size: 64, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1534, file: !1473, line: 246, baseType: !167, size: 64, offset: 256)
!1541 = !DIDerivedType(tag: DW_TAG_member, scope: !1472, file: !1473, line: 254, baseType: !1542, size: 256, offset: 1344)
!1542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1472, file: !1473, line: 254, size: 256, elements: !1543)
!1543 = !{!1544, !1550}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1542, file: !1473, line: 255, baseType: !1545, size: 256)
!1545 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1473, line: 128, size: 256, elements: !1546)
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1545, file: !1473, line: 129, baseType: !73, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1545, file: !1473, line: 130, baseType: !1549, size: 256)
!1549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 256, elements: !53)
!1550 = !DIDerivedType(tag: DW_TAG_member, scope: !1542, file: !1473, line: 256, baseType: !1551, size: 256)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1542, file: !1473, line: 256, size: 256, elements: !1552)
!1552 = !{!1553, !1554}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1551, file: !1473, line: 258, baseType: !12, size: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1551, file: !1473, line: 259, baseType: !1555, size: 128, offset: 128)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1556, line: 22, size: 128, elements: !1557)
!1556 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1557 = !{!1558, !1561}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1555, file: !1556, line: 23, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1556, line: 23, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1555, file: !1556, line: 24, baseType: !48, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1472, file: !1473, line: 274, baseType: !1563, size: 64, offset: 1600)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1473, line: 170, size: 192, elements: !1565)
!1565 = !{!1566, !1575, !1576}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1564, file: !1473, line: 171, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1473, line: 165, baseType: !1568)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!6, !1471, !1571, !1573, !1471}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1524)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1545)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1564, file: !1473, line: 172, baseType: !1471, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1564, file: !1473, line: 173, baseType: !1523, size: 64, offset: 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1443, file: !1444, line: 138, baseType: !1471, size: 64, offset: 768)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1443, file: !1444, line: 139, baseType: !1471, size: 64, offset: 832)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1443, file: !1444, line: 140, baseType: !1471, size: 64, offset: 896)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1443, file: !1444, line: 145, baseType: !1581, size: 64, offset: 960)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1583, line: 13, size: 896, elements: !1584)
!1583 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1584 = !{!1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1582, file: !1583, line: 14, baseType: !1113, size: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1582, file: !1583, line: 15, baseType: !636, size: 32, offset: 32)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1582, file: !1583, line: 16, baseType: !636, size: 32, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1582, file: !1583, line: 21, baseType: !660, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1582, file: !1583, line: 27, baseType: !48, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1582, file: !1583, line: 28, baseType: !48, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1582, file: !1583, line: 29, baseType: !660, size: 64, offset: 320)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1582, file: !1583, line: 32, baseType: !526, size: 128, offset: 384)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1582, file: !1583, line: 33, baseType: !319, size: 32, offset: 512)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1582, file: !1583, line: 37, baseType: !660, size: 64, offset: 576)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1582, file: !1583, line: 44, baseType: !1596, size: 256, offset: 640)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1597, line: 15, size: 256, elements: !1598)
!1597 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1604, !1605}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1596, file: !1597, line: 16, baseType: !669)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1596, file: !1597, line: 18, baseType: !6, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1596, file: !1597, line: 19, baseType: !6, size: 32, offset: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1596, file: !1597, line: 20, baseType: !6, size: 32, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1596, file: !1597, line: 21, baseType: !6, size: 32, offset: 96)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1596, file: !1597, line: 22, baseType: !48, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1596, file: !1597, line: 23, baseType: !48, size: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1443, file: !1444, line: 146, baseType: !1607, size: 64, offset: 1024)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !611, line: 516, flags: DIFlagFwdDecl)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1443, file: !1444, line: 147, baseType: !1610, size: 64, offset: 1088)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1444, line: 25, size: 64, elements: !1612)
!1612 = !{!1613, !1614, !1615}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1611, file: !1444, line: 26, baseType: !636, size: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1611, file: !1444, line: 27, baseType: !6, size: 32, offset: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1611, file: !1444, line: 28, baseType: !1616, offset: 64)
!1616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, elements: !1617)
!1617 = !{!1618}
!1618 = !DISubrange(count: 0)
!1619 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !1444, line: 149, baseType: !1620, size: 128, offset: 1152)
!1620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1443, file: !1444, line: 149, size: 128, elements: !1621)
!1621 = !{!1622, !1623}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1620, file: !1444, line: 150, baseType: !6, size: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1620, file: !1444, line: 151, baseType: !257, size: 128, align: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1100, file: !1101, line: 926, baseType: !1441, size: 64, offset: 8576)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1100, file: !1101, line: 929, baseType: !1441, size: 64, offset: 8640)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1100, file: !1101, line: 933, baseType: !1471, size: 64, offset: 8704)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1100, file: !1101, line: 943, baseType: !1628, size: 128, offset: 8768)
!1628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 128, elements: !1629)
!1629 = !{!1630}
!1630 = !DISubrange(count: 16)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1100, file: !1101, line: 945, baseType: !1632, size: 64, offset: 8896)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1101, line: 49, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1100, file: !1101, line: 956, baseType: !1635, size: 64, offset: 8960)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1101, line: 45, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1100, file: !1101, line: 959, baseType: !1638, size: 64, offset: 9024)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1101, line: 959, flags: DIFlagFwdDecl)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1100, file: !1101, line: 962, baseType: !1641, size: 64, offset: 9088)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1101, line: 66, flags: DIFlagFwdDecl)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1100, file: !1101, line: 966, baseType: !1644, size: 64, offset: 9152)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1101, line: 50, flags: DIFlagFwdDecl)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1100, file: !1101, line: 969, baseType: !1647, size: 64, offset: 9216)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1649, line: 82, size: 7296, elements: !1650)
!1649 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1650 = !{!1651, !1652, !1653, !1654, !1655, !1656, !1657, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1686, !1695, !1696, !1698, !1699, !1700, !1703, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1733, !1734, !1741, !1742, !1743, !1744, !1745, !1746}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1648, file: !1649, line: 83, baseType: !1113, size: 32)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1648, file: !1649, line: 84, baseType: !636, size: 32, offset: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1648, file: !1649, line: 85, baseType: !6, size: 32, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1648, file: !1649, line: 86, baseType: !12, size: 128, offset: 128)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1648, file: !1649, line: 88, baseType: !1375, size: 128, offset: 256)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1648, file: !1649, line: 91, baseType: !1099, size: 64, offset: 384)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1648, file: !1649, line: 94, baseType: !1658, size: 192, offset: 448)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1659, line: 30, size: 192, elements: !1660)
!1659 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1660 = !{!1661, !1662}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1658, file: !1659, line: 31, baseType: !12, size: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1658, file: !1659, line: 32, baseType: !1663, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1664, line: 25, baseType: !1665)
!1664 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1664, line: 23, size: 64, elements: !1666)
!1666 = !{!1667}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1665, file: !1664, line: 24, baseType: !1258, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1648, file: !1649, line: 97, baseType: !522, size: 64, offset: 640)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1648, file: !1649, line: 100, baseType: !6, size: 32, offset: 704)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1648, file: !1649, line: 106, baseType: !6, size: 32, offset: 736)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1648, file: !1649, line: 107, baseType: !1099, size: 64, offset: 768)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1648, file: !1649, line: 110, baseType: !6, size: 32, offset: 832)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1648, file: !1649, line: 111, baseType: !74, size: 32, offset: 864)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1648, file: !1649, line: 122, baseType: !74, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1648, file: !1649, line: 123, baseType: !74, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1648, file: !1649, line: 128, baseType: !6, size: 32, offset: 928)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1648, file: !1649, line: 129, baseType: !12, size: 128, offset: 960)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1648, file: !1649, line: 132, baseType: !1175, size: 512, offset: 1088)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1648, file: !1649, line: 133, baseType: !1184, size: 64, offset: 1600)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1648, file: !1649, line: 140, baseType: !1681, size: 256, offset: 1664)
!1681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1682, size: 256, elements: !1463)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1649, line: 38, size: 128, elements: !1683)
!1683 = !{!1684, !1685}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1682, file: !1649, line: 39, baseType: !37, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1682, file: !1649, line: 40, baseType: !37, size: 64, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1648, file: !1649, line: 146, baseType: !1687, size: 192, offset: 1920)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1649, line: 66, size: 192, elements: !1688)
!1688 = !{!1689}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1687, file: !1649, line: 67, baseType: !1690, size: 192)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1649, line: 47, size: 192, elements: !1691)
!1691 = !{!1692, !1693, !1694}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1690, file: !1649, line: 48, baseType: !662, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1690, file: !1649, line: 49, baseType: !662, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1690, file: !1649, line: 50, baseType: !662, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1648, file: !1649, line: 150, baseType: !1424, size: 640, offset: 2112)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1648, file: !1649, line: 153, baseType: !1697, size: 256, offset: 2752)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, size: 256, elements: !53)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1648, file: !1649, line: 159, baseType: !1364, size: 64, offset: 3008)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1648, file: !1649, line: 162, baseType: !6, size: 32, offset: 3072)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1648, file: !1649, line: 164, baseType: !1701, size: 64, offset: 3136)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1649, line: 164, flags: DIFlagFwdDecl)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1648, file: !1649, line: 175, baseType: !1704, size: 32, offset: 3200)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !280, line: 805, baseType: !1705)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !280, line: 798, size: 32, elements: !1706)
!1706 = !{!1707, !1708}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1705, file: !280, line: 803, baseType: !279, size: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1705, file: !280, line: 804, baseType: !126, offset: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1648, file: !1649, line: 176, baseType: !37, size: 64, offset: 3264)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1648, file: !1649, line: 176, baseType: !37, size: 64, offset: 3328)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1648, file: !1649, line: 176, baseType: !37, size: 64, offset: 3392)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1648, file: !1649, line: 176, baseType: !37, size: 64, offset: 3456)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1648, file: !1649, line: 177, baseType: !37, size: 64, offset: 3520)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1648, file: !1649, line: 178, baseType: !37, size: 64, offset: 3584)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1648, file: !1649, line: 179, baseType: !1412, size: 128, offset: 3648)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1648, file: !1649, line: 180, baseType: !48, size: 64, offset: 3776)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1648, file: !1649, line: 180, baseType: !48, size: 64, offset: 3840)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1648, file: !1649, line: 180, baseType: !48, size: 64, offset: 3904)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1648, file: !1649, line: 180, baseType: !48, size: 64, offset: 3968)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1648, file: !1649, line: 181, baseType: !48, size: 64, offset: 4032)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1648, file: !1649, line: 181, baseType: !48, size: 64, offset: 4096)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1648, file: !1649, line: 181, baseType: !48, size: 64, offset: 4160)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1648, file: !1649, line: 181, baseType: !48, size: 64, offset: 4224)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1648, file: !1649, line: 182, baseType: !48, size: 64, offset: 4288)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1648, file: !1649, line: 182, baseType: !48, size: 64, offset: 4352)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1648, file: !1649, line: 182, baseType: !48, size: 64, offset: 4416)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1648, file: !1649, line: 182, baseType: !48, size: 64, offset: 4480)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1648, file: !1649, line: 183, baseType: !48, size: 64, offset: 4544)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1648, file: !1649, line: 183, baseType: !48, size: 64, offset: 4608)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1648, file: !1649, line: 184, baseType: !1731, offset: 4672)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1732, line: 12, elements: !140)
!1732 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1648, file: !1649, line: 192, baseType: !41, size: 64, offset: 4672)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1648, file: !1649, line: 203, baseType: !1735, size: 2048, offset: 4736)
!1735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1736, size: 2048, elements: !1629)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1737, line: 43, size: 128, elements: !1738)
!1737 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1736, file: !1737, line: 44, baseType: !215, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1736, file: !1737, line: 45, baseType: !215, size: 64, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1648, file: !1649, line: 220, baseType: !374, size: 8, offset: 6784)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1648, file: !1649, line: 221, baseType: !1088, size: 16, offset: 6800)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1648, file: !1649, line: 222, baseType: !1088, size: 16, offset: 6816)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1648, file: !1649, line: 224, baseType: !870, size: 64, offset: 6848)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1648, file: !1649, line: 227, baseType: !1072, size: 192, offset: 6912)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1648, file: !1649, line: 233, baseType: !1072, size: 192, offset: 7104)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1100, file: !1101, line: 970, baseType: !1748, size: 64, offset: 9280)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1649, line: 20, size: 16576, elements: !1750)
!1750 = !{!1751, !1752, !1753, !1754}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1749, file: !1649, line: 21, baseType: !126)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1749, file: !1649, line: 22, baseType: !1113, size: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1749, file: !1649, line: 23, baseType: !1375, size: 128, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1749, file: !1649, line: 24, baseType: !1755, size: 16384, offset: 192)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1756, size: 16384, elements: !172)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1659, line: 49, size: 256, elements: !1757)
!1757 = !{!1758}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1756, file: !1659, line: 50, baseType: !1759, size: 256)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1659, line: 35, size: 256, elements: !1760)
!1760 = !{!1761, !1768, !1769, !1775}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1759, file: !1659, line: 37, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1763, line: 19, baseType: !1764)
!1763 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1763, line: 18, baseType: !1766)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{null, !6}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1759, file: !1659, line: 38, baseType: !48, size: 64, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1759, file: !1659, line: 44, baseType: !1770, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1763, line: 22, baseType: !1771)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1763, line: 21, baseType: !1773)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{null}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1759, file: !1659, line: 46, baseType: !1663, size: 64, offset: 192)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1100, file: !1101, line: 971, baseType: !1663, size: 64, offset: 9344)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1100, file: !1101, line: 972, baseType: !1663, size: 64, offset: 9408)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1100, file: !1101, line: 974, baseType: !1663, size: 64, offset: 9472)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1100, file: !1101, line: 975, baseType: !1658, size: 192, offset: 9536)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1100, file: !1101, line: 976, baseType: !48, size: 64, offset: 9728)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1100, file: !1101, line: 977, baseType: !213, size: 64, offset: 9792)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1100, file: !1101, line: 978, baseType: !74, size: 32, offset: 9856)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1100, file: !1101, line: 980, baseType: !260, size: 64, offset: 9920)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1100, file: !1101, line: 989, baseType: !1785, size: 128, offset: 9984)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1786, line: 35, size: 128, elements: !1787)
!1786 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1787 = !{!1788, !1789, !1790}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1785, file: !1786, line: 36, baseType: !6, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1785, file: !1786, line: 37, baseType: !636, size: 32, offset: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1785, file: !1786, line: 38, baseType: !1791, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1786, line: 23, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1100, file: !1101, line: 992, baseType: !37, size: 64, offset: 10112)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1100, file: !1101, line: 993, baseType: !37, size: 64, offset: 10176)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1100, file: !1101, line: 996, baseType: !126, offset: 10240)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1100, file: !1101, line: 999, baseType: !669, offset: 10240)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1100, file: !1101, line: 1001, baseType: !1798, size: 64, offset: 10240)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1101, line: 636, size: 64, elements: !1799)
!1799 = !{!1800}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1798, file: !1101, line: 637, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1100, file: !1101, line: 1005, baseType: !641, size: 128, offset: 10304)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1100, file: !1101, line: 1007, baseType: !1099, size: 64, offset: 10432)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1100, file: !1101, line: 1009, baseType: !1805, size: 64, offset: 10496)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1101, line: 1009, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1100, file: !1101, line: 1043, baseType: !73, size: 64, offset: 10560)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1100, file: !1101, line: 1046, baseType: !1809, size: 64, offset: 10624)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1101, line: 41, flags: DIFlagFwdDecl)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1100, file: !1101, line: 1050, baseType: !1812, size: 64, offset: 10688)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1101, line: 42, flags: DIFlagFwdDecl)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1100, file: !1101, line: 1054, baseType: !1815, size: 64, offset: 10752)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1101, line: 55, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1100, file: !1101, line: 1056, baseType: !1818, size: 64, offset: 10816)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1101, line: 40, flags: DIFlagFwdDecl)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1100, file: !1101, line: 1058, baseType: !1821, size: 64, offset: 10880)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1823, line: 99, size: 704, elements: !1824)
!1823 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1824 = !{!1825, !1826, !1827, !1828, !1829, !1830, !1831, !1850, !1851}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1822, file: !1823, line: 100, baseType: !660, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1822, file: !1823, line: 101, baseType: !636, size: 32, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1822, file: !1823, line: 102, baseType: !636, size: 32, offset: 96)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1822, file: !1823, line: 105, baseType: !126, offset: 128)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1822, file: !1823, line: 107, baseType: !104, size: 16, offset: 128)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1822, file: !1823, line: 109, baseType: !627, size: 128, offset: 192)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1822, file: !1823, line: 110, baseType: !1832, size: 64, offset: 320)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1823, line: 73, size: 448, elements: !1834)
!1834 = !{!1835, !1838, !1839, !1844, !1849}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1833, file: !1823, line: 74, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1823, line: 74, flags: DIFlagFwdDecl)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1833, file: !1823, line: 75, baseType: !1821, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, scope: !1833, file: !1823, line: 83, baseType: !1840, size: 128, offset: 128)
!1840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1833, file: !1823, line: 83, size: 128, elements: !1841)
!1841 = !{!1842, !1843}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1840, file: !1823, line: 84, baseType: !12, size: 128)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1840, file: !1823, line: 85, baseType: !831, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, scope: !1833, file: !1823, line: 87, baseType: !1845, size: 128, offset: 256)
!1845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1833, file: !1823, line: 87, size: 128, elements: !1846)
!1846 = !{!1847, !1848}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1845, file: !1823, line: 88, baseType: !526, size: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1845, file: !1823, line: 89, baseType: !257, size: 128, align: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1833, file: !1823, line: 92, baseType: !74, size: 32, offset: 384)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1822, file: !1823, line: 111, baseType: !522, size: 64, offset: 384)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1822, file: !1823, line: 113, baseType: !1852, size: 256, offset: 448)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1853, line: 102, size: 256, elements: !1854)
!1853 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1854 = !{!1855, !1856, !1857}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1852, file: !1853, line: 103, baseType: !660, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1852, file: !1853, line: 104, baseType: !12, size: 128, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1852, file: !1853, line: 105, baseType: !1858, size: 64, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1853, line: 21, baseType: !1859)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{null, !1862}
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1100, file: !1101, line: 1061, baseType: !1864, size: 64, offset: 10944)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1101, line: 43, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1100, file: !1101, line: 1064, baseType: !48, size: 64, offset: 11008)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1100, file: !1101, line: 1065, baseType: !1868, size: 64, offset: 11072)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1659, line: 14, baseType: !1870)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1659, line: 12, size: 384, elements: !1871)
!1871 = !{!1872}
!1872 = !DIDerivedType(tag: DW_TAG_member, scope: !1870, file: !1659, line: 13, baseType: !1873, size: 384)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1870, file: !1659, line: 13, size: 384, elements: !1874)
!1874 = !{!1875, !1876, !1877, !1878}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1873, file: !1659, line: 13, baseType: !6, size: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1873, file: !1659, line: 13, baseType: !6, size: 32, offset: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1873, file: !1659, line: 13, baseType: !6, size: 32, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1873, file: !1659, line: 13, baseType: !1879, size: 256, offset: 128)
!1879 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1880, line: 32, size: 256, elements: !1881)
!1880 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1881 = !{!1882, !1887, !1900, !1906, !1915, !1935, !1940}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1879, file: !1880, line: 37, baseType: !1883, size: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1879, file: !1880, line: 34, size: 64, elements: !1884)
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1883, file: !1880, line: 35, baseType: !1353, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1883, file: !1880, line: 36, baseType: !325, size: 32, offset: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1879, file: !1880, line: 45, baseType: !1888, size: 192)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1879, file: !1880, line: 40, size: 192, elements: !1889)
!1889 = !{!1890, !1892, !1893, !1899}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1888, file: !1880, line: 41, baseType: !1891, size: 32)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !200, line: 95, baseType: !6)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1888, file: !1880, line: 42, baseType: !6, size: 32, offset: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1888, file: !1880, line: 43, baseType: !1894, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1880, line: 11, baseType: !1895)
!1895 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1880, line: 8, size: 64, elements: !1896)
!1896 = !{!1897, !1898}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1895, file: !1880, line: 9, baseType: !6, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1895, file: !1880, line: 10, baseType: !73, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1888, file: !1880, line: 44, baseType: !6, size: 32, offset: 128)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1879, file: !1880, line: 52, baseType: !1901, size: 128)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1879, file: !1880, line: 48, size: 128, elements: !1902)
!1902 = !{!1903, !1904, !1905}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1901, file: !1880, line: 49, baseType: !1353, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1901, file: !1880, line: 50, baseType: !325, size: 32, offset: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1901, file: !1880, line: 51, baseType: !1894, size: 64, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1879, file: !1880, line: 61, baseType: !1907, size: 256)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1879, file: !1880, line: 55, size: 256, elements: !1908)
!1908 = !{!1909, !1910, !1911, !1912, !1914}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1907, file: !1880, line: 56, baseType: !1353, size: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1907, file: !1880, line: 57, baseType: !325, size: 32, offset: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1907, file: !1880, line: 58, baseType: !6, size: 32, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1907, file: !1880, line: 59, baseType: !1913, size: 64, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !200, line: 94, baseType: !201)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1907, file: !1880, line: 60, baseType: !1913, size: 64, offset: 192)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1879, file: !1880, line: 95, baseType: !1916, size: 256)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1879, file: !1880, line: 64, size: 256, elements: !1917)
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1916, file: !1880, line: 65, baseType: !73, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, scope: !1916, file: !1880, line: 77, baseType: !1920, size: 192, offset: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1916, file: !1880, line: 77, size: 192, elements: !1921)
!1921 = !{!1922, !1923, !1930}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1920, file: !1880, line: 82, baseType: !1088, size: 16)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1920, file: !1880, line: 88, baseType: !1924, size: 192)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1920, file: !1880, line: 84, size: 192, elements: !1925)
!1925 = !{!1926, !1928, !1929}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1924, file: !1880, line: 85, baseType: !1927, size: 64)
!1927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !1218)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1924, file: !1880, line: 86, baseType: !73, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1924, file: !1880, line: 87, baseType: !73, size: 64, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1920, file: !1880, line: 93, baseType: !1931, size: 96)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1920, file: !1880, line: 90, size: 96, elements: !1932)
!1932 = !{!1933, !1934}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1931, file: !1880, line: 91, baseType: !1927, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1931, file: !1880, line: 92, baseType: !81, size: 32, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1879, file: !1880, line: 101, baseType: !1936, size: 128)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1879, file: !1880, line: 98, size: 128, elements: !1937)
!1937 = !{!1938, !1939}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1936, file: !1880, line: 99, baseType: !202, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1936, file: !1880, line: 100, baseType: !6, size: 32, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1879, file: !1880, line: 108, baseType: !1941, size: 128)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1879, file: !1880, line: 104, size: 128, elements: !1942)
!1942 = !{!1943, !1944, !1945}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1941, file: !1880, line: 105, baseType: !73, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1941, file: !1880, line: 106, baseType: !6, size: 32, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1941, file: !1880, line: 107, baseType: !74, size: 32, offset: 96)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1100, file: !1101, line: 1067, baseType: !1731, offset: 11136)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1100, file: !1101, line: 1099, baseType: !1948, size: 64, offset: 11136)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1101, line: 56, flags: DIFlagFwdDecl)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1100, file: !1101, line: 1103, baseType: !12, size: 128, offset: 11200)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1100, file: !1101, line: 1104, baseType: !1952, size: 64, offset: 11328)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1101, line: 46, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1100, file: !1101, line: 1105, baseType: !1072, size: 192, offset: 11392)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1100, file: !1101, line: 1106, baseType: !74, size: 32, offset: 11584)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1100, file: !1101, line: 1109, baseType: !1957, size: 128, offset: 11648)
!1957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1958, size: 128, elements: !1463)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1101, line: 51, flags: DIFlagFwdDecl)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1100, file: !1101, line: 1110, baseType: !1072, size: 192, offset: 11776)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1100, file: !1101, line: 1111, baseType: !12, size: 128, offset: 11968)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1100, file: !1101, line: 1173, baseType: !1963, size: 64, offset: 12096)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1965, line: 62, size: 256, align: 256, elements: !1966)
!1965 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1966 = !{!1967, !1968, !1969, !1974}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1964, file: !1965, line: 75, baseType: !81, size: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1964, file: !1965, line: 90, baseType: !81, size: 32, offset: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1964, file: !1965, line: 124, baseType: !1970, size: 64, offset: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1964, file: !1965, line: 109, size: 64, elements: !1971)
!1971 = !{!1972, !1973}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1970, file: !1965, line: 110, baseType: !39, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1970, file: !1965, line: 112, baseType: !39, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1964, file: !1965, line: 144, baseType: !81, size: 32, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1100, file: !1101, line: 1174, baseType: !80, size: 32, offset: 12160)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1100, file: !1101, line: 1179, baseType: !48, size: 64, offset: 12224)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1100, file: !1101, line: 1182, baseType: !1978, size: 128, offset: 12288)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1052, line: 76, size: 128, elements: !1979)
!1979 = !{!1980, !1985, !1986}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1978, file: !1052, line: 85, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1982, line: 7, size: 64, elements: !1983)
!1982 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1983 = !{!1984}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1981, file: !1982, line: 12, baseType: !1255, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1978, file: !1052, line: 88, baseType: !374, size: 8, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1978, file: !1052, line: 95, baseType: !374, size: 8, offset: 72)
!1987 = !DIDerivedType(tag: DW_TAG_member, scope: !1100, file: !1101, line: 1184, baseType: !1988, size: 128, offset: 12416)
!1988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1100, file: !1101, line: 1184, size: 128, elements: !1989)
!1989 = !{!1990, !1991}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1988, file: !1101, line: 1185, baseType: !1113, size: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1988, file: !1101, line: 1186, baseType: !257, size: 128, align: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1100, file: !1101, line: 1190, baseType: !1993, size: 64, offset: 12544)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1101, line: 53, flags: DIFlagFwdDecl)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1100, file: !1101, line: 1192, baseType: !1996, size: 128, offset: 12608)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1052, line: 64, size: 128, elements: !1997)
!1997 = !{!1998, !1999, !2000}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1996, file: !1052, line: 65, baseType: !609, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1996, file: !1052, line: 67, baseType: !81, size: 32, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1996, file: !1052, line: 68, baseType: !81, size: 32, offset: 96)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1100, file: !1101, line: 1206, baseType: !6, size: 32, offset: 12736)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1100, file: !1101, line: 1207, baseType: !6, size: 32, offset: 12768)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1100, file: !1101, line: 1209, baseType: !48, size: 64, offset: 12800)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1100, file: !1101, line: 1219, baseType: !37, size: 64, offset: 12864)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1100, file: !1101, line: 1220, baseType: !37, size: 64, offset: 12928)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1100, file: !1101, line: 1317, baseType: !6, size: 32, offset: 12992)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1100, file: !1101, line: 1319, baseType: !1099, size: 64, offset: 13056)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1100, file: !1101, line: 1322, baseType: !2009, size: 64, offset: 13120)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2011, line: 56, size: 512, elements: !2012)
!2011 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2012 = !{!2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2010, file: !2011, line: 57, baseType: !2009, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2010, file: !2011, line: 58, baseType: !73, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2010, file: !2011, line: 59, baseType: !48, size: 64, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2010, file: !2011, line: 60, baseType: !48, size: 64, offset: 192)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2010, file: !2011, line: 61, baseType: !709, size: 64, offset: 256)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2010, file: !2011, line: 62, baseType: !74, size: 32, offset: 320)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2010, file: !2011, line: 63, baseType: !36, size: 64, offset: 384)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2010, file: !2011, line: 64, baseType: !2021, size: 64, offset: 448)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1100, file: !1101, line: 1326, baseType: !1113, size: 32, offset: 13184)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1100, file: !1101, line: 1342, baseType: !73, size: 64, offset: 13248)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1100, file: !1101, line: 1343, baseType: !39, size: 64, offset: 13312)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1100, file: !1101, line: 1344, baseType: !37, size: 64, offset: 13376)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1100, file: !1101, line: 1345, baseType: !39, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1100, file: !1101, line: 1346, baseType: !39, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1100, file: !1101, line: 1347, baseType: !39, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1100, file: !1101, line: 1348, baseType: !257, size: 128, align: 64, offset: 13504)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1100, file: !1101, line: 1358, baseType: !2032, size: 34816, offset: 13824)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2033, line: 485, size: 34816, elements: !2034)
!2033 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2034 = !{!2035, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2064, !2065, !2066, !2067, !2068, !2069, !2072, !2073, !2074}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2032, file: !2033, line: 487, baseType: !2036, size: 192)
!2036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2037, size: 192, elements: !168)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2038, line: 16, size: 64, elements: !2039)
!2038 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2039 = !{!2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2037, file: !2038, line: 17, baseType: !748, size: 16)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2037, file: !2038, line: 18, baseType: !748, size: 16, offset: 16)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2037, file: !2038, line: 19, baseType: !748, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2037, file: !2038, line: 19, baseType: !748, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2037, file: !2038, line: 19, baseType: !748, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2037, file: !2038, line: 19, baseType: !748, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2037, file: !2038, line: 19, baseType: !748, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2037, file: !2038, line: 20, baseType: !748, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2037, file: !2038, line: 20, baseType: !748, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2037, file: !2038, line: 20, baseType: !748, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2037, file: !2038, line: 20, baseType: !748, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2037, file: !2038, line: 20, baseType: !748, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2037, file: !2038, line: 20, baseType: !748, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2032, file: !2033, line: 491, baseType: !48, size: 64, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2032, file: !2033, line: 495, baseType: !104, size: 16, offset: 256)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2032, file: !2033, line: 496, baseType: !104, size: 16, offset: 272)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2032, file: !2033, line: 497, baseType: !104, size: 16, offset: 288)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2032, file: !2033, line: 498, baseType: !104, size: 16, offset: 304)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2032, file: !2033, line: 502, baseType: !48, size: 64, offset: 320)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2032, file: !2033, line: 503, baseType: !48, size: 64, offset: 384)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2032, file: !2033, line: 514, baseType: !2061, size: 256, offset: 448)
!2061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2062, size: 256, elements: !53)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2033, line: 483, flags: DIFlagFwdDecl)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2032, file: !2033, line: 516, baseType: !48, size: 64, offset: 704)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2032, file: !2033, line: 518, baseType: !48, size: 64, offset: 768)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2032, file: !2033, line: 520, baseType: !48, size: 64, offset: 832)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2032, file: !2033, line: 521, baseType: !48, size: 64, offset: 896)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2032, file: !2033, line: 522, baseType: !48, size: 64, offset: 960)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2032, file: !2033, line: 528, baseType: !2070, size: 64, offset: 1024)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2033, line: 10, flags: DIFlagFwdDecl)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2032, file: !2033, line: 535, baseType: !48, size: 64, offset: 1088)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2032, file: !2033, line: 537, baseType: !74, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2032, file: !2033, line: 540, baseType: !2075, size: 33280, offset: 1536)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2076, line: 317, size: 33280, elements: !2077)
!2076 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2077 = !{!2078, !2079, !2080}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2075, file: !2076, line: 330, baseType: !74, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2075, file: !2076, line: 337, baseType: !48, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2075, file: !2076, line: 348, baseType: !2081, size: 32768, offset: 512)
!2081 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2076, line: 304, size: 32768, elements: !2082)
!2082 = !{!2083, !2098, !2137, !2187, !2200}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2081, file: !2076, line: 305, baseType: !2084, size: 896)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2076, line: 12, size: 896, elements: !2085)
!2085 = !{!2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2097}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2084, file: !2076, line: 13, baseType: !80, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2084, file: !2076, line: 14, baseType: !80, size: 32, offset: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2084, file: !2076, line: 15, baseType: !80, size: 32, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2084, file: !2076, line: 16, baseType: !80, size: 32, offset: 96)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2084, file: !2076, line: 17, baseType: !80, size: 32, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2084, file: !2076, line: 18, baseType: !80, size: 32, offset: 160)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2084, file: !2076, line: 19, baseType: !80, size: 32, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2084, file: !2076, line: 22, baseType: !2094, size: 640, offset: 224)
!2094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 640, elements: !2095)
!2095 = !{!2096}
!2096 = !DISubrange(count: 20)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2084, file: !2076, line: 25, baseType: !80, size: 32, offset: 864)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2081, file: !2076, line: 306, baseType: !2099, size: 4096, align: 128)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2076, line: 34, size: 4096, align: 128, elements: !2100)
!2100 = !{!2101, !2102, !2103, !2104, !2105, !2120, !2121, !2122, !2126, !2128, !2132}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2099, file: !2076, line: 35, baseType: !748, size: 16)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2099, file: !2076, line: 36, baseType: !748, size: 16, offset: 16)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2099, file: !2076, line: 37, baseType: !748, size: 16, offset: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2099, file: !2076, line: 38, baseType: !748, size: 16, offset: 48)
!2105 = !DIDerivedType(tag: DW_TAG_member, scope: !2099, file: !2076, line: 39, baseType: !2106, size: 128, offset: 64)
!2106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2099, file: !2076, line: 39, size: 128, elements: !2107)
!2107 = !{!2108, !2113}
!2108 = !DIDerivedType(tag: DW_TAG_member, scope: !2106, file: !2076, line: 40, baseType: !2109, size: 128)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2106, file: !2076, line: 40, size: 128, elements: !2110)
!2110 = !{!2111, !2112}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2109, file: !2076, line: 41, baseType: !37, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2109, file: !2076, line: 42, baseType: !37, size: 64, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, scope: !2106, file: !2076, line: 44, baseType: !2114, size: 128)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2106, file: !2076, line: 44, size: 128, elements: !2115)
!2115 = !{!2116, !2117, !2118, !2119}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2114, file: !2076, line: 45, baseType: !80, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2114, file: !2076, line: 46, baseType: !80, size: 32, offset: 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2114, file: !2076, line: 47, baseType: !80, size: 32, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2114, file: !2076, line: 48, baseType: !80, size: 32, offset: 96)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2099, file: !2076, line: 51, baseType: !80, size: 32, offset: 192)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2099, file: !2076, line: 52, baseType: !80, size: 32, offset: 224)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2099, file: !2076, line: 55, baseType: !2123, size: 1024, offset: 256)
!2123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 1024, elements: !2124)
!2124 = !{!2125}
!2125 = !DISubrange(count: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2099, file: !2076, line: 58, baseType: !2127, size: 2048, offset: 1280)
!2127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 2048, elements: !172)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2099, file: !2076, line: 60, baseType: !2129, size: 384, offset: 3328)
!2129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 384, elements: !2130)
!2130 = !{!2131}
!2131 = !DISubrange(count: 12)
!2132 = !DIDerivedType(tag: DW_TAG_member, scope: !2099, file: !2076, line: 62, baseType: !2133, size: 384, offset: 3712)
!2133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2099, file: !2076, line: 62, size: 384, elements: !2134)
!2134 = !{!2135, !2136}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2133, file: !2076, line: 63, baseType: !2129, size: 384)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2133, file: !2076, line: 64, baseType: !2129, size: 384)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2081, file: !2076, line: 307, baseType: !2138, size: 1088)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2076, line: 79, size: 1088, elements: !2139)
!2139 = !{!2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2186}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2138, file: !2076, line: 80, baseType: !80, size: 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2138, file: !2076, line: 81, baseType: !80, size: 32, offset: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2138, file: !2076, line: 82, baseType: !80, size: 32, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2138, file: !2076, line: 83, baseType: !80, size: 32, offset: 96)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2138, file: !2076, line: 84, baseType: !80, size: 32, offset: 128)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2138, file: !2076, line: 85, baseType: !80, size: 32, offset: 160)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2138, file: !2076, line: 86, baseType: !80, size: 32, offset: 192)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2138, file: !2076, line: 88, baseType: !2094, size: 640, offset: 224)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2138, file: !2076, line: 89, baseType: !1240, size: 8, offset: 864)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2138, file: !2076, line: 90, baseType: !1240, size: 8, offset: 872)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2138, file: !2076, line: 91, baseType: !1240, size: 8, offset: 880)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2138, file: !2076, line: 92, baseType: !1240, size: 8, offset: 888)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2138, file: !2076, line: 93, baseType: !1240, size: 8, offset: 896)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2138, file: !2076, line: 94, baseType: !1240, size: 8, offset: 904)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2138, file: !2076, line: 95, baseType: !2155, size: 64, offset: 960)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2157, line: 11, size: 128, elements: !2158)
!2157 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2158 = !{!2159, !2160}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2156, file: !2157, line: 12, baseType: !202, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2156, file: !2157, line: 13, baseType: !2161, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2163, line: 56, size: 1344, elements: !2164)
!2163 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2164 = !{!2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2162, file: !2163, line: 61, baseType: !48, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2162, file: !2163, line: 62, baseType: !48, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2162, file: !2163, line: 63, baseType: !48, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2162, file: !2163, line: 64, baseType: !48, size: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2162, file: !2163, line: 65, baseType: !48, size: 64, offset: 256)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2162, file: !2163, line: 66, baseType: !48, size: 64, offset: 320)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2162, file: !2163, line: 68, baseType: !48, size: 64, offset: 384)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2162, file: !2163, line: 69, baseType: !48, size: 64, offset: 448)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2162, file: !2163, line: 70, baseType: !48, size: 64, offset: 512)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2162, file: !2163, line: 71, baseType: !48, size: 64, offset: 576)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2162, file: !2163, line: 72, baseType: !48, size: 64, offset: 640)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2162, file: !2163, line: 73, baseType: !48, size: 64, offset: 704)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2162, file: !2163, line: 74, baseType: !48, size: 64, offset: 768)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2162, file: !2163, line: 75, baseType: !48, size: 64, offset: 832)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2162, file: !2163, line: 76, baseType: !48, size: 64, offset: 896)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2162, file: !2163, line: 81, baseType: !48, size: 64, offset: 960)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2162, file: !2163, line: 83, baseType: !48, size: 64, offset: 1024)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2162, file: !2163, line: 84, baseType: !48, size: 64, offset: 1088)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2162, file: !2163, line: 85, baseType: !48, size: 64, offset: 1152)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2162, file: !2163, line: 86, baseType: !48, size: 64, offset: 1216)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2162, file: !2163, line: 87, baseType: !48, size: 64, offset: 1280)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2138, file: !2076, line: 96, baseType: !80, size: 32, offset: 1024)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2081, file: !2076, line: 308, baseType: !2188, size: 4608, align: 512)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2076, line: 289, size: 4608, align: 512, elements: !2189)
!2189 = !{!2190, !2191, !2198}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2188, file: !2076, line: 290, baseType: !2099, size: 4096, align: 128)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2188, file: !2076, line: 291, baseType: !2192, size: 512, offset: 4096)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2076, line: 268, size: 512, elements: !2193)
!2193 = !{!2194, !2195, !2196}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2192, file: !2076, line: 269, baseType: !37, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2192, file: !2076, line: 270, baseType: !37, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2192, file: !2076, line: 271, baseType: !2197, size: 384, offset: 128)
!2197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 384, elements: !1519)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2188, file: !2076, line: 292, baseType: !2199, offset: 4608)
!2199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1240, elements: !1617)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2081, file: !2076, line: 309, baseType: !2201, size: 32768)
!2201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1240, size: 32768, elements: !2202)
!2202 = !{!2203}
!2203 = !DISubrange(count: 4096)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1096, file: !611, line: 378, baseType: !2205, size: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1092, file: !611, line: 384, baseType: !1396, size: 192, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !874, file: !611, line: 500, baseType: !126, offset: 6656)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !874, file: !611, line: 501, baseType: !2209, size: 64, offset: 6656)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !611, line: 387, flags: DIFlagFwdDecl)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !874, file: !611, line: 516, baseType: !1607, size: 64, offset: 6720)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !874, file: !611, line: 519, baseType: !243, size: 64, offset: 6784)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !874, file: !611, line: 521, baseType: !2214, size: 64, offset: 6848)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !611, line: 521, flags: DIFlagFwdDecl)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !874, file: !611, line: 545, baseType: !636, size: 32, offset: 6912)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !874, file: !611, line: 548, baseType: !374, size: 8, offset: 6944)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !874, file: !611, line: 550, baseType: !2219, offset: 6952)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2220, line: 142, elements: !140)
!2220 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !874, file: !611, line: 554, baseType: !1852, size: 256, offset: 6976)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !874, file: !611, line: 557, baseType: !80, size: 32, offset: 7232)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !871, file: !611, line: 565, baseType: !2224, offset: 7296)
!2224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, elements: !2225)
!2225 = !{!2226}
!2226 = !DISubrange(count: -1)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !867, file: !611, line: 151, baseType: !636, size: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !860, file: !611, line: 156, baseType: !126, offset: 256)
!2229 = !DIDerivedType(tag: DW_TAG_member, scope: !615, file: !611, line: 159, baseType: !2230, size: 128)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !615, file: !611, line: 159, size: 128, elements: !2231)
!2231 = !{!2232, !2303}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2230, file: !611, line: 161, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !2235, line: 110, size: 1152, elements: !2236)
!2235 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!2236 = !{!2237, !2247, !2268, !2269, !2270, !2277, !2278, !2290, !2291, !2292}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2234, file: !2235, line: 111, baseType: !2238, size: 384)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !2235, line: 19, size: 384, elements: !2239)
!2239 = !{!2240, !2242, !2243, !2244, !2245, !2246}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2238, file: !2235, line: 20, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2238, file: !2235, line: 21, baseType: !2241, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2238, file: !2235, line: 22, baseType: !2241, size: 64, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2238, file: !2235, line: 23, baseType: !48, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2238, file: !2235, line: 24, baseType: !48, size: 64, offset: 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2238, file: !2235, line: 25, baseType: !48, size: 64, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2234, file: !2235, line: 112, baseType: !2248, size: 64, offset: 384)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2250, line: 105, size: 128, elements: !2251)
!2250 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2251 = !{!2252, !2253}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2249, file: !2250, line: 110, baseType: !48, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2249, file: !2250, line: 118, baseType: !2254, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2250, line: 95, size: 448, elements: !2256)
!2256 = !{!2257, !2258, !2263, !2264, !2265, !2266, !2267}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2255, file: !2250, line: 96, baseType: !660, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2255, file: !2250, line: 97, baseType: !2259, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2250, line: 60, baseType: !2261)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{null, !2248}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2255, file: !2250, line: 98, baseType: !2259, size: 64, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2255, file: !2250, line: 99, baseType: !374, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2255, file: !2250, line: 100, baseType: !374, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2255, file: !2250, line: 101, baseType: !257, size: 128, align: 64, offset: 256)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2255, file: !2250, line: 102, baseType: !2248, size: 64, offset: 384)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2234, file: !2235, line: 113, baseType: !2249, size: 128, offset: 448)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2234, file: !2235, line: 114, baseType: !1396, size: 192, offset: 576)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2234, file: !2235, line: 115, baseType: !2271, size: 32, offset: 768)
!2271 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !2235, line: 59, baseType: !74, size: 32, elements: !2272)
!2272 = !{!2273, !2274, !2275, !2276}
!2273 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!2274 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!2275 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!2276 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2234, file: !2235, line: 116, baseType: !74, size: 32, offset: 800)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2234, file: !2235, line: 117, baseType: !2279, size: 64, offset: 832)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2281)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !2235, line: 67, size: 256, elements: !2282)
!2282 = !{!2283, !2284, !2288, !2289}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2281, file: !2235, line: 73, baseType: !729, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2281, file: !2235, line: 78, baseType: !2285, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{null, !2233}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2281, file: !2235, line: 83, baseType: !2285, size: 64, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2281, file: !2235, line: 89, baseType: !923, size: 64, offset: 192)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2234, file: !2235, line: 118, baseType: !73, size: 64, offset: 896)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2234, file: !2235, line: 119, baseType: !6, size: 32, offset: 960)
!2292 = !DIDerivedType(tag: DW_TAG_member, scope: !2234, file: !2235, line: 120, baseType: !2293, size: 128, offset: 1024)
!2293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2234, file: !2235, line: 120, size: 128, elements: !2294)
!2294 = !{!2295, !2301}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2293, file: !2235, line: 121, baseType: !2296, size: 128)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2297, line: 6, size: 128, elements: !2298)
!2297 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2298 = !{!2299, !2300}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2296, file: !2297, line: 7, baseType: !37, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2296, file: !2297, line: 8, baseType: !37, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2293, file: !2235, line: 122, baseType: !2302)
!2302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2296, elements: !1617)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2230, file: !611, line: 162, baseType: !73, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !615, file: !611, line: 176, baseType: !257, size: 128, align: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !611, line: 179, baseType: !2306, size: 32, offset: 384)
!2306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !610, file: !611, line: 179, size: 32, elements: !2307)
!2307 = !{!2308, !2309, !2310, !2311}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2306, file: !611, line: 184, baseType: !636, size: 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2306, file: !611, line: 192, baseType: !74, size: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2306, file: !611, line: 194, baseType: !74, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2306, file: !611, line: 195, baseType: !6, size: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !610, file: !611, line: 199, baseType: !636, size: 32, offset: 416)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !544, file: !245, line: 1964, baseType: !2314, size: 64, offset: 1344)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!202, !483, !2317}
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2319, line: 12, size: 256, elements: !2320)
!2319 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2320 = !{!2321, !2322, !2323, !2324, !2325}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2318, file: !2319, line: 13, baseType: !632, size: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2318, file: !2319, line: 16, baseType: !6, size: 32, offset: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2318, file: !2319, line: 23, baseType: !48, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2318, file: !2319, line: 30, baseType: !48, size: 64, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2318, file: !2319, line: 33, baseType: !2326, size: 64, offset: 192)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !611, line: 27, flags: DIFlagFwdDecl)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !544, file: !245, line: 1966, baseType: !2314, size: 64, offset: 1408)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !484, file: !245, line: 1424, baseType: !2330, size: 64, offset: 448)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2332)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !2333, line: 322, size: 704, elements: !2334)
!2333 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!2334 = !{!2335, !2386, !2390, !2394, !2395, !2396, !2397, !2398, !2403, !2408, !2412}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2332, file: !2333, line: 323, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!6, !2339}
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !2333, line: 294, size: 1600, elements: !2341)
!2341 = !{!2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2371, !2372, !2373}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2340, file: !2333, line: 295, baseType: !526, size: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2340, file: !2333, line: 296, baseType: !12, size: 128, offset: 128)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2340, file: !2333, line: 297, baseType: !12, size: 128, offset: 256)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2340, file: !2333, line: 298, baseType: !12, size: 128, offset: 384)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2340, file: !2333, line: 299, baseType: !1072, size: 192, offset: 512)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2340, file: !2333, line: 300, baseType: !126, offset: 704)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2340, file: !2333, line: 301, baseType: !636, size: 32, offset: 704)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2340, file: !2333, line: 302, baseType: !483, size: 64, offset: 768)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2340, file: !2333, line: 303, baseType: !2351, size: 64, offset: 832)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !2333, line: 68, size: 64, elements: !2352)
!2352 = !{!2353, !2365}
!2353 = !DIDerivedType(tag: DW_TAG_member, scope: !2351, file: !2333, line: 69, baseType: !2354, size: 32)
!2354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2351, file: !2333, line: 69, size: 32, elements: !2355)
!2355 = !{!2356, !2357, !2358}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2354, file: !2333, line: 70, baseType: !319, size: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2354, file: !2333, line: 71, baseType: !327, size: 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2354, file: !2333, line: 72, baseType: !2359, size: 32)
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2360, line: 24, baseType: !2361)
!2360 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2360, line: 22, size: 32, elements: !2362)
!2362 = !{!2363}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2361, file: !2360, line: 23, baseType: !2364, size: 32)
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2360, line: 20, baseType: !325)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2351, file: !2333, line: 74, baseType: !2366, size: 32, offset: 32)
!2366 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !2333, line: 54, baseType: !74, size: 32, elements: !2367)
!2367 = !{!2368, !2369, !2370}
!2368 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!2369 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!2370 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2340, file: !2333, line: 304, baseType: !415, size: 64, offset: 896)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2340, file: !2333, line: 305, baseType: !48, size: 64, offset: 960)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2340, file: !2333, line: 306, baseType: !2374, size: 576, offset: 1024)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !2333, line: 205, size: 576, elements: !2375)
!2375 = !{!2376, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2374, file: !2333, line: 206, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !2333, line: 66, baseType: !417)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2374, file: !2333, line: 207, baseType: !2377, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2374, file: !2333, line: 208, baseType: !2377, size: 64, offset: 128)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2374, file: !2333, line: 209, baseType: !2377, size: 64, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2374, file: !2333, line: 210, baseType: !2377, size: 64, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2374, file: !2333, line: 211, baseType: !2377, size: 64, offset: 320)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2374, file: !2333, line: 212, baseType: !2377, size: 64, offset: 384)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2374, file: !2333, line: 213, baseType: !423, size: 64, offset: 448)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2374, file: !2333, line: 214, baseType: !423, size: 64, offset: 512)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2332, file: !2333, line: 324, baseType: !2387, size: 64, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!2339, !483, !6}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2332, file: !2333, line: 325, baseType: !2391, size: 64, offset: 128)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{null, !2339}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2332, file: !2333, line: 326, baseType: !2336, size: 64, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2332, file: !2333, line: 327, baseType: !2336, size: 64, offset: 256)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2332, file: !2333, line: 328, baseType: !2336, size: 64, offset: 320)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2332, file: !2333, line: 329, baseType: !573, size: 64, offset: 384)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2332, file: !2333, line: 332, baseType: !2399, size: 64, offset: 448)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!2402, !313}
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2332, file: !2333, line: 333, baseType: !2404, size: 64, offset: 512)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!6, !313, !2407}
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2332, file: !2333, line: 335, baseType: !2409, size: 64, offset: 576)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!6, !313, !2402}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2332, file: !2333, line: 337, baseType: !2413, size: 64, offset: 640)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!6, !483, !2416}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !484, file: !245, line: 1425, baseType: !2418, size: 64, offset: 512)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2420)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !2333, line: 428, size: 704, elements: !2421)
!2421 = !{!2422, !2426, !2427, !2431, !2432, !2433, !2448, !2471, !2475, !2476, !2499}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2420, file: !2333, line: 429, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!6, !483, !6, !6, !433}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2420, file: !2333, line: 430, baseType: !573, size: 64, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2420, file: !2333, line: 431, baseType: !2428, size: 64, offset: 128)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!6, !483, !74}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2420, file: !2333, line: 432, baseType: !2428, size: 64, offset: 192)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2420, file: !2333, line: 433, baseType: !573, size: 64, offset: 256)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2420, file: !2333, line: 434, baseType: !2434, size: 64, offset: 320)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!6, !483, !6, !2437}
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !2333, line: 415, size: 256, elements: !2439)
!2439 = !{!2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2438, file: !2333, line: 416, baseType: !6, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2438, file: !2333, line: 417, baseType: !74, size: 32, offset: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2438, file: !2333, line: 418, baseType: !74, size: 32, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2438, file: !2333, line: 420, baseType: !74, size: 32, offset: 96)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2438, file: !2333, line: 421, baseType: !74, size: 32, offset: 128)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2438, file: !2333, line: 422, baseType: !74, size: 32, offset: 160)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2438, file: !2333, line: 423, baseType: !74, size: 32, offset: 192)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2438, file: !2333, line: 424, baseType: !74, size: 32, offset: 224)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2420, file: !2333, line: 435, baseType: !2449, size: 64, offset: 384)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!6, !483, !2351, !2452}
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !2333, line: 343, size: 960, elements: !2454)
!2454 = !{!2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2453, file: !2333, line: 344, baseType: !6, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2453, file: !2333, line: 345, baseType: !37, size: 64, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2453, file: !2333, line: 346, baseType: !37, size: 64, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2453, file: !2333, line: 347, baseType: !37, size: 64, offset: 192)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2453, file: !2333, line: 348, baseType: !37, size: 64, offset: 256)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2453, file: !2333, line: 349, baseType: !37, size: 64, offset: 320)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2453, file: !2333, line: 350, baseType: !37, size: 64, offset: 384)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2453, file: !2333, line: 351, baseType: !666, size: 64, offset: 448)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2453, file: !2333, line: 353, baseType: !666, size: 64, offset: 512)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2453, file: !2333, line: 354, baseType: !6, size: 32, offset: 576)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2453, file: !2333, line: 355, baseType: !6, size: 32, offset: 608)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2453, file: !2333, line: 356, baseType: !37, size: 64, offset: 640)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2453, file: !2333, line: 357, baseType: !37, size: 64, offset: 704)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2453, file: !2333, line: 358, baseType: !37, size: 64, offset: 768)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2453, file: !2333, line: 359, baseType: !666, size: 64, offset: 832)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2453, file: !2333, line: 360, baseType: !6, size: 32, offset: 896)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2420, file: !2333, line: 436, baseType: !2472, size: 64, offset: 448)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!6, !483, !2416, !2452}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2420, file: !2333, line: 438, baseType: !2449, size: 64, offset: 512)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2420, file: !2333, line: 439, baseType: !2477, size: 64, offset: 576)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!6, !483, !2480}
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !2333, line: 409, size: 1408, elements: !2482)
!2482 = !{!2483, !2484}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2481, file: !2333, line: 410, baseType: !74, size: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2481, file: !2333, line: 411, baseType: !2485, size: 1344, offset: 64)
!2485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2486, size: 1344, elements: !168)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !2333, line: 395, size: 448, elements: !2487)
!2487 = !{!2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2498}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2486, file: !2333, line: 396, baseType: !74, size: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2486, file: !2333, line: 397, baseType: !74, size: 32, offset: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2486, file: !2333, line: 399, baseType: !74, size: 32, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2486, file: !2333, line: 400, baseType: !74, size: 32, offset: 96)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2486, file: !2333, line: 401, baseType: !74, size: 32, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2486, file: !2333, line: 402, baseType: !74, size: 32, offset: 160)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2486, file: !2333, line: 403, baseType: !74, size: 32, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2486, file: !2333, line: 404, baseType: !41, size: 64, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2486, file: !2333, line: 405, baseType: !2497, size: 64, offset: 320)
!2497 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !13, line: 126, baseType: !37)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2486, file: !2333, line: 406, baseType: !2497, size: 64, offset: 384)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2420, file: !2333, line: 440, baseType: !2428, size: 64, offset: 640)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !484, file: !245, line: 1426, baseType: !2501, size: 64, offset: 576)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2503)
!2503 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !245, line: 49, flags: DIFlagFwdDecl)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !484, file: !245, line: 1427, baseType: !48, size: 64, offset: 640)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !484, file: !245, line: 1428, baseType: !48, size: 64, offset: 704)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !484, file: !245, line: 1429, baseType: !48, size: 64, offset: 768)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !484, file: !245, line: 1430, baseType: !274, size: 64, offset: 832)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !484, file: !245, line: 1431, baseType: !656, size: 256, offset: 896)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !484, file: !245, line: 1432, baseType: !6, size: 32, offset: 1152)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !484, file: !245, line: 1433, baseType: !636, size: 32, offset: 1184)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !484, file: !245, line: 1437, baseType: !2512, size: 64, offset: 1216)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2515)
!2515 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !245, line: 1437, flags: DIFlagFwdDecl)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !484, file: !245, line: 1449, baseType: !2517, size: 64, offset: 1280)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !290, line: 34, size: 64, elements: !2518)
!2518 = !{!2519}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2517, file: !290, line: 35, baseType: !293, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !484, file: !245, line: 1450, baseType: !12, size: 128, offset: 1344)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !484, file: !245, line: 1451, baseType: !2522, size: 64, offset: 1472)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !245, line: 699, flags: DIFlagFwdDecl)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !484, file: !245, line: 1452, baseType: !1818, size: 64, offset: 1536)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !484, file: !245, line: 1453, baseType: !2526, size: 64, offset: 1600)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !245, line: 1453, flags: DIFlagFwdDecl)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !484, file: !245, line: 1454, baseType: !526, size: 128, offset: 1664)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !484, file: !245, line: 1455, baseType: !74, size: 32, offset: 1792)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !484, file: !245, line: 1456, baseType: !2531, size: 2432, offset: 1856)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !2333, line: 518, size: 2432, elements: !2532)
!2532 = !{!2533, !2534, !2535, !2537, !2569}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2531, file: !2333, line: 519, baseType: !74, size: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2531, file: !2333, line: 520, baseType: !656, size: 256, offset: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2531, file: !2333, line: 521, baseType: !2536, size: 192, offset: 320)
!2536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 192, elements: !168)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2531, file: !2333, line: 522, baseType: !2538, size: 1728, offset: 512)
!2538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2539, size: 1728, elements: !168)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !2333, line: 222, size: 576, elements: !2540)
!2540 = !{!2541, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2539, file: !2333, line: 223, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !2333, line: 443, size: 256, elements: !2544)
!2544 = !{!2545, !2546, !2559, !2560}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2543, file: !2333, line: 444, baseType: !6, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2543, file: !2333, line: 445, baseType: !2547, size: 64, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2549)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !2333, line: 310, size: 512, elements: !2550)
!2550 = !{!2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2549, file: !2333, line: 311, baseType: !573, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2549, file: !2333, line: 312, baseType: !573, size: 64, offset: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2549, file: !2333, line: 313, baseType: !573, size: 64, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2549, file: !2333, line: 314, baseType: !573, size: 64, offset: 192)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2549, file: !2333, line: 315, baseType: !2336, size: 64, offset: 256)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2549, file: !2333, line: 316, baseType: !2336, size: 64, offset: 320)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2549, file: !2333, line: 317, baseType: !2336, size: 64, offset: 384)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2549, file: !2333, line: 318, baseType: !2413, size: 64, offset: 448)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2543, file: !2333, line: 446, baseType: !517, size: 64, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2543, file: !2333, line: 447, baseType: !2542, size: 64, offset: 192)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2539, file: !2333, line: 224, baseType: !6, size: 32, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2539, file: !2333, line: 226, baseType: !12, size: 128, offset: 128)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2539, file: !2333, line: 227, baseType: !48, size: 64, offset: 256)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2539, file: !2333, line: 228, baseType: !74, size: 32, offset: 320)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2539, file: !2333, line: 229, baseType: !74, size: 32, offset: 352)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2539, file: !2333, line: 230, baseType: !2377, size: 64, offset: 384)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2539, file: !2333, line: 231, baseType: !2377, size: 64, offset: 448)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2539, file: !2333, line: 232, baseType: !73, size: 64, offset: 512)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2531, file: !2333, line: 523, baseType: !2570, size: 192, offset: 2240)
!2570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2547, size: 192, elements: !168)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !484, file: !245, line: 1458, baseType: !2572, size: 2112, offset: 4288)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !245, line: 1410, size: 2112, elements: !2573)
!2573 = !{!2574, !2575, !2576}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2572, file: !245, line: 1411, baseType: !6, size: 32)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2572, file: !245, line: 1412, baseType: !1375, size: 128, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2572, file: !245, line: 1413, baseType: !2577, size: 1920, offset: 192)
!2577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2578, size: 1920, elements: !168)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2579, line: 12, size: 640, elements: !2580)
!2579 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2580 = !{!2581, !2589, !2591, !2596, !2597}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2578, file: !2579, line: 13, baseType: !2582, size: 320)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2583, line: 17, size: 320, elements: !2584)
!2583 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2584 = !{!2585, !2586, !2587, !2588}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2582, file: !2583, line: 18, baseType: !6, size: 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2582, file: !2583, line: 19, baseType: !6, size: 32, offset: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2582, file: !2583, line: 20, baseType: !1375, size: 128, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2582, file: !2583, line: 22, baseType: !257, size: 128, align: 64, offset: 192)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2578, file: !2579, line: 14, baseType: !2590, size: 64, offset: 320)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2578, file: !2579, line: 15, baseType: !2592, size: 64, offset: 384)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2593, line: 16, size: 64, elements: !2594)
!2593 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2594 = !{!2595}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2592, file: !2593, line: 17, baseType: !1099, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2578, file: !2579, line: 16, baseType: !1375, size: 128, offset: 448)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2578, file: !2579, line: 17, baseType: !636, size: 32, offset: 576)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !484, file: !245, line: 1465, baseType: !73, size: 64, offset: 6400)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !484, file: !245, line: 1468, baseType: !80, size: 32, offset: 6464)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !484, file: !245, line: 1470, baseType: !423, size: 64, offset: 6528)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !484, file: !245, line: 1471, baseType: !423, size: 64, offset: 6592)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !484, file: !245, line: 1473, baseType: !81, size: 32, offset: 6656)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !484, file: !245, line: 1474, baseType: !2604, size: 64, offset: 6720)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !245, line: 603, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !484, file: !245, line: 1477, baseType: !2607, size: 256, offset: 6784)
!2607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 256, elements: !2124)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !484, file: !245, line: 1478, baseType: !2609, size: 128, offset: 7040)
!2609 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2610, line: 18, baseType: !2611)
!2610 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2610, line: 16, size: 128, elements: !2612)
!2612 = !{!2613}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2611, file: !2610, line: 17, baseType: !2614, size: 128)
!2614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1241, size: 128, elements: !1629)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !484, file: !245, line: 1480, baseType: !74, size: 32, offset: 7168)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !484, file: !245, line: 1481, baseType: !2617, size: 32, offset: 7200)
!2617 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !13, line: 150, baseType: !74)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !484, file: !245, line: 1487, baseType: !1072, size: 192, offset: 7232)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !484, file: !245, line: 1493, baseType: !44, size: 64, offset: 7424)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !484, file: !245, line: 1495, baseType: !2621, size: 64, offset: 7488)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2623)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !272, line: 135, size: 1024, align: 512, elements: !2624)
!2624 = !{!2625, !2629, !2630, !2637, !2643, !2647, !2651, !2655, !2656, !2660, !2664, !2669, !2673}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2623, file: !272, line: 136, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!6, !274, !74}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2623, file: !272, line: 137, baseType: !2626, size: 64, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2623, file: !272, line: 138, baseType: !2631, size: 64, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!6, !2634, !2636}
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2623, file: !272, line: 139, baseType: !2638, size: 64, offset: 192)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!6, !2634, !74, !44, !2641}
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2623, file: !272, line: 141, baseType: !2644, size: 64, offset: 256)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!6, !2634}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2623, file: !272, line: 142, baseType: !2648, size: 64, offset: 320)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!6, !274}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2623, file: !272, line: 143, baseType: !2652, size: 64, offset: 384)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{null, !274}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2623, file: !272, line: 144, baseType: !2652, size: 64, offset: 448)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2623, file: !272, line: 145, baseType: !2657, size: 64, offset: 512)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{null, !274, !313}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2623, file: !272, line: 146, baseType: !2661, size: 64, offset: 576)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!167, !274, !167, !6}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2623, file: !272, line: 147, baseType: !2665, size: 64, offset: 640)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!270, !2668}
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2623, file: !272, line: 148, baseType: !2670, size: 64, offset: 704)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!6, !433, !374}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2623, file: !272, line: 149, baseType: !2674, size: 64, offset: 768)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!274, !274, !2677}
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !484, file: !245, line: 1500, baseType: !6, size: 32, offset: 7552)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !484, file: !245, line: 1502, baseType: !2681, size: 448, offset: 7616)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2319, line: 60, size: 448, elements: !2682)
!2682 = !{!2683, !2688, !2689, !2690, !2691, !2692, !2693}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2681, file: !2319, line: 61, baseType: !2684, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!48, !2687, !2317}
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2681, file: !2319, line: 63, baseType: !2684, size: 64, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2681, file: !2319, line: 66, baseType: !202, size: 64, offset: 128)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2681, file: !2319, line: 67, baseType: !6, size: 32, offset: 192)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2681, file: !2319, line: 68, baseType: !74, size: 32, offset: 224)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2681, file: !2319, line: 71, baseType: !12, size: 128, offset: 256)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2681, file: !2319, line: 77, baseType: !2694, size: 64, offset: 384)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !484, file: !245, line: 1505, baseType: !660, size: 64, offset: 8064)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !484, file: !245, line: 1508, baseType: !660, size: 64, offset: 8128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !484, file: !245, line: 1511, baseType: !6, size: 32, offset: 8192)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !484, file: !245, line: 1514, baseType: !805, size: 32, offset: 8224)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !484, file: !245, line: 1517, baseType: !2700, size: 64, offset: 8256)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1853, line: 18, flags: DIFlagFwdDecl)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !484, file: !245, line: 1518, baseType: !522, size: 64, offset: 8320)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !484, file: !245, line: 1525, baseType: !1607, size: 64, offset: 8384)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !484, file: !245, line: 1532, baseType: !2705, size: 64, offset: 8448)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2706, line: 52, size: 64, elements: !2707)
!2706 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2707 = !{!2708}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2705, file: !2706, line: 53, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2706, line: 40, size: 256, elements: !2711)
!2711 = !{!2712, !2713, !2718}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2710, file: !2706, line: 42, baseType: !126)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2710, file: !2706, line: 44, baseType: !2714, size: 192)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2706, line: 28, size: 192, elements: !2715)
!2715 = !{!2716, !2717}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2714, file: !2706, line: 29, baseType: !12, size: 128)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2714, file: !2706, line: 31, baseType: !202, size: 64, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2710, file: !2706, line: 49, baseType: !202, size: 64, offset: 192)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !484, file: !245, line: 1533, baseType: !2705, size: 64, offset: 8512)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !484, file: !245, line: 1534, baseType: !257, size: 128, align: 64, offset: 8576)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !484, file: !245, line: 1535, baseType: !1852, size: 256, offset: 8704)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !484, file: !245, line: 1537, baseType: !1072, size: 192, offset: 8960)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !484, file: !245, line: 1542, baseType: !6, size: 32, offset: 9152)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !484, file: !245, line: 1545, baseType: !126, offset: 9184)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !484, file: !245, line: 1546, baseType: !12, size: 128, offset: 9216)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !484, file: !245, line: 1548, baseType: !126, offset: 9344)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !484, file: !245, line: 1549, baseType: !12, size: 128, offset: 9344)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !314, file: !245, line: 624, baseType: !622, size: 64, offset: 256)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !314, file: !245, line: 631, baseType: !48, size: 64, offset: 320)
!2730 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !245, line: 639, baseType: !2731, size: 32, offset: 384)
!2731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !245, line: 639, size: 32, elements: !2732)
!2732 = !{!2733, !2735}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2731, file: !245, line: 640, baseType: !2734, size: 32)
!2734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2731, file: !245, line: 641, baseType: !74, size: 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !314, file: !245, line: 643, baseType: !397, size: 32, offset: 416)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !314, file: !245, line: 644, baseType: !415, size: 64, offset: 448)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !314, file: !245, line: 645, baseType: !419, size: 128, offset: 512)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !314, file: !245, line: 646, baseType: !419, size: 128, offset: 640)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !314, file: !245, line: 647, baseType: !419, size: 128, offset: 768)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !314, file: !245, line: 648, baseType: !126, offset: 896)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !314, file: !245, line: 649, baseType: !104, size: 16, offset: 896)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !314, file: !245, line: 650, baseType: !1240, size: 8, offset: 912)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !314, file: !245, line: 651, baseType: !1240, size: 8, offset: 920)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !314, file: !245, line: 652, baseType: !2497, size: 64, offset: 960)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !314, file: !245, line: 659, baseType: !48, size: 64, offset: 1024)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !314, file: !245, line: 660, baseType: !656, size: 256, offset: 1088)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !314, file: !245, line: 662, baseType: !48, size: 64, offset: 1344)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !314, file: !245, line: 663, baseType: !48, size: 64, offset: 1408)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !314, file: !245, line: 665, baseType: !526, size: 128, offset: 1472)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !314, file: !245, line: 666, baseType: !12, size: 128, offset: 1600)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !314, file: !245, line: 675, baseType: !12, size: 128, offset: 1728)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !314, file: !245, line: 676, baseType: !12, size: 128, offset: 1856)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !314, file: !245, line: 677, baseType: !12, size: 128, offset: 1984)
!2755 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !245, line: 678, baseType: !2756, size: 128, offset: 2112)
!2756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !245, line: 678, size: 128, elements: !2757)
!2757 = !{!2758, !2759}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2756, file: !245, line: 679, baseType: !522, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2756, file: !245, line: 680, baseType: !257, size: 128, align: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !314, file: !245, line: 682, baseType: !662, size: 64, offset: 2240)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !314, file: !245, line: 683, baseType: !662, size: 64, offset: 2304)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !314, file: !245, line: 684, baseType: !636, size: 32, offset: 2368)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !314, file: !245, line: 685, baseType: !636, size: 32, offset: 2400)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !314, file: !245, line: 686, baseType: !636, size: 32, offset: 2432)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !314, file: !245, line: 688, baseType: !636, size: 32, offset: 2464)
!2766 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !245, line: 690, baseType: !2767, size: 64, offset: 2496)
!2767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !245, line: 690, size: 64, elements: !2768)
!2768 = !{!2769, !2992}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2767, file: !245, line: 691, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2772)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !245, line: 1822, size: 2048, elements: !2773)
!2773 = !{!2774, !2775, !2779, !2784, !2788, !2789, !2790, !2794, !2807, !2808, !2816, !2820, !2821, !2825, !2826, !2830, !2835, !2836, !2840, !2844, !2952, !2956, !2957, !2961, !2962, !2966, !2970, !2975, !2979, !2983, !2987, !2991}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2772, file: !245, line: 1823, baseType: !517, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2772, file: !245, line: 1824, baseType: !2776, size: 64, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!415, !243, !415, !6}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2772, file: !245, line: 1825, baseType: !2780, size: 64, offset: 128)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!198, !243, !167, !213, !2783}
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2772, file: !245, line: 1826, baseType: !2785, size: 64, offset: 192)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!198, !243, !44, !213, !2783}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2772, file: !245, line: 1827, baseType: !733, size: 64, offset: 256)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2772, file: !245, line: 1828, baseType: !733, size: 64, offset: 320)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2772, file: !245, line: 1829, baseType: !2791, size: 64, offset: 384)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!6, !736, !374}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2772, file: !245, line: 1830, baseType: !2795, size: 64, offset: 448)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!6, !243, !2798}
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !245, line: 1776, size: 128, elements: !2800)
!2800 = !{!2801, !2806}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2799, file: !245, line: 1777, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !245, line: 1773, baseType: !2803)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!6, !2798, !44, !6, !415, !37, !74}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2799, file: !245, line: 1778, baseType: !415, size: 64, offset: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2772, file: !245, line: 1831, baseType: !2795, size: 64, offset: 512)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2772, file: !245, line: 1832, baseType: !2809, size: 64, offset: 576)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!2812, !243, !2814}
!2812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2813, line: 52, baseType: !74)
!2813 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !503, line: 27, flags: DIFlagFwdDecl)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2772, file: !245, line: 1833, baseType: !2817, size: 64, offset: 640)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!202, !243, !74, !48}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2772, file: !245, line: 1834, baseType: !2817, size: 64, offset: 704)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2772, file: !245, line: 1835, baseType: !2822, size: 64, offset: 768)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!6, !243, !877}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2772, file: !245, line: 1836, baseType: !48, size: 64, offset: 832)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2772, file: !245, line: 1837, baseType: !2827, size: 64, offset: 896)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!6, !313, !243}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2772, file: !245, line: 1838, baseType: !2831, size: 64, offset: 960)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!6, !243, !2834}
!2834 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !245, line: 1007, baseType: !73)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2772, file: !245, line: 1839, baseType: !2827, size: 64, offset: 1024)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2772, file: !245, line: 1840, baseType: !2837, size: 64, offset: 1088)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!6, !243, !415, !415, !6}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2772, file: !245, line: 1841, baseType: !2841, size: 64, offset: 1152)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!6, !6, !243, !6}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2772, file: !245, line: 1842, baseType: !2845, size: 64, offset: 1216)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!6, !243, !6, !2848}
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !245, line: 1062, size: 1664, elements: !2850)
!2850 = !{!2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2882, !2883, !2884, !2897, !2928}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2849, file: !245, line: 1063, baseType: !2848, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2849, file: !245, line: 1064, baseType: !12, size: 128, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2849, file: !245, line: 1065, baseType: !526, size: 128, offset: 192)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2849, file: !245, line: 1066, baseType: !12, size: 128, offset: 320)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2849, file: !245, line: 1069, baseType: !12, size: 128, offset: 448)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2849, file: !245, line: 1072, baseType: !2834, size: 64, offset: 576)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2849, file: !245, line: 1073, baseType: !74, size: 32, offset: 640)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2849, file: !245, line: 1074, baseType: !95, size: 8, offset: 672)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2849, file: !245, line: 1075, baseType: !74, size: 32, offset: 704)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2849, file: !245, line: 1076, baseType: !6, size: 32, offset: 736)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2849, file: !245, line: 1077, baseType: !1375, size: 128, offset: 768)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2849, file: !245, line: 1078, baseType: !243, size: 64, offset: 896)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2849, file: !245, line: 1079, baseType: !415, size: 64, offset: 960)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2849, file: !245, line: 1080, baseType: !415, size: 64, offset: 1024)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2849, file: !245, line: 1082, baseType: !2866, size: 64, offset: 1088)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !245, line: 1314, size: 320, elements: !2868)
!2868 = !{!2869, !2877, !2878, !2879, !2880, !2881}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2867, file: !245, line: 1315, baseType: !2870)
!2870 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2871, line: 20, baseType: !2872)
!2871 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2871, line: 11, elements: !2873)
!2873 = !{!2874}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2872, file: !2871, line: 12, baseType: !2875)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !138, line: 33, baseType: !2876)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 31, elements: !140)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2867, file: !245, line: 1316, baseType: !6, size: 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2867, file: !245, line: 1317, baseType: !6, size: 32, offset: 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2867, file: !245, line: 1318, baseType: !2866, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2867, file: !245, line: 1319, baseType: !243, size: 64, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2867, file: !245, line: 1320, baseType: !257, size: 128, align: 64, offset: 192)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2849, file: !245, line: 1084, baseType: !48, size: 64, offset: 1152)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2849, file: !245, line: 1085, baseType: !48, size: 64, offset: 1216)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2849, file: !245, line: 1087, baseType: !2885, size: 64, offset: 1280)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2887)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !245, line: 1011, size: 128, elements: !2888)
!2888 = !{!2889, !2893}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2887, file: !245, line: 1012, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{null, !2848, !2848}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2887, file: !245, line: 1013, baseType: !2894, size: 64, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{null, !2848}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2849, file: !245, line: 1088, baseType: !2898, size: 64, offset: 1344)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2900)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !245, line: 1016, size: 512, elements: !2901)
!2901 = !{!2902, !2906, !2910, !2911, !2915, !2919, !2923, !2927}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2900, file: !245, line: 1017, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!2834, !2834}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2900, file: !245, line: 1018, baseType: !2907, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{null, !2834}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2900, file: !245, line: 1019, baseType: !2894, size: 64, offset: 128)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2900, file: !245, line: 1020, baseType: !2912, size: 64, offset: 192)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!6, !2848, !6}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2900, file: !245, line: 1021, baseType: !2916, size: 64, offset: 256)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!374, !2848}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2900, file: !245, line: 1022, baseType: !2920, size: 64, offset: 320)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!6, !2848, !6, !16}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2900, file: !245, line: 1023, baseType: !2924, size: 64, offset: 384)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{null, !2848, !710}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2900, file: !245, line: 1024, baseType: !2916, size: 64, offset: 448)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2849, file: !245, line: 1097, baseType: !2929, size: 256, offset: 1408)
!2929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2849, file: !245, line: 1089, size: 256, elements: !2930)
!2930 = !{!2931, !2940, !2946}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2929, file: !245, line: 1090, baseType: !2932, size: 256)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2933, line: 10, size: 256, elements: !2934)
!2933 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2934 = !{!2935, !2936, !2939}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2932, file: !2933, line: 11, baseType: !80, size: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2932, file: !2933, line: 12, baseType: !2937, size: 64, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2933, line: 5, flags: DIFlagFwdDecl)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2932, file: !2933, line: 13, baseType: !12, size: 128, offset: 128)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2929, file: !245, line: 1091, baseType: !2941, size: 64)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2933, line: 17, size: 64, elements: !2942)
!2942 = !{!2943}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2941, file: !2933, line: 18, baseType: !2944, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2933, line: 16, flags: DIFlagFwdDecl)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2929, file: !245, line: 1096, baseType: !2947, size: 192)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2929, file: !245, line: 1092, size: 192, elements: !2948)
!2948 = !{!2949, !2950, !2951}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2947, file: !245, line: 1093, baseType: !12, size: 128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2947, file: !245, line: 1094, baseType: !6, size: 32, offset: 128)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2947, file: !245, line: 1095, baseType: !74, size: 32, offset: 160)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2772, file: !245, line: 1843, baseType: !2953, size: 64, offset: 1280)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!198, !243, !609, !6, !213, !2783, !6}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2772, file: !245, line: 1844, baseType: !1002, size: 64, offset: 1344)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2772, file: !245, line: 1845, baseType: !2958, size: 64, offset: 1408)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!6, !6}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2772, file: !245, line: 1846, baseType: !2845, size: 64, offset: 1472)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2772, file: !245, line: 1847, baseType: !2963, size: 64, offset: 1536)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!198, !1993, !243, !2783, !213, !74}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2772, file: !245, line: 1848, baseType: !2967, size: 64, offset: 1600)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!198, !243, !2783, !1993, !213, !74}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2772, file: !245, line: 1849, baseType: !2971, size: 64, offset: 1664)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!6, !243, !202, !2974, !710}
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2772, file: !245, line: 1850, baseType: !2976, size: 64, offset: 1728)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!202, !243, !6, !415, !415}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2772, file: !245, line: 1852, baseType: !2980, size: 64, offset: 1792)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{null, !599, !243}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2772, file: !245, line: 1856, baseType: !2984, size: 64, offset: 1856)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!198, !243, !415, !243, !415, !213, !74}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2772, file: !245, line: 1858, baseType: !2988, size: 64, offset: 1920)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!415, !243, !415, !243, !415, !415, !74}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2772, file: !245, line: 1861, baseType: !2837, size: 64, offset: 1984)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2767, file: !245, line: 692, baseType: !551, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !314, file: !245, line: 694, baseType: !2994, size: 64, offset: 2560)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !245, line: 1100, size: 384, elements: !2996)
!2996 = !{!2997, !2998, !2999, !3000}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2995, file: !245, line: 1101, baseType: !126)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2995, file: !245, line: 1102, baseType: !12, size: 128)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2995, file: !245, line: 1103, baseType: !12, size: 128, offset: 128)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2995, file: !245, line: 1104, baseType: !12, size: 128, offset: 256)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !314, file: !245, line: 695, baseType: !623, size: 1216, align: 64, offset: 2624)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !314, file: !245, line: 696, baseType: !12, size: 128, offset: 3840)
!3003 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !245, line: 697, baseType: !3004, size: 64, offset: 3968)
!3004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !245, line: 697, size: 64, elements: !3005)
!3005 = !{!3006, !3007, !3008, !3011, !3012}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3004, file: !245, line: 698, baseType: !1993, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3004, file: !245, line: 699, baseType: !2522, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3004, file: !245, line: 700, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !245, line: 700, flags: DIFlagFwdDecl)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3004, file: !245, line: 701, baseType: !167, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3004, file: !245, line: 702, baseType: !74, size: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !314, file: !245, line: 705, baseType: !81, size: 32, offset: 4032)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !314, file: !245, line: 708, baseType: !81, size: 32, offset: 4064)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !314, file: !245, line: 709, baseType: !2604, size: 64, offset: 4096)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !314, file: !245, line: 720, baseType: !73, size: 64, offset: 4160)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !275, file: !272, line: 98, baseType: !3018, size: 256, offset: 448)
!3018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 256, elements: !2124)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !275, file: !272, line: 101, baseType: !3020, size: 32, offset: 704)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3021, line: 25, size: 32, elements: !3022)
!3021 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3022 = !{!3023}
!3023 = !DIDerivedType(tag: DW_TAG_member, scope: !3020, file: !3021, line: 26, baseType: !3024, size: 32)
!3024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3020, file: !3021, line: 26, size: 32, elements: !3025)
!3025 = !{!3026}
!3026 = !DIDerivedType(tag: DW_TAG_member, scope: !3024, file: !3021, line: 30, baseType: !3027, size: 32)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3024, file: !3021, line: 30, size: 32, elements: !3028)
!3028 = !{!3029, !3030}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3027, file: !3021, line: 31, baseType: !126)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3027, file: !3021, line: 32, baseType: !6, size: 32)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !275, file: !272, line: 102, baseType: !2621, size: 64, offset: 768)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !275, file: !272, line: 103, baseType: !483, size: 64, offset: 832)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !275, file: !272, line: 104, baseType: !48, size: 64, offset: 896)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !275, file: !272, line: 105, baseType: !73, size: 64, offset: 960)
!3035 = !DIDerivedType(tag: DW_TAG_member, scope: !275, file: !272, line: 107, baseType: !3036, size: 128, offset: 1024)
!3036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !275, file: !272, line: 107, size: 128, elements: !3037)
!3037 = !{!3038, !3039}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3036, file: !272, line: 108, baseType: !12, size: 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3036, file: !272, line: 109, baseType: !3040, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !275, file: !272, line: 111, baseType: !12, size: 128, offset: 1152)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !275, file: !272, line: 112, baseType: !12, size: 128, offset: 1280)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !275, file: !272, line: 120, baseType: !3044, size: 128, offset: 1408)
!3044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !275, file: !272, line: 116, size: 128, elements: !3045)
!3045 = !{!3046, !3047, !3048}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3044, file: !272, line: 117, baseType: !526, size: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3044, file: !272, line: 118, baseType: !289, size: 128)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3044, file: !272, line: 119, baseType: !257, size: 128, align: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !244, file: !245, line: 922, baseType: !313, size: 64, offset: 256)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !244, file: !245, line: 923, baseType: !2770, size: 64, offset: 320)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !244, file: !245, line: 929, baseType: !126, offset: 384)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !244, file: !245, line: 930, baseType: !3053, size: 32, offset: 384)
!3053 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !245, line: 296, baseType: !74, size: 32, elements: !3054)
!3054 = !{!3055, !3056, !3057, !3058, !3059, !3060}
!3055 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!3056 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!3057 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!3058 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!3059 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!3060 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !244, file: !245, line: 931, baseType: !660, size: 64, offset: 448)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !244, file: !245, line: 932, baseType: !74, size: 32, offset: 512)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !244, file: !245, line: 933, baseType: !2617, size: 32, offset: 544)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !244, file: !245, line: 934, baseType: !1072, size: 192, offset: 576)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !244, file: !245, line: 935, baseType: !415, size: 64, offset: 768)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !244, file: !245, line: 936, baseType: !3067, size: 192, offset: 832)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !245, line: 885, size: 192, elements: !3068)
!3068 = !{!3069, !3070, !3071, !3079, !3080, !3081}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3067, file: !245, line: 886, baseType: !2870)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3067, file: !245, line: 887, baseType: !1364, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3067, file: !245, line: 888, baseType: !3072, size: 32, offset: 64)
!3072 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !1366, line: 9, baseType: !74, size: 32, elements: !3073)
!3073 = !{!3074, !3075, !3076, !3077, !3078}
!3074 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!3075 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!3076 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!3077 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!3078 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3067, file: !245, line: 889, baseType: !319, size: 32, offset: 96)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3067, file: !245, line: 889, baseType: !319, size: 32, offset: 128)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3067, file: !245, line: 890, baseType: !6, size: 32, offset: 160)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !244, file: !245, line: 937, baseType: !1441, size: 64, offset: 1024)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !244, file: !245, line: 938, baseType: !3084, size: 256, offset: 1088)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !245, line: 896, size: 256, elements: !3085)
!3085 = !{!3086, !3087, !3088, !3089, !3090, !3091}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3084, file: !245, line: 897, baseType: !48, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3084, file: !245, line: 898, baseType: !74, size: 32, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3084, file: !245, line: 899, baseType: !74, size: 32, offset: 96)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3084, file: !245, line: 902, baseType: !74, size: 32, offset: 128)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3084, file: !245, line: 903, baseType: !74, size: 32, offset: 160)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3084, file: !245, line: 904, baseType: !415, size: 64, offset: 192)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !244, file: !245, line: 940, baseType: !37, size: 64, offset: 1344)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !244, file: !245, line: 945, baseType: !73, size: 64, offset: 1408)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !244, file: !245, line: 949, baseType: !12, size: 128, offset: 1472)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !244, file: !245, line: 950, baseType: !12, size: 128, offset: 1600)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !244, file: !245, line: 952, baseType: !622, size: 64, offset: 1728)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !244, file: !245, line: 953, baseType: !805, size: 32, offset: 1792)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !244, file: !245, line: 954, baseType: !805, size: 32, offset: 1824)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !234, file: !192, line: 174, baseType: !240, size: 64, offset: 320)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !234, file: !192, line: 176, baseType: !3101, size: 64, offset: 384)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!6, !243, !119, !233, !877}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !222, file: !192, line: 90, baseType: !217, size: 64, offset: 192)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !222, file: !192, line: 91, baseType: !3106, size: 64, offset: 256)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !182, file: !114, line: 143, baseType: !3108, size: 64, offset: 256)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!3111, !119}
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3113)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !3114, line: 39, size: 384, elements: !3115)
!3114 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!3115 = !{!3116, !3122, !3126, !3130, !3136, !3140}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3113, file: !3114, line: 40, baseType: !3117, size: 32)
!3117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !3114, line: 26, baseType: !74, size: 32, elements: !3118)
!3118 = !{!3119, !3120, !3121}
!3119 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!3120 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!3121 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3113, file: !3114, line: 41, baseType: !3123, size: 64, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!374}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3113, file: !3114, line: 42, baseType: !3127, size: 64, offset: 128)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!73}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3113, file: !3114, line: 43, baseType: !3131, size: 64, offset: 192)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!2021, !3134}
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !3114, line: 19, flags: DIFlagFwdDecl)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3113, file: !3114, line: 44, baseType: !3137, size: 64, offset: 256)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!2021}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3113, file: !3114, line: 45, baseType: !352, size: 64, offset: 320)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !182, file: !114, line: 144, baseType: !3142, size: 64, offset: 320)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!2021, !119}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !182, file: !114, line: 145, baseType: !3146, size: 64, offset: 384)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{null, !119, !3149, !3150}
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !113, file: !114, line: 70, baseType: !3152, size: 64, offset: 384)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !503, line: 123, size: 1024, elements: !3154)
!3154 = !{!3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3283, !3284, !3285, !3286, !3287}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3153, file: !503, line: 124, baseType: !636, size: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3153, file: !503, line: 125, baseType: !636, size: 32, offset: 32)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3153, file: !503, line: 135, baseType: !3152, size: 64, offset: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3153, file: !503, line: 136, baseType: !44, size: 64, offset: 128)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3153, file: !503, line: 138, baseType: !649, size: 192, align: 64, offset: 192)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3153, file: !503, line: 140, baseType: !2021, size: 64, offset: 384)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3153, file: !503, line: 141, baseType: !74, size: 32, offset: 448)
!3162 = !DIDerivedType(tag: DW_TAG_member, scope: !3153, file: !503, line: 142, baseType: !3163, size: 256, offset: 512)
!3163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3153, file: !503, line: 142, size: 256, elements: !3164)
!3164 = !{!3165, !3211, !3215}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3163, file: !503, line: 143, baseType: !3166, size: 192)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !503, line: 91, size: 192, elements: !3167)
!3167 = !{!3168, !3169, !3170}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3166, file: !503, line: 92, baseType: !48, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3166, file: !503, line: 94, baseType: !645, size: 64, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3166, file: !503, line: 100, baseType: !3171, size: 64, offset: 128)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !503, line: 180, size: 704, elements: !3173)
!3173 = !{!3174, !3175, !3176, !3183, !3184, !3185, !3209, !3210}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3172, file: !503, line: 182, baseType: !3152, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3172, file: !503, line: 183, baseType: !74, size: 32, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3172, file: !503, line: 186, baseType: !3177, size: 192, offset: 128)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3178, line: 19, size: 192, elements: !3179)
!3178 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3179 = !{!3180, !3181, !3182}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3177, file: !3178, line: 20, baseType: !627, size: 128)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3177, file: !3178, line: 21, baseType: !74, size: 32, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3177, file: !3178, line: 22, baseType: !74, size: 32, offset: 160)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3172, file: !503, line: 187, baseType: !80, size: 32, offset: 320)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3172, file: !503, line: 188, baseType: !80, size: 32, offset: 352)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3172, file: !503, line: 189, baseType: !3186, size: 64, offset: 384)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !503, line: 168, size: 320, elements: !3188)
!3188 = !{!3189, !3193, !3197, !3201, !3205}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3187, file: !503, line: 169, baseType: !3190, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!6, !599, !3171}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3187, file: !503, line: 171, baseType: !3194, size: 64, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!6, !3152, !44, !208}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3187, file: !503, line: 173, baseType: !3198, size: 64, offset: 128)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!6, !3152}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3187, file: !503, line: 174, baseType: !3202, size: 64, offset: 192)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!6, !3152, !3152, !44}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3187, file: !503, line: 176, baseType: !3206, size: 64, offset: 256)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!6, !599, !3152, !3171}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3172, file: !503, line: 192, baseType: !12, size: 128, offset: 448)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3172, file: !503, line: 194, baseType: !1375, size: 128, offset: 576)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3163, file: !503, line: 144, baseType: !3212, size: 64)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !503, line: 103, size: 64, elements: !3213)
!3213 = !{!3214}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3212, file: !503, line: 104, baseType: !3152, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3163, file: !503, line: 145, baseType: !3216, size: 256)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !503, line: 107, size: 256, elements: !3217)
!3217 = !{!3218, !3278, !3281, !3282}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3216, file: !503, line: 108, baseType: !3219, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3221)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !503, line: 217, size: 768, elements: !3222)
!3222 = !{!3223, !3243, !3247, !3251, !3255, !3259, !3263, !3267, !3268, !3269, !3270, !3274}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3221, file: !503, line: 222, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!6, !3227}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !503, line: 197, size: 1088, elements: !3229)
!3229 = !{!3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3228, file: !503, line: 199, baseType: !3152, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3228, file: !503, line: 200, baseType: !243, size: 64, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3228, file: !503, line: 201, baseType: !599, size: 64, offset: 128)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3228, file: !503, line: 202, baseType: !73, size: 64, offset: 192)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3228, file: !503, line: 205, baseType: !1072, size: 192, offset: 256)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3228, file: !503, line: 206, baseType: !1072, size: 192, offset: 448)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3228, file: !503, line: 207, baseType: !6, size: 32, offset: 640)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3228, file: !503, line: 208, baseType: !12, size: 128, offset: 704)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3228, file: !503, line: 209, baseType: !167, size: 64, offset: 832)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3228, file: !503, line: 211, baseType: !213, size: 64, offset: 896)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3228, file: !503, line: 212, baseType: !374, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3228, file: !503, line: 213, baseType: !374, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3228, file: !503, line: 214, baseType: !905, size: 64, offset: 1024)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3221, file: !503, line: 223, baseType: !3244, size: 64, offset: 64)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{null, !3227}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3221, file: !503, line: 236, baseType: !3248, size: 64, offset: 128)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!6, !599, !73}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3221, file: !503, line: 238, baseType: !3252, size: 64, offset: 192)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!73, !599, !2783}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3221, file: !503, line: 239, baseType: !3256, size: 64, offset: 256)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!73, !599, !73, !2783}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3221, file: !503, line: 240, baseType: !3260, size: 64, offset: 320)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{null, !599, !73}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3221, file: !503, line: 242, baseType: !3264, size: 64, offset: 384)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!198, !3227, !167, !213, !415}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3221, file: !503, line: 252, baseType: !213, size: 64, offset: 448)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3221, file: !503, line: 259, baseType: !374, size: 8, offset: 512)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3221, file: !503, line: 260, baseType: !3264, size: 64, offset: 576)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3221, file: !503, line: 263, baseType: !3271, size: 64, offset: 640)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!2812, !3227, !2814}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3221, file: !503, line: 266, baseType: !3275, size: 64, offset: 704)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!6, !3227, !877}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3216, file: !503, line: 109, baseType: !3279, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !503, line: 31, flags: DIFlagFwdDecl)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3216, file: !503, line: 110, baseType: !415, size: 64, offset: 128)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3216, file: !503, line: 111, baseType: !3152, size: 64, offset: 192)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3153, file: !503, line: 148, baseType: !73, size: 64, offset: 768)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3153, file: !503, line: 154, baseType: !37, size: 64, offset: 832)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3153, file: !503, line: 156, baseType: !104, size: 16, offset: 896)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3153, file: !503, line: 157, baseType: !208, size: 16, offset: 912)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3153, file: !503, line: 158, baseType: !3288, size: 64, offset: 960)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !503, line: 32, flags: DIFlagFwdDecl)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !113, file: !114, line: 71, baseType: !3291, size: 32, offset: 448)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3292, line: 19, size: 32, elements: !3293)
!3292 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3293 = !{!3294}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3291, file: !3292, line: 20, baseType: !1113, size: 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !113, file: !114, line: 75, baseType: !74, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !113, file: !114, line: 76, baseType: !74, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !113, file: !114, line: 77, baseType: !74, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !113, file: !114, line: 78, baseType: !74, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !113, file: !114, line: 79, baseType: !74, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !109, file: !110, line: 463, baseType: !108, size: 64, offset: 512)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !109, file: !110, line: 465, baseType: !3302, size: 64, offset: 576)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !110, line: 36, flags: DIFlagFwdDecl)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !109, file: !110, line: 467, baseType: !44, size: 64, offset: 640)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !109, file: !110, line: 468, baseType: !3306, size: 64, offset: 704)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3308)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !110, line: 87, size: 384, elements: !3309)
!3309 = !{!3310, !3311, !3312, !3316, !3321, !3325}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3308, file: !110, line: 88, baseType: !44, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3308, file: !110, line: 89, baseType: !219, size: 64, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3308, file: !110, line: 90, baseType: !3313, size: 64, offset: 128)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!6, !108, !162}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3308, file: !110, line: 91, baseType: !3317, size: 64, offset: 192)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!167, !108, !3320, !3149, !3150}
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3308, file: !110, line: 93, baseType: !3322, size: 64, offset: 256)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{null, !108}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3308, file: !110, line: 95, baseType: !3326, size: 64, offset: 320)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3328)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !3329, line: 278, size: 1472, elements: !3330)
!3329 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!3330 = !{!3331, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3328, file: !3329, line: 279, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!6, !108}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3328, file: !3329, line: 280, baseType: !3322, size: 64, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3328, file: !3329, line: 281, baseType: !3332, size: 64, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3328, file: !3329, line: 282, baseType: !3332, size: 64, offset: 192)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3328, file: !3329, line: 283, baseType: !3332, size: 64, offset: 256)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3328, file: !3329, line: 284, baseType: !3332, size: 64, offset: 320)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3328, file: !3329, line: 285, baseType: !3332, size: 64, offset: 384)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3328, file: !3329, line: 286, baseType: !3332, size: 64, offset: 448)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3328, file: !3329, line: 287, baseType: !3332, size: 64, offset: 512)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3328, file: !3329, line: 288, baseType: !3332, size: 64, offset: 576)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3328, file: !3329, line: 289, baseType: !3332, size: 64, offset: 640)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3328, file: !3329, line: 290, baseType: !3332, size: 64, offset: 704)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3328, file: !3329, line: 291, baseType: !3332, size: 64, offset: 768)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3328, file: !3329, line: 292, baseType: !3332, size: 64, offset: 832)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3328, file: !3329, line: 293, baseType: !3332, size: 64, offset: 896)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3328, file: !3329, line: 294, baseType: !3332, size: 64, offset: 960)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3328, file: !3329, line: 295, baseType: !3332, size: 64, offset: 1024)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3328, file: !3329, line: 296, baseType: !3332, size: 64, offset: 1088)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3328, file: !3329, line: 297, baseType: !3332, size: 64, offset: 1152)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3328, file: !3329, line: 298, baseType: !3332, size: 64, offset: 1216)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3328, file: !3329, line: 299, baseType: !3332, size: 64, offset: 1280)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3328, file: !3329, line: 300, baseType: !3332, size: 64, offset: 1344)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3328, file: !3329, line: 301, baseType: !3332, size: 64, offset: 1408)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !109, file: !110, line: 470, baseType: !3358, size: 64, offset: 768)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3360, line: 82, size: 1408, elements: !3361)
!3360 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3361 = !{!3362, !3363, !3364, !3365, !3366, !3367, !3368, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3449, !3452, !3453}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3359, file: !3360, line: 83, baseType: !44, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3359, file: !3360, line: 84, baseType: !44, size: 64, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3359, file: !3360, line: 85, baseType: !108, size: 64, offset: 128)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3359, file: !3360, line: 86, baseType: !219, size: 64, offset: 192)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3359, file: !3360, line: 87, baseType: !219, size: 64, offset: 256)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3359, file: !3360, line: 88, baseType: !219, size: 64, offset: 320)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3359, file: !3360, line: 90, baseType: !3369, size: 64, offset: 384)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!6, !108, !3372}
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !3374, line: 95, size: 1152, elements: !3375)
!3374 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!3375 = !{!3376, !3377, !3378, !3379, !3380, !3381, !3387, !3400, !3413, !3414, !3415, !3416, !3417, !3425, !3426, !3427, !3428, !3429, !3430}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3373, file: !3374, line: 96, baseType: !44, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3373, file: !3374, line: 97, baseType: !3358, size: 64, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3373, file: !3374, line: 99, baseType: !517, size: 64, offset: 128)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3373, file: !3374, line: 100, baseType: !44, size: 64, offset: 192)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3373, file: !3374, line: 102, baseType: !374, size: 8, offset: 256)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3373, file: !3374, line: 103, baseType: !3382, size: 32, offset: 288)
!3382 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !3374, line: 44, baseType: !74, size: 32, elements: !3383)
!3383 = !{!3384, !3385, !3386}
!3384 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!3385 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!3386 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3373, file: !3374, line: 105, baseType: !3388, size: 64, offset: 320)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3390)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3391, line: 262, size: 1600, elements: !3392)
!3391 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3392 = !{!3393, !3394, !3395, !3399}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3390, file: !3391, line: 263, baseType: !2607, size: 256)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3390, file: !3391, line: 264, baseType: !2607, size: 256, offset: 256)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3390, file: !3391, line: 265, baseType: !3396, size: 1024, offset: 512)
!3396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 1024, elements: !3397)
!3397 = !{!3398}
!3398 = !DISubrange(count: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3390, file: !3391, line: 266, baseType: !2021, size: 64, offset: 1536)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3373, file: !3374, line: 106, baseType: !3401, size: 64, offset: 384)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3403)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3391, line: 210, size: 256, elements: !3404)
!3404 = !{!3405, !3409, !3411, !3412}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3403, file: !3391, line: 211, baseType: !3406, size: 72)
!3406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1241, size: 72, elements: !3407)
!3407 = !{!3408}
!3408 = !DISubrange(count: 9)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3403, file: !3391, line: 212, baseType: !3410, size: 64, offset: 128)
!3410 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3391, line: 14, baseType: !48)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3403, file: !3391, line: 213, baseType: !81, size: 32, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3403, file: !3391, line: 214, baseType: !81, size: 32, offset: 224)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3373, file: !3374, line: 108, baseType: !3332, size: 64, offset: 448)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3373, file: !3374, line: 109, baseType: !3322, size: 64, offset: 512)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3373, file: !3374, line: 110, baseType: !3332, size: 64, offset: 576)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3373, file: !3374, line: 111, baseType: !3322, size: 64, offset: 640)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3373, file: !3374, line: 112, baseType: !3418, size: 64, offset: 704)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!6, !108, !3421}
!3421 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !3329, line: 52, baseType: !3422)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !3329, line: 50, size: 32, elements: !3423)
!3423 = !{!3424}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3422, file: !3329, line: 51, baseType: !6, size: 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3373, file: !3374, line: 113, baseType: !3332, size: 64, offset: 768)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3373, file: !3374, line: 114, baseType: !219, size: 64, offset: 832)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3373, file: !3374, line: 115, baseType: !219, size: 64, offset: 896)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3373, file: !3374, line: 117, baseType: !3326, size: 64, offset: 960)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3373, file: !3374, line: 118, baseType: !3322, size: 64, offset: 1024)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3373, file: !3374, line: 120, baseType: !3431, size: 64, offset: 1088)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !3374, line: 120, flags: DIFlagFwdDecl)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3359, file: !3360, line: 91, baseType: !3313, size: 64, offset: 448)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3359, file: !3360, line: 92, baseType: !3332, size: 64, offset: 512)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3359, file: !3360, line: 93, baseType: !3322, size: 64, offset: 576)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3359, file: !3360, line: 94, baseType: !3332, size: 64, offset: 640)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3359, file: !3360, line: 95, baseType: !3322, size: 64, offset: 704)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3359, file: !3360, line: 97, baseType: !3332, size: 64, offset: 768)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3359, file: !3360, line: 98, baseType: !3332, size: 64, offset: 832)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3359, file: !3360, line: 100, baseType: !3418, size: 64, offset: 896)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3359, file: !3360, line: 101, baseType: !3332, size: 64, offset: 960)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3359, file: !3360, line: 103, baseType: !3332, size: 64, offset: 1024)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3359, file: !3360, line: 105, baseType: !3332, size: 64, offset: 1088)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3359, file: !3360, line: 107, baseType: !3326, size: 64, offset: 1152)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3359, file: !3360, line: 109, baseType: !3446, size: 64, offset: 1216)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3448)
!3448 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3360, line: 109, flags: DIFlagFwdDecl)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3359, file: !3360, line: 111, baseType: !3450, size: 64, offset: 1280)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3360, line: 111, flags: DIFlagFwdDecl)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3359, file: !3360, line: 112, baseType: !532, offset: 1344)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3359, file: !3360, line: 114, baseType: !374, size: 8, offset: 1344)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !109, file: !110, line: 471, baseType: !3372, size: 64, offset: 832)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !109, file: !110, line: 473, baseType: !73, size: 64, offset: 896)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !109, file: !110, line: 475, baseType: !73, size: 64, offset: 960)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !109, file: !110, line: 480, baseType: !1072, size: 192, offset: 1024)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !109, file: !110, line: 484, baseType: !3459, size: 576, offset: 1216)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !110, line: 361, size: 576, elements: !3460)
!3460 = !{!3461, !3462, !3463, !3464, !3465, !3466}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3459, file: !110, line: 362, baseType: !12, size: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3459, file: !110, line: 363, baseType: !12, size: 128, offset: 128)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3459, file: !110, line: 364, baseType: !12, size: 128, offset: 256)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3459, file: !110, line: 365, baseType: !12, size: 128, offset: 384)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3459, file: !110, line: 366, baseType: !374, size: 8, offset: 512)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3459, file: !110, line: 367, baseType: !3467, size: 32, offset: 544)
!3467 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !110, line: 343, baseType: !74, size: 32, elements: !3468)
!3468 = !{!3469, !3470, !3471, !3472}
!3469 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!3470 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!3471 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!3472 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !109, file: !110, line: 485, baseType: !3474, size: 2304, offset: 1792)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !3329, line: 565, size: 2304, elements: !3475)
!3475 = !{!3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3561, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3584, !3588}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3474, file: !3329, line: 566, baseType: !3421, size: 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3474, file: !3329, line: 567, baseType: !74, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3474, file: !3329, line: 568, baseType: !74, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3474, file: !3329, line: 569, baseType: !374, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3474, file: !3329, line: 570, baseType: !374, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3474, file: !3329, line: 571, baseType: !374, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3474, file: !3329, line: 572, baseType: !374, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3474, file: !3329, line: 573, baseType: !374, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3474, file: !3329, line: 574, baseType: !374, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3474, file: !3329, line: 575, baseType: !374, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3474, file: !3329, line: 576, baseType: !374, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3474, file: !3329, line: 577, baseType: !80, size: 32, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3474, file: !3329, line: 578, baseType: !126, offset: 96)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3474, file: !3329, line: 580, baseType: !12, size: 128, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3474, file: !3329, line: 581, baseType: !1396, size: 192, offset: 256)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3474, file: !3329, line: 582, baseType: !3492, size: 64, offset: 448)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3494, line: 43, size: 1472, elements: !3495)
!3494 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3495 = !{!3496, !3497, !3498, !3499, !3500, !3503, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3493, file: !3494, line: 44, baseType: !44, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3493, file: !3494, line: 45, baseType: !6, size: 32, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3493, file: !3494, line: 46, baseType: !12, size: 128, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3493, file: !3494, line: 47, baseType: !126, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3493, file: !3494, line: 48, baseType: !3501, size: 64, offset: 256)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !3329, line: 533, flags: DIFlagFwdDecl)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3493, file: !3494, line: 49, baseType: !3504, size: 320, offset: 320)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3505, line: 11, size: 320, elements: !3506)
!3505 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3506 = !{!3507, !3508, !3509, !3514}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3504, file: !3505, line: 16, baseType: !526, size: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3504, file: !3505, line: 17, baseType: !48, size: 64, offset: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3504, file: !3505, line: 18, baseType: !3510, size: 64, offset: 192)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{null, !3513}
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3504, file: !3505, line: 19, baseType: !80, size: 32, offset: 256)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3493, file: !3494, line: 50, baseType: !48, size: 64, offset: 640)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3493, file: !3494, line: 51, baseType: !1184, size: 64, offset: 704)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3493, file: !3494, line: 52, baseType: !1184, size: 64, offset: 768)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3493, file: !3494, line: 53, baseType: !1184, size: 64, offset: 832)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3493, file: !3494, line: 54, baseType: !1184, size: 64, offset: 896)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3493, file: !3494, line: 55, baseType: !1184, size: 64, offset: 960)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3493, file: !3494, line: 56, baseType: !48, size: 64, offset: 1024)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3493, file: !3494, line: 57, baseType: !48, size: 64, offset: 1088)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3493, file: !3494, line: 58, baseType: !48, size: 64, offset: 1152)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3493, file: !3494, line: 59, baseType: !48, size: 64, offset: 1216)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3493, file: !3494, line: 60, baseType: !48, size: 64, offset: 1280)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3493, file: !3494, line: 61, baseType: !108, size: 64, offset: 1344)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3493, file: !3494, line: 62, baseType: !374, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3493, file: !3494, line: 63, baseType: !374, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3474, file: !3329, line: 583, baseType: !374, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3474, file: !3329, line: 584, baseType: !374, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3474, file: !3329, line: 585, baseType: !374, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3474, file: !3329, line: 586, baseType: !74, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3474, file: !3329, line: 587, baseType: !74, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3474, file: !3329, line: 592, baseType: !1175, size: 512, offset: 576)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3474, file: !3329, line: 593, baseType: !37, size: 64, offset: 1088)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3474, file: !3329, line: 594, baseType: !1852, size: 256, offset: 1152)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3474, file: !3329, line: 595, baseType: !1375, size: 128, offset: 1408)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3474, file: !3329, line: 596, baseType: !3501, size: 64, offset: 1536)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3474, file: !3329, line: 597, baseType: !636, size: 32, offset: 1600)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3474, file: !3329, line: 598, baseType: !636, size: 32, offset: 1632)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3474, file: !3329, line: 599, baseType: !74, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3474, file: !3329, line: 600, baseType: !74, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3474, file: !3329, line: 601, baseType: !74, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3474, file: !3329, line: 602, baseType: !74, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3474, file: !3329, line: 603, baseType: !74, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3474, file: !3329, line: 604, baseType: !374, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3474, file: !3329, line: 605, baseType: !74, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3474, file: !3329, line: 606, baseType: !74, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3474, file: !3329, line: 607, baseType: !74, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3474, file: !3329, line: 608, baseType: !74, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3474, file: !3329, line: 609, baseType: !74, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3474, file: !3329, line: 610, baseType: !74, size: 32, offset: 1696)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3474, file: !3329, line: 611, baseType: !3554, size: 32, offset: 1728)
!3554 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !3329, line: 524, baseType: !74, size: 32, elements: !3555)
!3555 = !{!3556, !3557, !3558, !3559, !3560}
!3556 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!3557 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!3558 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!3559 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!3560 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3474, file: !3329, line: 612, baseType: !3562, size: 32, offset: 1760)
!3562 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !3329, line: 502, baseType: !74, size: 32, elements: !3563)
!3563 = !{!3564, !3565, !3566, !3567}
!3564 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!3565 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!3566 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!3567 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3474, file: !3329, line: 613, baseType: !6, size: 32, offset: 1792)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3474, file: !3329, line: 614, baseType: !6, size: 32, offset: 1824)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3474, file: !3329, line: 615, baseType: !37, size: 64, offset: 1856)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3474, file: !3329, line: 616, baseType: !37, size: 64, offset: 1920)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3474, file: !3329, line: 617, baseType: !37, size: 64, offset: 1984)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3474, file: !3329, line: 618, baseType: !37, size: 64, offset: 2048)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3474, file: !3329, line: 620, baseType: !3575, size: 64, offset: 2112)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !3329, line: 536, size: 256, elements: !3577)
!3577 = !{!3578, !3579, !3580, !3581}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3576, file: !3329, line: 537, baseType: !126)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3576, file: !3329, line: 538, baseType: !74, size: 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3576, file: !3329, line: 540, baseType: !12, size: 128, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3576, file: !3329, line: 543, baseType: !3582, size: 64, offset: 192)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !3329, line: 534, flags: DIFlagFwdDecl)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3474, file: !3329, line: 621, baseType: !3585, size: 64, offset: 2176)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{null, !108, !1337}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3474, file: !3329, line: 622, baseType: !3589, size: 64, offset: 2240)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !3329, line: 622, flags: DIFlagFwdDecl)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !109, file: !110, line: 486, baseType: !3592, size: 64, offset: 4096)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !3329, line: 642, size: 1792, elements: !3594)
!3594 = !{!3595, !3596, !3597, !3601, !3602, !3603}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3593, file: !3329, line: 643, baseType: !3328, size: 1472)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3593, file: !3329, line: 644, baseType: !3332, size: 64, offset: 1472)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3593, file: !3329, line: 645, baseType: !3598, size: 64, offset: 1536)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{null, !108, !374}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3593, file: !3329, line: 646, baseType: !3332, size: 64, offset: 1600)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3593, file: !3329, line: 647, baseType: !3322, size: 64, offset: 1664)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3593, file: !3329, line: 648, baseType: !3322, size: 64, offset: 1728)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !109, file: !110, line: 493, baseType: !3605, size: 64, offset: 4160)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !110, line: 493, flags: DIFlagFwdDecl)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !109, file: !110, line: 499, baseType: !12, size: 128, offset: 4224)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !109, file: !110, line: 502, baseType: !3609, size: 64, offset: 4352)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3611)
!3611 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !110, line: 502, flags: DIFlagFwdDecl)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !109, file: !110, line: 504, baseType: !3613, size: 64, offset: 4416)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !109, file: !110, line: 505, baseType: !37, size: 64, offset: 4480)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !109, file: !110, line: 510, baseType: !37, size: 64, offset: 4544)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !109, file: !110, line: 511, baseType: !3617, size: 64, offset: 4608)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3619)
!3619 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !110, line: 511, flags: DIFlagFwdDecl)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !109, file: !110, line: 513, baseType: !3621, size: 64, offset: 4672)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !110, line: 288, size: 128, elements: !3623)
!3623 = !{!3624, !3625}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3622, file: !110, line: 293, baseType: !74, size: 32)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3622, file: !110, line: 294, baseType: !48, size: 64, offset: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !109, file: !110, line: 515, baseType: !12, size: 128, offset: 4736)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !109, file: !110, line: 526, baseType: !3628, offset: 4864)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3629, line: 5, elements: !140)
!3629 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !109, file: !110, line: 528, baseType: !3631, size: 64, offset: 4864)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3633, line: 14, flags: DIFlagFwdDecl)
!3633 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !109, file: !110, line: 529, baseType: !3635, size: 64, offset: 4928)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3637, line: 17, size: 192, elements: !3638)
!3637 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3638 = !{!3639, !3640, !3723}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3636, file: !3637, line: 18, baseType: !3635, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3636, file: !3637, line: 19, baseType: !3641, size: 64, offset: 64)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3643)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3637, line: 110, size: 1152, elements: !3644)
!3644 = !{!3645, !3649, !3653, !3659, !3665, !3669, !3673, !3678, !3682, !3683, !3687, !3691, !3695, !3706, !3707, !3708, !3709, !3719}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3643, file: !3637, line: 111, baseType: !3646, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!3635, !3635}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3643, file: !3637, line: 112, baseType: !3650, size: 64, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{null, !3635}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3643, file: !3637, line: 113, baseType: !3654, size: 64, offset: 128)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!374, !3657}
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3636)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3643, file: !3637, line: 114, baseType: !3660, size: 64, offset: 192)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!2021, !3657, !3663}
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3643, file: !3637, line: 116, baseType: !3666, size: 64, offset: 256)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!374, !3657, !44}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3643, file: !3637, line: 118, baseType: !3670, size: 64, offset: 320)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!6, !3657, !44, !74, !73, !213}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3643, file: !3637, line: 123, baseType: !3674, size: 64, offset: 384)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!6, !3657, !44, !3677, !213}
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3643, file: !3637, line: 126, baseType: !3679, size: 64, offset: 448)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!44, !3657}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3643, file: !3637, line: 127, baseType: !3679, size: 64, offset: 512)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3643, file: !3637, line: 128, baseType: !3684, size: 64, offset: 576)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!3635, !3657}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3643, file: !3637, line: 130, baseType: !3688, size: 64, offset: 640)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!3635, !3657, !3635}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3643, file: !3637, line: 133, baseType: !3692, size: 64, offset: 704)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!3635, !3657, !44}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3643, file: !3637, line: 135, baseType: !3696, size: 64, offset: 768)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!6, !3657, !44, !44, !74, !74, !3699}
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3637, line: 43, size: 640, elements: !3701)
!3701 = !{!3702, !3703, !3704}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3700, file: !3637, line: 44, baseType: !3635, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3700, file: !3637, line: 45, baseType: !74, size: 32, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3700, file: !3637, line: 46, baseType: !3705, size: 512, offset: 128)
!3705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 512, elements: !1218)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3643, file: !3637, line: 140, baseType: !3688, size: 64, offset: 832)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3643, file: !3637, line: 143, baseType: !3684, size: 64, offset: 896)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3643, file: !3637, line: 145, baseType: !3646, size: 64, offset: 960)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3643, file: !3637, line: 146, baseType: !3710, size: 64, offset: 1024)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!6, !3657, !3713}
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3637, line: 29, size: 128, elements: !3715)
!3715 = !{!3716, !3717, !3718}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3714, file: !3637, line: 30, baseType: !74, size: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3714, file: !3637, line: 31, baseType: !74, size: 32, offset: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3714, file: !3637, line: 32, baseType: !3657, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3643, file: !3637, line: 148, baseType: !3720, size: 64, offset: 1088)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!6, !3657, !108}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3636, file: !3637, line: 20, baseType: !108, size: 64, offset: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !109, file: !110, line: 534, baseType: !397, size: 32, offset: 4992)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !109, file: !110, line: 535, baseType: !80, size: 32, offset: 5024)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !109, file: !110, line: 537, baseType: !126, offset: 5056)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !109, file: !110, line: 538, baseType: !12, size: 128, offset: 5056)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !109, file: !110, line: 540, baseType: !3729, size: 64, offset: 5184)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3731, line: 54, size: 960, elements: !3732)
!3731 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3732 = !{!3733, !3734, !3735, !3736, !3737, !3738, !3739, !3743, !3747, !3748, !3749, !3750, !3754, !3758, !3759}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3730, file: !3731, line: 55, baseType: !44, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3730, file: !3731, line: 56, baseType: !517, size: 64, offset: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3730, file: !3731, line: 58, baseType: !219, size: 64, offset: 128)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3730, file: !3731, line: 59, baseType: !219, size: 64, offset: 192)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3730, file: !3731, line: 60, baseType: !119, size: 64, offset: 256)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3730, file: !3731, line: 62, baseType: !3313, size: 64, offset: 320)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3730, file: !3731, line: 63, baseType: !3740, size: 64, offset: 384)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!167, !108, !3320}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3730, file: !3731, line: 65, baseType: !3744, size: 64, offset: 448)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{null, !3729}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3730, file: !3731, line: 66, baseType: !3322, size: 64, offset: 512)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3730, file: !3731, line: 68, baseType: !3332, size: 64, offset: 576)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3730, file: !3731, line: 70, baseType: !3111, size: 64, offset: 640)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3730, file: !3731, line: 71, baseType: !3751, size: 64, offset: 704)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!2021, !108}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3730, file: !3731, line: 73, baseType: !3755, size: 64, offset: 768)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{null, !108, !3149, !3150}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3730, file: !3731, line: 75, baseType: !3326, size: 64, offset: 832)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3730, file: !3731, line: 77, baseType: !3450, size: 64, offset: 896)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !109, file: !110, line: 541, baseType: !219, size: 64, offset: 5248)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !109, file: !110, line: 543, baseType: !3322, size: 64, offset: 5312)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !109, file: !110, line: 544, baseType: !3763, size: 64, offset: 5376)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !110, line: 45, flags: DIFlagFwdDecl)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !109, file: !110, line: 545, baseType: !3766, size: 64, offset: 5440)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !110, line: 47, flags: DIFlagFwdDecl)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !109, file: !110, line: 547, baseType: !374, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !109, file: !110, line: 548, baseType: !374, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !109, file: !110, line: 549, baseType: !374, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !109, file: !110, line: 550, baseType: !374, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !20, file: !9, line: 635, baseType: !109, size: 5568, offset: 2304)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !20, file: !9, line: 636, baseType: !233, size: 64, offset: 7872)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !20, file: !9, line: 637, baseType: !233, size: 64, offset: 7936)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !20, file: !9, line: 638, baseType: !74, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !8, file: !9, line: 312, baseType: !19, size: 64, offset: 192)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !8, file: !9, line: 314, baseType: !73, size: 64, offset: 256)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !8, file: !9, line: 315, baseType: !91, size: 64, offset: 320)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !8, file: !9, line: 316, baseType: !3780, size: 64, offset: 384)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !9, line: 69, size: 832, elements: !3782)
!3782 = !{!3783, !3784, !3785, !3788, !3789}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3781, file: !9, line: 70, baseType: !19, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3781, file: !9, line: 71, baseType: !12, size: 128, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3781, file: !9, line: 72, baseType: !3786, size: 64, offset: 192)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !9, line: 72, flags: DIFlagFwdDecl)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3781, file: !9, line: 73, baseType: !95, size: 8, offset: 256)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3781, file: !9, line: 74, baseType: !113, size: 512, offset: 320)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !8, file: !9, line: 318, baseType: !74, size: 32, offset: 448)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !8, file: !9, line: 319, baseType: !104, size: 16, offset: 480)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !8, file: !9, line: 320, baseType: !104, size: 16, offset: 496)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !8, file: !9, line: 321, baseType: !104, size: 16, offset: 512)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !8, file: !9, line: 322, baseType: !104, size: 16, offset: 528)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !8, file: !9, line: 323, baseType: !74, size: 32, offset: 544)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !8, file: !9, line: 324, baseType: !1240, size: 8, offset: 576)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !8, file: !9, line: 325, baseType: !1240, size: 8, offset: 584)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !8, file: !9, line: 330, baseType: !1240, size: 8, offset: 592)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !8, file: !9, line: 331, baseType: !1240, size: 8, offset: 600)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !8, file: !9, line: 332, baseType: !1240, size: 8, offset: 608)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !8, file: !9, line: 333, baseType: !1240, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !8, file: !9, line: 334, baseType: !1240, size: 8, offset: 624)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !8, file: !9, line: 335, baseType: !1240, size: 8, offset: 632)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !8, file: !9, line: 336, baseType: !748, size: 16, offset: 640)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !8, file: !9, line: 337, baseType: !3806, size: 64, offset: 704)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !8, file: !9, line: 339, baseType: !3808, size: 64, offset: 768)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !9, line: 858, size: 2048, elements: !3810)
!3810 = !{!3811, !3812, !3813, !3825, !3829, !3833, !3837, !3839, !3840, !3844, !3863, !3864, !3865}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3809, file: !9, line: 859, baseType: !12, size: 128)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3809, file: !9, line: 860, baseType: !44, size: 64, offset: 128)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3809, file: !9, line: 861, baseType: !3814, size: 64, offset: 192)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3816)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3391, line: 38, size: 256, elements: !3817)
!3817 = !{!3818, !3819, !3820, !3821, !3822, !3823, !3824}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3816, file: !3391, line: 39, baseType: !81, size: 32)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3816, file: !3391, line: 39, baseType: !81, size: 32, offset: 32)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !3816, file: !3391, line: 40, baseType: !81, size: 32, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !3816, file: !3391, line: 40, baseType: !81, size: 32, offset: 96)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3816, file: !3391, line: 41, baseType: !81, size: 32, offset: 128)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !3816, file: !3391, line: 41, baseType: !81, size: 32, offset: 160)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3816, file: !3391, line: 42, baseType: !3410, size: 64, offset: 192)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3809, file: !9, line: 862, baseType: !3826, size: 64, offset: 256)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!6, !7, !3814}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3809, file: !9, line: 863, baseType: !3830, size: 64, offset: 320)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{null, !7}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3809, file: !9, line: 864, baseType: !3834, size: 64, offset: 384)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!6, !7, !3421}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3809, file: !9, line: 865, baseType: !3838, size: 64, offset: 448)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3809, file: !9, line: 866, baseType: !3830, size: 64, offset: 512)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !3809, file: !9, line: 867, baseType: !3841, size: 64, offset: 576)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!6, !7, !6}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !3809, file: !9, line: 868, baseType: !3845, size: 64, offset: 640)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3847)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !9, line: 795, size: 384, elements: !3848)
!3848 = !{!3849, !3855, !3859, !3860, !3861, !3862}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !3847, file: !9, line: 797, baseType: !3850, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!3853, !7, !3854}
!3853 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !9, line: 772, baseType: !74)
!3854 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !9, line: 180, baseType: !74)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !3847, file: !9, line: 801, baseType: !3856, size: 64, offset: 64)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!3853, !7}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !3847, file: !9, line: 804, baseType: !3856, size: 64, offset: 128)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !3847, file: !9, line: 807, baseType: !3830, size: 64, offset: 192)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !3847, file: !9, line: 808, baseType: !3830, size: 64, offset: 256)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3847, file: !9, line: 811, baseType: !3830, size: 64, offset: 320)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3809, file: !9, line: 869, baseType: !219, size: 64, offset: 704)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3809, file: !9, line: 870, baseType: !3373, size: 1152, offset: 768)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3809, file: !9, line: 871, baseType: !3866, size: 128, offset: 1920)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !9, line: 759, size: 128, elements: !3867)
!3867 = !{!3868, !3869}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3866, file: !9, line: 760, baseType: !126)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3866, file: !9, line: 761, baseType: !12, size: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !8, file: !9, line: 340, baseType: !37, size: 64, offset: 832)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !8, file: !9, line: 346, baseType: !3622, size: 128, offset: 896)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !8, file: !9, line: 348, baseType: !3873, size: 32, offset: 1024)
!3873 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !9, line: 155, baseType: !6)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !8, file: !9, line: 351, baseType: !74, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !8, file: !9, line: 352, baseType: !1240, size: 8, offset: 1064)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !8, file: !9, line: 353, baseType: !74, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !8, file: !9, line: 355, baseType: !74, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !8, file: !9, line: 356, baseType: !74, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !8, file: !9, line: 357, baseType: !74, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !8, file: !9, line: 358, baseType: !74, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !8, file: !9, line: 359, baseType: !74, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !8, file: !9, line: 360, baseType: !74, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !8, file: !9, line: 361, baseType: !74, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !8, file: !9, line: 362, baseType: !74, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !8, file: !9, line: 364, baseType: !74, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !8, file: !9, line: 365, baseType: !74, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !8, file: !9, line: 369, baseType: !74, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !8, file: !9, line: 370, baseType: !74, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !8, file: !9, line: 371, baseType: !74, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !8, file: !9, line: 374, baseType: !74, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !8, file: !9, line: 376, baseType: !74, size: 32, offset: 1120)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !8, file: !9, line: 377, baseType: !74, size: 32, offset: 1152)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !8, file: !9, line: 380, baseType: !3894, size: 64, offset: 1216)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !9, line: 303, flags: DIFlagFwdDecl)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !8, file: !9, line: 381, baseType: !74, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !8, file: !9, line: 383, baseType: !6, size: 32, offset: 1312)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !8, file: !9, line: 385, baseType: !74, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !8, file: !9, line: 387, baseType: !3854, size: 32, offset: 1376)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !8, file: !9, line: 388, baseType: !109, size: 5568, offset: 1408)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !8, file: !9, line: 390, baseType: !6, size: 32, offset: 6976)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !8, file: !9, line: 396, baseType: !74, size: 32, offset: 7008)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !8, file: !9, line: 397, baseType: !3904, size: 8704, offset: 7040)
!3904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8704, elements: !3905)
!3905 = !{!3906}
!3906 = !DISubrange(count: 17)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !8, file: !9, line: 399, baseType: !374, size: 8, offset: 15744)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !8, file: !9, line: 401, baseType: !74, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !8, file: !9, line: 402, baseType: !74, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !8, file: !9, line: 403, baseType: !74, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !8, file: !9, line: 404, baseType: !74, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !8, file: !9, line: 405, baseType: !74, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !8, file: !9, line: 407, baseType: !74, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !8, file: !9, line: 408, baseType: !74, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !8, file: !9, line: 409, baseType: !74, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !8, file: !9, line: 410, baseType: !74, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !8, file: !9, line: 411, baseType: !74, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !8, file: !9, line: 412, baseType: !74, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !8, file: !9, line: 413, baseType: !74, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !8, file: !9, line: 414, baseType: !74, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !8, file: !9, line: 415, baseType: !74, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !8, file: !9, line: 416, baseType: !74, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !8, file: !9, line: 417, baseType: !74, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !8, file: !9, line: 418, baseType: !74, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !8, file: !9, line: 419, baseType: !74, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !8, file: !9, line: 420, baseType: !74, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !8, file: !9, line: 421, baseType: !74, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !8, file: !9, line: 422, baseType: !74, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !8, file: !9, line: 423, baseType: !74, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !8, file: !9, line: 424, baseType: !74, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !8, file: !9, line: 425, baseType: !74, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !8, file: !9, line: 426, baseType: !74, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !8, file: !9, line: 427, baseType: !74, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !8, file: !9, line: 435, baseType: !74, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !8, file: !9, line: 441, baseType: !74, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !8, file: !9, line: 442, baseType: !74, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !8, file: !9, line: 443, baseType: !74, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !8, file: !9, line: 444, baseType: !74, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !8, file: !9, line: 445, baseType: !74, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !8, file: !9, line: 446, baseType: !74, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !8, file: !9, line: 447, baseType: !74, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !8, file: !9, line: 448, baseType: !74, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !8, file: !9, line: 449, baseType: !74, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !8, file: !9, line: 450, baseType: !3945, size: 16, offset: 15792)
!3945 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !9, line: 206, baseType: !104)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !8, file: !9, line: 451, baseType: !636, size: 32, offset: 15808)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !8, file: !9, line: 453, baseType: !3948, size: 512, offset: 15840)
!3948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 512, elements: !1629)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !8, file: !9, line: 454, baseType: !522, size: 64, offset: 16384)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !8, file: !9, line: 455, baseType: !233, size: 64, offset: 16448)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !8, file: !9, line: 456, baseType: !6, size: 32, offset: 16512)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !8, file: !9, line: 457, baseType: !3953, size: 1088, offset: 16576)
!3953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 1088, elements: !3905)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !8, file: !9, line: 458, baseType: !3953, size: 1088, offset: 17664)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !8, file: !9, line: 469, baseType: !219, size: 64, offset: 18752)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !8, file: !9, line: 471, baseType: !3957, size: 64, offset: 18816)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !3, line: 22, size: 384, elements: !3959)
!3959 = !{!3960, !3977, !3978, !3979, !3980, !3981, !3982, !3983}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3958, file: !3, line: 23, baseType: !3961, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3963)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd_ops", file: !3, line: 16, size: 192, elements: !3964)
!3964 = !{!3965, !3969, !3973}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3963, file: !3, line: 17, baseType: !3966, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!198, !7, !415, !213, !73}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3963, file: !3, line: 18, baseType: !3970, size: 64, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!198, !7, !415, !213, !2021}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "set_size", scope: !3963, file: !3, line: 19, baseType: !3974, size: 64, offset: 128)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!6, !7, !213}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3958, file: !3, line: 24, baseType: !233, size: 64, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3958, file: !3, line: 25, baseType: !1072, size: 192, offset: 128)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3958, file: !3, line: 26, baseType: !74, size: 32, offset: 320)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !3958, file: !3, line: 27, baseType: !748, size: 16, offset: 352)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !3958, file: !3, line: 28, baseType: !1240, size: 8, offset: 368)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !3958, file: !3, line: 29, baseType: !74, size: 1, offset: 376, flags: DIFlagBitField, extraData: i64 376)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !3958, file: !3, line: 30, baseType: !74, size: 1, offset: 377, flags: DIFlagBitField, extraData: i64 376)
!3984 = !DIDerivedType(tag: DW_TAG_member, scope: !8, file: !9, line: 478, baseType: !3985, size: 64, offset: 18880)
!3985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !8, file: !9, line: 478, size: 64, elements: !3986)
!3986 = !{!3987, !4015}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !3985, file: !9, line: 479, baseType: !3988, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !3990, line: 323, size: 1024, elements: !3991)
!3990 = !DIFile(filename: "drivers/pci/pci.h", directory: "/home/lizy2001/genbc/linux")
!3991 = !{!3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4014}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3989, file: !3990, line: 324, baseType: !6, size: 32)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !3989, file: !3990, line: 325, baseType: !6, size: 32, offset: 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !3989, file: !3990, line: 326, baseType: !80, size: 32, offset: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !3989, file: !3990, line: 327, baseType: !748, size: 16, offset: 96)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "total_VFs", scope: !3989, file: !3990, line: 328, baseType: !748, size: 16, offset: 112)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "initial_VFs", scope: !3989, file: !3990, line: 329, baseType: !748, size: 16, offset: 128)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "num_VFs", scope: !3989, file: !3990, line: 330, baseType: !748, size: 16, offset: 144)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3989, file: !3990, line: 331, baseType: !748, size: 16, offset: 160)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !3989, file: !3990, line: 332, baseType: !748, size: 16, offset: 176)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "vf_device", scope: !3989, file: !3990, line: 333, baseType: !748, size: 16, offset: 192)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "pgsz", scope: !3989, file: !3990, line: 334, baseType: !80, size: 32, offset: 224)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3989, file: !3990, line: 335, baseType: !1240, size: 8, offset: 256)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "max_VF_buses", scope: !3989, file: !3990, line: 336, baseType: !1240, size: 8, offset: 264)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "driver_max_VFs", scope: !3989, file: !3990, line: 337, baseType: !748, size: 16, offset: 272)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3989, file: !3990, line: 338, baseType: !7, size: 64, offset: 320)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3989, file: !3990, line: 339, baseType: !7, size: 64, offset: 384)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3989, file: !3990, line: 340, baseType: !80, size: 32, offset: 448)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !3989, file: !3990, line: 341, baseType: !1240, size: 8, offset: 480)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !3989, file: !3990, line: 342, baseType: !748, size: 16, offset: 496)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !3989, file: !3990, line: 343, baseType: !748, size: 16, offset: 512)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "barsz", scope: !3989, file: !3990, line: 344, baseType: !4013, size: 384, offset: 576)
!4013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 384, elements: !1519)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !3989, file: !3990, line: 345, baseType: !374, size: 8, offset: 960)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !3985, file: !9, line: 480, baseType: !7, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !8, file: !9, line: 482, baseType: !748, size: 16, offset: 18944)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !8, file: !9, line: 483, baseType: !1240, size: 8, offset: 18960)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !8, file: !9, line: 497, baseType: !748, size: 16, offset: 18976)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !8, file: !9, line: 498, baseType: !36, size: 64, offset: 19008)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !8, file: !9, line: 499, baseType: !213, size: 64, offset: 19072)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !8, file: !9, line: 500, baseType: !167, size: 64, offset: 19136)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !8, file: !9, line: 502, baseType: !48, size: 64, offset: 19200)
!4023 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4024, retainedTypes: !4050, globals: !4052, splitDebugInlining: false, nameTableKind: None)
!4024 = !{!764, !966, !1191, !1314, !2271, !2366, !3053, !3072, !3117, !3382, !3467, !3554, !3562, !4025, !4038, !4045}
!4025 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pci_dev_flags", file: !9, line: 207, baseType: !74, size: 32, elements: !4026)
!4026 = !{!4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037}
!4027 = !DIEnumerator(name: "PCI_DEV_FLAGS_MSI_INTX_DISABLE_BUG", value: 1, isUnsigned: true)
!4028 = !DIEnumerator(name: "PCI_DEV_FLAGS_NO_D3", value: 2, isUnsigned: true)
!4029 = !DIEnumerator(name: "PCI_DEV_FLAGS_ASSIGNED", value: 4, isUnsigned: true)
!4030 = !DIEnumerator(name: "PCI_DEV_FLAGS_ACS_ENABLED_QUIRK", value: 8, isUnsigned: true)
!4031 = !DIEnumerator(name: "PCI_DEV_FLAG_PCIE_BRIDGE_ALIAS", value: 32, isUnsigned: true)
!4032 = !DIEnumerator(name: "PCI_DEV_FLAGS_NO_BUS_RESET", value: 64, isUnsigned: true)
!4033 = !DIEnumerator(name: "PCI_DEV_FLAGS_NO_PM_RESET", value: 128, isUnsigned: true)
!4034 = !DIEnumerator(name: "PCI_DEV_FLAGS_VPD_REF_F0", value: 256, isUnsigned: true)
!4035 = !DIEnumerator(name: "PCI_DEV_FLAGS_BRIDGE_XLATE_ROOT", value: 512, isUnsigned: true)
!4036 = !DIEnumerator(name: "PCI_DEV_FLAGS_NO_FLR_RESET", value: 1024, isUnsigned: true)
!4037 = !DIEnumerator(name: "PCI_DEV_FLAGS_NO_RELAXED_ORDERING", value: 2048, isUnsigned: true)
!4038 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4039, line: 305, baseType: !74, size: 32, elements: !4040)
!4039 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!4040 = !{!4041, !4042, !4043, !4044}
!4041 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!4042 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!4043 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!4044 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!4045 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4046, line: 10, baseType: !74, size: 32, elements: !4047)
!4046 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!4047 = !{!4048, !4049}
!4048 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!4049 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!4050 = !{!632, !73, !748, !202, !6, !3806, !4051, !1099, !48, !7, !108}
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!4052 = !{!0, !4053, !4055, !4057, !4059, !4061, !4063, !4065, !4067, !4069, !4071, !4073, !4075, !4077, !4079, !4081, !4083, !4085, !4087, !4089, !4091, !4093, !4095, !4097, !4099}
!4053 = !DIGlobalVariableExpression(var: !4054, expr: !DIExpression())
!4054 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_f0_vpd_link232", scope: !4023, file: !3, line: 543, type: !73, isLocal: true, isDefinition: true)
!4055 = !DIGlobalVariableExpression(var: !4056, expr: !DIExpression())
!4056 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_blacklist_vpd233", scope: !4023, file: !3, line: 560, type: !73, isLocal: true, isDefinition: true)
!4057 = !DIGlobalVariableExpression(var: !4058, expr: !DIExpression())
!4058 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_blacklist_vpd234", scope: !4023, file: !3, line: 561, type: !73, isLocal: true, isDefinition: true)
!4059 = !DIGlobalVariableExpression(var: !4060, expr: !DIExpression())
!4060 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_blacklist_vpd235", scope: !4023, file: !3, line: 562, type: !73, isLocal: true, isDefinition: true)
!4061 = !DIGlobalVariableExpression(var: !4062, expr: !DIExpression())
!4062 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_blacklist_vpd236", scope: !4023, file: !3, line: 563, type: !73, isLocal: true, isDefinition: true)
!4063 = !DIGlobalVariableExpression(var: !4064, expr: !DIExpression())
!4064 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_blacklist_vpd237", scope: !4023, file: !3, line: 564, type: !73, isLocal: true, isDefinition: true)
!4065 = !DIGlobalVariableExpression(var: !4066, expr: !DIExpression())
!4066 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_blacklist_vpd238", scope: !4023, file: !3, line: 565, type: !73, isLocal: true, isDefinition: true)
!4067 = !DIGlobalVariableExpression(var: !4068, expr: !DIExpression())
!4068 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_blacklist_vpd239", scope: !4023, file: !3, line: 566, type: !73, isLocal: true, isDefinition: true)
!4069 = !DIGlobalVariableExpression(var: !4070, expr: !DIExpression())
!4070 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_blacklist_vpd240", scope: !4023, file: !3, line: 567, type: !73, isLocal: true, isDefinition: true)
!4071 = !DIGlobalVariableExpression(var: !4072, expr: !DIExpression())
!4072 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_blacklist_vpd241", scope: !4023, file: !3, line: 568, type: !73, isLocal: true, isDefinition: true)
!4073 = !DIGlobalVariableExpression(var: !4074, expr: !DIExpression())
!4074 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_blacklist_vpd242", scope: !4023, file: !3, line: 569, type: !73, isLocal: true, isDefinition: true)
!4075 = !DIGlobalVariableExpression(var: !4076, expr: !DIExpression())
!4076 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_blacklist_vpd243", scope: !4023, file: !3, line: 570, type: !73, isLocal: true, isDefinition: true)
!4077 = !DIGlobalVariableExpression(var: !4078, expr: !DIExpression())
!4078 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_blacklist_vpd244", scope: !4023, file: !3, line: 571, type: !73, isLocal: true, isDefinition: true)
!4079 = !DIGlobalVariableExpression(var: !4080, expr: !DIExpression())
!4080 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_blacklist_vpd245", scope: !4023, file: !3, line: 573, type: !73, isLocal: true, isDefinition: true)
!4081 = !DIGlobalVariableExpression(var: !4082, expr: !DIExpression())
!4082 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_blacklist_vpd246", scope: !4023, file: !3, line: 578, type: !73, isLocal: true, isDefinition: true)
!4083 = !DIGlobalVariableExpression(var: !4084, expr: !DIExpression())
!4084 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_brcm_570x_limit_vpd247", scope: !4023, file: !3, line: 608, type: !73, isLocal: true, isDefinition: true)
!4085 = !DIGlobalVariableExpression(var: !4086, expr: !DIExpression())
!4086 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_brcm_570x_limit_vpd248", scope: !4023, file: !3, line: 611, type: !73, isLocal: true, isDefinition: true)
!4087 = !DIGlobalVariableExpression(var: !4088, expr: !DIExpression())
!4088 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_brcm_570x_limit_vpd249", scope: !4023, file: !3, line: 614, type: !73, isLocal: true, isDefinition: true)
!4089 = !DIGlobalVariableExpression(var: !4090, expr: !DIExpression())
!4090 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_brcm_570x_limit_vpd250", scope: !4023, file: !3, line: 617, type: !73, isLocal: true, isDefinition: true)
!4091 = !DIGlobalVariableExpression(var: !4092, expr: !DIExpression())
!4092 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_brcm_570x_limit_vpd251", scope: !4023, file: !3, line: 620, type: !73, isLocal: true, isDefinition: true)
!4093 = !DIGlobalVariableExpression(var: !4094, expr: !DIExpression())
!4094 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_brcm_570x_limit_vpd252", scope: !4023, file: !3, line: 623, type: !73, isLocal: true, isDefinition: true)
!4095 = !DIGlobalVariableExpression(var: !4096, expr: !DIExpression())
!4096 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_quirk_chelsio_extend_vpd253", scope: !4023, file: !3, line: 650, type: !73, isLocal: true, isDefinition: true)
!4097 = !DIGlobalVariableExpression(var: !4098, expr: !DIExpression())
!4098 = distinct !DIGlobalVariable(name: "pci_vpd_f0_ops", scope: !4023, file: !3, line: 363, type: !3962, isLocal: true, isDefinition: true)
!4099 = !DIGlobalVariableExpression(var: !4100, expr: !DIExpression())
!4100 = distinct !DIGlobalVariable(name: "pci_vpd_ops", scope: !4023, file: !3, line: 313, type: !3962, isLocal: true, isDefinition: true)
!4101 = !{i32 7, !"Dwarf Version", i32 4}
!4102 = !{i32 2, !"Debug Info Version", i32 3}
!4103 = !{i32 1, !"wchar_size", i32 2}
!4104 = !{i32 1, !"Code Model", i32 2}
!4105 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4106 = distinct !DISubprogram(name: "pci_read_vpd", scope: !3, file: !3, line: 40, type: !3967, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4107 = !DILocalVariable(name: "dev", arg: 1, scope: !4106, file: !3, line: 40, type: !7)
!4108 = !DILocation(line: 40, column: 38, scope: !4106)
!4109 = !DILocalVariable(name: "pos", arg: 2, scope: !4106, file: !3, line: 40, type: !415)
!4110 = !DILocation(line: 40, column: 50, scope: !4106)
!4111 = !DILocalVariable(name: "count", arg: 3, scope: !4106, file: !3, line: 40, type: !213)
!4112 = !DILocation(line: 40, column: 62, scope: !4106)
!4113 = !DILocalVariable(name: "buf", arg: 4, scope: !4106, file: !3, line: 40, type: !73)
!4114 = !DILocation(line: 40, column: 75, scope: !4106)
!4115 = !DILocation(line: 42, column: 7, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4106, file: !3, line: 42, column: 6)
!4117 = !DILocation(line: 42, column: 12, scope: !4116)
!4118 = !DILocation(line: 42, column: 16, scope: !4116)
!4119 = !DILocation(line: 42, column: 20, scope: !4116)
!4120 = !DILocation(line: 42, column: 25, scope: !4116)
!4121 = !DILocation(line: 42, column: 30, scope: !4116)
!4122 = !DILocation(line: 42, column: 6, scope: !4106)
!4123 = !DILocation(line: 43, column: 3, scope: !4116)
!4124 = !DILocation(line: 44, column: 9, scope: !4106)
!4125 = !DILocation(line: 44, column: 14, scope: !4106)
!4126 = !DILocation(line: 44, column: 19, scope: !4106)
!4127 = !DILocation(line: 44, column: 24, scope: !4106)
!4128 = !DILocation(line: 44, column: 29, scope: !4106)
!4129 = !DILocation(line: 44, column: 34, scope: !4106)
!4130 = !DILocation(line: 44, column: 39, scope: !4106)
!4131 = !DILocation(line: 44, column: 46, scope: !4106)
!4132 = !DILocation(line: 44, column: 2, scope: !4106)
!4133 = !DILocation(line: 45, column: 1, scope: !4106)
!4134 = distinct !DISubprogram(name: "pci_write_vpd", scope: !3, file: !3, line: 55, type: !3971, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4135 = !DILocalVariable(name: "dev", arg: 1, scope: !4134, file: !3, line: 55, type: !7)
!4136 = !DILocation(line: 55, column: 39, scope: !4134)
!4137 = !DILocalVariable(name: "pos", arg: 2, scope: !4134, file: !3, line: 55, type: !415)
!4138 = !DILocation(line: 55, column: 51, scope: !4134)
!4139 = !DILocalVariable(name: "count", arg: 3, scope: !4134, file: !3, line: 55, type: !213)
!4140 = !DILocation(line: 55, column: 63, scope: !4134)
!4141 = !DILocalVariable(name: "buf", arg: 4, scope: !4134, file: !3, line: 55, type: !2021)
!4142 = !DILocation(line: 55, column: 82, scope: !4134)
!4143 = !DILocation(line: 57, column: 7, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4134, file: !3, line: 57, column: 6)
!4145 = !DILocation(line: 57, column: 12, scope: !4144)
!4146 = !DILocation(line: 57, column: 16, scope: !4144)
!4147 = !DILocation(line: 57, column: 20, scope: !4144)
!4148 = !DILocation(line: 57, column: 25, scope: !4144)
!4149 = !DILocation(line: 57, column: 30, scope: !4144)
!4150 = !DILocation(line: 57, column: 6, scope: !4134)
!4151 = !DILocation(line: 58, column: 3, scope: !4144)
!4152 = !DILocation(line: 59, column: 9, scope: !4134)
!4153 = !DILocation(line: 59, column: 14, scope: !4134)
!4154 = !DILocation(line: 59, column: 19, scope: !4134)
!4155 = !DILocation(line: 59, column: 24, scope: !4134)
!4156 = !DILocation(line: 59, column: 30, scope: !4134)
!4157 = !DILocation(line: 59, column: 35, scope: !4134)
!4158 = !DILocation(line: 59, column: 40, scope: !4134)
!4159 = !DILocation(line: 59, column: 47, scope: !4134)
!4160 = !DILocation(line: 59, column: 2, scope: !4134)
!4161 = !DILocation(line: 60, column: 1, scope: !4134)
!4162 = distinct !DISubprogram(name: "pci_set_vpd_size", scope: !3, file: !3, line: 68, type: !3975, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4163 = !DILocalVariable(name: "dev", arg: 1, scope: !4162, file: !3, line: 68, type: !7)
!4164 = !DILocation(line: 68, column: 38, scope: !4162)
!4165 = !DILocalVariable(name: "len", arg: 2, scope: !4162, file: !3, line: 68, type: !213)
!4166 = !DILocation(line: 68, column: 50, scope: !4162)
!4167 = !DILocation(line: 70, column: 7, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 70, column: 6)
!4169 = !DILocation(line: 70, column: 12, scope: !4168)
!4170 = !DILocation(line: 70, column: 16, scope: !4168)
!4171 = !DILocation(line: 70, column: 20, scope: !4168)
!4172 = !DILocation(line: 70, column: 25, scope: !4168)
!4173 = !DILocation(line: 70, column: 30, scope: !4168)
!4174 = !DILocation(line: 70, column: 6, scope: !4162)
!4175 = !DILocation(line: 71, column: 3, scope: !4168)
!4176 = !DILocation(line: 72, column: 9, scope: !4162)
!4177 = !DILocation(line: 72, column: 14, scope: !4162)
!4178 = !DILocation(line: 72, column: 19, scope: !4162)
!4179 = !DILocation(line: 72, column: 24, scope: !4162)
!4180 = !DILocation(line: 72, column: 33, scope: !4162)
!4181 = !DILocation(line: 72, column: 38, scope: !4162)
!4182 = !DILocation(line: 72, column: 2, scope: !4162)
!4183 = !DILocation(line: 73, column: 1, scope: !4162)
!4184 = !DILocalVariable(name: "dev", arg: 1, scope: !2, file: !3, line: 369, type: !7)
!4185 = !DILocation(line: 369, column: 34, scope: !2)
!4186 = !DILocalVariable(name: "vpd", scope: !2, file: !3, line: 371, type: !3957)
!4187 = !DILocation(line: 371, column: 18, scope: !2)
!4188 = !DILocalVariable(name: "cap", scope: !2, file: !3, line: 372, type: !1240)
!4189 = !DILocation(line: 372, column: 5, scope: !2)
!4190 = !DILocation(line: 374, column: 28, scope: !2)
!4191 = !DILocation(line: 374, column: 8, scope: !2)
!4192 = !DILocation(line: 374, column: 6, scope: !2)
!4193 = !DILocation(line: 375, column: 7, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !2, file: !3, line: 375, column: 6)
!4195 = !DILocation(line: 375, column: 6, scope: !2)
!4196 = !DILocation(line: 376, column: 3, scope: !4194)
!4197 = !DILocation(line: 378, column: 8, scope: !2)
!4198 = !DILocation(line: 378, column: 6, scope: !2)
!4199 = !DILocation(line: 379, column: 7, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !2, file: !3, line: 379, column: 6)
!4201 = !DILocation(line: 379, column: 6, scope: !2)
!4202 = !DILocation(line: 380, column: 3, scope: !4200)
!4203 = !DILocation(line: 382, column: 2, scope: !2)
!4204 = !DILocation(line: 382, column: 7, scope: !2)
!4205 = !DILocation(line: 382, column: 11, scope: !2)
!4206 = !DILocation(line: 383, column: 6, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !2, file: !3, line: 383, column: 6)
!4208 = !DILocation(line: 383, column: 11, scope: !4207)
!4209 = !DILocation(line: 383, column: 21, scope: !4207)
!4210 = !DILocation(line: 383, column: 6, scope: !2)
!4211 = !DILocation(line: 384, column: 3, scope: !4207)
!4212 = !DILocation(line: 384, column: 8, scope: !4207)
!4213 = !DILocation(line: 384, column: 12, scope: !4207)
!4214 = !DILocation(line: 386, column: 3, scope: !4207)
!4215 = !DILocation(line: 386, column: 8, scope: !4207)
!4216 = !DILocation(line: 386, column: 12, scope: !4207)
!4217 = !DILocation(line: 387, column: 2, scope: !2)
!4218 = !DILocation(line: 387, column: 2, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !2, file: !3, line: 387, column: 2)
!4220 = !DILocation(line: 388, column: 13, scope: !2)
!4221 = !DILocation(line: 388, column: 2, scope: !2)
!4222 = !DILocation(line: 388, column: 7, scope: !2)
!4223 = !DILocation(line: 388, column: 11, scope: !2)
!4224 = !DILocation(line: 389, column: 2, scope: !2)
!4225 = !DILocation(line: 389, column: 7, scope: !2)
!4226 = !DILocation(line: 389, column: 12, scope: !2)
!4227 = !DILocation(line: 390, column: 2, scope: !2)
!4228 = !DILocation(line: 390, column: 7, scope: !2)
!4229 = !DILocation(line: 390, column: 13, scope: !2)
!4230 = !DILocation(line: 391, column: 13, scope: !2)
!4231 = !DILocation(line: 391, column: 2, scope: !2)
!4232 = !DILocation(line: 391, column: 7, scope: !2)
!4233 = !DILocation(line: 391, column: 11, scope: !2)
!4234 = !DILocation(line: 392, column: 2, scope: !2)
!4235 = !DILocation(line: 393, column: 1, scope: !2)
!4236 = distinct !DISubprogram(name: "kzalloc", scope: !4039, file: !4039, line: 662, type: !4237, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!73, !213, !632}
!4239 = !DILocalVariable(name: "s", arg: 1, scope: !4240, file: !4039, line: 445, type: !831)
!4240 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !4039, file: !4039, line: 445, type: !4241, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!73, !831, !632, !213}
!4243 = !DILocation(line: 445, column: 72, scope: !4240, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 552, column: 10, scope: !4245, inlinedAt: !4248)
!4245 = distinct !DILexicalBlock(scope: !4246, file: !4039, line: 540, column: 34)
!4246 = distinct !DILexicalBlock(scope: !4247, file: !4039, line: 540, column: 6)
!4247 = distinct !DISubprogram(name: "kmalloc", scope: !4039, file: !4039, line: 538, type: !4237, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4248 = distinct !DILocation(line: 664, column: 9, scope: !4236)
!4249 = !DILocalVariable(name: "flags", arg: 2, scope: !4240, file: !4039, line: 446, type: !632)
!4250 = !DILocation(line: 446, column: 9, scope: !4240, inlinedAt: !4244)
!4251 = !DILocalVariable(name: "size", arg: 3, scope: !4240, file: !4039, line: 446, type: !213)
!4252 = !DILocation(line: 446, column: 23, scope: !4240, inlinedAt: !4244)
!4253 = !DILocalVariable(name: "ret", scope: !4240, file: !4039, line: 448, type: !73)
!4254 = !DILocation(line: 448, column: 8, scope: !4240, inlinedAt: !4244)
!4255 = !DILocalVariable(name: "flags", arg: 1, scope: !4256, file: !4039, line: 318, type: !632)
!4256 = distinct !DISubprogram(name: "kmalloc_type", scope: !4039, file: !4039, line: 318, type: !4257, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!4038, !632}
!4259 = !DILocation(line: 318, column: 67, scope: !4256, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 553, column: 20, scope: !4245, inlinedAt: !4248)
!4261 = !DILocalVariable(name: "size", arg: 1, scope: !4262, file: !4039, line: 346, type: !213)
!4262 = distinct !DISubprogram(name: "kmalloc_index", scope: !4039, file: !4039, line: 346, type: !4263, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!74, !213}
!4265 = !DILocation(line: 346, column: 58, scope: !4262, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 547, column: 11, scope: !4245, inlinedAt: !4248)
!4267 = !DILocalVariable(name: "size", arg: 1, scope: !4268, file: !4039, line: 472, type: !213)
!4268 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !4039, file: !4039, line: 472, type: !4269, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!73, !213, !632, !74}
!4271 = !DILocation(line: 472, column: 28, scope: !4268, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 481, column: 9, scope: !4273, inlinedAt: !4274)
!4273 = distinct !DISubprogram(name: "kmalloc_large", scope: !4039, file: !4039, line: 478, type: !4237, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4274 = distinct !DILocation(line: 545, column: 11, scope: !4275, inlinedAt: !4248)
!4275 = distinct !DILexicalBlock(scope: !4245, file: !4039, line: 544, column: 7)
!4276 = !DILocalVariable(name: "flags", arg: 2, scope: !4268, file: !4039, line: 472, type: !632)
!4277 = !DILocation(line: 472, column: 40, scope: !4268, inlinedAt: !4272)
!4278 = !DILocalVariable(name: "order", arg: 3, scope: !4268, file: !4039, line: 472, type: !74)
!4279 = !DILocation(line: 472, column: 60, scope: !4268, inlinedAt: !4272)
!4280 = !DILocalVariable(name: "size", arg: 1, scope: !4273, file: !4039, line: 478, type: !213)
!4281 = !DILocation(line: 478, column: 51, scope: !4273, inlinedAt: !4274)
!4282 = !DILocalVariable(name: "flags", arg: 2, scope: !4273, file: !4039, line: 478, type: !632)
!4283 = !DILocation(line: 478, column: 63, scope: !4273, inlinedAt: !4274)
!4284 = !DILocalVariable(name: "order", scope: !4273, file: !4039, line: 480, type: !74)
!4285 = !DILocation(line: 480, column: 15, scope: !4273, inlinedAt: !4274)
!4286 = !DILocalVariable(name: "size", arg: 1, scope: !4247, file: !4039, line: 538, type: !213)
!4287 = !DILocation(line: 538, column: 45, scope: !4247, inlinedAt: !4248)
!4288 = !DILocalVariable(name: "flags", arg: 2, scope: !4247, file: !4039, line: 538, type: !632)
!4289 = !DILocation(line: 538, column: 57, scope: !4247, inlinedAt: !4248)
!4290 = !DILocalVariable(name: "index", scope: !4245, file: !4039, line: 542, type: !74)
!4291 = !DILocation(line: 542, column: 16, scope: !4245, inlinedAt: !4248)
!4292 = !DILocalVariable(name: "size", arg: 1, scope: !4236, file: !4039, line: 662, type: !213)
!4293 = !DILocation(line: 662, column: 36, scope: !4236)
!4294 = !DILocalVariable(name: "flags", arg: 2, scope: !4236, file: !4039, line: 662, type: !632)
!4295 = !DILocation(line: 662, column: 48, scope: !4236)
!4296 = !DILocation(line: 664, column: 17, scope: !4236)
!4297 = !DILocation(line: 664, column: 23, scope: !4236)
!4298 = !DILocation(line: 664, column: 29, scope: !4236)
!4299 = !DILocation(line: 540, column: 27, scope: !4246, inlinedAt: !4248)
!4300 = !DILocation(line: 540, column: 6, scope: !4246, inlinedAt: !4248)
!4301 = !DILocation(line: 540, column: 6, scope: !4247, inlinedAt: !4248)
!4302 = !DILocation(line: 544, column: 7, scope: !4275, inlinedAt: !4248)
!4303 = !DILocation(line: 544, column: 12, scope: !4275, inlinedAt: !4248)
!4304 = !DILocation(line: 544, column: 7, scope: !4245, inlinedAt: !4248)
!4305 = !DILocation(line: 545, column: 25, scope: !4275, inlinedAt: !4248)
!4306 = !DILocation(line: 545, column: 31, scope: !4275, inlinedAt: !4248)
!4307 = !DILocation(line: 480, column: 33, scope: !4273, inlinedAt: !4274)
!4308 = !DILocation(line: 480, column: 23, scope: !4273, inlinedAt: !4274)
!4309 = !DILocation(line: 481, column: 29, scope: !4273, inlinedAt: !4274)
!4310 = !DILocation(line: 481, column: 35, scope: !4273, inlinedAt: !4274)
!4311 = !DILocation(line: 481, column: 42, scope: !4273, inlinedAt: !4274)
!4312 = !DILocation(line: 474, column: 23, scope: !4268, inlinedAt: !4272)
!4313 = !DILocation(line: 474, column: 29, scope: !4268, inlinedAt: !4272)
!4314 = !DILocation(line: 474, column: 36, scope: !4268, inlinedAt: !4272)
!4315 = !DILocation(line: 474, column: 9, scope: !4268, inlinedAt: !4272)
!4316 = !DILocation(line: 545, column: 4, scope: !4275, inlinedAt: !4248)
!4317 = !DILocation(line: 547, column: 25, scope: !4245, inlinedAt: !4248)
!4318 = !DILocation(line: 348, column: 7, scope: !4319, inlinedAt: !4266)
!4319 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 348, column: 6)
!4320 = !DILocation(line: 348, column: 6, scope: !4262, inlinedAt: !4266)
!4321 = !DILocation(line: 349, column: 3, scope: !4319, inlinedAt: !4266)
!4322 = !DILocation(line: 351, column: 6, scope: !4323, inlinedAt: !4266)
!4323 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 351, column: 6)
!4324 = !DILocation(line: 351, column: 11, scope: !4323, inlinedAt: !4266)
!4325 = !DILocation(line: 351, column: 6, scope: !4262, inlinedAt: !4266)
!4326 = !DILocation(line: 352, column: 3, scope: !4323, inlinedAt: !4266)
!4327 = !DILocation(line: 354, column: 32, scope: !4328, inlinedAt: !4266)
!4328 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 354, column: 6)
!4329 = !DILocation(line: 354, column: 37, scope: !4328, inlinedAt: !4266)
!4330 = !DILocation(line: 354, column: 42, scope: !4328, inlinedAt: !4266)
!4331 = !DILocation(line: 354, column: 45, scope: !4328, inlinedAt: !4266)
!4332 = !DILocation(line: 354, column: 50, scope: !4328, inlinedAt: !4266)
!4333 = !DILocation(line: 354, column: 6, scope: !4262, inlinedAt: !4266)
!4334 = !DILocation(line: 355, column: 3, scope: !4328, inlinedAt: !4266)
!4335 = !DILocation(line: 356, column: 32, scope: !4336, inlinedAt: !4266)
!4336 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 356, column: 6)
!4337 = !DILocation(line: 356, column: 37, scope: !4336, inlinedAt: !4266)
!4338 = !DILocation(line: 356, column: 43, scope: !4336, inlinedAt: !4266)
!4339 = !DILocation(line: 356, column: 46, scope: !4336, inlinedAt: !4266)
!4340 = !DILocation(line: 356, column: 51, scope: !4336, inlinedAt: !4266)
!4341 = !DILocation(line: 356, column: 6, scope: !4262, inlinedAt: !4266)
!4342 = !DILocation(line: 357, column: 3, scope: !4336, inlinedAt: !4266)
!4343 = !DILocation(line: 358, column: 6, scope: !4344, inlinedAt: !4266)
!4344 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 358, column: 6)
!4345 = !DILocation(line: 358, column: 11, scope: !4344, inlinedAt: !4266)
!4346 = !DILocation(line: 358, column: 6, scope: !4262, inlinedAt: !4266)
!4347 = !DILocation(line: 358, column: 26, scope: !4344, inlinedAt: !4266)
!4348 = !DILocation(line: 359, column: 6, scope: !4349, inlinedAt: !4266)
!4349 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 359, column: 6)
!4350 = !DILocation(line: 359, column: 11, scope: !4349, inlinedAt: !4266)
!4351 = !DILocation(line: 359, column: 6, scope: !4262, inlinedAt: !4266)
!4352 = !DILocation(line: 359, column: 26, scope: !4349, inlinedAt: !4266)
!4353 = !DILocation(line: 360, column: 6, scope: !4354, inlinedAt: !4266)
!4354 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 360, column: 6)
!4355 = !DILocation(line: 360, column: 11, scope: !4354, inlinedAt: !4266)
!4356 = !DILocation(line: 360, column: 6, scope: !4262, inlinedAt: !4266)
!4357 = !DILocation(line: 360, column: 26, scope: !4354, inlinedAt: !4266)
!4358 = !DILocation(line: 361, column: 6, scope: !4359, inlinedAt: !4266)
!4359 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 361, column: 6)
!4360 = !DILocation(line: 361, column: 11, scope: !4359, inlinedAt: !4266)
!4361 = !DILocation(line: 361, column: 6, scope: !4262, inlinedAt: !4266)
!4362 = !DILocation(line: 361, column: 26, scope: !4359, inlinedAt: !4266)
!4363 = !DILocation(line: 362, column: 6, scope: !4364, inlinedAt: !4266)
!4364 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 362, column: 6)
!4365 = !DILocation(line: 362, column: 11, scope: !4364, inlinedAt: !4266)
!4366 = !DILocation(line: 362, column: 6, scope: !4262, inlinedAt: !4266)
!4367 = !DILocation(line: 362, column: 26, scope: !4364, inlinedAt: !4266)
!4368 = !DILocation(line: 363, column: 6, scope: !4369, inlinedAt: !4266)
!4369 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 363, column: 6)
!4370 = !DILocation(line: 363, column: 11, scope: !4369, inlinedAt: !4266)
!4371 = !DILocation(line: 363, column: 6, scope: !4262, inlinedAt: !4266)
!4372 = !DILocation(line: 363, column: 26, scope: !4369, inlinedAt: !4266)
!4373 = !DILocation(line: 364, column: 6, scope: !4374, inlinedAt: !4266)
!4374 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 364, column: 6)
!4375 = !DILocation(line: 364, column: 11, scope: !4374, inlinedAt: !4266)
!4376 = !DILocation(line: 364, column: 6, scope: !4262, inlinedAt: !4266)
!4377 = !DILocation(line: 364, column: 26, scope: !4374, inlinedAt: !4266)
!4378 = !DILocation(line: 365, column: 6, scope: !4379, inlinedAt: !4266)
!4379 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 365, column: 6)
!4380 = !DILocation(line: 365, column: 11, scope: !4379, inlinedAt: !4266)
!4381 = !DILocation(line: 365, column: 6, scope: !4262, inlinedAt: !4266)
!4382 = !DILocation(line: 365, column: 26, scope: !4379, inlinedAt: !4266)
!4383 = !DILocation(line: 366, column: 6, scope: !4384, inlinedAt: !4266)
!4384 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 366, column: 6)
!4385 = !DILocation(line: 366, column: 11, scope: !4384, inlinedAt: !4266)
!4386 = !DILocation(line: 366, column: 6, scope: !4262, inlinedAt: !4266)
!4387 = !DILocation(line: 366, column: 26, scope: !4384, inlinedAt: !4266)
!4388 = !DILocation(line: 367, column: 6, scope: !4389, inlinedAt: !4266)
!4389 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 367, column: 6)
!4390 = !DILocation(line: 367, column: 11, scope: !4389, inlinedAt: !4266)
!4391 = !DILocation(line: 367, column: 6, scope: !4262, inlinedAt: !4266)
!4392 = !DILocation(line: 367, column: 26, scope: !4389, inlinedAt: !4266)
!4393 = !DILocation(line: 368, column: 6, scope: !4394, inlinedAt: !4266)
!4394 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 368, column: 6)
!4395 = !DILocation(line: 368, column: 11, scope: !4394, inlinedAt: !4266)
!4396 = !DILocation(line: 368, column: 6, scope: !4262, inlinedAt: !4266)
!4397 = !DILocation(line: 368, column: 26, scope: !4394, inlinedAt: !4266)
!4398 = !DILocation(line: 369, column: 6, scope: !4399, inlinedAt: !4266)
!4399 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 369, column: 6)
!4400 = !DILocation(line: 369, column: 11, scope: !4399, inlinedAt: !4266)
!4401 = !DILocation(line: 369, column: 6, scope: !4262, inlinedAt: !4266)
!4402 = !DILocation(line: 369, column: 26, scope: !4399, inlinedAt: !4266)
!4403 = !DILocation(line: 370, column: 6, scope: !4404, inlinedAt: !4266)
!4404 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 370, column: 6)
!4405 = !DILocation(line: 370, column: 11, scope: !4404, inlinedAt: !4266)
!4406 = !DILocation(line: 370, column: 6, scope: !4262, inlinedAt: !4266)
!4407 = !DILocation(line: 370, column: 26, scope: !4404, inlinedAt: !4266)
!4408 = !DILocation(line: 371, column: 6, scope: !4409, inlinedAt: !4266)
!4409 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 371, column: 6)
!4410 = !DILocation(line: 371, column: 11, scope: !4409, inlinedAt: !4266)
!4411 = !DILocation(line: 371, column: 6, scope: !4262, inlinedAt: !4266)
!4412 = !DILocation(line: 371, column: 26, scope: !4409, inlinedAt: !4266)
!4413 = !DILocation(line: 372, column: 6, scope: !4414, inlinedAt: !4266)
!4414 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 372, column: 6)
!4415 = !DILocation(line: 372, column: 11, scope: !4414, inlinedAt: !4266)
!4416 = !DILocation(line: 372, column: 6, scope: !4262, inlinedAt: !4266)
!4417 = !DILocation(line: 372, column: 26, scope: !4414, inlinedAt: !4266)
!4418 = !DILocation(line: 373, column: 6, scope: !4419, inlinedAt: !4266)
!4419 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 373, column: 6)
!4420 = !DILocation(line: 373, column: 11, scope: !4419, inlinedAt: !4266)
!4421 = !DILocation(line: 373, column: 6, scope: !4262, inlinedAt: !4266)
!4422 = !DILocation(line: 373, column: 26, scope: !4419, inlinedAt: !4266)
!4423 = !DILocation(line: 374, column: 6, scope: !4424, inlinedAt: !4266)
!4424 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 374, column: 6)
!4425 = !DILocation(line: 374, column: 11, scope: !4424, inlinedAt: !4266)
!4426 = !DILocation(line: 374, column: 6, scope: !4262, inlinedAt: !4266)
!4427 = !DILocation(line: 374, column: 26, scope: !4424, inlinedAt: !4266)
!4428 = !DILocation(line: 375, column: 6, scope: !4429, inlinedAt: !4266)
!4429 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 375, column: 6)
!4430 = !DILocation(line: 375, column: 11, scope: !4429, inlinedAt: !4266)
!4431 = !DILocation(line: 375, column: 6, scope: !4262, inlinedAt: !4266)
!4432 = !DILocation(line: 375, column: 27, scope: !4429, inlinedAt: !4266)
!4433 = !DILocation(line: 376, column: 6, scope: !4434, inlinedAt: !4266)
!4434 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 376, column: 6)
!4435 = !DILocation(line: 376, column: 11, scope: !4434, inlinedAt: !4266)
!4436 = !DILocation(line: 376, column: 6, scope: !4262, inlinedAt: !4266)
!4437 = !DILocation(line: 376, column: 32, scope: !4434, inlinedAt: !4266)
!4438 = !DILocation(line: 377, column: 6, scope: !4439, inlinedAt: !4266)
!4439 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 377, column: 6)
!4440 = !DILocation(line: 377, column: 11, scope: !4439, inlinedAt: !4266)
!4441 = !DILocation(line: 377, column: 6, scope: !4262, inlinedAt: !4266)
!4442 = !DILocation(line: 377, column: 32, scope: !4439, inlinedAt: !4266)
!4443 = !DILocation(line: 378, column: 6, scope: !4444, inlinedAt: !4266)
!4444 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 378, column: 6)
!4445 = !DILocation(line: 378, column: 11, scope: !4444, inlinedAt: !4266)
!4446 = !DILocation(line: 378, column: 6, scope: !4262, inlinedAt: !4266)
!4447 = !DILocation(line: 378, column: 32, scope: !4444, inlinedAt: !4266)
!4448 = !DILocation(line: 379, column: 6, scope: !4449, inlinedAt: !4266)
!4449 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 379, column: 6)
!4450 = !DILocation(line: 379, column: 11, scope: !4449, inlinedAt: !4266)
!4451 = !DILocation(line: 379, column: 6, scope: !4262, inlinedAt: !4266)
!4452 = !DILocation(line: 379, column: 33, scope: !4449, inlinedAt: !4266)
!4453 = !DILocation(line: 380, column: 6, scope: !4454, inlinedAt: !4266)
!4454 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 380, column: 6)
!4455 = !DILocation(line: 380, column: 11, scope: !4454, inlinedAt: !4266)
!4456 = !DILocation(line: 380, column: 6, scope: !4262, inlinedAt: !4266)
!4457 = !DILocation(line: 380, column: 33, scope: !4454, inlinedAt: !4266)
!4458 = !DILocation(line: 381, column: 6, scope: !4459, inlinedAt: !4266)
!4459 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 381, column: 6)
!4460 = !DILocation(line: 381, column: 11, scope: !4459, inlinedAt: !4266)
!4461 = !DILocation(line: 381, column: 6, scope: !4262, inlinedAt: !4266)
!4462 = !DILocation(line: 381, column: 33, scope: !4459, inlinedAt: !4266)
!4463 = !DILocation(line: 382, column: 2, scope: !4464, inlinedAt: !4266)
!4464 = distinct !DILexicalBlock(scope: !4465, file: !4039, line: 382, column: 2)
!4465 = distinct !DILexicalBlock(scope: !4262, file: !4039, line: 382, column: 2)
!4466 = !{i32 -2143434202, i32 -2143434173, i32 -2143434127, i32 -2143434069, i32 -2143434015, i32 -2143433961, i32 -2143433906, i32 -2143433875}
!4467 = !DILocation(line: 382, column: 2, scope: !4468, inlinedAt: !4266)
!4468 = distinct !DILexicalBlock(scope: !4469, file: !4039, line: 382, column: 2)
!4469 = distinct !DILexicalBlock(scope: !4465, file: !4039, line: 382, column: 2)
!4470 = !{i32 -2143433432, i32 -2143433425, i32 -2143433371, i32 -2143433340, i32 -2143433310}
!4471 = !DILocation(line: 382, column: 2, scope: !4469, inlinedAt: !4266)
!4472 = !DILocation(line: 386, column: 1, scope: !4262, inlinedAt: !4266)
!4473 = !DILocation(line: 547, column: 9, scope: !4245, inlinedAt: !4248)
!4474 = !DILocation(line: 549, column: 8, scope: !4475, inlinedAt: !4248)
!4475 = distinct !DILexicalBlock(scope: !4245, file: !4039, line: 549, column: 7)
!4476 = !DILocation(line: 549, column: 7, scope: !4245, inlinedAt: !4248)
!4477 = !DILocation(line: 550, column: 4, scope: !4475, inlinedAt: !4248)
!4478 = !DILocation(line: 553, column: 33, scope: !4245, inlinedAt: !4248)
!4479 = !DILocation(line: 325, column: 6, scope: !4480, inlinedAt: !4260)
!4480 = distinct !DILexicalBlock(scope: !4256, file: !4039, line: 325, column: 6)
!4481 = !DILocation(line: 325, column: 6, scope: !4256, inlinedAt: !4260)
!4482 = !DILocation(line: 326, column: 3, scope: !4480, inlinedAt: !4260)
!4483 = !DILocation(line: 332, column: 9, scope: !4256, inlinedAt: !4260)
!4484 = !DILocation(line: 332, column: 15, scope: !4256, inlinedAt: !4260)
!4485 = !DILocation(line: 332, column: 2, scope: !4256, inlinedAt: !4260)
!4486 = !DILocation(line: 336, column: 1, scope: !4256, inlinedAt: !4260)
!4487 = !DILocation(line: 553, column: 5, scope: !4245, inlinedAt: !4248)
!4488 = !DILocation(line: 553, column: 41, scope: !4245, inlinedAt: !4248)
!4489 = !DILocation(line: 554, column: 5, scope: !4245, inlinedAt: !4248)
!4490 = !DILocation(line: 554, column: 12, scope: !4245, inlinedAt: !4248)
!4491 = !DILocation(line: 448, column: 31, scope: !4240, inlinedAt: !4244)
!4492 = !DILocation(line: 448, column: 34, scope: !4240, inlinedAt: !4244)
!4493 = !DILocation(line: 448, column: 14, scope: !4240, inlinedAt: !4244)
!4494 = !DILocation(line: 450, column: 22, scope: !4240, inlinedAt: !4244)
!4495 = !DILocation(line: 450, column: 25, scope: !4240, inlinedAt: !4244)
!4496 = !DILocation(line: 450, column: 30, scope: !4240, inlinedAt: !4244)
!4497 = !DILocation(line: 450, column: 36, scope: !4240, inlinedAt: !4244)
!4498 = !DILocation(line: 450, column: 8, scope: !4240, inlinedAt: !4244)
!4499 = !DILocation(line: 450, column: 6, scope: !4240, inlinedAt: !4244)
!4500 = !DILocation(line: 451, column: 9, scope: !4240, inlinedAt: !4244)
!4501 = !DILocation(line: 552, column: 3, scope: !4245, inlinedAt: !4248)
!4502 = !DILocation(line: 557, column: 19, scope: !4247, inlinedAt: !4248)
!4503 = !DILocation(line: 557, column: 25, scope: !4247, inlinedAt: !4248)
!4504 = !DILocation(line: 557, column: 9, scope: !4247, inlinedAt: !4248)
!4505 = !DILocation(line: 557, column: 2, scope: !4247, inlinedAt: !4248)
!4506 = !DILocation(line: 558, column: 1, scope: !4247, inlinedAt: !4248)
!4507 = !DILocation(line: 664, column: 2, scope: !4236)
!4508 = distinct !DISubprogram(name: "pci_vpd_release", scope: !3, file: !3, line: 395, type: !3831, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4509 = !DILocalVariable(name: "dev", arg: 1, scope: !4508, file: !3, line: 395, type: !7)
!4510 = !DILocation(line: 395, column: 38, scope: !4508)
!4511 = !DILocation(line: 397, column: 8, scope: !4508)
!4512 = !DILocation(line: 397, column: 13, scope: !4508)
!4513 = !DILocation(line: 397, column: 2, scope: !4508)
!4514 = !DILocation(line: 398, column: 1, scope: !4508)
!4515 = distinct !DISubprogram(name: "pcie_vpd_create_sysfs_dev_files", scope: !3, file: !3, line: 432, type: !3831, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4516 = !DILocalVariable(name: "dev", arg: 1, scope: !4515, file: !3, line: 432, type: !7)
!4517 = !DILocation(line: 432, column: 54, scope: !4515)
!4518 = !DILocalVariable(name: "retval", scope: !4515, file: !3, line: 434, type: !6)
!4519 = !DILocation(line: 434, column: 6, scope: !4515)
!4520 = !DILocalVariable(name: "attr", scope: !4515, file: !3, line: 435, type: !233)
!4521 = !DILocation(line: 435, column: 24, scope: !4515)
!4522 = !DILocation(line: 437, column: 7, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 437, column: 6)
!4524 = !DILocation(line: 437, column: 12, scope: !4523)
!4525 = !DILocation(line: 437, column: 6, scope: !4515)
!4526 = !DILocation(line: 438, column: 3, scope: !4523)
!4527 = !DILocation(line: 440, column: 9, scope: !4515)
!4528 = !DILocation(line: 440, column: 7, scope: !4515)
!4529 = !DILocation(line: 441, column: 7, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 441, column: 6)
!4531 = !DILocation(line: 441, column: 6, scope: !4515)
!4532 = !DILocation(line: 442, column: 3, scope: !4530)
!4533 = !DILocation(line: 444, column: 2, scope: !4515)
!4534 = !DILocation(line: 444, column: 2, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 444, column: 2)
!4536 = !DILocation(line: 445, column: 2, scope: !4515)
!4537 = !DILocation(line: 445, column: 8, scope: !4515)
!4538 = !DILocation(line: 445, column: 13, scope: !4515)
!4539 = !DILocation(line: 446, column: 2, scope: !4515)
!4540 = !DILocation(line: 446, column: 8, scope: !4515)
!4541 = !DILocation(line: 446, column: 13, scope: !4515)
!4542 = !DILocation(line: 446, column: 18, scope: !4515)
!4543 = !DILocation(line: 447, column: 2, scope: !4515)
!4544 = !DILocation(line: 447, column: 8, scope: !4515)
!4545 = !DILocation(line: 447, column: 13, scope: !4515)
!4546 = !DILocation(line: 447, column: 18, scope: !4515)
!4547 = !DILocation(line: 448, column: 2, scope: !4515)
!4548 = !DILocation(line: 448, column: 8, scope: !4515)
!4549 = !DILocation(line: 448, column: 13, scope: !4515)
!4550 = !DILocation(line: 449, column: 2, scope: !4515)
!4551 = !DILocation(line: 449, column: 8, scope: !4515)
!4552 = !DILocation(line: 449, column: 14, scope: !4515)
!4553 = !DILocation(line: 450, column: 34, scope: !4515)
!4554 = !DILocation(line: 450, column: 39, scope: !4515)
!4555 = !DILocation(line: 450, column: 43, scope: !4515)
!4556 = !DILocation(line: 450, column: 49, scope: !4515)
!4557 = !DILocation(line: 450, column: 11, scope: !4515)
!4558 = !DILocation(line: 450, column: 9, scope: !4515)
!4559 = !DILocation(line: 451, column: 6, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 451, column: 6)
!4561 = !DILocation(line: 451, column: 6, scope: !4515)
!4562 = !DILocation(line: 452, column: 9, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4560, file: !3, line: 451, column: 14)
!4564 = !DILocation(line: 452, column: 3, scope: !4563)
!4565 = !DILocation(line: 453, column: 3, scope: !4563)
!4566 = !DILocation(line: 456, column: 19, scope: !4515)
!4567 = !DILocation(line: 456, column: 2, scope: !4515)
!4568 = !DILocation(line: 456, column: 7, scope: !4515)
!4569 = !DILocation(line: 456, column: 12, scope: !4515)
!4570 = !DILocation(line: 456, column: 17, scope: !4515)
!4571 = !DILocation(line: 457, column: 1, scope: !4515)
!4572 = distinct !DISubprogram(name: "read_vpd_attr", scope: !3, file: !3, line: 400, type: !241, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4573 = !DILocalVariable(name: "filp", arg: 1, scope: !4572, file: !3, line: 400, type: !243)
!4574 = !DILocation(line: 400, column: 43, scope: !4572)
!4575 = !DILocalVariable(name: "kobj", arg: 2, scope: !4572, file: !3, line: 400, type: !119)
!4576 = !DILocation(line: 400, column: 65, scope: !4572)
!4577 = !DILocalVariable(name: "bin_attr", arg: 3, scope: !4572, file: !3, line: 401, type: !233)
!4578 = !DILocation(line: 401, column: 31, scope: !4572)
!4579 = !DILocalVariable(name: "buf", arg: 4, scope: !4572, file: !3, line: 401, type: !167)
!4580 = !DILocation(line: 401, column: 47, scope: !4572)
!4581 = !DILocalVariable(name: "off", arg: 5, scope: !4572, file: !3, line: 402, type: !415)
!4582 = !DILocation(line: 402, column: 16, scope: !4572)
!4583 = !DILocalVariable(name: "count", arg: 6, scope: !4572, file: !3, line: 402, type: !213)
!4584 = !DILocation(line: 402, column: 28, scope: !4572)
!4585 = !DILocalVariable(name: "dev", scope: !4572, file: !3, line: 404, type: !7)
!4586 = !DILocation(line: 404, column: 18, scope: !4572)
!4587 = !DILocalVariable(name: "__mptr", scope: !4588, file: !3, line: 404, type: !73)
!4588 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 404, column: 24)
!4589 = !DILocation(line: 404, column: 24, scope: !4588)
!4590 = !DILocation(line: 404, column: 24, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4588, file: !3, line: 404, column: 24)
!4592 = !DILocation(line: 406, column: 6, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 406, column: 6)
!4594 = !DILocation(line: 406, column: 16, scope: !4593)
!4595 = !DILocation(line: 406, column: 21, scope: !4593)
!4596 = !DILocation(line: 406, column: 6, scope: !4572)
!4597 = !DILocation(line: 407, column: 7, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4599, file: !3, line: 407, column: 7)
!4599 = distinct !DILexicalBlock(scope: !4593, file: !3, line: 406, column: 26)
!4600 = !DILocation(line: 407, column: 13, scope: !4598)
!4601 = !DILocation(line: 407, column: 23, scope: !4598)
!4602 = !DILocation(line: 407, column: 11, scope: !4598)
!4603 = !DILocation(line: 407, column: 7, scope: !4599)
!4604 = !DILocation(line: 408, column: 10, scope: !4598)
!4605 = !DILocation(line: 408, column: 4, scope: !4598)
!4606 = !DILocation(line: 409, column: 12, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 409, column: 12)
!4608 = !DILocation(line: 409, column: 20, scope: !4607)
!4609 = !DILocation(line: 409, column: 30, scope: !4607)
!4610 = !DILocation(line: 409, column: 37, scope: !4607)
!4611 = !DILocation(line: 409, column: 35, scope: !4607)
!4612 = !DILocation(line: 409, column: 18, scope: !4607)
!4613 = !DILocation(line: 409, column: 12, scope: !4598)
!4614 = !DILocation(line: 410, column: 12, scope: !4607)
!4615 = !DILocation(line: 410, column: 22, scope: !4607)
!4616 = !DILocation(line: 410, column: 29, scope: !4607)
!4617 = !DILocation(line: 410, column: 27, scope: !4607)
!4618 = !DILocation(line: 410, column: 10, scope: !4607)
!4619 = !DILocation(line: 410, column: 4, scope: !4607)
!4620 = !DILocation(line: 411, column: 2, scope: !4599)
!4621 = !DILocation(line: 413, column: 22, scope: !4572)
!4622 = !DILocation(line: 413, column: 27, scope: !4572)
!4623 = !DILocation(line: 413, column: 32, scope: !4572)
!4624 = !DILocation(line: 413, column: 39, scope: !4572)
!4625 = !DILocation(line: 413, column: 9, scope: !4572)
!4626 = !DILocation(line: 413, column: 2, scope: !4572)
!4627 = distinct !DISubprogram(name: "write_vpd_attr", scope: !3, file: !3, line: 416, type: !241, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4628 = !DILocalVariable(name: "filp", arg: 1, scope: !4627, file: !3, line: 416, type: !243)
!4629 = !DILocation(line: 416, column: 44, scope: !4627)
!4630 = !DILocalVariable(name: "kobj", arg: 2, scope: !4627, file: !3, line: 416, type: !119)
!4631 = !DILocation(line: 416, column: 66, scope: !4627)
!4632 = !DILocalVariable(name: "bin_attr", arg: 3, scope: !4627, file: !3, line: 417, type: !233)
!4633 = !DILocation(line: 417, column: 32, scope: !4627)
!4634 = !DILocalVariable(name: "buf", arg: 4, scope: !4627, file: !3, line: 417, type: !167)
!4635 = !DILocation(line: 417, column: 48, scope: !4627)
!4636 = !DILocalVariable(name: "off", arg: 5, scope: !4627, file: !3, line: 418, type: !415)
!4637 = !DILocation(line: 418, column: 17, scope: !4627)
!4638 = !DILocalVariable(name: "count", arg: 6, scope: !4627, file: !3, line: 418, type: !213)
!4639 = !DILocation(line: 418, column: 29, scope: !4627)
!4640 = !DILocalVariable(name: "dev", scope: !4627, file: !3, line: 420, type: !7)
!4641 = !DILocation(line: 420, column: 18, scope: !4627)
!4642 = !DILocalVariable(name: "__mptr", scope: !4643, file: !3, line: 420, type: !73)
!4643 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 420, column: 24)
!4644 = !DILocation(line: 420, column: 24, scope: !4643)
!4645 = !DILocation(line: 420, column: 24, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 420, column: 24)
!4647 = !DILocation(line: 422, column: 6, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 422, column: 6)
!4649 = !DILocation(line: 422, column: 16, scope: !4648)
!4650 = !DILocation(line: 422, column: 21, scope: !4648)
!4651 = !DILocation(line: 422, column: 6, scope: !4627)
!4652 = !DILocation(line: 423, column: 7, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4654, file: !3, line: 423, column: 7)
!4654 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 422, column: 26)
!4655 = !DILocation(line: 423, column: 13, scope: !4653)
!4656 = !DILocation(line: 423, column: 23, scope: !4653)
!4657 = !DILocation(line: 423, column: 11, scope: !4653)
!4658 = !DILocation(line: 423, column: 7, scope: !4654)
!4659 = !DILocation(line: 424, column: 10, scope: !4653)
!4660 = !DILocation(line: 424, column: 4, scope: !4653)
!4661 = !DILocation(line: 425, column: 12, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 425, column: 12)
!4663 = !DILocation(line: 425, column: 20, scope: !4662)
!4664 = !DILocation(line: 425, column: 30, scope: !4662)
!4665 = !DILocation(line: 425, column: 37, scope: !4662)
!4666 = !DILocation(line: 425, column: 35, scope: !4662)
!4667 = !DILocation(line: 425, column: 18, scope: !4662)
!4668 = !DILocation(line: 425, column: 12, scope: !4653)
!4669 = !DILocation(line: 426, column: 12, scope: !4662)
!4670 = !DILocation(line: 426, column: 22, scope: !4662)
!4671 = !DILocation(line: 426, column: 29, scope: !4662)
!4672 = !DILocation(line: 426, column: 27, scope: !4662)
!4673 = !DILocation(line: 426, column: 10, scope: !4662)
!4674 = !DILocation(line: 426, column: 4, scope: !4662)
!4675 = !DILocation(line: 427, column: 2, scope: !4654)
!4676 = !DILocation(line: 429, column: 23, scope: !4627)
!4677 = !DILocation(line: 429, column: 28, scope: !4627)
!4678 = !DILocation(line: 429, column: 33, scope: !4627)
!4679 = !DILocation(line: 429, column: 40, scope: !4627)
!4680 = !DILocation(line: 429, column: 9, scope: !4627)
!4681 = !DILocation(line: 429, column: 2, scope: !4627)
!4682 = distinct !DISubprogram(name: "pcie_vpd_remove_sysfs_dev_files", scope: !3, file: !3, line: 459, type: !3831, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4683 = !DILocalVariable(name: "dev", arg: 1, scope: !4682, file: !3, line: 459, type: !7)
!4684 = !DILocation(line: 459, column: 54, scope: !4682)
!4685 = !DILocation(line: 461, column: 6, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4682, file: !3, line: 461, column: 6)
!4687 = !DILocation(line: 461, column: 11, scope: !4686)
!4688 = !DILocation(line: 461, column: 15, scope: !4686)
!4689 = !DILocation(line: 461, column: 18, scope: !4686)
!4690 = !DILocation(line: 461, column: 23, scope: !4686)
!4691 = !DILocation(line: 461, column: 28, scope: !4686)
!4692 = !DILocation(line: 461, column: 6, scope: !4682)
!4693 = !DILocation(line: 462, column: 26, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 461, column: 34)
!4695 = !DILocation(line: 462, column: 31, scope: !4694)
!4696 = !DILocation(line: 462, column: 35, scope: !4694)
!4697 = !DILocation(line: 462, column: 41, scope: !4694)
!4698 = !DILocation(line: 462, column: 46, scope: !4694)
!4699 = !DILocation(line: 462, column: 51, scope: !4694)
!4700 = !DILocation(line: 462, column: 3, scope: !4694)
!4701 = !DILocation(line: 463, column: 9, scope: !4694)
!4702 = !DILocation(line: 463, column: 14, scope: !4694)
!4703 = !DILocation(line: 463, column: 19, scope: !4694)
!4704 = !DILocation(line: 463, column: 3, scope: !4694)
!4705 = !DILocation(line: 464, column: 2, scope: !4694)
!4706 = !DILocation(line: 465, column: 1, scope: !4682)
!4707 = distinct !DISubprogram(name: "pci_vpd_find_tag", scope: !3, file: !3, line: 467, type: !4708, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{!6, !4710, !74, !74, !1240}
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!4712 = !DILocalVariable(name: "buf", arg: 1, scope: !4707, file: !3, line: 467, type: !4710)
!4713 = !DILocation(line: 467, column: 32, scope: !4707)
!4714 = !DILocalVariable(name: "off", arg: 2, scope: !4707, file: !3, line: 467, type: !74)
!4715 = !DILocation(line: 467, column: 50, scope: !4707)
!4716 = !DILocalVariable(name: "len", arg: 3, scope: !4707, file: !3, line: 467, type: !74)
!4717 = !DILocation(line: 467, column: 68, scope: !4707)
!4718 = !DILocalVariable(name: "rdt", arg: 4, scope: !4707, file: !3, line: 467, type: !1240)
!4719 = !DILocation(line: 467, column: 76, scope: !4707)
!4720 = !DILocalVariable(name: "i", scope: !4707, file: !3, line: 469, type: !6)
!4721 = !DILocation(line: 469, column: 6, scope: !4707)
!4722 = !DILocation(line: 471, column: 11, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4707, file: !3, line: 471, column: 2)
!4724 = !DILocation(line: 471, column: 9, scope: !4723)
!4725 = !DILocation(line: 471, column: 7, scope: !4723)
!4726 = !DILocation(line: 471, column: 16, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4723, file: !3, line: 471, column: 2)
!4728 = !DILocation(line: 471, column: 20, scope: !4727)
!4729 = !DILocation(line: 471, column: 18, scope: !4727)
!4730 = !DILocation(line: 471, column: 2, scope: !4723)
!4731 = !DILocalVariable(name: "val", scope: !4732, file: !3, line: 472, type: !1240)
!4732 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 471, column: 27)
!4733 = !DILocation(line: 472, column: 6, scope: !4732)
!4734 = !DILocation(line: 472, column: 12, scope: !4732)
!4735 = !DILocation(line: 472, column: 16, scope: !4732)
!4736 = !DILocation(line: 474, column: 7, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4732, file: !3, line: 474, column: 7)
!4738 = !DILocation(line: 474, column: 11, scope: !4737)
!4739 = !DILocation(line: 474, column: 7, scope: !4732)
!4740 = !DILocation(line: 476, column: 8, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 476, column: 8)
!4742 = distinct !DILexicalBlock(scope: !4737, file: !3, line: 474, column: 27)
!4743 = !DILocation(line: 476, column: 10, scope: !4741)
!4744 = !DILocation(line: 476, column: 36, scope: !4741)
!4745 = !DILocation(line: 476, column: 34, scope: !4741)
!4746 = !DILocation(line: 476, column: 8, scope: !4742)
!4747 = !DILocation(line: 477, column: 5, scope: !4741)
!4748 = !DILocation(line: 479, column: 8, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 479, column: 8)
!4750 = !DILocation(line: 479, column: 15, scope: !4749)
!4751 = !DILocation(line: 479, column: 12, scope: !4749)
!4752 = !DILocation(line: 479, column: 8, scope: !4742)
!4753 = !DILocation(line: 480, column: 12, scope: !4749)
!4754 = !DILocation(line: 480, column: 5, scope: !4749)
!4755 = !DILocation(line: 483, column: 28, scope: !4742)
!4756 = !DILocation(line: 483, column: 32, scope: !4742)
!4757 = !DILocation(line: 483, column: 9, scope: !4742)
!4758 = !DILocation(line: 482, column: 31, scope: !4742)
!4759 = !DILocation(line: 482, column: 6, scope: !4742)
!4760 = !DILocation(line: 484, column: 3, scope: !4742)
!4761 = !DILocalVariable(name: "tag", scope: !4762, file: !3, line: 485, type: !1240)
!4762 = distinct !DILexicalBlock(scope: !4737, file: !3, line: 484, column: 10)
!4763 = !DILocation(line: 485, column: 7, scope: !4762)
!4764 = !DILocation(line: 485, column: 13, scope: !4762)
!4765 = !DILocation(line: 485, column: 17, scope: !4762)
!4766 = !DILocation(line: 487, column: 8, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 487, column: 8)
!4768 = !DILocation(line: 487, column: 15, scope: !4767)
!4769 = !DILocation(line: 487, column: 12, scope: !4767)
!4770 = !DILocation(line: 487, column: 8, scope: !4762)
!4771 = !DILocation(line: 488, column: 12, scope: !4767)
!4772 = !DILocation(line: 488, column: 5, scope: !4767)
!4773 = !DILocation(line: 490, column: 8, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 490, column: 8)
!4775 = !DILocation(line: 490, column: 12, scope: !4774)
!4776 = !DILocation(line: 490, column: 8, scope: !4762)
!4777 = !DILocation(line: 491, column: 5, scope: !4774)
!4778 = !DILocation(line: 494, column: 28, scope: !4762)
!4779 = !DILocation(line: 494, column: 32, scope: !4762)
!4780 = !DILocation(line: 494, column: 9, scope: !4762)
!4781 = !DILocation(line: 493, column: 31, scope: !4762)
!4782 = !DILocation(line: 493, column: 6, scope: !4762)
!4783 = !DILocation(line: 471, column: 2, scope: !4727)
!4784 = distinct !{!4784, !4730, !4785}
!4785 = !DILocation(line: 496, column: 2, scope: !4723)
!4786 = !DILocation(line: 498, column: 2, scope: !4707)
!4787 = !DILocation(line: 499, column: 1, scope: !4707)
!4788 = distinct !DISubprogram(name: "pci_vpd_lrdt_size", scope: !9, file: !9, line: 2225, type: !4789, scopeLine: 2226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{!748, !4710}
!4791 = !DILocalVariable(name: "lrdt", arg: 1, scope: !4788, file: !9, line: 2225, type: !4710)
!4792 = !DILocation(line: 2225, column: 47, scope: !4788)
!4793 = !DILocation(line: 2227, column: 14, scope: !4788)
!4794 = !DILocation(line: 2227, column: 9, scope: !4788)
!4795 = !DILocation(line: 2227, column: 30, scope: !4788)
!4796 = !DILocation(line: 2227, column: 25, scope: !4788)
!4797 = !DILocation(line: 2227, column: 38, scope: !4788)
!4798 = !DILocation(line: 2227, column: 22, scope: !4788)
!4799 = !DILocation(line: 2227, column: 2, scope: !4788)
!4800 = distinct !DISubprogram(name: "pci_vpd_srdt_size", scope: !9, file: !9, line: 2247, type: !4801, scopeLine: 2248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!1240, !4710}
!4803 = !DILocalVariable(name: "srdt", arg: 1, scope: !4800, file: !9, line: 2247, type: !4710)
!4804 = !DILocation(line: 2247, column: 46, scope: !4800)
!4805 = !DILocation(line: 2249, column: 11, scope: !4800)
!4806 = !DILocation(line: 2249, column: 10, scope: !4800)
!4807 = !DILocation(line: 2249, column: 9, scope: !4800)
!4808 = !DILocation(line: 2249, column: 17, scope: !4800)
!4809 = !DILocation(line: 2249, column: 2, scope: !4800)
!4810 = distinct !DISubprogram(name: "pci_vpd_find_info_keyword", scope: !3, file: !3, line: 502, type: !4811, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{!6, !4710, !74, !74, !44}
!4813 = !DILocalVariable(name: "buf", arg: 1, scope: !4810, file: !3, line: 502, type: !4710)
!4814 = !DILocation(line: 502, column: 41, scope: !4810)
!4815 = !DILocalVariable(name: "off", arg: 2, scope: !4810, file: !3, line: 502, type: !74)
!4816 = !DILocation(line: 502, column: 59, scope: !4810)
!4817 = !DILocalVariable(name: "len", arg: 3, scope: !4810, file: !3, line: 503, type: !74)
!4818 = !DILocation(line: 503, column: 23, scope: !4810)
!4819 = !DILocalVariable(name: "kw", arg: 4, scope: !4810, file: !3, line: 503, type: !44)
!4820 = !DILocation(line: 503, column: 40, scope: !4810)
!4821 = !DILocalVariable(name: "i", scope: !4810, file: !3, line: 505, type: !6)
!4822 = !DILocation(line: 505, column: 6, scope: !4810)
!4823 = !DILocation(line: 507, column: 11, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 507, column: 2)
!4825 = !DILocation(line: 507, column: 9, scope: !4824)
!4826 = !DILocation(line: 507, column: 7, scope: !4824)
!4827 = !DILocation(line: 507, column: 16, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4824, file: !3, line: 507, column: 2)
!4829 = !DILocation(line: 507, column: 18, scope: !4828)
!4830 = !DILocation(line: 507, column: 49, scope: !4828)
!4831 = !DILocation(line: 507, column: 55, scope: !4828)
!4832 = !DILocation(line: 507, column: 53, scope: !4828)
!4833 = !DILocation(line: 507, column: 46, scope: !4828)
!4834 = !DILocation(line: 507, column: 2, scope: !4824)
!4835 = !DILocation(line: 508, column: 7, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 508, column: 7)
!4837 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 507, column: 61)
!4838 = !DILocation(line: 508, column: 11, scope: !4836)
!4839 = !DILocation(line: 508, column: 13, scope: !4836)
!4840 = !DILocation(line: 508, column: 21, scope: !4836)
!4841 = !DILocation(line: 508, column: 18, scope: !4836)
!4842 = !DILocation(line: 508, column: 27, scope: !4836)
!4843 = !DILocation(line: 509, column: 7, scope: !4836)
!4844 = !DILocation(line: 509, column: 11, scope: !4836)
!4845 = !DILocation(line: 509, column: 13, scope: !4836)
!4846 = !DILocation(line: 509, column: 21, scope: !4836)
!4847 = !DILocation(line: 509, column: 18, scope: !4836)
!4848 = !DILocation(line: 508, column: 7, scope: !4837)
!4849 = !DILocation(line: 510, column: 11, scope: !4836)
!4850 = !DILocation(line: 510, column: 4, scope: !4836)
!4851 = !DILocation(line: 513, column: 33, scope: !4837)
!4852 = !DILocation(line: 513, column: 37, scope: !4837)
!4853 = !DILocation(line: 513, column: 8, scope: !4837)
!4854 = !DILocation(line: 512, column: 34, scope: !4837)
!4855 = !DILocation(line: 512, column: 5, scope: !4837)
!4856 = !DILocation(line: 507, column: 2, scope: !4828)
!4857 = distinct !{!4857, !4834, !4858}
!4858 = !DILocation(line: 514, column: 2, scope: !4824)
!4859 = !DILocation(line: 516, column: 2, scope: !4810)
!4860 = !DILocation(line: 517, column: 1, scope: !4810)
!4861 = distinct !DISubprogram(name: "pci_vpd_info_field_size", scope: !9, file: !9, line: 2269, type: !4801, scopeLine: 2270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4862 = !DILocalVariable(name: "info_field", arg: 1, scope: !4861, file: !9, line: 2269, type: !4710)
!4863 = !DILocation(line: 2269, column: 52, scope: !4861)
!4864 = !DILocation(line: 2271, column: 9, scope: !4861)
!4865 = !DILocation(line: 2271, column: 2, scope: !4861)
!4866 = distinct !DISubprogram(name: "quirk_f0_vpd_link", scope: !3, file: !3, line: 526, type: !3831, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4867 = !DILocalVariable(name: "dev", arg: 1, scope: !4866, file: !3, line: 526, type: !7)
!4868 = !DILocation(line: 526, column: 47, scope: !4866)
!4869 = !DILocalVariable(name: "f0", scope: !4866, file: !3, line: 528, type: !7)
!4870 = !DILocation(line: 528, column: 18, scope: !4866)
!4871 = !DILocation(line: 530, column: 7, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4866, file: !3, line: 530, column: 6)
!4873 = !DILocation(line: 530, column: 6, scope: !4866)
!4874 = !DILocation(line: 531, column: 3, scope: !4872)
!4875 = !DILocation(line: 533, column: 20, scope: !4866)
!4876 = !DILocation(line: 533, column: 25, scope: !4866)
!4877 = !DILocation(line: 533, column: 30, scope: !4866)
!4878 = !DILocation(line: 533, column: 7, scope: !4866)
!4879 = !DILocation(line: 533, column: 5, scope: !4866)
!4880 = !DILocation(line: 534, column: 7, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4866, file: !3, line: 534, column: 6)
!4882 = !DILocation(line: 534, column: 6, scope: !4866)
!4883 = !DILocation(line: 535, column: 3, scope: !4881)
!4884 = !DILocation(line: 537, column: 6, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4866, file: !3, line: 537, column: 6)
!4886 = !DILocation(line: 537, column: 10, scope: !4885)
!4887 = !DILocation(line: 537, column: 14, scope: !4885)
!4888 = !DILocation(line: 537, column: 17, scope: !4885)
!4889 = !DILocation(line: 537, column: 22, scope: !4885)
!4890 = !DILocation(line: 537, column: 31, scope: !4885)
!4891 = !DILocation(line: 537, column: 35, scope: !4885)
!4892 = !DILocation(line: 537, column: 28, scope: !4885)
!4893 = !DILocation(line: 537, column: 41, scope: !4885)
!4894 = !DILocation(line: 538, column: 6, scope: !4885)
!4895 = !DILocation(line: 538, column: 11, scope: !4885)
!4896 = !DILocation(line: 538, column: 21, scope: !4885)
!4897 = !DILocation(line: 538, column: 25, scope: !4885)
!4898 = !DILocation(line: 538, column: 18, scope: !4885)
!4899 = !DILocation(line: 538, column: 32, scope: !4885)
!4900 = !DILocation(line: 538, column: 35, scope: !4885)
!4901 = !DILocation(line: 538, column: 40, scope: !4885)
!4902 = !DILocation(line: 538, column: 50, scope: !4885)
!4903 = !DILocation(line: 538, column: 54, scope: !4885)
!4904 = !DILocation(line: 538, column: 47, scope: !4885)
!4905 = !DILocation(line: 537, column: 6, scope: !4866)
!4906 = !DILocation(line: 539, column: 3, scope: !4885)
!4907 = !DILocation(line: 539, column: 8, scope: !4885)
!4908 = !DILocation(line: 539, column: 18, scope: !4885)
!4909 = !DILocation(line: 541, column: 14, scope: !4866)
!4910 = !DILocation(line: 541, column: 2, scope: !4866)
!4911 = !DILocation(line: 542, column: 1, scope: !4866)
!4912 = distinct !DISubprogram(name: "quirk_blacklist_vpd", scope: !3, file: !3, line: 553, type: !3831, scopeLine: 554, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4913 = !DILocalVariable(name: "dev", arg: 1, scope: !4912, file: !3, line: 553, type: !7)
!4914 = !DILocation(line: 553, column: 49, scope: !4912)
!4915 = !DILocation(line: 555, column: 6, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4912, file: !3, line: 555, column: 6)
!4917 = !DILocation(line: 555, column: 11, scope: !4916)
!4918 = !DILocation(line: 555, column: 6, scope: !4912)
!4919 = !DILocation(line: 556, column: 3, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 555, column: 16)
!4921 = !DILocation(line: 556, column: 8, scope: !4920)
!4922 = !DILocation(line: 556, column: 13, scope: !4920)
!4923 = !DILocation(line: 556, column: 17, scope: !4920)
!4924 = !DILocation(line: 557, column: 3, scope: !4920)
!4925 = !DILocation(line: 558, column: 2, scope: !4920)
!4926 = !DILocation(line: 559, column: 1, scope: !4912)
!4927 = distinct !DISubprogram(name: "quirk_brcm_570x_limit_vpd", scope: !3, file: !3, line: 592, type: !3831, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4928 = !DILocalVariable(name: "dev", arg: 1, scope: !4927, file: !3, line: 592, type: !7)
!4929 = !DILocation(line: 592, column: 55, scope: !4927)
!4930 = !DILocation(line: 598, column: 7, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4927, file: !3, line: 598, column: 6)
!4932 = !DILocation(line: 598, column: 12, scope: !4931)
!4933 = !DILocation(line: 598, column: 19, scope: !4931)
!4934 = !DILocation(line: 598, column: 46, scope: !4931)
!4935 = !DILocation(line: 599, column: 7, scope: !4931)
!4936 = !DILocation(line: 599, column: 12, scope: !4931)
!4937 = !DILocation(line: 599, column: 19, scope: !4931)
!4938 = !DILocation(line: 599, column: 47, scope: !4931)
!4939 = !DILocation(line: 600, column: 7, scope: !4931)
!4940 = !DILocation(line: 600, column: 12, scope: !4931)
!4941 = !DILocation(line: 600, column: 19, scope: !4931)
!4942 = !DILocation(line: 600, column: 46, scope: !4931)
!4943 = !DILocation(line: 601, column: 7, scope: !4931)
!4944 = !DILocation(line: 601, column: 12, scope: !4931)
!4945 = !DILocation(line: 601, column: 19, scope: !4931)
!4946 = !DILocation(line: 601, column: 47, scope: !4931)
!4947 = !DILocation(line: 602, column: 8, scope: !4931)
!4948 = !DILocation(line: 602, column: 13, scope: !4931)
!4949 = !DILocation(line: 602, column: 20, scope: !4931)
!4950 = !DILocation(line: 602, column: 47, scope: !4931)
!4951 = !DILocation(line: 603, column: 8, scope: !4931)
!4952 = !DILocation(line: 603, column: 13, scope: !4931)
!4953 = !DILocation(line: 603, column: 22, scope: !4931)
!4954 = !DILocation(line: 603, column: 30, scope: !4931)
!4955 = !DILocation(line: 598, column: 6, scope: !4927)
!4956 = !DILocation(line: 604, column: 7, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4958, file: !3, line: 604, column: 7)
!4958 = distinct !DILexicalBlock(scope: !4931, file: !3, line: 603, column: 39)
!4959 = !DILocation(line: 604, column: 12, scope: !4957)
!4960 = !DILocation(line: 604, column: 7, scope: !4958)
!4961 = !DILocation(line: 605, column: 4, scope: !4957)
!4962 = !DILocation(line: 605, column: 9, scope: !4957)
!4963 = !DILocation(line: 605, column: 14, scope: !4957)
!4964 = !DILocation(line: 605, column: 18, scope: !4957)
!4965 = !DILocation(line: 606, column: 2, scope: !4958)
!4966 = !DILocation(line: 607, column: 1, scope: !4927)
!4967 = distinct !DISubprogram(name: "quirk_chelsio_extend_vpd", scope: !3, file: !3, line: 627, type: !3831, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!4968 = !DILocalVariable(name: "dev", arg: 1, scope: !4967, file: !3, line: 627, type: !7)
!4969 = !DILocation(line: 627, column: 54, scope: !4967)
!4970 = !DILocalVariable(name: "chip", scope: !4967, file: !3, line: 629, type: !6)
!4971 = !DILocation(line: 629, column: 6, scope: !4967)
!4972 = !DILocation(line: 629, column: 14, scope: !4967)
!4973 = !DILocation(line: 629, column: 19, scope: !4967)
!4974 = !DILocation(line: 629, column: 26, scope: !4967)
!4975 = !DILocation(line: 629, column: 36, scope: !4967)
!4976 = !DILocalVariable(name: "func", scope: !4967, file: !3, line: 630, type: !6)
!4977 = !DILocation(line: 630, column: 6, scope: !4967)
!4978 = !DILocation(line: 630, column: 14, scope: !4967)
!4979 = !DILocation(line: 630, column: 19, scope: !4967)
!4980 = !DILocation(line: 630, column: 26, scope: !4967)
!4981 = !DILocation(line: 630, column: 36, scope: !4967)
!4982 = !DILocalVariable(name: "prod", scope: !4967, file: !3, line: 631, type: !6)
!4983 = !DILocation(line: 631, column: 6, scope: !4967)
!4984 = !DILocation(line: 631, column: 14, scope: !4967)
!4985 = !DILocation(line: 631, column: 19, scope: !4967)
!4986 = !DILocation(line: 631, column: 26, scope: !4967)
!4987 = !DILocation(line: 631, column: 36, scope: !4967)
!4988 = !DILocation(line: 644, column: 6, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4967, file: !3, line: 644, column: 6)
!4990 = !DILocation(line: 644, column: 11, scope: !4989)
!4991 = !DILocation(line: 644, column: 18, scope: !4989)
!4992 = !DILocation(line: 644, column: 21, scope: !4989)
!4993 = !DILocation(line: 644, column: 26, scope: !4989)
!4994 = !DILocation(line: 644, column: 6, scope: !4967)
!4995 = !DILocation(line: 645, column: 20, scope: !4989)
!4996 = !DILocation(line: 645, column: 3, scope: !4989)
!4997 = !DILocation(line: 646, column: 11, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 646, column: 11)
!4999 = !DILocation(line: 646, column: 16, scope: !4998)
!5000 = !DILocation(line: 646, column: 23, scope: !4998)
!5001 = !DILocation(line: 646, column: 26, scope: !4998)
!5002 = !DILocation(line: 646, column: 31, scope: !4998)
!5003 = !DILocation(line: 646, column: 11, scope: !4989)
!5004 = !DILocation(line: 647, column: 20, scope: !4998)
!5005 = !DILocation(line: 647, column: 3, scope: !4998)
!5006 = !DILocation(line: 648, column: 1, scope: !4967)
!5007 = distinct !DISubprogram(name: "get_order", scope: !5008, file: !5008, line: 29, type: !5009, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5008 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5009 = !DISubroutineType(types: !5010)
!5010 = !{!6, !48}
!5011 = !DILocalVariable(name: "x", arg: 1, scope: !5012, file: !5013, line: 366, type: !39)
!5012 = distinct !DISubprogram(name: "fls64", scope: !5013, file: !5013, line: 366, type: !5014, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5013 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5014 = !DISubroutineType(types: !5015)
!5015 = !{!6, !39}
!5016 = !DILocation(line: 366, column: 40, scope: !5012, inlinedAt: !5017)
!5017 = distinct !DILocation(line: 46, column: 9, scope: !5007)
!5018 = !DILocalVariable(name: "bitpos", scope: !5012, file: !5013, line: 368, type: !6)
!5019 = !DILocation(line: 368, column: 6, scope: !5012, inlinedAt: !5017)
!5020 = !DILocalVariable(name: "size", arg: 1, scope: !5007, file: !5008, line: 29, type: !48)
!5021 = !DILocation(line: 29, column: 63, scope: !5007)
!5022 = !DILocation(line: 31, column: 27, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5007, file: !5008, line: 31, column: 6)
!5024 = !DILocation(line: 31, column: 6, scope: !5023)
!5025 = !DILocation(line: 31, column: 6, scope: !5007)
!5026 = !DILocation(line: 32, column: 8, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5028, file: !5008, line: 32, column: 7)
!5028 = distinct !DILexicalBlock(scope: !5023, file: !5008, line: 31, column: 34)
!5029 = !DILocation(line: 32, column: 7, scope: !5028)
!5030 = !DILocation(line: 33, column: 4, scope: !5027)
!5031 = !DILocation(line: 35, column: 7, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5028, file: !5008, line: 35, column: 7)
!5033 = !DILocation(line: 35, column: 12, scope: !5032)
!5034 = !DILocation(line: 35, column: 7, scope: !5028)
!5035 = !DILocation(line: 36, column: 4, scope: !5032)
!5036 = !DILocation(line: 38, column: 10, scope: !5028)
!5037 = !DILocation(line: 38, column: 28, scope: !5028)
!5038 = !DILocation(line: 38, column: 41, scope: !5028)
!5039 = !DILocation(line: 38, column: 3, scope: !5028)
!5040 = !DILocation(line: 41, column: 6, scope: !5007)
!5041 = !DILocation(line: 42, column: 7, scope: !5007)
!5042 = !DILocation(line: 46, column: 15, scope: !5007)
!5043 = !DILocation(line: 374, column: 2, scope: !5012, inlinedAt: !5017)
!5044 = !DILocation(line: 376, column: 14, scope: !5012, inlinedAt: !5017)
!5045 = !{i32 763180}
!5046 = !DILocation(line: 377, column: 9, scope: !5012, inlinedAt: !5017)
!5047 = !DILocation(line: 377, column: 16, scope: !5012, inlinedAt: !5017)
!5048 = !DILocation(line: 46, column: 2, scope: !5007)
!5049 = !DILocation(line: 48, column: 1, scope: !5007)
!5050 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5051, file: !5051, line: 30, type: !5052, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5051 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5052 = !DISubroutineType(types: !5053)
!5053 = !{!6, !37}
!5054 = !DILocation(line: 366, column: 40, scope: !5012, inlinedAt: !5055)
!5055 = distinct !DILocation(line: 32, column: 9, scope: !5050)
!5056 = !DILocation(line: 368, column: 6, scope: !5012, inlinedAt: !5055)
!5057 = !DILocalVariable(name: "n", arg: 1, scope: !5050, file: !5051, line: 30, type: !37)
!5058 = !DILocation(line: 30, column: 21, scope: !5050)
!5059 = !DILocation(line: 32, column: 15, scope: !5050)
!5060 = !DILocation(line: 374, column: 2, scope: !5012, inlinedAt: !5055)
!5061 = !DILocation(line: 376, column: 14, scope: !5012, inlinedAt: !5055)
!5062 = !DILocation(line: 377, column: 9, scope: !5012, inlinedAt: !5055)
!5063 = !DILocation(line: 377, column: 16, scope: !5012, inlinedAt: !5055)
!5064 = !DILocation(line: 32, column: 18, scope: !5050)
!5065 = !DILocation(line: 32, column: 2, scope: !5050)
!5066 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5067, file: !5067, line: 137, type: !5068, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5067 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5068 = !DISubroutineType(types: !5069)
!5069 = !{!73, !831, !2021, !213, !632}
!5070 = !DILocalVariable(name: "s", arg: 1, scope: !5066, file: !5067, line: 137, type: !831)
!5071 = !DILocation(line: 137, column: 54, scope: !5066)
!5072 = !DILocalVariable(name: "object", arg: 2, scope: !5066, file: !5067, line: 137, type: !2021)
!5073 = !DILocation(line: 137, column: 69, scope: !5066)
!5074 = !DILocalVariable(name: "size", arg: 3, scope: !5066, file: !5067, line: 138, type: !213)
!5075 = !DILocation(line: 138, column: 12, scope: !5066)
!5076 = !DILocalVariable(name: "flags", arg: 4, scope: !5066, file: !5067, line: 138, type: !632)
!5077 = !DILocation(line: 138, column: 24, scope: !5066)
!5078 = !DILocation(line: 140, column: 17, scope: !5066)
!5079 = !DILocation(line: 140, column: 2, scope: !5066)
!5080 = distinct !DISubprogram(name: "pci_vpd_f0_read", scope: !3, file: !3, line: 319, type: !3967, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5081 = !DILocalVariable(name: "dev", arg: 1, scope: !5080, file: !3, line: 319, type: !7)
!5082 = !DILocation(line: 319, column: 48, scope: !5080)
!5083 = !DILocalVariable(name: "pos", arg: 2, scope: !5080, file: !3, line: 319, type: !415)
!5084 = !DILocation(line: 319, column: 60, scope: !5080)
!5085 = !DILocalVariable(name: "count", arg: 3, scope: !5080, file: !3, line: 319, type: !213)
!5086 = !DILocation(line: 319, column: 72, scope: !5080)
!5087 = !DILocalVariable(name: "arg", arg: 4, scope: !5080, file: !3, line: 320, type: !73)
!5088 = !DILocation(line: 320, column: 17, scope: !5080)
!5089 = !DILocalVariable(name: "tdev", scope: !5080, file: !3, line: 322, type: !7)
!5090 = !DILocation(line: 322, column: 18, scope: !5080)
!5091 = !DILocation(line: 322, column: 38, scope: !5080)
!5092 = !DILocation(line: 322, column: 43, scope: !5080)
!5093 = !DILocation(line: 323, column: 10, scope: !5080)
!5094 = !DILocation(line: 322, column: 25, scope: !5080)
!5095 = !DILocalVariable(name: "ret", scope: !5080, file: !3, line: 324, type: !198)
!5096 = !DILocation(line: 324, column: 10, scope: !5080)
!5097 = !DILocation(line: 326, column: 7, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 326, column: 6)
!5099 = !DILocation(line: 326, column: 6, scope: !5080)
!5100 = !DILocation(line: 327, column: 3, scope: !5098)
!5101 = !DILocation(line: 329, column: 21, scope: !5080)
!5102 = !DILocation(line: 329, column: 27, scope: !5080)
!5103 = !DILocation(line: 329, column: 32, scope: !5080)
!5104 = !DILocation(line: 329, column: 39, scope: !5080)
!5105 = !DILocation(line: 329, column: 8, scope: !5080)
!5106 = !DILocation(line: 329, column: 6, scope: !5080)
!5107 = !DILocation(line: 330, column: 14, scope: !5080)
!5108 = !DILocation(line: 330, column: 2, scope: !5080)
!5109 = !DILocation(line: 331, column: 9, scope: !5080)
!5110 = !DILocation(line: 331, column: 2, scope: !5080)
!5111 = !DILocation(line: 332, column: 1, scope: !5080)
!5112 = distinct !DISubprogram(name: "pci_vpd_f0_write", scope: !3, file: !3, line: 334, type: !3971, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5113 = !DILocalVariable(name: "dev", arg: 1, scope: !5112, file: !3, line: 334, type: !7)
!5114 = !DILocation(line: 334, column: 49, scope: !5112)
!5115 = !DILocalVariable(name: "pos", arg: 2, scope: !5112, file: !3, line: 334, type: !415)
!5116 = !DILocation(line: 334, column: 61, scope: !5112)
!5117 = !DILocalVariable(name: "count", arg: 3, scope: !5112, file: !3, line: 334, type: !213)
!5118 = !DILocation(line: 334, column: 73, scope: !5112)
!5119 = !DILocalVariable(name: "arg", arg: 4, scope: !5112, file: !3, line: 335, type: !2021)
!5120 = !DILocation(line: 335, column: 17, scope: !5112)
!5121 = !DILocalVariable(name: "tdev", scope: !5112, file: !3, line: 337, type: !7)
!5122 = !DILocation(line: 337, column: 18, scope: !5112)
!5123 = !DILocation(line: 337, column: 38, scope: !5112)
!5124 = !DILocation(line: 337, column: 43, scope: !5112)
!5125 = !DILocation(line: 338, column: 10, scope: !5112)
!5126 = !DILocation(line: 337, column: 25, scope: !5112)
!5127 = !DILocalVariable(name: "ret", scope: !5112, file: !3, line: 339, type: !198)
!5128 = !DILocation(line: 339, column: 10, scope: !5112)
!5129 = !DILocation(line: 341, column: 7, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 341, column: 6)
!5131 = !DILocation(line: 341, column: 6, scope: !5112)
!5132 = !DILocation(line: 342, column: 3, scope: !5130)
!5133 = !DILocation(line: 344, column: 22, scope: !5112)
!5134 = !DILocation(line: 344, column: 28, scope: !5112)
!5135 = !DILocation(line: 344, column: 33, scope: !5112)
!5136 = !DILocation(line: 344, column: 40, scope: !5112)
!5137 = !DILocation(line: 344, column: 8, scope: !5112)
!5138 = !DILocation(line: 344, column: 6, scope: !5112)
!5139 = !DILocation(line: 345, column: 14, scope: !5112)
!5140 = !DILocation(line: 345, column: 2, scope: !5112)
!5141 = !DILocation(line: 346, column: 9, scope: !5112)
!5142 = !DILocation(line: 346, column: 2, scope: !5112)
!5143 = !DILocation(line: 347, column: 1, scope: !5112)
!5144 = distinct !DISubprogram(name: "pci_vpd_f0_set_size", scope: !3, file: !3, line: 349, type: !3975, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5145 = !DILocalVariable(name: "dev", arg: 1, scope: !5144, file: !3, line: 349, type: !7)
!5146 = !DILocation(line: 349, column: 48, scope: !5144)
!5147 = !DILocalVariable(name: "len", arg: 2, scope: !5144, file: !3, line: 349, type: !213)
!5148 = !DILocation(line: 349, column: 60, scope: !5144)
!5149 = !DILocalVariable(name: "tdev", scope: !5144, file: !3, line: 351, type: !7)
!5150 = !DILocation(line: 351, column: 18, scope: !5144)
!5151 = !DILocation(line: 351, column: 38, scope: !5144)
!5152 = !DILocation(line: 351, column: 43, scope: !5144)
!5153 = !DILocation(line: 352, column: 10, scope: !5144)
!5154 = !DILocation(line: 351, column: 25, scope: !5144)
!5155 = !DILocalVariable(name: "ret", scope: !5144, file: !3, line: 353, type: !6)
!5156 = !DILocation(line: 353, column: 6, scope: !5144)
!5157 = !DILocation(line: 355, column: 7, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 355, column: 6)
!5159 = !DILocation(line: 355, column: 6, scope: !5144)
!5160 = !DILocation(line: 356, column: 3, scope: !5158)
!5161 = !DILocation(line: 358, column: 25, scope: !5144)
!5162 = !DILocation(line: 358, column: 31, scope: !5144)
!5163 = !DILocation(line: 358, column: 8, scope: !5144)
!5164 = !DILocation(line: 358, column: 6, scope: !5144)
!5165 = !DILocation(line: 359, column: 14, scope: !5144)
!5166 = !DILocation(line: 359, column: 2, scope: !5144)
!5167 = !DILocation(line: 360, column: 9, scope: !5144)
!5168 = !DILocation(line: 360, column: 2, scope: !5144)
!5169 = !DILocation(line: 361, column: 1, scope: !5144)
!5170 = distinct !DISubprogram(name: "pci_vpd_read", scope: !3, file: !3, line: 175, type: !3967, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5171 = !DILocalVariable(name: "dev", arg: 1, scope: !5170, file: !3, line: 175, type: !7)
!5172 = !DILocation(line: 175, column: 45, scope: !5170)
!5173 = !DILocalVariable(name: "pos", arg: 2, scope: !5170, file: !3, line: 175, type: !415)
!5174 = !DILocation(line: 175, column: 57, scope: !5170)
!5175 = !DILocalVariable(name: "count", arg: 3, scope: !5170, file: !3, line: 175, type: !213)
!5176 = !DILocation(line: 175, column: 69, scope: !5170)
!5177 = !DILocalVariable(name: "arg", arg: 4, scope: !5170, file: !3, line: 176, type: !73)
!5178 = !DILocation(line: 176, column: 14, scope: !5170)
!5179 = !DILocalVariable(name: "vpd", scope: !5170, file: !3, line: 178, type: !3957)
!5180 = !DILocation(line: 178, column: 18, scope: !5170)
!5181 = !DILocation(line: 178, column: 24, scope: !5170)
!5182 = !DILocation(line: 178, column: 29, scope: !5170)
!5183 = !DILocalVariable(name: "ret", scope: !5170, file: !3, line: 179, type: !6)
!5184 = !DILocation(line: 179, column: 6, scope: !5170)
!5185 = !DILocalVariable(name: "end", scope: !5170, file: !3, line: 180, type: !415)
!5186 = !DILocation(line: 180, column: 9, scope: !5170)
!5187 = !DILocation(line: 180, column: 15, scope: !5170)
!5188 = !DILocation(line: 180, column: 21, scope: !5170)
!5189 = !DILocation(line: 180, column: 19, scope: !5170)
!5190 = !DILocalVariable(name: "buf", scope: !5170, file: !3, line: 181, type: !5191)
!5191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!5192 = !DILocation(line: 181, column: 6, scope: !5170)
!5193 = !DILocation(line: 181, column: 12, scope: !5170)
!5194 = !DILocation(line: 183, column: 6, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 183, column: 6)
!5196 = !DILocation(line: 183, column: 10, scope: !5195)
!5197 = !DILocation(line: 183, column: 6, scope: !5170)
!5198 = !DILocation(line: 184, column: 3, scope: !5195)
!5199 = !DILocation(line: 186, column: 7, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 186, column: 6)
!5201 = !DILocation(line: 186, column: 12, scope: !5200)
!5202 = !DILocation(line: 186, column: 6, scope: !5170)
!5203 = !DILocation(line: 187, column: 3, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 186, column: 19)
!5205 = !DILocation(line: 187, column: 8, scope: !5204)
!5206 = !DILocation(line: 187, column: 14, scope: !5204)
!5207 = !DILocation(line: 188, column: 27, scope: !5204)
!5208 = !DILocation(line: 188, column: 32, scope: !5204)
!5209 = !DILocation(line: 188, column: 37, scope: !5204)
!5210 = !DILocation(line: 188, column: 14, scope: !5204)
!5211 = !DILocation(line: 188, column: 3, scope: !5204)
!5212 = !DILocation(line: 188, column: 8, scope: !5204)
!5213 = !DILocation(line: 188, column: 12, scope: !5204)
!5214 = !DILocation(line: 189, column: 2, scope: !5204)
!5215 = !DILocation(line: 191, column: 6, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 191, column: 6)
!5217 = !DILocation(line: 191, column: 11, scope: !5216)
!5218 = !DILocation(line: 191, column: 15, scope: !5216)
!5219 = !DILocation(line: 191, column: 6, scope: !5170)
!5220 = !DILocation(line: 192, column: 3, scope: !5216)
!5221 = !DILocation(line: 194, column: 6, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 194, column: 6)
!5223 = !DILocation(line: 194, column: 12, scope: !5222)
!5224 = !DILocation(line: 194, column: 17, scope: !5222)
!5225 = !DILocation(line: 194, column: 10, scope: !5222)
!5226 = !DILocation(line: 194, column: 6, scope: !5170)
!5227 = !DILocation(line: 195, column: 3, scope: !5222)
!5228 = !DILocation(line: 197, column: 6, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 197, column: 6)
!5230 = !DILocation(line: 197, column: 12, scope: !5229)
!5231 = !DILocation(line: 197, column: 17, scope: !5229)
!5232 = !DILocation(line: 197, column: 10, scope: !5229)
!5233 = !DILocation(line: 197, column: 6, scope: !5170)
!5234 = !DILocation(line: 198, column: 9, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5229, file: !3, line: 197, column: 22)
!5236 = !DILocation(line: 198, column: 14, scope: !5235)
!5237 = !DILocation(line: 198, column: 7, scope: !5235)
!5238 = !DILocation(line: 199, column: 11, scope: !5235)
!5239 = !DILocation(line: 199, column: 17, scope: !5235)
!5240 = !DILocation(line: 199, column: 15, scope: !5235)
!5241 = !DILocation(line: 199, column: 9, scope: !5235)
!5242 = !DILocation(line: 200, column: 2, scope: !5235)
!5243 = !DILocation(line: 202, column: 27, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 202, column: 6)
!5245 = !DILocation(line: 202, column: 32, scope: !5244)
!5246 = !DILocation(line: 202, column: 6, scope: !5244)
!5247 = !DILocation(line: 202, column: 6, scope: !5170)
!5248 = !DILocation(line: 203, column: 3, scope: !5244)
!5249 = !DILocation(line: 205, column: 21, scope: !5170)
!5250 = !DILocation(line: 205, column: 8, scope: !5170)
!5251 = !DILocation(line: 205, column: 6, scope: !5170)
!5252 = !DILocation(line: 206, column: 6, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 206, column: 6)
!5254 = !DILocation(line: 206, column: 10, scope: !5253)
!5255 = !DILocation(line: 206, column: 6, scope: !5170)
!5256 = !DILocation(line: 207, column: 3, scope: !5253)
!5257 = !DILocation(line: 209, column: 2, scope: !5170)
!5258 = !DILocation(line: 209, column: 9, scope: !5170)
!5259 = !DILocation(line: 209, column: 15, scope: !5170)
!5260 = !DILocation(line: 209, column: 13, scope: !5170)
!5261 = !DILocalVariable(name: "val", scope: !5262, file: !3, line: 210, type: !80)
!5262 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 209, column: 20)
!5263 = !DILocation(line: 210, column: 7, scope: !5262)
!5264 = !DILocalVariable(name: "i", scope: !5262, file: !3, line: 211, type: !74)
!5265 = !DILocation(line: 211, column: 16, scope: !5262)
!5266 = !DILocalVariable(name: "skip", scope: !5262, file: !3, line: 211, type: !74)
!5267 = !DILocation(line: 211, column: 19, scope: !5262)
!5268 = !DILocation(line: 213, column: 36, scope: !5262)
!5269 = !DILocation(line: 213, column: 41, scope: !5262)
!5270 = !DILocation(line: 213, column: 46, scope: !5262)
!5271 = !DILocation(line: 213, column: 50, scope: !5262)
!5272 = !DILocation(line: 214, column: 8, scope: !5262)
!5273 = !DILocation(line: 214, column: 12, scope: !5262)
!5274 = !DILocation(line: 213, column: 9, scope: !5262)
!5275 = !DILocation(line: 213, column: 7, scope: !5262)
!5276 = !DILocation(line: 215, column: 7, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 215, column: 7)
!5278 = !DILocation(line: 215, column: 11, scope: !5277)
!5279 = !DILocation(line: 215, column: 7, scope: !5262)
!5280 = !DILocation(line: 216, column: 4, scope: !5277)
!5281 = !DILocation(line: 217, column: 3, scope: !5262)
!5282 = !DILocation(line: 217, column: 8, scope: !5262)
!5283 = !DILocation(line: 217, column: 13, scope: !5262)
!5284 = !DILocation(line: 218, column: 3, scope: !5262)
!5285 = !DILocation(line: 218, column: 8, scope: !5262)
!5286 = !DILocation(line: 218, column: 13, scope: !5262)
!5287 = !DILocation(line: 219, column: 22, scope: !5262)
!5288 = !DILocation(line: 219, column: 9, scope: !5262)
!5289 = !DILocation(line: 219, column: 7, scope: !5262)
!5290 = !DILocation(line: 220, column: 7, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 220, column: 7)
!5292 = !DILocation(line: 220, column: 11, scope: !5291)
!5293 = !DILocation(line: 220, column: 7, scope: !5262)
!5294 = !DILocation(line: 221, column: 4, scope: !5291)
!5295 = !DILocation(line: 223, column: 36, scope: !5262)
!5296 = !DILocation(line: 223, column: 41, scope: !5262)
!5297 = !DILocation(line: 223, column: 46, scope: !5262)
!5298 = !DILocation(line: 223, column: 50, scope: !5262)
!5299 = !DILocation(line: 223, column: 9, scope: !5262)
!5300 = !DILocation(line: 223, column: 7, scope: !5262)
!5301 = !DILocation(line: 224, column: 7, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 224, column: 7)
!5303 = !DILocation(line: 224, column: 11, scope: !5302)
!5304 = !DILocation(line: 224, column: 7, scope: !5262)
!5305 = !DILocation(line: 225, column: 4, scope: !5302)
!5306 = !DILocation(line: 227, column: 10, scope: !5262)
!5307 = !DILocation(line: 227, column: 14, scope: !5262)
!5308 = !DILocation(line: 227, column: 8, scope: !5262)
!5309 = !DILocation(line: 228, column: 10, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 228, column: 3)
!5311 = !DILocation(line: 228, column: 8, scope: !5310)
!5312 = !DILocation(line: 228, column: 16, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 228, column: 3)
!5314 = !DILocation(line: 228, column: 18, scope: !5313)
!5315 = !DILocation(line: 228, column: 3, scope: !5310)
!5316 = !DILocation(line: 229, column: 8, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5318, file: !3, line: 229, column: 8)
!5318 = distinct !DILexicalBlock(scope: !5313, file: !3, line: 228, column: 38)
!5319 = !DILocation(line: 229, column: 13, scope: !5317)
!5320 = !DILocation(line: 229, column: 10, scope: !5317)
!5321 = !DILocation(line: 229, column: 8, scope: !5318)
!5322 = !DILocation(line: 230, column: 14, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5317, file: !3, line: 229, column: 19)
!5324 = !DILocation(line: 230, column: 9, scope: !5323)
!5325 = !DILocation(line: 230, column: 12, scope: !5323)
!5326 = !DILocation(line: 231, column: 9, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5323, file: !3, line: 231, column: 9)
!5328 = !DILocation(line: 231, column: 18, scope: !5327)
!5329 = !DILocation(line: 231, column: 15, scope: !5327)
!5330 = !DILocation(line: 231, column: 9, scope: !5323)
!5331 = !DILocation(line: 232, column: 6, scope: !5327)
!5332 = !DILocation(line: 233, column: 4, scope: !5323)
!5333 = !DILocation(line: 234, column: 8, scope: !5318)
!5334 = !DILocation(line: 235, column: 3, scope: !5318)
!5335 = !DILocation(line: 228, column: 34, scope: !5313)
!5336 = !DILocation(line: 228, column: 3, scope: !5313)
!5337 = distinct !{!5337, !5315, !5338}
!5338 = !DILocation(line: 235, column: 3, scope: !5310)
!5339 = distinct !{!5339, !5257, !5340}
!5340 = !DILocation(line: 236, column: 2, scope: !5170)
!5341 = !DILabel(scope: !5170, name: "out", file: !3, line: 237)
!5342 = !DILocation(line: 237, column: 1, scope: !5170)
!5343 = !DILocation(line: 238, column: 16, scope: !5170)
!5344 = !DILocation(line: 238, column: 21, scope: !5170)
!5345 = !DILocation(line: 238, column: 2, scope: !5170)
!5346 = !DILocation(line: 239, column: 9, scope: !5170)
!5347 = !DILocation(line: 239, column: 15, scope: !5170)
!5348 = !DILocation(line: 239, column: 21, scope: !5170)
!5349 = !DILocation(line: 239, column: 2, scope: !5170)
!5350 = !DILocation(line: 240, column: 1, scope: !5170)
!5351 = distinct !DISubprogram(name: "pci_vpd_write", scope: !3, file: !3, line: 242, type: !3971, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5352 = !DILocalVariable(name: "dev", arg: 1, scope: !5351, file: !3, line: 242, type: !7)
!5353 = !DILocation(line: 242, column: 46, scope: !5351)
!5354 = !DILocalVariable(name: "pos", arg: 2, scope: !5351, file: !3, line: 242, type: !415)
!5355 = !DILocation(line: 242, column: 58, scope: !5351)
!5356 = !DILocalVariable(name: "count", arg: 3, scope: !5351, file: !3, line: 242, type: !213)
!5357 = !DILocation(line: 242, column: 70, scope: !5351)
!5358 = !DILocalVariable(name: "arg", arg: 4, scope: !5351, file: !3, line: 243, type: !2021)
!5359 = !DILocation(line: 243, column: 21, scope: !5351)
!5360 = !DILocalVariable(name: "vpd", scope: !5351, file: !3, line: 245, type: !3957)
!5361 = !DILocation(line: 245, column: 18, scope: !5351)
!5362 = !DILocation(line: 245, column: 24, scope: !5351)
!5363 = !DILocation(line: 245, column: 29, scope: !5351)
!5364 = !DILocalVariable(name: "buf", scope: !5351, file: !3, line: 246, type: !4710)
!5365 = !DILocation(line: 246, column: 12, scope: !5351)
!5366 = !DILocation(line: 246, column: 18, scope: !5351)
!5367 = !DILocalVariable(name: "end", scope: !5351, file: !3, line: 247, type: !415)
!5368 = !DILocation(line: 247, column: 9, scope: !5351)
!5369 = !DILocation(line: 247, column: 15, scope: !5351)
!5370 = !DILocation(line: 247, column: 21, scope: !5351)
!5371 = !DILocation(line: 247, column: 19, scope: !5351)
!5372 = !DILocalVariable(name: "ret", scope: !5351, file: !3, line: 248, type: !6)
!5373 = !DILocation(line: 248, column: 6, scope: !5351)
!5374 = !DILocation(line: 250, column: 6, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 250, column: 6)
!5376 = !DILocation(line: 250, column: 10, scope: !5375)
!5377 = !DILocation(line: 250, column: 14, scope: !5375)
!5378 = !DILocation(line: 250, column: 18, scope: !5375)
!5379 = !DILocation(line: 250, column: 22, scope: !5375)
!5380 = !DILocation(line: 250, column: 27, scope: !5375)
!5381 = !DILocation(line: 250, column: 31, scope: !5375)
!5382 = !DILocation(line: 250, column: 37, scope: !5375)
!5383 = !DILocation(line: 250, column: 6, scope: !5351)
!5384 = !DILocation(line: 251, column: 3, scope: !5375)
!5385 = !DILocation(line: 253, column: 7, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 253, column: 6)
!5387 = !DILocation(line: 253, column: 12, scope: !5386)
!5388 = !DILocation(line: 253, column: 6, scope: !5351)
!5389 = !DILocation(line: 254, column: 3, scope: !5390)
!5390 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 253, column: 19)
!5391 = !DILocation(line: 254, column: 8, scope: !5390)
!5392 = !DILocation(line: 254, column: 14, scope: !5390)
!5393 = !DILocation(line: 255, column: 27, scope: !5390)
!5394 = !DILocation(line: 255, column: 32, scope: !5390)
!5395 = !DILocation(line: 255, column: 37, scope: !5390)
!5396 = !DILocation(line: 255, column: 14, scope: !5390)
!5397 = !DILocation(line: 255, column: 3, scope: !5390)
!5398 = !DILocation(line: 255, column: 8, scope: !5390)
!5399 = !DILocation(line: 255, column: 12, scope: !5390)
!5400 = !DILocation(line: 256, column: 2, scope: !5390)
!5401 = !DILocation(line: 258, column: 6, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 258, column: 6)
!5403 = !DILocation(line: 258, column: 11, scope: !5402)
!5404 = !DILocation(line: 258, column: 15, scope: !5402)
!5405 = !DILocation(line: 258, column: 6, scope: !5351)
!5406 = !DILocation(line: 259, column: 3, scope: !5402)
!5407 = !DILocation(line: 261, column: 6, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 261, column: 6)
!5409 = !DILocation(line: 261, column: 12, scope: !5408)
!5410 = !DILocation(line: 261, column: 17, scope: !5408)
!5411 = !DILocation(line: 261, column: 10, scope: !5408)
!5412 = !DILocation(line: 261, column: 6, scope: !5351)
!5413 = !DILocation(line: 262, column: 3, scope: !5408)
!5414 = !DILocation(line: 264, column: 27, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 264, column: 6)
!5416 = !DILocation(line: 264, column: 32, scope: !5415)
!5417 = !DILocation(line: 264, column: 6, scope: !5415)
!5418 = !DILocation(line: 264, column: 6, scope: !5351)
!5419 = !DILocation(line: 265, column: 3, scope: !5415)
!5420 = !DILocation(line: 267, column: 21, scope: !5351)
!5421 = !DILocation(line: 267, column: 8, scope: !5351)
!5422 = !DILocation(line: 267, column: 6, scope: !5351)
!5423 = !DILocation(line: 268, column: 6, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 268, column: 6)
!5425 = !DILocation(line: 268, column: 10, scope: !5424)
!5426 = !DILocation(line: 268, column: 6, scope: !5351)
!5427 = !DILocation(line: 269, column: 3, scope: !5424)
!5428 = !DILocation(line: 271, column: 2, scope: !5351)
!5429 = !DILocation(line: 271, column: 9, scope: !5351)
!5430 = !DILocation(line: 271, column: 15, scope: !5351)
!5431 = !DILocation(line: 271, column: 13, scope: !5351)
!5432 = !DILocalVariable(name: "val", scope: !5433, file: !3, line: 272, type: !80)
!5433 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 271, column: 20)
!5434 = !DILocation(line: 272, column: 7, scope: !5433)
!5435 = !DILocation(line: 274, column: 13, scope: !5433)
!5436 = !DILocation(line: 274, column: 9, scope: !5433)
!5437 = !DILocation(line: 274, column: 7, scope: !5433)
!5438 = !DILocation(line: 275, column: 14, scope: !5433)
!5439 = !DILocation(line: 275, column: 10, scope: !5433)
!5440 = !DILocation(line: 275, column: 17, scope: !5433)
!5441 = !DILocation(line: 275, column: 7, scope: !5433)
!5442 = !DILocation(line: 276, column: 14, scope: !5433)
!5443 = !DILocation(line: 276, column: 10, scope: !5433)
!5444 = !DILocation(line: 276, column: 17, scope: !5433)
!5445 = !DILocation(line: 276, column: 7, scope: !5433)
!5446 = !DILocation(line: 277, column: 14, scope: !5433)
!5447 = !DILocation(line: 277, column: 10, scope: !5433)
!5448 = !DILocation(line: 277, column: 17, scope: !5433)
!5449 = !DILocation(line: 277, column: 7, scope: !5433)
!5450 = !DILocation(line: 279, column: 37, scope: !5433)
!5451 = !DILocation(line: 279, column: 42, scope: !5433)
!5452 = !DILocation(line: 279, column: 47, scope: !5433)
!5453 = !DILocation(line: 279, column: 51, scope: !5433)
!5454 = !DILocation(line: 279, column: 67, scope: !5433)
!5455 = !DILocation(line: 279, column: 9, scope: !5433)
!5456 = !DILocation(line: 279, column: 7, scope: !5433)
!5457 = !DILocation(line: 280, column: 7, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5433, file: !3, line: 280, column: 7)
!5459 = !DILocation(line: 280, column: 11, scope: !5458)
!5460 = !DILocation(line: 280, column: 7, scope: !5433)
!5461 = !DILocation(line: 281, column: 4, scope: !5458)
!5462 = !DILocation(line: 282, column: 36, scope: !5433)
!5463 = !DILocation(line: 282, column: 41, scope: !5433)
!5464 = !DILocation(line: 282, column: 46, scope: !5433)
!5465 = !DILocation(line: 282, column: 50, scope: !5433)
!5466 = !DILocation(line: 283, column: 8, scope: !5433)
!5467 = !DILocation(line: 283, column: 12, scope: !5433)
!5468 = !DILocation(line: 282, column: 9, scope: !5433)
!5469 = !DILocation(line: 282, column: 7, scope: !5433)
!5470 = !DILocation(line: 284, column: 7, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5433, file: !3, line: 284, column: 7)
!5472 = !DILocation(line: 284, column: 11, scope: !5471)
!5473 = !DILocation(line: 284, column: 7, scope: !5433)
!5474 = !DILocation(line: 285, column: 4, scope: !5471)
!5475 = !DILocation(line: 287, column: 3, scope: !5433)
!5476 = !DILocation(line: 287, column: 8, scope: !5433)
!5477 = !DILocation(line: 287, column: 13, scope: !5433)
!5478 = !DILocation(line: 288, column: 3, scope: !5433)
!5479 = !DILocation(line: 288, column: 8, scope: !5433)
!5480 = !DILocation(line: 288, column: 13, scope: !5433)
!5481 = !DILocation(line: 289, column: 22, scope: !5433)
!5482 = !DILocation(line: 289, column: 9, scope: !5433)
!5483 = !DILocation(line: 289, column: 7, scope: !5433)
!5484 = !DILocation(line: 290, column: 7, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5433, file: !3, line: 290, column: 7)
!5486 = !DILocation(line: 290, column: 11, scope: !5485)
!5487 = !DILocation(line: 290, column: 7, scope: !5433)
!5488 = !DILocation(line: 291, column: 4, scope: !5485)
!5489 = !DILocation(line: 293, column: 7, scope: !5433)
!5490 = distinct !{!5490, !5428, !5491}
!5491 = !DILocation(line: 294, column: 2, scope: !5351)
!5492 = !DILabel(scope: !5351, name: "out", file: !3, line: 295)
!5493 = !DILocation(line: 295, column: 1, scope: !5351)
!5494 = !DILocation(line: 296, column: 16, scope: !5351)
!5495 = !DILocation(line: 296, column: 21, scope: !5351)
!5496 = !DILocation(line: 296, column: 2, scope: !5351)
!5497 = !DILocation(line: 297, column: 9, scope: !5351)
!5498 = !DILocation(line: 297, column: 15, scope: !5351)
!5499 = !DILocation(line: 297, column: 21, scope: !5351)
!5500 = !DILocation(line: 297, column: 2, scope: !5351)
!5501 = !DILocation(line: 298, column: 1, scope: !5351)
!5502 = distinct !DISubprogram(name: "pci_vpd_set_size", scope: !3, file: !3, line: 300, type: !3975, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5503 = !DILocalVariable(name: "dev", arg: 1, scope: !5502, file: !3, line: 300, type: !7)
!5504 = !DILocation(line: 300, column: 45, scope: !5502)
!5505 = !DILocalVariable(name: "len", arg: 2, scope: !5502, file: !3, line: 300, type: !213)
!5506 = !DILocation(line: 300, column: 57, scope: !5502)
!5507 = !DILocalVariable(name: "vpd", scope: !5502, file: !3, line: 302, type: !3957)
!5508 = !DILocation(line: 302, column: 18, scope: !5502)
!5509 = !DILocation(line: 302, column: 24, scope: !5502)
!5510 = !DILocation(line: 302, column: 29, scope: !5502)
!5511 = !DILocation(line: 304, column: 6, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 304, column: 6)
!5513 = !DILocation(line: 304, column: 10, scope: !5512)
!5514 = !DILocation(line: 304, column: 15, scope: !5512)
!5515 = !DILocation(line: 304, column: 18, scope: !5512)
!5516 = !DILocation(line: 304, column: 22, scope: !5512)
!5517 = !DILocation(line: 304, column: 6, scope: !5502)
!5518 = !DILocation(line: 305, column: 3, scope: !5512)
!5519 = !DILocation(line: 307, column: 2, scope: !5502)
!5520 = !DILocation(line: 307, column: 7, scope: !5502)
!5521 = !DILocation(line: 307, column: 13, scope: !5502)
!5522 = !DILocation(line: 308, column: 13, scope: !5502)
!5523 = !DILocation(line: 308, column: 2, scope: !5502)
!5524 = !DILocation(line: 308, column: 7, scope: !5502)
!5525 = !DILocation(line: 308, column: 11, scope: !5502)
!5526 = !DILocation(line: 310, column: 2, scope: !5502)
!5527 = !DILocation(line: 311, column: 1, scope: !5502)
!5528 = distinct !DISubprogram(name: "pci_vpd_size", scope: !3, file: !3, line: 83, type: !5529, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5529 = !DISubroutineType(types: !5530)
!5530 = !{!213, !7, !213}
!5531 = !DILocalVariable(name: "dev", arg: 1, scope: !5528, file: !3, line: 83, type: !7)
!5532 = !DILocation(line: 83, column: 44, scope: !5528)
!5533 = !DILocalVariable(name: "old_size", arg: 2, scope: !5528, file: !3, line: 83, type: !213)
!5534 = !DILocation(line: 83, column: 56, scope: !5528)
!5535 = !DILocalVariable(name: "off", scope: !5528, file: !3, line: 85, type: !213)
!5536 = !DILocation(line: 85, column: 9, scope: !5528)
!5537 = !DILocalVariable(name: "header", scope: !5528, file: !3, line: 86, type: !5538)
!5538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 24, elements: !168)
!5539 = !DILocation(line: 86, column: 16, scope: !5528)
!5540 = !DILocation(line: 88, column: 2, scope: !5528)
!5541 = !DILocation(line: 88, column: 9, scope: !5528)
!5542 = !DILocation(line: 88, column: 15, scope: !5528)
!5543 = !DILocation(line: 88, column: 13, scope: !5528)
!5544 = !DILocation(line: 88, column: 24, scope: !5528)
!5545 = !DILocation(line: 89, column: 22, scope: !5528)
!5546 = !DILocation(line: 89, column: 27, scope: !5528)
!5547 = !DILocation(line: 89, column: 35, scope: !5528)
!5548 = !DILocation(line: 89, column: 9, scope: !5528)
!5549 = !DILocation(line: 89, column: 43, scope: !5528)
!5550 = !DILocation(line: 0, scope: !5528)
!5551 = !DILocalVariable(name: "tag", scope: !5552, file: !3, line: 90, type: !95)
!5552 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 89, column: 49)
!5553 = !DILocation(line: 90, column: 17, scope: !5552)
!5554 = !DILocation(line: 92, column: 7, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5552, file: !3, line: 92, column: 7)
!5556 = !DILocation(line: 92, column: 17, scope: !5555)
!5557 = !DILocation(line: 92, column: 7, scope: !5552)
!5558 = !DILocation(line: 94, column: 27, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 92, column: 33)
!5560 = !DILocation(line: 94, column: 10, scope: !5559)
!5561 = !DILocation(line: 94, column: 8, scope: !5559)
!5562 = !DILocation(line: 96, column: 9, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 96, column: 8)
!5564 = !DILocation(line: 96, column: 13, scope: !5563)
!5565 = !DILocation(line: 96, column: 40, scope: !5563)
!5566 = !DILocation(line: 97, column: 9, scope: !5563)
!5567 = !DILocation(line: 97, column: 13, scope: !5563)
!5568 = !DILocation(line: 97, column: 38, scope: !5563)
!5569 = !DILocation(line: 98, column: 9, scope: !5563)
!5570 = !DILocation(line: 98, column: 13, scope: !5563)
!5571 = !DILocation(line: 96, column: 8, scope: !5559)
!5572 = !DILocation(line: 99, column: 22, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 99, column: 9)
!5574 = distinct !DILexicalBlock(scope: !5563, file: !3, line: 98, column: 39)
!5575 = !DILocation(line: 99, column: 27, scope: !5573)
!5576 = !DILocation(line: 99, column: 30, scope: !5573)
!5577 = !DILocation(line: 100, column: 9, scope: !5573)
!5578 = !DILocation(line: 99, column: 9, scope: !5573)
!5579 = !DILocation(line: 100, column: 20, scope: !5573)
!5580 = !DILocation(line: 99, column: 9, scope: !5574)
!5581 = !DILocation(line: 101, column: 6, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 100, column: 26)
!5583 = !DILocation(line: 103, column: 6, scope: !5582)
!5584 = !DILocation(line: 106, column: 24, scope: !5574)
!5585 = !DILocation(line: 106, column: 6, scope: !5574)
!5586 = !DILocation(line: 105, column: 34, scope: !5574)
!5587 = !DILocation(line: 105, column: 12, scope: !5574)
!5588 = !DILocation(line: 105, column: 9, scope: !5574)
!5589 = !DILocation(line: 107, column: 4, scope: !5574)
!5590 = !DILocation(line: 108, column: 3, scope: !5559)
!5591 = !DILocation(line: 111, column: 23, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 108, column: 10)
!5593 = !DILocation(line: 111, column: 5, scope: !5592)
!5594 = !DILocation(line: 110, column: 33, scope: !5592)
!5595 = !DILocation(line: 110, column: 11, scope: !5592)
!5596 = !DILocation(line: 110, column: 8, scope: !5592)
!5597 = !DILocation(line: 112, column: 27, scope: !5592)
!5598 = !DILocation(line: 112, column: 10, scope: !5592)
!5599 = !DILocation(line: 112, column: 8, scope: !5592)
!5600 = !DILocation(line: 115, column: 7, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5552, file: !3, line: 115, column: 7)
!5602 = !DILocation(line: 115, column: 11, scope: !5601)
!5603 = !DILocation(line: 115, column: 7, scope: !5552)
!5604 = !DILocation(line: 116, column: 11, scope: !5601)
!5605 = !DILocation(line: 116, column: 4, scope: !5601)
!5606 = !DILocation(line: 118, column: 8, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5552, file: !3, line: 118, column: 7)
!5608 = !DILocation(line: 118, column: 12, scope: !5607)
!5609 = !DILocation(line: 118, column: 39, scope: !5607)
!5610 = !DILocation(line: 119, column: 8, scope: !5607)
!5611 = !DILocation(line: 119, column: 12, scope: !5607)
!5612 = !DILocation(line: 119, column: 37, scope: !5607)
!5613 = !DILocation(line: 120, column: 8, scope: !5607)
!5614 = !DILocation(line: 120, column: 12, scope: !5607)
!5615 = !DILocation(line: 118, column: 7, scope: !5552)
!5616 = !DILocation(line: 121, column: 4, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5607, file: !3, line: 120, column: 38)
!5618 = !DILocation(line: 124, column: 4, scope: !5617)
!5619 = distinct !{!5619, !5540, !5620}
!5620 = !DILocation(line: 126, column: 2, scope: !5528)
!5621 = !DILocation(line: 127, column: 2, scope: !5528)
!5622 = !DILocation(line: 128, column: 1, scope: !5528)
!5623 = distinct !DISubprogram(name: "pci_vpd_wait", scope: !3, file: !3, line: 138, type: !4, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5624 = !DILocalVariable(name: "pscr_ret__", scope: !5625, file: !5626, line: 15, type: !1099)
!5625 = distinct !DILexicalBlock(scope: !5627, file: !5626, line: 15, column: 9)
!5626 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!5627 = distinct !DISubprogram(name: "get_current", scope: !5626, file: !5626, line: 13, type: !5628, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5628 = !DISubroutineType(types: !5629)
!5629 = !{!1099}
!5630 = !DILocation(line: 15, column: 9, scope: !5625, inlinedAt: !5631)
!5631 = distinct !DILocation(line: 160, column: 28, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 160, column: 7)
!5633 = distinct !DILexicalBlock(scope: !5623, file: !3, line: 149, column: 5)
!5634 = !DILocalVariable(name: "__vpp_verify", scope: !5635, file: !5626, line: 15, type: !2021)
!5635 = distinct !DILexicalBlock(scope: !5625, file: !5626, line: 15, column: 9)
!5636 = !DILocation(line: 15, column: 9, scope: !5635, inlinedAt: !5631)
!5637 = !DILocalVariable(name: "pfo_val__", scope: !5638, file: !5626, line: 15, type: !37)
!5638 = distinct !DILexicalBlock(scope: !5625, file: !5626, line: 15, column: 9)
!5639 = !DILocation(line: 15, column: 9, scope: !5638, inlinedAt: !5631)
!5640 = !DILocalVariable(name: "m", arg: 1, scope: !5641, file: !5642, line: 363, type: !2734)
!5641 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !5642, file: !5642, line: 363, type: !5643, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5642 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!5643 = !DISubroutineType(types: !5644)
!5644 = !{!48, !2734}
!5645 = !DILocation(line: 363, column: 74, scope: !5641, inlinedAt: !5646)
!5646 = distinct !DILocation(line: 141, column: 36, scope: !5623)
!5647 = !DILocalVariable(name: "dev", arg: 1, scope: !5623, file: !3, line: 138, type: !7)
!5648 = !DILocation(line: 138, column: 41, scope: !5623)
!5649 = !DILocalVariable(name: "vpd", scope: !5623, file: !3, line: 140, type: !3957)
!5650 = !DILocation(line: 140, column: 18, scope: !5623)
!5651 = !DILocation(line: 140, column: 24, scope: !5623)
!5652 = !DILocation(line: 140, column: 29, scope: !5623)
!5653 = !DILocalVariable(name: "timeout", scope: !5623, file: !3, line: 141, type: !48)
!5654 = !DILocation(line: 141, column: 16, scope: !5623)
!5655 = !DILocation(line: 141, column: 26, scope: !5623)
!5656 = !DILocation(line: 365, column: 27, scope: !5657, inlinedAt: !5646)
!5657 = distinct !DILexicalBlock(scope: !5641, file: !5642, line: 365, column: 6)
!5658 = !DILocation(line: 365, column: 6, scope: !5657, inlinedAt: !5646)
!5659 = !DILocation(line: 365, column: 6, scope: !5641, inlinedAt: !5646)
!5660 = !DILocation(line: 366, column: 12, scope: !5661, inlinedAt: !5646)
!5661 = distinct !DILexicalBlock(scope: !5662, file: !5642, line: 366, column: 7)
!5662 = distinct !DILexicalBlock(scope: !5657, file: !5642, line: 365, column: 31)
!5663 = !DILocation(line: 366, column: 14, scope: !5661, inlinedAt: !5646)
!5664 = !DILocation(line: 366, column: 7, scope: !5662, inlinedAt: !5646)
!5665 = !DILocation(line: 367, column: 4, scope: !5661, inlinedAt: !5646)
!5666 = !DILocation(line: 368, column: 28, scope: !5662, inlinedAt: !5646)
!5667 = !DILocation(line: 368, column: 10, scope: !5662, inlinedAt: !5646)
!5668 = !DILocation(line: 368, column: 3, scope: !5662, inlinedAt: !5646)
!5669 = !DILocation(line: 370, column: 29, scope: !5670, inlinedAt: !5646)
!5670 = distinct !DILexicalBlock(scope: !5657, file: !5642, line: 369, column: 9)
!5671 = !DILocation(line: 370, column: 10, scope: !5670, inlinedAt: !5646)
!5672 = !DILocation(line: 370, column: 3, scope: !5670, inlinedAt: !5646)
!5673 = !DILocation(line: 372, column: 1, scope: !5641, inlinedAt: !5646)
!5674 = !DILocation(line: 141, column: 34, scope: !5623)
!5675 = !DILocalVariable(name: "max_sleep", scope: !5623, file: !3, line: 142, type: !48)
!5676 = !DILocation(line: 142, column: 16, scope: !5623)
!5677 = !DILocalVariable(name: "status", scope: !5623, file: !3, line: 143, type: !748)
!5678 = !DILocation(line: 143, column: 6, scope: !5623)
!5679 = !DILocalVariable(name: "ret", scope: !5623, file: !3, line: 144, type: !6)
!5680 = !DILocation(line: 144, column: 6, scope: !5623)
!5681 = !DILocation(line: 146, column: 7, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5623, file: !3, line: 146, column: 6)
!5683 = !DILocation(line: 146, column: 12, scope: !5682)
!5684 = !DILocation(line: 146, column: 6, scope: !5623)
!5685 = !DILocation(line: 147, column: 3, scope: !5682)
!5686 = !DILocation(line: 149, column: 2, scope: !5623)
!5687 = !DILocation(line: 150, column: 35, scope: !5633)
!5688 = !DILocation(line: 150, column: 40, scope: !5633)
!5689 = !DILocation(line: 150, column: 45, scope: !5633)
!5690 = !DILocation(line: 150, column: 49, scope: !5633)
!5691 = !DILocation(line: 150, column: 9, scope: !5633)
!5692 = !DILocation(line: 150, column: 7, scope: !5633)
!5693 = !DILocation(line: 152, column: 7, scope: !5694)
!5694 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 152, column: 7)
!5695 = !DILocation(line: 152, column: 11, scope: !5694)
!5696 = !DILocation(line: 152, column: 7, scope: !5633)
!5697 = !DILocation(line: 153, column: 11, scope: !5694)
!5698 = !DILocation(line: 153, column: 4, scope: !5694)
!5699 = !DILocation(line: 155, column: 8, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 155, column: 7)
!5701 = !DILocation(line: 155, column: 15, scope: !5700)
!5702 = !DILocation(line: 155, column: 36, scope: !5700)
!5703 = !DILocation(line: 155, column: 41, scope: !5700)
!5704 = !DILocation(line: 155, column: 33, scope: !5700)
!5705 = !DILocation(line: 155, column: 7, scope: !5633)
!5706 = !DILocation(line: 156, column: 4, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5700, file: !3, line: 155, column: 47)
!5708 = !DILocation(line: 156, column: 9, scope: !5707)
!5709 = !DILocation(line: 156, column: 14, scope: !5707)
!5710 = !DILocation(line: 157, column: 4, scope: !5707)
!5711 = !{i32 -2146310907}
!5712 = !DILocation(line: 160, column: 7, scope: !5632)
!5713 = !DILocation(line: 160, column: 7, scope: !5633)
!5714 = !DILocation(line: 161, column: 4, scope: !5632)
!5715 = !DILocation(line: 163, column: 7, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 163, column: 7)
!5717 = !DILocation(line: 163, column: 7, scope: !5633)
!5718 = !DILocation(line: 164, column: 4, scope: !5716)
!5719 = !DILocation(line: 166, column: 20, scope: !5633)
!5720 = !DILocation(line: 166, column: 3, scope: !5633)
!5721 = !DILocation(line: 167, column: 7, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 167, column: 7)
!5723 = !DILocation(line: 167, column: 17, scope: !5722)
!5724 = !DILocation(line: 167, column: 7, scope: !5633)
!5725 = !DILocation(line: 168, column: 14, scope: !5722)
!5726 = !DILocation(line: 168, column: 4, scope: !5722)
!5727 = !DILocation(line: 169, column: 2, scope: !5633)
!5728 = distinct !{!5728, !5686, !5729}
!5729 = !DILocation(line: 169, column: 15, scope: !5623)
!5730 = !DILocation(line: 171, column: 2, scope: !5623)
!5731 = !DILocation(line: 172, column: 2, scope: !5623)
!5732 = !DILocation(line: 173, column: 1, scope: !5623)
!5733 = distinct !DISubprogram(name: "pci_vpd_lrdt_tag", scope: !9, file: !9, line: 2236, type: !4789, scopeLine: 2237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5734 = !DILocalVariable(name: "lrdt", arg: 1, scope: !5733, file: !9, line: 2236, type: !4710)
!5735 = !DILocation(line: 2236, column: 46, scope: !5733)
!5736 = !DILocation(line: 2238, column: 15, scope: !5733)
!5737 = !DILocation(line: 2238, column: 23, scope: !5733)
!5738 = !DILocation(line: 2238, column: 9, scope: !5733)
!5739 = !DILocation(line: 2238, column: 2, scope: !5733)
!5740 = distinct !DISubprogram(name: "pci_vpd_srdt_tag", scope: !9, file: !9, line: 2258, type: !4801, scopeLine: 2259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5741 = !DILocalVariable(name: "srdt", arg: 1, scope: !5740, file: !9, line: 2258, type: !4710)
!5742 = !DILocation(line: 2258, column: 45, scope: !5740)
!5743 = !DILocation(line: 2260, column: 12, scope: !5740)
!5744 = !DILocation(line: 2260, column: 11, scope: !5740)
!5745 = !DILocation(line: 2260, column: 10, scope: !5740)
!5746 = !DILocation(line: 2260, column: 18, scope: !5740)
!5747 = !DILocation(line: 2260, column: 43, scope: !5740)
!5748 = !DILocation(line: 2260, column: 9, scope: !5740)
!5749 = !DILocation(line: 2260, column: 2, scope: !5740)
!5750 = distinct !DISubprogram(name: "fatal_signal_pending", scope: !1649, file: !1649, line: 366, type: !5751, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5751 = !DISubroutineType(types: !5752)
!5752 = !{!6, !1099}
!5753 = !DILocalVariable(name: "p", arg: 1, scope: !5750, file: !1649, line: 366, type: !1099)
!5754 = !DILocation(line: 366, column: 60, scope: !5750)
!5755 = !DILocation(line: 368, column: 24, scope: !5750)
!5756 = !DILocation(line: 368, column: 9, scope: !5750)
!5757 = !DILocation(line: 368, column: 27, scope: !5750)
!5758 = !DILocation(line: 368, column: 53, scope: !5750)
!5759 = !DILocation(line: 368, column: 30, scope: !5750)
!5760 = !DILocation(line: 0, scope: !5750)
!5761 = !DILocation(line: 368, column: 2, scope: !5750)
!5762 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !5642, file: !5642, line: 308, type: !5643, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5763 = !DILocalVariable(name: "m", arg: 1, scope: !5762, file: !5642, line: 308, type: !2734)
!5764 = !DILocation(line: 308, column: 66, scope: !5762)
!5765 = !DILocation(line: 310, column: 10, scope: !5762)
!5766 = !DILocation(line: 310, column: 12, scope: !5762)
!5767 = !DILocation(line: 310, column: 34, scope: !5762)
!5768 = !DILocation(line: 310, column: 39, scope: !5762)
!5769 = !DILocation(line: 310, column: 2, scope: !5762)
!5770 = distinct !DISubprogram(name: "signal_pending", scope: !1649, file: !1649, line: 356, type: !5751, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5771 = !DILocalVariable(name: "p", arg: 1, scope: !5770, file: !1649, line: 356, type: !1099)
!5772 = !DILocation(line: 356, column: 54, scope: !5770)
!5773 = !DILocation(line: 358, column: 9, scope: !5770)
!5774 = !DILocation(line: 358, column: 2, scope: !5770)
!5775 = distinct !DISubprogram(name: "__fatal_signal_pending", scope: !1649, file: !1649, line: 361, type: !5751, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5776 = !DILocalVariable(name: "p", arg: 1, scope: !5775, file: !1649, line: 361, type: !1099)
!5777 = !DILocation(line: 361, column: 62, scope: !5775)
!5778 = !DILocation(line: 363, column: 9, scope: !5775)
!5779 = !DILocation(line: 363, column: 2, scope: !5775)
!5780 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !1101, file: !1101, line: 1828, type: !5781, scopeLine: 1829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5781 = !DISubroutineType(types: !5782)
!5782 = !{!6, !1099, !6}
!5783 = !DILocalVariable(name: "tsk", arg: 1, scope: !5780, file: !1101, line: 1828, type: !1099)
!5784 = !DILocation(line: 1828, column: 60, scope: !5780)
!5785 = !DILocalVariable(name: "flag", arg: 2, scope: !5780, file: !1101, line: 1828, type: !6)
!5786 = !DILocation(line: 1828, column: 69, scope: !5780)
!5787 = !DILocation(line: 1830, column: 46, scope: !5780)
!5788 = !DILocation(line: 1830, column: 29, scope: !5780)
!5789 = !DILocation(line: 1830, column: 52, scope: !5780)
!5790 = !DILocation(line: 1830, column: 9, scope: !5780)
!5791 = !DILocation(line: 1830, column: 2, scope: !5780)
!5792 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !5793, file: !5793, line: 82, type: !5794, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5793 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!5794 = !DISubroutineType(types: !5795)
!5795 = !{!6, !5796, !6}
!5796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!5797 = !DILocalVariable(name: "ti", arg: 1, scope: !5792, file: !5793, line: 82, type: !5796)
!5798 = !DILocation(line: 82, column: 59, scope: !5792)
!5799 = !DILocalVariable(name: "flag", arg: 2, scope: !5792, file: !5793, line: 82, type: !6)
!5800 = !DILocation(line: 82, column: 67, scope: !5792)
!5801 = !DILocation(line: 84, column: 18, scope: !5792)
!5802 = !DILocation(line: 84, column: 42, scope: !5792)
!5803 = !DILocation(line: 84, column: 46, scope: !5792)
!5804 = !DILocation(line: 84, column: 9, scope: !5792)
!5805 = !DILocation(line: 84, column: 2, scope: !5792)
!5806 = distinct !DISubprogram(name: "task_thread_info", scope: !1101, file: !1101, line: 1729, type: !5807, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5807 = !DISubroutineType(types: !5808)
!5808 = !{!5796, !1099}
!5809 = !DILocalVariable(name: "task", arg: 1, scope: !5806, file: !1101, line: 1729, type: !1099)
!5810 = !DILocation(line: 1729, column: 72, scope: !5806)
!5811 = !DILocation(line: 1731, column: 10, scope: !5806)
!5812 = !DILocation(line: 1731, column: 16, scope: !5806)
!5813 = !DILocation(line: 1731, column: 2, scope: !5806)
!5814 = distinct !DISubprogram(name: "test_bit", scope: !5815, file: !5815, line: 132, type: !5816, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5815 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5816 = !DISubroutineType(types: !5817)
!5817 = !{!374, !202, !5818}
!5818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5819, size: 64)
!5819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5820)
!5820 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !48)
!5821 = !DILocalVariable(name: "nr", arg: 1, scope: !5822, file: !5013, line: 210, type: !202)
!5822 = distinct !DISubprogram(name: "variable_test_bit", scope: !5013, file: !5013, line: 210, type: !5816, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5823 = !DILocation(line: 210, column: 52, scope: !5822, inlinedAt: !5824)
!5824 = distinct !DILocation(line: 135, column: 9, scope: !5814)
!5825 = !DILocalVariable(name: "addr", arg: 2, scope: !5822, file: !5013, line: 210, type: !5818)
!5826 = !DILocation(line: 210, column: 86, scope: !5822, inlinedAt: !5824)
!5827 = !DILocalVariable(name: "oldbit", scope: !5822, file: !5013, line: 212, type: !374)
!5828 = !DILocation(line: 212, column: 7, scope: !5822, inlinedAt: !5824)
!5829 = !DILocalVariable(name: "nr", arg: 1, scope: !5830, file: !5013, line: 204, type: !202)
!5830 = distinct !DISubprogram(name: "constant_test_bit", scope: !5013, file: !5013, line: 204, type: !5816, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5831 = !DILocation(line: 204, column: 52, scope: !5830, inlinedAt: !5832)
!5832 = distinct !DILocation(line: 135, column: 9, scope: !5814)
!5833 = !DILocalVariable(name: "addr", arg: 2, scope: !5830, file: !5013, line: 204, type: !5818)
!5834 = !DILocation(line: 204, column: 86, scope: !5830, inlinedAt: !5832)
!5835 = !DILocalVariable(name: "v", arg: 1, scope: !5836, file: !5837, line: 69, type: !5840)
!5836 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5837, file: !5837, line: 69, type: !5838, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5837 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5838 = !DISubroutineType(types: !5839)
!5839 = !{null, !5840, !213}
!5840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5841, size: 64)
!5841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5842)
!5842 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5843 = !DILocation(line: 69, column: 73, scope: !5836, inlinedAt: !5844)
!5844 = distinct !DILocation(line: 134, column: 2, scope: !5814)
!5845 = !DILocalVariable(name: "size", arg: 2, scope: !5836, file: !5837, line: 69, type: !213)
!5846 = !DILocation(line: 69, column: 83, scope: !5836, inlinedAt: !5844)
!5847 = !DILocalVariable(name: "nr", arg: 1, scope: !5814, file: !5815, line: 132, type: !202)
!5848 = !DILocation(line: 132, column: 34, scope: !5814)
!5849 = !DILocalVariable(name: "addr", arg: 2, scope: !5814, file: !5815, line: 132, type: !5818)
!5850 = !DILocation(line: 132, column: 68, scope: !5814)
!5851 = !DILocation(line: 134, column: 25, scope: !5814)
!5852 = !DILocation(line: 134, column: 32, scope: !5814)
!5853 = !DILocation(line: 134, column: 30, scope: !5814)
!5854 = !DILocation(line: 71, column: 19, scope: !5836, inlinedAt: !5844)
!5855 = !DILocation(line: 71, column: 22, scope: !5836, inlinedAt: !5844)
!5856 = !DILocation(line: 71, column: 2, scope: !5836, inlinedAt: !5844)
!5857 = !DILocation(line: 72, column: 2, scope: !5836, inlinedAt: !5844)
!5858 = !DILocation(line: 135, column: 9, scope: !5814)
!5859 = !DILocation(line: 206, column: 19, scope: !5830, inlinedAt: !5832)
!5860 = !DILocation(line: 206, column: 22, scope: !5830, inlinedAt: !5832)
!5861 = !DILocation(line: 206, column: 15, scope: !5830, inlinedAt: !5832)
!5862 = !DILocation(line: 207, column: 4, scope: !5830, inlinedAt: !5832)
!5863 = !DILocation(line: 207, column: 9, scope: !5830, inlinedAt: !5832)
!5864 = !DILocation(line: 207, column: 12, scope: !5830, inlinedAt: !5832)
!5865 = !DILocation(line: 206, column: 44, scope: !5830, inlinedAt: !5832)
!5866 = !DILocation(line: 207, column: 37, scope: !5830, inlinedAt: !5832)
!5867 = !DILocation(line: 217, column: 33, scope: !5822, inlinedAt: !5824)
!5868 = !DILocation(line: 217, column: 46, scope: !5822, inlinedAt: !5824)
!5869 = !DILocation(line: 214, column: 2, scope: !5822, inlinedAt: !5824)
!5870 = !{i32 -2146710422, i32 -2146710362}
!5871 = !DILocation(line: 219, column: 9, scope: !5822, inlinedAt: !5824)
!5872 = !DILocation(line: 135, column: 2, scope: !5814)
!5873 = distinct !DISubprogram(name: "kasan_check_read", scope: !5874, file: !5874, line: 34, type: !5875, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5874 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5875 = !DISubroutineType(types: !5876)
!5876 = !{!374, !5840, !74}
!5877 = !DILocalVariable(name: "p", arg: 1, scope: !5873, file: !5874, line: 34, type: !5840)
!5878 = !DILocation(line: 34, column: 58, scope: !5873)
!5879 = !DILocalVariable(name: "size", arg: 2, scope: !5873, file: !5874, line: 34, type: !74)
!5880 = !DILocation(line: 34, column: 74, scope: !5873)
!5881 = !DILocation(line: 36, column: 2, scope: !5873)
!5882 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5883, file: !5883, line: 178, type: !5884, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5883 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5884 = !DISubroutineType(types: !5885)
!5885 = !{null, !5840, !213, !6}
!5886 = !DILocalVariable(name: "ptr", arg: 1, scope: !5882, file: !5883, line: 178, type: !5840)
!5887 = !DILocation(line: 178, column: 60, scope: !5882)
!5888 = !DILocalVariable(name: "size", arg: 2, scope: !5882, file: !5883, line: 178, type: !213)
!5889 = !DILocation(line: 178, column: 72, scope: !5882)
!5890 = !DILocalVariable(name: "type", arg: 3, scope: !5882, file: !5883, line: 179, type: !6)
!5891 = !DILocation(line: 179, column: 15, scope: !5882)
!5892 = !DILocation(line: 179, column: 23, scope: !5882)
!5893 = distinct !DISubprogram(name: "sigismember", scope: !5894, file: !5894, line: 80, type: !5895, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5894 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/lizy2001/genbc/linux")
!5895 = !DISubroutineType(types: !5896)
!5896 = !{!6, !5897, !6}
!5897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!5898 = !DILocalVariable(name: "set", arg: 1, scope: !5893, file: !5894, line: 80, type: !5897)
!5899 = !DILocation(line: 80, column: 41, scope: !5893)
!5900 = !DILocalVariable(name: "_sig", arg: 2, scope: !5893, file: !5894, line: 80, type: !6)
!5901 = !DILocation(line: 80, column: 50, scope: !5893)
!5902 = !DILocalVariable(name: "sig", scope: !5893, file: !5894, line: 82, type: !48)
!5903 = !DILocation(line: 82, column: 16, scope: !5893)
!5904 = !DILocation(line: 82, column: 22, scope: !5893)
!5905 = !DILocation(line: 82, column: 27, scope: !5893)
!5906 = !DILocation(line: 84, column: 15, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5893, file: !5894, line: 83, column: 6)
!5908 = !DILocation(line: 84, column: 20, scope: !5907)
!5909 = !DILocation(line: 84, column: 30, scope: !5907)
!5910 = !DILocation(line: 84, column: 27, scope: !5907)
!5911 = !DILocation(line: 84, column: 12, scope: !5907)
!5912 = !DILocation(line: 84, column: 10, scope: !5907)
!5913 = !DILocation(line: 84, column: 3, scope: !5907)
!5914 = distinct !DISubprogram(name: "kobj_to_dev", scope: !110, file: !110, line: 591, type: !5915, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4023, retainedNodes: !140)
!5915 = !DISubroutineType(types: !5916)
!5916 = !{!108, !119}
!5917 = !DILocalVariable(name: "kobj", arg: 1, scope: !5914, file: !110, line: 591, type: !119)
!5918 = !DILocation(line: 591, column: 58, scope: !5914)
!5919 = !DILocalVariable(name: "__mptr", scope: !5920, file: !110, line: 593, type: !73)
!5920 = distinct !DILexicalBlock(scope: !5914, file: !110, line: 593, column: 9)
!5921 = !DILocation(line: 593, column: 9, scope: !5920)
!5922 = !DILocation(line: 593, column: 9, scope: !5923)
!5923 = distinct !DILexicalBlock(scope: !5920, file: !110, line: 593, column: 9)
!5924 = !DILocation(line: 593, column: 2, scope: !5914)
