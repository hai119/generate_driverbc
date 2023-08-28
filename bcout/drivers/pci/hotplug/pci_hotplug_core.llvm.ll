; ModuleID = '../bcout/drivers/pci/hotplug/pci_hotplug_core.llvm.bc'
source_filename = "drivers/pci/hotplug/pci_hotplug_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_pci_hotplug_init6:\09\09\09"
module asm ".long\09pci_hotplug_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon.66 }
%struct.module = type opaque
%union.anon.66 = type { i8* }
%struct.pci_slot_attribute = type { %struct.attribute, i64 (%struct.pci_slot*, i8*)*, i64 (%struct.pci_slot*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.65, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.driver_private = type opaque
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.device_dma_parameters = type { i32, i64 }
%struct.pcie_link_state = type opaque
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.pci_vpd = type opaque
%union.anon.65 = type { %struct.pci_sriov* }
%struct.pci_sriov = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, %struct.pci_dev*, %struct.pci_dev*, i32, i8, i16, i16, [6 x i64], i8 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.proc_dir_entry = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [16 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.page = type { i64, %union.anon.3, %union.anon.53, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.block_device = type opaque
%struct.backing_dev_info = type opaque
%struct.mtd_info = type opaque
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
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
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
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
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.rlimit = type { i64, i64 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, %struct.seccomp_filter* }
%struct.seccomp_filter = type opaque
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
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
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.user_namespace = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.lockref = type { %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { %struct.spinlock, i32 }
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
%struct.readahead_control = type { %struct.file*, %struct.address_space*, i64, i32, i32 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
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
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.hotplug_slot = type { %struct.hotplug_slot_ops*, %struct.list_head, %struct.pci_slot*, %struct.module*, i8* }
%struct.hotplug_slot_ops = type { i32 (%struct.hotplug_slot*)*, i32 (%struct.hotplug_slot*)*, i32 (%struct.hotplug_slot*, i8)*, i32 (%struct.hotplug_slot*, i32)*, i32 (%struct.hotplug_slot*, i8*)*, i32 (%struct.hotplug_slot*, i8*)*, i32 (%struct.hotplug_slot*, i8*)*, i32 (%struct.hotplug_slot*, i8*)*, i32 (%struct.hotplug_slot*, i32)* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }

@pci_hp_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @pci_hp_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @pci_hp_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !0
@pci_hotplug_slot_list = internal global %struct.list_head { %struct.list_head* @pci_hotplug_slot_list, %struct.list_head* @pci_hotplug_slot_list }, align 8, !dbg !4296
@debug = internal global i8 0, align 1, !dbg !4273
@.str = private unnamed_addr constant [37 x i8] c"\017%s: %s: Added slot %s to the list\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"pci_hotplug\00", align 1
@__func__.pci_hp_add = private unnamed_addr constant [11 x i8] c"pci_hp_add\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"drivers/pci/hotplug/pci_hotplug_core.c\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"\017%s: %s: Removed slot %s from the list\0A\00", align 1
@__func__.pci_hp_del = private unnamed_addr constant [11 x i8] c"pci_hp_del\00", align 1
@__UNIQUE_ID___addressable_pci_hotplug_init257 = internal global i8* bitcast (i32 ()* @pci_hotplug_init to i8*), section ".discard.addressable", align 8, !dbg !4211
@__param_str_debug = internal constant [18 x i8] c"pci_hotplug.debug\00", align 16, !dbg !4298
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.66 { i8* @debug } }, section "__param", align 8, !dbg !4213
@__UNIQUE_ID_debugtype258 = internal constant [32 x i8] c"pci_hotplug.parmtype=debug:bool\00", section ".modinfo", align 1, !dbg !4265
@__UNIQUE_ID_debug259 = internal constant [53 x i8] c"pci_hotplug.parm=debug:Debugging mode enabled or not\00", section ".modinfo", align 1, !dbg !4268
@hotplug_slot_attr_power = internal global %struct.pci_slot_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i16 -32348 }, i64 (%struct.pci_slot*, i8*)* @power_read_file, i64 (%struct.pci_slot*, i8*, i64)* @power_write_file }, align 8, !dbg !4275
@hotplug_slot_attr_attention = internal global %struct.pci_slot_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i16 -32348 }, i64 (%struct.pci_slot*, i8*)* @attention_read_file, i64 (%struct.pci_slot*, i8*, i64)* @attention_write_file }, align 8, !dbg !4288
@hotplug_slot_attr_latch = internal global %struct.pci_slot_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i16 -32476 }, i64 (%struct.pci_slot*, i8*)* @latch_read_file, i64 (%struct.pci_slot*, i8*, i64)* null }, align 8, !dbg !4290
@hotplug_slot_attr_presence = internal global %struct.pci_slot_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i16 -32476 }, i64 (%struct.pci_slot*, i8*)* @presence_read_file, i64 (%struct.pci_slot*, i8*, i64)* null }, align 8, !dbg !4292
@hotplug_slot_attr_test = internal global %struct.pci_slot_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i16 -32348 }, i64 (%struct.pci_slot*, i8*)* null, i64 (%struct.pci_slot*, i8*, i64)* @test_write_file }, align 8, !dbg !4294
@.str.4 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"\017%s: %s: power = %d\0A\00", align 1
@__func__.power_write_file = private unnamed_addr constant [17 x i8] c"power_write_file\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"\013%s: Illegal value specified for power\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"attention\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"\017%s: %s:  - attention = %d\0A\00", align 1
@__func__.attention_write_file = private unnamed_addr constant [21 x i8] c"attention_write_file\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"latch\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"adapter\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"\017%s: %s: test = %d\0A\00", align 1
@__func__.test_write_file = private unnamed_addr constant [16 x i8] c"test_write_file\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"\013%s: cpci_hotplug_init with error %d\0A\00", align 1
@llvm.used = appending global [4 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_pci_hotplug_init257 to i8*), i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_debugtype258, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__UNIQUE_ID_debug259, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__pci_hp_register(%struct.hotplug_slot* %slot, %struct.pci_bus* %bus, i32 %devnr, i8* %name, %struct.module* %owner, i8* %mod_name) #0 !dbg !4308 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca %struct.hotplug_slot*, align 8
  %bus.addr = alloca %struct.pci_bus*, align 8
  %devnr.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %owner.addr = alloca %struct.module*, align 8
  %mod_name.addr = alloca i8*, align 8
  %result = alloca i32, align 4
  store %struct.hotplug_slot* %slot, %struct.hotplug_slot** %slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %slot.addr, metadata !4311, metadata !DIExpression()), !dbg !4312
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4313, metadata !DIExpression()), !dbg !4314
  store i32 %devnr, i32* %devnr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devnr.addr, metadata !4315, metadata !DIExpression()), !dbg !4316
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4317, metadata !DIExpression()), !dbg !4318
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !4319, metadata !DIExpression()), !dbg !4320
  store i8* %mod_name, i8** %mod_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mod_name.addr, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4323, metadata !DIExpression()), !dbg !4324
  %0 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4325
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4326
  %2 = load i32, i32* %devnr.addr, align 4, !dbg !4327
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4328
  %4 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !4329
  %5 = load i8*, i8** %mod_name.addr, align 8, !dbg !4330
  %call = call i32 @__pci_hp_initialize(%struct.hotplug_slot* %0, %struct.pci_bus* %1, i32 %2, i8* %3, %struct.module* %4, i8* %5) #5, !dbg !4331
  store i32 %call, i32* %result, align 4, !dbg !4332
  %6 = load i32, i32* %result, align 4, !dbg !4333
  %tobool = icmp ne i32 %6, 0, !dbg !4333
  br i1 %tobool, label %if.then, label %if.end, !dbg !4335

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %result, align 4, !dbg !4336
  store i32 %7, i32* %retval, align 4, !dbg !4337
  br label %return, !dbg !4337

if.end:                                           ; preds = %entry
  %8 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4338
  %call1 = call i32 @pci_hp_add(%struct.hotplug_slot* %8) #5, !dbg !4339
  store i32 %call1, i32* %result, align 4, !dbg !4340
  %9 = load i32, i32* %result, align 4, !dbg !4341
  %tobool2 = icmp ne i32 %9, 0, !dbg !4341
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4343

if.then3:                                         ; preds = %if.end
  %10 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4344
  call void @pci_hp_destroy(%struct.hotplug_slot* %10) #5, !dbg !4345
  br label %if.end4, !dbg !4345

if.end4:                                          ; preds = %if.then3, %if.end
  %11 = load i32, i32* %result, align 4, !dbg !4346
  store i32 %11, i32* %retval, align 4, !dbg !4347
  br label %return, !dbg !4347

return:                                           ; preds = %if.end4, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4348
  ret i32 %12, !dbg !4348
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__pci_hp_initialize(%struct.hotplug_slot* %slot, %struct.pci_bus* %bus, i32 %devnr, i8* %name, %struct.module* %owner, i8* %mod_name) #0 !dbg !4349 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca %struct.hotplug_slot*, align 8
  %bus.addr = alloca %struct.pci_bus*, align 8
  %devnr.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %owner.addr = alloca %struct.module*, align 8
  %mod_name.addr = alloca i8*, align 8
  %pci_slot = alloca %struct.pci_slot*, align 8
  store %struct.hotplug_slot* %slot, %struct.hotplug_slot** %slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %slot.addr, metadata !4350, metadata !DIExpression()), !dbg !4351
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4352, metadata !DIExpression()), !dbg !4353
  store i32 %devnr, i32* %devnr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devnr.addr, metadata !4354, metadata !DIExpression()), !dbg !4355
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4356, metadata !DIExpression()), !dbg !4357
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !4358, metadata !DIExpression()), !dbg !4359
  store i8* %mod_name, i8** %mod_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mod_name.addr, metadata !4360, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.declare(metadata %struct.pci_slot** %pci_slot, metadata !4362, metadata !DIExpression()), !dbg !4363
  %0 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4364
  %cmp = icmp eq %struct.hotplug_slot* %0, null, !dbg !4366
  br i1 %cmp, label %if.then, label %if.end, !dbg !4367

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4368
  br label %return, !dbg !4368

if.end:                                           ; preds = %entry
  %1 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4369
  %ops = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %1, i32 0, i32 0, !dbg !4371
  %2 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops, align 8, !dbg !4371
  %cmp1 = icmp eq %struct.hotplug_slot_ops* %2, null, !dbg !4372
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4373

if.then2:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !4374
  br label %return, !dbg !4374

if.end3:                                          ; preds = %if.end
  %3 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !4375
  %4 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4376
  %owner4 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %4, i32 0, i32 3, !dbg !4377
  store %struct.module* %3, %struct.module** %owner4, align 8, !dbg !4378
  %5 = load i8*, i8** %mod_name.addr, align 8, !dbg !4379
  %6 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4380
  %mod_name5 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %6, i32 0, i32 4, !dbg !4381
  store i8* %5, i8** %mod_name5, align 8, !dbg !4382
  %7 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4383
  %8 = load i32, i32* %devnr.addr, align 4, !dbg !4384
  %9 = load i8*, i8** %name.addr, align 8, !dbg !4385
  %10 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4386
  %call = call %struct.pci_slot* @pci_create_slot(%struct.pci_bus* %7, i32 %8, i8* %9, %struct.hotplug_slot* %10) #5, !dbg !4387
  store %struct.pci_slot* %call, %struct.pci_slot** %pci_slot, align 8, !dbg !4388
  %11 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot, align 8, !dbg !4389
  %12 = bitcast %struct.pci_slot* %11 to i8*, !dbg !4389
  %call6 = call zeroext i1 @IS_ERR(i8* %12) #5, !dbg !4391
  br i1 %call6, label %if.then7, label %if.end9, !dbg !4392

if.then7:                                         ; preds = %if.end3
  %13 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot, align 8, !dbg !4393
  %14 = bitcast %struct.pci_slot* %13 to i8*, !dbg !4393
  %call8 = call i64 @PTR_ERR(i8* %14) #5, !dbg !4394
  %conv = trunc i64 %call8 to i32, !dbg !4394
  store i32 %conv, i32* %retval, align 4, !dbg !4395
  br label %return, !dbg !4395

if.end9:                                          ; preds = %if.end3
  %15 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot, align 8, !dbg !4396
  %16 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4397
  %pci_slot10 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %16, i32 0, i32 2, !dbg !4398
  store %struct.pci_slot* %15, %struct.pci_slot** %pci_slot10, align 8, !dbg !4399
  %17 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4400
  %18 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot, align 8, !dbg !4401
  %hotplug = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %18, i32 0, i32 2, !dbg !4402
  store %struct.hotplug_slot* %17, %struct.hotplug_slot** %hotplug, align 8, !dbg !4403
  store i32 0, i32* %retval, align 4, !dbg !4404
  br label %return, !dbg !4404

return:                                           ; preds = %if.end9, %if.then7, %if.then2, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !4405
  ret i32 %19, !dbg !4405
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_hp_add(%struct.hotplug_slot* %slot) #0 !dbg !4406 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca %struct.hotplug_slot*, align 8
  %pci_slot = alloca %struct.pci_slot*, align 8
  %result = alloca i32, align 4
  store %struct.hotplug_slot* %slot, %struct.hotplug_slot** %slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %slot.addr, metadata !4407, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.declare(metadata %struct.pci_slot** %pci_slot, metadata !4409, metadata !DIExpression()), !dbg !4410
  %0 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4411
  %pci_slot1 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %0, i32 0, i32 2, !dbg !4412
  %1 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot1, align 8, !dbg !4412
  store %struct.pci_slot* %1, %struct.pci_slot** %pci_slot, align 8, !dbg !4410
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4413, metadata !DIExpression()), !dbg !4414
  %2 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot, align 8, !dbg !4415
  %call = call i32 @fs_add_slot(%struct.pci_slot* %2) #5, !dbg !4416
  store i32 %call, i32* %result, align 4, !dbg !4417
  %3 = load i32, i32* %result, align 4, !dbg !4418
  %tobool = icmp ne i32 %3, 0, !dbg !4418
  br i1 %tobool, label %if.then, label %if.end, !dbg !4420

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %result, align 4, !dbg !4421
  store i32 %4, i32* %retval, align 4, !dbg !4422
  br label %return, !dbg !4422

if.end:                                           ; preds = %entry
  %5 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot, align 8, !dbg !4423
  %kobj = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %5, i32 0, i32 4, !dbg !4424
  %call2 = call i32 @kobject_uevent(%struct.kobject* %kobj, i32 0) #5, !dbg !4425
  call void @mutex_lock(%struct.mutex* @pci_hp_mutex) #5, !dbg !4426
  %6 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4427
  %slot_list = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %6, i32 0, i32 1, !dbg !4428
  call void @list_add(%struct.list_head* %slot_list, %struct.list_head* @pci_hotplug_slot_list) #5, !dbg !4429
  call void @mutex_unlock(%struct.mutex* @pci_hp_mutex) #5, !dbg !4430
  br label %do.body, !dbg !4431

do.body:                                          ; preds = %if.end
  %7 = load i8, i8* @debug, align 1, !dbg !4432
  %tobool3 = trunc i8 %7 to i1, !dbg !4432
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !4435

if.then4:                                         ; preds = %do.body
  %8 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4432
  %call5 = call i8* @hotplug_slot_name(%struct.hotplug_slot* %8) #5, !dbg !4432
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.pci_hp_add, i64 0, i64 0), i8* %call5) #6, !dbg !4432
  br label %if.end7, !dbg !4432

if.end7:                                          ; preds = %if.then4, %do.body
  br label %do.end, !dbg !4435

do.end:                                           ; preds = %if.end7
  store i32 0, i32* %retval, align 4, !dbg !4436
  br label %return, !dbg !4436

return:                                           ; preds = %do.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !4437
  ret i32 %9, !dbg !4437
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_hp_destroy(%struct.hotplug_slot* %slot) #0 !dbg !4438 {
entry:
  %slot.addr = alloca %struct.hotplug_slot*, align 8
  %pci_slot = alloca %struct.pci_slot*, align 8
  store %struct.hotplug_slot* %slot, %struct.hotplug_slot** %slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %slot.addr, metadata !4441, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.declare(metadata %struct.pci_slot** %pci_slot, metadata !4443, metadata !DIExpression()), !dbg !4444
  %0 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4445
  %pci_slot1 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %0, i32 0, i32 2, !dbg !4446
  %1 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot1, align 8, !dbg !4446
  store %struct.pci_slot* %1, %struct.pci_slot** %pci_slot, align 8, !dbg !4444
  %2 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4447
  %pci_slot2 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %2, i32 0, i32 2, !dbg !4448
  store %struct.pci_slot* null, %struct.pci_slot** %pci_slot2, align 8, !dbg !4449
  %3 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot, align 8, !dbg !4450
  %hotplug = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %3, i32 0, i32 2, !dbg !4451
  store %struct.hotplug_slot* null, %struct.hotplug_slot** %hotplug, align 8, !dbg !4452
  %4 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot, align 8, !dbg !4453
  call void @pci_destroy_slot(%struct.pci_slot* %4) #5, !dbg !4454
  ret void, !dbg !4455
}

; Function Attrs: noredzone
declare dso_local %struct.pci_slot* @pci_create_slot(%struct.pci_bus*, i32, i8*, %struct.hotplug_slot*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !4456 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4460, metadata !DIExpression()), !dbg !4461
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4462
  %1 = ptrtoint i8* %0 to i64, !dbg !4462
  %2 = inttoptr i64 %1 to i8*, !dbg !4462
  %3 = ptrtoint i8* %2 to i64, !dbg !4462
  %cmp = icmp uge i64 %3, -4095, !dbg !4462
  %lnot = xor i1 %cmp, true, !dbg !4462
  %lnot1 = xor i1 %lnot, true, !dbg !4462
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4462
  %conv = sext i32 %lnot.ext to i64, !dbg !4462
  %tobool = icmp ne i64 %conv, 0, !dbg !4462
  ret i1 %tobool, !dbg !4463
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !4464 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4467, metadata !DIExpression()), !dbg !4468
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4469
  %1 = ptrtoint i8* %0 to i64, !dbg !4470
  ret i64 %1, !dbg !4471
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fs_add_slot(%struct.pci_slot* %pci_slot) #0 !dbg !4472 {
entry:
  %pci_slot.addr = alloca %struct.pci_slot*, align 8
  %retval1 = alloca i32, align 4
  store %struct.pci_slot* %pci_slot, %struct.pci_slot** %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_slot** %pci_slot.addr, metadata !4475, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4477, metadata !DIExpression()), !dbg !4478
  store i32 0, i32* %retval1, align 4, !dbg !4478
  %0 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4479
  call void @pci_hp_create_module_link(%struct.pci_slot* %0) #5, !dbg !4480
  %1 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4481
  %call = call zeroext i1 @has_power_file(%struct.pci_slot* %1) #5, !dbg !4483
  br i1 %call, label %if.then, label %if.end4, !dbg !4484

if.then:                                          ; preds = %entry
  %2 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4485
  %kobj = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %2, i32 0, i32 4, !dbg !4487
  %call2 = call i32 @sysfs_create_file(%struct.kobject* %kobj, %struct.attribute* getelementptr inbounds (%struct.pci_slot_attribute, %struct.pci_slot_attribute* @hotplug_slot_attr_power, i32 0, i32 0)) #5, !dbg !4488
  store i32 %call2, i32* %retval1, align 4, !dbg !4489
  %3 = load i32, i32* %retval1, align 4, !dbg !4490
  %tobool = icmp ne i32 %3, 0, !dbg !4490
  br i1 %tobool, label %if.then3, label %if.end, !dbg !4492

if.then3:                                         ; preds = %if.then
  br label %exit_power, !dbg !4493

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !4494

if.end4:                                          ; preds = %if.end, %entry
  %4 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4495
  %call5 = call zeroext i1 @has_attention_file(%struct.pci_slot* %4) #5, !dbg !4497
  br i1 %call5, label %if.then6, label %if.end12, !dbg !4498

if.then6:                                         ; preds = %if.end4
  %5 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4499
  %kobj7 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %5, i32 0, i32 4, !dbg !4501
  %call8 = call i32 @sysfs_create_file(%struct.kobject* %kobj7, %struct.attribute* getelementptr inbounds (%struct.pci_slot_attribute, %struct.pci_slot_attribute* @hotplug_slot_attr_attention, i32 0, i32 0)) #5, !dbg !4502
  store i32 %call8, i32* %retval1, align 4, !dbg !4503
  %6 = load i32, i32* %retval1, align 4, !dbg !4504
  %tobool9 = icmp ne i32 %6, 0, !dbg !4504
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4506

if.then10:                                        ; preds = %if.then6
  br label %exit_attention, !dbg !4507

if.end11:                                         ; preds = %if.then6
  br label %if.end12, !dbg !4508

if.end12:                                         ; preds = %if.end11, %if.end4
  %7 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4509
  %call13 = call zeroext i1 @has_latch_file(%struct.pci_slot* %7) #5, !dbg !4511
  br i1 %call13, label %if.then14, label %if.end20, !dbg !4512

if.then14:                                        ; preds = %if.end12
  %8 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4513
  %kobj15 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %8, i32 0, i32 4, !dbg !4515
  %call16 = call i32 @sysfs_create_file(%struct.kobject* %kobj15, %struct.attribute* getelementptr inbounds (%struct.pci_slot_attribute, %struct.pci_slot_attribute* @hotplug_slot_attr_latch, i32 0, i32 0)) #5, !dbg !4516
  store i32 %call16, i32* %retval1, align 4, !dbg !4517
  %9 = load i32, i32* %retval1, align 4, !dbg !4518
  %tobool17 = icmp ne i32 %9, 0, !dbg !4518
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !4520

if.then18:                                        ; preds = %if.then14
  br label %exit_latch, !dbg !4521

if.end19:                                         ; preds = %if.then14
  br label %if.end20, !dbg !4522

if.end20:                                         ; preds = %if.end19, %if.end12
  %10 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4523
  %call21 = call zeroext i1 @has_adapter_file(%struct.pci_slot* %10) #5, !dbg !4525
  br i1 %call21, label %if.then22, label %if.end28, !dbg !4526

if.then22:                                        ; preds = %if.end20
  %11 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4527
  %kobj23 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %11, i32 0, i32 4, !dbg !4529
  %call24 = call i32 @sysfs_create_file(%struct.kobject* %kobj23, %struct.attribute* getelementptr inbounds (%struct.pci_slot_attribute, %struct.pci_slot_attribute* @hotplug_slot_attr_presence, i32 0, i32 0)) #5, !dbg !4530
  store i32 %call24, i32* %retval1, align 4, !dbg !4531
  %12 = load i32, i32* %retval1, align 4, !dbg !4532
  %tobool25 = icmp ne i32 %12, 0, !dbg !4532
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !4534

if.then26:                                        ; preds = %if.then22
  br label %exit_adapter, !dbg !4535

if.end27:                                         ; preds = %if.then22
  br label %if.end28, !dbg !4536

if.end28:                                         ; preds = %if.end27, %if.end20
  %13 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4537
  %call29 = call zeroext i1 @has_test_file(%struct.pci_slot* %13) #5, !dbg !4539
  br i1 %call29, label %if.then30, label %if.end36, !dbg !4540

if.then30:                                        ; preds = %if.end28
  %14 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4541
  %kobj31 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %14, i32 0, i32 4, !dbg !4543
  %call32 = call i32 @sysfs_create_file(%struct.kobject* %kobj31, %struct.attribute* getelementptr inbounds (%struct.pci_slot_attribute, %struct.pci_slot_attribute* @hotplug_slot_attr_test, i32 0, i32 0)) #5, !dbg !4544
  store i32 %call32, i32* %retval1, align 4, !dbg !4545
  %15 = load i32, i32* %retval1, align 4, !dbg !4546
  %tobool33 = icmp ne i32 %15, 0, !dbg !4546
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !4548

if.then34:                                        ; preds = %if.then30
  br label %exit_test, !dbg !4549

if.end35:                                         ; preds = %if.then30
  br label %if.end36, !dbg !4550

if.end36:                                         ; preds = %if.end35, %if.end28
  br label %exit, !dbg !4551

exit_test:                                        ; preds = %if.then34
  call void @llvm.dbg.label(metadata !4552), !dbg !4553
  %16 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4554
  %call37 = call zeroext i1 @has_adapter_file(%struct.pci_slot* %16) #5, !dbg !4556
  br i1 %call37, label %if.then38, label %if.end40, !dbg !4557

if.then38:                                        ; preds = %exit_test
  %17 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4558
  %kobj39 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %17, i32 0, i32 4, !dbg !4559
  call void @sysfs_remove_file(%struct.kobject* %kobj39, %struct.attribute* getelementptr inbounds (%struct.pci_slot_attribute, %struct.pci_slot_attribute* @hotplug_slot_attr_presence, i32 0, i32 0)) #5, !dbg !4560
  br label %if.end40, !dbg !4560

if.end40:                                         ; preds = %if.then38, %exit_test
  br label %exit_adapter, !dbg !4561

exit_adapter:                                     ; preds = %if.end40, %if.then26
  call void @llvm.dbg.label(metadata !4562), !dbg !4563
  %18 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4564
  %call41 = call zeroext i1 @has_latch_file(%struct.pci_slot* %18) #5, !dbg !4566
  br i1 %call41, label %if.then42, label %if.end44, !dbg !4567

if.then42:                                        ; preds = %exit_adapter
  %19 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4568
  %kobj43 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %19, i32 0, i32 4, !dbg !4569
  call void @sysfs_remove_file(%struct.kobject* %kobj43, %struct.attribute* getelementptr inbounds (%struct.pci_slot_attribute, %struct.pci_slot_attribute* @hotplug_slot_attr_latch, i32 0, i32 0)) #5, !dbg !4570
  br label %if.end44, !dbg !4570

if.end44:                                         ; preds = %if.then42, %exit_adapter
  br label %exit_latch, !dbg !4571

exit_latch:                                       ; preds = %if.end44, %if.then18
  call void @llvm.dbg.label(metadata !4572), !dbg !4573
  %20 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4574
  %call45 = call zeroext i1 @has_attention_file(%struct.pci_slot* %20) #5, !dbg !4576
  br i1 %call45, label %if.then46, label %if.end48, !dbg !4577

if.then46:                                        ; preds = %exit_latch
  %21 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4578
  %kobj47 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %21, i32 0, i32 4, !dbg !4579
  call void @sysfs_remove_file(%struct.kobject* %kobj47, %struct.attribute* getelementptr inbounds (%struct.pci_slot_attribute, %struct.pci_slot_attribute* @hotplug_slot_attr_attention, i32 0, i32 0)) #5, !dbg !4580
  br label %if.end48, !dbg !4580

if.end48:                                         ; preds = %if.then46, %exit_latch
  br label %exit_attention, !dbg !4581

exit_attention:                                   ; preds = %if.end48, %if.then10
  call void @llvm.dbg.label(metadata !4582), !dbg !4583
  %22 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4584
  %call49 = call zeroext i1 @has_power_file(%struct.pci_slot* %22) #5, !dbg !4586
  br i1 %call49, label %if.then50, label %if.end52, !dbg !4587

if.then50:                                        ; preds = %exit_attention
  %23 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4588
  %kobj51 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %23, i32 0, i32 4, !dbg !4589
  call void @sysfs_remove_file(%struct.kobject* %kobj51, %struct.attribute* getelementptr inbounds (%struct.pci_slot_attribute, %struct.pci_slot_attribute* @hotplug_slot_attr_power, i32 0, i32 0)) #5, !dbg !4590
  br label %if.end52, !dbg !4590

if.end52:                                         ; preds = %if.then50, %exit_attention
  br label %exit_power, !dbg !4591

exit_power:                                       ; preds = %if.end52, %if.then3
  call void @llvm.dbg.label(metadata !4592), !dbg !4593
  %24 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4594
  call void @pci_hp_remove_module_link(%struct.pci_slot* %24) #5, !dbg !4595
  br label %exit, !dbg !4595

exit:                                             ; preds = %exit_power, %if.end36
  call void @llvm.dbg.label(metadata !4596), !dbg !4597
  %25 = load i32, i32* %retval1, align 4, !dbg !4598
  ret i32 %25, !dbg !4599
}

; Function Attrs: noredzone
declare dso_local i32 @kobject_uevent(%struct.kobject*, i32) #2

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4600 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4604, metadata !DIExpression()), !dbg !4605
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4606, metadata !DIExpression()), !dbg !4607
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4608
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4609
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4610
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !4611
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4611
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #5, !dbg !4612
  ret void, !dbg !4613
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hotplug_slot_name(%struct.hotplug_slot* %slot) #0 !dbg !4614 {
entry:
  %slot.addr = alloca %struct.hotplug_slot*, align 8
  store %struct.hotplug_slot* %slot, %struct.hotplug_slot** %slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %slot.addr, metadata !4619, metadata !DIExpression()), !dbg !4620
  %0 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4621
  %pci_slot = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %0, i32 0, i32 2, !dbg !4622
  %1 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot, align 8, !dbg !4622
  %call = call i8* @pci_slot_name(%struct.pci_slot* %1) #5, !dbg !4623
  ret i8* %call, !dbg !4624
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_hp_deregister(%struct.hotplug_slot* %slot) #0 !dbg !4625 {
entry:
  %slot.addr = alloca %struct.hotplug_slot*, align 8
  store %struct.hotplug_slot* %slot, %struct.hotplug_slot** %slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %slot.addr, metadata !4626, metadata !DIExpression()), !dbg !4627
  %0 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4628
  call void @pci_hp_del(%struct.hotplug_slot* %0) #5, !dbg !4629
  %1 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4630
  call void @pci_hp_destroy(%struct.hotplug_slot* %1) #5, !dbg !4631
  ret void, !dbg !4632
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_hp_del(%struct.hotplug_slot* %slot) #0 !dbg !4633 {
entry:
  %slot.addr = alloca %struct.hotplug_slot*, align 8
  %temp = alloca %struct.hotplug_slot*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on25 = alloca i32, align 4
  %tmp48 = alloca i64, align 8
  store %struct.hotplug_slot* %slot, %struct.hotplug_slot** %slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %slot.addr, metadata !4634, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %temp, metadata !4636, metadata !DIExpression()), !dbg !4637
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4638, metadata !DIExpression()), !dbg !4641
  %0 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4641
  %tobool = icmp ne %struct.hotplug_slot* %0, null, !dbg !4641
  %lnot = xor i1 %tobool, true, !dbg !4641
  %lnot1 = xor i1 %lnot, true, !dbg !4641
  %lnot2 = xor i1 %lnot1, true, !dbg !4641
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4641
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4641
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !4642
  %tobool3 = icmp ne i32 %1, 0, !dbg !4642
  %lnot4 = xor i1 %tobool3, true, !dbg !4642
  %lnot6 = xor i1 %lnot4, true, !dbg !4642
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4642
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4642
  %tobool8 = icmp ne i64 %conv, 0, !dbg !4642
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4641

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4642

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !4644

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !4646

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !4644

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 523, i32 2305, i64 12) #7, !dbg !4648, !srcloc !4650
  br label %do.end11, !dbg !4648

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 255) #7, !dbg !4651, !srcloc !4653
  br label %do.body12, !dbg !4644

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !4654

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !4644

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !4644

if.end:                                           ; preds = %do.end14, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !4641
  %tobool15 = icmp ne i32 %2, 0, !dbg !4641
  %lnot16 = xor i1 %tobool15, true, !dbg !4641
  %lnot18 = xor i1 %lnot16, true, !dbg !4641
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !4641
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !4641
  store i64 %conv20, i64* %tmp, align 8, !dbg !4642
  %3 = load i64, i64* %tmp, align 8, !dbg !4641
  %tobool21 = icmp ne i64 %3, 0, !dbg !4656
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4657

if.then22:                                        ; preds = %if.end
  br label %return, !dbg !4658

if.end23:                                         ; preds = %if.end
  call void @mutex_lock(%struct.mutex* @pci_hp_mutex) #5, !dbg !4659
  %4 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4660
  %call = call i8* @hotplug_slot_name(%struct.hotplug_slot* %4) #5, !dbg !4661
  %call24 = call %struct.hotplug_slot* @get_slot_from_name(i8* %call) #5, !dbg !4662
  store %struct.hotplug_slot* %call24, %struct.hotplug_slot** %temp, align 8, !dbg !4663
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on25, metadata !4664, metadata !DIExpression()), !dbg !4667
  %5 = load %struct.hotplug_slot*, %struct.hotplug_slot** %temp, align 8, !dbg !4667
  %6 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4667
  %cmp = icmp ne %struct.hotplug_slot* %5, %6, !dbg !4667
  %lnot27 = xor i1 %cmp, true, !dbg !4667
  %lnot29 = xor i1 %lnot27, true, !dbg !4667
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !4667
  store i32 %lnot.ext30, i32* %__ret_warn_on25, align 4, !dbg !4667
  %7 = load i32, i32* %__ret_warn_on25, align 4, !dbg !4668
  %tobool31 = icmp ne i32 %7, 0, !dbg !4668
  %lnot32 = xor i1 %tobool31, true, !dbg !4668
  %lnot34 = xor i1 %lnot32, true, !dbg !4668
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !4668
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !4668
  %tobool37 = icmp ne i64 %conv36, 0, !dbg !4668
  br i1 %tobool37, label %if.then38, label %if.end47, !dbg !4667

if.then38:                                        ; preds = %if.end23
  br label %do.body39, !dbg !4668

do.body39:                                        ; preds = %if.then38
  br label %do.body40, !dbg !4670

do.body40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !4672

do.end41:                                         ; preds = %do.body40
  br label %do.body42, !dbg !4670

do.body42:                                        ; preds = %do.end41
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 528, i32 2305, i64 12) #7, !dbg !4674, !srcloc !4676
  br label %do.end43, !dbg !4674

do.end43:                                         ; preds = %do.body42
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 256) #7, !dbg !4677, !srcloc !4679
  br label %do.body44, !dbg !4670

do.body44:                                        ; preds = %do.end43
  br label %do.end45, !dbg !4680

do.end45:                                         ; preds = %do.body44
  br label %do.end46, !dbg !4670

do.end46:                                         ; preds = %do.end45
  br label %if.end47, !dbg !4670

if.end47:                                         ; preds = %do.end46, %if.end23
  %8 = load i32, i32* %__ret_warn_on25, align 4, !dbg !4667
  %tobool49 = icmp ne i32 %8, 0, !dbg !4667
  %lnot50 = xor i1 %tobool49, true, !dbg !4667
  %lnot52 = xor i1 %lnot50, true, !dbg !4667
  %lnot.ext53 = zext i1 %lnot52 to i32, !dbg !4667
  %conv54 = sext i32 %lnot.ext53 to i64, !dbg !4667
  store i64 %conv54, i64* %tmp48, align 8, !dbg !4668
  %9 = load i64, i64* %tmp48, align 8, !dbg !4667
  %tobool55 = icmp ne i64 %9, 0, !dbg !4682
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !4683

if.then56:                                        ; preds = %if.end47
  call void @mutex_unlock(%struct.mutex* @pci_hp_mutex) #5, !dbg !4684
  br label %return, !dbg !4686

if.end57:                                         ; preds = %if.end47
  %10 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4687
  %slot_list = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %10, i32 0, i32 1, !dbg !4688
  call void @list_del(%struct.list_head* %slot_list) #5, !dbg !4689
  call void @mutex_unlock(%struct.mutex* @pci_hp_mutex) #5, !dbg !4690
  br label %do.body58, !dbg !4691

do.body58:                                        ; preds = %if.end57
  %11 = load i8, i8* @debug, align 1, !dbg !4692
  %tobool59 = trunc i8 %11 to i1, !dbg !4692
  br i1 %tobool59, label %if.then60, label %if.end63, !dbg !4695

if.then60:                                        ; preds = %do.body58
  %12 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4692
  %call61 = call i8* @hotplug_slot_name(%struct.hotplug_slot* %12) #5, !dbg !4692
  %call62 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.pci_hp_del, i64 0, i64 0), i8* %call61) #6, !dbg !4692
  br label %if.end63, !dbg !4692

if.end63:                                         ; preds = %if.then60, %do.body58
  br label %do.end64, !dbg !4695

do.end64:                                         ; preds = %if.end63
  %13 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !4696
  %pci_slot = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %13, i32 0, i32 2, !dbg !4697
  %14 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot, align 8, !dbg !4697
  call void @fs_remove_slot(%struct.pci_slot* %14) #5, !dbg !4698
  br label %return, !dbg !4699

return:                                           ; preds = %do.end64, %if.then56, %if.then22
  ret void, !dbg !4699
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.hotplug_slot* @get_slot_from_name(i8* %name) #0 !dbg !4700 {
entry:
  %retval = alloca %struct.hotplug_slot*, align 8
  %name.addr = alloca i8*, align 8
  %slot = alloca %struct.hotplug_slot*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.hotplug_slot*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp7 = alloca %struct.hotplug_slot*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4703, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %slot, metadata !4705, metadata !DIExpression()), !dbg !4706
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4707, metadata !DIExpression()), !dbg !4710
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @pci_hotplug_slot_list, i32 0, i32 0), align 8, !dbg !4710
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !4710
  store i8* %1, i8** %__mptr, align 8, !dbg !4710
  br label %do.body, !dbg !4710

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4711

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4710
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !4710
  %3 = bitcast i8* %add.ptr to %struct.hotplug_slot*, !dbg !4710
  store %struct.hotplug_slot* %3, %struct.hotplug_slot** %tmp, align 8, !dbg !4711
  %4 = load %struct.hotplug_slot*, %struct.hotplug_slot** %tmp, align 8, !dbg !4710
  store %struct.hotplug_slot* %4, %struct.hotplug_slot** %slot, align 8, !dbg !4713
  br label %for.cond, !dbg !4713

for.cond:                                         ; preds = %do.end6, %do.end
  %5 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4714
  %slot_list = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %5, i32 0, i32 1, !dbg !4714
  %cmp = icmp eq %struct.list_head* %slot_list, @pci_hotplug_slot_list, !dbg !4714
  %lnot = xor i1 %cmp, true, !dbg !4714
  br i1 %lnot, label %for.body, label %for.end, !dbg !4713

for.body:                                         ; preds = %for.cond
  %6 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4716
  %call = call i8* @hotplug_slot_name(%struct.hotplug_slot* %6) #5, !dbg !4719
  %7 = load i8*, i8** %name.addr, align 8, !dbg !4720
  %call1 = call i32 @strcmp(i8* %call, i8* %7) #5, !dbg !4721
  %cmp2 = icmp eq i32 %call1, 0, !dbg !4722
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4723

if.then:                                          ; preds = %for.body
  %8 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4724
  store %struct.hotplug_slot* %8, %struct.hotplug_slot** %retval, align 8, !dbg !4725
  br label %return, !dbg !4725

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4726

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !4727, metadata !DIExpression()), !dbg !4729
  %9 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4729
  %slot_list4 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %9, i32 0, i32 1, !dbg !4729
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %slot_list4, i32 0, i32 0, !dbg !4729
  %10 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4729
  %11 = bitcast %struct.list_head* %10 to i8*, !dbg !4729
  store i8* %11, i8** %__mptr3, align 8, !dbg !4729
  br label %do.body5, !dbg !4729

do.body5:                                         ; preds = %for.inc
  br label %do.end6, !dbg !4730

do.end6:                                          ; preds = %do.body5
  %12 = load i8*, i8** %__mptr3, align 8, !dbg !4729
  %add.ptr8 = getelementptr i8, i8* %12, i64 -8, !dbg !4729
  %13 = bitcast i8* %add.ptr8 to %struct.hotplug_slot*, !dbg !4729
  store %struct.hotplug_slot* %13, %struct.hotplug_slot** %tmp7, align 8, !dbg !4730
  %14 = load %struct.hotplug_slot*, %struct.hotplug_slot** %tmp7, align 8, !dbg !4729
  store %struct.hotplug_slot* %14, %struct.hotplug_slot** %slot, align 8, !dbg !4714
  br label %for.cond, !dbg !4714, !llvm.loop !4732

for.end:                                          ; preds = %for.cond
  store %struct.hotplug_slot* null, %struct.hotplug_slot** %retval, align 8, !dbg !4734
  br label %return, !dbg !4734

return:                                           ; preds = %for.end, %if.then
  %15 = load %struct.hotplug_slot*, %struct.hotplug_slot** %retval, align 8, !dbg !4735
  ret %struct.hotplug_slot* %15, !dbg !4735
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !4736 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4739, metadata !DIExpression()), !dbg !4740
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4741
  call void @__list_del_entry(%struct.list_head* %0) #5, !dbg !4742
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4743
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4744
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !4745
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4746
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !4747
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !4748
  ret void, !dbg !4749
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @fs_remove_slot(%struct.pci_slot* %pci_slot) #0 !dbg !4750 {
entry:
  %pci_slot.addr = alloca %struct.pci_slot*, align 8
  store %struct.pci_slot* %pci_slot, %struct.pci_slot** %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_slot** %pci_slot.addr, metadata !4753, metadata !DIExpression()), !dbg !4754
  %0 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4755
  %call = call zeroext i1 @has_power_file(%struct.pci_slot* %0) #5, !dbg !4757
  br i1 %call, label %if.then, label %if.end, !dbg !4758

if.then:                                          ; preds = %entry
  %1 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4759
  %kobj = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %1, i32 0, i32 4, !dbg !4760
  call void @sysfs_remove_file(%struct.kobject* %kobj, %struct.attribute* getelementptr inbounds (%struct.pci_slot_attribute, %struct.pci_slot_attribute* @hotplug_slot_attr_power, i32 0, i32 0)) #5, !dbg !4761
  br label %if.end, !dbg !4761

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4762
  %call1 = call zeroext i1 @has_attention_file(%struct.pci_slot* %2) #5, !dbg !4764
  br i1 %call1, label %if.then2, label %if.end4, !dbg !4765

if.then2:                                         ; preds = %if.end
  %3 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4766
  %kobj3 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %3, i32 0, i32 4, !dbg !4767
  call void @sysfs_remove_file(%struct.kobject* %kobj3, %struct.attribute* getelementptr inbounds (%struct.pci_slot_attribute, %struct.pci_slot_attribute* @hotplug_slot_attr_attention, i32 0, i32 0)) #5, !dbg !4768
  br label %if.end4, !dbg !4768

if.end4:                                          ; preds = %if.then2, %if.end
  %4 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4769
  %call5 = call zeroext i1 @has_latch_file(%struct.pci_slot* %4) #5, !dbg !4771
  br i1 %call5, label %if.then6, label %if.end8, !dbg !4772

if.then6:                                         ; preds = %if.end4
  %5 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4773
  %kobj7 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %5, i32 0, i32 4, !dbg !4774
  call void @sysfs_remove_file(%struct.kobject* %kobj7, %struct.attribute* getelementptr inbounds (%struct.pci_slot_attribute, %struct.pci_slot_attribute* @hotplug_slot_attr_latch, i32 0, i32 0)) #5, !dbg !4775
  br label %if.end8, !dbg !4775

if.end8:                                          ; preds = %if.then6, %if.end4
  %6 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4776
  %call9 = call zeroext i1 @has_adapter_file(%struct.pci_slot* %6) #5, !dbg !4778
  br i1 %call9, label %if.then10, label %if.end12, !dbg !4779

if.then10:                                        ; preds = %if.end8
  %7 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4780
  %kobj11 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %7, i32 0, i32 4, !dbg !4781
  call void @sysfs_remove_file(%struct.kobject* %kobj11, %struct.attribute* getelementptr inbounds (%struct.pci_slot_attribute, %struct.pci_slot_attribute* @hotplug_slot_attr_presence, i32 0, i32 0)) #5, !dbg !4782
  br label %if.end12, !dbg !4782

if.end12:                                         ; preds = %if.then10, %if.end8
  %8 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4783
  %call13 = call zeroext i1 @has_test_file(%struct.pci_slot* %8) #5, !dbg !4785
  br i1 %call13, label %if.then14, label %if.end16, !dbg !4786

if.then14:                                        ; preds = %if.end12
  %9 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4787
  %kobj15 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %9, i32 0, i32 4, !dbg !4788
  call void @sysfs_remove_file(%struct.kobject* %kobj15, %struct.attribute* getelementptr inbounds (%struct.pci_slot_attribute, %struct.pci_slot_attribute* @hotplug_slot_attr_test, i32 0, i32 0)) #5, !dbg !4789
  br label %if.end16, !dbg !4789

if.end16:                                         ; preds = %if.then14, %if.end12
  %10 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4790
  call void @pci_hp_remove_module_link(%struct.pci_slot* %10) #5, !dbg !4791
  ret void, !dbg !4792
}

; Function Attrs: noredzone
declare dso_local void @pci_destroy_slot(%struct.pci_slot*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_hotplug_init() #4 section ".init.text" !dbg !4793 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4796, metadata !DIExpression()), !dbg !4797
  %0 = load i8, i8* @debug, align 1, !dbg !4798
  %tobool = trunc i8 %0 to i1, !dbg !4798
  %conv = zext i1 %tobool to i32, !dbg !4798
  %call = call i32 @cpci_hotplug_init(i32 %conv) #5, !dbg !4799
  store i32 %call, i32* %result, align 4, !dbg !4800
  %1 = load i32, i32* %result, align 4, !dbg !4801
  %tobool1 = icmp ne i32 %1, 0, !dbg !4801
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4803

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %result, align 4, !dbg !4804
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %2) #6, !dbg !4804
  %3 = load i32, i32* %result, align 4, !dbg !4806
  store i32 %3, i32* %retval, align 4, !dbg !4807
  br label %return, !dbg !4807

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %result, align 4, !dbg !4808
  store i32 %4, i32* %retval, align 4, !dbg !4809
  br label %return, !dbg !4809

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !4810
  ret i32 %5, !dbg !4810
}

; Function Attrs: noredzone
declare dso_local void @pci_hp_create_module_link(%struct.pci_slot*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @has_power_file(%struct.pci_slot* %pci_slot) #0 !dbg !4811 {
entry:
  %retval = alloca i1, align 1
  %pci_slot.addr = alloca %struct.pci_slot*, align 8
  %slot = alloca %struct.hotplug_slot*, align 8
  store %struct.pci_slot* %pci_slot, %struct.pci_slot** %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_slot** %pci_slot.addr, metadata !4814, metadata !DIExpression()), !dbg !4815
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %slot, metadata !4816, metadata !DIExpression()), !dbg !4817
  %0 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4818
  %hotplug = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %0, i32 0, i32 2, !dbg !4819
  %1 = load %struct.hotplug_slot*, %struct.hotplug_slot** %hotplug, align 8, !dbg !4819
  store %struct.hotplug_slot* %1, %struct.hotplug_slot** %slot, align 8, !dbg !4817
  %2 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4820
  %tobool = icmp ne %struct.hotplug_slot* %2, null, !dbg !4820
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4822

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4823
  %ops = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %3, i32 0, i32 0, !dbg !4824
  %4 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops, align 8, !dbg !4824
  %tobool1 = icmp ne %struct.hotplug_slot_ops* %4, null, !dbg !4823
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4825

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1, !dbg !4826
  br label %return, !dbg !4826

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4827
  %ops2 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %5, i32 0, i32 0, !dbg !4829
  %6 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops2, align 8, !dbg !4829
  %enable_slot = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %6, i32 0, i32 0, !dbg !4830
  %7 = load i32 (%struct.hotplug_slot*)*, i32 (%struct.hotplug_slot*)** %enable_slot, align 8, !dbg !4830
  %tobool3 = icmp ne i32 (%struct.hotplug_slot*)* %7, null, !dbg !4831
  br i1 %tobool3, label %if.then10, label %lor.lhs.false4, !dbg !4832

lor.lhs.false4:                                   ; preds = %if.end
  %8 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4833
  %ops5 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %8, i32 0, i32 0, !dbg !4834
  %9 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops5, align 8, !dbg !4834
  %disable_slot = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %9, i32 0, i32 1, !dbg !4835
  %10 = load i32 (%struct.hotplug_slot*)*, i32 (%struct.hotplug_slot*)** %disable_slot, align 8, !dbg !4835
  %tobool6 = icmp ne i32 (%struct.hotplug_slot*)* %10, null, !dbg !4836
  br i1 %tobool6, label %if.then10, label %lor.lhs.false7, !dbg !4837

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %11 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4838
  %ops8 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %11, i32 0, i32 0, !dbg !4839
  %12 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops8, align 8, !dbg !4839
  %get_power_status = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %12, i32 0, i32 4, !dbg !4840
  %13 = load i32 (%struct.hotplug_slot*, i8*)*, i32 (%struct.hotplug_slot*, i8*)** %get_power_status, align 8, !dbg !4840
  %tobool9 = icmp ne i32 (%struct.hotplug_slot*, i8*)* %13, null, !dbg !4841
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4842

if.then10:                                        ; preds = %lor.lhs.false7, %lor.lhs.false4, %if.end
  store i1 true, i1* %retval, align 1, !dbg !4843
  br label %return, !dbg !4843

if.end11:                                         ; preds = %lor.lhs.false7
  store i1 false, i1* %retval, align 1, !dbg !4844
  br label %return, !dbg !4844

return:                                           ; preds = %if.end11, %if.then10, %if.then
  %14 = load i1, i1* %retval, align 1, !dbg !4845
  ret i1 %14, !dbg !4845
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sysfs_create_file(%struct.kobject* %kobj, %struct.attribute* %attr) #0 !dbg !4846 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4851, metadata !DIExpression()), !dbg !4852
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !4853, metadata !DIExpression()), !dbg !4854
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4855
  %1 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !4856
  %call = call i32 @sysfs_create_file_ns(%struct.kobject* %0, %struct.attribute* %1, i8* null) #5, !dbg !4857
  ret i32 %call, !dbg !4858
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @has_attention_file(%struct.pci_slot* %pci_slot) #0 !dbg !4859 {
entry:
  %retval = alloca i1, align 1
  %pci_slot.addr = alloca %struct.pci_slot*, align 8
  %slot = alloca %struct.hotplug_slot*, align 8
  store %struct.pci_slot* %pci_slot, %struct.pci_slot** %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_slot** %pci_slot.addr, metadata !4860, metadata !DIExpression()), !dbg !4861
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %slot, metadata !4862, metadata !DIExpression()), !dbg !4863
  %0 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4864
  %hotplug = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %0, i32 0, i32 2, !dbg !4865
  %1 = load %struct.hotplug_slot*, %struct.hotplug_slot** %hotplug, align 8, !dbg !4865
  store %struct.hotplug_slot* %1, %struct.hotplug_slot** %slot, align 8, !dbg !4863
  %2 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4866
  %tobool = icmp ne %struct.hotplug_slot* %2, null, !dbg !4866
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4868

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4869
  %ops = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %3, i32 0, i32 0, !dbg !4870
  %4 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops, align 8, !dbg !4870
  %tobool1 = icmp ne %struct.hotplug_slot_ops* %4, null, !dbg !4869
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4871

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1, !dbg !4872
  br label %return, !dbg !4872

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4873
  %ops2 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %5, i32 0, i32 0, !dbg !4875
  %6 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops2, align 8, !dbg !4875
  %set_attention_status = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %6, i32 0, i32 2, !dbg !4876
  %7 = load i32 (%struct.hotplug_slot*, i8)*, i32 (%struct.hotplug_slot*, i8)** %set_attention_status, align 8, !dbg !4876
  %tobool3 = icmp ne i32 (%struct.hotplug_slot*, i8)* %7, null, !dbg !4877
  br i1 %tobool3, label %if.then7, label %lor.lhs.false4, !dbg !4878

lor.lhs.false4:                                   ; preds = %if.end
  %8 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4879
  %ops5 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %8, i32 0, i32 0, !dbg !4880
  %9 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops5, align 8, !dbg !4880
  %get_attention_status = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %9, i32 0, i32 5, !dbg !4881
  %10 = load i32 (%struct.hotplug_slot*, i8*)*, i32 (%struct.hotplug_slot*, i8*)** %get_attention_status, align 8, !dbg !4881
  %tobool6 = icmp ne i32 (%struct.hotplug_slot*, i8*)* %10, null, !dbg !4882
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4883

if.then7:                                         ; preds = %lor.lhs.false4, %if.end
  store i1 true, i1* %retval, align 1, !dbg !4884
  br label %return, !dbg !4884

if.end8:                                          ; preds = %lor.lhs.false4
  store i1 false, i1* %retval, align 1, !dbg !4885
  br label %return, !dbg !4885

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %11 = load i1, i1* %retval, align 1, !dbg !4886
  ret i1 %11, !dbg !4886
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @has_latch_file(%struct.pci_slot* %pci_slot) #0 !dbg !4887 {
entry:
  %retval = alloca i1, align 1
  %pci_slot.addr = alloca %struct.pci_slot*, align 8
  %slot = alloca %struct.hotplug_slot*, align 8
  store %struct.pci_slot* %pci_slot, %struct.pci_slot** %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_slot** %pci_slot.addr, metadata !4888, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %slot, metadata !4890, metadata !DIExpression()), !dbg !4891
  %0 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4892
  %hotplug = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %0, i32 0, i32 2, !dbg !4893
  %1 = load %struct.hotplug_slot*, %struct.hotplug_slot** %hotplug, align 8, !dbg !4893
  store %struct.hotplug_slot* %1, %struct.hotplug_slot** %slot, align 8, !dbg !4891
  %2 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4894
  %tobool = icmp ne %struct.hotplug_slot* %2, null, !dbg !4894
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4896

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4897
  %ops = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %3, i32 0, i32 0, !dbg !4898
  %4 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops, align 8, !dbg !4898
  %tobool1 = icmp ne %struct.hotplug_slot_ops* %4, null, !dbg !4897
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4899

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1, !dbg !4900
  br label %return, !dbg !4900

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4901
  %ops2 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %5, i32 0, i32 0, !dbg !4903
  %6 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops2, align 8, !dbg !4903
  %get_latch_status = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %6, i32 0, i32 6, !dbg !4904
  %7 = load i32 (%struct.hotplug_slot*, i8*)*, i32 (%struct.hotplug_slot*, i8*)** %get_latch_status, align 8, !dbg !4904
  %tobool3 = icmp ne i32 (%struct.hotplug_slot*, i8*)* %7, null, !dbg !4901
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4905

if.then4:                                         ; preds = %if.end
  store i1 true, i1* %retval, align 1, !dbg !4906
  br label %return, !dbg !4906

if.end5:                                          ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !4907
  br label %return, !dbg !4907

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %8 = load i1, i1* %retval, align 1, !dbg !4908
  ret i1 %8, !dbg !4908
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @has_adapter_file(%struct.pci_slot* %pci_slot) #0 !dbg !4909 {
entry:
  %retval = alloca i1, align 1
  %pci_slot.addr = alloca %struct.pci_slot*, align 8
  %slot = alloca %struct.hotplug_slot*, align 8
  store %struct.pci_slot* %pci_slot, %struct.pci_slot** %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_slot** %pci_slot.addr, metadata !4910, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %slot, metadata !4912, metadata !DIExpression()), !dbg !4913
  %0 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4914
  %hotplug = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %0, i32 0, i32 2, !dbg !4915
  %1 = load %struct.hotplug_slot*, %struct.hotplug_slot** %hotplug, align 8, !dbg !4915
  store %struct.hotplug_slot* %1, %struct.hotplug_slot** %slot, align 8, !dbg !4913
  %2 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4916
  %tobool = icmp ne %struct.hotplug_slot* %2, null, !dbg !4916
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4918

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4919
  %ops = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %3, i32 0, i32 0, !dbg !4920
  %4 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops, align 8, !dbg !4920
  %tobool1 = icmp ne %struct.hotplug_slot_ops* %4, null, !dbg !4919
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4921

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1, !dbg !4922
  br label %return, !dbg !4922

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4923
  %ops2 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %5, i32 0, i32 0, !dbg !4925
  %6 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops2, align 8, !dbg !4925
  %get_adapter_status = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %6, i32 0, i32 7, !dbg !4926
  %7 = load i32 (%struct.hotplug_slot*, i8*)*, i32 (%struct.hotplug_slot*, i8*)** %get_adapter_status, align 8, !dbg !4926
  %tobool3 = icmp ne i32 (%struct.hotplug_slot*, i8*)* %7, null, !dbg !4923
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4927

if.then4:                                         ; preds = %if.end
  store i1 true, i1* %retval, align 1, !dbg !4928
  br label %return, !dbg !4928

if.end5:                                          ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !4929
  br label %return, !dbg !4929

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %8 = load i1, i1* %retval, align 1, !dbg !4930
  ret i1 %8, !dbg !4930
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @has_test_file(%struct.pci_slot* %pci_slot) #0 !dbg !4931 {
entry:
  %retval = alloca i1, align 1
  %pci_slot.addr = alloca %struct.pci_slot*, align 8
  %slot = alloca %struct.hotplug_slot*, align 8
  store %struct.pci_slot* %pci_slot, %struct.pci_slot** %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_slot** %pci_slot.addr, metadata !4932, metadata !DIExpression()), !dbg !4933
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %slot, metadata !4934, metadata !DIExpression()), !dbg !4935
  %0 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4936
  %hotplug = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %0, i32 0, i32 2, !dbg !4937
  %1 = load %struct.hotplug_slot*, %struct.hotplug_slot** %hotplug, align 8, !dbg !4937
  store %struct.hotplug_slot* %1, %struct.hotplug_slot** %slot, align 8, !dbg !4935
  %2 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4938
  %tobool = icmp ne %struct.hotplug_slot* %2, null, !dbg !4938
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4940

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4941
  %ops = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %3, i32 0, i32 0, !dbg !4942
  %4 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops, align 8, !dbg !4942
  %tobool1 = icmp ne %struct.hotplug_slot_ops* %4, null, !dbg !4941
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4943

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1, !dbg !4944
  br label %return, !dbg !4944

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !4945
  %ops2 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %5, i32 0, i32 0, !dbg !4947
  %6 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops2, align 8, !dbg !4947
  %hardware_test = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %6, i32 0, i32 3, !dbg !4948
  %7 = load i32 (%struct.hotplug_slot*, i32)*, i32 (%struct.hotplug_slot*, i32)** %hardware_test, align 8, !dbg !4948
  %tobool3 = icmp ne i32 (%struct.hotplug_slot*, i32)* %7, null, !dbg !4945
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4949

if.then4:                                         ; preds = %if.end
  store i1 true, i1* %retval, align 1, !dbg !4950
  br label %return, !dbg !4950

if.end5:                                          ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !4951
  br label %return, !dbg !4951

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %8 = load i1, i1* %retval, align 1, !dbg !4952
  ret i1 %8, !dbg !4952
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sysfs_remove_file(%struct.kobject* %kobj, %struct.attribute* %attr) #0 !dbg !4953 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4956, metadata !DIExpression()), !dbg !4957
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !4958, metadata !DIExpression()), !dbg !4959
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4960
  %1 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !4961
  call void @sysfs_remove_file_ns(%struct.kobject* %0, %struct.attribute* %1, i8* null) #5, !dbg !4962
  ret void, !dbg !4963
}

; Function Attrs: noredzone
declare dso_local void @pci_hp_remove_module_link(%struct.pci_slot*) #2

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_file_ns(%struct.kobject*, %struct.attribute*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @power_read_file(%struct.pci_slot* %pci_slot, i8* %buf) #0 !dbg !4964 {
entry:
  %retval = alloca i64, align 8
  %pci_slot.addr = alloca %struct.pci_slot*, align 8
  %buf.addr = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %value = alloca i8, align 1
  store %struct.pci_slot* %pci_slot, %struct.pci_slot** %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_slot** %pci_slot.addr, metadata !4965, metadata !DIExpression()), !dbg !4966
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4967, metadata !DIExpression()), !dbg !4968
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4969, metadata !DIExpression()), !dbg !4970
  call void @llvm.dbg.declare(metadata i8* %value, metadata !4971, metadata !DIExpression()), !dbg !4972
  %0 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4973
  %hotplug = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %0, i32 0, i32 2, !dbg !4974
  %1 = load %struct.hotplug_slot*, %struct.hotplug_slot** %hotplug, align 8, !dbg !4974
  %call = call i32 @get_power_status(%struct.hotplug_slot* %1, i8* %value) #5, !dbg !4975
  store i32 %call, i32* %retval1, align 4, !dbg !4976
  %2 = load i32, i32* %retval1, align 4, !dbg !4977
  %tobool = icmp ne i32 %2, 0, !dbg !4977
  br i1 %tobool, label %if.then, label %if.end, !dbg !4979

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %retval1, align 4, !dbg !4980
  %conv = sext i32 %3 to i64, !dbg !4980
  store i64 %conv, i64* %retval, align 8, !dbg !4981
  br label %return, !dbg !4981

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !4982
  %5 = load i8, i8* %value, align 1, !dbg !4983
  %conv2 = zext i8 %5 to i32, !dbg !4983
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %conv2) #5, !dbg !4984
  %conv4 = sext i32 %call3 to i64, !dbg !4984
  store i64 %conv4, i64* %retval, align 8, !dbg !4985
  br label %return, !dbg !4985

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !4986
  ret i64 %6, !dbg !4986
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @power_write_file(%struct.pci_slot* %pci_slot, i8* %buf, i64 %count) #0 !dbg !4987 {
entry:
  %retval = alloca i64, align 8
  %pci_slot.addr = alloca %struct.pci_slot*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %slot = alloca %struct.hotplug_slot*, align 8
  %lpower = alloca i64, align 8
  %power = alloca i8, align 1
  %retval1 = alloca i32, align 4
  store %struct.pci_slot* %pci_slot, %struct.pci_slot** %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_slot** %pci_slot.addr, metadata !4988, metadata !DIExpression()), !dbg !4989
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4990, metadata !DIExpression()), !dbg !4991
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4992, metadata !DIExpression()), !dbg !4993
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %slot, metadata !4994, metadata !DIExpression()), !dbg !4995
  %0 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !4996
  %hotplug = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %0, i32 0, i32 2, !dbg !4997
  %1 = load %struct.hotplug_slot*, %struct.hotplug_slot** %hotplug, align 8, !dbg !4997
  store %struct.hotplug_slot* %1, %struct.hotplug_slot** %slot, align 8, !dbg !4995
  call void @llvm.dbg.declare(metadata i64* %lpower, metadata !4998, metadata !DIExpression()), !dbg !4999
  call void @llvm.dbg.declare(metadata i8* %power, metadata !5000, metadata !DIExpression()), !dbg !5001
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5002, metadata !DIExpression()), !dbg !5003
  store i32 0, i32* %retval1, align 4, !dbg !5003
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5004
  %call = call i64 @simple_strtoul(i8* %2, i8** null, i32 10) #5, !dbg !5005
  store i64 %call, i64* %lpower, align 8, !dbg !5006
  %3 = load i64, i64* %lpower, align 8, !dbg !5007
  %and = and i64 %3, 255, !dbg !5008
  %conv = trunc i64 %and to i8, !dbg !5009
  store i8 %conv, i8* %power, align 1, !dbg !5010
  br label %do.body, !dbg !5011

do.body:                                          ; preds = %entry
  %4 = load i8, i8* @debug, align 1, !dbg !5012
  %tobool = trunc i8 %4 to i1, !dbg !5012
  br i1 %tobool, label %if.then, label %if.end, !dbg !5015

if.then:                                          ; preds = %do.body
  %5 = load i8, i8* %power, align 1, !dbg !5012
  %conv2 = zext i8 %5 to i32, !dbg !5012
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.power_write_file, i64 0, i64 0), i32 %conv2) #6, !dbg !5012
  br label %if.end, !dbg !5012

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5015

do.end:                                           ; preds = %if.end
  %6 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !5016
  %owner = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %6, i32 0, i32 3, !dbg !5018
  %7 = load %struct.module*, %struct.module** %owner, align 8, !dbg !5018
  %call4 = call zeroext i1 @try_module_get(%struct.module* %7) #5, !dbg !5019
  br i1 %call4, label %if.end6, label %if.then5, !dbg !5020

if.then5:                                         ; preds = %do.end
  store i32 -19, i32* %retval1, align 4, !dbg !5021
  br label %exit, !dbg !5023

if.end6:                                          ; preds = %do.end
  %8 = load i8, i8* %power, align 1, !dbg !5024
  %conv7 = zext i8 %8 to i32, !dbg !5024
  switch i32 %conv7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
  ], !dbg !5025

sw.bb:                                            ; preds = %if.end6
  %9 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !5026
  %ops = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %9, i32 0, i32 0, !dbg !5029
  %10 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops, align 8, !dbg !5029
  %disable_slot = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %10, i32 0, i32 1, !dbg !5030
  %11 = load i32 (%struct.hotplug_slot*)*, i32 (%struct.hotplug_slot*)** %disable_slot, align 8, !dbg !5030
  %tobool8 = icmp ne i32 (%struct.hotplug_slot*)* %11, null, !dbg !5026
  br i1 %tobool8, label %if.then9, label %if.end13, !dbg !5031

if.then9:                                         ; preds = %sw.bb
  %12 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !5032
  %ops10 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %12, i32 0, i32 0, !dbg !5033
  %13 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops10, align 8, !dbg !5033
  %disable_slot11 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %13, i32 0, i32 1, !dbg !5034
  %14 = load i32 (%struct.hotplug_slot*)*, i32 (%struct.hotplug_slot*)** %disable_slot11, align 8, !dbg !5034
  %15 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !5035
  %call12 = call i32 %14(%struct.hotplug_slot* %15) #5, !dbg !5032
  store i32 %call12, i32* %retval1, align 4, !dbg !5036
  br label %if.end13, !dbg !5037

if.end13:                                         ; preds = %if.then9, %sw.bb
  br label %sw.epilog, !dbg !5038

sw.bb14:                                          ; preds = %if.end6
  %16 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !5039
  %ops15 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %16, i32 0, i32 0, !dbg !5041
  %17 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops15, align 8, !dbg !5041
  %enable_slot = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %17, i32 0, i32 0, !dbg !5042
  %18 = load i32 (%struct.hotplug_slot*)*, i32 (%struct.hotplug_slot*)** %enable_slot, align 8, !dbg !5042
  %tobool16 = icmp ne i32 (%struct.hotplug_slot*)* %18, null, !dbg !5039
  br i1 %tobool16, label %if.then17, label %if.end21, !dbg !5043

if.then17:                                        ; preds = %sw.bb14
  %19 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !5044
  %ops18 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %19, i32 0, i32 0, !dbg !5045
  %20 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops18, align 8, !dbg !5045
  %enable_slot19 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %20, i32 0, i32 0, !dbg !5046
  %21 = load i32 (%struct.hotplug_slot*)*, i32 (%struct.hotplug_slot*)** %enable_slot19, align 8, !dbg !5046
  %22 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !5047
  %call20 = call i32 %21(%struct.hotplug_slot* %22) #5, !dbg !5044
  store i32 %call20, i32* %retval1, align 4, !dbg !5048
  br label %if.end21, !dbg !5049

if.end21:                                         ; preds = %if.then17, %sw.bb14
  br label %sw.epilog, !dbg !5050

sw.default:                                       ; preds = %if.end6
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5051
  store i32 -22, i32* %retval1, align 4, !dbg !5052
  br label %sw.epilog, !dbg !5053

sw.epilog:                                        ; preds = %sw.default, %if.end21, %if.end13
  %23 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !5054
  %owner23 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %23, i32 0, i32 3, !dbg !5055
  %24 = load %struct.module*, %struct.module** %owner23, align 8, !dbg !5055
  call void @module_put(%struct.module* %24) #5, !dbg !5056
  br label %exit, !dbg !5056

exit:                                             ; preds = %sw.epilog, %if.then5
  call void @llvm.dbg.label(metadata !5057), !dbg !5058
  %25 = load i32, i32* %retval1, align 4, !dbg !5059
  %tobool24 = icmp ne i32 %25, 0, !dbg !5059
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !5061

if.then25:                                        ; preds = %exit
  %26 = load i32, i32* %retval1, align 4, !dbg !5062
  %conv26 = sext i32 %26 to i64, !dbg !5062
  store i64 %conv26, i64* %retval, align 8, !dbg !5063
  br label %return, !dbg !5063

if.end27:                                         ; preds = %exit
  %27 = load i64, i64* %count.addr, align 8, !dbg !5064
  store i64 %27, i64* %retval, align 8, !dbg !5065
  br label %return, !dbg !5065

return:                                           ; preds = %if.end27, %if.then25
  %28 = load i64, i64* %retval, align 8, !dbg !5066
  ret i64 %28, !dbg !5066
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_power_status(%struct.hotplug_slot* %slot, i8* %value) #0 !dbg !5067 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca %struct.hotplug_slot*, align 8
  %value.addr = alloca i8*, align 8
  %ops = alloca %struct.hotplug_slot_ops*, align 8
  %retval2 = alloca i32, align 4
  store %struct.hotplug_slot* %slot, %struct.hotplug_slot** %slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %slot.addr, metadata !5068, metadata !DIExpression()), !dbg !5069
  store i8* %value, i8** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %value.addr, metadata !5070, metadata !DIExpression()), !dbg !5069
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot_ops** %ops, metadata !5071, metadata !DIExpression()), !dbg !5069
  %0 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !5069
  %ops1 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %0, i32 0, i32 0, !dbg !5069
  %1 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops1, align 8, !dbg !5069
  store %struct.hotplug_slot_ops* %1, %struct.hotplug_slot_ops** %ops, align 8, !dbg !5069
  call void @llvm.dbg.declare(metadata i32* %retval2, metadata !5072, metadata !DIExpression()), !dbg !5069
  store i32 0, i32* %retval2, align 4, !dbg !5069
  %2 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !5073
  %owner = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %2, i32 0, i32 3, !dbg !5073
  %3 = load %struct.module*, %struct.module** %owner, align 8, !dbg !5073
  %call = call zeroext i1 @try_module_get(%struct.module* %3) #5, !dbg !5073
  br i1 %call, label %if.end, label %if.then, !dbg !5069

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5073
  br label %return, !dbg !5073

if.end:                                           ; preds = %entry
  %4 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops, align 8, !dbg !5075
  %get_power_status = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %4, i32 0, i32 4, !dbg !5075
  %5 = load i32 (%struct.hotplug_slot*, i8*)*, i32 (%struct.hotplug_slot*, i8*)** %get_power_status, align 8, !dbg !5075
  %tobool = icmp ne i32 (%struct.hotplug_slot*, i8*)* %5, null, !dbg !5075
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !5069

if.then3:                                         ; preds = %if.end
  %6 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops, align 8, !dbg !5075
  %get_power_status4 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %6, i32 0, i32 4, !dbg !5075
  %7 = load i32 (%struct.hotplug_slot*, i8*)*, i32 (%struct.hotplug_slot*, i8*)** %get_power_status4, align 8, !dbg !5075
  %8 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !5075
  %9 = load i8*, i8** %value.addr, align 8, !dbg !5075
  %call5 = call i32 %7(%struct.hotplug_slot* %8, i8* %9) #5, !dbg !5075
  store i32 %call5, i32* %retval2, align 4, !dbg !5075
  br label %if.end6, !dbg !5075

if.end6:                                          ; preds = %if.then3, %if.end
  %10 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !5069
  %owner7 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %10, i32 0, i32 3, !dbg !5069
  %11 = load %struct.module*, %struct.module** %owner7, align 8, !dbg !5069
  call void @module_put(%struct.module* %11) #5, !dbg !5069
  %12 = load i32, i32* %retval2, align 4, !dbg !5069
  store i32 %12, i32* %retval, align 4, !dbg !5069
  br label %return, !dbg !5069

return:                                           ; preds = %if.end6, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !5069
  ret i32 %13, !dbg !5069
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !5077 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !5081, metadata !DIExpression()), !dbg !5082
  ret i1 true, !dbg !5083
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !5084 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !5087, metadata !DIExpression()), !dbg !5088
  ret void, !dbg !5089
}

; Function Attrs: noredzone
declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @attention_read_file(%struct.pci_slot* %pci_slot, i8* %buf) #0 !dbg !5090 {
entry:
  %retval = alloca i64, align 8
  %pci_slot.addr = alloca %struct.pci_slot*, align 8
  %buf.addr = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %value = alloca i8, align 1
  store %struct.pci_slot* %pci_slot, %struct.pci_slot** %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_slot** %pci_slot.addr, metadata !5091, metadata !DIExpression()), !dbg !5092
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5093, metadata !DIExpression()), !dbg !5094
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5095, metadata !DIExpression()), !dbg !5096
  call void @llvm.dbg.declare(metadata i8* %value, metadata !5097, metadata !DIExpression()), !dbg !5098
  %0 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !5099
  %hotplug = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %0, i32 0, i32 2, !dbg !5100
  %1 = load %struct.hotplug_slot*, %struct.hotplug_slot** %hotplug, align 8, !dbg !5100
  %call = call i32 @get_attention_status(%struct.hotplug_slot* %1, i8* %value) #5, !dbg !5101
  store i32 %call, i32* %retval1, align 4, !dbg !5102
  %2 = load i32, i32* %retval1, align 4, !dbg !5103
  %tobool = icmp ne i32 %2, 0, !dbg !5103
  br i1 %tobool, label %if.then, label %if.end, !dbg !5105

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %retval1, align 4, !dbg !5106
  %conv = sext i32 %3 to i64, !dbg !5106
  store i64 %conv, i64* %retval, align 8, !dbg !5107
  br label %return, !dbg !5107

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5108
  %5 = load i8, i8* %value, align 1, !dbg !5109
  %conv2 = zext i8 %5 to i32, !dbg !5109
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %conv2) #5, !dbg !5110
  %conv4 = sext i32 %call3 to i64, !dbg !5110
  store i64 %conv4, i64* %retval, align 8, !dbg !5111
  br label %return, !dbg !5111

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !5112
  ret i64 %6, !dbg !5112
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @attention_write_file(%struct.pci_slot* %pci_slot, i8* %buf, i64 %count) #0 !dbg !5113 {
entry:
  %retval = alloca i64, align 8
  %pci_slot.addr = alloca %struct.pci_slot*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %slot = alloca %struct.hotplug_slot*, align 8
  %ops = alloca %struct.hotplug_slot_ops*, align 8
  %lattention = alloca i64, align 8
  %attention = alloca i8, align 1
  %retval2 = alloca i32, align 4
  store %struct.pci_slot* %pci_slot, %struct.pci_slot** %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_slot** %pci_slot.addr, metadata !5114, metadata !DIExpression()), !dbg !5115
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5116, metadata !DIExpression()), !dbg !5117
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5118, metadata !DIExpression()), !dbg !5119
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %slot, metadata !5120, metadata !DIExpression()), !dbg !5121
  %0 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !5122
  %hotplug = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %0, i32 0, i32 2, !dbg !5123
  %1 = load %struct.hotplug_slot*, %struct.hotplug_slot** %hotplug, align 8, !dbg !5123
  store %struct.hotplug_slot* %1, %struct.hotplug_slot** %slot, align 8, !dbg !5121
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot_ops** %ops, metadata !5124, metadata !DIExpression()), !dbg !5125
  %2 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !5126
  %ops1 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %2, i32 0, i32 0, !dbg !5127
  %3 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops1, align 8, !dbg !5127
  store %struct.hotplug_slot_ops* %3, %struct.hotplug_slot_ops** %ops, align 8, !dbg !5125
  call void @llvm.dbg.declare(metadata i64* %lattention, metadata !5128, metadata !DIExpression()), !dbg !5129
  call void @llvm.dbg.declare(metadata i8* %attention, metadata !5130, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.declare(metadata i32* %retval2, metadata !5132, metadata !DIExpression()), !dbg !5133
  store i32 0, i32* %retval2, align 4, !dbg !5133
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5134
  %call = call i64 @simple_strtoul(i8* %4, i8** null, i32 10) #5, !dbg !5135
  store i64 %call, i64* %lattention, align 8, !dbg !5136
  %5 = load i64, i64* %lattention, align 8, !dbg !5137
  %and = and i64 %5, 255, !dbg !5138
  %conv = trunc i64 %and to i8, !dbg !5139
  store i8 %conv, i8* %attention, align 1, !dbg !5140
  br label %do.body, !dbg !5141

do.body:                                          ; preds = %entry
  %6 = load i8, i8* @debug, align 1, !dbg !5142
  %tobool = trunc i8 %6 to i1, !dbg !5142
  br i1 %tobool, label %if.then, label %if.end, !dbg !5145

if.then:                                          ; preds = %do.body
  %7 = load i8, i8* %attention, align 1, !dbg !5142
  %conv3 = zext i8 %7 to i32, !dbg !5142
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.attention_write_file, i64 0, i64 0), i32 %conv3) #6, !dbg !5142
  br label %if.end, !dbg !5142

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5145

do.end:                                           ; preds = %if.end
  %8 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !5146
  %owner = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %8, i32 0, i32 3, !dbg !5148
  %9 = load %struct.module*, %struct.module** %owner, align 8, !dbg !5148
  %call5 = call zeroext i1 @try_module_get(%struct.module* %9) #5, !dbg !5149
  br i1 %call5, label %if.end7, label %if.then6, !dbg !5150

if.then6:                                         ; preds = %do.end
  store i32 -19, i32* %retval2, align 4, !dbg !5151
  br label %exit, !dbg !5153

if.end7:                                          ; preds = %do.end
  %10 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops, align 8, !dbg !5154
  %set_attention_status = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %10, i32 0, i32 2, !dbg !5156
  %11 = load i32 (%struct.hotplug_slot*, i8)*, i32 (%struct.hotplug_slot*, i8)** %set_attention_status, align 8, !dbg !5156
  %tobool8 = icmp ne i32 (%struct.hotplug_slot*, i8)* %11, null, !dbg !5154
  br i1 %tobool8, label %if.then9, label %if.end12, !dbg !5157

if.then9:                                         ; preds = %if.end7
  %12 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops, align 8, !dbg !5158
  %set_attention_status10 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %12, i32 0, i32 2, !dbg !5159
  %13 = load i32 (%struct.hotplug_slot*, i8)*, i32 (%struct.hotplug_slot*, i8)** %set_attention_status10, align 8, !dbg !5159
  %14 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !5160
  %15 = load i8, i8* %attention, align 1, !dbg !5161
  %call11 = call i32 %13(%struct.hotplug_slot* %14, i8 zeroext %15) #5, !dbg !5158
  store i32 %call11, i32* %retval2, align 4, !dbg !5162
  br label %if.end12, !dbg !5163

if.end12:                                         ; preds = %if.then9, %if.end7
  %16 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !5164
  %owner13 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %16, i32 0, i32 3, !dbg !5165
  %17 = load %struct.module*, %struct.module** %owner13, align 8, !dbg !5165
  call void @module_put(%struct.module* %17) #5, !dbg !5166
  br label %exit, !dbg !5166

exit:                                             ; preds = %if.end12, %if.then6
  call void @llvm.dbg.label(metadata !5167), !dbg !5168
  %18 = load i32, i32* %retval2, align 4, !dbg !5169
  %tobool14 = icmp ne i32 %18, 0, !dbg !5169
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !5171

if.then15:                                        ; preds = %exit
  %19 = load i32, i32* %retval2, align 4, !dbg !5172
  %conv16 = sext i32 %19 to i64, !dbg !5172
  store i64 %conv16, i64* %retval, align 8, !dbg !5173
  br label %return, !dbg !5173

if.end17:                                         ; preds = %exit
  %20 = load i64, i64* %count.addr, align 8, !dbg !5174
  store i64 %20, i64* %retval, align 8, !dbg !5175
  br label %return, !dbg !5175

return:                                           ; preds = %if.end17, %if.then15
  %21 = load i64, i64* %retval, align 8, !dbg !5176
  ret i64 %21, !dbg !5176
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_attention_status(%struct.hotplug_slot* %slot, i8* %value) #0 !dbg !5177 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca %struct.hotplug_slot*, align 8
  %value.addr = alloca i8*, align 8
  %ops = alloca %struct.hotplug_slot_ops*, align 8
  %retval2 = alloca i32, align 4
  store %struct.hotplug_slot* %slot, %struct.hotplug_slot** %slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %slot.addr, metadata !5178, metadata !DIExpression()), !dbg !5179
  store i8* %value, i8** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %value.addr, metadata !5180, metadata !DIExpression()), !dbg !5179
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot_ops** %ops, metadata !5181, metadata !DIExpression()), !dbg !5179
  %0 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !5179
  %ops1 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %0, i32 0, i32 0, !dbg !5179
  %1 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops1, align 8, !dbg !5179
  store %struct.hotplug_slot_ops* %1, %struct.hotplug_slot_ops** %ops, align 8, !dbg !5179
  call void @llvm.dbg.declare(metadata i32* %retval2, metadata !5182, metadata !DIExpression()), !dbg !5179
  store i32 0, i32* %retval2, align 4, !dbg !5179
  %2 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !5183
  %owner = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %2, i32 0, i32 3, !dbg !5183
  %3 = load %struct.module*, %struct.module** %owner, align 8, !dbg !5183
  %call = call zeroext i1 @try_module_get(%struct.module* %3) #5, !dbg !5183
  br i1 %call, label %if.end, label %if.then, !dbg !5179

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5183
  br label %return, !dbg !5183

if.end:                                           ; preds = %entry
  %4 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops, align 8, !dbg !5185
  %get_attention_status = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %4, i32 0, i32 5, !dbg !5185
  %5 = load i32 (%struct.hotplug_slot*, i8*)*, i32 (%struct.hotplug_slot*, i8*)** %get_attention_status, align 8, !dbg !5185
  %tobool = icmp ne i32 (%struct.hotplug_slot*, i8*)* %5, null, !dbg !5185
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !5179

if.then3:                                         ; preds = %if.end
  %6 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops, align 8, !dbg !5185
  %get_attention_status4 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %6, i32 0, i32 5, !dbg !5185
  %7 = load i32 (%struct.hotplug_slot*, i8*)*, i32 (%struct.hotplug_slot*, i8*)** %get_attention_status4, align 8, !dbg !5185
  %8 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !5185
  %9 = load i8*, i8** %value.addr, align 8, !dbg !5185
  %call5 = call i32 %7(%struct.hotplug_slot* %8, i8* %9) #5, !dbg !5185
  store i32 %call5, i32* %retval2, align 4, !dbg !5185
  br label %if.end6, !dbg !5185

if.end6:                                          ; preds = %if.then3, %if.end
  %10 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !5179
  %owner7 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %10, i32 0, i32 3, !dbg !5179
  %11 = load %struct.module*, %struct.module** %owner7, align 8, !dbg !5179
  call void @module_put(%struct.module* %11) #5, !dbg !5179
  %12 = load i32, i32* %retval2, align 4, !dbg !5179
  store i32 %12, i32* %retval, align 4, !dbg !5179
  br label %return, !dbg !5179

return:                                           ; preds = %if.end6, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !5179
  ret i32 %13, !dbg !5179
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @latch_read_file(%struct.pci_slot* %pci_slot, i8* %buf) #0 !dbg !5187 {
entry:
  %retval = alloca i64, align 8
  %pci_slot.addr = alloca %struct.pci_slot*, align 8
  %buf.addr = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %value = alloca i8, align 1
  store %struct.pci_slot* %pci_slot, %struct.pci_slot** %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_slot** %pci_slot.addr, metadata !5188, metadata !DIExpression()), !dbg !5189
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5190, metadata !DIExpression()), !dbg !5191
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5192, metadata !DIExpression()), !dbg !5193
  call void @llvm.dbg.declare(metadata i8* %value, metadata !5194, metadata !DIExpression()), !dbg !5195
  %0 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !5196
  %hotplug = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %0, i32 0, i32 2, !dbg !5197
  %1 = load %struct.hotplug_slot*, %struct.hotplug_slot** %hotplug, align 8, !dbg !5197
  %call = call i32 @get_latch_status(%struct.hotplug_slot* %1, i8* %value) #5, !dbg !5198
  store i32 %call, i32* %retval1, align 4, !dbg !5199
  %2 = load i32, i32* %retval1, align 4, !dbg !5200
  %tobool = icmp ne i32 %2, 0, !dbg !5200
  br i1 %tobool, label %if.then, label %if.end, !dbg !5202

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %retval1, align 4, !dbg !5203
  %conv = sext i32 %3 to i64, !dbg !5203
  store i64 %conv, i64* %retval, align 8, !dbg !5204
  br label %return, !dbg !5204

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5205
  %5 = load i8, i8* %value, align 1, !dbg !5206
  %conv2 = zext i8 %5 to i32, !dbg !5206
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %conv2) #5, !dbg !5207
  %conv4 = sext i32 %call3 to i64, !dbg !5207
  store i64 %conv4, i64* %retval, align 8, !dbg !5208
  br label %return, !dbg !5208

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !5209
  ret i64 %6, !dbg !5209
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_latch_status(%struct.hotplug_slot* %slot, i8* %value) #0 !dbg !5210 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca %struct.hotplug_slot*, align 8
  %value.addr = alloca i8*, align 8
  %ops = alloca %struct.hotplug_slot_ops*, align 8
  %retval2 = alloca i32, align 4
  store %struct.hotplug_slot* %slot, %struct.hotplug_slot** %slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %slot.addr, metadata !5211, metadata !DIExpression()), !dbg !5212
  store i8* %value, i8** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %value.addr, metadata !5213, metadata !DIExpression()), !dbg !5212
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot_ops** %ops, metadata !5214, metadata !DIExpression()), !dbg !5212
  %0 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !5212
  %ops1 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %0, i32 0, i32 0, !dbg !5212
  %1 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops1, align 8, !dbg !5212
  store %struct.hotplug_slot_ops* %1, %struct.hotplug_slot_ops** %ops, align 8, !dbg !5212
  call void @llvm.dbg.declare(metadata i32* %retval2, metadata !5215, metadata !DIExpression()), !dbg !5212
  store i32 0, i32* %retval2, align 4, !dbg !5212
  %2 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !5216
  %owner = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %2, i32 0, i32 3, !dbg !5216
  %3 = load %struct.module*, %struct.module** %owner, align 8, !dbg !5216
  %call = call zeroext i1 @try_module_get(%struct.module* %3) #5, !dbg !5216
  br i1 %call, label %if.end, label %if.then, !dbg !5212

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5216
  br label %return, !dbg !5216

if.end:                                           ; preds = %entry
  %4 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops, align 8, !dbg !5218
  %get_latch_status = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %4, i32 0, i32 6, !dbg !5218
  %5 = load i32 (%struct.hotplug_slot*, i8*)*, i32 (%struct.hotplug_slot*, i8*)** %get_latch_status, align 8, !dbg !5218
  %tobool = icmp ne i32 (%struct.hotplug_slot*, i8*)* %5, null, !dbg !5218
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !5212

if.then3:                                         ; preds = %if.end
  %6 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops, align 8, !dbg !5218
  %get_latch_status4 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %6, i32 0, i32 6, !dbg !5218
  %7 = load i32 (%struct.hotplug_slot*, i8*)*, i32 (%struct.hotplug_slot*, i8*)** %get_latch_status4, align 8, !dbg !5218
  %8 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !5218
  %9 = load i8*, i8** %value.addr, align 8, !dbg !5218
  %call5 = call i32 %7(%struct.hotplug_slot* %8, i8* %9) #5, !dbg !5218
  store i32 %call5, i32* %retval2, align 4, !dbg !5218
  br label %if.end6, !dbg !5218

if.end6:                                          ; preds = %if.then3, %if.end
  %10 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !5212
  %owner7 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %10, i32 0, i32 3, !dbg !5212
  %11 = load %struct.module*, %struct.module** %owner7, align 8, !dbg !5212
  call void @module_put(%struct.module* %11) #5, !dbg !5212
  %12 = load i32, i32* %retval2, align 4, !dbg !5212
  store i32 %12, i32* %retval, align 4, !dbg !5212
  br label %return, !dbg !5212

return:                                           ; preds = %if.end6, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !5212
  ret i32 %13, !dbg !5212
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @presence_read_file(%struct.pci_slot* %pci_slot, i8* %buf) #0 !dbg !5220 {
entry:
  %retval = alloca i64, align 8
  %pci_slot.addr = alloca %struct.pci_slot*, align 8
  %buf.addr = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %value = alloca i8, align 1
  store %struct.pci_slot* %pci_slot, %struct.pci_slot** %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_slot** %pci_slot.addr, metadata !5221, metadata !DIExpression()), !dbg !5222
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5223, metadata !DIExpression()), !dbg !5224
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5225, metadata !DIExpression()), !dbg !5226
  call void @llvm.dbg.declare(metadata i8* %value, metadata !5227, metadata !DIExpression()), !dbg !5228
  %0 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !5229
  %hotplug = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %0, i32 0, i32 2, !dbg !5230
  %1 = load %struct.hotplug_slot*, %struct.hotplug_slot** %hotplug, align 8, !dbg !5230
  %call = call i32 @get_adapter_status(%struct.hotplug_slot* %1, i8* %value) #5, !dbg !5231
  store i32 %call, i32* %retval1, align 4, !dbg !5232
  %2 = load i32, i32* %retval1, align 4, !dbg !5233
  %tobool = icmp ne i32 %2, 0, !dbg !5233
  br i1 %tobool, label %if.then, label %if.end, !dbg !5235

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %retval1, align 4, !dbg !5236
  %conv = sext i32 %3 to i64, !dbg !5236
  store i64 %conv, i64* %retval, align 8, !dbg !5237
  br label %return, !dbg !5237

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5238
  %5 = load i8, i8* %value, align 1, !dbg !5239
  %conv2 = zext i8 %5 to i32, !dbg !5239
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %conv2) #5, !dbg !5240
  %conv4 = sext i32 %call3 to i64, !dbg !5240
  store i64 %conv4, i64* %retval, align 8, !dbg !5241
  br label %return, !dbg !5241

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !5242
  ret i64 %6, !dbg !5242
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_adapter_status(%struct.hotplug_slot* %slot, i8* %value) #0 !dbg !5243 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca %struct.hotplug_slot*, align 8
  %value.addr = alloca i8*, align 8
  %ops = alloca %struct.hotplug_slot_ops*, align 8
  %retval2 = alloca i32, align 4
  store %struct.hotplug_slot* %slot, %struct.hotplug_slot** %slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %slot.addr, metadata !5244, metadata !DIExpression()), !dbg !5245
  store i8* %value, i8** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %value.addr, metadata !5246, metadata !DIExpression()), !dbg !5245
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot_ops** %ops, metadata !5247, metadata !DIExpression()), !dbg !5245
  %0 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !5245
  %ops1 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %0, i32 0, i32 0, !dbg !5245
  %1 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops1, align 8, !dbg !5245
  store %struct.hotplug_slot_ops* %1, %struct.hotplug_slot_ops** %ops, align 8, !dbg !5245
  call void @llvm.dbg.declare(metadata i32* %retval2, metadata !5248, metadata !DIExpression()), !dbg !5245
  store i32 0, i32* %retval2, align 4, !dbg !5245
  %2 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !5249
  %owner = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %2, i32 0, i32 3, !dbg !5249
  %3 = load %struct.module*, %struct.module** %owner, align 8, !dbg !5249
  %call = call zeroext i1 @try_module_get(%struct.module* %3) #5, !dbg !5249
  br i1 %call, label %if.end, label %if.then, !dbg !5245

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5249
  br label %return, !dbg !5249

if.end:                                           ; preds = %entry
  %4 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops, align 8, !dbg !5251
  %get_adapter_status = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %4, i32 0, i32 7, !dbg !5251
  %5 = load i32 (%struct.hotplug_slot*, i8*)*, i32 (%struct.hotplug_slot*, i8*)** %get_adapter_status, align 8, !dbg !5251
  %tobool = icmp ne i32 (%struct.hotplug_slot*, i8*)* %5, null, !dbg !5251
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !5245

if.then3:                                         ; preds = %if.end
  %6 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops, align 8, !dbg !5251
  %get_adapter_status4 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %6, i32 0, i32 7, !dbg !5251
  %7 = load i32 (%struct.hotplug_slot*, i8*)*, i32 (%struct.hotplug_slot*, i8*)** %get_adapter_status4, align 8, !dbg !5251
  %8 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !5251
  %9 = load i8*, i8** %value.addr, align 8, !dbg !5251
  %call5 = call i32 %7(%struct.hotplug_slot* %8, i8* %9) #5, !dbg !5251
  store i32 %call5, i32* %retval2, align 4, !dbg !5251
  br label %if.end6, !dbg !5251

if.end6:                                          ; preds = %if.then3, %if.end
  %10 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !5245
  %owner7 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %10, i32 0, i32 3, !dbg !5245
  %11 = load %struct.module*, %struct.module** %owner7, align 8, !dbg !5245
  call void @module_put(%struct.module* %11) #5, !dbg !5245
  %12 = load i32, i32* %retval2, align 4, !dbg !5245
  store i32 %12, i32* %retval, align 4, !dbg !5245
  br label %return, !dbg !5245

return:                                           ; preds = %if.end6, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !5245
  ret i32 %13, !dbg !5245
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @test_write_file(%struct.pci_slot* %pci_slot, i8* %buf, i64 %count) #0 !dbg !5253 {
entry:
  %retval = alloca i64, align 8
  %pci_slot.addr = alloca %struct.pci_slot*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %slot = alloca %struct.hotplug_slot*, align 8
  %ltest = alloca i64, align 8
  %test = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store %struct.pci_slot* %pci_slot, %struct.pci_slot** %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_slot** %pci_slot.addr, metadata !5254, metadata !DIExpression()), !dbg !5255
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5256, metadata !DIExpression()), !dbg !5257
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5258, metadata !DIExpression()), !dbg !5259
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %slot, metadata !5260, metadata !DIExpression()), !dbg !5261
  %0 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot.addr, align 8, !dbg !5262
  %hotplug = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %0, i32 0, i32 2, !dbg !5263
  %1 = load %struct.hotplug_slot*, %struct.hotplug_slot** %hotplug, align 8, !dbg !5263
  store %struct.hotplug_slot* %1, %struct.hotplug_slot** %slot, align 8, !dbg !5261
  call void @llvm.dbg.declare(metadata i64* %ltest, metadata !5264, metadata !DIExpression()), !dbg !5265
  call void @llvm.dbg.declare(metadata i32* %test, metadata !5266, metadata !DIExpression()), !dbg !5267
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5268, metadata !DIExpression()), !dbg !5269
  store i32 0, i32* %retval1, align 4, !dbg !5269
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5270
  %call = call i64 @simple_strtoul(i8* %2, i8** null, i32 10) #5, !dbg !5271
  store i64 %call, i64* %ltest, align 8, !dbg !5272
  %3 = load i64, i64* %ltest, align 8, !dbg !5273
  %and = and i64 %3, 4294967295, !dbg !5274
  %conv = trunc i64 %and to i32, !dbg !5275
  store i32 %conv, i32* %test, align 4, !dbg !5276
  br label %do.body, !dbg !5277

do.body:                                          ; preds = %entry
  %4 = load i8, i8* @debug, align 1, !dbg !5278
  %tobool = trunc i8 %4 to i1, !dbg !5278
  br i1 %tobool, label %if.then, label %if.end, !dbg !5281

if.then:                                          ; preds = %do.body
  %5 = load i32, i32* %test, align 4, !dbg !5278
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.test_write_file, i64 0, i64 0), i32 %5) #6, !dbg !5278
  br label %if.end, !dbg !5278

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5281

do.end:                                           ; preds = %if.end
  %6 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !5282
  %owner = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %6, i32 0, i32 3, !dbg !5284
  %7 = load %struct.module*, %struct.module** %owner, align 8, !dbg !5284
  %call3 = call zeroext i1 @try_module_get(%struct.module* %7) #5, !dbg !5285
  br i1 %call3, label %if.end5, label %if.then4, !dbg !5286

if.then4:                                         ; preds = %do.end
  store i32 -19, i32* %retval1, align 4, !dbg !5287
  br label %exit, !dbg !5289

if.end5:                                          ; preds = %do.end
  %8 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !5290
  %ops = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %8, i32 0, i32 0, !dbg !5292
  %9 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops, align 8, !dbg !5292
  %hardware_test = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %9, i32 0, i32 3, !dbg !5293
  %10 = load i32 (%struct.hotplug_slot*, i32)*, i32 (%struct.hotplug_slot*, i32)** %hardware_test, align 8, !dbg !5293
  %tobool6 = icmp ne i32 (%struct.hotplug_slot*, i32)* %10, null, !dbg !5290
  br i1 %tobool6, label %if.then7, label %if.end11, !dbg !5294

if.then7:                                         ; preds = %if.end5
  %11 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !5295
  %ops8 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %11, i32 0, i32 0, !dbg !5296
  %12 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %ops8, align 8, !dbg !5296
  %hardware_test9 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %12, i32 0, i32 3, !dbg !5297
  %13 = load i32 (%struct.hotplug_slot*, i32)*, i32 (%struct.hotplug_slot*, i32)** %hardware_test9, align 8, !dbg !5297
  %14 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !5298
  %15 = load i32, i32* %test, align 4, !dbg !5299
  %call10 = call i32 %13(%struct.hotplug_slot* %14, i32 %15) #5, !dbg !5295
  store i32 %call10, i32* %retval1, align 4, !dbg !5300
  br label %if.end11, !dbg !5301

if.end11:                                         ; preds = %if.then7, %if.end5
  %16 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot, align 8, !dbg !5302
  %owner12 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %16, i32 0, i32 3, !dbg !5303
  %17 = load %struct.module*, %struct.module** %owner12, align 8, !dbg !5303
  call void @module_put(%struct.module* %17) #5, !dbg !5304
  br label %exit, !dbg !5304

exit:                                             ; preds = %if.end11, %if.then4
  call void @llvm.dbg.label(metadata !5305), !dbg !5306
  %18 = load i32, i32* %retval1, align 4, !dbg !5307
  %tobool13 = icmp ne i32 %18, 0, !dbg !5307
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !5309

if.then14:                                        ; preds = %exit
  %19 = load i32, i32* %retval1, align 4, !dbg !5310
  %conv15 = sext i32 %19 to i64, !dbg !5310
  store i64 %conv15, i64* %retval, align 8, !dbg !5311
  br label %return, !dbg !5311

if.end16:                                         ; preds = %exit
  %20 = load i64, i64* %count.addr, align 8, !dbg !5312
  store i64 %20, i64* %retval, align 8, !dbg !5313
  br label %return, !dbg !5313

return:                                           ; preds = %if.end16, %if.then14
  %21 = load i64, i64* %retval, align 8, !dbg !5314
  ret i64 %21, !dbg !5314
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_file_ns(%struct.kobject*, %struct.attribute*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5315 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5318, metadata !DIExpression()), !dbg !5319
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5320, metadata !DIExpression()), !dbg !5321
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5322, metadata !DIExpression()), !dbg !5323
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5324
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5326
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5327
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #5, !dbg !5328
  br i1 %call, label %if.end, label %if.then, !dbg !5329

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5330

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5331
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5332
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5333
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5334
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5335
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5336
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5337
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5338
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5339
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5340
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5341
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5342
  br label %do.body, !dbg !5343

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5344

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5346

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5344

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5348
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5348
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5348
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5348
  br label %do.end7, !dbg !5348

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5344

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5350
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5351 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5354, metadata !DIExpression()), !dbg !5355
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5356, metadata !DIExpression()), !dbg !5357
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5358, metadata !DIExpression()), !dbg !5359
  ret i1 true, !dbg !5360
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_slot_name(%struct.pci_slot* %slot) #0 !dbg !5361 {
entry:
  %slot.addr = alloca %struct.pci_slot*, align 8
  store %struct.pci_slot* %slot, %struct.pci_slot** %slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_slot** %slot.addr, metadata !5366, metadata !DIExpression()), !dbg !5367
  %0 = load %struct.pci_slot*, %struct.pci_slot** %slot.addr, align 8, !dbg !5368
  %kobj = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %0, i32 0, i32 4, !dbg !5369
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #5, !dbg !5370
  ret i8* %call, !dbg !5371
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !5372 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5377, metadata !DIExpression()), !dbg !5378
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5379
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !5380
  %1 = load i8*, i8** %name, align 8, !dbg !5380
  ret i8* %1, !dbg !5381
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5382 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5383, metadata !DIExpression()), !dbg !5384
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5385
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #5, !dbg !5387
  br i1 %call, label %if.end, label %if.then, !dbg !5388

if.then:                                          ; preds = %entry
  br label %return, !dbg !5389

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5390
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5391
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5391
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5392
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5393
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5393
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #5, !dbg !5394
  br label %return, !dbg !5395

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5395
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5396 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5399, metadata !DIExpression()), !dbg !5400
  ret i1 true, !dbg !5401
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5402 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5403, metadata !DIExpression()), !dbg !5404
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5405, metadata !DIExpression()), !dbg !5406
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5407
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5408
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5409
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5410
  br label %do.body, !dbg !5411

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5412

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5414

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5412

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5416
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5416
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5416
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5416
  br label %do.end5, !dbg !5416

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5412

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5418
}

; Function Attrs: noredzone
declare dso_local i32 @cpci_hotplug_init(i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4303, !4304, !4305, !4306}
!llvm.ident = !{!4307}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pci_hp_mutex", scope: !2, file: !3, line: 46, type: !1376, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !123, globals: !4210, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pci/hotplug/pci_hotplug_core.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !19, !25, !30, !36, !43, !49, !58, !66, !73, !81, !87, !101, !107, !118}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !13, line: 15, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !20, line: 546, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!24 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !26, line: 65, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !31, line: 16, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !37, line: 59, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !40, !41, !42}
!39 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!40 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!42 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !44, line: 54, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!45 = !{!46, !47, !48}
!46 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!47 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !50, line: 296, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!51 = !{!52, !53, !54, !55, !56, !57}
!52 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!55 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!56 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!57 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !59, line: 9, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!60 = !{!61, !62, !63, !64, !65}
!61 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!62 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!63 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!64 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!65 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !108, line: 53, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117}
!110 = !DIEnumerator(name: "KOBJ_ADD", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "KOBJ_MOVE", value: 3, isUnsigned: true)
!114 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4, isUnsigned: true)
!115 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5, isUnsigned: true)
!116 = !DIEnumerator(name: "KOBJ_BIND", value: 6, isUnsigned: true)
!117 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7, isUnsigned: true)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !119, line: 10, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!120 = !{!121, !122}
!121 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!123 = !{!124, !125, !126, !127, !132, !134, !142}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!125 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!126 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !128, line: 17, baseType: !129)
!128 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !130, line: 21, baseType: !131)
!130 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!131 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !128, line: 21, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !130, line: 27, baseType: !7)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !138, line: 178, size: 128, elements: !139)
!138 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!139 = !{!140, !141}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !137, file: !138, line: 179, baseType: !136, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !137, file: !138, line: 179, baseType: !136, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !144, line: 56, size: 384, elements: !145)
!144 = !DIFile(filename: "./include/linux/pci_hotplug.h", directory: "/home/lizy2001/genbc/linux")
!145 = !{!146, !177, !178, !4208, !4209}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !143, file: !144, line: 57, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot_ops", file: !144, line: 38, size: 576, elements: !150)
!150 = !{!151, !156, !157, !161, !165, !170, !171, !172, !173}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "enable_slot", scope: !149, file: !144, line: 39, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!155, !142}
!155 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "disable_slot", scope: !149, file: !144, line: 40, baseType: !152, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "set_attention_status", scope: !149, file: !144, line: 41, baseType: !158, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!155, !142, !127}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_test", scope: !149, file: !144, line: 42, baseType: !162, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!155, !142, !132}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "get_power_status", scope: !149, file: !144, line: 43, baseType: !166, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!155, !142, !169}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "get_attention_status", scope: !149, file: !144, line: 44, baseType: !166, size: 64, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "get_latch_status", scope: !149, file: !144, line: 45, baseType: !166, size: 64, offset: 384)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "get_adapter_status", scope: !149, file: !144, line: 46, baseType: !166, size: 64, offset: 448)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "reset_slot", scope: !149, file: !144, line: 47, baseType: !174, size: 64, offset: 512)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!155, !142, !155}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "slot_list", scope: !143, file: !144, line: 60, baseType: !137, size: 128, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pci_slot", scope: !143, file: !144, line: 61, baseType: !179, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !181, line: 69, size: 832, elements: !182)
!181 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!182 = !{!183, !4204, !4205, !4206, !4207}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !180, file: !181, line: 70, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !181, line: 605, size: 8064, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !4154, !4155, !4157, !4158, !4159, !4183, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4196, !4197, !4199, !4200, !4201, !4202, !4203}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !185, file: !181, line: 606, baseType: !137, size: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !185, file: !181, line: 607, baseType: !184, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !185, file: !181, line: 608, baseType: !137, size: 128, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !185, file: !181, line: 609, baseType: !137, size: 128, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !185, file: !181, line: 610, baseType: !192, size: 64, offset: 448)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !181, line: 309, size: 19264, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !203, !204, !205, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !222, !224, !4014, !4015, !4016, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4103, !4104, !4105, !4106, !4107, !4108, !4110, !4111, !4112, !4115, !4147, !4148, !4149, !4150, !4151, !4152, !4153}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !193, file: !181, line: 310, baseType: !137, size: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !193, file: !181, line: 311, baseType: !184, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !193, file: !181, line: 312, baseType: !184, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !193, file: !181, line: 314, baseType: !124, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !193, file: !181, line: 315, baseType: !200, size: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !202, line: 123, flags: DIFlagFwdDecl)
!202 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!203 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !193, file: !181, line: 316, baseType: !179, size: 64, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !193, file: !181, line: 318, baseType: !7, size: 32, offset: 448)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !193, file: !181, line: 319, baseType: !206, size: 16, offset: 480)
!206 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !193, file: !181, line: 320, baseType: !206, size: 16, offset: 496)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !193, file: !181, line: 321, baseType: !206, size: 16, offset: 512)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !193, file: !181, line: 322, baseType: !206, size: 16, offset: 528)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !193, file: !181, line: 323, baseType: !7, size: 32, offset: 544)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !193, file: !181, line: 324, baseType: !127, size: 8, offset: 576)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !193, file: !181, line: 325, baseType: !127, size: 8, offset: 584)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !193, file: !181, line: 330, baseType: !127, size: 8, offset: 592)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !193, file: !181, line: 331, baseType: !127, size: 8, offset: 600)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !193, file: !181, line: 332, baseType: !127, size: 8, offset: 608)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !193, file: !181, line: 333, baseType: !127, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !193, file: !181, line: 334, baseType: !127, size: 8, offset: 624)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !193, file: !181, line: 335, baseType: !127, size: 8, offset: 632)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !193, file: !181, line: 336, baseType: !220, size: 16, offset: 640)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !128, line: 19, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !130, line: 24, baseType: !206)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !193, file: !181, line: 337, baseType: !223, size: 64, offset: 704)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !193, file: !181, line: 339, baseType: !225, size: 64, offset: 768)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !181, line: 858, size: 2048, elements: !227)
!227 = !{!228, !229, !233, !247, !251, !255, !263, !267, !268, !272, !291, !3465, !4009}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !226, file: !181, line: 859, baseType: !137, size: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !226, file: !181, line: 860, baseType: !230, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!232 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !226, file: !181, line: 861, baseType: !234, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !237, line: 38, size: 256, elements: !238)
!237 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!238 = !{!239, !240, !241, !242, !243, !244, !245}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !236, file: !237, line: 39, baseType: !133, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !236, file: !237, line: 39, baseType: !133, size: 32, offset: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !236, file: !237, line: 40, baseType: !133, size: 32, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !236, file: !237, line: 40, baseType: !133, size: 32, offset: 96)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !236, file: !237, line: 41, baseType: !133, size: 32, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !236, file: !237, line: 41, baseType: !133, size: 32, offset: 160)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !236, file: !237, line: 42, baseType: !246, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !237, line: 14, baseType: !125)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !226, file: !181, line: 862, baseType: !248, size: 64, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!155, !192, !234}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !226, file: !181, line: 863, baseType: !252, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !192}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !226, file: !181, line: 864, baseType: !256, size: 64, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!155, !192, !259}
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !74, line: 52, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !74, line: 50, size: 32, elements: !261)
!261 = !{!262}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !260, file: !74, line: 51, baseType: !155, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !226, file: !181, line: 865, baseType: !264, size: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!155, !192}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !226, file: !181, line: 866, baseType: !252, size: 64, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !226, file: !181, line: 867, baseType: !269, size: 64, offset: 576)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!155, !192, !155}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !226, file: !181, line: 868, baseType: !273, size: 64, offset: 640)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !181, line: 795, size: 384, elements: !276)
!276 = !{!277, !283, !287, !288, !289, !290}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !275, file: !181, line: 797, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!281, !192, !282}
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !181, line: 772, baseType: !7)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !181, line: 180, baseType: !7)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !275, file: !181, line: 801, baseType: !284, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!281, !192}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !275, file: !181, line: 804, baseType: !284, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !275, file: !181, line: 807, baseType: !252, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !275, file: !181, line: 808, baseType: !252, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !275, file: !181, line: 811, baseType: !252, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !226, file: !181, line: 869, baseType: !292, size: 64, offset: 704)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !296, line: 84, size: 320, elements: !297)
!296 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!297 = !{!298, !299, !3443, !3462, !3463}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !295, file: !296, line: 85, baseType: !230, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !295, file: !296, line: 86, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!303, !304, !391, !155}
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !138, line: 19, baseType: !206)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !108, line: 64, size: 512, elements: !306)
!306 = !{!307, !308, !309, !310, !370, !464, !3433, !3438, !3439, !3440, !3441, !3442}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !108, line: 65, baseType: !230, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !305, file: !108, line: 66, baseType: !137, size: 128, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !305, file: !108, line: 67, baseType: !304, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !305, file: !108, line: 68, baseType: !311, size: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !108, line: 192, size: 704, elements: !313)
!313 = !{!314, !315, !331, !332}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !312, file: !108, line: 193, baseType: !137, size: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !312, file: !108, line: 194, baseType: !316, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !317, line: 83, baseType: !318)
!317 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !317, line: 71, elements: !319)
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !318, file: !317, line: 72, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !318, file: !317, line: 72, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !321, file: !317, line: 73, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !317, line: 20, elements: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !324, file: !317, line: 21, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !328, line: 25, baseType: !329)
!328 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 25, elements: !330)
!330 = !{}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !312, file: !108, line: 195, baseType: !305, size: 512, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !312, file: !108, line: 196, baseType: !333, size: 64, offset: 640)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !108, line: 156, size: 192, elements: !336)
!336 = !{!337, !342, !347}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !335, file: !108, line: 157, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!155, !311, !304}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !335, file: !108, line: 158, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!230, !311, !304}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !335, file: !108, line: 159, baseType: !348, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!155, !311, !304, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !108, line: 148, size: 20736, elements: !354)
!354 = !{!355, !360, !364, !365, !369}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !353, file: !108, line: 149, baseType: !356, size: 192)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 192, elements: !358)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!358 = !{!359}
!359 = !DISubrange(count: 3)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !353, file: !108, line: 150, baseType: !361, size: 4096, offset: 192)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 4096, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !353, file: !108, line: 151, baseType: !155, size: 32, offset: 4288)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !353, file: !108, line: 152, baseType: !366, size: 16384, offset: 4320)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 16384, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 2048)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !353, file: !108, line: 153, baseType: !155, size: 32, offset: 20704)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !305, file: !108, line: 69, baseType: !371, size: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !108, line: 138, size: 448, elements: !373)
!373 = !{!374, !378, !403, !405, !406, !441, !445}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !372, file: !108, line: 139, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !304}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !372, file: !108, line: 140, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !296, line: 230, size: 128, elements: !382)
!382 = !{!383, !396}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !381, file: !296, line: 231, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!387, !304, !391, !357}
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !138, line: 60, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !389, line: 73, baseType: !390)
!389 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !389, line: 15, baseType: !126)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !296, line: 30, size: 128, elements: !393)
!393 = !{!394, !395}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !392, file: !296, line: 31, baseType: !230, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !392, file: !296, line: 32, baseType: !303, size: 16, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !381, file: !296, line: 232, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!387, !304, !391, !230, !400}
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 55, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !389, line: 72, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !389, line: 16, baseType: !125)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !372, file: !108, line: 141, baseType: !404, size: 64, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !372, file: !108, line: 142, baseType: !292, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !372, file: !108, line: 143, baseType: !407, size: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!410, !304}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !413)
!413 = !{!414, !415, !421, !425, !433, !437}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !412, file: !6, line: 40, baseType: !5, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !412, file: !6, line: 41, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !138, line: 30, baseType: !420)
!420 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !412, file: !6, line: 42, baseType: !422, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!124}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !412, file: !6, line: 43, baseType: !426, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!429, !431}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !412, file: !6, line: 44, baseType: !434, size: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!429}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !412, file: !6, line: 45, baseType: !438, size: 64, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !124}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !372, file: !108, line: 144, baseType: !442, size: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!429, !304}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !372, file: !108, line: 145, baseType: !446, size: 64, offset: 384)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !304, !449, !457}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !451, line: 23, baseType: !452)
!451 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !451, line: 21, size: 32, elements: !453)
!453 = !{!454}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !452, file: !451, line: 22, baseType: !455, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !138, line: 32, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !389, line: 49, baseType: !7)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !451, line: 28, baseType: !459)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !451, line: 26, size: 32, elements: !460)
!460 = !{!461}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !459, file: !451, line: 27, baseType: !462, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !138, line: 33, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !389, line: 50, baseType: !7)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !305, file: !108, line: 70, baseType: !465, size: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !467, line: 123, size: 1024, elements: !468)
!467 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!468 = !{!469, !474, !475, !476, !477, !485, !486, !487, !3426, !3427, !3428, !3429, !3430}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !466, file: !467, line: 124, baseType: !470, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !138, line: 168, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 166, size: 32, elements: !472)
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !471, file: !138, line: 167, baseType: !155, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !466, file: !467, line: 125, baseType: !470, size: 32, offset: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !466, file: !467, line: 135, baseType: !465, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !466, file: !467, line: 136, baseType: !230, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !466, file: !467, line: 138, baseType: !478, size: 192, align: 64, offset: 192)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !479, line: 24, size: 192, align: 64, elements: !480)
!479 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!480 = !{!481, !482, !484}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !478, file: !479, line: 25, baseType: !125, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !478, file: !479, line: 26, baseType: !483, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !478, file: !479, line: 27, baseType: !483, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !466, file: !467, line: 140, baseType: !429, size: 64, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !466, file: !467, line: 141, baseType: !7, size: 32, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !467, line: 142, baseType: !488, size: 256, offset: 512)
!488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !467, line: 142, size: 256, elements: !489)
!489 = !{!490, !555, !559}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !488, file: !467, line: 143, baseType: !491, size: 192)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !467, line: 91, size: 192, elements: !492)
!492 = !{!493, !494, !498}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !491, file: !467, line: 92, baseType: !125, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !491, file: !467, line: 94, baseType: !495, size: 64, offset: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !479, line: 31, size: 64, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !495, file: !479, line: 32, baseType: !483, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !491, file: !467, line: 100, baseType: !499, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !467, line: 180, size: 704, elements: !501)
!501 = !{!502, !503, !504, !518, !519, !520, !547, !548}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !500, file: !467, line: 182, baseType: !465, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !467, line: 183, baseType: !7, size: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !500, file: !467, line: 186, baseType: !505, size: 192, offset: 128)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !506, line: 19, size: 192, elements: !507)
!506 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!507 = !{!508, !516, !517}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !505, file: !506, line: 20, baseType: !509, size: 128)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !510, line: 292, size: 128, elements: !511)
!510 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!511 = !{!512, !513, !515}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !509, file: !510, line: 293, baseType: !316)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !509, file: !510, line: 295, baseType: !514, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !138, line: 148, baseType: !7)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !509, file: !510, line: 296, baseType: !124, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !505, file: !506, line: 21, baseType: !7, size: 32, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !505, file: !506, line: 22, baseType: !7, size: 32, offset: 160)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !500, file: !467, line: 187, baseType: !132, size: 32, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !500, file: !467, line: 188, baseType: !132, size: 32, offset: 352)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !500, file: !467, line: 189, baseType: !521, size: 64, offset: 384)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !467, line: 168, size: 320, elements: !523)
!523 = !{!524, !531, !535, !539, !543}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !522, file: !467, line: 169, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!155, !528, !499}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !530, line: 539, flags: DIFlagFwdDecl)
!530 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !522, file: !467, line: 171, baseType: !532, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!155, !465, !230, !303}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !522, file: !467, line: 173, baseType: !536, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!155, !465}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !522, file: !467, line: 174, baseType: !540, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!155, !465, !465, !230}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !522, file: !467, line: 176, baseType: !544, size: 64, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!155, !528, !465, !499}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !500, file: !467, line: 192, baseType: !137, size: 128, offset: 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !500, file: !467, line: 194, baseType: !549, size: 128, offset: 576)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !550, line: 40, baseType: !551)
!550 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !550, line: 36, size: 128, elements: !552)
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !551, file: !550, line: 37, baseType: !316)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !551, file: !550, line: 38, baseType: !137, size: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !488, file: !467, line: 144, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !467, line: 103, size: 64, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !556, file: !467, line: 104, baseType: !465, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !488, file: !467, line: 145, baseType: !560, size: 256)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !467, line: 107, size: 256, elements: !561)
!561 = !{!562, !3421, !3424, !3425}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !560, file: !467, line: 108, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !467, line: 217, size: 768, elements: !566)
!566 = !{!567, !3386, !3390, !3394, !3398, !3402, !3406, !3410, !3411, !3412, !3413, !3417}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !565, file: !467, line: 222, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!155, !571}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !467, line: 197, size: 1088, elements: !573)
!573 = !{!574, !575, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !572, file: !467, line: 199, baseType: !465, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !572, file: !467, line: 200, baseType: !576, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !50, line: 916, size: 1856, align: 32, elements: !578)
!578 = !{!579, !597, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3358, !3359, !3368, !3369, !3370, !3371, !3372, !3373, !3374}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !577, file: !50, line: 920, baseType: !580, size: 128)
!580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !577, file: !50, line: 917, size: 128, elements: !581)
!581 = !{!582, !588}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !580, file: !50, line: 918, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !584, line: 58, size: 64, elements: !585)
!584 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!585 = !{!586}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !583, file: !584, line: 59, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !580, file: !50, line: 919, baseType: !589, size: 128, align: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !138, line: 216, size: 128, align: 64, elements: !590)
!590 = !{!591, !593}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !589, file: !138, line: 217, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !589, file: !138, line: 218, baseType: !594, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !592}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !577, file: !50, line: 921, baseType: !598, size: 128, offset: 128)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !599, line: 8, size: 128, elements: !600)
!599 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!600 = !{!601, !3339}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !598, file: !599, line: 9, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !604, line: 71, size: 192, elements: !605)
!604 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/lizy2001/genbc/linux")
!605 = !{!606, !3337, !3338}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !603, file: !604, line: 72, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !609, line: 89, size: 1536, elements: !610)
!609 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!610 = !{!611, !612, !622, !630, !631, !649, !3305, !3307, !3319, !3320, !3321, !3322, !3323, !3329, !3330, !3331}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !608, file: !609, line: 91, baseType: !7, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !608, file: !609, line: 92, baseType: !613, size: 32, offset: 32)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !614, line: 277, baseType: !615)
!614 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !614, line: 277, size: 32, elements: !616)
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !615, file: !614, line: 277, baseType: !618, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !614, line: 70, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !614, line: 65, size: 32, elements: !620)
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !619, file: !614, line: 66, baseType: !7, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !608, file: !609, line: 93, baseType: !623, size: 128, offset: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !624, line: 38, size: 128, elements: !625)
!624 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!625 = !{!626, !628}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !623, file: !624, line: 39, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !623, file: !624, line: 39, baseType: !629, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !608, file: !609, line: 94, baseType: !607, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !608, file: !609, line: 95, baseType: !632, size: 128, offset: 256)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !609, line: 47, size: 128, elements: !633)
!633 = !{!634, !646}
!634 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !609, line: 48, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !609, line: 48, size: 64, elements: !636)
!636 = !{!637, !642}
!637 = !DIDerivedType(tag: DW_TAG_member, scope: !635, file: !609, line: 49, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !635, file: !609, line: 49, size: 64, elements: !639)
!639 = !{!640, !641}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !638, file: !609, line: 50, baseType: !132, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !638, file: !609, line: 50, baseType: !132, size: 32, offset: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !635, file: !609, line: 52, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !128, line: 23, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !130, line: 31, baseType: !645)
!645 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !632, file: !609, line: 54, baseType: !647, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !608, file: !609, line: 96, baseType: !650, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !50, line: 610, size: 4224, elements: !652)
!652 = !{!653, !654, !655, !656, !657, !658, !801, !3016, !3017, !3018, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3281, !3289, !3290, !3291, !3301, !3302, !3303, !3304}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !651, file: !50, line: 611, baseType: !303, size: 16)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !651, file: !50, line: 612, baseType: !206, size: 16, offset: 16)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !651, file: !50, line: 613, baseType: !450, size: 32, offset: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !651, file: !50, line: 614, baseType: !458, size: 32, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !651, file: !50, line: 615, baseType: !7, size: 32, offset: 96)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !651, file: !50, line: 622, baseType: !659, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !50, line: 1864, size: 1536, align: 512, elements: !662)
!662 = !{!663, !667, !677, !681, !687, !691, !695, !699, !703, !707, !711, !712, !718, !722, !748, !777, !781, !787, !792, !796, !797}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !661, file: !50, line: 1865, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!607, !650, !607, !7}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !661, file: !50, line: 1866, baseType: !668, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!230, !607, !650, !671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !673, line: 10, size: 128, elements: !674)
!673 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !672, file: !673, line: 11, baseType: !438, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !672, file: !673, line: 12, baseType: !124, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !661, file: !50, line: 1867, baseType: !678, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!155, !650, !155}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !661, file: !50, line: 1868, baseType: !682, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!685, !650, !155}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !50, line: 581, flags: DIFlagFwdDecl)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !661, file: !50, line: 1870, baseType: !688, size: 64, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!155, !607, !357, !155}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !661, file: !50, line: 1872, baseType: !692, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!155, !650, !607, !303, !419}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !661, file: !50, line: 1873, baseType: !696, size: 64, offset: 384)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!155, !607, !650, !607}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !661, file: !50, line: 1874, baseType: !700, size: 64, offset: 448)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!155, !650, !607}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !661, file: !50, line: 1875, baseType: !704, size: 64, offset: 512)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!155, !650, !607, !230}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !661, file: !50, line: 1876, baseType: !708, size: 64, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!155, !650, !607, !303}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !661, file: !50, line: 1877, baseType: !700, size: 64, offset: 640)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !661, file: !50, line: 1878, baseType: !713, size: 64, offset: 704)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!155, !650, !607, !303, !716}
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !138, line: 16, baseType: !717)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !138, line: 13, baseType: !132)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !661, file: !50, line: 1879, baseType: !719, size: 64, offset: 768)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!155, !650, !607, !650, !607, !7}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !661, file: !50, line: 1881, baseType: !723, size: 64, offset: 832)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!155, !607, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !50, line: 219, size: 640, elements: !728)
!728 = !{!729, !730, !731, !732, !733, !737, !745, !746, !747}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !727, file: !50, line: 220, baseType: !7, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !727, file: !50, line: 221, baseType: !303, size: 16, offset: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !727, file: !50, line: 222, baseType: !450, size: 32, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !727, file: !50, line: 223, baseType: !458, size: 32, offset: 96)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !727, file: !50, line: 224, baseType: !734, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !138, line: 46, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !389, line: 88, baseType: !736)
!736 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !727, file: !50, line: 225, baseType: !738, size: 128, offset: 192)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !739, line: 13, size: 128, elements: !740)
!739 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!740 = !{!741, !744}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !738, file: !739, line: 14, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !739, line: 8, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !130, line: 30, baseType: !736)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !738, file: !739, line: 15, baseType: !126, size: 64, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !727, file: !50, line: 226, baseType: !738, size: 128, offset: 320)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !727, file: !50, line: 227, baseType: !738, size: 128, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !727, file: !50, line: 234, baseType: !576, size: 64, offset: 576)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !661, file: !50, line: 1882, baseType: !749, size: 64, offset: 896)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!155, !752, !754, !132, !7}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !756, line: 22, size: 1152, elements: !757)
!756 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!757 = !{!758, !759, !760, !761, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !755, file: !756, line: 23, baseType: !132, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !755, file: !756, line: 24, baseType: !303, size: 16, offset: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !755, file: !756, line: 25, baseType: !7, size: 32, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !755, file: !756, line: 26, baseType: !762, size: 32, offset: 96)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !138, line: 104, baseType: !132)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !755, file: !756, line: 27, baseType: !643, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !755, file: !756, line: 28, baseType: !643, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !755, file: !756, line: 37, baseType: !643, size: 64, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !755, file: !756, line: 38, baseType: !716, size: 32, offset: 320)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !755, file: !756, line: 39, baseType: !716, size: 32, offset: 352)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !755, file: !756, line: 40, baseType: !450, size: 32, offset: 384)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !755, file: !756, line: 41, baseType: !458, size: 32, offset: 416)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !755, file: !756, line: 42, baseType: !734, size: 64, offset: 448)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !755, file: !756, line: 43, baseType: !738, size: 128, offset: 512)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !755, file: !756, line: 44, baseType: !738, size: 128, offset: 640)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !755, file: !756, line: 45, baseType: !738, size: 128, offset: 768)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !755, file: !756, line: 46, baseType: !738, size: 128, offset: 896)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !755, file: !756, line: 47, baseType: !643, size: 64, offset: 1024)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !755, file: !756, line: 48, baseType: !643, size: 64, offset: 1088)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !661, file: !50, line: 1883, baseType: !778, size: 64, offset: 960)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!387, !607, !357, !400}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !661, file: !50, line: 1884, baseType: !782, size: 64, offset: 1024)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!155, !650, !785, !643, !643}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !50, line: 50, flags: DIFlagFwdDecl)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !661, file: !50, line: 1886, baseType: !788, size: 64, offset: 1088)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!155, !650, !791, !155}
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !661, file: !50, line: 1887, baseType: !793, size: 64, offset: 1152)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!155, !650, !607, !576, !7, !303}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !661, file: !50, line: 1890, baseType: !708, size: 64, offset: 1216)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !661, file: !50, line: 1891, baseType: !798, size: 64, offset: 1280)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!155, !650, !685, !155}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !651, file: !50, line: 623, baseType: !802, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !50, line: 1416, size: 9472, elements: !804)
!804 = !{!805, !806, !807, !808, !809, !810, !859, !2623, !2705, !2788, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2804, !2808, !2809, !2812, !2813, !2816, !2817, !2818, !2859, !2886, !2887, !2888, !2889, !2890, !2891, !2894, !2896, !2903, !2904, !2906, !2907, !2908, !2967, !2968, !2983, !2984, !2985, !2986, !2987, !2990, !2991, !2992, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !803, file: !50, line: 1417, baseType: !137, size: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !803, file: !50, line: 1418, baseType: !716, size: 32, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !803, file: !50, line: 1419, baseType: !131, size: 8, offset: 160)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !803, file: !50, line: 1420, baseType: !125, size: 64, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !803, file: !50, line: 1421, baseType: !734, size: 64, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !803, file: !50, line: 1422, baseType: !811, size: 64, offset: 320)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !50, line: 2228, size: 576, elements: !813)
!813 = !{!814, !815, !816, !822, !826, !830, !834, !838, !839, !849, !852, !853, !854, !856, !857, !858}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !812, file: !50, line: 2229, baseType: !230, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !812, file: !50, line: 2230, baseType: !155, size: 32, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !812, file: !50, line: 2238, baseType: !817, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!155, !820}
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !467, line: 28, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !812, file: !50, line: 2239, baseType: !823, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !50, line: 70, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !812, file: !50, line: 2240, baseType: !827, size: 64, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!607, !811, !155, !230, !124}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !812, file: !50, line: 2242, baseType: !831, size: 64, offset: 320)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !802}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !812, file: !50, line: 2243, baseType: !835, size: 64, offset: 384)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !837, line: 76, flags: DIFlagFwdDecl)
!837 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!838 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !812, file: !50, line: 2244, baseType: !811, size: 64, offset: 448)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !812, file: !50, line: 2245, baseType: !840, size: 64, offset: 512)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !138, line: 182, size: 64, elements: !841)
!841 = !{!842}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !840, file: !138, line: 183, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !138, line: 186, size: 128, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !844, file: !138, line: 187, baseType: !843, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !844, file: !138, line: 187, baseType: !848, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !812, file: !50, line: 2247, baseType: !850, offset: 576)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !851, line: 187, elements: !330)
!851 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!852 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !812, file: !50, line: 2248, baseType: !850, offset: 576)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !812, file: !50, line: 2249, baseType: !850, offset: 576)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !812, file: !50, line: 2250, baseType: !855, offset: 576)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, elements: !358)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !812, file: !50, line: 2252, baseType: !850, offset: 576)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !812, file: !50, line: 2253, baseType: !850, offset: 576)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !812, file: !50, line: 2254, baseType: !850, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !803, file: !50, line: 1423, baseType: !860, size: 64, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !50, line: 1935, size: 1472, elements: !863)
!863 = !{!864, !868, !872, !873, !877, !883, !887, !888, !889, !893, !897, !898, !899, !900, !906, !911, !912, !916, !917, !918, !919, !2607, !2622}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !862, file: !50, line: 1936, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!650, !802}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !862, file: !50, line: 1937, baseType: !869, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !650}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !862, file: !50, line: 1938, baseType: !869, size: 64, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !862, file: !50, line: 1940, baseType: !874, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !650, !155}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !862, file: !50, line: 1941, baseType: !878, size: 64, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!155, !650, !881}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 40, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !862, file: !50, line: 1942, baseType: !884, size: 64, offset: 320)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!155, !650}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !862, file: !50, line: 1943, baseType: !869, size: 64, offset: 384)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !862, file: !50, line: 1944, baseType: !831, size: 64, offset: 448)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !862, file: !50, line: 1945, baseType: !890, size: 64, offset: 512)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!155, !802, !155}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !862, file: !50, line: 1946, baseType: !894, size: 64, offset: 576)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!155, !802}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !862, file: !50, line: 1947, baseType: !894, size: 64, offset: 640)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !862, file: !50, line: 1948, baseType: !894, size: 64, offset: 704)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !862, file: !50, line: 1949, baseType: !894, size: 64, offset: 768)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !862, file: !50, line: 1950, baseType: !901, size: 64, offset: 832)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!155, !607, !904}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !50, line: 57, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !862, file: !50, line: 1951, baseType: !907, size: 64, offset: 896)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!155, !802, !910, !357}
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !862, file: !50, line: 1952, baseType: !831, size: 64, offset: 960)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !862, file: !50, line: 1954, baseType: !913, size: 64, offset: 1024)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!155, !528, !607}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !862, file: !50, line: 1955, baseType: !913, size: 64, offset: 1088)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !862, file: !50, line: 1956, baseType: !913, size: 64, offset: 1152)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !862, file: !50, line: 1957, baseType: !913, size: 64, offset: 1216)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !862, file: !50, line: 1963, baseType: !920, size: 64, offset: 1280)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!155, !802, !923, !514}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !925, line: 68, size: 512, align: 128, elements: !926)
!925 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!926 = !{!927, !928, !2599, !2606}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !924, file: !925, line: 69, baseType: !125, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !925, line: 77, baseType: !929, size: 320, offset: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !924, file: !925, line: 77, size: 320, elements: !930)
!930 = !{!931, !1119, !1124, !1152, !1160, !1166, !2530, !2598}
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !929, file: !925, line: 78, baseType: !932, size: 320)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !925, line: 78, size: 320, elements: !933)
!933 = !{!934, !935, !1117, !1118}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !932, file: !925, line: 84, baseType: !137, size: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !932, file: !925, line: 86, baseType: !936, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !50, line: 451, size: 1216, align: 64, elements: !938)
!938 = !{!939, !940, !941, !942, !943, !948, !964, !965, !966, !967, !1110, !1111, !1114, !1115, !1116}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !937, file: !50, line: 452, baseType: !650, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !937, file: !50, line: 453, baseType: !509, size: 128, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !937, file: !50, line: 454, baseType: !514, size: 32, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !937, file: !50, line: 455, baseType: !470, size: 32, offset: 224)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !937, file: !50, line: 460, baseType: !944, size: 128, offset: 256)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !479, line: 125, size: 128, elements: !945)
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !944, file: !479, line: 126, baseType: !495, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !944, file: !479, line: 127, baseType: !483, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !937, file: !50, line: 461, baseType: !949, size: 256, offset: 384)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !950, line: 35, size: 256, elements: !951)
!950 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!951 = !{!952, !960, !961, !963}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !949, file: !950, line: 36, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !954, line: 13, baseType: !955)
!954 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !138, line: 175, baseType: !956)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 173, size: 64, elements: !957)
!957 = !{!958}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !956, file: !138, line: 174, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !128, line: 22, baseType: !743)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !949, file: !950, line: 42, baseType: !953, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !949, file: !950, line: 46, baseType: !962, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !317, line: 29, baseType: !324)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !949, file: !950, line: 47, baseType: !137, size: 128, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !937, file: !50, line: 462, baseType: !125, size: 64, offset: 640)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !937, file: !50, line: 463, baseType: !125, size: 64, offset: 704)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !937, file: !50, line: 464, baseType: !125, size: 64, offset: 768)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !937, file: !50, line: 465, baseType: !968, size: 64, offset: 832)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !970)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !50, line: 367, size: 1408, elements: !971)
!971 = !{!972, !976, !980, !984, !988, !992, !1005, !1011, !1015, !1020, !1024, !1028, !1032, !1074, !1078, !1084, !1085, !1086, !1090, !1095, !1099, !1106}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !970, file: !50, line: 368, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!155, !923, !881}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !970, file: !50, line: 369, baseType: !977, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!155, !576, !923}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !970, file: !50, line: 372, baseType: !981, size: 64, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!155, !936, !881}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !970, file: !50, line: 375, baseType: !985, size: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!155, !923}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !970, file: !50, line: 381, baseType: !989, size: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!155, !576, !936, !136, !7}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !970, file: !50, line: 383, baseType: !993, size: 64, offset: 320)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !996}
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !998, line: 795, size: 256, elements: !999)
!998 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/lizy2001/genbc/linux")
!999 = !{!1000, !1001, !1002, !1003, !1004}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !997, file: !998, line: 796, baseType: !576, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !997, file: !998, line: 797, baseType: !936, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !997, file: !998, line: 799, baseType: !125, size: 64, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !997, file: !998, line: 800, baseType: !7, size: 32, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !997, file: !998, line: 801, baseType: !7, size: 32, offset: 224)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !970, file: !50, line: 385, baseType: !1006, size: 64, offset: 384)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!155, !576, !936, !734, !7, !7, !1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !970, file: !50, line: 388, baseType: !1012, size: 64, offset: 448)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!155, !576, !936, !734, !7, !7, !923, !124}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !970, file: !50, line: 393, baseType: !1016, size: 64, offset: 512)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!1019, !936, !1019}
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !138, line: 125, baseType: !643)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !970, file: !50, line: 394, baseType: !1021, size: 64, offset: 576)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null, !923, !7, !7}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !970, file: !50, line: 395, baseType: !1025, size: 64, offset: 640)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!155, !923, !514}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !970, file: !50, line: 396, baseType: !1029, size: 64, offset: 704)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !923}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !970, file: !50, line: 397, baseType: !1033, size: 64, offset: 768)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!387, !1036, !1072}
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !50, line: 320, size: 384, elements: !1038)
!1038 = !{!1039, !1040, !1041, !1045, !1046, !1047, !1048, !1049}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1037, file: !50, line: 321, baseType: !576, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1037, file: !50, line: 326, baseType: !734, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1037, file: !50, line: 327, baseType: !1042, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !1036, !126, !126}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1037, file: !50, line: 328, baseType: !124, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1037, file: !50, line: 329, baseType: !155, size: 32, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1037, file: !50, line: 330, baseType: !220, size: 16, offset: 288)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1037, file: !50, line: 331, baseType: !220, size: 16, offset: 304)
!1049 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !50, line: 332, baseType: !1050, size: 64, offset: 320)
!1050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !50, line: 332, size: 64, elements: !1051)
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1050, file: !50, line: 333, baseType: !7, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1050, file: !50, line: 334, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !998, line: 569, size: 448, elements: !1056)
!1056 = !{!1057, !1058, !1059}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1055, file: !998, line: 570, baseType: !923, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1055, file: !998, line: 571, baseType: !155, size: 32, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1055, file: !998, line: 572, baseType: !1060, size: 320, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !550, line: 14, baseType: !1061)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !550, line: 29, size: 320, elements: !1062)
!1062 = !{!1063, !1064, !1065, !1071}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1061, file: !550, line: 30, baseType: !7, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1061, file: !550, line: 31, baseType: !124, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1061, file: !550, line: 32, baseType: !1066, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !550, line: 16, baseType: !1067)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!155, !1070, !7, !155, !124}
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1061, file: !550, line: 33, baseType: !137, size: 128, offset: 192)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !50, line: 64, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !970, file: !50, line: 402, baseType: !1075, size: 64, offset: 832)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!155, !936, !923, !923, !12}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !970, file: !50, line: 404, baseType: !1079, size: 64, offset: 896)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!419, !923, !1082}
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1083, line: 305, baseType: !7)
!1083 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !970, file: !50, line: 405, baseType: !1029, size: 64, offset: 960)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !970, file: !50, line: 406, baseType: !985, size: 64, offset: 1024)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !970, file: !50, line: 407, baseType: !1087, size: 64, offset: 1088)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!155, !923, !125, !125}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !970, file: !50, line: 409, baseType: !1091, size: 64, offset: 1152)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{null, !923, !1094, !1094}
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !970, file: !50, line: 410, baseType: !1096, size: 64, offset: 1216)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!155, !936, !923}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !970, file: !50, line: 413, baseType: !1100, size: 64, offset: 1280)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!155, !1103, !576, !1105}
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !50, line: 61, flags: DIFlagFwdDecl)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !970, file: !50, line: 415, baseType: !1107, size: 64, offset: 1344)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{null, !576}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !937, file: !50, line: 466, baseType: !125, size: 64, offset: 896)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !937, file: !50, line: 467, baseType: !1112, size: 32, offset: 960)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1113, line: 8, baseType: !132)
!1113 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !937, file: !50, line: 468, baseType: !316, offset: 992)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !937, file: !50, line: 469, baseType: !137, size: 128, offset: 1024)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !937, file: !50, line: 470, baseType: !124, size: 64, offset: 1152)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !932, file: !925, line: 87, baseType: !125, size: 64, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !932, file: !925, line: 94, baseType: !125, size: 64, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !929, file: !925, line: 96, baseType: !1120, size: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !925, line: 96, size: 64, elements: !1121)
!1121 = !{!1122}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1120, file: !925, line: 101, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !138, line: 143, baseType: !643)
!1124 = !DIDerivedType(tag: DW_TAG_member, scope: !929, file: !925, line: 103, baseType: !1125, size: 320)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !925, line: 103, size: 320, elements: !1126)
!1126 = !{!1127, !1137, !1140, !1141}
!1127 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !925, line: 104, baseType: !1128, size: 128)
!1128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1125, file: !925, line: 104, size: 128, elements: !1129)
!1129 = !{!1130, !1131}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1128, file: !925, line: 105, baseType: !137, size: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, scope: !1128, file: !925, line: 106, baseType: !1132, size: 128)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1128, file: !925, line: 106, size: 128, elements: !1133)
!1133 = !{!1134, !1135, !1136}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1132, file: !925, line: 107, baseType: !923, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1132, file: !925, line: 109, baseType: !155, size: 32, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1132, file: !925, line: 110, baseType: !155, size: 32, offset: 96)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1125, file: !925, line: 117, baseType: !1138, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !925, line: 117, flags: DIFlagFwdDecl)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1125, file: !925, line: 119, baseType: !124, size: 64, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !925, line: 120, baseType: !1142, size: 64, offset: 256)
!1142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1125, file: !925, line: 120, size: 64, elements: !1143)
!1143 = !{!1144, !1145, !1146}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1142, file: !925, line: 121, baseType: !124, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1142, file: !925, line: 122, baseType: !125, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, scope: !1142, file: !925, line: 123, baseType: !1147, size: 32)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1142, file: !925, line: 123, size: 32, elements: !1148)
!1148 = !{!1149, !1150, !1151}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1147, file: !925, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1147, file: !925, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1147, file: !925, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1152 = !DIDerivedType(tag: DW_TAG_member, scope: !929, file: !925, line: 130, baseType: !1153, size: 192)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !925, line: 130, size: 192, elements: !1154)
!1154 = !{!1155, !1156, !1157, !1158, !1159}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1153, file: !925, line: 131, baseType: !125, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1153, file: !925, line: 134, baseType: !131, size: 8, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1153, file: !925, line: 135, baseType: !131, size: 8, offset: 72)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1153, file: !925, line: 136, baseType: !470, size: 32, offset: 96)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1153, file: !925, line: 137, baseType: !7, size: 32, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, scope: !929, file: !925, line: 139, baseType: !1161, size: 256)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !925, line: 139, size: 256, elements: !1162)
!1162 = !{!1163, !1164, !1165}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1161, file: !925, line: 140, baseType: !125, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1161, file: !925, line: 141, baseType: !470, size: 32, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1161, file: !925, line: 143, baseType: !137, size: 128, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, scope: !929, file: !925, line: 145, baseType: !1167, size: 256)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !925, line: 145, size: 256, elements: !1168)
!1168 = !{!1169, !1170, !1172, !1173, !2529}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1167, file: !925, line: 146, baseType: !125, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1167, file: !925, line: 147, baseType: !1171, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !530, line: 509, baseType: !923)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1167, file: !925, line: 148, baseType: !125, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_member, scope: !1167, file: !925, line: 149, baseType: !1174, size: 64, offset: 192)
!1174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1167, file: !925, line: 149, size: 64, elements: !1175)
!1175 = !{!1176, !2528}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1174, file: !925, line: 150, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !925, line: 388, size: 7296, elements: !1179)
!1179 = !{!1180, !2524}
!1180 = !DIDerivedType(tag: DW_TAG_member, scope: !1178, file: !925, line: 389, baseType: !1181, size: 7296)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1178, file: !925, line: 389, size: 7296, elements: !1182)
!1182 = !{!1183, !1301, !1302, !1303, !1307, !1308, !1309, !1310, !1311, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1352, !1360, !1363, !1409, !1410, !2508, !2509, !2512, !2513, !2514, !2517, !2518, !2519, !2522, !2523}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1181, file: !925, line: 390, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !925, line: 305, size: 1472, elements: !1186)
!1186 = !{!1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1201, !1202, !1207, !1208, !1211, !1295, !1296, !1297, !1298, !1299}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1185, file: !925, line: 308, baseType: !125, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1185, file: !925, line: 309, baseType: !125, size: 64, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1185, file: !925, line: 313, baseType: !1184, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1185, file: !925, line: 313, baseType: !1184, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1185, file: !925, line: 315, baseType: !478, size: 192, align: 64, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1185, file: !925, line: 323, baseType: !125, size: 64, offset: 448)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1185, file: !925, line: 327, baseType: !1177, size: 64, offset: 512)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1185, file: !925, line: 333, baseType: !1195, size: 64, offset: 576)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !530, line: 284, baseType: !1196)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !530, line: 284, size: 64, elements: !1197)
!1197 = !{!1198}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1196, file: !530, line: 284, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1200, line: 19, baseType: !125)
!1200 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1185, file: !925, line: 334, baseType: !125, size: 64, offset: 640)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1185, file: !925, line: 343, baseType: !1203, size: 256, offset: 704)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1185, file: !925, line: 340, size: 256, elements: !1204)
!1204 = !{!1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1203, file: !925, line: 341, baseType: !478, size: 192, align: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1203, file: !925, line: 342, baseType: !125, size: 64, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1185, file: !925, line: 351, baseType: !137, size: 128, offset: 960)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1185, file: !925, line: 353, baseType: !1209, size: 64, offset: 1088)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !925, line: 353, flags: DIFlagFwdDecl)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1185, file: !925, line: 356, baseType: !1212, size: 64, offset: 1152)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1214)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !20, line: 557, size: 832, elements: !1215)
!1215 = !{!1216, !1220, !1221, !1225, !1229, !1269, !1273, !1277, !1281, !1282, !1283, !1287, !1291}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1214, file: !20, line: 558, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !1184}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1214, file: !20, line: 559, baseType: !1217, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1214, file: !20, line: 560, baseType: !1222, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!155, !1184, !125}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1214, file: !20, line: 561, baseType: !1226, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!155, !1184}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1214, file: !20, line: 562, baseType: !1230, size: 64, offset: 256)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!1233, !1234}
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !925, line: 682, baseType: !7)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !20, line: 508, size: 768, elements: !1236)
!1236 = !{!1237, !1238, !1239, !1240, !1241, !1242, !1249, !1256, !1262, !1263, !1264, !1266, !1268}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1235, file: !20, line: 509, baseType: !1184, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1235, file: !20, line: 510, baseType: !7, size: 32, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1235, file: !20, line: 511, baseType: !514, size: 32, offset: 96)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1235, file: !20, line: 512, baseType: !125, size: 64, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1235, file: !20, line: 513, baseType: !125, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1235, file: !20, line: 514, baseType: !1243, size: 64, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !530, line: 385, baseType: !1245)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !530, line: 385, size: 64, elements: !1246)
!1246 = !{!1247}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1245, file: !530, line: 385, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1200, line: 15, baseType: !125)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1235, file: !20, line: 516, baseType: !1250, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !530, line: 359, baseType: !1252)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !530, line: 359, size: 64, elements: !1253)
!1253 = !{!1254}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1252, file: !530, line: 359, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1200, line: 16, baseType: !125)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1235, file: !20, line: 519, baseType: !1257, size: 64, offset: 384)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1200, line: 21, baseType: !1258)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1200, line: 21, size: 64, elements: !1259)
!1259 = !{!1260}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1258, file: !1200, line: 21, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1200, line: 14, baseType: !125)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1235, file: !20, line: 521, baseType: !923, size: 64, offset: 448)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1235, file: !20, line: 522, baseType: !923, size: 64, offset: 512)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1235, file: !20, line: 528, baseType: !1265, size: 64, offset: 576)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1235, file: !20, line: 532, baseType: !1267, size: 64, offset: 640)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1235, file: !20, line: 536, baseType: !1171, size: 64, offset: 704)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1214, file: !20, line: 563, baseType: !1270, size: 64, offset: 320)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!1233, !1234, !19}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1214, file: !20, line: 565, baseType: !1274, size: 64, offset: 384)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{null, !1234, !125, !125}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1214, file: !20, line: 567, baseType: !1278, size: 64, offset: 448)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!125, !1184}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1214, file: !20, line: 571, baseType: !1230, size: 64, offset: 512)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1214, file: !20, line: 574, baseType: !1230, size: 64, offset: 576)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1214, file: !20, line: 579, baseType: !1284, size: 64, offset: 640)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!155, !1184, !125, !124, !155, !155}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1214, file: !20, line: 585, baseType: !1288, size: 64, offset: 704)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!230, !1184}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1214, file: !20, line: 615, baseType: !1292, size: 64, offset: 768)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!923, !1184, !125}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1185, file: !925, line: 359, baseType: !125, size: 64, offset: 1216)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1185, file: !925, line: 361, baseType: !576, size: 64, offset: 1280)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1185, file: !925, line: 362, baseType: !124, size: 64, offset: 1344)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1185, file: !925, line: 365, baseType: !953, size: 64, offset: 1408)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1185, file: !925, line: 373, baseType: !1300, offset: 1472)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !925, line: 296, elements: !330)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1181, file: !925, line: 391, baseType: !495, size: 64, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1181, file: !925, line: 392, baseType: !643, size: 64, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1181, file: !925, line: 394, baseType: !1304, size: 64, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!125, !576, !125, !125, !125, !125}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1181, file: !925, line: 398, baseType: !125, size: 64, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1181, file: !925, line: 399, baseType: !125, size: 64, offset: 320)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1181, file: !925, line: 405, baseType: !125, size: 64, offset: 384)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1181, file: !925, line: 406, baseType: !125, size: 64, offset: 448)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1181, file: !925, line: 407, baseType: !1312, size: 64, offset: 512)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !530, line: 286, baseType: !1314)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !530, line: 286, size: 64, elements: !1315)
!1315 = !{!1316}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1314, file: !530, line: 286, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1200, line: 18, baseType: !125)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1181, file: !925, line: 416, baseType: !470, size: 32, offset: 576)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1181, file: !925, line: 428, baseType: !470, size: 32, offset: 608)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1181, file: !925, line: 437, baseType: !470, size: 32, offset: 640)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1181, file: !925, line: 447, baseType: !470, size: 32, offset: 672)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1181, file: !925, line: 450, baseType: !953, size: 64, offset: 704)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1181, file: !925, line: 452, baseType: !155, size: 32, offset: 768)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1181, file: !925, line: 454, baseType: !316, offset: 800)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1181, file: !925, line: 457, baseType: !949, size: 256, offset: 832)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1181, file: !925, line: 459, baseType: !137, size: 128, offset: 1088)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1181, file: !925, line: 466, baseType: !125, size: 64, offset: 1216)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1181, file: !925, line: 467, baseType: !125, size: 64, offset: 1280)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1181, file: !925, line: 469, baseType: !125, size: 64, offset: 1344)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1181, file: !925, line: 470, baseType: !125, size: 64, offset: 1408)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1181, file: !925, line: 471, baseType: !955, size: 64, offset: 1472)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1181, file: !925, line: 472, baseType: !125, size: 64, offset: 1536)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1181, file: !925, line: 473, baseType: !125, size: 64, offset: 1600)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1181, file: !925, line: 474, baseType: !125, size: 64, offset: 1664)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1181, file: !925, line: 475, baseType: !125, size: 64, offset: 1728)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1181, file: !925, line: 477, baseType: !316, offset: 1792)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1181, file: !925, line: 478, baseType: !125, size: 64, offset: 1792)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1181, file: !925, line: 478, baseType: !125, size: 64, offset: 1856)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1181, file: !925, line: 478, baseType: !125, size: 64, offset: 1920)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1181, file: !925, line: 478, baseType: !125, size: 64, offset: 1984)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1181, file: !925, line: 479, baseType: !125, size: 64, offset: 2048)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1181, file: !925, line: 479, baseType: !125, size: 64, offset: 2112)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1181, file: !925, line: 479, baseType: !125, size: 64, offset: 2176)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1181, file: !925, line: 480, baseType: !125, size: 64, offset: 2240)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1181, file: !925, line: 480, baseType: !125, size: 64, offset: 2304)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1181, file: !925, line: 480, baseType: !125, size: 64, offset: 2368)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1181, file: !925, line: 480, baseType: !125, size: 64, offset: 2432)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1181, file: !925, line: 482, baseType: !1349, size: 2816, offset: 2496)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 2816, elements: !1350)
!1350 = !{!1351}
!1351 = !DISubrange(count: 44)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1181, file: !925, line: 488, baseType: !1353, size: 256, offset: 5312)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1354, line: 60, size: 256, elements: !1355)
!1354 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1355 = !{!1356}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1353, file: !1354, line: 61, baseType: !1357, size: 256)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !953, size: 256, elements: !1358)
!1358 = !{!1359}
!1359 = !DISubrange(count: 4)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1181, file: !925, line: 490, baseType: !1361, size: 64, offset: 5568)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !925, line: 490, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1181, file: !925, line: 493, baseType: !1364, size: 896, offset: 5632)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1365, line: 53, baseType: !1366)
!1365 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1365, line: 13, size: 896, elements: !1367)
!1367 = !{!1368, !1369, !1370, !1371, !1374, !1375, !1382, !1383, !1403, !1404, !1405}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1366, file: !1365, line: 18, baseType: !643, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1366, file: !1365, line: 28, baseType: !955, size: 64, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1366, file: !1365, line: 31, baseType: !949, size: 256, offset: 128)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1366, file: !1365, line: 32, baseType: !1372, size: 64, offset: 384)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1365, line: 32, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1366, file: !1365, line: 37, baseType: !206, size: 16, offset: 448)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1366, file: !1365, line: 40, baseType: !1376, size: 192, offset: 512)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1377, line: 53, size: 192, elements: !1378)
!1377 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1378 = !{!1379, !1380, !1381}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1376, file: !1377, line: 54, baseType: !953, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1376, file: !1377, line: 55, baseType: !316, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1376, file: !1377, line: 59, baseType: !137, size: 128, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1366, file: !1365, line: 41, baseType: !124, size: 64, offset: 704)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1366, file: !1365, line: 42, baseType: !1384, size: 64, offset: 768)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1386)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1387, line: 13, size: 896, elements: !1388)
!1387 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1388 = !{!1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1386, file: !1387, line: 14, baseType: !124, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1386, file: !1387, line: 15, baseType: !125, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1386, file: !1387, line: 17, baseType: !125, size: 64, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1386, file: !1387, line: 17, baseType: !125, size: 64, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1386, file: !1387, line: 19, baseType: !126, size: 64, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1386, file: !1387, line: 21, baseType: !126, size: 64, offset: 320)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1386, file: !1387, line: 22, baseType: !126, size: 64, offset: 384)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1386, file: !1387, line: 23, baseType: !126, size: 64, offset: 448)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1386, file: !1387, line: 24, baseType: !126, size: 64, offset: 512)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1386, file: !1387, line: 25, baseType: !126, size: 64, offset: 576)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1386, file: !1387, line: 26, baseType: !126, size: 64, offset: 640)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1386, file: !1387, line: 27, baseType: !126, size: 64, offset: 704)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1386, file: !1387, line: 28, baseType: !126, size: 64, offset: 768)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1386, file: !1387, line: 29, baseType: !126, size: 64, offset: 832)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1366, file: !1365, line: 44, baseType: !470, size: 32, offset: 832)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1366, file: !1365, line: 50, baseType: !220, size: 16, offset: 864)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1366, file: !1365, line: 51, baseType: !1406, size: 16, offset: 880)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !128, line: 18, baseType: !1407)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !130, line: 23, baseType: !1408)
!1408 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1181, file: !925, line: 495, baseType: !125, size: 64, offset: 6528)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1181, file: !925, line: 497, baseType: !1411, size: 64, offset: 6592)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !925, line: 381, size: 384, elements: !1413)
!1413 = !{!1414, !1415, !2507}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1412, file: !925, line: 382, baseType: !470, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1412, file: !925, line: 383, baseType: !1416, size: 128, offset: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !925, line: 376, size: 128, elements: !1417)
!1417 = !{!1418, !2505}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1416, file: !925, line: 377, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1421, line: 640, size: 48640, elements: !1422)
!1421 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1422 = !{!1423, !1429, !1431, !1432, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1449, !1467, !1478, !1561, !1562, !1563, !1574, !1575, !1577, !1578, !1579, !1580, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1659, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1691, !1693, !1694, !1695, !1707, !1708, !1709, !1710, !1711, !1712, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1736, !1741, !1925, !1926, !1927, !1928, !1932, !1935, !1938, !1941, !1944, !1948, !2049, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2095, !2096, !2097, !2098, !2099, !2104, !2105, !2106, !2109, !2110, !2113, !2116, !2119, !2122, !2165, !2168, !2169, !2248, !2249, !2252, !2253, !2256, !2257, !2258, !2262, !2263, !2264, !2277, !2278, !2279, !2289, !2294, !2297, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1420, file: !1421, line: 646, baseType: !1424, size: 128)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1425, line: 56, size: 128, elements: !1426)
!1425 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1426 = !{!1427, !1428}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1424, file: !1425, line: 57, baseType: !125, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1424, file: !1425, line: 58, baseType: !132, size: 32, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1420, file: !1421, line: 649, baseType: !1430, size: 64, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !126)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1420, file: !1421, line: 657, baseType: !124, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1420, file: !1421, line: 658, baseType: !1433, size: 32, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1434, line: 113, baseType: !1435)
!1434 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1434, line: 111, size: 32, elements: !1436)
!1436 = !{!1437}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1435, file: !1434, line: 112, baseType: !470, size: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1420, file: !1421, line: 660, baseType: !7, size: 32, offset: 288)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1420, file: !1421, line: 661, baseType: !7, size: 32, offset: 320)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1420, file: !1421, line: 684, baseType: !155, size: 32, offset: 352)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1420, file: !1421, line: 686, baseType: !155, size: 32, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1420, file: !1421, line: 687, baseType: !155, size: 32, offset: 416)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1420, file: !1421, line: 688, baseType: !155, size: 32, offset: 448)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1420, file: !1421, line: 689, baseType: !7, size: 32, offset: 480)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1420, file: !1421, line: 691, baseType: !1446, size: 64, offset: 512)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1448)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1421, line: 691, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1420, file: !1421, line: 692, baseType: !1450, size: 832, offset: 576)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1421, line: 451, size: 832, elements: !1451)
!1451 = !{!1452, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1450, file: !1421, line: 453, baseType: !1453, size: 128)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1421, line: 325, size: 128, elements: !1454)
!1454 = !{!1455, !1456}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1453, file: !1421, line: 326, baseType: !125, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1453, file: !1421, line: 327, baseType: !132, size: 32, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1450, file: !1421, line: 454, baseType: !478, size: 192, align: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1450, file: !1421, line: 455, baseType: !137, size: 128, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1450, file: !1421, line: 456, baseType: !7, size: 32, offset: 448)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1450, file: !1421, line: 458, baseType: !643, size: 64, offset: 512)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1450, file: !1421, line: 459, baseType: !643, size: 64, offset: 576)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1450, file: !1421, line: 460, baseType: !643, size: 64, offset: 640)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1450, file: !1421, line: 461, baseType: !643, size: 64, offset: 704)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1450, file: !1421, line: 463, baseType: !643, size: 64, offset: 768)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1450, file: !1421, line: 465, baseType: !1466, offset: 832)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1421, line: 415, elements: !330)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1420, file: !1421, line: 693, baseType: !1468, size: 384, offset: 1408)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1421, line: 489, size: 384, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1473, !1474, !1475, !1476}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1468, file: !1421, line: 490, baseType: !137, size: 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1468, file: !1421, line: 491, baseType: !125, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1468, file: !1421, line: 492, baseType: !125, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1468, file: !1421, line: 493, baseType: !7, size: 32, offset: 256)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1468, file: !1421, line: 494, baseType: !206, size: 16, offset: 288)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1468, file: !1421, line: 495, baseType: !206, size: 16, offset: 304)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1468, file: !1421, line: 497, baseType: !1477, size: 64, offset: 320)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1420, file: !1421, line: 697, baseType: !1479, size: 1792, offset: 1792)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1421, line: 507, size: 1792, elements: !1480)
!1480 = !{!1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1558, !1559}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1479, file: !1421, line: 508, baseType: !478, size: 192, align: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1479, file: !1421, line: 515, baseType: !643, size: 64, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1479, file: !1421, line: 516, baseType: !643, size: 64, offset: 256)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1479, file: !1421, line: 517, baseType: !643, size: 64, offset: 320)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1479, file: !1421, line: 518, baseType: !643, size: 64, offset: 384)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1479, file: !1421, line: 519, baseType: !643, size: 64, offset: 448)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1479, file: !1421, line: 526, baseType: !959, size: 64, offset: 512)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1479, file: !1421, line: 527, baseType: !643, size: 64, offset: 576)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1479, file: !1421, line: 528, baseType: !7, size: 32, offset: 640)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1479, file: !1421, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1479, file: !1421, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1479, file: !1421, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1479, file: !1421, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1479, file: !1421, line: 563, baseType: !1495, size: 512, offset: 704)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !26, line: 118, size: 512, elements: !1496)
!1496 = !{!1497, !1505, !1506, !1511, !1554, !1555, !1556, !1557}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1495, file: !26, line: 119, baseType: !1498, size: 256)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1499, line: 9, size: 256, elements: !1500)
!1499 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1500 = !{!1501, !1502}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1498, file: !1499, line: 10, baseType: !478, size: 192, align: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1498, file: !1499, line: 11, baseType: !1503, size: 64, offset: 192)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1504, line: 29, baseType: !959)
!1504 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1495, file: !26, line: 120, baseType: !1503, size: 64, offset: 256)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1495, file: !26, line: 121, baseType: !1507, size: 64, offset: 320)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!25, !1510}
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1495, file: !26, line: 122, baseType: !1512, size: 64, offset: 384)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !26, line: 159, size: 512, align: 512, elements: !1514)
!1514 = !{!1515, !1535, !1536, !1539, !1544, !1545, !1549, !1553}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1513, file: !26, line: 160, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !26, line: 214, size: 4608, align: 512, elements: !1518)
!1518 = !{!1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1517, file: !26, line: 215, baseType: !962)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1517, file: !26, line: 216, baseType: !7, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1517, file: !26, line: 217, baseType: !7, size: 32, offset: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1517, file: !26, line: 218, baseType: !7, size: 32, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1517, file: !26, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1517, file: !26, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1517, file: !26, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1517, file: !26, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1517, file: !26, line: 233, baseType: !1503, size: 64, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1517, file: !26, line: 234, baseType: !1510, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1517, file: !26, line: 235, baseType: !1503, size: 64, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1517, file: !26, line: 236, baseType: !1510, size: 64, offset: 320)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1517, file: !26, line: 237, baseType: !1532, size: 4096, offset: 512)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1513, size: 4096, elements: !1533)
!1533 = !{!1534}
!1534 = !DISubrange(count: 8)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1513, file: !26, line: 161, baseType: !7, size: 32, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1513, file: !26, line: 162, baseType: !1537, size: 32, offset: 96)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !138, line: 27, baseType: !1538)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !389, line: 96, baseType: !155)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1513, file: !26, line: 163, baseType: !1540, size: 32, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !614, line: 276, baseType: !1541)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !614, line: 276, size: 32, elements: !1542)
!1542 = !{!1543}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1541, file: !614, line: 276, baseType: !618, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1513, file: !26, line: 164, baseType: !1510, size: 64, offset: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1513, file: !26, line: 165, baseType: !1546, size: 128, offset: 256)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1499, line: 14, size: 128, elements: !1547)
!1547 = !{!1548}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1546, file: !1499, line: 15, baseType: !944, size: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1513, file: !26, line: 166, baseType: !1550, size: 64, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!1503}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1513, file: !26, line: 167, baseType: !1503, size: 64, offset: 448)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1495, file: !26, line: 123, baseType: !127, size: 8, offset: 448)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1495, file: !26, line: 124, baseType: !127, size: 8, offset: 456)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1495, file: !26, line: 125, baseType: !127, size: 8, offset: 464)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1495, file: !26, line: 126, baseType: !127, size: 8, offset: 472)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1479, file: !1421, line: 572, baseType: !1495, size: 512, offset: 1216)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1479, file: !1421, line: 580, baseType: !1560, size: 64, offset: 1728)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1420, file: !1421, line: 721, baseType: !7, size: 32, offset: 3584)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1420, file: !1421, line: 722, baseType: !155, size: 32, offset: 3616)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1420, file: !1421, line: 723, baseType: !1564, size: 64, offset: 3648)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1566)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1567, line: 17, baseType: !1568)
!1567 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1567, line: 17, size: 64, elements: !1569)
!1569 = !{!1570}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1568, file: !1567, line: 17, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 64, elements: !1572)
!1572 = !{!1573}
!1573 = !DISubrange(count: 1)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1420, file: !1421, line: 724, baseType: !1566, size: 64, offset: 3712)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1420, file: !1421, line: 749, baseType: !1576, offset: 3776)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1421, line: 290, elements: !330)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1420, file: !1421, line: 751, baseType: !137, size: 128, offset: 3776)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1420, file: !1421, line: 757, baseType: !1177, size: 64, offset: 3904)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1420, file: !1421, line: 758, baseType: !1177, size: 64, offset: 3968)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1420, file: !1421, line: 761, baseType: !1581, size: 320, offset: 4032)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1354, line: 34, size: 320, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1581, file: !1354, line: 35, baseType: !643, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1581, file: !1354, line: 36, baseType: !1585, size: 256, offset: 64)
!1585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1184, size: 256, elements: !1358)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1420, file: !1421, line: 766, baseType: !155, size: 32, offset: 4352)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1420, file: !1421, line: 767, baseType: !155, size: 32, offset: 4384)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1420, file: !1421, line: 768, baseType: !155, size: 32, offset: 4416)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1420, file: !1421, line: 770, baseType: !155, size: 32, offset: 4448)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1420, file: !1421, line: 772, baseType: !125, size: 64, offset: 4480)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1420, file: !1421, line: 775, baseType: !7, size: 32, offset: 4544)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1420, file: !1421, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1420, file: !1421, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1420, file: !1421, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1420, file: !1421, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1420, file: !1421, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1420, file: !1421, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1420, file: !1421, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1420, file: !1421, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1420, file: !1421, line: 831, baseType: !125, size: 64, offset: 4672)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1420, file: !1421, line: 833, baseType: !1602, size: 384, offset: 4736)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !31, line: 25, size: 384, elements: !1603)
!1603 = !{!1604, !1609}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1602, file: !31, line: 26, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!126, !1608}
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, scope: !1602, file: !31, line: 27, baseType: !1610, size: 320, offset: 64)
!1610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1602, file: !31, line: 27, size: 320, elements: !1611)
!1611 = !{!1612, !1622, !1649}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1610, file: !31, line: 36, baseType: !1613, size: 320)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1610, file: !31, line: 29, size: 320, elements: !1614)
!1614 = !{!1615, !1617, !1618, !1619, !1620, !1621}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1613, file: !31, line: 30, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1613, file: !31, line: 31, baseType: !132, size: 32, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1613, file: !31, line: 32, baseType: !132, size: 32, offset: 96)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1613, file: !31, line: 33, baseType: !132, size: 32, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1613, file: !31, line: 34, baseType: !643, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1613, file: !31, line: 35, baseType: !1616, size: 64, offset: 256)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1610, file: !31, line: 46, baseType: !1623, size: 192)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1610, file: !31, line: 38, size: 192, elements: !1624)
!1624 = !{!1625, !1626, !1627, !1648}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1623, file: !31, line: 39, baseType: !1537, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1623, file: !31, line: 40, baseType: !30, size: 32, offset: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, scope: !1623, file: !31, line: 41, baseType: !1628, size: 64, offset: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1623, file: !31, line: 41, size: 64, elements: !1629)
!1629 = !{!1630, !1638}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1628, file: !31, line: 42, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1633, line: 7, size: 128, elements: !1634)
!1633 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1634 = !{!1635, !1637}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1632, file: !1633, line: 8, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !389, line: 93, baseType: !736)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1632, file: !1633, line: 9, baseType: !736, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1628, file: !31, line: 43, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1641, line: 7, size: 64, elements: !1642)
!1641 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1642 = !{!1643, !1647}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1640, file: !1641, line: 8, baseType: !1644, size: 32)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1641, line: 5, baseType: !1645)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !128, line: 20, baseType: !1646)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !130, line: 26, baseType: !155)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1640, file: !1641, line: 9, baseType: !1645, size: 32, offset: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1623, file: !31, line: 45, baseType: !643, size: 64, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1610, file: !31, line: 54, baseType: !1650, size: 256)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1610, file: !31, line: 48, size: 256, elements: !1651)
!1651 = !{!1652, !1655, !1656, !1657, !1658}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1650, file: !31, line: 49, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !31, line: 14, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1650, file: !31, line: 50, baseType: !155, size: 32, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1650, file: !31, line: 51, baseType: !155, size: 32, offset: 96)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1650, file: !31, line: 52, baseType: !125, size: 64, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1650, file: !31, line: 53, baseType: !125, size: 64, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1420, file: !1421, line: 835, baseType: !1660, size: 32, offset: 5120)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !138, line: 22, baseType: !1661)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !389, line: 28, baseType: !155)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1420, file: !1421, line: 836, baseType: !1660, size: 32, offset: 5152)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1420, file: !1421, line: 840, baseType: !125, size: 64, offset: 5184)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1420, file: !1421, line: 849, baseType: !1419, size: 64, offset: 5248)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1420, file: !1421, line: 852, baseType: !1419, size: 64, offset: 5312)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1420, file: !1421, line: 857, baseType: !137, size: 128, offset: 5376)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1420, file: !1421, line: 858, baseType: !137, size: 128, offset: 5504)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1420, file: !1421, line: 859, baseType: !1419, size: 64, offset: 5632)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1420, file: !1421, line: 867, baseType: !137, size: 128, offset: 5696)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1420, file: !1421, line: 868, baseType: !137, size: 128, offset: 5824)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1420, file: !1421, line: 871, baseType: !1672, size: 64, offset: 5952)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !59, line: 59, size: 768, elements: !1674)
!1674 = !{!1675, !1676, !1677, !1678, !1680, !1681, !1682, !1683}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1673, file: !59, line: 61, baseType: !1433, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1673, file: !59, line: 62, baseType: !7, size: 32, offset: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1673, file: !59, line: 63, baseType: !316, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1673, file: !59, line: 65, baseType: !1679, size: 256, offset: 64)
!1679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 256, elements: !1358)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1673, file: !59, line: 66, baseType: !840, size: 64, offset: 320)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1673, file: !59, line: 68, baseType: !549, size: 128, offset: 384)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1673, file: !59, line: 69, baseType: !589, size: 128, align: 64, offset: 512)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1673, file: !59, line: 70, baseType: !1684, size: 128, offset: 640)
!1684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1685, size: 128, elements: !1572)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !59, line: 54, size: 128, elements: !1686)
!1686 = !{!1687, !1688}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1685, file: !59, line: 55, baseType: !155, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1685, file: !59, line: 56, baseType: !1689, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !59, line: 56, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1420, file: !1421, line: 872, baseType: !1692, size: 512, offset: 6016)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !844, size: 512, elements: !1358)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1420, file: !1421, line: 873, baseType: !137, size: 128, offset: 6528)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1420, file: !1421, line: 874, baseType: !137, size: 128, offset: 6656)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1420, file: !1421, line: 876, baseType: !1696, size: 64, offset: 6784)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1698, line: 26, size: 192, elements: !1699)
!1698 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1699 = !{!1700, !1701}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1697, file: !1698, line: 27, baseType: !7, size: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1697, file: !1698, line: 28, baseType: !1702, size: 128, offset: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1703, line: 43, size: 128, elements: !1704)
!1703 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1704 = !{!1705, !1706}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1702, file: !1703, line: 44, baseType: !962)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1702, file: !1703, line: 45, baseType: !137, size: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1420, file: !1421, line: 879, baseType: !910, size: 64, offset: 6848)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1420, file: !1421, line: 882, baseType: !910, size: 64, offset: 6912)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1420, file: !1421, line: 884, baseType: !643, size: 64, offset: 6976)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1420, file: !1421, line: 885, baseType: !643, size: 64, offset: 7040)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1420, file: !1421, line: 890, baseType: !643, size: 64, offset: 7104)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1420, file: !1421, line: 891, baseType: !1713, size: 128, offset: 7168)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1421, line: 242, size: 128, elements: !1714)
!1714 = !{!1715, !1716, !1717}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1713, file: !1421, line: 244, baseType: !643, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1713, file: !1421, line: 245, baseType: !643, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1713, file: !1421, line: 246, baseType: !962, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1420, file: !1421, line: 900, baseType: !125, size: 64, offset: 7296)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1420, file: !1421, line: 901, baseType: !125, size: 64, offset: 7360)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1420, file: !1421, line: 904, baseType: !643, size: 64, offset: 7424)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1420, file: !1421, line: 907, baseType: !643, size: 64, offset: 7488)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1420, file: !1421, line: 910, baseType: !125, size: 64, offset: 7552)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1420, file: !1421, line: 911, baseType: !125, size: 64, offset: 7616)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1420, file: !1421, line: 914, baseType: !1725, size: 640, offset: 7680)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1726, line: 123, size: 640, elements: !1727)
!1726 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1727 = !{!1728, !1734, !1735}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1725, file: !1726, line: 124, baseType: !1729, size: 576)
!1729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1730, size: 576, elements: !358)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1726, line: 108, size: 192, elements: !1731)
!1731 = !{!1732, !1733}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1730, file: !1726, line: 109, baseType: !643, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1730, file: !1726, line: 110, baseType: !1546, size: 128, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1725, file: !1726, line: 125, baseType: !7, size: 32, offset: 576)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1725, file: !1726, line: 126, baseType: !7, size: 32, offset: 608)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1420, file: !1421, line: 917, baseType: !1737, size: 192, offset: 8320)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1726, line: 134, size: 192, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1737, file: !1726, line: 135, baseType: !589, size: 128, align: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1737, file: !1726, line: 136, baseType: !7, size: 32, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1420, file: !1421, line: 923, baseType: !1742, size: 64, offset: 8512)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1744)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1745, line: 111, size: 1280, elements: !1746)
!1745 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !{!1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1766, !1767, !1768, !1769, !1770, !1771, !1878, !1879, !1880, !1881, !1907, !1910, !1920}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1744, file: !1745, line: 112, baseType: !470, size: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1744, file: !1745, line: 120, baseType: !450, size: 32, offset: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1744, file: !1745, line: 121, baseType: !458, size: 32, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1744, file: !1745, line: 122, baseType: !450, size: 32, offset: 96)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1744, file: !1745, line: 123, baseType: !458, size: 32, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1744, file: !1745, line: 124, baseType: !450, size: 32, offset: 160)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1744, file: !1745, line: 125, baseType: !458, size: 32, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1744, file: !1745, line: 126, baseType: !450, size: 32, offset: 224)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1744, file: !1745, line: 127, baseType: !458, size: 32, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1744, file: !1745, line: 128, baseType: !7, size: 32, offset: 288)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1744, file: !1745, line: 129, baseType: !1758, size: 64, offset: 320)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1759, line: 26, baseType: !1760)
!1759 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1759, line: 24, size: 64, elements: !1761)
!1761 = !{!1762}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1760, file: !1759, line: 25, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 64, elements: !1764)
!1764 = !{!1765}
!1765 = !DISubrange(count: 2)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1744, file: !1745, line: 130, baseType: !1758, size: 64, offset: 384)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1744, file: !1745, line: 131, baseType: !1758, size: 64, offset: 448)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1744, file: !1745, line: 132, baseType: !1758, size: 64, offset: 512)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1744, file: !1745, line: 133, baseType: !1758, size: 64, offset: 576)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1744, file: !1745, line: 135, baseType: !131, size: 8, offset: 640)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1744, file: !1745, line: 137, baseType: !1772, size: 64, offset: 704)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1774, line: 189, size: 1664, elements: !1775)
!1774 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1775 = !{!1776, !1777, !1780, !1785, !1786, !1789, !1790, !1795, !1796, !1797, !1798, !1800, !1801, !1802, !1803, !1804, !1842, !1863}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1773, file: !1774, line: 190, baseType: !1433, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1773, file: !1774, line: 191, baseType: !1778, size: 32, offset: 32)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1774, line: 28, baseType: !1779)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !138, line: 98, baseType: !1645)
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !1774, line: 192, baseType: !1781, size: 192, offset: 64)
!1781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !1774, line: 192, size: 192, elements: !1782)
!1782 = !{!1783, !1784}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1781, file: !1774, line: 193, baseType: !137, size: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1781, file: !1774, line: 194, baseType: !478, size: 192, align: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1773, file: !1774, line: 199, baseType: !949, size: 256, offset: 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1773, file: !1774, line: 200, baseType: !1787, size: 64, offset: 512)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1774, line: 200, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1773, file: !1774, line: 201, baseType: !124, size: 64, offset: 576)
!1790 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !1774, line: 202, baseType: !1791, size: 64, offset: 640)
!1791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !1774, line: 202, size: 64, elements: !1792)
!1792 = !{!1793, !1794}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1791, file: !1774, line: 203, baseType: !742, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1791, file: !1774, line: 204, baseType: !742, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1773, file: !1774, line: 206, baseType: !742, size: 64, offset: 704)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1773, file: !1774, line: 207, baseType: !450, size: 32, offset: 768)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1773, file: !1774, line: 208, baseType: !458, size: 32, offset: 800)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1773, file: !1774, line: 209, baseType: !1799, size: 32, offset: 832)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1774, line: 31, baseType: !762)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1773, file: !1774, line: 210, baseType: !206, size: 16, offset: 864)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1773, file: !1774, line: 211, baseType: !206, size: 16, offset: 880)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1773, file: !1774, line: 215, baseType: !1408, size: 16, offset: 896)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1773, file: !1774, line: 222, baseType: !125, size: 64, offset: 960)
!1804 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !1774, line: 239, baseType: !1805, size: 320, offset: 1024)
!1805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !1774, line: 239, size: 320, elements: !1806)
!1806 = !{!1807, !1834}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1805, file: !1774, line: 240, baseType: !1808, size: 320)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1774, line: 108, size: 320, elements: !1809)
!1809 = !{!1810, !1811, !1823, !1826, !1833}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1808, file: !1774, line: 110, baseType: !125, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !1774, line: 111, baseType: !1812, size: 64, offset: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !1774, line: 111, size: 64, elements: !1813)
!1813 = !{!1814, !1822}
!1814 = !DIDerivedType(tag: DW_TAG_member, scope: !1812, file: !1774, line: 112, baseType: !1815, size: 64)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1812, file: !1774, line: 112, size: 64, elements: !1816)
!1816 = !{!1817, !1818}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1815, file: !1774, line: 114, baseType: !220, size: 16)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1815, file: !1774, line: 115, baseType: !1819, size: 48, offset: 16)
!1819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 48, elements: !1820)
!1820 = !{!1821}
!1821 = !DISubrange(count: 6)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1812, file: !1774, line: 121, baseType: !125, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1808, file: !1774, line: 123, baseType: !1824, size: 64, offset: 128)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1774, line: 96, flags: DIFlagFwdDecl)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1808, file: !1774, line: 124, baseType: !1827, size: 64, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1774, line: 102, size: 192, elements: !1829)
!1829 = !{!1830, !1831, !1832}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1828, file: !1774, line: 103, baseType: !589, size: 128, align: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1828, file: !1774, line: 104, baseType: !1433, size: 32, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1828, file: !1774, line: 105, baseType: !419, size: 8, offset: 160)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1808, file: !1774, line: 125, baseType: !230, size: 64, offset: 256)
!1834 = !DIDerivedType(tag: DW_TAG_member, scope: !1805, file: !1774, line: 241, baseType: !1835, size: 320)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1805, file: !1774, line: 241, size: 320, elements: !1836)
!1836 = !{!1837, !1838, !1839, !1840, !1841}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1835, file: !1774, line: 242, baseType: !125, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1835, file: !1774, line: 243, baseType: !125, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1835, file: !1774, line: 244, baseType: !1824, size: 64, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1835, file: !1774, line: 245, baseType: !1827, size: 64, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1835, file: !1774, line: 246, baseType: !357, size: 64, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !1774, line: 254, baseType: !1843, size: 256, offset: 1344)
!1843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !1774, line: 254, size: 256, elements: !1844)
!1844 = !{!1845, !1851}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1843, file: !1774, line: 255, baseType: !1846, size: 256)
!1846 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1774, line: 128, size: 256, elements: !1847)
!1847 = !{!1848, !1849}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1846, file: !1774, line: 129, baseType: !124, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1846, file: !1774, line: 130, baseType: !1850, size: 256)
!1850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 256, elements: !1358)
!1851 = !DIDerivedType(tag: DW_TAG_member, scope: !1843, file: !1774, line: 256, baseType: !1852, size: 256)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1843, file: !1774, line: 256, size: 256, elements: !1853)
!1853 = !{!1854, !1855}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1852, file: !1774, line: 258, baseType: !137, size: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1852, file: !1774, line: 259, baseType: !1856, size: 128, offset: 128)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1857, line: 22, size: 128, elements: !1858)
!1857 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1858 = !{!1859, !1862}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1856, file: !1857, line: 23, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1857, line: 23, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1856, file: !1857, line: 24, baseType: !125, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1773, file: !1774, line: 274, baseType: !1864, size: 64, offset: 1600)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1774, line: 170, size: 192, elements: !1866)
!1866 = !{!1867, !1876, !1877}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1865, file: !1774, line: 171, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1774, line: 165, baseType: !1869)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!155, !1772, !1872, !1874, !1772}
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1825)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1846)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1865, file: !1774, line: 172, baseType: !1772, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1865, file: !1774, line: 173, baseType: !1824, size: 64, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1744, file: !1745, line: 138, baseType: !1772, size: 64, offset: 768)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1744, file: !1745, line: 139, baseType: !1772, size: 64, offset: 832)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1744, file: !1745, line: 140, baseType: !1772, size: 64, offset: 896)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1744, file: !1745, line: 145, baseType: !1882, size: 64, offset: 960)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1884, line: 13, size: 896, elements: !1885)
!1884 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1885 = !{!1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1883, file: !1884, line: 14, baseType: !1433, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1883, file: !1884, line: 15, baseType: !470, size: 32, offset: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1883, file: !1884, line: 16, baseType: !470, size: 32, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1883, file: !1884, line: 21, baseType: !953, size: 64, offset: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1883, file: !1884, line: 27, baseType: !125, size: 64, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1883, file: !1884, line: 28, baseType: !125, size: 64, offset: 256)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1883, file: !1884, line: 29, baseType: !953, size: 64, offset: 320)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1883, file: !1884, line: 32, baseType: !844, size: 128, offset: 384)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1883, file: !1884, line: 33, baseType: !450, size: 32, offset: 512)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1883, file: !1884, line: 37, baseType: !953, size: 64, offset: 576)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1883, file: !1884, line: 44, baseType: !1897, size: 256, offset: 640)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1898, line: 15, size: 256, elements: !1899)
!1898 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1899 = !{!1900, !1901, !1902, !1903, !1904, !1905, !1906}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1897, file: !1898, line: 16, baseType: !962)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1897, file: !1898, line: 18, baseType: !155, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1897, file: !1898, line: 19, baseType: !155, size: 32, offset: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1897, file: !1898, line: 20, baseType: !155, size: 32, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1897, file: !1898, line: 21, baseType: !155, size: 32, offset: 96)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1897, file: !1898, line: 22, baseType: !125, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1897, file: !1898, line: 23, baseType: !125, size: 64, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1744, file: !1745, line: 146, baseType: !1908, size: 64, offset: 1024)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !451, line: 18, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1744, file: !1745, line: 147, baseType: !1911, size: 64, offset: 1088)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1745, line: 25, size: 64, elements: !1913)
!1913 = !{!1914, !1915, !1916}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1912, file: !1745, line: 26, baseType: !470, size: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1912, file: !1745, line: 27, baseType: !155, size: 32, offset: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1912, file: !1745, line: 28, baseType: !1917, offset: 64)
!1917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, elements: !1918)
!1918 = !{!1919}
!1919 = !DISubrange(count: 0)
!1920 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !1745, line: 149, baseType: !1921, size: 128, offset: 1152)
!1921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1744, file: !1745, line: 149, size: 128, elements: !1922)
!1922 = !{!1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1921, file: !1745, line: 150, baseType: !155, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1921, file: !1745, line: 151, baseType: !589, size: 128, align: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1420, file: !1421, line: 926, baseType: !1742, size: 64, offset: 8576)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1420, file: !1421, line: 929, baseType: !1742, size: 64, offset: 8640)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1420, file: !1421, line: 933, baseType: !1772, size: 64, offset: 8704)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1420, file: !1421, line: 943, baseType: !1929, size: 128, offset: 8768)
!1929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 128, elements: !1930)
!1930 = !{!1931}
!1931 = !DISubrange(count: 16)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1420, file: !1421, line: 945, baseType: !1933, size: 64, offset: 8896)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1421, line: 49, flags: DIFlagFwdDecl)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1420, file: !1421, line: 956, baseType: !1936, size: 64, offset: 8960)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1421, line: 45, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1420, file: !1421, line: 959, baseType: !1939, size: 64, offset: 9024)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1421, line: 959, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1420, file: !1421, line: 962, baseType: !1942, size: 64, offset: 9088)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1421, line: 66, flags: DIFlagFwdDecl)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1420, file: !1421, line: 966, baseType: !1945, size: 64, offset: 9152)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1947, line: 35, flags: DIFlagFwdDecl)
!1947 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1420, file: !1421, line: 969, baseType: !1949, size: 64, offset: 9216)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1951, line: 82, size: 7296, elements: !1952)
!1951 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1952 = !{!1953, !1954, !1955, !1956, !1957, !1958, !1959, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1988, !1997, !1998, !2000, !2001, !2002, !2005, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2035, !2036, !2043, !2044, !2045, !2046, !2047, !2048}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1950, file: !1951, line: 83, baseType: !1433, size: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1950, file: !1951, line: 84, baseType: !470, size: 32, offset: 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1950, file: !1951, line: 85, baseType: !155, size: 32, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1950, file: !1951, line: 86, baseType: !137, size: 128, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1950, file: !1951, line: 88, baseType: !549, size: 128, offset: 256)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1950, file: !1951, line: 91, baseType: !1419, size: 64, offset: 384)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1950, file: !1951, line: 94, baseType: !1960, size: 192, offset: 448)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1961, line: 30, size: 192, elements: !1962)
!1961 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1962 = !{!1963, !1964}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1960, file: !1961, line: 31, baseType: !137, size: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1960, file: !1961, line: 32, baseType: !1965, size: 64, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1966, line: 25, baseType: !1967)
!1966 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1966, line: 23, size: 64, elements: !1968)
!1968 = !{!1969}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1967, file: !1966, line: 24, baseType: !1571, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1950, file: !1951, line: 97, baseType: !840, size: 64, offset: 640)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1950, file: !1951, line: 100, baseType: !155, size: 32, offset: 704)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1950, file: !1951, line: 106, baseType: !155, size: 32, offset: 736)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1950, file: !1951, line: 107, baseType: !1419, size: 64, offset: 768)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1950, file: !1951, line: 110, baseType: !155, size: 32, offset: 832)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1950, file: !1951, line: 111, baseType: !7, size: 32, offset: 864)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1950, file: !1951, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1950, file: !1951, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1950, file: !1951, line: 128, baseType: !155, size: 32, offset: 928)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1950, file: !1951, line: 129, baseType: !137, size: 128, offset: 960)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1950, file: !1951, line: 132, baseType: !1495, size: 512, offset: 1088)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1950, file: !1951, line: 133, baseType: !1503, size: 64, offset: 1600)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1950, file: !1951, line: 140, baseType: !1983, size: 256, offset: 1664)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1984, size: 256, elements: !1764)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1951, line: 38, size: 128, elements: !1985)
!1985 = !{!1986, !1987}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1984, file: !1951, line: 39, baseType: !643, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1984, file: !1951, line: 40, baseType: !643, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1950, file: !1951, line: 146, baseType: !1989, size: 192, offset: 1920)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1951, line: 66, size: 192, elements: !1990)
!1990 = !{!1991}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1989, file: !1951, line: 67, baseType: !1992, size: 192)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1951, line: 47, size: 192, elements: !1993)
!1993 = !{!1994, !1995, !1996}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1992, file: !1951, line: 48, baseType: !955, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1992, file: !1951, line: 49, baseType: !955, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1992, file: !1951, line: 50, baseType: !955, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1950, file: !1951, line: 150, baseType: !1725, size: 640, offset: 2112)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1950, file: !1951, line: 153, baseType: !1999, size: 256, offset: 2752)
!1999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1672, size: 256, elements: !1358)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1950, file: !1951, line: 159, baseType: !1672, size: 64, offset: 3008)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1950, file: !1951, line: 162, baseType: !155, size: 32, offset: 3072)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1950, file: !1951, line: 164, baseType: !2003, size: 64, offset: 3136)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1951, line: 164, flags: DIFlagFwdDecl)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1950, file: !1951, line: 175, baseType: !2006, size: 32, offset: 3200)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !614, line: 805, baseType: !2007)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !614, line: 798, size: 32, elements: !2008)
!2008 = !{!2009, !2010}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2007, file: !614, line: 803, baseType: !613, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2007, file: !614, line: 804, baseType: !316, offset: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1950, file: !1951, line: 176, baseType: !643, size: 64, offset: 3264)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1950, file: !1951, line: 176, baseType: !643, size: 64, offset: 3328)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1950, file: !1951, line: 176, baseType: !643, size: 64, offset: 3392)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1950, file: !1951, line: 176, baseType: !643, size: 64, offset: 3456)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1950, file: !1951, line: 177, baseType: !643, size: 64, offset: 3520)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1950, file: !1951, line: 178, baseType: !643, size: 64, offset: 3584)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1950, file: !1951, line: 179, baseType: !1713, size: 128, offset: 3648)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1950, file: !1951, line: 180, baseType: !125, size: 64, offset: 3776)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1950, file: !1951, line: 180, baseType: !125, size: 64, offset: 3840)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1950, file: !1951, line: 180, baseType: !125, size: 64, offset: 3904)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1950, file: !1951, line: 180, baseType: !125, size: 64, offset: 3968)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1950, file: !1951, line: 181, baseType: !125, size: 64, offset: 4032)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1950, file: !1951, line: 181, baseType: !125, size: 64, offset: 4096)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1950, file: !1951, line: 181, baseType: !125, size: 64, offset: 4160)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1950, file: !1951, line: 181, baseType: !125, size: 64, offset: 4224)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1950, file: !1951, line: 182, baseType: !125, size: 64, offset: 4288)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1950, file: !1951, line: 182, baseType: !125, size: 64, offset: 4352)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1950, file: !1951, line: 182, baseType: !125, size: 64, offset: 4416)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1950, file: !1951, line: 182, baseType: !125, size: 64, offset: 4480)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1950, file: !1951, line: 183, baseType: !125, size: 64, offset: 4544)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1950, file: !1951, line: 183, baseType: !125, size: 64, offset: 4608)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1950, file: !1951, line: 184, baseType: !2033, offset: 4672)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2034, line: 12, elements: !330)
!2034 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1950, file: !1951, line: 192, baseType: !645, size: 64, offset: 4672)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1950, file: !1951, line: 203, baseType: !2037, size: 2048, offset: 4736)
!2037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2038, size: 2048, elements: !1930)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2039, line: 43, size: 128, elements: !2040)
!2039 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2040 = !{!2041, !2042}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2038, file: !2039, line: 44, baseType: !402, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2038, file: !2039, line: 45, baseType: !402, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1950, file: !1951, line: 220, baseType: !419, size: 8, offset: 6784)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1950, file: !1951, line: 221, baseType: !1408, size: 16, offset: 6800)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1950, file: !1951, line: 222, baseType: !1408, size: 16, offset: 6816)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1950, file: !1951, line: 224, baseType: !1177, size: 64, offset: 6848)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1950, file: !1951, line: 227, baseType: !1376, size: 192, offset: 6912)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1950, file: !1951, line: 233, baseType: !1376, size: 192, offset: 7104)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1420, file: !1421, line: 970, baseType: !2050, size: 64, offset: 9280)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1951, line: 20, size: 16576, elements: !2052)
!2052 = !{!2053, !2054, !2055, !2056}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2051, file: !1951, line: 21, baseType: !316)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2051, file: !1951, line: 22, baseType: !1433, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2051, file: !1951, line: 23, baseType: !549, size: 128, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2051, file: !1951, line: 24, baseType: !2057, size: 16384, offset: 192)
!2057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2058, size: 16384, elements: !362)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1961, line: 49, size: 256, elements: !2059)
!2059 = !{!2060}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2058, file: !1961, line: 50, baseType: !2061, size: 256)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1961, line: 35, size: 256, elements: !2062)
!2062 = !{!2063, !2070, !2071, !2077}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2061, file: !1961, line: 37, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2065, line: 19, baseType: !2066)
!2065 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2065, line: 18, baseType: !2068)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{null, !155}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2061, file: !1961, line: 38, baseType: !125, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2061, file: !1961, line: 44, baseType: !2072, size: 64, offset: 128)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2065, line: 22, baseType: !2073)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2065, line: 21, baseType: !2075)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{null}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2061, file: !1961, line: 46, baseType: !1965, size: 64, offset: 192)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1420, file: !1421, line: 971, baseType: !1965, size: 64, offset: 9344)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1420, file: !1421, line: 972, baseType: !1965, size: 64, offset: 9408)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1420, file: !1421, line: 974, baseType: !1965, size: 64, offset: 9472)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1420, file: !1421, line: 975, baseType: !1960, size: 192, offset: 9536)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1420, file: !1421, line: 976, baseType: !125, size: 64, offset: 9728)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1420, file: !1421, line: 977, baseType: !400, size: 64, offset: 9792)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1420, file: !1421, line: 978, baseType: !7, size: 32, offset: 9856)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1420, file: !1421, line: 980, baseType: !592, size: 64, offset: 9920)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1420, file: !1421, line: 989, baseType: !2087, size: 128, offset: 9984)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2088, line: 35, size: 128, elements: !2089)
!2088 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2089 = !{!2090, !2091, !2092}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2087, file: !2088, line: 36, baseType: !155, size: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2087, file: !2088, line: 37, baseType: !470, size: 32, offset: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2087, file: !2088, line: 38, baseType: !2093, size: 64, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2088, line: 23, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1420, file: !1421, line: 992, baseType: !643, size: 64, offset: 10112)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1420, file: !1421, line: 993, baseType: !643, size: 64, offset: 10176)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1420, file: !1421, line: 996, baseType: !316, offset: 10240)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1420, file: !1421, line: 999, baseType: !962, offset: 10240)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1420, file: !1421, line: 1001, baseType: !2100, size: 64, offset: 10240)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1421, line: 636, size: 64, elements: !2101)
!2101 = !{!2102}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2100, file: !1421, line: 637, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1420, file: !1421, line: 1005, baseType: !944, size: 128, offset: 10304)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1420, file: !1421, line: 1007, baseType: !1419, size: 64, offset: 10432)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1420, file: !1421, line: 1009, baseType: !2107, size: 64, offset: 10496)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1421, line: 1009, flags: DIFlagFwdDecl)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1420, file: !1421, line: 1043, baseType: !124, size: 64, offset: 10560)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1420, file: !1421, line: 1046, baseType: !2111, size: 64, offset: 10624)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1421, line: 41, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1420, file: !1421, line: 1050, baseType: !2114, size: 64, offset: 10688)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1421, line: 42, flags: DIFlagFwdDecl)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1420, file: !1421, line: 1054, baseType: !2117, size: 64, offset: 10752)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1421, line: 55, flags: DIFlagFwdDecl)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1420, file: !1421, line: 1056, baseType: !2120, size: 64, offset: 10816)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1421, line: 40, flags: DIFlagFwdDecl)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1420, file: !1421, line: 1058, baseType: !2123, size: 64, offset: 10880)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2125, line: 99, size: 704, elements: !2126)
!2125 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2126 = !{!2127, !2128, !2129, !2130, !2131, !2132, !2133, !2152, !2153}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2124, file: !2125, line: 100, baseType: !953, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2124, file: !2125, line: 101, baseType: !470, size: 32, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2124, file: !2125, line: 102, baseType: !470, size: 32, offset: 96)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2124, file: !2125, line: 105, baseType: !316, offset: 128)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2124, file: !2125, line: 107, baseType: !206, size: 16, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2124, file: !2125, line: 109, baseType: !509, size: 128, offset: 192)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2124, file: !2125, line: 110, baseType: !2134, size: 64, offset: 320)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2125, line: 73, size: 448, elements: !2136)
!2136 = !{!2137, !2140, !2141, !2146, !2151}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2135, file: !2125, line: 74, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2125, line: 74, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2135, file: !2125, line: 75, baseType: !2123, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, scope: !2135, file: !2125, line: 83, baseType: !2142, size: 128, offset: 128)
!2142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2135, file: !2125, line: 83, size: 128, elements: !2143)
!2143 = !{!2144, !2145}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2142, file: !2125, line: 84, baseType: !137, size: 128)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2142, file: !2125, line: 85, baseType: !1138, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, scope: !2135, file: !2125, line: 87, baseType: !2147, size: 128, offset: 256)
!2147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2135, file: !2125, line: 87, size: 128, elements: !2148)
!2148 = !{!2149, !2150}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2147, file: !2125, line: 88, baseType: !844, size: 128)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2147, file: !2125, line: 89, baseType: !589, size: 128, align: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2135, file: !2125, line: 92, baseType: !7, size: 32, offset: 384)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2124, file: !2125, line: 111, baseType: !840, size: 64, offset: 384)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2124, file: !2125, line: 113, baseType: !2154, size: 256, offset: 448)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2155, line: 102, size: 256, elements: !2156)
!2155 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2156 = !{!2157, !2158, !2159}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2154, file: !2155, line: 103, baseType: !953, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2154, file: !2155, line: 104, baseType: !137, size: 128, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2154, file: !2155, line: 105, baseType: !2160, size: 64, offset: 192)
!2160 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2155, line: 21, baseType: !2161)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{null, !2164}
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1420, file: !1421, line: 1061, baseType: !2166, size: 64, offset: 10944)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1421, line: 43, flags: DIFlagFwdDecl)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1420, file: !1421, line: 1064, baseType: !125, size: 64, offset: 11008)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1420, file: !1421, line: 1065, baseType: !2170, size: 64, offset: 11072)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1961, line: 14, baseType: !2172)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1961, line: 12, size: 384, elements: !2173)
!2173 = !{!2174}
!2174 = !DIDerivedType(tag: DW_TAG_member, scope: !2172, file: !1961, line: 13, baseType: !2175, size: 384)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2172, file: !1961, line: 13, size: 384, elements: !2176)
!2176 = !{!2177, !2178, !2179, !2180}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2175, file: !1961, line: 13, baseType: !155, size: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2175, file: !1961, line: 13, baseType: !155, size: 32, offset: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2175, file: !1961, line: 13, baseType: !155, size: 32, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2175, file: !1961, line: 13, baseType: !2181, size: 256, offset: 128)
!2181 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2182, line: 32, size: 256, elements: !2183)
!2182 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2183 = !{!2184, !2189, !2202, !2208, !2217, !2237, !2242}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2181, file: !2182, line: 37, baseType: !2185, size: 64)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2181, file: !2182, line: 34, size: 64, elements: !2186)
!2186 = !{!2187, !2188}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2185, file: !2182, line: 35, baseType: !1661, size: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2185, file: !2182, line: 36, baseType: !456, size: 32, offset: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2181, file: !2182, line: 45, baseType: !2190, size: 192)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2181, file: !2182, line: 40, size: 192, elements: !2191)
!2191 = !{!2192, !2194, !2195, !2201}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2190, file: !2182, line: 41, baseType: !2193, size: 32)
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !389, line: 95, baseType: !155)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2190, file: !2182, line: 42, baseType: !155, size: 32, offset: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2190, file: !2182, line: 43, baseType: !2196, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2182, line: 11, baseType: !2197)
!2197 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2182, line: 8, size: 64, elements: !2198)
!2198 = !{!2199, !2200}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2197, file: !2182, line: 9, baseType: !155, size: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2197, file: !2182, line: 10, baseType: !124, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2190, file: !2182, line: 44, baseType: !155, size: 32, offset: 128)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2181, file: !2182, line: 52, baseType: !2203, size: 128)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2181, file: !2182, line: 48, size: 128, elements: !2204)
!2204 = !{!2205, !2206, !2207}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2203, file: !2182, line: 49, baseType: !1661, size: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2203, file: !2182, line: 50, baseType: !456, size: 32, offset: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2203, file: !2182, line: 51, baseType: !2196, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2181, file: !2182, line: 61, baseType: !2209, size: 256)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2181, file: !2182, line: 55, size: 256, elements: !2210)
!2210 = !{!2211, !2212, !2213, !2214, !2216}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2209, file: !2182, line: 56, baseType: !1661, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2209, file: !2182, line: 57, baseType: !456, size: 32, offset: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2209, file: !2182, line: 58, baseType: !155, size: 32, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2209, file: !2182, line: 59, baseType: !2215, size: 64, offset: 128)
!2215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !389, line: 94, baseType: !390)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2209, file: !2182, line: 60, baseType: !2215, size: 64, offset: 192)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2181, file: !2182, line: 95, baseType: !2218, size: 256)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2181, file: !2182, line: 64, size: 256, elements: !2219)
!2219 = !{!2220, !2221}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2218, file: !2182, line: 65, baseType: !124, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, scope: !2218, file: !2182, line: 77, baseType: !2222, size: 192, offset: 64)
!2222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2218, file: !2182, line: 77, size: 192, elements: !2223)
!2223 = !{!2224, !2225, !2232}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2222, file: !2182, line: 82, baseType: !1408, size: 16)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2222, file: !2182, line: 88, baseType: !2226, size: 192)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2222, file: !2182, line: 84, size: 192, elements: !2227)
!2227 = !{!2228, !2230, !2231}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2226, file: !2182, line: 85, baseType: !2229, size: 64)
!2229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 64, elements: !1533)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2226, file: !2182, line: 86, baseType: !124, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2226, file: !2182, line: 87, baseType: !124, size: 64, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2222, file: !2182, line: 93, baseType: !2233, size: 96)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2222, file: !2182, line: 90, size: 96, elements: !2234)
!2234 = !{!2235, !2236}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2233, file: !2182, line: 91, baseType: !2229, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2233, file: !2182, line: 92, baseType: !133, size: 32, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2181, file: !2182, line: 101, baseType: !2238, size: 128)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2181, file: !2182, line: 98, size: 128, elements: !2239)
!2239 = !{!2240, !2241}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2238, file: !2182, line: 99, baseType: !126, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2238, file: !2182, line: 100, baseType: !155, size: 32, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2181, file: !2182, line: 108, baseType: !2243, size: 128)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2181, file: !2182, line: 104, size: 128, elements: !2244)
!2244 = !{!2245, !2246, !2247}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2243, file: !2182, line: 105, baseType: !124, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2243, file: !2182, line: 106, baseType: !155, size: 32, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2243, file: !2182, line: 107, baseType: !7, size: 32, offset: 96)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1420, file: !1421, line: 1067, baseType: !2033, offset: 11136)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1420, file: !1421, line: 1099, baseType: !2250, size: 64, offset: 11136)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1421, line: 56, flags: DIFlagFwdDecl)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1420, file: !1421, line: 1103, baseType: !137, size: 128, offset: 11200)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1420, file: !1421, line: 1104, baseType: !2254, size: 64, offset: 11328)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1421, line: 46, flags: DIFlagFwdDecl)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1420, file: !1421, line: 1105, baseType: !1376, size: 192, offset: 11392)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1420, file: !1421, line: 1106, baseType: !7, size: 32, offset: 11584)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1420, file: !1421, line: 1109, baseType: !2259, size: 128, offset: 11648)
!2259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2260, size: 128, elements: !1764)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1421, line: 51, flags: DIFlagFwdDecl)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1420, file: !1421, line: 1110, baseType: !1376, size: 192, offset: 11776)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1420, file: !1421, line: 1111, baseType: !137, size: 128, offset: 11968)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1420, file: !1421, line: 1173, baseType: !2265, size: 64, offset: 12096)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2267, line: 62, size: 256, align: 256, elements: !2268)
!2267 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2268 = !{!2269, !2270, !2271, !2276}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2266, file: !2267, line: 75, baseType: !133, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2266, file: !2267, line: 90, baseType: !133, size: 32, offset: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2266, file: !2267, line: 124, baseType: !2272, size: 64, offset: 64)
!2272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2266, file: !2267, line: 109, size: 64, elements: !2273)
!2273 = !{!2274, !2275}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2272, file: !2267, line: 110, baseType: !644, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2272, file: !2267, line: 112, baseType: !644, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2266, file: !2267, line: 144, baseType: !133, size: 32, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1420, file: !1421, line: 1174, baseType: !132, size: 32, offset: 12160)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1420, file: !1421, line: 1179, baseType: !125, size: 64, offset: 12224)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1420, file: !1421, line: 1182, baseType: !2280, size: 128, offset: 12288)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1354, line: 76, size: 128, elements: !2281)
!2281 = !{!2282, !2287, !2288}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2280, file: !1354, line: 85, baseType: !2283, size: 64)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2284, line: 7, size: 64, elements: !2285)
!2284 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2285 = !{!2286}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2283, file: !2284, line: 12, baseType: !1568, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2280, file: !1354, line: 88, baseType: !419, size: 8, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2280, file: !1354, line: 95, baseType: !419, size: 8, offset: 72)
!2289 = !DIDerivedType(tag: DW_TAG_member, scope: !1420, file: !1421, line: 1184, baseType: !2290, size: 128, offset: 12416)
!2290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1420, file: !1421, line: 1184, size: 128, elements: !2291)
!2291 = !{!2292, !2293}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2290, file: !1421, line: 1185, baseType: !1433, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2290, file: !1421, line: 1186, baseType: !589, size: 128, align: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1420, file: !1421, line: 1190, baseType: !2295, size: 64, offset: 12544)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1421, line: 53, flags: DIFlagFwdDecl)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1420, file: !1421, line: 1192, baseType: !2298, size: 128, offset: 12608)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1354, line: 64, size: 128, elements: !2299)
!2299 = !{!2300, !2301, !2302}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2298, file: !1354, line: 65, baseType: !923, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2298, file: !1354, line: 67, baseType: !133, size: 32, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2298, file: !1354, line: 68, baseType: !133, size: 32, offset: 96)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1420, file: !1421, line: 1206, baseType: !155, size: 32, offset: 12736)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1420, file: !1421, line: 1207, baseType: !155, size: 32, offset: 12768)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1420, file: !1421, line: 1209, baseType: !125, size: 64, offset: 12800)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1420, file: !1421, line: 1219, baseType: !643, size: 64, offset: 12864)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1420, file: !1421, line: 1220, baseType: !643, size: 64, offset: 12928)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1420, file: !1421, line: 1317, baseType: !155, size: 32, offset: 12992)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1420, file: !1421, line: 1319, baseType: !1419, size: 64, offset: 13056)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1420, file: !1421, line: 1322, baseType: !2311, size: 64, offset: 13120)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2313, line: 56, size: 512, elements: !2314)
!2313 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2314 = !{!2315, !2316, !2317, !2318, !2319, !2320, !2321, !2323}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2312, file: !2313, line: 57, baseType: !2311, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2312, file: !2313, line: 58, baseType: !124, size: 64, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2312, file: !2313, line: 59, baseType: !125, size: 64, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2312, file: !2313, line: 60, baseType: !125, size: 64, offset: 192)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2312, file: !2313, line: 61, baseType: !1009, size: 64, offset: 256)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2312, file: !2313, line: 62, baseType: !7, size: 32, offset: 320)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2312, file: !2313, line: 63, baseType: !2322, size: 64, offset: 384)
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !138, line: 153, baseType: !643)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2312, file: !2313, line: 64, baseType: !429, size: 64, offset: 448)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1420, file: !1421, line: 1326, baseType: !1433, size: 32, offset: 13184)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1420, file: !1421, line: 1342, baseType: !124, size: 64, offset: 13248)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1420, file: !1421, line: 1343, baseType: !644, size: 64, offset: 13312)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1420, file: !1421, line: 1344, baseType: !643, size: 64, offset: 13376)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1420, file: !1421, line: 1345, baseType: !644, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1420, file: !1421, line: 1346, baseType: !644, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1420, file: !1421, line: 1347, baseType: !644, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1420, file: !1421, line: 1348, baseType: !589, size: 128, align: 64, offset: 13504)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1420, file: !1421, line: 1358, baseType: !2333, size: 34816, offset: 13824)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2334, line: 485, size: 34816, elements: !2335)
!2334 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2335 = !{!2336, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2365, !2366, !2367, !2368, !2369, !2370, !2373, !2374, !2375}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2333, file: !2334, line: 487, baseType: !2337, size: 192)
!2337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2338, size: 192, elements: !358)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2339, line: 16, size: 64, elements: !2340)
!2339 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2340 = !{!2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2338, file: !2339, line: 17, baseType: !220, size: 16)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2338, file: !2339, line: 18, baseType: !220, size: 16, offset: 16)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2338, file: !2339, line: 19, baseType: !220, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2338, file: !2339, line: 19, baseType: !220, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2338, file: !2339, line: 19, baseType: !220, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2338, file: !2339, line: 19, baseType: !220, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2338, file: !2339, line: 19, baseType: !220, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2338, file: !2339, line: 20, baseType: !220, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2338, file: !2339, line: 20, baseType: !220, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2338, file: !2339, line: 20, baseType: !220, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2338, file: !2339, line: 20, baseType: !220, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2338, file: !2339, line: 20, baseType: !220, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2338, file: !2339, line: 20, baseType: !220, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2333, file: !2334, line: 491, baseType: !125, size: 64, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2333, file: !2334, line: 495, baseType: !206, size: 16, offset: 256)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2333, file: !2334, line: 496, baseType: !206, size: 16, offset: 272)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2333, file: !2334, line: 497, baseType: !206, size: 16, offset: 288)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2333, file: !2334, line: 498, baseType: !206, size: 16, offset: 304)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2333, file: !2334, line: 502, baseType: !125, size: 64, offset: 320)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2333, file: !2334, line: 503, baseType: !125, size: 64, offset: 384)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2333, file: !2334, line: 514, baseType: !2362, size: 256, offset: 448)
!2362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2363, size: 256, elements: !1358)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2334, line: 483, flags: DIFlagFwdDecl)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2333, file: !2334, line: 516, baseType: !125, size: 64, offset: 704)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2333, file: !2334, line: 518, baseType: !125, size: 64, offset: 768)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2333, file: !2334, line: 520, baseType: !125, size: 64, offset: 832)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2333, file: !2334, line: 521, baseType: !125, size: 64, offset: 896)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2333, file: !2334, line: 522, baseType: !125, size: 64, offset: 960)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2333, file: !2334, line: 528, baseType: !2371, size: 64, offset: 1024)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2334, line: 10, flags: DIFlagFwdDecl)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2333, file: !2334, line: 535, baseType: !125, size: 64, offset: 1088)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2333, file: !2334, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2333, file: !2334, line: 540, baseType: !2376, size: 33280, offset: 1536)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2377, line: 317, size: 33280, elements: !2378)
!2377 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2378 = !{!2379, !2380, !2381}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2376, file: !2377, line: 330, baseType: !7, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2376, file: !2377, line: 337, baseType: !125, size: 64, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2376, file: !2377, line: 348, baseType: !2382, size: 32768, offset: 512)
!2382 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2377, line: 304, size: 32768, elements: !2383)
!2383 = !{!2384, !2399, !2438, !2488, !2501}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2382, file: !2377, line: 305, baseType: !2385, size: 896)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2377, line: 12, size: 896, elements: !2386)
!2386 = !{!2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2398}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2385, file: !2377, line: 13, baseType: !132, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2385, file: !2377, line: 14, baseType: !132, size: 32, offset: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2385, file: !2377, line: 15, baseType: !132, size: 32, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2385, file: !2377, line: 16, baseType: !132, size: 32, offset: 96)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2385, file: !2377, line: 17, baseType: !132, size: 32, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2385, file: !2377, line: 18, baseType: !132, size: 32, offset: 160)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2385, file: !2377, line: 19, baseType: !132, size: 32, offset: 192)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2385, file: !2377, line: 22, baseType: !2395, size: 640, offset: 224)
!2395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 640, elements: !2396)
!2396 = !{!2397}
!2397 = !DISubrange(count: 20)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2385, file: !2377, line: 25, baseType: !132, size: 32, offset: 864)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2382, file: !2377, line: 306, baseType: !2400, size: 4096, align: 128)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2377, line: 34, size: 4096, align: 128, elements: !2401)
!2401 = !{!2402, !2403, !2404, !2405, !2406, !2421, !2422, !2423, !2427, !2429, !2433}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2400, file: !2377, line: 35, baseType: !220, size: 16)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2400, file: !2377, line: 36, baseType: !220, size: 16, offset: 16)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2400, file: !2377, line: 37, baseType: !220, size: 16, offset: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2400, file: !2377, line: 38, baseType: !220, size: 16, offset: 48)
!2406 = !DIDerivedType(tag: DW_TAG_member, scope: !2400, file: !2377, line: 39, baseType: !2407, size: 128, offset: 64)
!2407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2400, file: !2377, line: 39, size: 128, elements: !2408)
!2408 = !{!2409, !2414}
!2409 = !DIDerivedType(tag: DW_TAG_member, scope: !2407, file: !2377, line: 40, baseType: !2410, size: 128)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2407, file: !2377, line: 40, size: 128, elements: !2411)
!2411 = !{!2412, !2413}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2410, file: !2377, line: 41, baseType: !643, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2410, file: !2377, line: 42, baseType: !643, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, scope: !2407, file: !2377, line: 44, baseType: !2415, size: 128)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2407, file: !2377, line: 44, size: 128, elements: !2416)
!2416 = !{!2417, !2418, !2419, !2420}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2415, file: !2377, line: 45, baseType: !132, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2415, file: !2377, line: 46, baseType: !132, size: 32, offset: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2415, file: !2377, line: 47, baseType: !132, size: 32, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2415, file: !2377, line: 48, baseType: !132, size: 32, offset: 96)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2400, file: !2377, line: 51, baseType: !132, size: 32, offset: 192)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2400, file: !2377, line: 52, baseType: !132, size: 32, offset: 224)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2400, file: !2377, line: 55, baseType: !2424, size: 1024, offset: 256)
!2424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 1024, elements: !2425)
!2425 = !{!2426}
!2426 = !DISubrange(count: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2400, file: !2377, line: 58, baseType: !2428, size: 2048, offset: 1280)
!2428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 2048, elements: !362)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2400, file: !2377, line: 60, baseType: !2430, size: 384, offset: 3328)
!2430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 384, elements: !2431)
!2431 = !{!2432}
!2432 = !DISubrange(count: 12)
!2433 = !DIDerivedType(tag: DW_TAG_member, scope: !2400, file: !2377, line: 62, baseType: !2434, size: 384, offset: 3712)
!2434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2400, file: !2377, line: 62, size: 384, elements: !2435)
!2435 = !{!2436, !2437}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2434, file: !2377, line: 63, baseType: !2430, size: 384)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2434, file: !2377, line: 64, baseType: !2430, size: 384)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2382, file: !2377, line: 307, baseType: !2439, size: 1088)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2377, line: 79, size: 1088, elements: !2440)
!2440 = !{!2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2487}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2439, file: !2377, line: 80, baseType: !132, size: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2439, file: !2377, line: 81, baseType: !132, size: 32, offset: 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2439, file: !2377, line: 82, baseType: !132, size: 32, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2439, file: !2377, line: 83, baseType: !132, size: 32, offset: 96)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2439, file: !2377, line: 84, baseType: !132, size: 32, offset: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2439, file: !2377, line: 85, baseType: !132, size: 32, offset: 160)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2439, file: !2377, line: 86, baseType: !132, size: 32, offset: 192)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2439, file: !2377, line: 88, baseType: !2395, size: 640, offset: 224)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2439, file: !2377, line: 89, baseType: !127, size: 8, offset: 864)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2439, file: !2377, line: 90, baseType: !127, size: 8, offset: 872)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2439, file: !2377, line: 91, baseType: !127, size: 8, offset: 880)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2439, file: !2377, line: 92, baseType: !127, size: 8, offset: 888)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2439, file: !2377, line: 93, baseType: !127, size: 8, offset: 896)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2439, file: !2377, line: 94, baseType: !127, size: 8, offset: 904)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2439, file: !2377, line: 95, baseType: !2456, size: 64, offset: 960)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2458, line: 11, size: 128, elements: !2459)
!2458 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2459 = !{!2460, !2461}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2457, file: !2458, line: 12, baseType: !126, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2457, file: !2458, line: 13, baseType: !2462, size: 64, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2464, line: 56, size: 1344, elements: !2465)
!2464 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2465 = !{!2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2463, file: !2464, line: 61, baseType: !125, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2463, file: !2464, line: 62, baseType: !125, size: 64, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2463, file: !2464, line: 63, baseType: !125, size: 64, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2463, file: !2464, line: 64, baseType: !125, size: 64, offset: 192)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2463, file: !2464, line: 65, baseType: !125, size: 64, offset: 256)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2463, file: !2464, line: 66, baseType: !125, size: 64, offset: 320)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2463, file: !2464, line: 68, baseType: !125, size: 64, offset: 384)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2463, file: !2464, line: 69, baseType: !125, size: 64, offset: 448)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2463, file: !2464, line: 70, baseType: !125, size: 64, offset: 512)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2463, file: !2464, line: 71, baseType: !125, size: 64, offset: 576)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2463, file: !2464, line: 72, baseType: !125, size: 64, offset: 640)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2463, file: !2464, line: 73, baseType: !125, size: 64, offset: 704)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2463, file: !2464, line: 74, baseType: !125, size: 64, offset: 768)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2463, file: !2464, line: 75, baseType: !125, size: 64, offset: 832)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2463, file: !2464, line: 76, baseType: !125, size: 64, offset: 896)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2463, file: !2464, line: 81, baseType: !125, size: 64, offset: 960)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2463, file: !2464, line: 83, baseType: !125, size: 64, offset: 1024)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2463, file: !2464, line: 84, baseType: !125, size: 64, offset: 1088)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2463, file: !2464, line: 85, baseType: !125, size: 64, offset: 1152)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2463, file: !2464, line: 86, baseType: !125, size: 64, offset: 1216)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2463, file: !2464, line: 87, baseType: !125, size: 64, offset: 1280)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2439, file: !2377, line: 96, baseType: !132, size: 32, offset: 1024)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2382, file: !2377, line: 308, baseType: !2489, size: 4608, align: 512)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2377, line: 289, size: 4608, align: 512, elements: !2490)
!2490 = !{!2491, !2492, !2499}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2489, file: !2377, line: 290, baseType: !2400, size: 4096, align: 128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2489, file: !2377, line: 291, baseType: !2493, size: 512, offset: 4096)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2377, line: 268, size: 512, elements: !2494)
!2494 = !{!2495, !2496, !2497}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2493, file: !2377, line: 269, baseType: !643, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2493, file: !2377, line: 270, baseType: !643, size: 64, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2493, file: !2377, line: 271, baseType: !2498, size: 384, offset: 128)
!2498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 384, elements: !1820)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2489, file: !2377, line: 292, baseType: !2500, offset: 4608)
!2500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, elements: !1918)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2382, file: !2377, line: 309, baseType: !2502, size: 32768)
!2502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 32768, elements: !2503)
!2503 = !{!2504}
!2504 = !DISubrange(count: 4096)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1416, file: !925, line: 378, baseType: !2506, size: 64, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1412, file: !925, line: 384, baseType: !1697, size: 192, offset: 192)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1181, file: !925, line: 500, baseType: !316, offset: 6656)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1181, file: !925, line: 501, baseType: !2510, size: 64, offset: 6656)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !925, line: 387, flags: DIFlagFwdDecl)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1181, file: !925, line: 516, baseType: !1908, size: 64, offset: 6720)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1181, file: !925, line: 519, baseType: !576, size: 64, offset: 6784)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1181, file: !925, line: 521, baseType: !2515, size: 64, offset: 6848)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !925, line: 521, flags: DIFlagFwdDecl)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1181, file: !925, line: 545, baseType: !470, size: 32, offset: 6912)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1181, file: !925, line: 548, baseType: !419, size: 8, offset: 6944)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1181, file: !925, line: 550, baseType: !2520, offset: 6952)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2521, line: 142, elements: !330)
!2521 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1181, file: !925, line: 554, baseType: !2154, size: 256, offset: 6976)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1181, file: !925, line: 557, baseType: !132, size: 32, offset: 7232)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1178, file: !925, line: 565, baseType: !2525, offset: 7296)
!2525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, elements: !2526)
!2526 = !{!2527}
!2527 = !DISubrange(count: -1)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1174, file: !925, line: 151, baseType: !470, size: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1167, file: !925, line: 156, baseType: !316, offset: 256)
!2530 = !DIDerivedType(tag: DW_TAG_member, scope: !929, file: !925, line: 159, baseType: !2531, size: 128)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !925, line: 159, size: 128, elements: !2532)
!2532 = !{!2533, !2597}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2531, file: !925, line: 161, baseType: !2534, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !37, line: 110, size: 1152, elements: !2536)
!2536 = !{!2537, !2547, !2568, !2569, !2570, !2571, !2572, !2584, !2585, !2586}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2535, file: !37, line: 111, baseType: !2538, size: 384)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !37, line: 19, size: 384, elements: !2539)
!2539 = !{!2540, !2542, !2543, !2544, !2545, !2546}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2538, file: !37, line: 20, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2538, file: !37, line: 21, baseType: !2541, size: 64, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2538, file: !37, line: 22, baseType: !2541, size: 64, offset: 128)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2538, file: !37, line: 23, baseType: !125, size: 64, offset: 192)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2538, file: !37, line: 24, baseType: !125, size: 64, offset: 256)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2538, file: !37, line: 25, baseType: !125, size: 64, offset: 320)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2535, file: !37, line: 112, baseType: !2548, size: 64, offset: 384)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2550, line: 105, size: 128, elements: !2551)
!2550 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2551 = !{!2552, !2553}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2549, file: !2550, line: 110, baseType: !125, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2549, file: !2550, line: 118, baseType: !2554, size: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2550, line: 95, size: 448, elements: !2556)
!2556 = !{!2557, !2558, !2563, !2564, !2565, !2566, !2567}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2555, file: !2550, line: 96, baseType: !953, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2555, file: !2550, line: 97, baseType: !2559, size: 64, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2550, line: 60, baseType: !2561)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{null, !2548}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2555, file: !2550, line: 98, baseType: !2559, size: 64, offset: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2555, file: !2550, line: 99, baseType: !419, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2555, file: !2550, line: 100, baseType: !419, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2555, file: !2550, line: 101, baseType: !589, size: 128, align: 64, offset: 256)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2555, file: !2550, line: 102, baseType: !2548, size: 64, offset: 384)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2535, file: !37, line: 113, baseType: !2549, size: 128, offset: 448)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2535, file: !37, line: 114, baseType: !1697, size: 192, offset: 576)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2535, file: !37, line: 115, baseType: !36, size: 32, offset: 768)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2535, file: !37, line: 116, baseType: !7, size: 32, offset: 800)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2535, file: !37, line: 117, baseType: !2573, size: 64, offset: 832)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2575)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !37, line: 67, size: 256, elements: !2576)
!2576 = !{!2577, !2578, !2582, !2583}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2575, file: !37, line: 73, baseType: !1029, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2575, file: !37, line: 78, baseType: !2579, size: 64, offset: 64)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{null, !2534}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2575, file: !37, line: 83, baseType: !2579, size: 64, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2575, file: !37, line: 89, baseType: !1230, size: 64, offset: 192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2535, file: !37, line: 118, baseType: !124, size: 64, offset: 896)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2535, file: !37, line: 119, baseType: !155, size: 32, offset: 960)
!2586 = !DIDerivedType(tag: DW_TAG_member, scope: !2535, file: !37, line: 120, baseType: !2587, size: 128, offset: 1024)
!2587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2535, file: !37, line: 120, size: 128, elements: !2588)
!2588 = !{!2589, !2595}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2587, file: !37, line: 121, baseType: !2590, size: 128)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2591, line: 6, size: 128, elements: !2592)
!2591 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2592 = !{!2593, !2594}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2590, file: !2591, line: 7, baseType: !643, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2590, file: !2591, line: 8, baseType: !643, size: 64, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2587, file: !37, line: 122, baseType: !2596)
!2596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2590, elements: !1918)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2531, file: !925, line: 162, baseType: !124, size: 64, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !929, file: !925, line: 176, baseType: !589, size: 128, align: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !925, line: 179, baseType: !2600, size: 32, offset: 384)
!2600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !924, file: !925, line: 179, size: 32, elements: !2601)
!2601 = !{!2602, !2603, !2604, !2605}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2600, file: !925, line: 184, baseType: !470, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2600, file: !925, line: 192, baseType: !7, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2600, file: !925, line: 194, baseType: !7, size: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2600, file: !925, line: 195, baseType: !155, size: 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !924, file: !925, line: 199, baseType: !470, size: 32, offset: 416)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !862, file: !50, line: 1964, baseType: !2608, size: 64, offset: 1344)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!126, !802, !2611}
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2613, line: 12, size: 256, elements: !2614)
!2613 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2614 = !{!2615, !2616, !2617, !2618, !2619}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2612, file: !2613, line: 13, baseType: !514, size: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2612, file: !2613, line: 16, baseType: !155, size: 32, offset: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2612, file: !2613, line: 23, baseType: !125, size: 64, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2612, file: !2613, line: 30, baseType: !125, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2612, file: !2613, line: 33, baseType: !2620, size: 64, offset: 192)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !925, line: 27, flags: DIFlagFwdDecl)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !862, file: !50, line: 1966, baseType: !2608, size: 64, offset: 1408)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !803, file: !50, line: 1424, baseType: !2624, size: 64, offset: 448)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2626)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !44, line: 322, size: 704, elements: !2627)
!2627 = !{!2628, !2674, !2678, !2682, !2683, !2684, !2685, !2686, !2691, !2696, !2700}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2626, file: !44, line: 323, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!155, !2632}
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !44, line: 294, size: 1600, elements: !2634)
!2634 = !{!2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2659, !2660, !2661}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2633, file: !44, line: 295, baseType: !844, size: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2633, file: !44, line: 296, baseType: !137, size: 128, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2633, file: !44, line: 297, baseType: !137, size: 128, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2633, file: !44, line: 298, baseType: !137, size: 128, offset: 384)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2633, file: !44, line: 299, baseType: !1376, size: 192, offset: 512)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2633, file: !44, line: 300, baseType: !316, offset: 704)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2633, file: !44, line: 301, baseType: !470, size: 32, offset: 704)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2633, file: !44, line: 302, baseType: !802, size: 64, offset: 768)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2633, file: !44, line: 303, baseType: !2644, size: 64, offset: 832)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !44, line: 68, size: 64, elements: !2645)
!2645 = !{!2646, !2658}
!2646 = !DIDerivedType(tag: DW_TAG_member, scope: !2644, file: !44, line: 69, baseType: !2647, size: 32)
!2647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2644, file: !44, line: 69, size: 32, elements: !2648)
!2648 = !{!2649, !2650, !2651}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2647, file: !44, line: 70, baseType: !450, size: 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2647, file: !44, line: 71, baseType: !458, size: 32)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2647, file: !44, line: 72, baseType: !2652, size: 32)
!2652 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2653, line: 24, baseType: !2654)
!2653 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2653, line: 22, size: 32, elements: !2655)
!2655 = !{!2656}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2654, file: !2653, line: 23, baseType: !2657, size: 32)
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2653, line: 20, baseType: !456)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2644, file: !44, line: 74, baseType: !43, size: 32, offset: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2633, file: !44, line: 304, baseType: !734, size: 64, offset: 896)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2633, file: !44, line: 305, baseType: !125, size: 64, offset: 960)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2633, file: !44, line: 306, baseType: !2662, size: 576, offset: 1024)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !44, line: 205, size: 576, elements: !2663)
!2663 = !{!2664, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2662, file: !44, line: 206, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !44, line: 66, baseType: !736)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2662, file: !44, line: 207, baseType: !2665, size: 64, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2662, file: !44, line: 208, baseType: !2665, size: 64, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2662, file: !44, line: 209, baseType: !2665, size: 64, offset: 192)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2662, file: !44, line: 210, baseType: !2665, size: 64, offset: 256)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2662, file: !44, line: 211, baseType: !2665, size: 64, offset: 320)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2662, file: !44, line: 212, baseType: !2665, size: 64, offset: 384)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2662, file: !44, line: 213, baseType: !742, size: 64, offset: 448)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2662, file: !44, line: 214, baseType: !742, size: 64, offset: 512)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2626, file: !44, line: 324, baseType: !2675, size: 64, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!2632, !802, !155}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2626, file: !44, line: 325, baseType: !2679, size: 64, offset: 128)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{null, !2632}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2626, file: !44, line: 326, baseType: !2629, size: 64, offset: 192)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2626, file: !44, line: 327, baseType: !2629, size: 64, offset: 256)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2626, file: !44, line: 328, baseType: !2629, size: 64, offset: 320)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2626, file: !44, line: 329, baseType: !890, size: 64, offset: 384)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2626, file: !44, line: 332, baseType: !2687, size: 64, offset: 448)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!2690, !650}
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2626, file: !44, line: 333, baseType: !2692, size: 64, offset: 512)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!155, !650, !2695}
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2626, file: !44, line: 335, baseType: !2697, size: 64, offset: 576)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!155, !650, !2690}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2626, file: !44, line: 337, baseType: !2701, size: 64, offset: 640)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!155, !802, !2704}
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !803, file: !50, line: 1425, baseType: !2706, size: 64, offset: 512)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2708)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !44, line: 428, size: 704, elements: !2709)
!2709 = !{!2710, !2714, !2715, !2719, !2720, !2721, !2736, !2759, !2763, !2764, !2787}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2708, file: !44, line: 429, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!155, !802, !155, !155, !752}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2708, file: !44, line: 430, baseType: !890, size: 64, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2708, file: !44, line: 431, baseType: !2716, size: 64, offset: 128)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!155, !802, !7}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2708, file: !44, line: 432, baseType: !2716, size: 64, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2708, file: !44, line: 433, baseType: !890, size: 64, offset: 256)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2708, file: !44, line: 434, baseType: !2722, size: 64, offset: 320)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!155, !802, !155, !2725}
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !44, line: 415, size: 256, elements: !2727)
!2727 = !{!2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2726, file: !44, line: 416, baseType: !155, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2726, file: !44, line: 417, baseType: !7, size: 32, offset: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2726, file: !44, line: 418, baseType: !7, size: 32, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2726, file: !44, line: 420, baseType: !7, size: 32, offset: 96)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2726, file: !44, line: 421, baseType: !7, size: 32, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2726, file: !44, line: 422, baseType: !7, size: 32, offset: 160)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2726, file: !44, line: 423, baseType: !7, size: 32, offset: 192)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2726, file: !44, line: 424, baseType: !7, size: 32, offset: 224)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2708, file: !44, line: 435, baseType: !2737, size: 64, offset: 384)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!155, !802, !2644, !2740}
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !44, line: 343, size: 960, elements: !2742)
!2742 = !{!2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2741, file: !44, line: 344, baseType: !155, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2741, file: !44, line: 345, baseType: !643, size: 64, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2741, file: !44, line: 346, baseType: !643, size: 64, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2741, file: !44, line: 347, baseType: !643, size: 64, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2741, file: !44, line: 348, baseType: !643, size: 64, offset: 256)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2741, file: !44, line: 349, baseType: !643, size: 64, offset: 320)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2741, file: !44, line: 350, baseType: !643, size: 64, offset: 384)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2741, file: !44, line: 351, baseType: !959, size: 64, offset: 448)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2741, file: !44, line: 353, baseType: !959, size: 64, offset: 512)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2741, file: !44, line: 354, baseType: !155, size: 32, offset: 576)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2741, file: !44, line: 355, baseType: !155, size: 32, offset: 608)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2741, file: !44, line: 356, baseType: !643, size: 64, offset: 640)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2741, file: !44, line: 357, baseType: !643, size: 64, offset: 704)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2741, file: !44, line: 358, baseType: !643, size: 64, offset: 768)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2741, file: !44, line: 359, baseType: !959, size: 64, offset: 832)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2741, file: !44, line: 360, baseType: !155, size: 32, offset: 896)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2708, file: !44, line: 436, baseType: !2760, size: 64, offset: 448)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!155, !802, !2704, !2740}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2708, file: !44, line: 438, baseType: !2737, size: 64, offset: 512)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2708, file: !44, line: 439, baseType: !2765, size: 64, offset: 576)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!155, !802, !2768}
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !44, line: 409, size: 1408, elements: !2770)
!2770 = !{!2771, !2772}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2769, file: !44, line: 410, baseType: !7, size: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2769, file: !44, line: 411, baseType: !2773, size: 1344, offset: 64)
!2773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2774, size: 1344, elements: !358)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !44, line: 395, size: 448, elements: !2775)
!2775 = !{!2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2786}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2774, file: !44, line: 396, baseType: !7, size: 32)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2774, file: !44, line: 397, baseType: !7, size: 32, offset: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2774, file: !44, line: 399, baseType: !7, size: 32, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2774, file: !44, line: 400, baseType: !7, size: 32, offset: 96)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2774, file: !44, line: 401, baseType: !7, size: 32, offset: 128)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2774, file: !44, line: 402, baseType: !7, size: 32, offset: 160)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2774, file: !44, line: 403, baseType: !7, size: 32, offset: 192)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2774, file: !44, line: 404, baseType: !645, size: 64, offset: 256)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2774, file: !44, line: 405, baseType: !2785, size: 64, offset: 320)
!2785 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !138, line: 126, baseType: !643)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2774, file: !44, line: 406, baseType: !2785, size: 64, offset: 384)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2708, file: !44, line: 440, baseType: !2716, size: 64, offset: 640)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !803, file: !50, line: 1426, baseType: !2789, size: 64, offset: 576)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2791)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !50, line: 49, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !803, file: !50, line: 1427, baseType: !125, size: 64, offset: 640)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !803, file: !50, line: 1428, baseType: !125, size: 64, offset: 704)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !803, file: !50, line: 1429, baseType: !125, size: 64, offset: 768)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !803, file: !50, line: 1430, baseType: !607, size: 64, offset: 832)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !803, file: !50, line: 1431, baseType: !949, size: 256, offset: 896)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !803, file: !50, line: 1432, baseType: !155, size: 32, offset: 1152)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !803, file: !50, line: 1433, baseType: !470, size: 32, offset: 1184)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !803, file: !50, line: 1437, baseType: !2800, size: 64, offset: 1216)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2803)
!2803 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !50, line: 1437, flags: DIFlagFwdDecl)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !803, file: !50, line: 1449, baseType: !2805, size: 64, offset: 1280)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !624, line: 34, size: 64, elements: !2806)
!2806 = !{!2807}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2805, file: !624, line: 35, baseType: !627, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !803, file: !50, line: 1450, baseType: !137, size: 128, offset: 1344)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !803, file: !50, line: 1451, baseType: !2810, size: 64, offset: 1472)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !50, line: 699, flags: DIFlagFwdDecl)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !803, file: !50, line: 1452, baseType: !2120, size: 64, offset: 1536)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !803, file: !50, line: 1453, baseType: !2814, size: 64, offset: 1600)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !50, line: 1453, flags: DIFlagFwdDecl)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !803, file: !50, line: 1454, baseType: !844, size: 128, offset: 1664)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !803, file: !50, line: 1455, baseType: !7, size: 32, offset: 1792)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !803, file: !50, line: 1456, baseType: !2819, size: 2432, offset: 1856)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !44, line: 518, size: 2432, elements: !2820)
!2820 = !{!2821, !2822, !2823, !2825, !2857}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2819, file: !44, line: 519, baseType: !7, size: 32)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2819, file: !44, line: 520, baseType: !949, size: 256, offset: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2819, file: !44, line: 521, baseType: !2824, size: 192, offset: 320)
!2824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 192, elements: !358)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2819, file: !44, line: 522, baseType: !2826, size: 1728, offset: 512)
!2826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2827, size: 1728, elements: !358)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !44, line: 222, size: 576, elements: !2828)
!2828 = !{!2829, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2827, file: !44, line: 223, baseType: !2830, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !44, line: 443, size: 256, elements: !2832)
!2832 = !{!2833, !2834, !2847, !2848}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2831, file: !44, line: 444, baseType: !155, size: 32)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2831, file: !44, line: 445, baseType: !2835, size: 64, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2837)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !44, line: 310, size: 512, elements: !2838)
!2838 = !{!2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2837, file: !44, line: 311, baseType: !890, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2837, file: !44, line: 312, baseType: !890, size: 64, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2837, file: !44, line: 313, baseType: !890, size: 64, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2837, file: !44, line: 314, baseType: !890, size: 64, offset: 192)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2837, file: !44, line: 315, baseType: !2629, size: 64, offset: 256)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2837, file: !44, line: 316, baseType: !2629, size: 64, offset: 320)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2837, file: !44, line: 317, baseType: !2629, size: 64, offset: 384)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2837, file: !44, line: 318, baseType: !2701, size: 64, offset: 448)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2831, file: !44, line: 446, baseType: !835, size: 64, offset: 128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2831, file: !44, line: 447, baseType: !2830, size: 64, offset: 192)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2827, file: !44, line: 224, baseType: !155, size: 32, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2827, file: !44, line: 226, baseType: !137, size: 128, offset: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2827, file: !44, line: 227, baseType: !125, size: 64, offset: 256)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2827, file: !44, line: 228, baseType: !7, size: 32, offset: 320)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2827, file: !44, line: 229, baseType: !7, size: 32, offset: 352)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2827, file: !44, line: 230, baseType: !2665, size: 64, offset: 384)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2827, file: !44, line: 231, baseType: !2665, size: 64, offset: 448)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2827, file: !44, line: 232, baseType: !124, size: 64, offset: 512)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2819, file: !44, line: 523, baseType: !2858, size: 192, offset: 2240)
!2858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2835, size: 192, elements: !358)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !803, file: !50, line: 1458, baseType: !2860, size: 2112, offset: 4288)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !50, line: 1410, size: 2112, elements: !2861)
!2861 = !{!2862, !2863, !2864}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2860, file: !50, line: 1411, baseType: !155, size: 32)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2860, file: !50, line: 1412, baseType: !549, size: 128, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2860, file: !50, line: 1413, baseType: !2865, size: 1920, offset: 192)
!2865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2866, size: 1920, elements: !358)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2867, line: 12, size: 640, elements: !2868)
!2867 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2868 = !{!2869, !2877, !2879, !2884, !2885}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2866, file: !2867, line: 13, baseType: !2870, size: 320)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2871, line: 17, size: 320, elements: !2872)
!2871 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2872 = !{!2873, !2874, !2875, !2876}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2870, file: !2871, line: 18, baseType: !155, size: 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2870, file: !2871, line: 19, baseType: !155, size: 32, offset: 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2870, file: !2871, line: 20, baseType: !549, size: 128, offset: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2870, file: !2871, line: 22, baseType: !589, size: 128, align: 64, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2866, file: !2867, line: 14, baseType: !2878, size: 64, offset: 320)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2866, file: !2867, line: 15, baseType: !2880, size: 64, offset: 384)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2881, line: 16, size: 64, elements: !2882)
!2881 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2882 = !{!2883}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2880, file: !2881, line: 17, baseType: !1419, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2866, file: !2867, line: 16, baseType: !549, size: 128, offset: 448)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2866, file: !2867, line: 17, baseType: !470, size: 32, offset: 576)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !803, file: !50, line: 1465, baseType: !124, size: 64, offset: 6400)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !803, file: !50, line: 1468, baseType: !132, size: 32, offset: 6464)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !803, file: !50, line: 1470, baseType: !742, size: 64, offset: 6528)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !803, file: !50, line: 1471, baseType: !742, size: 64, offset: 6592)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !803, file: !50, line: 1473, baseType: !133, size: 32, offset: 6656)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !803, file: !50, line: 1474, baseType: !2892, size: 64, offset: 6720)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !50, line: 603, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !803, file: !50, line: 1477, baseType: !2895, size: 256, offset: 6784)
!2895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 256, elements: !2425)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !803, file: !50, line: 1478, baseType: !2897, size: 128, offset: 7040)
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2898, line: 18, baseType: !2899)
!2898 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2898, line: 16, size: 128, elements: !2900)
!2900 = !{!2901}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2899, file: !2898, line: 17, baseType: !2902, size: 128)
!2902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 128, elements: !1930)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !803, file: !50, line: 1480, baseType: !7, size: 32, offset: 7168)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !803, file: !50, line: 1481, baseType: !2905, size: 32, offset: 7200)
!2905 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !138, line: 150, baseType: !7)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !803, file: !50, line: 1487, baseType: !1376, size: 192, offset: 7232)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !803, file: !50, line: 1493, baseType: !230, size: 64, offset: 7424)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !803, file: !50, line: 1495, baseType: !2909, size: 64, offset: 7488)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2911)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !609, line: 135, size: 1024, align: 512, elements: !2912)
!2912 = !{!2913, !2917, !2918, !2925, !2931, !2935, !2939, !2943, !2944, !2948, !2952, !2957, !2961}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2911, file: !609, line: 136, baseType: !2914, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!155, !607, !7}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2911, file: !609, line: 137, baseType: !2914, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2911, file: !609, line: 138, baseType: !2919, size: 64, offset: 128)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!155, !2922, !2924}
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2911, file: !609, line: 139, baseType: !2926, size: 64, offset: 192)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!155, !2922, !7, !230, !2929}
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2911, file: !609, line: 141, baseType: !2932, size: 64, offset: 256)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!155, !2922}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2911, file: !609, line: 142, baseType: !2936, size: 64, offset: 320)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!155, !607}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2911, file: !609, line: 143, baseType: !2940, size: 64, offset: 384)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{null, !607}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2911, file: !609, line: 144, baseType: !2940, size: 64, offset: 448)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2911, file: !609, line: 145, baseType: !2945, size: 64, offset: 512)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{null, !607, !650}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2911, file: !609, line: 146, baseType: !2949, size: 64, offset: 576)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!357, !607, !357, !155}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2911, file: !609, line: 147, baseType: !2953, size: 64, offset: 640)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!602, !2956}
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2911, file: !609, line: 148, baseType: !2958, size: 64, offset: 704)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!155, !752, !419}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2911, file: !609, line: 149, baseType: !2962, size: 64, offset: 768)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!607, !607, !2965}
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !803, file: !50, line: 1500, baseType: !155, size: 32, offset: 7552)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !803, file: !50, line: 1502, baseType: !2969, size: 448, offset: 7616)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2613, line: 60, size: 448, elements: !2970)
!2970 = !{!2971, !2976, !2977, !2978, !2979, !2980, !2981}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2969, file: !2613, line: 61, baseType: !2972, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!125, !2975, !2611}
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2969, file: !2613, line: 63, baseType: !2972, size: 64, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2969, file: !2613, line: 66, baseType: !126, size: 64, offset: 128)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2969, file: !2613, line: 67, baseType: !155, size: 32, offset: 192)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2969, file: !2613, line: 68, baseType: !7, size: 32, offset: 224)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2969, file: !2613, line: 71, baseType: !137, size: 128, offset: 256)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2969, file: !2613, line: 77, baseType: !2982, size: 64, offset: 384)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !803, file: !50, line: 1505, baseType: !953, size: 64, offset: 8064)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !803, file: !50, line: 1508, baseType: !953, size: 64, offset: 8128)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !803, file: !50, line: 1511, baseType: !155, size: 32, offset: 8192)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !803, file: !50, line: 1514, baseType: !1112, size: 32, offset: 8224)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !803, file: !50, line: 1517, baseType: !2988, size: 64, offset: 8256)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2155, line: 18, flags: DIFlagFwdDecl)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !803, file: !50, line: 1518, baseType: !840, size: 64, offset: 8320)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !803, file: !50, line: 1525, baseType: !1908, size: 64, offset: 8384)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !803, file: !50, line: 1532, baseType: !2993, size: 64, offset: 8448)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2994, line: 52, size: 64, elements: !2995)
!2994 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2995 = !{!2996}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2993, file: !2994, line: 53, baseType: !2997, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2994, line: 40, size: 256, elements: !2999)
!2999 = !{!3000, !3001, !3006}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2998, file: !2994, line: 42, baseType: !316)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2998, file: !2994, line: 44, baseType: !3002, size: 192)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2994, line: 28, size: 192, elements: !3003)
!3003 = !{!3004, !3005}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3002, file: !2994, line: 29, baseType: !137, size: 128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3002, file: !2994, line: 31, baseType: !126, size: 64, offset: 128)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2998, file: !2994, line: 49, baseType: !126, size: 64, offset: 192)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !803, file: !50, line: 1533, baseType: !2993, size: 64, offset: 8512)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !803, file: !50, line: 1534, baseType: !589, size: 128, align: 64, offset: 8576)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !803, file: !50, line: 1535, baseType: !2154, size: 256, offset: 8704)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !803, file: !50, line: 1537, baseType: !1376, size: 192, offset: 8960)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !803, file: !50, line: 1542, baseType: !155, size: 32, offset: 9152)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !803, file: !50, line: 1545, baseType: !316, offset: 9184)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !803, file: !50, line: 1546, baseType: !137, size: 128, offset: 9216)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !803, file: !50, line: 1548, baseType: !316, offset: 9344)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !803, file: !50, line: 1549, baseType: !137, size: 128, offset: 9344)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !651, file: !50, line: 624, baseType: !936, size: 64, offset: 256)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !651, file: !50, line: 631, baseType: !125, size: 64, offset: 320)
!3018 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !50, line: 639, baseType: !3019, size: 32, offset: 384)
!3019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !50, line: 639, size: 32, elements: !3020)
!3020 = !{!3021, !3023}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3019, file: !50, line: 640, baseType: !3022, size: 32)
!3022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3019, file: !50, line: 641, baseType: !7, size: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !651, file: !50, line: 643, baseType: !716, size: 32, offset: 416)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !651, file: !50, line: 644, baseType: !734, size: 64, offset: 448)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !651, file: !50, line: 645, baseType: !738, size: 128, offset: 512)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !651, file: !50, line: 646, baseType: !738, size: 128, offset: 640)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !651, file: !50, line: 647, baseType: !738, size: 128, offset: 768)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !651, file: !50, line: 648, baseType: !316, offset: 896)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !651, file: !50, line: 649, baseType: !206, size: 16, offset: 896)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !651, file: !50, line: 650, baseType: !127, size: 8, offset: 912)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !651, file: !50, line: 651, baseType: !127, size: 8, offset: 920)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !651, file: !50, line: 652, baseType: !2785, size: 64, offset: 960)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !651, file: !50, line: 659, baseType: !125, size: 64, offset: 1024)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !651, file: !50, line: 660, baseType: !949, size: 256, offset: 1088)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !651, file: !50, line: 662, baseType: !125, size: 64, offset: 1344)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !651, file: !50, line: 663, baseType: !125, size: 64, offset: 1408)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !651, file: !50, line: 665, baseType: !844, size: 128, offset: 1472)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !651, file: !50, line: 666, baseType: !137, size: 128, offset: 1600)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !651, file: !50, line: 675, baseType: !137, size: 128, offset: 1728)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !651, file: !50, line: 676, baseType: !137, size: 128, offset: 1856)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !651, file: !50, line: 677, baseType: !137, size: 128, offset: 1984)
!3043 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !50, line: 678, baseType: !3044, size: 128, offset: 2112)
!3044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !50, line: 678, size: 128, elements: !3045)
!3045 = !{!3046, !3047}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3044, file: !50, line: 679, baseType: !840, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3044, file: !50, line: 680, baseType: !589, size: 128, align: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !651, file: !50, line: 682, baseType: !955, size: 64, offset: 2240)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !651, file: !50, line: 683, baseType: !955, size: 64, offset: 2304)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !651, file: !50, line: 684, baseType: !470, size: 32, offset: 2368)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !651, file: !50, line: 685, baseType: !470, size: 32, offset: 2400)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !651, file: !50, line: 686, baseType: !470, size: 32, offset: 2432)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !651, file: !50, line: 688, baseType: !470, size: 32, offset: 2464)
!3054 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !50, line: 690, baseType: !3055, size: 64, offset: 2496)
!3055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !50, line: 690, size: 64, elements: !3056)
!3056 = !{!3057, !3280}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3055, file: !50, line: 691, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3060)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !50, line: 1822, size: 2048, elements: !3061)
!3061 = !{!3062, !3063, !3067, !3072, !3076, !3077, !3078, !3082, !3095, !3096, !3104, !3108, !3109, !3113, !3114, !3118, !3123, !3124, !3128, !3132, !3240, !3244, !3245, !3249, !3250, !3254, !3258, !3263, !3267, !3271, !3275, !3279}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3060, file: !50, line: 1823, baseType: !835, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3060, file: !50, line: 1824, baseType: !3064, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!734, !576, !734, !155}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3060, file: !50, line: 1825, baseType: !3068, size: 64, offset: 128)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!387, !576, !357, !400, !3071}
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3060, file: !50, line: 1826, baseType: !3073, size: 64, offset: 192)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!387, !576, !230, !400, !3071}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3060, file: !50, line: 1827, baseType: !1033, size: 64, offset: 256)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3060, file: !50, line: 1828, baseType: !1033, size: 64, offset: 320)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3060, file: !50, line: 1829, baseType: !3079, size: 64, offset: 384)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!155, !1036, !419}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3060, file: !50, line: 1830, baseType: !3083, size: 64, offset: 448)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!155, !576, !3086}
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !50, line: 1776, size: 128, elements: !3088)
!3088 = !{!3089, !3094}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3087, file: !50, line: 1777, baseType: !3090, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !50, line: 1773, baseType: !3091)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!155, !3086, !230, !155, !734, !643, !7}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3087, file: !50, line: 1778, baseType: !734, size: 64, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3060, file: !50, line: 1831, baseType: !3083, size: 64, offset: 512)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3060, file: !50, line: 1832, baseType: !3097, size: 64, offset: 576)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!3100, !576, !3102}
!3100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3101, line: 52, baseType: !7)
!3101 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !467, line: 27, flags: DIFlagFwdDecl)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3060, file: !50, line: 1833, baseType: !3105, size: 64, offset: 640)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!126, !576, !7, !125}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3060, file: !50, line: 1834, baseType: !3105, size: 64, offset: 704)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3060, file: !50, line: 1835, baseType: !3110, size: 64, offset: 768)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!155, !576, !1184}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3060, file: !50, line: 1836, baseType: !125, size: 64, offset: 832)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3060, file: !50, line: 1837, baseType: !3115, size: 64, offset: 896)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!155, !650, !576}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3060, file: !50, line: 1838, baseType: !3119, size: 64, offset: 960)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!155, !576, !3122}
!3122 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !50, line: 1007, baseType: !124)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3060, file: !50, line: 1839, baseType: !3115, size: 64, offset: 1024)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3060, file: !50, line: 1840, baseType: !3125, size: 64, offset: 1088)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!155, !576, !734, !734, !155}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3060, file: !50, line: 1841, baseType: !3129, size: 64, offset: 1152)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!155, !155, !576, !155}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3060, file: !50, line: 1842, baseType: !3133, size: 64, offset: 1216)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!155, !576, !155, !3136}
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !50, line: 1062, size: 1664, elements: !3138)
!3138 = !{!3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3170, !3171, !3172, !3185, !3216}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3137, file: !50, line: 1063, baseType: !3136, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3137, file: !50, line: 1064, baseType: !137, size: 128, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3137, file: !50, line: 1065, baseType: !844, size: 128, offset: 192)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3137, file: !50, line: 1066, baseType: !137, size: 128, offset: 320)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3137, file: !50, line: 1069, baseType: !137, size: 128, offset: 448)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3137, file: !50, line: 1072, baseType: !3122, size: 64, offset: 576)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3137, file: !50, line: 1073, baseType: !7, size: 32, offset: 640)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3137, file: !50, line: 1074, baseType: !131, size: 8, offset: 672)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3137, file: !50, line: 1075, baseType: !7, size: 32, offset: 704)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3137, file: !50, line: 1076, baseType: !155, size: 32, offset: 736)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3137, file: !50, line: 1077, baseType: !549, size: 128, offset: 768)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3137, file: !50, line: 1078, baseType: !576, size: 64, offset: 896)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3137, file: !50, line: 1079, baseType: !734, size: 64, offset: 960)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3137, file: !50, line: 1080, baseType: !734, size: 64, offset: 1024)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3137, file: !50, line: 1082, baseType: !3154, size: 64, offset: 1088)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !50, line: 1314, size: 320, elements: !3156)
!3156 = !{!3157, !3165, !3166, !3167, !3168, !3169}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3155, file: !50, line: 1315, baseType: !3158)
!3158 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3159, line: 20, baseType: !3160)
!3159 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3159, line: 11, elements: !3161)
!3161 = !{!3162}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3160, file: !3159, line: 12, baseType: !3163)
!3163 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !328, line: 33, baseType: !3164)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 31, elements: !330)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3155, file: !50, line: 1316, baseType: !155, size: 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3155, file: !50, line: 1317, baseType: !155, size: 32, offset: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3155, file: !50, line: 1318, baseType: !3154, size: 64, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3155, file: !50, line: 1319, baseType: !576, size: 64, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3155, file: !50, line: 1320, baseType: !589, size: 128, align: 64, offset: 192)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3137, file: !50, line: 1084, baseType: !125, size: 64, offset: 1152)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3137, file: !50, line: 1085, baseType: !125, size: 64, offset: 1216)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3137, file: !50, line: 1087, baseType: !3173, size: 64, offset: 1280)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3175)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !50, line: 1011, size: 128, elements: !3176)
!3176 = !{!3177, !3181}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3175, file: !50, line: 1012, baseType: !3178, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{null, !3136, !3136}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3175, file: !50, line: 1013, baseType: !3182, size: 64, offset: 64)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{null, !3136}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3137, file: !50, line: 1088, baseType: !3186, size: 64, offset: 1344)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3188)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !50, line: 1016, size: 512, elements: !3189)
!3189 = !{!3190, !3194, !3198, !3199, !3203, !3207, !3211, !3215}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3188, file: !50, line: 1017, baseType: !3191, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!3122, !3122}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3188, file: !50, line: 1018, baseType: !3195, size: 64, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{null, !3122}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3188, file: !50, line: 1019, baseType: !3182, size: 64, offset: 128)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3188, file: !50, line: 1020, baseType: !3200, size: 64, offset: 192)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!155, !3136, !155}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3188, file: !50, line: 1021, baseType: !3204, size: 64, offset: 256)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!419, !3136}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3188, file: !50, line: 1022, baseType: !3208, size: 64, offset: 320)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!155, !3136, !155, !136}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3188, file: !50, line: 1023, baseType: !3212, size: 64, offset: 384)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{null, !3136, !1010}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3188, file: !50, line: 1024, baseType: !3204, size: 64, offset: 448)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3137, file: !50, line: 1097, baseType: !3217, size: 256, offset: 1408)
!3217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3137, file: !50, line: 1089, size: 256, elements: !3218)
!3218 = !{!3219, !3228, !3234}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3217, file: !50, line: 1090, baseType: !3220, size: 256)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3221, line: 10, size: 256, elements: !3222)
!3221 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3222 = !{!3223, !3224, !3227}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3220, file: !3221, line: 11, baseType: !132, size: 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3220, file: !3221, line: 12, baseType: !3225, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3221, line: 5, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3220, file: !3221, line: 13, baseType: !137, size: 128, offset: 128)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3217, file: !50, line: 1091, baseType: !3229, size: 64)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3221, line: 17, size: 64, elements: !3230)
!3230 = !{!3231}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3229, file: !3221, line: 18, baseType: !3232, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3221, line: 16, flags: DIFlagFwdDecl)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3217, file: !50, line: 1096, baseType: !3235, size: 192)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3217, file: !50, line: 1092, size: 192, elements: !3236)
!3236 = !{!3237, !3238, !3239}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3235, file: !50, line: 1093, baseType: !137, size: 128)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3235, file: !50, line: 1094, baseType: !155, size: 32, offset: 128)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3235, file: !50, line: 1095, baseType: !7, size: 32, offset: 160)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3060, file: !50, line: 1843, baseType: !3241, size: 64, offset: 1280)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!387, !576, !923, !155, !400, !3071, !155}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3060, file: !50, line: 1844, baseType: !1304, size: 64, offset: 1344)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3060, file: !50, line: 1845, baseType: !3246, size: 64, offset: 1408)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!155, !155}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3060, file: !50, line: 1846, baseType: !3133, size: 64, offset: 1472)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3060, file: !50, line: 1847, baseType: !3251, size: 64, offset: 1536)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!387, !2295, !576, !3071, !400, !7}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3060, file: !50, line: 1848, baseType: !3255, size: 64, offset: 1600)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!387, !576, !3071, !2295, !400, !7}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3060, file: !50, line: 1849, baseType: !3259, size: 64, offset: 1664)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!155, !576, !126, !3262, !1010}
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3060, file: !50, line: 1850, baseType: !3264, size: 64, offset: 1728)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!126, !576, !155, !734, !734}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3060, file: !50, line: 1852, baseType: !3268, size: 64, offset: 1792)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{null, !528, !576}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3060, file: !50, line: 1856, baseType: !3272, size: 64, offset: 1856)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!387, !576, !734, !576, !734, !400, !7}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3060, file: !50, line: 1858, baseType: !3276, size: 64, offset: 1920)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!734, !576, !734, !576, !734, !734, !7}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3060, file: !50, line: 1861, baseType: !3125, size: 64, offset: 1984)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3055, file: !50, line: 692, baseType: !869, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !651, file: !50, line: 694, baseType: !3282, size: 64, offset: 2560)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !50, line: 1100, size: 384, elements: !3284)
!3284 = !{!3285, !3286, !3287, !3288}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3283, file: !50, line: 1101, baseType: !316)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3283, file: !50, line: 1102, baseType: !137, size: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3283, file: !50, line: 1103, baseType: !137, size: 128, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3283, file: !50, line: 1104, baseType: !137, size: 128, offset: 256)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !651, file: !50, line: 695, baseType: !937, size: 1216, align: 64, offset: 2624)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !651, file: !50, line: 696, baseType: !137, size: 128, offset: 3840)
!3291 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !50, line: 697, baseType: !3292, size: 64, offset: 3968)
!3292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !50, line: 697, size: 64, elements: !3293)
!3293 = !{!3294, !3295, !3296, !3299, !3300}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3292, file: !50, line: 698, baseType: !2295, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3292, file: !50, line: 699, baseType: !2810, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3292, file: !50, line: 700, baseType: !3297, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !50, line: 700, flags: DIFlagFwdDecl)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3292, file: !50, line: 701, baseType: !357, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3292, file: !50, line: 702, baseType: !7, size: 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !651, file: !50, line: 705, baseType: !133, size: 32, offset: 4032)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !651, file: !50, line: 708, baseType: !133, size: 32, offset: 4064)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !651, file: !50, line: 709, baseType: !2892, size: 64, offset: 4096)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !651, file: !50, line: 720, baseType: !124, size: 64, offset: 4160)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !608, file: !609, line: 98, baseType: !3306, size: 256, offset: 448)
!3306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 256, elements: !2425)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !608, file: !609, line: 101, baseType: !3308, size: 32, offset: 704)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3309, line: 25, size: 32, elements: !3310)
!3309 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3310 = !{!3311}
!3311 = !DIDerivedType(tag: DW_TAG_member, scope: !3308, file: !3309, line: 26, baseType: !3312, size: 32)
!3312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3308, file: !3309, line: 26, size: 32, elements: !3313)
!3313 = !{!3314}
!3314 = !DIDerivedType(tag: DW_TAG_member, scope: !3312, file: !3309, line: 30, baseType: !3315, size: 32)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3312, file: !3309, line: 30, size: 32, elements: !3316)
!3316 = !{!3317, !3318}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3315, file: !3309, line: 31, baseType: !316)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3315, file: !3309, line: 32, baseType: !155, size: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !608, file: !609, line: 102, baseType: !2909, size: 64, offset: 768)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !608, file: !609, line: 103, baseType: !802, size: 64, offset: 832)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !608, file: !609, line: 104, baseType: !125, size: 64, offset: 896)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !608, file: !609, line: 105, baseType: !124, size: 64, offset: 960)
!3323 = !DIDerivedType(tag: DW_TAG_member, scope: !608, file: !609, line: 107, baseType: !3324, size: 128, offset: 1024)
!3324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !608, file: !609, line: 107, size: 128, elements: !3325)
!3325 = !{!3326, !3327}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3324, file: !609, line: 108, baseType: !137, size: 128)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3324, file: !609, line: 109, baseType: !3328, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !608, file: !609, line: 111, baseType: !137, size: 128, offset: 1152)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !608, file: !609, line: 112, baseType: !137, size: 128, offset: 1280)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !608, file: !609, line: 120, baseType: !3332, size: 128, offset: 1408)
!3332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !608, file: !609, line: 116, size: 128, elements: !3333)
!3333 = !{!3334, !3335, !3336}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3332, file: !609, line: 117, baseType: !844, size: 128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3332, file: !609, line: 118, baseType: !623, size: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3332, file: !609, line: 119, baseType: !589, size: 128, align: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !603, file: !604, line: 73, baseType: !802, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !603, file: !604, line: 74, baseType: !155, size: 32, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !598, file: !599, line: 10, baseType: !607, size: 64, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !577, file: !50, line: 922, baseType: !650, size: 64, offset: 256)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !577, file: !50, line: 923, baseType: !3058, size: 64, offset: 320)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !577, file: !50, line: 929, baseType: !316, offset: 384)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !577, file: !50, line: 930, baseType: !49, size: 32, offset: 384)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !577, file: !50, line: 931, baseType: !953, size: 64, offset: 448)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !577, file: !50, line: 932, baseType: !7, size: 32, offset: 512)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !577, file: !50, line: 933, baseType: !2905, size: 32, offset: 544)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !577, file: !50, line: 934, baseType: !1376, size: 192, offset: 576)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !577, file: !50, line: 935, baseType: !734, size: 64, offset: 768)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !577, file: !50, line: 936, baseType: !3350, size: 192, offset: 832)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !50, line: 885, size: 192, elements: !3351)
!3351 = !{!3352, !3353, !3354, !3355, !3356, !3357}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3350, file: !50, line: 886, baseType: !3158)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3350, file: !50, line: 887, baseType: !1672, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3350, file: !50, line: 888, baseType: !58, size: 32, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3350, file: !50, line: 889, baseType: !450, size: 32, offset: 96)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3350, file: !50, line: 889, baseType: !450, size: 32, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3350, file: !50, line: 890, baseType: !155, size: 32, offset: 160)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !577, file: !50, line: 937, baseType: !1742, size: 64, offset: 1024)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !577, file: !50, line: 938, baseType: !3360, size: 256, offset: 1088)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !50, line: 896, size: 256, elements: !3361)
!3361 = !{!3362, !3363, !3364, !3365, !3366, !3367}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3360, file: !50, line: 897, baseType: !125, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3360, file: !50, line: 898, baseType: !7, size: 32, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3360, file: !50, line: 899, baseType: !7, size: 32, offset: 96)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3360, file: !50, line: 902, baseType: !7, size: 32, offset: 128)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3360, file: !50, line: 903, baseType: !7, size: 32, offset: 160)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3360, file: !50, line: 904, baseType: !734, size: 64, offset: 192)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !577, file: !50, line: 940, baseType: !643, size: 64, offset: 1344)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !577, file: !50, line: 945, baseType: !124, size: 64, offset: 1408)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !577, file: !50, line: 949, baseType: !137, size: 128, offset: 1472)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !577, file: !50, line: 950, baseType: !137, size: 128, offset: 1600)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !577, file: !50, line: 952, baseType: !936, size: 64, offset: 1728)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !577, file: !50, line: 953, baseType: !1112, size: 32, offset: 1792)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !577, file: !50, line: 954, baseType: !1112, size: 32, offset: 1824)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !572, file: !467, line: 201, baseType: !528, size: 64, offset: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !572, file: !467, line: 202, baseType: !124, size: 64, offset: 192)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !572, file: !467, line: 205, baseType: !1376, size: 192, offset: 256)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !572, file: !467, line: 206, baseType: !1376, size: 192, offset: 448)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !572, file: !467, line: 207, baseType: !155, size: 32, offset: 640)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !572, file: !467, line: 208, baseType: !137, size: 128, offset: 704)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !572, file: !467, line: 209, baseType: !357, size: 64, offset: 832)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !572, file: !467, line: 211, baseType: !400, size: 64, offset: 896)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !572, file: !467, line: 212, baseType: !419, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !572, file: !467, line: 213, baseType: !419, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !572, file: !467, line: 214, baseType: !1212, size: 64, offset: 1024)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !565, file: !467, line: 223, baseType: !3387, size: 64, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{null, !571}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !565, file: !467, line: 236, baseType: !3391, size: 64, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!155, !528, !124}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !565, file: !467, line: 238, baseType: !3395, size: 64, offset: 192)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!124, !528, !3071}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !565, file: !467, line: 239, baseType: !3399, size: 64, offset: 256)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!124, !528, !124, !3071}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !565, file: !467, line: 240, baseType: !3403, size: 64, offset: 320)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{null, !528, !124}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !565, file: !467, line: 242, baseType: !3407, size: 64, offset: 384)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!387, !571, !357, !400, !734}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !565, file: !467, line: 252, baseType: !400, size: 64, offset: 448)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !565, file: !467, line: 259, baseType: !419, size: 8, offset: 512)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !565, file: !467, line: 260, baseType: !3407, size: 64, offset: 576)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !565, file: !467, line: 263, baseType: !3414, size: 64, offset: 640)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!3100, !571, !3102}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !565, file: !467, line: 266, baseType: !3418, size: 64, offset: 704)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!155, !571, !1184}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !560, file: !467, line: 109, baseType: !3422, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !467, line: 31, flags: DIFlagFwdDecl)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !560, file: !467, line: 110, baseType: !734, size: 64, offset: 128)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !560, file: !467, line: 111, baseType: !465, size: 64, offset: 192)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !466, file: !467, line: 148, baseType: !124, size: 64, offset: 768)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !466, file: !467, line: 154, baseType: !643, size: 64, offset: 832)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !467, line: 156, baseType: !206, size: 16, offset: 896)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !466, file: !467, line: 157, baseType: !303, size: 16, offset: 912)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !466, file: !467, line: 158, baseType: !3431, size: 64, offset: 960)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !467, line: 32, flags: DIFlagFwdDecl)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !305, file: !108, line: 71, baseType: !3434, size: 32, offset: 448)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3435, line: 19, size: 32, elements: !3436)
!3435 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3436 = !{!3437}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3434, file: !3435, line: 20, baseType: !1433, size: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !305, file: !108, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !305, file: !108, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !305, file: !108, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !305, file: !108, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !305, file: !108, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !295, file: !296, line: 88, baseType: !3444, size: 64, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!303, !304, !3447, !155}
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !296, line: 168, size: 448, elements: !3449)
!3449 = !{!3450, !3451, !3452, !3453, !3457, !3458}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3448, file: !296, line: 169, baseType: !392, size: 128)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3448, file: !296, line: 170, baseType: !400, size: 64, offset: 128)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3448, file: !296, line: 171, baseType: !124, size: 64, offset: 192)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3448, file: !296, line: 172, baseType: !3454, size: 64, offset: 256)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!387, !576, !304, !3447, !357, !734, !400}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3448, file: !296, line: 174, baseType: !3454, size: 64, offset: 320)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3448, file: !296, line: 176, baseType: !3459, size: 64, offset: 384)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!155, !576, !304, !3447, !1184}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !295, file: !296, line: 90, baseType: !404, size: 64, offset: 192)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !295, file: !296, line: 91, baseType: !3464, size: 64, offset: 256)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !226, file: !181, line: 870, baseType: !3466, size: 1152, offset: 768)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !102, line: 95, size: 1152, elements: !3467)
!3467 = !{!3468, !3469, !3968, !3969, !3970, !3971, !3972, !3984, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3466, file: !102, line: 96, baseType: !230, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3466, file: !102, line: 97, baseType: !3470, size: 64, offset: 64)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3472, line: 82, size: 1408, elements: !3473)
!3472 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3473 = !{!3474, !3475, !3476, !3939, !3940, !3941, !3942, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3957, !3958, !3959, !3960, !3961, !3965, !3966, !3967}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3471, file: !3472, line: 83, baseType: !230, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3471, file: !3472, line: 84, baseType: !230, size: 64, offset: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3471, file: !3472, line: 85, baseType: !3477, size: 64, offset: 128)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !67, line: 461, size: 5568, elements: !3479)
!3479 = !{!3480, !3481, !3482, !3485, !3486, !3537, !3538, !3540, !3541, !3542, !3543, !3552, !3657, !3670, !3864, !3865, !3869, !3871, !3872, !3873, !3877, !3883, !3884, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3927, !3928, !3929, !3932, !3935, !3936, !3937, !3938}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3478, file: !67, line: 462, baseType: !305, size: 512)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3478, file: !67, line: 463, baseType: !3477, size: 64, offset: 512)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3478, file: !67, line: 465, baseType: !3483, size: 64, offset: 576)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !67, line: 36, flags: DIFlagFwdDecl)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3478, file: !67, line: 467, baseType: !230, size: 64, offset: 640)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3478, file: !67, line: 468, baseType: !3487, size: 64, offset: 704)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3489)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !67, line: 87, size: 384, elements: !3490)
!3490 = !{!3491, !3492, !3493, !3497, !3502, !3506}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3489, file: !67, line: 88, baseType: !230, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3489, file: !67, line: 89, baseType: !292, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3489, file: !67, line: 90, baseType: !3494, size: 64, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!155, !3477, !352}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3489, file: !67, line: 91, baseType: !3498, size: 64, offset: 192)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!357, !3477, !3501, !449, !457}
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3489, file: !67, line: 93, baseType: !3503, size: 64, offset: 256)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{null, !3477}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3489, file: !67, line: 95, baseType: !3507, size: 64, offset: 320)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3509)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !74, line: 278, size: 1472, elements: !3510)
!3510 = !{!3511, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3509, file: !74, line: 279, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!155, !3477}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3509, file: !74, line: 280, baseType: !3503, size: 64, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3509, file: !74, line: 281, baseType: !3512, size: 64, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3509, file: !74, line: 282, baseType: !3512, size: 64, offset: 192)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3509, file: !74, line: 283, baseType: !3512, size: 64, offset: 256)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3509, file: !74, line: 284, baseType: !3512, size: 64, offset: 320)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3509, file: !74, line: 285, baseType: !3512, size: 64, offset: 384)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3509, file: !74, line: 286, baseType: !3512, size: 64, offset: 448)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3509, file: !74, line: 287, baseType: !3512, size: 64, offset: 512)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3509, file: !74, line: 288, baseType: !3512, size: 64, offset: 576)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3509, file: !74, line: 289, baseType: !3512, size: 64, offset: 640)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3509, file: !74, line: 290, baseType: !3512, size: 64, offset: 704)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3509, file: !74, line: 291, baseType: !3512, size: 64, offset: 768)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3509, file: !74, line: 292, baseType: !3512, size: 64, offset: 832)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3509, file: !74, line: 293, baseType: !3512, size: 64, offset: 896)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3509, file: !74, line: 294, baseType: !3512, size: 64, offset: 960)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3509, file: !74, line: 295, baseType: !3512, size: 64, offset: 1024)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3509, file: !74, line: 296, baseType: !3512, size: 64, offset: 1088)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3509, file: !74, line: 297, baseType: !3512, size: 64, offset: 1152)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3509, file: !74, line: 298, baseType: !3512, size: 64, offset: 1216)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3509, file: !74, line: 299, baseType: !3512, size: 64, offset: 1280)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3509, file: !74, line: 300, baseType: !3512, size: 64, offset: 1344)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3509, file: !74, line: 301, baseType: !3512, size: 64, offset: 1408)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3478, file: !67, line: 470, baseType: !3470, size: 64, offset: 768)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3478, file: !67, line: 471, baseType: !3539, size: 64, offset: 832)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3478, file: !67, line: 473, baseType: !124, size: 64, offset: 896)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3478, file: !67, line: 475, baseType: !124, size: 64, offset: 960)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3478, file: !67, line: 480, baseType: !1376, size: 192, offset: 1024)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3478, file: !67, line: 484, baseType: !3544, size: 576, offset: 1216)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !67, line: 361, size: 576, elements: !3545)
!3545 = !{!3546, !3547, !3548, !3549, !3550, !3551}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3544, file: !67, line: 362, baseType: !137, size: 128)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3544, file: !67, line: 363, baseType: !137, size: 128, offset: 128)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3544, file: !67, line: 364, baseType: !137, size: 128, offset: 256)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3544, file: !67, line: 365, baseType: !137, size: 128, offset: 384)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3544, file: !67, line: 366, baseType: !419, size: 8, offset: 512)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3544, file: !67, line: 367, baseType: !66, size: 32, offset: 544)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3478, file: !67, line: 485, baseType: !3553, size: 2304, offset: 1792)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !74, line: 565, size: 2304, elements: !3554)
!3554 = !{!3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3650, !3654}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3553, file: !74, line: 566, baseType: !259, size: 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3553, file: !74, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3553, file: !74, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3553, file: !74, line: 569, baseType: !419, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3553, file: !74, line: 570, baseType: !419, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3553, file: !74, line: 571, baseType: !419, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3553, file: !74, line: 572, baseType: !419, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3553, file: !74, line: 573, baseType: !419, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3553, file: !74, line: 574, baseType: !419, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3553, file: !74, line: 575, baseType: !419, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3553, file: !74, line: 576, baseType: !419, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3553, file: !74, line: 577, baseType: !132, size: 32, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3553, file: !74, line: 578, baseType: !316, offset: 96)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3553, file: !74, line: 580, baseType: !137, size: 128, offset: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3553, file: !74, line: 581, baseType: !1697, size: 192, offset: 256)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3553, file: !74, line: 582, baseType: !3571, size: 64, offset: 448)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3573, line: 43, size: 1472, elements: !3574)
!3573 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3574 = !{!3575, !3576, !3577, !3578, !3579, !3582, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3572, file: !3573, line: 44, baseType: !230, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3572, file: !3573, line: 45, baseType: !155, size: 32, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3572, file: !3573, line: 46, baseType: !137, size: 128, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3572, file: !3573, line: 47, baseType: !316, offset: 256)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3572, file: !3573, line: 48, baseType: !3580, size: 64, offset: 256)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !74, line: 533, flags: DIFlagFwdDecl)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3572, file: !3573, line: 49, baseType: !3583, size: 320, offset: 320)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3584, line: 11, size: 320, elements: !3585)
!3584 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3585 = !{!3586, !3587, !3588, !3593}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3583, file: !3584, line: 16, baseType: !844, size: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3583, file: !3584, line: 17, baseType: !125, size: 64, offset: 128)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3583, file: !3584, line: 18, baseType: !3589, size: 64, offset: 192)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{null, !3592}
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3583, file: !3584, line: 19, baseType: !132, size: 32, offset: 256)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3572, file: !3573, line: 50, baseType: !125, size: 64, offset: 640)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3572, file: !3573, line: 51, baseType: !1503, size: 64, offset: 704)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3572, file: !3573, line: 52, baseType: !1503, size: 64, offset: 768)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3572, file: !3573, line: 53, baseType: !1503, size: 64, offset: 832)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3572, file: !3573, line: 54, baseType: !1503, size: 64, offset: 896)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3572, file: !3573, line: 55, baseType: !1503, size: 64, offset: 960)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3572, file: !3573, line: 56, baseType: !125, size: 64, offset: 1024)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3572, file: !3573, line: 57, baseType: !125, size: 64, offset: 1088)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3572, file: !3573, line: 58, baseType: !125, size: 64, offset: 1152)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3572, file: !3573, line: 59, baseType: !125, size: 64, offset: 1216)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3572, file: !3573, line: 60, baseType: !125, size: 64, offset: 1280)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3572, file: !3573, line: 61, baseType: !3477, size: 64, offset: 1344)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3572, file: !3573, line: 62, baseType: !419, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3572, file: !3573, line: 63, baseType: !419, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3553, file: !74, line: 583, baseType: !419, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3553, file: !74, line: 584, baseType: !419, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3553, file: !74, line: 585, baseType: !419, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3553, file: !74, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3553, file: !74, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3553, file: !74, line: 592, baseType: !1495, size: 512, offset: 576)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3553, file: !74, line: 593, baseType: !643, size: 64, offset: 1088)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3553, file: !74, line: 594, baseType: !2154, size: 256, offset: 1152)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3553, file: !74, line: 595, baseType: !549, size: 128, offset: 1408)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3553, file: !74, line: 596, baseType: !3580, size: 64, offset: 1536)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3553, file: !74, line: 597, baseType: !470, size: 32, offset: 1600)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3553, file: !74, line: 598, baseType: !470, size: 32, offset: 1632)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3553, file: !74, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3553, file: !74, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3553, file: !74, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3553, file: !74, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3553, file: !74, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3553, file: !74, line: 604, baseType: !419, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3553, file: !74, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3553, file: !74, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3553, file: !74, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3553, file: !74, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3553, file: !74, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3553, file: !74, line: 610, baseType: !7, size: 32, offset: 1696)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3553, file: !74, line: 611, baseType: !73, size: 32, offset: 1728)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3553, file: !74, line: 612, baseType: !81, size: 32, offset: 1760)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3553, file: !74, line: 613, baseType: !155, size: 32, offset: 1792)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3553, file: !74, line: 614, baseType: !155, size: 32, offset: 1824)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3553, file: !74, line: 615, baseType: !643, size: 64, offset: 1856)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3553, file: !74, line: 616, baseType: !643, size: 64, offset: 1920)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3553, file: !74, line: 617, baseType: !643, size: 64, offset: 1984)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3553, file: !74, line: 618, baseType: !643, size: 64, offset: 2048)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3553, file: !74, line: 620, baseType: !3641, size: 64, offset: 2112)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !74, line: 536, size: 256, elements: !3643)
!3643 = !{!3644, !3645, !3646, !3647}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3642, file: !74, line: 537, baseType: !316)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3642, file: !74, line: 538, baseType: !7, size: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3642, file: !74, line: 540, baseType: !137, size: 128, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3642, file: !74, line: 543, baseType: !3648, size: 64, offset: 192)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !74, line: 534, flags: DIFlagFwdDecl)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3553, file: !74, line: 621, baseType: !3651, size: 64, offset: 2176)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{null, !3477, !1645}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3553, file: !74, line: 622, baseType: !3655, size: 64, offset: 2240)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !74, line: 622, flags: DIFlagFwdDecl)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3478, file: !67, line: 486, baseType: !3658, size: 64, offset: 4096)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !74, line: 642, size: 1792, elements: !3660)
!3660 = !{!3661, !3662, !3663, !3667, !3668, !3669}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3659, file: !74, line: 643, baseType: !3509, size: 1472)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3659, file: !74, line: 644, baseType: !3512, size: 64, offset: 1472)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3659, file: !74, line: 645, baseType: !3664, size: 64, offset: 1536)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{null, !3477, !419}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3659, file: !74, line: 646, baseType: !3512, size: 64, offset: 1600)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3659, file: !74, line: 647, baseType: !3503, size: 64, offset: 1664)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3659, file: !74, line: 648, baseType: !3503, size: 64, offset: 1728)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3478, file: !67, line: 493, baseType: !3671, size: 64, offset: 4160)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !88, line: 162, size: 1088, elements: !3673)
!3673 = !{!3674, !3675, !3676, !3848, !3849, !3850, !3851, !3852, !3853, !3856, !3857, !3858, !3859, !3860, !3861, !3862}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3672, file: !88, line: 163, baseType: !137, size: 128)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3672, file: !88, line: 164, baseType: !230, size: 64, offset: 128)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3672, file: !88, line: 165, baseType: !3677, size: 64, offset: 192)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3679)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !88, line: 105, size: 640, elements: !3680)
!3680 = !{!3681, !3799, !3810, !3815, !3819, !3825, !3829, !3833, !3840, !3844}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3679, file: !88, line: 106, baseType: !3682, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!155, !3671, !3685, !87}
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3687, line: 51, size: 1344, elements: !3688)
!3687 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3688 = !{!3689, !3690, !3692, !3693, !3783, !3792, !3793, !3794, !3795, !3796, !3797, !3798}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3686, file: !3687, line: 52, baseType: !230, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3686, file: !3687, line: 53, baseType: !3691, size: 32, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3687, line: 28, baseType: !132)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3686, file: !3687, line: 54, baseType: !230, size: 64, offset: 128)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3686, file: !3687, line: 55, baseType: !3694, size: 192, offset: 192)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3695, line: 17, size: 192, elements: !3696)
!3695 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3696 = !{!3697, !3699, !3782}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3694, file: !3695, line: 18, baseType: !3698, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3694, file: !3695, line: 19, baseType: !3700, size: 64, offset: 64)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3702)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3695, line: 110, size: 1152, elements: !3703)
!3703 = !{!3704, !3708, !3712, !3718, !3724, !3728, !3732, !3737, !3741, !3742, !3746, !3750, !3754, !3765, !3766, !3767, !3768, !3778}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3702, file: !3695, line: 111, baseType: !3705, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!3698, !3698}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3702, file: !3695, line: 112, baseType: !3709, size: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{null, !3698}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3702, file: !3695, line: 113, baseType: !3713, size: 64, offset: 128)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!419, !3716}
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3694)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3702, file: !3695, line: 114, baseType: !3719, size: 64, offset: 192)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!429, !3716, !3722}
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3478)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3702, file: !3695, line: 116, baseType: !3725, size: 64, offset: 256)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!419, !3716, !230}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3702, file: !3695, line: 118, baseType: !3729, size: 64, offset: 320)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!155, !3716, !230, !7, !124, !400}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3702, file: !3695, line: 123, baseType: !3733, size: 64, offset: 384)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!155, !3716, !230, !3736, !400}
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3702, file: !3695, line: 126, baseType: !3738, size: 64, offset: 448)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!230, !3716}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3702, file: !3695, line: 127, baseType: !3738, size: 64, offset: 512)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3702, file: !3695, line: 128, baseType: !3743, size: 64, offset: 576)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!3698, !3716}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3702, file: !3695, line: 130, baseType: !3747, size: 64, offset: 640)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!3698, !3716, !3698}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3702, file: !3695, line: 133, baseType: !3751, size: 64, offset: 704)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!3698, !3716, !230}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3702, file: !3695, line: 135, baseType: !3755, size: 64, offset: 768)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!155, !3716, !230, !230, !7, !7, !3758}
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3695, line: 43, size: 640, elements: !3760)
!3760 = !{!3761, !3762, !3763}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3759, file: !3695, line: 44, baseType: !3698, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3759, file: !3695, line: 45, baseType: !7, size: 32, offset: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3759, file: !3695, line: 46, baseType: !3764, size: 512, offset: 128)
!3764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 512, elements: !1533)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3702, file: !3695, line: 140, baseType: !3747, size: 64, offset: 832)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3702, file: !3695, line: 143, baseType: !3743, size: 64, offset: 896)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3702, file: !3695, line: 145, baseType: !3705, size: 64, offset: 960)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3702, file: !3695, line: 146, baseType: !3769, size: 64, offset: 1024)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!155, !3716, !3772}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3695, line: 29, size: 128, elements: !3774)
!3774 = !{!3775, !3776, !3777}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3773, file: !3695, line: 30, baseType: !7, size: 32)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3773, file: !3695, line: 31, baseType: !7, size: 32, offset: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3773, file: !3695, line: 32, baseType: !3716, size: 64, offset: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3702, file: !3695, line: 148, baseType: !3779, size: 64, offset: 1088)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!155, !3716, !3477}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3694, file: !3695, line: 20, baseType: !3477, size: 64, offset: 128)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3686, file: !3687, line: 57, baseType: !3784, size: 64, offset: 384)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3687, line: 31, size: 704, elements: !3786)
!3786 = !{!3787, !3788, !3789, !3790, !3791}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3785, file: !3687, line: 32, baseType: !357, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3785, file: !3687, line: 33, baseType: !155, size: 32, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3785, file: !3687, line: 34, baseType: !124, size: 64, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3785, file: !3687, line: 35, baseType: !3784, size: 64, offset: 192)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3785, file: !3687, line: 43, baseType: !3448, size: 448, offset: 256)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3686, file: !3687, line: 58, baseType: !3784, size: 64, offset: 448)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3686, file: !3687, line: 59, baseType: !3685, size: 64, offset: 512)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3686, file: !3687, line: 60, baseType: !3685, size: 64, offset: 576)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3686, file: !3687, line: 61, baseType: !3685, size: 64, offset: 640)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3686, file: !3687, line: 63, baseType: !305, size: 512, offset: 704)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3686, file: !3687, line: 65, baseType: !125, size: 64, offset: 1216)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3686, file: !3687, line: 66, baseType: !124, size: 64, offset: 1280)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3679, file: !88, line: 108, baseType: !3800, size: 64, offset: 64)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!155, !3671, !3803, !87}
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !88, line: 63, size: 640, elements: !3805)
!3805 = !{!3806, !3807, !3808}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3804, file: !88, line: 64, baseType: !3698, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3804, file: !88, line: 65, baseType: !155, size: 32, offset: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3804, file: !88, line: 66, baseType: !3809, size: 512, offset: 96)
!3809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 512, elements: !1930)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3679, file: !88, line: 110, baseType: !3811, size: 64, offset: 128)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!155, !3671, !7, !3814}
!3814 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !138, line: 164, baseType: !125)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3679, file: !88, line: 111, baseType: !3816, size: 64, offset: 192)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{null, !3671, !7}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3679, file: !88, line: 112, baseType: !3820, size: 64, offset: 256)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!155, !3671, !3685, !3823, !7, !223, !2878}
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3679, file: !88, line: 117, baseType: !3826, size: 64, offset: 320)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!155, !3671, !7, !7, !124}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3679, file: !88, line: 119, baseType: !3830, size: 64, offset: 384)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{null, !3671, !7, !7}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3679, file: !88, line: 121, baseType: !3834, size: 64, offset: 448)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!155, !3671, !3837, !419}
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3839, line: 11, flags: DIFlagFwdDecl)
!3839 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3679, file: !88, line: 122, baseType: !3841, size: 64, offset: 512)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{null, !3671, !3837}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3679, file: !88, line: 123, baseType: !3845, size: 64, offset: 576)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!155, !3671, !3803, !223, !2878}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3672, file: !88, line: 166, baseType: !124, size: 64, offset: 256)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3672, file: !88, line: 167, baseType: !7, size: 32, offset: 320)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3672, file: !88, line: 168, baseType: !7, size: 32, offset: 352)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3672, file: !88, line: 171, baseType: !3698, size: 64, offset: 384)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3672, file: !88, line: 172, baseType: !87, size: 32, offset: 448)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3672, file: !88, line: 173, baseType: !3854, size: 64, offset: 512)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !88, line: 134, flags: DIFlagFwdDecl)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3672, file: !88, line: 175, baseType: !3671, size: 64, offset: 576)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3672, file: !88, line: 182, baseType: !3814, size: 64, offset: 640)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3672, file: !88, line: 183, baseType: !7, size: 32, offset: 704)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3672, file: !88, line: 184, baseType: !7, size: 32, offset: 736)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3672, file: !88, line: 185, baseType: !509, size: 128, offset: 768)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3672, file: !88, line: 186, baseType: !1376, size: 192, offset: 896)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3672, file: !88, line: 187, baseType: !3863, offset: 1088)
!3863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2526)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3478, file: !67, line: 499, baseType: !137, size: 128, offset: 4224)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3478, file: !67, line: 502, baseType: !3866, size: 64, offset: 4352)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3868)
!3868 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !67, line: 502, flags: DIFlagFwdDecl)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3478, file: !67, line: 504, baseType: !3870, size: 64, offset: 4416)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3478, file: !67, line: 505, baseType: !643, size: 64, offset: 4480)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3478, file: !67, line: 510, baseType: !643, size: 64, offset: 4544)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3478, file: !67, line: 511, baseType: !3874, size: 64, offset: 4608)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3876)
!3876 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !67, line: 511, flags: DIFlagFwdDecl)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3478, file: !67, line: 513, baseType: !3878, size: 64, offset: 4672)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !67, line: 288, size: 128, elements: !3880)
!3880 = !{!3881, !3882}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3879, file: !67, line: 293, baseType: !7, size: 32)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3879, file: !67, line: 294, baseType: !125, size: 64, offset: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3478, file: !67, line: 515, baseType: !137, size: 128, offset: 4736)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3478, file: !67, line: 526, baseType: !3885, offset: 4864)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3886, line: 5, elements: !330)
!3886 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3478, file: !67, line: 528, baseType: !3685, size: 64, offset: 4864)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3478, file: !67, line: 529, baseType: !3698, size: 64, offset: 4928)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3478, file: !67, line: 534, baseType: !716, size: 32, offset: 4992)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3478, file: !67, line: 535, baseType: !132, size: 32, offset: 5024)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3478, file: !67, line: 537, baseType: !316, offset: 5056)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3478, file: !67, line: 538, baseType: !137, size: 128, offset: 5056)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3478, file: !67, line: 540, baseType: !3894, size: 64, offset: 5184)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3896, line: 54, size: 960, elements: !3897)
!3896 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3897 = !{!3898, !3899, !3900, !3901, !3902, !3903, !3904, !3908, !3912, !3913, !3914, !3915, !3919, !3923, !3924}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3895, file: !3896, line: 55, baseType: !230, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3895, file: !3896, line: 56, baseType: !835, size: 64, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3895, file: !3896, line: 58, baseType: !292, size: 64, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3895, file: !3896, line: 59, baseType: !292, size: 64, offset: 192)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3895, file: !3896, line: 60, baseType: !304, size: 64, offset: 256)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3895, file: !3896, line: 62, baseType: !3494, size: 64, offset: 320)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3895, file: !3896, line: 63, baseType: !3905, size: 64, offset: 384)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!357, !3477, !3501}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3895, file: !3896, line: 65, baseType: !3909, size: 64, offset: 448)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{null, !3894}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3895, file: !3896, line: 66, baseType: !3503, size: 64, offset: 512)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3895, file: !3896, line: 68, baseType: !3512, size: 64, offset: 576)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3895, file: !3896, line: 70, baseType: !410, size: 64, offset: 640)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3895, file: !3896, line: 71, baseType: !3916, size: 64, offset: 704)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!429, !3477}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3895, file: !3896, line: 73, baseType: !3920, size: 64, offset: 768)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{null, !3477, !449, !457}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3895, file: !3896, line: 75, baseType: !3507, size: 64, offset: 832)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3895, file: !3896, line: 77, baseType: !3925, size: 64, offset: 896)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3472, line: 111, flags: DIFlagFwdDecl)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3478, file: !67, line: 541, baseType: !292, size: 64, offset: 5248)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3478, file: !67, line: 543, baseType: !3503, size: 64, offset: 5312)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3478, file: !67, line: 544, baseType: !3930, size: 64, offset: 5376)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !67, line: 45, flags: DIFlagFwdDecl)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3478, file: !67, line: 545, baseType: !3933, size: 64, offset: 5440)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !67, line: 47, flags: DIFlagFwdDecl)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3478, file: !67, line: 547, baseType: !419, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3478, file: !67, line: 548, baseType: !419, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3478, file: !67, line: 549, baseType: !419, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3478, file: !67, line: 550, baseType: !419, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3471, file: !3472, line: 86, baseType: !292, size: 64, offset: 192)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3471, file: !3472, line: 87, baseType: !292, size: 64, offset: 256)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3471, file: !3472, line: 88, baseType: !292, size: 64, offset: 320)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3471, file: !3472, line: 90, baseType: !3943, size: 64, offset: 384)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!155, !3477, !3539}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3471, file: !3472, line: 91, baseType: !3494, size: 64, offset: 448)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3471, file: !3472, line: 92, baseType: !3512, size: 64, offset: 512)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3471, file: !3472, line: 93, baseType: !3503, size: 64, offset: 576)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3471, file: !3472, line: 94, baseType: !3512, size: 64, offset: 640)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3471, file: !3472, line: 95, baseType: !3503, size: 64, offset: 704)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3471, file: !3472, line: 97, baseType: !3512, size: 64, offset: 768)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3471, file: !3472, line: 98, baseType: !3512, size: 64, offset: 832)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3471, file: !3472, line: 100, baseType: !3954, size: 64, offset: 896)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!155, !3477, !259}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3471, file: !3472, line: 101, baseType: !3512, size: 64, offset: 960)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3471, file: !3472, line: 103, baseType: !3512, size: 64, offset: 1024)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3471, file: !3472, line: 105, baseType: !3512, size: 64, offset: 1088)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3471, file: !3472, line: 107, baseType: !3507, size: 64, offset: 1152)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3471, file: !3472, line: 109, baseType: !3962, size: 64, offset: 1216)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3964)
!3964 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3472, line: 109, flags: DIFlagFwdDecl)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3471, file: !3472, line: 111, baseType: !3925, size: 64, offset: 1280)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3471, file: !3472, line: 112, baseType: !850, offset: 1344)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3471, file: !3472, line: 114, baseType: !419, size: 8, offset: 1344)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3466, file: !102, line: 99, baseType: !835, size: 64, offset: 128)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3466, file: !102, line: 100, baseType: !230, size: 64, offset: 192)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3466, file: !102, line: 102, baseType: !419, size: 8, offset: 256)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3466, file: !102, line: 103, baseType: !101, size: 32, offset: 288)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3466, file: !102, line: 105, baseType: !3973, size: 64, offset: 320)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3975)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !237, line: 262, size: 1600, elements: !3976)
!3976 = !{!3977, !3978, !3979, !3983}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3975, file: !237, line: 263, baseType: !2895, size: 256)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3975, file: !237, line: 264, baseType: !2895, size: 256, offset: 256)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3975, file: !237, line: 265, baseType: !3980, size: 1024, offset: 512)
!3980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 1024, elements: !3981)
!3981 = !{!3982}
!3982 = !DISubrange(count: 128)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3975, file: !237, line: 266, baseType: !429, size: 64, offset: 1536)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3466, file: !102, line: 106, baseType: !3985, size: 64, offset: 384)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3987)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !237, line: 210, size: 256, elements: !3988)
!3988 = !{!3989, !3993, !3994, !3995}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3987, file: !237, line: 211, baseType: !3990, size: 72)
!3990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 72, elements: !3991)
!3991 = !{!3992}
!3992 = !DISubrange(count: 9)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3987, file: !237, line: 212, baseType: !246, size: 64, offset: 128)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3987, file: !237, line: 213, baseType: !133, size: 32, offset: 192)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3987, file: !237, line: 214, baseType: !133, size: 32, offset: 224)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3466, file: !102, line: 108, baseType: !3512, size: 64, offset: 448)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3466, file: !102, line: 109, baseType: !3503, size: 64, offset: 512)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3466, file: !102, line: 110, baseType: !3512, size: 64, offset: 576)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3466, file: !102, line: 111, baseType: !3503, size: 64, offset: 640)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3466, file: !102, line: 112, baseType: !3954, size: 64, offset: 704)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3466, file: !102, line: 113, baseType: !3512, size: 64, offset: 768)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3466, file: !102, line: 114, baseType: !292, size: 64, offset: 832)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3466, file: !102, line: 115, baseType: !292, size: 64, offset: 896)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3466, file: !102, line: 117, baseType: !3507, size: 64, offset: 960)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3466, file: !102, line: 118, baseType: !3503, size: 64, offset: 1024)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3466, file: !102, line: 120, baseType: !4007, size: 64, offset: 1088)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !102, line: 120, flags: DIFlagFwdDecl)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !226, file: !181, line: 871, baseType: !4010, size: 128, offset: 1920)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !181, line: 759, size: 128, elements: !4011)
!4011 = !{!4012, !4013}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4010, file: !181, line: 760, baseType: !316)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4010, file: !181, line: 761, baseType: !137, size: 128)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !193, file: !181, line: 340, baseType: !643, size: 64, offset: 832)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !193, file: !181, line: 346, baseType: !3879, size: 128, offset: 896)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !193, file: !181, line: 348, baseType: !4017, size: 32, offset: 1024)
!4017 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !181, line: 155, baseType: !155)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !193, file: !181, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !193, file: !181, line: 352, baseType: !127, size: 8, offset: 1064)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !193, file: !181, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !193, file: !181, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !193, file: !181, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !193, file: !181, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !193, file: !181, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !193, file: !181, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !193, file: !181, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !193, file: !181, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !193, file: !181, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !193, file: !181, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !193, file: !181, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !193, file: !181, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !193, file: !181, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !193, file: !181, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !193, file: !181, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !193, file: !181, line: 376, baseType: !7, size: 32, offset: 1120)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !193, file: !181, line: 377, baseType: !7, size: 32, offset: 1152)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !193, file: !181, line: 380, baseType: !4038, size: 64, offset: 1216)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !181, line: 303, flags: DIFlagFwdDecl)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !193, file: !181, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !193, file: !181, line: 383, baseType: !155, size: 32, offset: 1312)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !193, file: !181, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !193, file: !181, line: 387, baseType: !282, size: 32, offset: 1376)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !193, file: !181, line: 388, baseType: !3478, size: 5568, offset: 1408)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !193, file: !181, line: 390, baseType: !155, size: 32, offset: 6976)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !193, file: !181, line: 396, baseType: !7, size: 32, offset: 7008)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !193, file: !181, line: 397, baseType: !4048, size: 8704, offset: 7040)
!4048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4049, size: 8704, elements: !4062)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4050, line: 20, size: 512, elements: !4051)
!4050 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4051 = !{!4052, !4054, !4055, !4056, !4057, !4058, !4060, !4061}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4049, file: !4050, line: 21, baseType: !4053, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !138, line: 158, baseType: !2322)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4049, file: !4050, line: 22, baseType: !4053, size: 64, offset: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4049, file: !4050, line: 23, baseType: !230, size: 64, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4049, file: !4050, line: 24, baseType: !125, size: 64, offset: 192)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4049, file: !4050, line: 25, baseType: !125, size: 64, offset: 256)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4049, file: !4050, line: 26, baseType: !4059, size: 64, offset: 320)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4049, file: !4050, line: 26, baseType: !4059, size: 64, offset: 384)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4049, file: !4050, line: 26, baseType: !4059, size: 64, offset: 448)
!4062 = !{!4063}
!4063 = !DISubrange(count: 17)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !193, file: !181, line: 399, baseType: !419, size: 8, offset: 15744)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !193, file: !181, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !193, file: !181, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !193, file: !181, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !193, file: !181, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !193, file: !181, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !193, file: !181, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !193, file: !181, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !193, file: !181, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !193, file: !181, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !193, file: !181, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !193, file: !181, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !193, file: !181, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !193, file: !181, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !193, file: !181, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !193, file: !181, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !193, file: !181, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !193, file: !181, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !193, file: !181, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !193, file: !181, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !193, file: !181, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !193, file: !181, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !193, file: !181, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !193, file: !181, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !193, file: !181, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !193, file: !181, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !193, file: !181, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !193, file: !181, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !193, file: !181, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !193, file: !181, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !193, file: !181, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !193, file: !181, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !193, file: !181, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !193, file: !181, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !193, file: !181, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !193, file: !181, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !193, file: !181, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !193, file: !181, line: 450, baseType: !4102, size: 16, offset: 15792)
!4102 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !181, line: 206, baseType: !206)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !193, file: !181, line: 451, baseType: !470, size: 32, offset: 15808)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !193, file: !181, line: 453, baseType: !3809, size: 512, offset: 15840)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !193, file: !181, line: 454, baseType: !840, size: 64, offset: 16384)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !193, file: !181, line: 455, baseType: !3447, size: 64, offset: 16448)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !193, file: !181, line: 456, baseType: !155, size: 32, offset: 16512)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !193, file: !181, line: 457, baseType: !4109, size: 1088, offset: 16576)
!4109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3447, size: 1088, elements: !4062)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !193, file: !181, line: 458, baseType: !4109, size: 1088, offset: 17664)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !193, file: !181, line: 469, baseType: !292, size: 64, offset: 18752)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !193, file: !181, line: 471, baseType: !4113, size: 64, offset: 18816)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !181, line: 304, flags: DIFlagFwdDecl)
!4115 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !181, line: 478, baseType: !4116, size: 64, offset: 18880)
!4116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !181, line: 478, size: 64, elements: !4117)
!4117 = !{!4118, !4146}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4116, file: !181, line: 479, baseType: !4119, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4121, line: 323, size: 1024, elements: !4122)
!4121 = !DIFile(filename: "drivers/pci/hotplug/../pci.h", directory: "/home/lizy2001/genbc/linux")
!4122 = !{!4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4145}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4120, file: !4121, line: 324, baseType: !155, size: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !4120, file: !4121, line: 325, baseType: !155, size: 32, offset: 32)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4120, file: !4121, line: 326, baseType: !132, size: 32, offset: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4120, file: !4121, line: 327, baseType: !220, size: 16, offset: 96)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "total_VFs", scope: !4120, file: !4121, line: 328, baseType: !220, size: 16, offset: 112)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "initial_VFs", scope: !4120, file: !4121, line: 329, baseType: !220, size: 16, offset: 128)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "num_VFs", scope: !4120, file: !4121, line: 330, baseType: !220, size: 16, offset: 144)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4120, file: !4121, line: 331, baseType: !220, size: 16, offset: 160)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !4120, file: !4121, line: 332, baseType: !220, size: 16, offset: 176)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "vf_device", scope: !4120, file: !4121, line: 333, baseType: !220, size: 16, offset: 192)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "pgsz", scope: !4120, file: !4121, line: 334, baseType: !132, size: 32, offset: 224)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4120, file: !4121, line: 335, baseType: !127, size: 8, offset: 256)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "max_VF_buses", scope: !4120, file: !4121, line: 336, baseType: !127, size: 8, offset: 264)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "driver_max_VFs", scope: !4120, file: !4121, line: 337, baseType: !220, size: 16, offset: 272)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4120, file: !4121, line: 338, baseType: !192, size: 64, offset: 320)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4120, file: !4121, line: 339, baseType: !192, size: 64, offset: 384)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4120, file: !4121, line: 340, baseType: !132, size: 32, offset: 448)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4120, file: !4121, line: 341, baseType: !127, size: 8, offset: 480)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4120, file: !4121, line: 342, baseType: !220, size: 16, offset: 496)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4120, file: !4121, line: 343, baseType: !220, size: 16, offset: 512)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "barsz", scope: !4120, file: !4121, line: 344, baseType: !4144, size: 384, offset: 576)
!4144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4053, size: 384, elements: !1820)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !4120, file: !4121, line: 345, baseType: !419, size: 8, offset: 960)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4116, file: !181, line: 480, baseType: !192, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !193, file: !181, line: 482, baseType: !220, size: 16, offset: 18944)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !193, file: !181, line: 483, baseType: !127, size: 8, offset: 18960)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !193, file: !181, line: 497, baseType: !220, size: 16, offset: 18976)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !193, file: !181, line: 498, baseType: !2322, size: 64, offset: 19008)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !193, file: !181, line: 499, baseType: !400, size: 64, offset: 19072)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !193, file: !181, line: 500, baseType: !357, size: 64, offset: 19136)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !193, file: !181, line: 502, baseType: !125, size: 64, offset: 19200)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !185, file: !181, line: 611, baseType: !137, size: 128, offset: 512)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !185, file: !181, line: 613, baseType: !4156, size: 256, offset: 640)
!4156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4059, size: 256, elements: !1358)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !185, file: !181, line: 614, baseType: !137, size: 128, offset: 896)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !185, file: !181, line: 615, baseType: !4049, size: 512, offset: 1024)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !185, file: !181, line: 617, baseType: !4160, size: 64, offset: 1536)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !181, line: 731, size: 320, elements: !4162)
!4162 = !{!4163, !4167, !4171, !4175, !4179}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4161, file: !181, line: 732, baseType: !4164, size: 64)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!155, !184}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4161, file: !181, line: 733, baseType: !4168, size: 64, offset: 64)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{null, !184}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4161, file: !181, line: 734, baseType: !4172, size: 64, offset: 128)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!124, !184, !7, !155}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4161, file: !181, line: 735, baseType: !4176, size: 64, offset: 192)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!155, !184, !7, !155, !155, !1616}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4161, file: !181, line: 736, baseType: !4180, size: 64, offset: 256)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!155, !184, !7, !155, !155, !132}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !185, file: !181, line: 618, baseType: !4184, size: 64, offset: 1600)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !181, line: 537, flags: DIFlagFwdDecl)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !185, file: !181, line: 619, baseType: !124, size: 64, offset: 1664)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !185, file: !181, line: 620, baseType: !200, size: 64, offset: 1728)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !185, file: !181, line: 622, baseType: !131, size: 8, offset: 1792)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !185, file: !181, line: 623, baseType: !131, size: 8, offset: 1800)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !185, file: !181, line: 624, baseType: !131, size: 8, offset: 1808)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !185, file: !181, line: 625, baseType: !131, size: 8, offset: 1816)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !185, file: !181, line: 630, baseType: !4193, size: 384, offset: 1824)
!4193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 384, elements: !4194)
!4194 = !{!4195}
!4195 = !DISubrange(count: 48)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !185, file: !181, line: 632, baseType: !206, size: 16, offset: 2208)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !185, file: !181, line: 633, baseType: !4198, size: 16, offset: 2224)
!4198 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !181, line: 237, baseType: !206)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !185, file: !181, line: 634, baseType: !3477, size: 64, offset: 2240)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !185, file: !181, line: 635, baseType: !3478, size: 5568, offset: 2304)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !185, file: !181, line: 636, baseType: !3447, size: 64, offset: 7872)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !185, file: !181, line: 637, baseType: !3447, size: 64, offset: 7936)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !185, file: !181, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !180, file: !181, line: 71, baseType: !137, size: 128, offset: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !180, file: !181, line: 72, baseType: !142, size: 64, offset: 192)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !180, file: !181, line: 73, baseType: !131, size: 8, offset: 256)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !180, file: !181, line: 74, baseType: !305, size: 512, offset: 320)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !143, file: !144, line: 62, baseType: !835, size: 64, offset: 256)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !143, file: !144, line: 63, baseType: !230, size: 64, offset: 320)
!4210 = !{!4211, !4213, !4265, !4268, !4273, !4275, !4288, !4290, !4292, !4294, !0, !4296, !4298}
!4211 = !DIGlobalVariableExpression(var: !4212, expr: !DIExpression())
!4212 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_hotplug_init257", scope: !2, file: !3, line: 573, type: !124, isLocal: true, isDefinition: true)
!4213 = !DIGlobalVariableExpression(var: !4214, expr: !DIExpression())
!4214 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 579, type: !4215, isLocal: true, isDefinition: true, align: 64)
!4215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4216)
!4216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4217, line: 69, size: 320, elements: !4218)
!4217 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!4218 = !{!4219, !4220, !4221, !4237, !4239, !4243, !4244}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4216, file: !4217, line: 70, baseType: !230, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4216, file: !4217, line: 71, baseType: !835, size: 64, offset: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4216, file: !4217, line: 72, baseType: !4222, size: 64, offset: 128)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4224)
!4224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4217, line: 47, size: 256, elements: !4225)
!4225 = !{!4226, !4227, !4232, !4236}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4224, file: !4217, line: 49, baseType: !7, size: 32)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4224, file: !4217, line: 51, baseType: !4228, size: 64, offset: 64)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!155, !230, !4231}
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4224, file: !4217, line: 53, baseType: !4233, size: 64, offset: 128)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!155, !357, !4231}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4224, file: !4217, line: 55, baseType: !438, size: 64, offset: 192)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4216, file: !4217, line: 73, baseType: !4238, size: 16, offset: 192)
!4238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4216, file: !4217, line: 74, baseType: !4240, size: 8, offset: 208)
!4240 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !128, line: 16, baseType: !4241)
!4241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !130, line: 20, baseType: !4242)
!4242 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4216, file: !4217, line: 75, baseType: !127, size: 8, offset: 216)
!4244 = !DIDerivedType(tag: DW_TAG_member, scope: !4216, file: !4217, line: 76, baseType: !4245, size: 64, offset: 256)
!4245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4216, file: !4217, line: 76, size: 64, elements: !4246)
!4246 = !{!4247, !4248, !4255}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4245, file: !4217, line: 77, baseType: !124, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4245, file: !4217, line: 78, baseType: !4249, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4251)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4217, line: 86, size: 128, elements: !4252)
!4252 = !{!4253, !4254}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4251, file: !4217, line: 87, baseType: !7, size: 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4251, file: !4217, line: 88, baseType: !357, size: 64, offset: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4245, file: !4217, line: 79, baseType: !4256, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4258)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4217, line: 92, size: 256, elements: !4259)
!4259 = !{!4260, !4261, !4262, !4263, !4264}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4258, file: !4217, line: 94, baseType: !7, size: 32)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4258, file: !4217, line: 95, baseType: !7, size: 32, offset: 32)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4258, file: !4217, line: 96, baseType: !2878, size: 64, offset: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4258, file: !4217, line: 97, baseType: !4222, size: 64, offset: 128)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4258, file: !4217, line: 98, baseType: !124, size: 64, offset: 192)
!4265 = !DIGlobalVariableExpression(var: !4266, expr: !DIExpression())
!4266 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype258", scope: !2, file: !3, line: 579, type: !4267, isLocal: true, isDefinition: true, align: 8)
!4267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 256, elements: !2425)
!4268 = !DIGlobalVariableExpression(var: !4269, expr: !DIExpression())
!4269 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug259", scope: !2, file: !3, line: 580, type: !4270, isLocal: true, isDefinition: true, align: 8)
!4270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 424, elements: !4271)
!4271 = !{!4272}
!4272 = !DISubrange(count: 53)
!4273 = !DIGlobalVariableExpression(var: !4274, expr: !DIExpression())
!4274 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 43, type: !419, isLocal: true, isDefinition: true)
!4275 = !DIGlobalVariableExpression(var: !4276, expr: !DIExpression())
!4276 = distinct !DIGlobalVariable(name: "hotplug_slot_attr_power", scope: !2, file: !3, line: 118, type: !4277, isLocal: true, isDefinition: true)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot_attribute", file: !4121, line: 255, size: 256, elements: !4278)
!4278 = !{!4279, !4280, !4284}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4277, file: !4121, line: 256, baseType: !392, size: 128)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4277, file: !4121, line: 257, baseType: !4281, size: 64, offset: 128)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!387, !179, !357}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4277, file: !4121, line: 258, baseType: !4285, size: 64, offset: 192)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!387, !179, !230, !400}
!4288 = !DIGlobalVariableExpression(var: !4289, expr: !DIExpression())
!4289 = distinct !DIGlobalVariable(name: "hotplug_slot_attr_attention", scope: !2, file: !3, line: 163, type: !4277, isLocal: true, isDefinition: true)
!4290 = !DIGlobalVariableExpression(var: !4291, expr: !DIExpression())
!4291 = distinct !DIGlobalVariable(name: "hotplug_slot_attr_latch", scope: !2, file: !3, line: 181, type: !4277, isLocal: true, isDefinition: true)
!4292 = !DIGlobalVariableExpression(var: !4293, expr: !DIExpression())
!4293 = distinct !DIGlobalVariable(name: "hotplug_slot_attr_presence", scope: !2, file: !3, line: 198, type: !4277, isLocal: true, isDefinition: true)
!4294 = !DIGlobalVariableExpression(var: !4295, expr: !DIExpression())
!4295 = distinct !DIGlobalVariable(name: "hotplug_slot_attr_test", scope: !2, file: !3, line: 229, type: !4277, isLocal: true, isDefinition: true)
!4296 = !DIGlobalVariableExpression(var: !4297, expr: !DIExpression())
!4297 = distinct !DIGlobalVariable(name: "pci_hotplug_slot_list", scope: !2, file: !3, line: 45, type: !137, isLocal: true, isDefinition: true)
!4298 = !DIGlobalVariableExpression(var: !4299, expr: !DIExpression())
!4299 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 579, type: !4300, isLocal: true, isDefinition: true)
!4300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 144, elements: !4301)
!4301 = !{!4302}
!4302 = !DISubrange(count: 18)
!4303 = !{i32 7, !"Dwarf Version", i32 4}
!4304 = !{i32 2, !"Debug Info Version", i32 3}
!4305 = !{i32 1, !"wchar_size", i32 2}
!4306 = !{i32 1, !"Code Model", i32 2}
!4307 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4308 = distinct !DISubprogram(name: "__pci_hp_register", scope: !3, file: !3, line: 404, type: !4309, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!155, !142, !184, !155, !230, !835, !230}
!4311 = !DILocalVariable(name: "slot", arg: 1, scope: !4308, file: !3, line: 404, type: !142)
!4312 = !DILocation(line: 404, column: 44, scope: !4308)
!4313 = !DILocalVariable(name: "bus", arg: 2, scope: !4308, file: !3, line: 404, type: !184)
!4314 = !DILocation(line: 404, column: 66, scope: !4308)
!4315 = !DILocalVariable(name: "devnr", arg: 3, scope: !4308, file: !3, line: 405, type: !155)
!4316 = !DILocation(line: 405, column: 13, scope: !4308)
!4317 = !DILocalVariable(name: "name", arg: 4, scope: !4308, file: !3, line: 405, type: !230)
!4318 = !DILocation(line: 405, column: 32, scope: !4308)
!4319 = !DILocalVariable(name: "owner", arg: 5, scope: !4308, file: !3, line: 406, type: !835)
!4320 = !DILocation(line: 406, column: 24, scope: !4308)
!4321 = !DILocalVariable(name: "mod_name", arg: 6, scope: !4308, file: !3, line: 406, type: !230)
!4322 = !DILocation(line: 406, column: 43, scope: !4308)
!4323 = !DILocalVariable(name: "result", scope: !4308, file: !3, line: 408, type: !155)
!4324 = !DILocation(line: 408, column: 6, scope: !4308)
!4325 = !DILocation(line: 410, column: 31, scope: !4308)
!4326 = !DILocation(line: 410, column: 37, scope: !4308)
!4327 = !DILocation(line: 410, column: 42, scope: !4308)
!4328 = !DILocation(line: 410, column: 49, scope: !4308)
!4329 = !DILocation(line: 410, column: 55, scope: !4308)
!4330 = !DILocation(line: 410, column: 62, scope: !4308)
!4331 = !DILocation(line: 410, column: 11, scope: !4308)
!4332 = !DILocation(line: 410, column: 9, scope: !4308)
!4333 = !DILocation(line: 411, column: 6, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 411, column: 6)
!4335 = !DILocation(line: 411, column: 6, scope: !4308)
!4336 = !DILocation(line: 412, column: 10, scope: !4334)
!4337 = !DILocation(line: 412, column: 3, scope: !4334)
!4338 = !DILocation(line: 414, column: 22, scope: !4308)
!4339 = !DILocation(line: 414, column: 11, scope: !4308)
!4340 = !DILocation(line: 414, column: 9, scope: !4308)
!4341 = !DILocation(line: 415, column: 6, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 415, column: 6)
!4343 = !DILocation(line: 415, column: 6, scope: !4308)
!4344 = !DILocation(line: 416, column: 18, scope: !4342)
!4345 = !DILocation(line: 416, column: 3, scope: !4342)
!4346 = !DILocation(line: 418, column: 9, scope: !4308)
!4347 = !DILocation(line: 418, column: 2, scope: !4308)
!4348 = !DILocation(line: 419, column: 1, scope: !4308)
!4349 = distinct !DISubprogram(name: "__pci_hp_initialize", scope: !3, file: !3, line: 438, type: !4309, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4350 = !DILocalVariable(name: "slot", arg: 1, scope: !4349, file: !3, line: 438, type: !142)
!4351 = !DILocation(line: 438, column: 46, scope: !4349)
!4352 = !DILocalVariable(name: "bus", arg: 2, scope: !4349, file: !3, line: 438, type: !184)
!4353 = !DILocation(line: 438, column: 68, scope: !4349)
!4354 = !DILocalVariable(name: "devnr", arg: 3, scope: !4349, file: !3, line: 439, type: !155)
!4355 = !DILocation(line: 439, column: 8, scope: !4349)
!4356 = !DILocalVariable(name: "name", arg: 4, scope: !4349, file: !3, line: 439, type: !230)
!4357 = !DILocation(line: 439, column: 27, scope: !4349)
!4358 = !DILocalVariable(name: "owner", arg: 5, scope: !4349, file: !3, line: 439, type: !835)
!4359 = !DILocation(line: 439, column: 48, scope: !4349)
!4360 = !DILocalVariable(name: "mod_name", arg: 6, scope: !4349, file: !3, line: 440, type: !230)
!4361 = !DILocation(line: 440, column: 16, scope: !4349)
!4362 = !DILocalVariable(name: "pci_slot", scope: !4349, file: !3, line: 442, type: !179)
!4363 = !DILocation(line: 442, column: 19, scope: !4349)
!4364 = !DILocation(line: 444, column: 6, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4349, file: !3, line: 444, column: 6)
!4366 = !DILocation(line: 444, column: 11, scope: !4365)
!4367 = !DILocation(line: 444, column: 6, scope: !4349)
!4368 = !DILocation(line: 445, column: 3, scope: !4365)
!4369 = !DILocation(line: 446, column: 6, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4349, file: !3, line: 446, column: 6)
!4371 = !DILocation(line: 446, column: 12, scope: !4370)
!4372 = !DILocation(line: 446, column: 16, scope: !4370)
!4373 = !DILocation(line: 446, column: 6, scope: !4349)
!4374 = !DILocation(line: 447, column: 3, scope: !4370)
!4375 = !DILocation(line: 449, column: 16, scope: !4349)
!4376 = !DILocation(line: 449, column: 2, scope: !4349)
!4377 = !DILocation(line: 449, column: 8, scope: !4349)
!4378 = !DILocation(line: 449, column: 14, scope: !4349)
!4379 = !DILocation(line: 450, column: 19, scope: !4349)
!4380 = !DILocation(line: 450, column: 2, scope: !4349)
!4381 = !DILocation(line: 450, column: 8, scope: !4349)
!4382 = !DILocation(line: 450, column: 17, scope: !4349)
!4383 = !DILocation(line: 457, column: 29, scope: !4349)
!4384 = !DILocation(line: 457, column: 34, scope: !4349)
!4385 = !DILocation(line: 457, column: 41, scope: !4349)
!4386 = !DILocation(line: 457, column: 47, scope: !4349)
!4387 = !DILocation(line: 457, column: 13, scope: !4349)
!4388 = !DILocation(line: 457, column: 11, scope: !4349)
!4389 = !DILocation(line: 458, column: 13, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4349, file: !3, line: 458, column: 6)
!4391 = !DILocation(line: 458, column: 6, scope: !4390)
!4392 = !DILocation(line: 458, column: 6, scope: !4349)
!4393 = !DILocation(line: 459, column: 18, scope: !4390)
!4394 = !DILocation(line: 459, column: 10, scope: !4390)
!4395 = !DILocation(line: 459, column: 3, scope: !4390)
!4396 = !DILocation(line: 461, column: 19, scope: !4349)
!4397 = !DILocation(line: 461, column: 2, scope: !4349)
!4398 = !DILocation(line: 461, column: 8, scope: !4349)
!4399 = !DILocation(line: 461, column: 17, scope: !4349)
!4400 = !DILocation(line: 462, column: 22, scope: !4349)
!4401 = !DILocation(line: 462, column: 2, scope: !4349)
!4402 = !DILocation(line: 462, column: 12, scope: !4349)
!4403 = !DILocation(line: 462, column: 20, scope: !4349)
!4404 = !DILocation(line: 463, column: 2, scope: !4349)
!4405 = !DILocation(line: 464, column: 1, scope: !4349)
!4406 = distinct !DISubprogram(name: "pci_hp_add", scope: !3, file: !3, line: 477, type: !153, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4407 = !DILocalVariable(name: "slot", arg: 1, scope: !4406, file: !3, line: 477, type: !142)
!4408 = !DILocation(line: 477, column: 37, scope: !4406)
!4409 = !DILocalVariable(name: "pci_slot", scope: !4406, file: !3, line: 479, type: !179)
!4410 = !DILocation(line: 479, column: 19, scope: !4406)
!4411 = !DILocation(line: 479, column: 30, scope: !4406)
!4412 = !DILocation(line: 479, column: 36, scope: !4406)
!4413 = !DILocalVariable(name: "result", scope: !4406, file: !3, line: 480, type: !155)
!4414 = !DILocation(line: 480, column: 6, scope: !4406)
!4415 = !DILocation(line: 482, column: 23, scope: !4406)
!4416 = !DILocation(line: 482, column: 11, scope: !4406)
!4417 = !DILocation(line: 482, column: 9, scope: !4406)
!4418 = !DILocation(line: 483, column: 6, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4406, file: !3, line: 483, column: 6)
!4420 = !DILocation(line: 483, column: 6, scope: !4406)
!4421 = !DILocation(line: 484, column: 10, scope: !4419)
!4422 = !DILocation(line: 484, column: 3, scope: !4419)
!4423 = !DILocation(line: 486, column: 18, scope: !4406)
!4424 = !DILocation(line: 486, column: 28, scope: !4406)
!4425 = !DILocation(line: 486, column: 2, scope: !4406)
!4426 = !DILocation(line: 487, column: 2, scope: !4406)
!4427 = !DILocation(line: 488, column: 12, scope: !4406)
!4428 = !DILocation(line: 488, column: 18, scope: !4406)
!4429 = !DILocation(line: 488, column: 2, scope: !4406)
!4430 = !DILocation(line: 489, column: 2, scope: !4406)
!4431 = !DILocation(line: 490, column: 2, scope: !4406)
!4432 = !DILocation(line: 490, column: 2, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4434, file: !3, line: 490, column: 2)
!4434 = distinct !DILexicalBlock(scope: !4406, file: !3, line: 490, column: 2)
!4435 = !DILocation(line: 490, column: 2, scope: !4434)
!4436 = !DILocation(line: 491, column: 2, scope: !4406)
!4437 = !DILocation(line: 492, column: 1, scope: !4406)
!4438 = distinct !DISubprogram(name: "pci_hp_destroy", scope: !3, file: !3, line: 551, type: !4439, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{null, !142}
!4441 = !DILocalVariable(name: "slot", arg: 1, scope: !4438, file: !3, line: 551, type: !142)
!4442 = !DILocation(line: 551, column: 42, scope: !4438)
!4443 = !DILocalVariable(name: "pci_slot", scope: !4438, file: !3, line: 553, type: !179)
!4444 = !DILocation(line: 553, column: 19, scope: !4438)
!4445 = !DILocation(line: 553, column: 30, scope: !4438)
!4446 = !DILocation(line: 553, column: 36, scope: !4438)
!4447 = !DILocation(line: 555, column: 2, scope: !4438)
!4448 = !DILocation(line: 555, column: 8, scope: !4438)
!4449 = !DILocation(line: 555, column: 17, scope: !4438)
!4450 = !DILocation(line: 556, column: 2, scope: !4438)
!4451 = !DILocation(line: 556, column: 12, scope: !4438)
!4452 = !DILocation(line: 556, column: 20, scope: !4438)
!4453 = !DILocation(line: 557, column: 19, scope: !4438)
!4454 = !DILocation(line: 557, column: 2, scope: !4438)
!4455 = !DILocation(line: 558, column: 1, scope: !4438)
!4456 = distinct !DISubprogram(name: "IS_ERR", scope: !4457, file: !4457, line: 34, type: !4458, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4457 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!419, !429}
!4460 = !DILocalVariable(name: "ptr", arg: 1, scope: !4456, file: !4457, line: 34, type: !429)
!4461 = !DILocation(line: 34, column: 60, scope: !4456)
!4462 = !DILocation(line: 36, column: 9, scope: !4456)
!4463 = !DILocation(line: 36, column: 2, scope: !4456)
!4464 = distinct !DISubprogram(name: "PTR_ERR", scope: !4457, file: !4457, line: 29, type: !4465, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!126, !429}
!4467 = !DILocalVariable(name: "ptr", arg: 1, scope: !4464, file: !4457, line: 29, type: !429)
!4468 = !DILocation(line: 29, column: 61, scope: !4464)
!4469 = !DILocation(line: 31, column: 16, scope: !4464)
!4470 = !DILocation(line: 31, column: 9, scope: !4464)
!4471 = !DILocation(line: 31, column: 2, scope: !4464)
!4472 = distinct !DISubprogram(name: "fs_add_slot", scope: !3, file: !3, line: 292, type: !4473, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!155, !179}
!4475 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !4472, file: !3, line: 292, type: !179)
!4476 = !DILocation(line: 292, column: 41, scope: !4472)
!4477 = !DILocalVariable(name: "retval", scope: !4472, file: !3, line: 294, type: !155)
!4478 = !DILocation(line: 294, column: 6, scope: !4472)
!4479 = !DILocation(line: 297, column: 28, scope: !4472)
!4480 = !DILocation(line: 297, column: 2, scope: !4472)
!4481 = !DILocation(line: 299, column: 21, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 299, column: 6)
!4483 = !DILocation(line: 299, column: 6, scope: !4482)
!4484 = !DILocation(line: 299, column: 6, scope: !4472)
!4485 = !DILocation(line: 300, column: 31, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4482, file: !3, line: 299, column: 32)
!4487 = !DILocation(line: 300, column: 41, scope: !4486)
!4488 = !DILocation(line: 300, column: 12, scope: !4486)
!4489 = !DILocation(line: 300, column: 10, scope: !4486)
!4490 = !DILocation(line: 302, column: 7, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 302, column: 7)
!4492 = !DILocation(line: 302, column: 7, scope: !4486)
!4493 = !DILocation(line: 303, column: 4, scope: !4491)
!4494 = !DILocation(line: 304, column: 2, scope: !4486)
!4495 = !DILocation(line: 306, column: 25, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 306, column: 6)
!4497 = !DILocation(line: 306, column: 6, scope: !4496)
!4498 = !DILocation(line: 306, column: 6, scope: !4472)
!4499 = !DILocation(line: 307, column: 31, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 306, column: 36)
!4501 = !DILocation(line: 307, column: 41, scope: !4500)
!4502 = !DILocation(line: 307, column: 12, scope: !4500)
!4503 = !DILocation(line: 307, column: 10, scope: !4500)
!4504 = !DILocation(line: 309, column: 7, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4500, file: !3, line: 309, column: 7)
!4506 = !DILocation(line: 309, column: 7, scope: !4500)
!4507 = !DILocation(line: 310, column: 4, scope: !4505)
!4508 = !DILocation(line: 311, column: 2, scope: !4500)
!4509 = !DILocation(line: 313, column: 21, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 313, column: 6)
!4511 = !DILocation(line: 313, column: 6, scope: !4510)
!4512 = !DILocation(line: 313, column: 6, scope: !4472)
!4513 = !DILocation(line: 314, column: 31, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 313, column: 32)
!4515 = !DILocation(line: 314, column: 41, scope: !4514)
!4516 = !DILocation(line: 314, column: 12, scope: !4514)
!4517 = !DILocation(line: 314, column: 10, scope: !4514)
!4518 = !DILocation(line: 316, column: 7, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 316, column: 7)
!4520 = !DILocation(line: 316, column: 7, scope: !4514)
!4521 = !DILocation(line: 317, column: 4, scope: !4519)
!4522 = !DILocation(line: 318, column: 2, scope: !4514)
!4523 = !DILocation(line: 320, column: 23, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 320, column: 6)
!4525 = !DILocation(line: 320, column: 6, scope: !4524)
!4526 = !DILocation(line: 320, column: 6, scope: !4472)
!4527 = !DILocation(line: 321, column: 31, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 320, column: 34)
!4529 = !DILocation(line: 321, column: 41, scope: !4528)
!4530 = !DILocation(line: 321, column: 12, scope: !4528)
!4531 = !DILocation(line: 321, column: 10, scope: !4528)
!4532 = !DILocation(line: 323, column: 7, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 323, column: 7)
!4534 = !DILocation(line: 323, column: 7, scope: !4528)
!4535 = !DILocation(line: 324, column: 4, scope: !4533)
!4536 = !DILocation(line: 325, column: 2, scope: !4528)
!4537 = !DILocation(line: 327, column: 20, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 327, column: 6)
!4539 = !DILocation(line: 327, column: 6, scope: !4538)
!4540 = !DILocation(line: 327, column: 6, scope: !4472)
!4541 = !DILocation(line: 328, column: 31, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 327, column: 31)
!4543 = !DILocation(line: 328, column: 41, scope: !4542)
!4544 = !DILocation(line: 328, column: 12, scope: !4542)
!4545 = !DILocation(line: 328, column: 10, scope: !4542)
!4546 = !DILocation(line: 330, column: 7, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4542, file: !3, line: 330, column: 7)
!4548 = !DILocation(line: 330, column: 7, scope: !4542)
!4549 = !DILocation(line: 331, column: 4, scope: !4547)
!4550 = !DILocation(line: 332, column: 2, scope: !4542)
!4551 = !DILocation(line: 334, column: 2, scope: !4472)
!4552 = !DILabel(scope: !4472, name: "exit_test", file: !3, line: 336)
!4553 = !DILocation(line: 336, column: 1, scope: !4472)
!4554 = !DILocation(line: 337, column: 23, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 337, column: 6)
!4556 = !DILocation(line: 337, column: 6, scope: !4555)
!4557 = !DILocation(line: 337, column: 6, scope: !4472)
!4558 = !DILocation(line: 338, column: 22, scope: !4555)
!4559 = !DILocation(line: 338, column: 32, scope: !4555)
!4560 = !DILocation(line: 338, column: 3, scope: !4555)
!4561 = !DILocation(line: 337, column: 31, scope: !4555)
!4562 = !DILabel(scope: !4472, name: "exit_adapter", file: !3, line: 340)
!4563 = !DILocation(line: 340, column: 1, scope: !4472)
!4564 = !DILocation(line: 341, column: 21, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 341, column: 6)
!4566 = !DILocation(line: 341, column: 6, scope: !4565)
!4567 = !DILocation(line: 341, column: 6, scope: !4472)
!4568 = !DILocation(line: 342, column: 22, scope: !4565)
!4569 = !DILocation(line: 342, column: 32, scope: !4565)
!4570 = !DILocation(line: 342, column: 3, scope: !4565)
!4571 = !DILocation(line: 341, column: 29, scope: !4565)
!4572 = !DILabel(scope: !4472, name: "exit_latch", file: !3, line: 343)
!4573 = !DILocation(line: 343, column: 1, scope: !4472)
!4574 = !DILocation(line: 344, column: 25, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 344, column: 6)
!4576 = !DILocation(line: 344, column: 6, scope: !4575)
!4577 = !DILocation(line: 344, column: 6, scope: !4472)
!4578 = !DILocation(line: 345, column: 22, scope: !4575)
!4579 = !DILocation(line: 345, column: 32, scope: !4575)
!4580 = !DILocation(line: 345, column: 3, scope: !4575)
!4581 = !DILocation(line: 344, column: 33, scope: !4575)
!4582 = !DILabel(scope: !4472, name: "exit_attention", file: !3, line: 347)
!4583 = !DILocation(line: 347, column: 1, scope: !4472)
!4584 = !DILocation(line: 348, column: 21, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 348, column: 6)
!4586 = !DILocation(line: 348, column: 6, scope: !4585)
!4587 = !DILocation(line: 348, column: 6, scope: !4472)
!4588 = !DILocation(line: 349, column: 22, scope: !4585)
!4589 = !DILocation(line: 349, column: 32, scope: !4585)
!4590 = !DILocation(line: 349, column: 3, scope: !4585)
!4591 = !DILocation(line: 348, column: 29, scope: !4585)
!4592 = !DILabel(scope: !4472, name: "exit_power", file: !3, line: 350)
!4593 = !DILocation(line: 350, column: 1, scope: !4472)
!4594 = !DILocation(line: 351, column: 28, scope: !4472)
!4595 = !DILocation(line: 351, column: 2, scope: !4472)
!4596 = !DILabel(scope: !4472, name: "exit", file: !3, line: 352)
!4597 = !DILocation(line: 352, column: 1, scope: !4472)
!4598 = !DILocation(line: 353, column: 9, scope: !4472)
!4599 = !DILocation(line: 353, column: 2, scope: !4472)
!4600 = distinct !DISubprogram(name: "list_add", scope: !4601, file: !4601, line: 84, type: !4602, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4601 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4602 = !DISubroutineType(types: !4603)
!4603 = !{null, !136, !136}
!4604 = !DILocalVariable(name: "new", arg: 1, scope: !4600, file: !4601, line: 84, type: !136)
!4605 = !DILocation(line: 84, column: 47, scope: !4600)
!4606 = !DILocalVariable(name: "head", arg: 2, scope: !4600, file: !4601, line: 84, type: !136)
!4607 = !DILocation(line: 84, column: 70, scope: !4600)
!4608 = !DILocation(line: 86, column: 13, scope: !4600)
!4609 = !DILocation(line: 86, column: 18, scope: !4600)
!4610 = !DILocation(line: 86, column: 24, scope: !4600)
!4611 = !DILocation(line: 86, column: 30, scope: !4600)
!4612 = !DILocation(line: 86, column: 2, scope: !4600)
!4613 = !DILocation(line: 87, column: 1, scope: !4600)
!4614 = distinct !DISubprogram(name: "hotplug_slot_name", scope: !144, file: !144, line: 66, type: !4615, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!230, !4617}
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!4619 = !DILocalVariable(name: "slot", arg: 1, scope: !4614, file: !144, line: 66, type: !4617)
!4620 = !DILocation(line: 66, column: 72, scope: !4614)
!4621 = !DILocation(line: 68, column: 23, scope: !4614)
!4622 = !DILocation(line: 68, column: 29, scope: !4614)
!4623 = !DILocation(line: 68, column: 9, scope: !4614)
!4624 = !DILocation(line: 68, column: 2, scope: !4614)
!4625 = distinct !DISubprogram(name: "pci_hp_deregister", scope: !3, file: !3, line: 504, type: !4439, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4626 = !DILocalVariable(name: "slot", arg: 1, scope: !4625, file: !3, line: 504, type: !142)
!4627 = !DILocation(line: 504, column: 45, scope: !4625)
!4628 = !DILocation(line: 506, column: 13, scope: !4625)
!4629 = !DILocation(line: 506, column: 2, scope: !4625)
!4630 = !DILocation(line: 507, column: 17, scope: !4625)
!4631 = !DILocation(line: 507, column: 2, scope: !4625)
!4632 = !DILocation(line: 508, column: 1, scope: !4625)
!4633 = distinct !DISubprogram(name: "pci_hp_del", scope: !3, file: !3, line: 519, type: !4439, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4634 = !DILocalVariable(name: "slot", arg: 1, scope: !4633, file: !3, line: 519, type: !142)
!4635 = !DILocation(line: 519, column: 38, scope: !4633)
!4636 = !DILocalVariable(name: "temp", scope: !4633, file: !3, line: 521, type: !142)
!4637 = !DILocation(line: 521, column: 23, scope: !4633)
!4638 = !DILocalVariable(name: "__ret_warn_on", scope: !4639, file: !3, line: 523, type: !155)
!4639 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 523, column: 6)
!4640 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 523, column: 6)
!4641 = !DILocation(line: 523, column: 6, scope: !4639)
!4642 = !DILocation(line: 523, column: 6, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4639, file: !3, line: 523, column: 6)
!4644 = !DILocation(line: 523, column: 6, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 523, column: 6)
!4646 = !DILocation(line: 523, column: 6, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4645, file: !3, line: 523, column: 6)
!4648 = !DILocation(line: 523, column: 6, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4645, file: !3, line: 523, column: 6)
!4650 = !{i32 -2141020162, i32 -2141020133, i32 -2141020087, i32 -2141020029, i32 -2141019975, i32 -2141019921, i32 -2141019866, i32 -2141019835}
!4651 = !DILocation(line: 523, column: 6, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4645, file: !3, line: 523, column: 6)
!4653 = !{i32 -2141019415, i32 -2141019408, i32 -2141019356, i32 -2141019325, i32 -2141019295}
!4654 = !DILocation(line: 523, column: 6, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4645, file: !3, line: 523, column: 6)
!4656 = !DILocation(line: 523, column: 6, scope: !4640)
!4657 = !DILocation(line: 523, column: 6, scope: !4633)
!4658 = !DILocation(line: 524, column: 3, scope: !4640)
!4659 = !DILocation(line: 526, column: 2, scope: !4633)
!4660 = !DILocation(line: 527, column: 46, scope: !4633)
!4661 = !DILocation(line: 527, column: 28, scope: !4633)
!4662 = !DILocation(line: 527, column: 9, scope: !4633)
!4663 = !DILocation(line: 527, column: 7, scope: !4633)
!4664 = !DILocalVariable(name: "__ret_warn_on", scope: !4665, file: !3, line: 528, type: !155)
!4665 = distinct !DILexicalBlock(scope: !4666, file: !3, line: 528, column: 6)
!4666 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 528, column: 6)
!4667 = !DILocation(line: 528, column: 6, scope: !4665)
!4668 = !DILocation(line: 528, column: 6, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 528, column: 6)
!4670 = !DILocation(line: 528, column: 6, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 528, column: 6)
!4672 = !DILocation(line: 528, column: 6, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 528, column: 6)
!4674 = !DILocation(line: 528, column: 6, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 528, column: 6)
!4676 = !{i32 -2141018711, i32 -2141018682, i32 -2141018636, i32 -2141018578, i32 -2141018524, i32 -2141018470, i32 -2141018415, i32 -2141018384}
!4677 = !DILocation(line: 528, column: 6, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 528, column: 6)
!4679 = !{i32 -2141017964, i32 -2141017957, i32 -2141017905, i32 -2141017874, i32 -2141017844}
!4680 = !DILocation(line: 528, column: 6, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 528, column: 6)
!4682 = !DILocation(line: 528, column: 6, scope: !4666)
!4683 = !DILocation(line: 528, column: 6, scope: !4633)
!4684 = !DILocation(line: 529, column: 3, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4666, file: !3, line: 528, column: 29)
!4686 = !DILocation(line: 530, column: 3, scope: !4685)
!4687 = !DILocation(line: 533, column: 12, scope: !4633)
!4688 = !DILocation(line: 533, column: 18, scope: !4633)
!4689 = !DILocation(line: 533, column: 2, scope: !4633)
!4690 = !DILocation(line: 534, column: 2, scope: !4633)
!4691 = !DILocation(line: 535, column: 2, scope: !4633)
!4692 = !DILocation(line: 535, column: 2, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4694, file: !3, line: 535, column: 2)
!4694 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 535, column: 2)
!4695 = !DILocation(line: 535, column: 2, scope: !4694)
!4696 = !DILocation(line: 536, column: 17, scope: !4633)
!4697 = !DILocation(line: 536, column: 23, scope: !4633)
!4698 = !DILocation(line: 536, column: 2, scope: !4633)
!4699 = !DILocation(line: 537, column: 1, scope: !4633)
!4700 = distinct !DISubprogram(name: "get_slot_from_name", scope: !3, file: !3, line: 378, type: !4701, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!142, !230}
!4703 = !DILocalVariable(name: "name", arg: 1, scope: !4700, file: !3, line: 378, type: !230)
!4704 = !DILocation(line: 378, column: 60, scope: !4700)
!4705 = !DILocalVariable(name: "slot", scope: !4700, file: !3, line: 380, type: !142)
!4706 = !DILocation(line: 380, column: 23, scope: !4700)
!4707 = !DILocalVariable(name: "__mptr", scope: !4708, file: !3, line: 382, type: !124)
!4708 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 382, column: 2)
!4709 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 382, column: 2)
!4710 = !DILocation(line: 382, column: 2, scope: !4708)
!4711 = !DILocation(line: 382, column: 2, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 382, column: 2)
!4713 = !DILocation(line: 382, column: 2, scope: !4709)
!4714 = !DILocation(line: 382, column: 2, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 382, column: 2)
!4716 = !DILocation(line: 383, column: 32, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 383, column: 7)
!4718 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 382, column: 63)
!4719 = !DILocation(line: 383, column: 14, scope: !4717)
!4720 = !DILocation(line: 383, column: 39, scope: !4717)
!4721 = !DILocation(line: 383, column: 7, scope: !4717)
!4722 = !DILocation(line: 383, column: 45, scope: !4717)
!4723 = !DILocation(line: 383, column: 7, scope: !4718)
!4724 = !DILocation(line: 384, column: 11, scope: !4717)
!4725 = !DILocation(line: 384, column: 4, scope: !4717)
!4726 = !DILocation(line: 385, column: 2, scope: !4718)
!4727 = !DILocalVariable(name: "__mptr", scope: !4728, file: !3, line: 382, type: !124)
!4728 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 382, column: 2)
!4729 = !DILocation(line: 382, column: 2, scope: !4728)
!4730 = !DILocation(line: 382, column: 2, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 382, column: 2)
!4732 = distinct !{!4732, !4713, !4733}
!4733 = !DILocation(line: 385, column: 2, scope: !4709)
!4734 = !DILocation(line: 386, column: 2, scope: !4700)
!4735 = !DILocation(line: 387, column: 1, scope: !4700)
!4736 = distinct !DISubprogram(name: "list_del", scope: !4601, file: !4601, line: 144, type: !4737, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{null, !136}
!4739 = !DILocalVariable(name: "entry", arg: 1, scope: !4736, file: !4601, line: 144, type: !136)
!4740 = !DILocation(line: 144, column: 47, scope: !4736)
!4741 = !DILocation(line: 146, column: 19, scope: !4736)
!4742 = !DILocation(line: 146, column: 2, scope: !4736)
!4743 = !DILocation(line: 147, column: 2, scope: !4736)
!4744 = !DILocation(line: 147, column: 9, scope: !4736)
!4745 = !DILocation(line: 147, column: 14, scope: !4736)
!4746 = !DILocation(line: 148, column: 2, scope: !4736)
!4747 = !DILocation(line: 148, column: 9, scope: !4736)
!4748 = !DILocation(line: 148, column: 14, scope: !4736)
!4749 = !DILocation(line: 149, column: 1, scope: !4736)
!4750 = distinct !DISubprogram(name: "fs_remove_slot", scope: !3, file: !3, line: 356, type: !4751, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{null, !179}
!4753 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !4750, file: !3, line: 356, type: !179)
!4754 = !DILocation(line: 356, column: 45, scope: !4750)
!4755 = !DILocation(line: 358, column: 21, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 358, column: 6)
!4757 = !DILocation(line: 358, column: 6, scope: !4756)
!4758 = !DILocation(line: 358, column: 6, scope: !4750)
!4759 = !DILocation(line: 359, column: 22, scope: !4756)
!4760 = !DILocation(line: 359, column: 32, scope: !4756)
!4761 = !DILocation(line: 359, column: 3, scope: !4756)
!4762 = !DILocation(line: 361, column: 25, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 361, column: 6)
!4764 = !DILocation(line: 361, column: 6, scope: !4763)
!4765 = !DILocation(line: 361, column: 6, scope: !4750)
!4766 = !DILocation(line: 362, column: 22, scope: !4763)
!4767 = !DILocation(line: 362, column: 32, scope: !4763)
!4768 = !DILocation(line: 362, column: 3, scope: !4763)
!4769 = !DILocation(line: 365, column: 21, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 365, column: 6)
!4771 = !DILocation(line: 365, column: 6, scope: !4770)
!4772 = !DILocation(line: 365, column: 6, scope: !4750)
!4773 = !DILocation(line: 366, column: 22, scope: !4770)
!4774 = !DILocation(line: 366, column: 32, scope: !4770)
!4775 = !DILocation(line: 366, column: 3, scope: !4770)
!4776 = !DILocation(line: 368, column: 23, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 368, column: 6)
!4778 = !DILocation(line: 368, column: 6, scope: !4777)
!4779 = !DILocation(line: 368, column: 6, scope: !4750)
!4780 = !DILocation(line: 369, column: 22, scope: !4777)
!4781 = !DILocation(line: 369, column: 32, scope: !4777)
!4782 = !DILocation(line: 369, column: 3, scope: !4777)
!4783 = !DILocation(line: 372, column: 20, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 372, column: 6)
!4785 = !DILocation(line: 372, column: 6, scope: !4784)
!4786 = !DILocation(line: 372, column: 6, scope: !4750)
!4787 = !DILocation(line: 373, column: 22, scope: !4784)
!4788 = !DILocation(line: 373, column: 32, scope: !4784)
!4789 = !DILocation(line: 373, column: 3, scope: !4784)
!4790 = !DILocation(line: 375, column: 28, scope: !4750)
!4791 = !DILocation(line: 375, column: 2, scope: !4750)
!4792 = !DILocation(line: 376, column: 1, scope: !4750)
!4793 = distinct !DISubprogram(name: "pci_hotplug_init", scope: !3, file: !3, line: 561, type: !4794, scopeLine: 562, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{!155}
!4796 = !DILocalVariable(name: "result", scope: !4793, file: !3, line: 563, type: !155)
!4797 = !DILocation(line: 563, column: 6, scope: !4793)
!4798 = !DILocation(line: 565, column: 29, scope: !4793)
!4799 = !DILocation(line: 565, column: 11, scope: !4793)
!4800 = !DILocation(line: 565, column: 9, scope: !4793)
!4801 = !DILocation(line: 566, column: 6, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 566, column: 6)
!4803 = !DILocation(line: 566, column: 6, scope: !4793)
!4804 = !DILocation(line: 567, column: 3, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 566, column: 14)
!4806 = !DILocation(line: 568, column: 10, scope: !4805)
!4807 = !DILocation(line: 568, column: 3, scope: !4805)
!4808 = !DILocation(line: 571, column: 9, scope: !4793)
!4809 = !DILocation(line: 571, column: 2, scope: !4793)
!4810 = !DILocation(line: 572, column: 1, scope: !4793)
!4811 = distinct !DISubprogram(name: "has_power_file", scope: !3, file: !3, line: 234, type: !4812, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{!419, !179}
!4814 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !4811, file: !3, line: 234, type: !179)
!4815 = !DILocation(line: 234, column: 45, scope: !4811)
!4816 = !DILocalVariable(name: "slot", scope: !4811, file: !3, line: 236, type: !142)
!4817 = !DILocation(line: 236, column: 23, scope: !4811)
!4818 = !DILocation(line: 236, column: 30, scope: !4811)
!4819 = !DILocation(line: 236, column: 40, scope: !4811)
!4820 = !DILocation(line: 238, column: 8, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4811, file: !3, line: 238, column: 6)
!4822 = !DILocation(line: 238, column: 14, scope: !4821)
!4823 = !DILocation(line: 238, column: 19, scope: !4821)
!4824 = !DILocation(line: 238, column: 25, scope: !4821)
!4825 = !DILocation(line: 238, column: 6, scope: !4811)
!4826 = !DILocation(line: 239, column: 3, scope: !4821)
!4827 = !DILocation(line: 240, column: 7, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4811, file: !3, line: 240, column: 6)
!4829 = !DILocation(line: 240, column: 13, scope: !4828)
!4830 = !DILocation(line: 240, column: 18, scope: !4828)
!4831 = !DILocation(line: 240, column: 6, scope: !4828)
!4832 = !DILocation(line: 240, column: 31, scope: !4828)
!4833 = !DILocation(line: 241, column: 7, scope: !4828)
!4834 = !DILocation(line: 241, column: 13, scope: !4828)
!4835 = !DILocation(line: 241, column: 18, scope: !4828)
!4836 = !DILocation(line: 241, column: 6, scope: !4828)
!4837 = !DILocation(line: 241, column: 32, scope: !4828)
!4838 = !DILocation(line: 242, column: 7, scope: !4828)
!4839 = !DILocation(line: 242, column: 13, scope: !4828)
!4840 = !DILocation(line: 242, column: 18, scope: !4828)
!4841 = !DILocation(line: 242, column: 6, scope: !4828)
!4842 = !DILocation(line: 240, column: 6, scope: !4811)
!4843 = !DILocation(line: 243, column: 3, scope: !4828)
!4844 = !DILocation(line: 244, column: 2, scope: !4811)
!4845 = !DILocation(line: 245, column: 1, scope: !4811)
!4846 = distinct !DISubprogram(name: "sysfs_create_file", scope: !296, file: !296, line: 596, type: !4847, scopeLine: 598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{!155, !304, !4849}
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!4851 = !DILocalVariable(name: "kobj", arg: 1, scope: !4846, file: !296, line: 596, type: !304)
!4852 = !DILocation(line: 596, column: 66, scope: !4846)
!4853 = !DILocalVariable(name: "attr", arg: 2, scope: !4846, file: !296, line: 597, type: !4849)
!4854 = !DILocation(line: 597, column: 32, scope: !4846)
!4855 = !DILocation(line: 599, column: 30, scope: !4846)
!4856 = !DILocation(line: 599, column: 36, scope: !4846)
!4857 = !DILocation(line: 599, column: 9, scope: !4846)
!4858 = !DILocation(line: 599, column: 2, scope: !4846)
!4859 = distinct !DISubprogram(name: "has_attention_file", scope: !3, file: !3, line: 247, type: !4812, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4860 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !4859, file: !3, line: 247, type: !179)
!4861 = !DILocation(line: 247, column: 49, scope: !4859)
!4862 = !DILocalVariable(name: "slot", scope: !4859, file: !3, line: 249, type: !142)
!4863 = !DILocation(line: 249, column: 23, scope: !4859)
!4864 = !DILocation(line: 249, column: 30, scope: !4859)
!4865 = !DILocation(line: 249, column: 40, scope: !4859)
!4866 = !DILocation(line: 251, column: 8, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 251, column: 6)
!4868 = !DILocation(line: 251, column: 14, scope: !4867)
!4869 = !DILocation(line: 251, column: 19, scope: !4867)
!4870 = !DILocation(line: 251, column: 25, scope: !4867)
!4871 = !DILocation(line: 251, column: 6, scope: !4859)
!4872 = !DILocation(line: 252, column: 3, scope: !4867)
!4873 = !DILocation(line: 253, column: 7, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 253, column: 6)
!4875 = !DILocation(line: 253, column: 13, scope: !4874)
!4876 = !DILocation(line: 253, column: 18, scope: !4874)
!4877 = !DILocation(line: 253, column: 6, scope: !4874)
!4878 = !DILocation(line: 253, column: 40, scope: !4874)
!4879 = !DILocation(line: 254, column: 7, scope: !4874)
!4880 = !DILocation(line: 254, column: 13, scope: !4874)
!4881 = !DILocation(line: 254, column: 18, scope: !4874)
!4882 = !DILocation(line: 254, column: 6, scope: !4874)
!4883 = !DILocation(line: 253, column: 6, scope: !4859)
!4884 = !DILocation(line: 255, column: 3, scope: !4874)
!4885 = !DILocation(line: 256, column: 2, scope: !4859)
!4886 = !DILocation(line: 257, column: 1, scope: !4859)
!4887 = distinct !DISubprogram(name: "has_latch_file", scope: !3, file: !3, line: 259, type: !4812, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4888 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !4887, file: !3, line: 259, type: !179)
!4889 = !DILocation(line: 259, column: 45, scope: !4887)
!4890 = !DILocalVariable(name: "slot", scope: !4887, file: !3, line: 261, type: !142)
!4891 = !DILocation(line: 261, column: 23, scope: !4887)
!4892 = !DILocation(line: 261, column: 30, scope: !4887)
!4893 = !DILocation(line: 261, column: 40, scope: !4887)
!4894 = !DILocation(line: 263, column: 8, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 263, column: 6)
!4896 = !DILocation(line: 263, column: 14, scope: !4895)
!4897 = !DILocation(line: 263, column: 19, scope: !4895)
!4898 = !DILocation(line: 263, column: 25, scope: !4895)
!4899 = !DILocation(line: 263, column: 6, scope: !4887)
!4900 = !DILocation(line: 264, column: 3, scope: !4895)
!4901 = !DILocation(line: 265, column: 6, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 265, column: 6)
!4903 = !DILocation(line: 265, column: 12, scope: !4902)
!4904 = !DILocation(line: 265, column: 17, scope: !4902)
!4905 = !DILocation(line: 265, column: 6, scope: !4887)
!4906 = !DILocation(line: 266, column: 3, scope: !4902)
!4907 = !DILocation(line: 267, column: 2, scope: !4887)
!4908 = !DILocation(line: 268, column: 1, scope: !4887)
!4909 = distinct !DISubprogram(name: "has_adapter_file", scope: !3, file: !3, line: 270, type: !4812, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4910 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !4909, file: !3, line: 270, type: !179)
!4911 = !DILocation(line: 270, column: 47, scope: !4909)
!4912 = !DILocalVariable(name: "slot", scope: !4909, file: !3, line: 272, type: !142)
!4913 = !DILocation(line: 272, column: 23, scope: !4909)
!4914 = !DILocation(line: 272, column: 30, scope: !4909)
!4915 = !DILocation(line: 272, column: 40, scope: !4909)
!4916 = !DILocation(line: 274, column: 8, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 274, column: 6)
!4918 = !DILocation(line: 274, column: 14, scope: !4917)
!4919 = !DILocation(line: 274, column: 19, scope: !4917)
!4920 = !DILocation(line: 274, column: 25, scope: !4917)
!4921 = !DILocation(line: 274, column: 6, scope: !4909)
!4922 = !DILocation(line: 275, column: 3, scope: !4917)
!4923 = !DILocation(line: 276, column: 6, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 276, column: 6)
!4925 = !DILocation(line: 276, column: 12, scope: !4924)
!4926 = !DILocation(line: 276, column: 17, scope: !4924)
!4927 = !DILocation(line: 276, column: 6, scope: !4909)
!4928 = !DILocation(line: 277, column: 3, scope: !4924)
!4929 = !DILocation(line: 278, column: 2, scope: !4909)
!4930 = !DILocation(line: 279, column: 1, scope: !4909)
!4931 = distinct !DISubprogram(name: "has_test_file", scope: !3, file: !3, line: 281, type: !4812, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4932 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !4931, file: !3, line: 281, type: !179)
!4933 = !DILocation(line: 281, column: 44, scope: !4931)
!4934 = !DILocalVariable(name: "slot", scope: !4931, file: !3, line: 283, type: !142)
!4935 = !DILocation(line: 283, column: 23, scope: !4931)
!4936 = !DILocation(line: 283, column: 30, scope: !4931)
!4937 = !DILocation(line: 283, column: 40, scope: !4931)
!4938 = !DILocation(line: 285, column: 8, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4931, file: !3, line: 285, column: 6)
!4940 = !DILocation(line: 285, column: 14, scope: !4939)
!4941 = !DILocation(line: 285, column: 19, scope: !4939)
!4942 = !DILocation(line: 285, column: 25, scope: !4939)
!4943 = !DILocation(line: 285, column: 6, scope: !4931)
!4944 = !DILocation(line: 286, column: 3, scope: !4939)
!4945 = !DILocation(line: 287, column: 6, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4931, file: !3, line: 287, column: 6)
!4947 = !DILocation(line: 287, column: 12, scope: !4946)
!4948 = !DILocation(line: 287, column: 17, scope: !4946)
!4949 = !DILocation(line: 287, column: 6, scope: !4931)
!4950 = !DILocation(line: 288, column: 3, scope: !4946)
!4951 = !DILocation(line: 289, column: 2, scope: !4931)
!4952 = !DILocation(line: 290, column: 1, scope: !4931)
!4953 = distinct !DISubprogram(name: "sysfs_remove_file", scope: !296, file: !296, line: 602, type: !4954, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{null, !304, !4849}
!4956 = !DILocalVariable(name: "kobj", arg: 1, scope: !4953, file: !296, line: 602, type: !304)
!4957 = !DILocation(line: 602, column: 54, scope: !4953)
!4958 = !DILocalVariable(name: "attr", arg: 2, scope: !4953, file: !296, line: 603, type: !4849)
!4959 = !DILocation(line: 603, column: 34, scope: !4953)
!4960 = !DILocation(line: 605, column: 23, scope: !4953)
!4961 = !DILocation(line: 605, column: 29, scope: !4953)
!4962 = !DILocation(line: 605, column: 2, scope: !4953)
!4963 = !DILocation(line: 606, column: 1, scope: !4953)
!4964 = distinct !DISubprogram(name: "power_read_file", scope: !3, file: !3, line: 67, type: !4282, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4965 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !4964, file: !3, line: 67, type: !179)
!4966 = !DILocation(line: 67, column: 49, scope: !4964)
!4967 = !DILocalVariable(name: "buf", arg: 2, scope: !4964, file: !3, line: 67, type: !357)
!4968 = !DILocation(line: 67, column: 65, scope: !4964)
!4969 = !DILocalVariable(name: "retval", scope: !4964, file: !3, line: 69, type: !155)
!4970 = !DILocation(line: 69, column: 6, scope: !4964)
!4971 = !DILocalVariable(name: "value", scope: !4964, file: !3, line: 70, type: !127)
!4972 = !DILocation(line: 70, column: 5, scope: !4964)
!4973 = !DILocation(line: 72, column: 28, scope: !4964)
!4974 = !DILocation(line: 72, column: 38, scope: !4964)
!4975 = !DILocation(line: 72, column: 11, scope: !4964)
!4976 = !DILocation(line: 72, column: 9, scope: !4964)
!4977 = !DILocation(line: 73, column: 6, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 73, column: 6)
!4979 = !DILocation(line: 73, column: 6, scope: !4964)
!4980 = !DILocation(line: 74, column: 10, scope: !4978)
!4981 = !DILocation(line: 74, column: 3, scope: !4978)
!4982 = !DILocation(line: 76, column: 17, scope: !4964)
!4983 = !DILocation(line: 76, column: 30, scope: !4964)
!4984 = !DILocation(line: 76, column: 9, scope: !4964)
!4985 = !DILocation(line: 76, column: 2, scope: !4964)
!4986 = !DILocation(line: 77, column: 1, scope: !4964)
!4987 = distinct !DISubprogram(name: "power_write_file", scope: !3, file: !3, line: 79, type: !4286, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!4988 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !4987, file: !3, line: 79, type: !179)
!4989 = !DILocation(line: 79, column: 50, scope: !4987)
!4990 = !DILocalVariable(name: "buf", arg: 2, scope: !4987, file: !3, line: 79, type: !230)
!4991 = !DILocation(line: 79, column: 72, scope: !4987)
!4992 = !DILocalVariable(name: "count", arg: 3, scope: !4987, file: !3, line: 80, type: !400)
!4993 = !DILocation(line: 80, column: 12, scope: !4987)
!4994 = !DILocalVariable(name: "slot", scope: !4987, file: !3, line: 82, type: !142)
!4995 = !DILocation(line: 82, column: 23, scope: !4987)
!4996 = !DILocation(line: 82, column: 30, scope: !4987)
!4997 = !DILocation(line: 82, column: 40, scope: !4987)
!4998 = !DILocalVariable(name: "lpower", scope: !4987, file: !3, line: 83, type: !125)
!4999 = !DILocation(line: 83, column: 16, scope: !4987)
!5000 = !DILocalVariable(name: "power", scope: !4987, file: !3, line: 84, type: !127)
!5001 = !DILocation(line: 84, column: 5, scope: !4987)
!5002 = !DILocalVariable(name: "retval", scope: !4987, file: !3, line: 85, type: !155)
!5003 = !DILocation(line: 85, column: 6, scope: !4987)
!5004 = !DILocation(line: 87, column: 26, scope: !4987)
!5005 = !DILocation(line: 87, column: 11, scope: !4987)
!5006 = !DILocation(line: 87, column: 9, scope: !4987)
!5007 = !DILocation(line: 88, column: 15, scope: !4987)
!5008 = !DILocation(line: 88, column: 22, scope: !4987)
!5009 = !DILocation(line: 88, column: 10, scope: !4987)
!5010 = !DILocation(line: 88, column: 8, scope: !4987)
!5011 = !DILocation(line: 89, column: 2, scope: !4987)
!5012 = !DILocation(line: 89, column: 2, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 89, column: 2)
!5014 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 89, column: 2)
!5015 = !DILocation(line: 89, column: 2, scope: !5014)
!5016 = !DILocation(line: 91, column: 22, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 91, column: 6)
!5018 = !DILocation(line: 91, column: 28, scope: !5017)
!5019 = !DILocation(line: 91, column: 7, scope: !5017)
!5020 = !DILocation(line: 91, column: 6, scope: !4987)
!5021 = !DILocation(line: 92, column: 10, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 91, column: 36)
!5023 = !DILocation(line: 93, column: 3, scope: !5022)
!5024 = !DILocation(line: 95, column: 10, scope: !4987)
!5025 = !DILocation(line: 95, column: 2, scope: !4987)
!5026 = !DILocation(line: 97, column: 7, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 97, column: 7)
!5028 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 95, column: 17)
!5029 = !DILocation(line: 97, column: 13, scope: !5027)
!5030 = !DILocation(line: 97, column: 18, scope: !5027)
!5031 = !DILocation(line: 97, column: 7, scope: !5028)
!5032 = !DILocation(line: 98, column: 13, scope: !5027)
!5033 = !DILocation(line: 98, column: 19, scope: !5027)
!5034 = !DILocation(line: 98, column: 24, scope: !5027)
!5035 = !DILocation(line: 98, column: 37, scope: !5027)
!5036 = !DILocation(line: 98, column: 11, scope: !5027)
!5037 = !DILocation(line: 98, column: 4, scope: !5027)
!5038 = !DILocation(line: 99, column: 3, scope: !5028)
!5039 = !DILocation(line: 102, column: 7, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 102, column: 7)
!5041 = !DILocation(line: 102, column: 13, scope: !5040)
!5042 = !DILocation(line: 102, column: 18, scope: !5040)
!5043 = !DILocation(line: 102, column: 7, scope: !5028)
!5044 = !DILocation(line: 103, column: 13, scope: !5040)
!5045 = !DILocation(line: 103, column: 19, scope: !5040)
!5046 = !DILocation(line: 103, column: 24, scope: !5040)
!5047 = !DILocation(line: 103, column: 36, scope: !5040)
!5048 = !DILocation(line: 103, column: 11, scope: !5040)
!5049 = !DILocation(line: 103, column: 4, scope: !5040)
!5050 = !DILocation(line: 104, column: 3, scope: !5028)
!5051 = !DILocation(line: 107, column: 3, scope: !5028)
!5052 = !DILocation(line: 108, column: 10, scope: !5028)
!5053 = !DILocation(line: 109, column: 2, scope: !5028)
!5054 = !DILocation(line: 110, column: 13, scope: !4987)
!5055 = !DILocation(line: 110, column: 19, scope: !4987)
!5056 = !DILocation(line: 110, column: 2, scope: !4987)
!5057 = !DILabel(scope: !4987, name: "exit", file: !3, line: 112)
!5058 = !DILocation(line: 112, column: 1, scope: !4987)
!5059 = !DILocation(line: 113, column: 6, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 113, column: 6)
!5061 = !DILocation(line: 113, column: 6, scope: !4987)
!5062 = !DILocation(line: 114, column: 10, scope: !5060)
!5063 = !DILocation(line: 114, column: 3, scope: !5060)
!5064 = !DILocation(line: 115, column: 9, scope: !4987)
!5065 = !DILocation(line: 115, column: 2, scope: !4987)
!5066 = !DILocation(line: 116, column: 1, scope: !4987)
!5067 = distinct !DISubprogram(name: "get_power_status", scope: !3, file: !3, line: 62, type: !167, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!5068 = !DILocalVariable(name: "slot", arg: 1, scope: !5067, file: !3, line: 62, type: !142)
!5069 = !DILocation(line: 62, column: 1, scope: !5067)
!5070 = !DILocalVariable(name: "value", arg: 2, scope: !5067, file: !3, line: 62, type: !169)
!5071 = !DILocalVariable(name: "ops", scope: !5067, file: !3, line: 62, type: !147)
!5072 = !DILocalVariable(name: "retval", scope: !5067, file: !3, line: 62, type: !155)
!5073 = !DILocation(line: 62, column: 1, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 62, column: 1)
!5075 = !DILocation(line: 62, column: 1, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 62, column: 1)
!5077 = distinct !DISubprogram(name: "try_module_get", scope: !5078, file: !5078, line: 751, type: !5079, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!5078 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!419, !835}
!5081 = !DILocalVariable(name: "module", arg: 1, scope: !5077, file: !5078, line: 751, type: !835)
!5082 = !DILocation(line: 751, column: 50, scope: !5077)
!5083 = !DILocation(line: 753, column: 2, scope: !5077)
!5084 = distinct !DISubprogram(name: "module_put", scope: !5078, file: !5078, line: 756, type: !5085, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{null, !835}
!5087 = !DILocalVariable(name: "module", arg: 1, scope: !5084, file: !5078, line: 756, type: !835)
!5088 = !DILocation(line: 756, column: 46, scope: !5084)
!5089 = !DILocation(line: 758, column: 1, scope: !5084)
!5090 = distinct !DISubprogram(name: "attention_read_file", scope: !3, file: !3, line: 124, type: !4282, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!5091 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !5090, file: !3, line: 124, type: !179)
!5092 = !DILocation(line: 124, column: 53, scope: !5090)
!5093 = !DILocalVariable(name: "buf", arg: 2, scope: !5090, file: !3, line: 124, type: !357)
!5094 = !DILocation(line: 124, column: 69, scope: !5090)
!5095 = !DILocalVariable(name: "retval", scope: !5090, file: !3, line: 126, type: !155)
!5096 = !DILocation(line: 126, column: 6, scope: !5090)
!5097 = !DILocalVariable(name: "value", scope: !5090, file: !3, line: 127, type: !127)
!5098 = !DILocation(line: 127, column: 5, scope: !5090)
!5099 = !DILocation(line: 129, column: 32, scope: !5090)
!5100 = !DILocation(line: 129, column: 42, scope: !5090)
!5101 = !DILocation(line: 129, column: 11, scope: !5090)
!5102 = !DILocation(line: 129, column: 9, scope: !5090)
!5103 = !DILocation(line: 130, column: 6, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5090, file: !3, line: 130, column: 6)
!5105 = !DILocation(line: 130, column: 6, scope: !5090)
!5106 = !DILocation(line: 131, column: 10, scope: !5104)
!5107 = !DILocation(line: 131, column: 3, scope: !5104)
!5108 = !DILocation(line: 133, column: 17, scope: !5090)
!5109 = !DILocation(line: 133, column: 30, scope: !5090)
!5110 = !DILocation(line: 133, column: 9, scope: !5090)
!5111 = !DILocation(line: 133, column: 2, scope: !5090)
!5112 = !DILocation(line: 134, column: 1, scope: !5090)
!5113 = distinct !DISubprogram(name: "attention_write_file", scope: !3, file: !3, line: 136, type: !4286, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!5114 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !5113, file: !3, line: 136, type: !179)
!5115 = !DILocation(line: 136, column: 54, scope: !5113)
!5116 = !DILocalVariable(name: "buf", arg: 2, scope: !5113, file: !3, line: 136, type: !230)
!5117 = !DILocation(line: 136, column: 76, scope: !5113)
!5118 = !DILocalVariable(name: "count", arg: 3, scope: !5113, file: !3, line: 137, type: !400)
!5119 = !DILocation(line: 137, column: 16, scope: !5113)
!5120 = !DILocalVariable(name: "slot", scope: !5113, file: !3, line: 139, type: !142)
!5121 = !DILocation(line: 139, column: 23, scope: !5113)
!5122 = !DILocation(line: 139, column: 30, scope: !5113)
!5123 = !DILocation(line: 139, column: 40, scope: !5113)
!5124 = !DILocalVariable(name: "ops", scope: !5113, file: !3, line: 140, type: !147)
!5125 = !DILocation(line: 140, column: 33, scope: !5113)
!5126 = !DILocation(line: 140, column: 39, scope: !5113)
!5127 = !DILocation(line: 140, column: 45, scope: !5113)
!5128 = !DILocalVariable(name: "lattention", scope: !5113, file: !3, line: 141, type: !125)
!5129 = !DILocation(line: 141, column: 16, scope: !5113)
!5130 = !DILocalVariable(name: "attention", scope: !5113, file: !3, line: 142, type: !127)
!5131 = !DILocation(line: 142, column: 5, scope: !5113)
!5132 = !DILocalVariable(name: "retval", scope: !5113, file: !3, line: 143, type: !155)
!5133 = !DILocation(line: 143, column: 6, scope: !5113)
!5134 = !DILocation(line: 145, column: 30, scope: !5113)
!5135 = !DILocation(line: 145, column: 15, scope: !5113)
!5136 = !DILocation(line: 145, column: 13, scope: !5113)
!5137 = !DILocation(line: 146, column: 19, scope: !5113)
!5138 = !DILocation(line: 146, column: 30, scope: !5113)
!5139 = !DILocation(line: 146, column: 14, scope: !5113)
!5140 = !DILocation(line: 146, column: 12, scope: !5113)
!5141 = !DILocation(line: 147, column: 2, scope: !5113)
!5142 = !DILocation(line: 147, column: 2, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 147, column: 2)
!5144 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 147, column: 2)
!5145 = !DILocation(line: 147, column: 2, scope: !5144)
!5146 = !DILocation(line: 149, column: 22, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 149, column: 6)
!5148 = !DILocation(line: 149, column: 28, scope: !5147)
!5149 = !DILocation(line: 149, column: 7, scope: !5147)
!5150 = !DILocation(line: 149, column: 6, scope: !5113)
!5151 = !DILocation(line: 150, column: 10, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 149, column: 36)
!5153 = !DILocation(line: 151, column: 3, scope: !5152)
!5154 = !DILocation(line: 153, column: 6, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 153, column: 6)
!5156 = !DILocation(line: 153, column: 11, scope: !5155)
!5157 = !DILocation(line: 153, column: 6, scope: !5113)
!5158 = !DILocation(line: 154, column: 12, scope: !5155)
!5159 = !DILocation(line: 154, column: 17, scope: !5155)
!5160 = !DILocation(line: 154, column: 38, scope: !5155)
!5161 = !DILocation(line: 154, column: 44, scope: !5155)
!5162 = !DILocation(line: 154, column: 10, scope: !5155)
!5163 = !DILocation(line: 154, column: 3, scope: !5155)
!5164 = !DILocation(line: 155, column: 13, scope: !5113)
!5165 = !DILocation(line: 155, column: 19, scope: !5113)
!5166 = !DILocation(line: 155, column: 2, scope: !5113)
!5167 = !DILabel(scope: !5113, name: "exit", file: !3, line: 157)
!5168 = !DILocation(line: 157, column: 1, scope: !5113)
!5169 = !DILocation(line: 158, column: 6, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 158, column: 6)
!5171 = !DILocation(line: 158, column: 6, scope: !5113)
!5172 = !DILocation(line: 159, column: 10, scope: !5170)
!5173 = !DILocation(line: 159, column: 3, scope: !5170)
!5174 = !DILocation(line: 160, column: 9, scope: !5113)
!5175 = !DILocation(line: 160, column: 2, scope: !5113)
!5176 = !DILocation(line: 161, column: 1, scope: !5113)
!5177 = distinct !DISubprogram(name: "get_attention_status", scope: !3, file: !3, line: 63, type: !167, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!5178 = !DILocalVariable(name: "slot", arg: 1, scope: !5177, file: !3, line: 63, type: !142)
!5179 = !DILocation(line: 63, column: 1, scope: !5177)
!5180 = !DILocalVariable(name: "value", arg: 2, scope: !5177, file: !3, line: 63, type: !169)
!5181 = !DILocalVariable(name: "ops", scope: !5177, file: !3, line: 63, type: !147)
!5182 = !DILocalVariable(name: "retval", scope: !5177, file: !3, line: 63, type: !155)
!5183 = !DILocation(line: 63, column: 1, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5177, file: !3, line: 63, column: 1)
!5185 = !DILocation(line: 63, column: 1, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5177, file: !3, line: 63, column: 1)
!5187 = distinct !DISubprogram(name: "latch_read_file", scope: !3, file: !3, line: 169, type: !4282, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!5188 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !5187, file: !3, line: 169, type: !179)
!5189 = !DILocation(line: 169, column: 49, scope: !5187)
!5190 = !DILocalVariable(name: "buf", arg: 2, scope: !5187, file: !3, line: 169, type: !357)
!5191 = !DILocation(line: 169, column: 65, scope: !5187)
!5192 = !DILocalVariable(name: "retval", scope: !5187, file: !3, line: 171, type: !155)
!5193 = !DILocation(line: 171, column: 6, scope: !5187)
!5194 = !DILocalVariable(name: "value", scope: !5187, file: !3, line: 172, type: !127)
!5195 = !DILocation(line: 172, column: 5, scope: !5187)
!5196 = !DILocation(line: 174, column: 28, scope: !5187)
!5197 = !DILocation(line: 174, column: 38, scope: !5187)
!5198 = !DILocation(line: 174, column: 11, scope: !5187)
!5199 = !DILocation(line: 174, column: 9, scope: !5187)
!5200 = !DILocation(line: 175, column: 6, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 175, column: 6)
!5202 = !DILocation(line: 175, column: 6, scope: !5187)
!5203 = !DILocation(line: 176, column: 10, scope: !5201)
!5204 = !DILocation(line: 176, column: 3, scope: !5201)
!5205 = !DILocation(line: 178, column: 17, scope: !5187)
!5206 = !DILocation(line: 178, column: 30, scope: !5187)
!5207 = !DILocation(line: 178, column: 9, scope: !5187)
!5208 = !DILocation(line: 178, column: 2, scope: !5187)
!5209 = !DILocation(line: 179, column: 1, scope: !5187)
!5210 = distinct !DISubprogram(name: "get_latch_status", scope: !3, file: !3, line: 64, type: !167, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!5211 = !DILocalVariable(name: "slot", arg: 1, scope: !5210, file: !3, line: 64, type: !142)
!5212 = !DILocation(line: 64, column: 1, scope: !5210)
!5213 = !DILocalVariable(name: "value", arg: 2, scope: !5210, file: !3, line: 64, type: !169)
!5214 = !DILocalVariable(name: "ops", scope: !5210, file: !3, line: 64, type: !147)
!5215 = !DILocalVariable(name: "retval", scope: !5210, file: !3, line: 64, type: !155)
!5216 = !DILocation(line: 64, column: 1, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 64, column: 1)
!5218 = !DILocation(line: 64, column: 1, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 64, column: 1)
!5220 = distinct !DISubprogram(name: "presence_read_file", scope: !3, file: !3, line: 186, type: !4282, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!5221 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !5220, file: !3, line: 186, type: !179)
!5222 = !DILocation(line: 186, column: 52, scope: !5220)
!5223 = !DILocalVariable(name: "buf", arg: 2, scope: !5220, file: !3, line: 186, type: !357)
!5224 = !DILocation(line: 186, column: 68, scope: !5220)
!5225 = !DILocalVariable(name: "retval", scope: !5220, file: !3, line: 188, type: !155)
!5226 = !DILocation(line: 188, column: 6, scope: !5220)
!5227 = !DILocalVariable(name: "value", scope: !5220, file: !3, line: 189, type: !127)
!5228 = !DILocation(line: 189, column: 5, scope: !5220)
!5229 = !DILocation(line: 191, column: 30, scope: !5220)
!5230 = !DILocation(line: 191, column: 40, scope: !5220)
!5231 = !DILocation(line: 191, column: 11, scope: !5220)
!5232 = !DILocation(line: 191, column: 9, scope: !5220)
!5233 = !DILocation(line: 192, column: 6, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5220, file: !3, line: 192, column: 6)
!5235 = !DILocation(line: 192, column: 6, scope: !5220)
!5236 = !DILocation(line: 193, column: 10, scope: !5234)
!5237 = !DILocation(line: 193, column: 3, scope: !5234)
!5238 = !DILocation(line: 195, column: 17, scope: !5220)
!5239 = !DILocation(line: 195, column: 30, scope: !5220)
!5240 = !DILocation(line: 195, column: 9, scope: !5220)
!5241 = !DILocation(line: 195, column: 2, scope: !5220)
!5242 = !DILocation(line: 196, column: 1, scope: !5220)
!5243 = distinct !DISubprogram(name: "get_adapter_status", scope: !3, file: !3, line: 65, type: !167, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!5244 = !DILocalVariable(name: "slot", arg: 1, scope: !5243, file: !3, line: 65, type: !142)
!5245 = !DILocation(line: 65, column: 1, scope: !5243)
!5246 = !DILocalVariable(name: "value", arg: 2, scope: !5243, file: !3, line: 65, type: !169)
!5247 = !DILocalVariable(name: "ops", scope: !5243, file: !3, line: 65, type: !147)
!5248 = !DILocalVariable(name: "retval", scope: !5243, file: !3, line: 65, type: !155)
!5249 = !DILocation(line: 65, column: 1, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 65, column: 1)
!5251 = !DILocation(line: 65, column: 1, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 65, column: 1)
!5253 = distinct !DISubprogram(name: "test_write_file", scope: !3, file: !3, line: 203, type: !4286, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!5254 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !5253, file: !3, line: 203, type: !179)
!5255 = !DILocation(line: 203, column: 49, scope: !5253)
!5256 = !DILocalVariable(name: "buf", arg: 2, scope: !5253, file: !3, line: 203, type: !230)
!5257 = !DILocation(line: 203, column: 71, scope: !5253)
!5258 = !DILocalVariable(name: "count", arg: 3, scope: !5253, file: !3, line: 204, type: !400)
!5259 = !DILocation(line: 204, column: 18, scope: !5253)
!5260 = !DILocalVariable(name: "slot", scope: !5253, file: !3, line: 206, type: !142)
!5261 = !DILocation(line: 206, column: 23, scope: !5253)
!5262 = !DILocation(line: 206, column: 30, scope: !5253)
!5263 = !DILocation(line: 206, column: 40, scope: !5253)
!5264 = !DILocalVariable(name: "ltest", scope: !5253, file: !3, line: 207, type: !125)
!5265 = !DILocation(line: 207, column: 16, scope: !5253)
!5266 = !DILocalVariable(name: "test", scope: !5253, file: !3, line: 208, type: !132)
!5267 = !DILocation(line: 208, column: 6, scope: !5253)
!5268 = !DILocalVariable(name: "retval", scope: !5253, file: !3, line: 209, type: !155)
!5269 = !DILocation(line: 209, column: 6, scope: !5253)
!5270 = !DILocation(line: 211, column: 25, scope: !5253)
!5271 = !DILocation(line: 211, column: 10, scope: !5253)
!5272 = !DILocation(line: 211, column: 8, scope: !5253)
!5273 = !DILocation(line: 212, column: 15, scope: !5253)
!5274 = !DILocation(line: 212, column: 21, scope: !5253)
!5275 = !DILocation(line: 212, column: 9, scope: !5253)
!5276 = !DILocation(line: 212, column: 7, scope: !5253)
!5277 = !DILocation(line: 213, column: 2, scope: !5253)
!5278 = !DILocation(line: 213, column: 2, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 213, column: 2)
!5280 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 213, column: 2)
!5281 = !DILocation(line: 213, column: 2, scope: !5280)
!5282 = !DILocation(line: 215, column: 22, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 215, column: 6)
!5284 = !DILocation(line: 215, column: 28, scope: !5283)
!5285 = !DILocation(line: 215, column: 7, scope: !5283)
!5286 = !DILocation(line: 215, column: 6, scope: !5253)
!5287 = !DILocation(line: 216, column: 10, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 215, column: 36)
!5289 = !DILocation(line: 217, column: 3, scope: !5288)
!5290 = !DILocation(line: 219, column: 6, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 219, column: 6)
!5292 = !DILocation(line: 219, column: 12, scope: !5291)
!5293 = !DILocation(line: 219, column: 17, scope: !5291)
!5294 = !DILocation(line: 219, column: 6, scope: !5253)
!5295 = !DILocation(line: 220, column: 12, scope: !5291)
!5296 = !DILocation(line: 220, column: 18, scope: !5291)
!5297 = !DILocation(line: 220, column: 23, scope: !5291)
!5298 = !DILocation(line: 220, column: 37, scope: !5291)
!5299 = !DILocation(line: 220, column: 43, scope: !5291)
!5300 = !DILocation(line: 220, column: 10, scope: !5291)
!5301 = !DILocation(line: 220, column: 3, scope: !5291)
!5302 = !DILocation(line: 221, column: 13, scope: !5253)
!5303 = !DILocation(line: 221, column: 19, scope: !5253)
!5304 = !DILocation(line: 221, column: 2, scope: !5253)
!5305 = !DILabel(scope: !5253, name: "exit", file: !3, line: 223)
!5306 = !DILocation(line: 223, column: 1, scope: !5253)
!5307 = !DILocation(line: 224, column: 6, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 224, column: 6)
!5309 = !DILocation(line: 224, column: 6, scope: !5253)
!5310 = !DILocation(line: 225, column: 10, scope: !5308)
!5311 = !DILocation(line: 225, column: 3, scope: !5308)
!5312 = !DILocation(line: 226, column: 9, scope: !5253)
!5313 = !DILocation(line: 226, column: 2, scope: !5253)
!5314 = !DILocation(line: 227, column: 1, scope: !5253)
!5315 = distinct !DISubprogram(name: "__list_add", scope: !4601, file: !4601, line: 63, type: !5316, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!5316 = !DISubroutineType(types: !5317)
!5317 = !{null, !136, !136, !136}
!5318 = !DILocalVariable(name: "new", arg: 1, scope: !5315, file: !4601, line: 63, type: !136)
!5319 = !DILocation(line: 63, column: 49, scope: !5315)
!5320 = !DILocalVariable(name: "prev", arg: 2, scope: !5315, file: !4601, line: 64, type: !136)
!5321 = !DILocation(line: 64, column: 28, scope: !5315)
!5322 = !DILocalVariable(name: "next", arg: 3, scope: !5315, file: !4601, line: 65, type: !136)
!5323 = !DILocation(line: 65, column: 28, scope: !5315)
!5324 = !DILocation(line: 67, column: 24, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5315, file: !4601, line: 67, column: 6)
!5326 = !DILocation(line: 67, column: 29, scope: !5325)
!5327 = !DILocation(line: 67, column: 35, scope: !5325)
!5328 = !DILocation(line: 67, column: 7, scope: !5325)
!5329 = !DILocation(line: 67, column: 6, scope: !5315)
!5330 = !DILocation(line: 68, column: 3, scope: !5325)
!5331 = !DILocation(line: 70, column: 15, scope: !5315)
!5332 = !DILocation(line: 70, column: 2, scope: !5315)
!5333 = !DILocation(line: 70, column: 8, scope: !5315)
!5334 = !DILocation(line: 70, column: 13, scope: !5315)
!5335 = !DILocation(line: 71, column: 14, scope: !5315)
!5336 = !DILocation(line: 71, column: 2, scope: !5315)
!5337 = !DILocation(line: 71, column: 7, scope: !5315)
!5338 = !DILocation(line: 71, column: 12, scope: !5315)
!5339 = !DILocation(line: 72, column: 14, scope: !5315)
!5340 = !DILocation(line: 72, column: 2, scope: !5315)
!5341 = !DILocation(line: 72, column: 7, scope: !5315)
!5342 = !DILocation(line: 72, column: 12, scope: !5315)
!5343 = !DILocation(line: 73, column: 2, scope: !5315)
!5344 = !DILocation(line: 73, column: 2, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5315, file: !4601, line: 73, column: 2)
!5346 = !DILocation(line: 73, column: 2, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5345, file: !4601, line: 73, column: 2)
!5348 = !DILocation(line: 73, column: 2, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5345, file: !4601, line: 73, column: 2)
!5350 = !DILocation(line: 74, column: 1, scope: !5315)
!5351 = distinct !DISubprogram(name: "__list_add_valid", scope: !4601, file: !4601, line: 45, type: !5352, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!5352 = !DISubroutineType(types: !5353)
!5353 = !{!419, !136, !136, !136}
!5354 = !DILocalVariable(name: "new", arg: 1, scope: !5351, file: !4601, line: 45, type: !136)
!5355 = !DILocation(line: 45, column: 55, scope: !5351)
!5356 = !DILocalVariable(name: "prev", arg: 2, scope: !5351, file: !4601, line: 46, type: !136)
!5357 = !DILocation(line: 46, column: 23, scope: !5351)
!5358 = !DILocalVariable(name: "next", arg: 3, scope: !5351, file: !4601, line: 47, type: !136)
!5359 = !DILocation(line: 47, column: 23, scope: !5351)
!5360 = !DILocation(line: 49, column: 2, scope: !5351)
!5361 = distinct !DISubprogram(name: "pci_slot_name", scope: !181, file: !181, line: 77, type: !5362, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!5362 = !DISubroutineType(types: !5363)
!5363 = !{!230, !5364}
!5364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5365, size: 64)
!5365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!5366 = !DILocalVariable(name: "slot", arg: 1, scope: !5361, file: !181, line: 77, type: !5364)
!5367 = !DILocation(line: 77, column: 64, scope: !5361)
!5368 = !DILocation(line: 79, column: 23, scope: !5361)
!5369 = !DILocation(line: 79, column: 29, scope: !5361)
!5370 = !DILocation(line: 79, column: 9, scope: !5361)
!5371 = !DILocation(line: 79, column: 2, scope: !5361)
!5372 = distinct !DISubprogram(name: "kobject_name", scope: !108, file: !108, line: 88, type: !5373, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{!230, !5375}
!5375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5376, size: 64)
!5376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!5377 = !DILocalVariable(name: "kobj", arg: 1, scope: !5372, file: !108, line: 88, type: !5375)
!5378 = !DILocation(line: 88, column: 62, scope: !5372)
!5379 = !DILocation(line: 90, column: 9, scope: !5372)
!5380 = !DILocation(line: 90, column: 15, scope: !5372)
!5381 = !DILocation(line: 90, column: 2, scope: !5372)
!5382 = distinct !DISubprogram(name: "__list_del_entry", scope: !4601, file: !4601, line: 130, type: !4737, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!5383 = !DILocalVariable(name: "entry", arg: 1, scope: !5382, file: !4601, line: 130, type: !136)
!5384 = !DILocation(line: 130, column: 55, scope: !5382)
!5385 = !DILocation(line: 132, column: 30, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5382, file: !4601, line: 132, column: 6)
!5387 = !DILocation(line: 132, column: 7, scope: !5386)
!5388 = !DILocation(line: 132, column: 6, scope: !5382)
!5389 = !DILocation(line: 133, column: 3, scope: !5386)
!5390 = !DILocation(line: 135, column: 13, scope: !5382)
!5391 = !DILocation(line: 135, column: 20, scope: !5382)
!5392 = !DILocation(line: 135, column: 26, scope: !5382)
!5393 = !DILocation(line: 135, column: 33, scope: !5382)
!5394 = !DILocation(line: 135, column: 2, scope: !5382)
!5395 = !DILocation(line: 136, column: 1, scope: !5382)
!5396 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4601, file: !4601, line: 51, type: !5397, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!5397 = !DISubroutineType(types: !5398)
!5398 = !{!419, !136}
!5399 = !DILocalVariable(name: "entry", arg: 1, scope: !5396, file: !4601, line: 51, type: !136)
!5400 = !DILocation(line: 51, column: 61, scope: !5396)
!5401 = !DILocation(line: 53, column: 2, scope: !5396)
!5402 = distinct !DISubprogram(name: "__list_del", scope: !4601, file: !4601, line: 110, type: !4602, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !330)
!5403 = !DILocalVariable(name: "prev", arg: 1, scope: !5402, file: !4601, line: 110, type: !136)
!5404 = !DILocation(line: 110, column: 50, scope: !5402)
!5405 = !DILocalVariable(name: "next", arg: 2, scope: !5402, file: !4601, line: 110, type: !136)
!5406 = !DILocation(line: 110, column: 75, scope: !5402)
!5407 = !DILocation(line: 112, column: 15, scope: !5402)
!5408 = !DILocation(line: 112, column: 2, scope: !5402)
!5409 = !DILocation(line: 112, column: 8, scope: !5402)
!5410 = !DILocation(line: 112, column: 13, scope: !5402)
!5411 = !DILocation(line: 113, column: 2, scope: !5402)
!5412 = !DILocation(line: 113, column: 2, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5402, file: !4601, line: 113, column: 2)
!5414 = !DILocation(line: 113, column: 2, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5413, file: !4601, line: 113, column: 2)
!5416 = !DILocation(line: 113, column: 2, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5413, file: !4601, line: 113, column: 2)
!5418 = !DILocation(line: 114, column: 1, scope: !5402)
