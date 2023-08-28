; ModuleID = '../bcout/drivers/hv/hv.llvm.bc'
source_filename = "drivers/hv/hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.hv_context = type { i64, %struct.hv_per_cpu_context*, %struct.cpumask* }
%struct.hv_per_cpu_context = type { i8*, i8*, i8*, %struct.tasklet_struct }
%struct.tasklet_struct = type { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, %union.anon, i64 }
%struct.atomic_t = type { i32 }
%union.anon = type { void (i64)* }
%struct.cpumask = type { [1 x i64] }
%struct.ms_hyperv_info = type { i32, i32, i32, i32, i32, i32 }
%struct.vmbus_connection = type { i32, %struct.atomic_t, i32, %struct.atomic_t, %struct.completion, i8*, i8*, i8*, [2 x %struct.hv_monitor_page*], %struct.list_head, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.vmbus_channel**, %struct.workqueue_struct*, %struct.workqueue_struct*, %struct.workqueue_struct*, %struct.atomic_t, %struct.completion, %struct.atomic_t, %struct.completion }
%struct.hv_monitor_page = type { %union.hv_monitor_trigger_state, i32, [4 x %union.hv_monitor_trigger_group], [3 x i64], [4 x [32 x i32]], [4 x [32 x i16]], [32 x i64], [4 x [32 x %struct.hv_monitor_parameter]], [1984 x i8] }
%union.hv_monitor_trigger_state = type { i32 }
%union.hv_monitor_trigger_group = type { i64 }
%struct.hv_monitor_parameter = type { %union.hv_connection_id, i16, i16 }
%union.hv_connection_id = type { i32 }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.vmbus_channel = type { %struct.list_head, %struct.hv_device*, i32, %struct.vmbus_channel_offer_channel, i8, i8, i8, %struct.completion, i32, %struct.page*, i32, i32, %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info, %struct.vmbus_close_msg, i64, i64, i64, i8, %struct.tasklet_struct, void (i8*)*, i8*, void (%struct.vmbus_channel*, i32, i32)*, %struct.spinlock, i32, i8, i64, i32, void (%struct.vmbus_channel*)*, void (%struct.vmbus_channel*)*, %struct.list_head, %struct.vmbus_channel*, i8*, %struct.callback_head, %struct.kobject, i8, i8, i16, %struct.work_struct, i64, i64, i64, i8, i32, i32 }
%struct.hv_device = type { %struct.guid_t, %struct.guid_t, i16, i16, %struct.device, i8*, %struct.vmbus_channel*, %struct.kset*, %struct.dentry* }
%struct.guid_t = type { [16 x i8] }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
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
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.attribute = type { i8*, i16 }
%struct.file = type { %union.anon.4, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.60, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.61, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.62, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.65, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.59, i32 }
%union.anon.59 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.51, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics }
%struct.load_weight = type { i64, i32 }
%struct.sched_statistics = type {}
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, %struct.sched_rt_entity* }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, %struct.sched_dl_entity* }
%struct.sched_info = type {}
%struct.mm_struct = type { %struct.anon.21, [0 x i64] }
%struct.anon.21 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.22, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.22 = type { %struct.rb_node, i64 }
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
%struct.vdso_image = type opaque
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.28, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.29, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.30, %union.anon.34, %struct.key_restriction* }
%union.anon.28 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.29 = type { i64 }
%union.anon.30 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.31, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.31 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.34 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.37, %union.anon.38, i32 }
%struct.request_queue = type opaque
%union.anon.37 = type { %struct.list_head }
%union.anon.38 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.39 }
%struct.anon.39 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.43 }
%struct.anon.43 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.50, i32, [12 x i8] }
%union.anon.50 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.51 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.52, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.55 }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { i64, i64 }
%union.anon.55 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.5, i8* }
%union.anon.5 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.user_namespace = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.60 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%union.anon.61 = type { %struct.callback_head }
%union.anon.62 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.10 }
%union.anon.10 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.65 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.63 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.63 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.36 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.68, %struct.list_head, %struct.list_head, %union.anon.69 }
%struct.lockref = type { %union.anon.66 }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { %struct.spinlock, i32 }
%union.anon.68 = type { %struct.list_head }
%union.anon.69 = type { %struct.hlist_node }
%struct.vmbus_channel_offer_channel = type <{ %struct.vmbus_channel_message_header, %struct.vmbus_channel_offer, i32, i8, [3 x i8], i32 }>
%struct.vmbus_channel_message_header = type { i32, i32 }
%struct.vmbus_channel_offer = type { %struct.guid_t, %struct.guid_t, i64, i64, i16, i16, %union.anon.71, i16, i16 }
%union.anon.71 = type { %struct.anon.73 }
%struct.anon.73 = type { i32, [116 x i8] }
%struct.page = type { i64, %union.anon.7, %union.anon.58, %struct.atomic_t, [8 x i8] }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.58 = type { %struct.atomic_t }
%struct.hv_ring_buffer_info = type { %struct.hv_ring_buffer*, i32, %struct.reciprocal_value, %struct.spinlock, i32, i32, %struct.mutex }
%struct.hv_ring_buffer = type { i32, i32, i32, i32, [12 x i32], %union.anon.74, [4028 x i8], [0 x i8] }
%union.anon.74 = type { i32 }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.vmbus_close_msg = type { %struct.vmbus_channel_msginfo, %struct.vmbus_channel_close_channel }
%struct.vmbus_channel_msginfo = type { %struct.list_head, %struct.list_head, %struct.completion, %struct.vmbus_channel*, %union.anon.76, i32, [0 x i8] }
%union.anon.76 = type { %struct.vmbus_channel_open_result }
%struct.vmbus_channel_open_result = type { %struct.vmbus_channel_message_header, i32, i32, i32 }
%struct.vmbus_channel_close_channel = type { %struct.vmbus_channel_message_header, i32 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.70, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.70 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.workqueue_struct = type opaque
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kmem_cache = type opaque
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
%struct.hv_input_post_message = type { %union.hv_connection_id, i32, i32, i32, [30 x i64] }
%union.hv_synic_simp = type { i64 }
%union.hv_synic_siefp = type { i64 }
%union.hv_synic_sint = type { i64 }
%union.hv_synic_scontrol = type { i64 }
%struct.anon.0 = type { i64 }
%struct.anon.1 = type { i64 }
%struct.anon.2 = type { i64 }
%struct.anon.3 = type { i64 }

@hv_context = dso_local global %struct.hv_context zeroinitializer, align 8, !dbg !0
@__cpu_present_mask = external dso_local global %struct.cpumask, align 8
@.str = private unnamed_addr constant [41 x i8] c"\013hv_vmbus: Unable to allocate NUMA map\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"\013hv_vmbus: Unable to allocate SYNIC message page\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"\013hv_vmbus: Unable to allocate SYNIC event page\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\013hv_vmbus: Unable to allocate post msg page\0A\00", align 1
@ms_hyperv = external dso_local global %struct.ms_hyperv_info, align 4
@vmbus_connection = external dso_local global %struct.vmbus_connection, align 8
@hv_hypercall_pg = external dso_local global i8*, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hv_init() #0 !dbg !4140 {
entry:
  %retval = alloca i32, align 4
  %call = call i8* @__alloc_percpu(i64 64, i64 8) #10, !dbg !4143
  %0 = bitcast i8* %call to %struct.hv_per_cpu_context*, !dbg !4143
  store %struct.hv_per_cpu_context* %0, %struct.hv_per_cpu_context** getelementptr inbounds (%struct.hv_context, %struct.hv_context* @hv_context, i32 0, i32 1), align 8, !dbg !4144
  %1 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** getelementptr inbounds (%struct.hv_context, %struct.hv_context* @hv_context, i32 0, i32 1), align 8, !dbg !4145
  %tobool = icmp ne %struct.hv_per_cpu_context* %1, null, !dbg !4147
  br i1 %tobool, label %if.end, label %if.then, !dbg !4148

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4149
  br label %return, !dbg !4149

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4150
  br label %return, !dbg !4150

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !4151
  ret i32 %2, !dbg !4151
}

; Function Attrs: noredzone
declare dso_local i8* @__alloc_percpu(i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hv_post_message(i32 %connection_id.coerce, i32 %message_type, i8* %payload, i64 %payload_size) #0 !dbg !4152 {
entry:
  %retval = alloca i32, align 4
  %connection_id = alloca %union.hv_connection_id, align 4
  %message_type.addr = alloca i32, align 4
  %payload.addr = alloca i8*, align 8
  %payload_size.addr = alloca i64, align 8
  %aligned_msg = alloca %struct.hv_input_post_message*, align 8
  %hv_cpu = alloca %struct.hv_per_cpu_context*, align 8
  %status = alloca i64, align 8
  %tmp = alloca %struct.hv_per_cpu_context*, align 8
  %tmp1 = alloca %struct.hv_per_cpu_context*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp2 = alloca %struct.hv_per_cpu_context*, align 8
  %coerce.dive = getelementptr inbounds %union.hv_connection_id, %union.hv_connection_id* %connection_id, i32 0, i32 0
  store i32 %connection_id.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %union.hv_connection_id* %connection_id, metadata !4163, metadata !DIExpression()), !dbg !4164
  store i32 %message_type, i32* %message_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %message_type.addr, metadata !4165, metadata !DIExpression()), !dbg !4166
  store i8* %payload, i8** %payload.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %payload.addr, metadata !4167, metadata !DIExpression()), !dbg !4168
  store i64 %payload_size, i64* %payload_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %payload_size.addr, metadata !4169, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.declare(metadata %struct.hv_input_post_message** %aligned_msg, metadata !4171, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.declare(metadata %struct.hv_per_cpu_context** %hv_cpu, metadata !4184, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.declare(metadata i64* %status, metadata !4186, metadata !DIExpression()), !dbg !4187
  %0 = load i64, i64* %payload_size.addr, align 8, !dbg !4188
  %cmp = icmp ugt i64 %0, 240, !dbg !4190
  br i1 %cmp, label %if.then, label %if.end, !dbg !4191

if.then:                                          ; preds = %entry
  store i32 -90, i32* %retval, align 4, !dbg !4192
  br label %return, !dbg !4192

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4193, !srcloc !4195
  br label %do.body, !dbg !4196

do.body:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !4199, metadata !DIExpression()), !dbg !4201
  store i8* null, i8** %__vpp_verify, align 8, !dbg !4201
  %1 = load i8*, i8** %__vpp_verify, align 8, !dbg !4201
  br label %do.end, !dbg !4201

do.end:                                           ; preds = %do.body
  %2 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** getelementptr inbounds (%struct.hv_context, %struct.hv_context* @hv_context, i32 0, i32 1), align 8, !dbg !4196
  store %struct.hv_per_cpu_context* %2, %struct.hv_per_cpu_context** %tmp2, align 8, !dbg !4201
  %3 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %tmp2, align 8, !dbg !4196
  store %struct.hv_per_cpu_context* %3, %struct.hv_per_cpu_context** %tmp1, align 8, !dbg !4202
  %4 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %tmp1, align 8, !dbg !4202
  store %struct.hv_per_cpu_context* %4, %struct.hv_per_cpu_context** %tmp, align 8, !dbg !4193
  %5 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %tmp, align 8, !dbg !4193
  store %struct.hv_per_cpu_context* %5, %struct.hv_per_cpu_context** %hv_cpu, align 8, !dbg !4203
  %6 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %hv_cpu, align 8, !dbg !4204
  %post_msg_page = getelementptr inbounds %struct.hv_per_cpu_context, %struct.hv_per_cpu_context* %6, i32 0, i32 2, !dbg !4205
  %7 = load i8*, i8** %post_msg_page, align 8, !dbg !4205
  %8 = bitcast i8* %7 to %struct.hv_input_post_message*, !dbg !4204
  store %struct.hv_input_post_message* %8, %struct.hv_input_post_message** %aligned_msg, align 8, !dbg !4206
  %9 = load %struct.hv_input_post_message*, %struct.hv_input_post_message** %aligned_msg, align 8, !dbg !4207
  %connectionid = getelementptr inbounds %struct.hv_input_post_message, %struct.hv_input_post_message* %9, i32 0, i32 0, !dbg !4208
  %10 = bitcast %union.hv_connection_id* %connectionid to i8*, !dbg !4209
  %11 = bitcast %union.hv_connection_id* %connection_id to i8*, !dbg !4209
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 4 %11, i64 4, i1 false), !dbg !4209
  %12 = load %struct.hv_input_post_message*, %struct.hv_input_post_message** %aligned_msg, align 8, !dbg !4210
  %reserved = getelementptr inbounds %struct.hv_input_post_message, %struct.hv_input_post_message* %12, i32 0, i32 1, !dbg !4211
  store i32 0, i32* %reserved, align 4, !dbg !4212
  %13 = load i32, i32* %message_type.addr, align 4, !dbg !4213
  %14 = load %struct.hv_input_post_message*, %struct.hv_input_post_message** %aligned_msg, align 8, !dbg !4214
  %message_type3 = getelementptr inbounds %struct.hv_input_post_message, %struct.hv_input_post_message* %14, i32 0, i32 2, !dbg !4215
  store i32 %13, i32* %message_type3, align 8, !dbg !4216
  %15 = load i64, i64* %payload_size.addr, align 8, !dbg !4217
  %conv = trunc i64 %15 to i32, !dbg !4217
  %16 = load %struct.hv_input_post_message*, %struct.hv_input_post_message** %aligned_msg, align 8, !dbg !4218
  %payload_size4 = getelementptr inbounds %struct.hv_input_post_message, %struct.hv_input_post_message* %16, i32 0, i32 3, !dbg !4219
  store i32 %conv, i32* %payload_size4, align 4, !dbg !4220
  %17 = load %struct.hv_input_post_message*, %struct.hv_input_post_message** %aligned_msg, align 8, !dbg !4221
  %payload5 = getelementptr inbounds %struct.hv_input_post_message, %struct.hv_input_post_message* %17, i32 0, i32 4, !dbg !4222
  %arraydecay = getelementptr inbounds [30 x i64], [30 x i64]* %payload5, i64 0, i64 0, !dbg !4223
  %18 = bitcast i64* %arraydecay to i8*, !dbg !4223
  %19 = load i8*, i8** %payload.addr, align 8, !dbg !4224
  %20 = load i64, i64* %payload_size.addr, align 8, !dbg !4225
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 1 %19, i64 %20, i1 false), !dbg !4223
  %21 = load %struct.hv_input_post_message*, %struct.hv_input_post_message** %aligned_msg, align 8, !dbg !4226
  %22 = bitcast %struct.hv_input_post_message* %21 to i8*, !dbg !4226
  %call = call i64 @hv_do_hypercall(i64 92, i8* %22, i8* null) #10, !dbg !4227
  store i64 %call, i64* %status, align 8, !dbg !4228
  br label %do.body6, !dbg !4229

do.body6:                                         ; preds = %do.end
  %23 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %hv_cpu, align 8, !dbg !4230
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4230, !srcloc !4232
  br label %do.end7, !dbg !4230

do.end7:                                          ; preds = %do.body6
  %24 = load i64, i64* %status, align 8, !dbg !4233
  %and = and i64 %24, 65535, !dbg !4234
  %conv8 = trunc i64 %and to i32, !dbg !4233
  store i32 %conv8, i32* %retval, align 4, !dbg !4235
  br label %return, !dbg !4235

return:                                           ; preds = %do.end7, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !4236
  ret i32 %25, !dbg !4236
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @hv_do_hypercall(i64 %control, i8* %input, i8* %output) #0 !dbg !4237 {
entry:
  %retval = alloca i64, align 8
  %control.addr = alloca i64, align 8
  %input.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %input_address = alloca i64, align 8
  %output_address = alloca i64, align 8
  %hv_status = alloca i64, align 8
  store i64 %control, i64* %control.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %control.addr, metadata !4241, metadata !DIExpression()), !dbg !4242
  store i8* %input, i8** %input.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %input.addr, metadata !4243, metadata !DIExpression()), !dbg !4244
  store i8* %output, i8** %output.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %output.addr, metadata !4245, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.declare(metadata i64* %input_address, metadata !4247, metadata !DIExpression()), !dbg !4248
  %0 = load i8*, i8** %input.addr, align 8, !dbg !4249
  %tobool = icmp ne i8* %0, null, !dbg !4249
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4249

cond.true:                                        ; preds = %entry
  %1 = load i8*, i8** %input.addr, align 8, !dbg !4250
  %call = call i64 @virt_to_phys(i8* %1) #10, !dbg !4251
  br label %cond.end, !dbg !4249

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4249

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 0, %cond.false ], !dbg !4249
  store i64 %cond, i64* %input_address, align 8, !dbg !4248
  call void @llvm.dbg.declare(metadata i64* %output_address, metadata !4252, metadata !DIExpression()), !dbg !4253
  %2 = load i8*, i8** %output.addr, align 8, !dbg !4254
  %tobool1 = icmp ne i8* %2, null, !dbg !4254
  br i1 %tobool1, label %cond.true2, label %cond.false4, !dbg !4254

cond.true2:                                       ; preds = %cond.end
  %3 = load i8*, i8** %output.addr, align 8, !dbg !4255
  %call3 = call i64 @virt_to_phys(i8* %3) #10, !dbg !4256
  br label %cond.end5, !dbg !4254

cond.false4:                                      ; preds = %cond.end
  br label %cond.end5, !dbg !4254

cond.end5:                                        ; preds = %cond.false4, %cond.true2
  %cond6 = phi i64 [ %call3, %cond.true2 ], [ 0, %cond.false4 ], !dbg !4254
  store i64 %cond6, i64* %output_address, align 8, !dbg !4253
  call void @llvm.dbg.declare(metadata i64* %hv_status, metadata !4257, metadata !DIExpression()), !dbg !4258
  %4 = load i8*, i8** @hv_hypercall_pg, align 8, !dbg !4259
  %tobool7 = icmp ne i8* %4, null, !dbg !4259
  br i1 %tobool7, label %if.end, label %if.then, !dbg !4261

if.then:                                          ; preds = %cond.end5
  store i64 -1, i64* %retval, align 8, !dbg !4262
  br label %return, !dbg !4262

if.end:                                           ; preds = %cond.end5
  %5 = call i64 @llvm.read_register.i64(metadata !4134), !dbg !4263
  %6 = load i64, i64* %control.addr, align 8, !dbg !4263
  %7 = load i64, i64* %input_address, align 8, !dbg !4263
  %8 = load i64, i64* %output_address, align 8, !dbg !4264
  %9 = load i8*, i8** @hv_hypercall_pg, align 8, !dbg !4265
  %10 = call { i64, i64, i64, i64 } asm sideeffect "mov $4, %r8\0A# ALT: oldinstr2\0A661:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *$5\0A\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .word ( 7*32+12)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .byte 663b-662b\0A .long 661b - .\0A .long 6642f - .\0A .word ( 7*32+13)\0A .byte 663b-661b\0A .byte 6652f-6642f\0A .byte 663b-662b\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09call __x86_retpoline_${5:V}\0A\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09lfence;\0A999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *$5\0A\0A6652:\0A.popsection\0A", "={ax},={rsp},={cx},={dx},r,r,1,2,3,~{cc},~{memory},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 %8, i8* %9, i64 %5, i64 %6, i64 %7) #6, !dbg !4263, !srcloc !4266
  %asmresult = extractvalue { i64, i64, i64, i64 } %10, 0, !dbg !4263
  %asmresult8 = extractvalue { i64, i64, i64, i64 } %10, 1, !dbg !4263
  %asmresult9 = extractvalue { i64, i64, i64, i64 } %10, 2, !dbg !4263
  %asmresult10 = extractvalue { i64, i64, i64, i64 } %10, 3, !dbg !4263
  store i64 %asmresult, i64* %hv_status, align 8, !dbg !4263
  call void @llvm.write_register.i64(metadata !4134, i64 %asmresult8), !dbg !4263
  store i64 %asmresult9, i64* %control.addr, align 8, !dbg !4263
  store i64 %asmresult10, i64* %input_address, align 8, !dbg !4263
  %11 = load i64, i64* %hv_status, align 8, !dbg !4267
  store i64 %11, i64* %retval, align 8, !dbg !4268
  br label %return, !dbg !4268

return:                                           ; preds = %if.end, %if.then
  %12 = load i64, i64* %retval, align 8, !dbg !4269
  ret i64 %12, !dbg !4269
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hv_synic_alloc() #0 !dbg !4270 {
entry:
  %retval = alloca i32, align 4
  %cpu = alloca i32, align 4
  %hv_cpu = alloca %struct.hv_per_cpu_context*, align 8
  %tmp = alloca %struct.hv_per_cpu_context*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.hv_per_cpu_context*, align 8
  %tmp7 = alloca %struct.hv_per_cpu_context*, align 8
  %__vpp_verify9 = alloca i8*, align 8
  %tmp11 = alloca %struct.hv_per_cpu_context*, align 8
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !4271, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.declare(metadata %struct.hv_per_cpu_context** %hv_cpu, metadata !4273, metadata !DIExpression()), !dbg !4274
  store i32 0, i32* %cpu, align 4, !dbg !4275
  br label %for.cond, !dbg !4275

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %cpu, align 4, !dbg !4277
  %cmp = icmp slt i32 %0, 1, !dbg !4277
  br i1 %cmp, label %for.body, label %for.end, !dbg !4275

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %cpu, align 4, !dbg !4279
  br label %do.body, !dbg !4282

do.body:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !4284, metadata !DIExpression()), !dbg !4286
  store i8* null, i8** %__vpp_verify, align 8, !dbg !4286
  %2 = load i8*, i8** %__vpp_verify, align 8, !dbg !4286
  br label %do.end, !dbg !4286

do.end:                                           ; preds = %do.body
  %3 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** getelementptr inbounds (%struct.hv_context, %struct.hv_context* @hv_context, i32 0, i32 1), align 8, !dbg !4282
  store %struct.hv_per_cpu_context* %3, %struct.hv_per_cpu_context** %tmp1, align 8, !dbg !4286
  %4 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %tmp1, align 8, !dbg !4282
  store %struct.hv_per_cpu_context* %4, %struct.hv_per_cpu_context** %tmp, align 8, !dbg !4279
  %5 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %tmp, align 8, !dbg !4279
  store %struct.hv_per_cpu_context* %5, %struct.hv_per_cpu_context** %hv_cpu, align 8, !dbg !4287
  %6 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %hv_cpu, align 8, !dbg !4288
  %7 = bitcast %struct.hv_per_cpu_context* %6 to i8*, !dbg !4289
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 64, i1 false), !dbg !4289
  br label %for.inc, !dbg !4290

for.inc:                                          ; preds = %do.end
  %8 = load i32, i32* %cpu, align 4, !dbg !4277
  %inc = add i32 %8, 1, !dbg !4277
  store i32 %inc, i32* %cpu, align 4, !dbg !4277
  br label %for.cond, !dbg !4277, !llvm.loop !4291

for.end:                                          ; preds = %for.cond
  %call = call i8* @kcalloc(i64 1, i64 8, i32 3264) #10, !dbg !4293
  %9 = bitcast i8* %call to %struct.cpumask*, !dbg !4293
  store %struct.cpumask* %9, %struct.cpumask** getelementptr inbounds (%struct.hv_context, %struct.hv_context* @hv_context, i32 0, i32 2), align 8, !dbg !4294
  %10 = load %struct.cpumask*, %struct.cpumask** getelementptr inbounds (%struct.hv_context, %struct.hv_context* @hv_context, i32 0, i32 2), align 8, !dbg !4295
  %cmp2 = icmp eq %struct.cpumask* %10, null, !dbg !4297
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4298

if.then:                                          ; preds = %for.end
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0)) #11, !dbg !4299
  br label %err, !dbg !4301

if.end:                                           ; preds = %for.end
  store i32 0, i32* %cpu, align 4, !dbg !4302
  br label %for.cond4, !dbg !4302

for.cond4:                                        ; preds = %for.inc30, %if.end
  %11 = load i32, i32* %cpu, align 4, !dbg !4304
  %cmp5 = icmp slt i32 %11, 1, !dbg !4304
  br i1 %cmp5, label %for.body6, label %for.end32, !dbg !4302

for.body6:                                        ; preds = %for.cond4
  %12 = load i32, i32* %cpu, align 4, !dbg !4306
  br label %do.body8, !dbg !4309

do.body8:                                         ; preds = %for.body6
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify9, metadata !4311, metadata !DIExpression()), !dbg !4313
  store i8* null, i8** %__vpp_verify9, align 8, !dbg !4313
  %13 = load i8*, i8** %__vpp_verify9, align 8, !dbg !4313
  br label %do.end10, !dbg !4313

do.end10:                                         ; preds = %do.body8
  %14 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** getelementptr inbounds (%struct.hv_context, %struct.hv_context* @hv_context, i32 0, i32 1), align 8, !dbg !4309
  store %struct.hv_per_cpu_context* %14, %struct.hv_per_cpu_context** %tmp11, align 8, !dbg !4313
  %15 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %tmp11, align 8, !dbg !4309
  store %struct.hv_per_cpu_context* %15, %struct.hv_per_cpu_context** %tmp7, align 8, !dbg !4306
  %16 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %tmp7, align 8, !dbg !4306
  store %struct.hv_per_cpu_context* %16, %struct.hv_per_cpu_context** %hv_cpu, align 8, !dbg !4314
  %17 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %hv_cpu, align 8, !dbg !4315
  %msg_dpc = getelementptr inbounds %struct.hv_per_cpu_context, %struct.hv_per_cpu_context* %17, i32 0, i32 3, !dbg !4316
  %18 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %hv_cpu, align 8, !dbg !4317
  %19 = ptrtoint %struct.hv_per_cpu_context* %18 to i64, !dbg !4318
  call void @tasklet_init(%struct.tasklet_struct* %msg_dpc, void (i64)* @vmbus_on_msg_dpc, i64 %19) #10, !dbg !4319
  %call12 = call i64 @get_zeroed_page(i32 2592) #10, !dbg !4320
  %20 = inttoptr i64 %call12 to i8*, !dbg !4321
  %21 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %hv_cpu, align 8, !dbg !4322
  %synic_message_page = getelementptr inbounds %struct.hv_per_cpu_context, %struct.hv_per_cpu_context* %21, i32 0, i32 0, !dbg !4323
  store i8* %20, i8** %synic_message_page, align 8, !dbg !4324
  %22 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %hv_cpu, align 8, !dbg !4325
  %synic_message_page13 = getelementptr inbounds %struct.hv_per_cpu_context, %struct.hv_per_cpu_context* %22, i32 0, i32 0, !dbg !4327
  %23 = load i8*, i8** %synic_message_page13, align 8, !dbg !4327
  %cmp14 = icmp eq i8* %23, null, !dbg !4328
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !4329

if.then15:                                        ; preds = %do.end10
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !4330
  br label %err, !dbg !4332

if.end17:                                         ; preds = %do.end10
  %call18 = call i64 @get_zeroed_page(i32 2592) #10, !dbg !4333
  %24 = inttoptr i64 %call18 to i8*, !dbg !4334
  %25 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %hv_cpu, align 8, !dbg !4335
  %synic_event_page = getelementptr inbounds %struct.hv_per_cpu_context, %struct.hv_per_cpu_context* %25, i32 0, i32 1, !dbg !4336
  store i8* %24, i8** %synic_event_page, align 8, !dbg !4337
  %26 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %hv_cpu, align 8, !dbg !4338
  %synic_event_page19 = getelementptr inbounds %struct.hv_per_cpu_context, %struct.hv_per_cpu_context* %26, i32 0, i32 1, !dbg !4340
  %27 = load i8*, i8** %synic_event_page19, align 8, !dbg !4340
  %cmp20 = icmp eq i8* %27, null, !dbg !4341
  br i1 %cmp20, label %if.then21, label %if.end23, !dbg !4342

if.then21:                                        ; preds = %if.end17
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !4343
  br label %err, !dbg !4345

if.end23:                                         ; preds = %if.end17
  %call24 = call i64 @get_zeroed_page(i32 2592) #10, !dbg !4346
  %28 = inttoptr i64 %call24 to i8*, !dbg !4347
  %29 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %hv_cpu, align 8, !dbg !4348
  %post_msg_page = getelementptr inbounds %struct.hv_per_cpu_context, %struct.hv_per_cpu_context* %29, i32 0, i32 2, !dbg !4349
  store i8* %28, i8** %post_msg_page, align 8, !dbg !4350
  %30 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %hv_cpu, align 8, !dbg !4351
  %post_msg_page25 = getelementptr inbounds %struct.hv_per_cpu_context, %struct.hv_per_cpu_context* %30, i32 0, i32 2, !dbg !4353
  %31 = load i8*, i8** %post_msg_page25, align 8, !dbg !4353
  %cmp26 = icmp eq i8* %31, null, !dbg !4354
  br i1 %cmp26, label %if.then27, label %if.end29, !dbg !4355

if.then27:                                        ; preds = %if.end23
  %call28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0)) #11, !dbg !4356
  br label %err, !dbg !4358

if.end29:                                         ; preds = %if.end23
  br label %for.inc30, !dbg !4359

for.inc30:                                        ; preds = %if.end29
  %32 = load i32, i32* %cpu, align 4, !dbg !4304
  %inc31 = add i32 %32, 1, !dbg !4304
  store i32 %inc31, i32* %cpu, align 4, !dbg !4304
  br label %for.cond4, !dbg !4304, !llvm.loop !4360

for.end32:                                        ; preds = %for.cond4
  store i32 0, i32* %retval, align 4, !dbg !4362
  br label %return, !dbg !4362

err:                                              ; preds = %if.then27, %if.then21, %if.then15, %if.then
  call void @llvm.dbg.label(metadata !4363), !dbg !4364
  store i32 -12, i32* %retval, align 4, !dbg !4365
  br label %return, !dbg !4365

return:                                           ; preds = %err, %for.end32
  %33 = load i32, i32* %retval, align 4, !dbg !4366
  ret i32 %33, !dbg !4366
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !4367 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4370, metadata !DIExpression()), !dbg !4371
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4372, metadata !DIExpression()), !dbg !4373
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4374, metadata !DIExpression()), !dbg !4375
  %0 = load i64, i64* %n.addr, align 8, !dbg !4376
  %1 = load i64, i64* %size.addr, align 8, !dbg !4377
  %2 = load i32, i32* %flags.addr, align 4, !dbg !4378
  %or = or i32 %2, 256, !dbg !4379
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #10, !dbg !4380
  ret i8* %call, !dbg !4381
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local void @tasklet_init(%struct.tasklet_struct*, void (i64)*, i64) #1

; Function Attrs: noredzone
declare dso_local void @vmbus_on_msg_dpc(i64) #1

; Function Attrs: noredzone
declare dso_local i64 @get_zeroed_page(i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @hv_synic_free() #0 !dbg !4382 {
entry:
  %cpu = alloca i32, align 4
  %hv_cpu = alloca %struct.hv_per_cpu_context*, align 8
  %tmp = alloca %struct.hv_per_cpu_context*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.hv_per_cpu_context*, align 8
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !4383, metadata !DIExpression()), !dbg !4384
  store i32 0, i32* %cpu, align 4, !dbg !4385
  br label %for.cond, !dbg !4385

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %cpu, align 4, !dbg !4387
  %cmp = icmp slt i32 %0, 1, !dbg !4387
  br i1 %cmp, label %for.body, label %for.end, !dbg !4385

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.hv_per_cpu_context** %hv_cpu, metadata !4389, metadata !DIExpression()), !dbg !4391
  %1 = load i32, i32* %cpu, align 4, !dbg !4392
  br label %do.body, !dbg !4394

do.body:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !4396, metadata !DIExpression()), !dbg !4398
  store i8* null, i8** %__vpp_verify, align 8, !dbg !4398
  %2 = load i8*, i8** %__vpp_verify, align 8, !dbg !4398
  br label %do.end, !dbg !4398

do.end:                                           ; preds = %do.body
  %3 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** getelementptr inbounds (%struct.hv_context, %struct.hv_context* @hv_context, i32 0, i32 1), align 8, !dbg !4394
  store %struct.hv_per_cpu_context* %3, %struct.hv_per_cpu_context** %tmp1, align 8, !dbg !4398
  %4 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %tmp1, align 8, !dbg !4394
  store %struct.hv_per_cpu_context* %4, %struct.hv_per_cpu_context** %tmp, align 8, !dbg !4392
  %5 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %tmp, align 8, !dbg !4392
  store %struct.hv_per_cpu_context* %5, %struct.hv_per_cpu_context** %hv_cpu, align 8, !dbg !4391
  %6 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %hv_cpu, align 8, !dbg !4399
  %synic_event_page = getelementptr inbounds %struct.hv_per_cpu_context, %struct.hv_per_cpu_context* %6, i32 0, i32 1, !dbg !4399
  %7 = load i8*, i8** %synic_event_page, align 8, !dbg !4399
  %8 = ptrtoint i8* %7 to i64, !dbg !4399
  call void @free_pages(i64 %8, i32 0) #10, !dbg !4399
  %9 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %hv_cpu, align 8, !dbg !4400
  %synic_message_page = getelementptr inbounds %struct.hv_per_cpu_context, %struct.hv_per_cpu_context* %9, i32 0, i32 0, !dbg !4400
  %10 = load i8*, i8** %synic_message_page, align 8, !dbg !4400
  %11 = ptrtoint i8* %10 to i64, !dbg !4400
  call void @free_pages(i64 %11, i32 0) #10, !dbg !4400
  %12 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %hv_cpu, align 8, !dbg !4401
  %post_msg_page = getelementptr inbounds %struct.hv_per_cpu_context, %struct.hv_per_cpu_context* %12, i32 0, i32 2, !dbg !4401
  %13 = load i8*, i8** %post_msg_page, align 8, !dbg !4401
  %14 = ptrtoint i8* %13 to i64, !dbg !4401
  call void @free_pages(i64 %14, i32 0) #10, !dbg !4401
  br label %for.inc, !dbg !4402

for.inc:                                          ; preds = %do.end
  %15 = load i32, i32* %cpu, align 4, !dbg !4387
  %inc = add i32 %15, 1, !dbg !4387
  store i32 %inc, i32* %cpu, align 4, !dbg !4387
  br label %for.cond, !dbg !4387, !llvm.loop !4403

for.end:                                          ; preds = %for.cond
  %16 = load %struct.cpumask*, %struct.cpumask** getelementptr inbounds (%struct.hv_context, %struct.hv_context* @hv_context, i32 0, i32 2), align 8, !dbg !4405
  %17 = bitcast %struct.cpumask* %16 to i8*, !dbg !4406
  call void @kfree(i8* %17) #10, !dbg !4407
  ret void, !dbg !4408
}

; Function Attrs: noredzone
declare dso_local void @free_pages(i64, i32) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @hv_synic_enable_regs(i32 %cpu) #0 !dbg !4409 {
entry:
  %cpu.addr = alloca i32, align 4
  %hv_cpu = alloca %struct.hv_per_cpu_context*, align 8
  %tmp = alloca %struct.hv_per_cpu_context*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.hv_per_cpu_context*, align 8
  %simp = alloca %union.hv_synic_simp, align 8
  %siefp = alloca %union.hv_synic_siefp, align 8
  %shared_sint = alloca %union.hv_synic_sint, align 8
  %sctrl = alloca %union.hv_synic_scontrol, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !4412, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.declare(metadata %struct.hv_per_cpu_context** %hv_cpu, metadata !4414, metadata !DIExpression()), !dbg !4415
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !4416
  br label %do.body, !dbg !4418

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !4420, metadata !DIExpression()), !dbg !4422
  store i8* null, i8** %__vpp_verify, align 8, !dbg !4422
  %1 = load i8*, i8** %__vpp_verify, align 8, !dbg !4422
  br label %do.end, !dbg !4422

do.end:                                           ; preds = %do.body
  %2 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** getelementptr inbounds (%struct.hv_context, %struct.hv_context* @hv_context, i32 0, i32 1), align 8, !dbg !4418
  store %struct.hv_per_cpu_context* %2, %struct.hv_per_cpu_context** %tmp1, align 8, !dbg !4422
  %3 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %tmp1, align 8, !dbg !4418
  store %struct.hv_per_cpu_context* %3, %struct.hv_per_cpu_context** %tmp, align 8, !dbg !4416
  %4 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %tmp, align 8, !dbg !4416
  store %struct.hv_per_cpu_context* %4, %struct.hv_per_cpu_context** %hv_cpu, align 8, !dbg !4415
  call void @llvm.dbg.declare(metadata %union.hv_synic_simp* %simp, metadata !4423, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.declare(metadata %union.hv_synic_siefp* %siefp, metadata !4435, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.declare(metadata %union.hv_synic_sint* %shared_sint, metadata !4446, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.declare(metadata %union.hv_synic_scontrol* %sctrl, metadata !4460, metadata !DIExpression()), !dbg !4469
  br label %do.body2, !dbg !4470

do.body2:                                         ; preds = %do.end
  %call = call i64 @paravirt_read_msr(i32 1073741955) #10, !dbg !4471
  %as_uint64 = bitcast %union.hv_synic_simp* %simp to i64*, !dbg !4471
  store i64 %call, i64* %as_uint64, align 8, !dbg !4471
  br label %do.end3, !dbg !4471

do.end3:                                          ; preds = %do.body2
  %5 = bitcast %union.hv_synic_simp* %simp to %struct.anon.0*, !dbg !4473
  %6 = bitcast %struct.anon.0* %5 to i64*, !dbg !4473
  %bf.load = load i64, i64* %6, align 8, !dbg !4474
  %bf.clear = and i64 %bf.load, -2, !dbg !4474
  %bf.set = or i64 %bf.clear, 1, !dbg !4474
  store i64 %bf.set, i64* %6, align 8, !dbg !4474
  %7 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %hv_cpu, align 8, !dbg !4475
  %synic_message_page = getelementptr inbounds %struct.hv_per_cpu_context, %struct.hv_per_cpu_context* %7, i32 0, i32 0, !dbg !4476
  %8 = load i8*, i8** %synic_message_page, align 8, !dbg !4476
  %call4 = call i64 @virt_to_phys(i8* %8) #10, !dbg !4477
  %shr = lshr i64 %call4, 12, !dbg !4478
  %9 = bitcast %union.hv_synic_simp* %simp to %struct.anon.0*, !dbg !4479
  %10 = bitcast %struct.anon.0* %9 to i64*, !dbg !4479
  %bf.load5 = load i64, i64* %10, align 8, !dbg !4480
  %bf.value = and i64 %shr, 4503599627370495, !dbg !4480
  %bf.shl = shl i64 %bf.value, 12, !dbg !4480
  %bf.clear6 = and i64 %bf.load5, 4095, !dbg !4480
  %bf.set7 = or i64 %bf.clear6, %bf.shl, !dbg !4480
  store i64 %bf.set7, i64* %10, align 8, !dbg !4480
  %as_uint648 = bitcast %union.hv_synic_simp* %simp to i64*, !dbg !4481
  %11 = load i64, i64* %as_uint648, align 8, !dbg !4481
  call void @wrmsrl(i32 1073741955, i64 %11) #10, !dbg !4481
  br label %do.body9, !dbg !4482

do.body9:                                         ; preds = %do.end3
  %call10 = call i64 @paravirt_read_msr(i32 1073741954) #10, !dbg !4483
  %as_uint6411 = bitcast %union.hv_synic_siefp* %siefp to i64*, !dbg !4483
  store i64 %call10, i64* %as_uint6411, align 8, !dbg !4483
  br label %do.end12, !dbg !4483

do.end12:                                         ; preds = %do.body9
  %12 = bitcast %union.hv_synic_siefp* %siefp to %struct.anon.1*, !dbg !4485
  %13 = bitcast %struct.anon.1* %12 to i64*, !dbg !4485
  %bf.load13 = load i64, i64* %13, align 8, !dbg !4486
  %bf.clear14 = and i64 %bf.load13, -2, !dbg !4486
  %bf.set15 = or i64 %bf.clear14, 1, !dbg !4486
  store i64 %bf.set15, i64* %13, align 8, !dbg !4486
  %14 = load %struct.hv_per_cpu_context*, %struct.hv_per_cpu_context** %hv_cpu, align 8, !dbg !4487
  %synic_event_page = getelementptr inbounds %struct.hv_per_cpu_context, %struct.hv_per_cpu_context* %14, i32 0, i32 1, !dbg !4488
  %15 = load i8*, i8** %synic_event_page, align 8, !dbg !4488
  %call16 = call i64 @virt_to_phys(i8* %15) #10, !dbg !4489
  %shr17 = lshr i64 %call16, 12, !dbg !4490
  %16 = bitcast %union.hv_synic_siefp* %siefp to %struct.anon.1*, !dbg !4491
  %17 = bitcast %struct.anon.1* %16 to i64*, !dbg !4491
  %bf.load18 = load i64, i64* %17, align 8, !dbg !4492
  %bf.value19 = and i64 %shr17, 4503599627370495, !dbg !4492
  %bf.shl20 = shl i64 %bf.value19, 12, !dbg !4492
  %bf.clear21 = and i64 %bf.load18, 4095, !dbg !4492
  %bf.set22 = or i64 %bf.clear21, %bf.shl20, !dbg !4492
  store i64 %bf.set22, i64* %17, align 8, !dbg !4492
  %as_uint6423 = bitcast %union.hv_synic_siefp* %siefp to i64*, !dbg !4493
  %18 = load i64, i64* %as_uint6423, align 8, !dbg !4493
  call void @wrmsrl(i32 1073741954, i64 %18) #10, !dbg !4493
  br label %do.body24, !dbg !4494

do.body24:                                        ; preds = %do.end12
  %call25 = call i64 @paravirt_read_msr(i32 1073741970) #10, !dbg !4495
  %as_uint6426 = bitcast %union.hv_synic_sint* %shared_sint to i64*, !dbg !4495
  store i64 %call25, i64* %as_uint6426, align 8, !dbg !4495
  br label %do.end27, !dbg !4495

do.end27:                                         ; preds = %do.body24
  %19 = bitcast %union.hv_synic_sint* %shared_sint to %struct.anon.2*, !dbg !4497
  %20 = bitcast %struct.anon.2* %19 to i64*, !dbg !4497
  %bf.load28 = load i64, i64* %20, align 8, !dbg !4498
  %bf.clear29 = and i64 %bf.load28, -256, !dbg !4498
  %bf.set30 = or i64 %bf.clear29, 243, !dbg !4498
  store i64 %bf.set30, i64* %20, align 8, !dbg !4498
  %21 = bitcast %union.hv_synic_sint* %shared_sint to %struct.anon.2*, !dbg !4499
  %22 = bitcast %struct.anon.2* %21 to i64*, !dbg !4499
  %bf.load31 = load i64, i64* %22, align 8, !dbg !4500
  %bf.clear32 = and i64 %bf.load31, -65537, !dbg !4500
  store i64 %bf.clear32, i64* %22, align 8, !dbg !4500
  %23 = load i32, i32* getelementptr inbounds (%struct.ms_hyperv_info, %struct.ms_hyperv_info* @ms_hyperv, i32 0, i32 2), align 4, !dbg !4501
  %conv = zext i32 %23 to i64, !dbg !4501
  %and = and i64 %conv, 512, !dbg !4501
  %tobool = icmp ne i64 %and, 0, !dbg !4501
  %lnot = xor i1 %tobool, true, !dbg !4501
  %lnot.ext = zext i1 %lnot to i32, !dbg !4501
  %conv33 = sext i32 %lnot.ext to i64, !dbg !4501
  %24 = bitcast %union.hv_synic_sint* %shared_sint to %struct.anon.2*, !dbg !4502
  %25 = bitcast %struct.anon.2* %24 to i64*, !dbg !4502
  %bf.load34 = load i64, i64* %25, align 8, !dbg !4503
  %bf.value35 = and i64 %conv33, 1, !dbg !4503
  %bf.shl36 = shl i64 %bf.value35, 17, !dbg !4503
  %bf.clear37 = and i64 %bf.load34, -131073, !dbg !4503
  %bf.set38 = or i64 %bf.clear37, %bf.shl36, !dbg !4503
  store i64 %bf.set38, i64* %25, align 8, !dbg !4503
  %as_uint6439 = bitcast %union.hv_synic_sint* %shared_sint to i64*, !dbg !4504
  %26 = load i64, i64* %as_uint6439, align 8, !dbg !4504
  call void @wrmsrl(i32 1073741970, i64 %26) #10, !dbg !4504
  br label %do.body40, !dbg !4505

do.body40:                                        ; preds = %do.end27
  %call41 = call i64 @paravirt_read_msr(i32 1073741952) #10, !dbg !4506
  %as_uint6442 = bitcast %union.hv_synic_scontrol* %sctrl to i64*, !dbg !4506
  store i64 %call41, i64* %as_uint6442, align 8, !dbg !4506
  br label %do.end43, !dbg !4506

do.end43:                                         ; preds = %do.body40
  %27 = bitcast %union.hv_synic_scontrol* %sctrl to %struct.anon.3*, !dbg !4508
  %28 = bitcast %struct.anon.3* %27 to i64*, !dbg !4508
  %bf.load44 = load i64, i64* %28, align 8, !dbg !4509
  %bf.clear45 = and i64 %bf.load44, -2, !dbg !4509
  %bf.set46 = or i64 %bf.clear45, 1, !dbg !4509
  store i64 %bf.set46, i64* %28, align 8, !dbg !4509
  %as_uint6447 = bitcast %union.hv_synic_scontrol* %sctrl to i64*, !dbg !4510
  %29 = load i64, i64* %as_uint6447, align 8, !dbg !4510
  call void @wrmsrl(i32 1073741952, i64 %29) #10, !dbg !4510
  ret void, !dbg !4511
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @paravirt_read_msr(i32 %msr) #0 !dbg !4512 {
entry:
  %msr.addr = alloca i32, align 4
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !4516, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !4518, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4521, metadata !DIExpression()), !dbg !4520
  %0 = load i64, i64* %__edi, align 8, !dbg !4520
  store i64 %0, i64* %__edi, align 8, !dbg !4520
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4522, metadata !DIExpression()), !dbg !4520
  %1 = load i64, i64* %__esi, align 8, !dbg !4520
  store i64 %1, i64* %__esi, align 8, !dbg !4520
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4523, metadata !DIExpression()), !dbg !4520
  %2 = load i64, i64* %__edx, align 8, !dbg !4520
  store i64 %2, i64* %__edx, align 8, !dbg !4520
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4524, metadata !DIExpression()), !dbg !4520
  %3 = load i64, i64* %__ecx, align 8, !dbg !4520
  store i64 %3, i64* %__ecx, align 8, !dbg !4520
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4525, metadata !DIExpression()), !dbg !4520
  %4 = load i64, i64* %__eax, align 8, !dbg !4520
  store i64 %4, i64* %__eax, align 8, !dbg !4520
  %5 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 23), align 8, !dbg !4520
  %6 = call i64 @llvm.read_register.i64(metadata !4134), !dbg !4526
  %7 = load i32, i32* %msr.addr, align 4, !dbg !4526
  %conv = zext i32 %7 to i64, !dbg !4526
  %8 = call { i64, i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${7:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${6:c}\0A  .byte 772b-771b\0A  .short ${8:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={ax},={rsp},i,i,i,{di},5,~{memory},~{cc},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 26, i64 (i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 23), i32 511, i64 %conv, i64 %6) #6, !dbg !4526, !srcloc !4529
  %asmresult = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 0, !dbg !4526
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 1, !dbg !4526
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 2, !dbg !4526
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 3, !dbg !4526
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 4, !dbg !4526
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 5, !dbg !4526
  store i64 %asmresult, i64* %__edi, align 8, !dbg !4526
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !4526
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !4526
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !4526
  store i64 %asmresult4, i64* %__eax, align 8, !dbg !4526
  call void @llvm.write_register.i64(metadata !4134, i64 %asmresult5), !dbg !4526
  %9 = load i64, i64* %__eax, align 8, !dbg !4526
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !4530, metadata !DIExpression()), !dbg !4532
  store i64 -1, i64* %__mask, align 8, !dbg !4532
  %10 = load i64, i64* %__mask, align 8, !dbg !4532
  store i64 %10, i64* %tmp, align 8, !dbg !4532
  %11 = load i64, i64* %tmp, align 8, !dbg !4532
  %and = and i64 %9, %11, !dbg !4526
  store i64 %and, i64* %__ret, align 8, !dbg !4526
  %12 = load i64, i64* %__ret, align 8, !dbg !4520
  store i64 %12, i64* %tmp6, align 8, !dbg !4533
  %13 = load i64, i64* %tmp6, align 8, !dbg !4520
  ret i64 %13, !dbg !4534
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @virt_to_phys(i8* %address) #0 !dbg !4535 {
entry:
  %address.addr = alloca i8*, align 8
  store i8* %address, i8** %address.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !4541, metadata !DIExpression()), !dbg !4542
  %0 = load i8*, i8** %address.addr, align 8, !dbg !4543
  %1 = ptrtoint i8* %0 to i64, !dbg !4543
  %call = call i64 @__phys_addr_nodebug(i64 %1) #10, !dbg !4543
  ret i64 %call, !dbg !4544
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @wrmsrl(i32 %msr, i64 %val) #0 !dbg !4545 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !4548, metadata !DIExpression()), !dbg !4549
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !4550, metadata !DIExpression()), !dbg !4551
  br label %do.body, !dbg !4552

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %msr.addr, align 4, !dbg !4553
  %1 = load i64, i64* %val.addr, align 8, !dbg !4553
  %conv = trunc i64 %1 to i32, !dbg !4553
  %2 = load i64, i64* %val.addr, align 8, !dbg !4553
  %shr = lshr i64 %2, 32, !dbg !4553
  %conv1 = trunc i64 %shr to i32, !dbg !4553
  call void @paravirt_write_msr(i32 %0, i32 %conv, i32 %conv1) #10, !dbg !4553
  br label %do.end, !dbg !4553

do.end:                                           ; preds = %do.body
  ret void, !dbg !4555
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hv_synic_init(i32 %cpu) #0 !dbg !4556 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !4559, metadata !DIExpression()), !dbg !4560
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !4561
  call void @hv_synic_enable_regs(i32 %0) #10, !dbg !4562
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !4563
  call void @hv_stimer_legacy_init(i32 %1, i32 2) #10, !dbg !4564
  ret i32 0, !dbg !4565
}

; Function Attrs: noredzone
declare dso_local void @hv_stimer_legacy_init(i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @hv_synic_disable_regs(i32 %cpu) #0 !dbg !4566 {
entry:
  %cpu.addr = alloca i32, align 4
  %shared_sint = alloca %union.hv_synic_sint, align 8
  %simp = alloca %union.hv_synic_simp, align 8
  %siefp = alloca %union.hv_synic_siefp, align 8
  %sctrl = alloca %union.hv_synic_scontrol, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !4567, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.declare(metadata %union.hv_synic_sint* %shared_sint, metadata !4569, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.declare(metadata %union.hv_synic_simp* %simp, metadata !4571, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.declare(metadata %union.hv_synic_siefp* %siefp, metadata !4573, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.declare(metadata %union.hv_synic_scontrol* %sctrl, metadata !4575, metadata !DIExpression()), !dbg !4576
  br label %do.body, !dbg !4577

do.body:                                          ; preds = %entry
  %call = call i64 @paravirt_read_msr(i32 1073741970) #10, !dbg !4578
  %as_uint64 = bitcast %union.hv_synic_sint* %shared_sint to i64*, !dbg !4578
  store i64 %call, i64* %as_uint64, align 8, !dbg !4578
  br label %do.end, !dbg !4578

do.end:                                           ; preds = %do.body
  %0 = bitcast %union.hv_synic_sint* %shared_sint to %struct.anon.2*, !dbg !4580
  %1 = bitcast %struct.anon.2* %0 to i64*, !dbg !4580
  %bf.load = load i64, i64* %1, align 8, !dbg !4581
  %bf.clear = and i64 %bf.load, -65537, !dbg !4581
  %bf.set = or i64 %bf.clear, 65536, !dbg !4581
  store i64 %bf.set, i64* %1, align 8, !dbg !4581
  %as_uint641 = bitcast %union.hv_synic_sint* %shared_sint to i64*, !dbg !4582
  %2 = load i64, i64* %as_uint641, align 8, !dbg !4582
  call void @wrmsrl(i32 1073741970, i64 %2) #10, !dbg !4582
  br label %do.body2, !dbg !4583

do.body2:                                         ; preds = %do.end
  %call3 = call i64 @paravirt_read_msr(i32 1073741955) #10, !dbg !4584
  %as_uint644 = bitcast %union.hv_synic_simp* %simp to i64*, !dbg !4584
  store i64 %call3, i64* %as_uint644, align 8, !dbg !4584
  br label %do.end5, !dbg !4584

do.end5:                                          ; preds = %do.body2
  %3 = bitcast %union.hv_synic_simp* %simp to %struct.anon.0*, !dbg !4586
  %4 = bitcast %struct.anon.0* %3 to i64*, !dbg !4586
  %bf.load6 = load i64, i64* %4, align 8, !dbg !4587
  %bf.clear7 = and i64 %bf.load6, -2, !dbg !4587
  store i64 %bf.clear7, i64* %4, align 8, !dbg !4587
  %5 = bitcast %union.hv_synic_simp* %simp to %struct.anon.0*, !dbg !4588
  %6 = bitcast %struct.anon.0* %5 to i64*, !dbg !4588
  %bf.load8 = load i64, i64* %6, align 8, !dbg !4589
  %bf.clear9 = and i64 %bf.load8, 4095, !dbg !4589
  store i64 %bf.clear9, i64* %6, align 8, !dbg !4589
  %as_uint6410 = bitcast %union.hv_synic_simp* %simp to i64*, !dbg !4590
  %7 = load i64, i64* %as_uint6410, align 8, !dbg !4590
  call void @wrmsrl(i32 1073741955, i64 %7) #10, !dbg !4590
  br label %do.body11, !dbg !4591

do.body11:                                        ; preds = %do.end5
  %call12 = call i64 @paravirt_read_msr(i32 1073741954) #10, !dbg !4592
  %as_uint6413 = bitcast %union.hv_synic_siefp* %siefp to i64*, !dbg !4592
  store i64 %call12, i64* %as_uint6413, align 8, !dbg !4592
  br label %do.end14, !dbg !4592

do.end14:                                         ; preds = %do.body11
  %8 = bitcast %union.hv_synic_siefp* %siefp to %struct.anon.1*, !dbg !4594
  %9 = bitcast %struct.anon.1* %8 to i64*, !dbg !4594
  %bf.load15 = load i64, i64* %9, align 8, !dbg !4595
  %bf.clear16 = and i64 %bf.load15, -2, !dbg !4595
  store i64 %bf.clear16, i64* %9, align 8, !dbg !4595
  %10 = bitcast %union.hv_synic_siefp* %siefp to %struct.anon.1*, !dbg !4596
  %11 = bitcast %struct.anon.1* %10 to i64*, !dbg !4596
  %bf.load17 = load i64, i64* %11, align 8, !dbg !4597
  %bf.clear18 = and i64 %bf.load17, 4095, !dbg !4597
  store i64 %bf.clear18, i64* %11, align 8, !dbg !4597
  %as_uint6419 = bitcast %union.hv_synic_siefp* %siefp to i64*, !dbg !4598
  %12 = load i64, i64* %as_uint6419, align 8, !dbg !4598
  call void @wrmsrl(i32 1073741954, i64 %12) #10, !dbg !4598
  br label %do.body20, !dbg !4599

do.body20:                                        ; preds = %do.end14
  %call21 = call i64 @paravirt_read_msr(i32 1073741952) #10, !dbg !4600
  %as_uint6422 = bitcast %union.hv_synic_scontrol* %sctrl to i64*, !dbg !4600
  store i64 %call21, i64* %as_uint6422, align 8, !dbg !4600
  br label %do.end23, !dbg !4600

do.end23:                                         ; preds = %do.body20
  %13 = bitcast %union.hv_synic_scontrol* %sctrl to %struct.anon.3*, !dbg !4602
  %14 = bitcast %struct.anon.3* %13 to i64*, !dbg !4602
  %bf.load24 = load i64, i64* %14, align 8, !dbg !4603
  %bf.clear25 = and i64 %bf.load24, -2, !dbg !4603
  store i64 %bf.clear25, i64* %14, align 8, !dbg !4603
  %as_uint6426 = bitcast %union.hv_synic_scontrol* %sctrl to i64*, !dbg !4604
  %15 = load i64, i64* %as_uint6426, align 8, !dbg !4604
  call void @wrmsrl(i32 1073741952, i64 %15) #10, !dbg !4604
  ret void, !dbg !4605
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hv_synic_cleanup(i32 %cpu) #0 !dbg !4606 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %channel = alloca %struct.vmbus_channel*, align 8
  %sc = alloca %struct.vmbus_channel*, align 8
  %channel_found = alloca i8, align 1
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.vmbus_channel*, align 8
  %__mptr6 = alloca i8*, align 8
  %tmp9 = alloca %struct.vmbus_channel*, align 8
  %__mptr21 = alloca i8*, align 8
  %tmp26 = alloca %struct.vmbus_channel*, align 8
  %__mptr31 = alloca i8*, align 8
  %tmp36 = alloca %struct.vmbus_channel*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !4607, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.declare(metadata %struct.vmbus_channel** %channel, metadata !4609, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.declare(metadata %struct.vmbus_channel** %sc, metadata !4611, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.declare(metadata i8* %channel_found, metadata !4613, metadata !DIExpression()), !dbg !4614
  store i8 0, i8* %channel_found, align 1, !dbg !4614
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !4615
  %cmp = icmp eq i32 %0, 0, !dbg !4617
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4618

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 2), align 8, !dbg !4619
  %cmp1 = icmp eq i32 %1, 2, !dbg !4620
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4621

if.then:                                          ; preds = %land.lhs.true
  store i32 -16, i32* %retval, align 4, !dbg !4622
  br label %return, !dbg !4622

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @mutex_lock(%struct.mutex* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 12)) #10, !dbg !4623
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4624, metadata !DIExpression()), !dbg !4627
  %2 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 11, i32 0), align 8, !dbg !4627
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !4627
  store i8* %3, i8** %__mptr, align 8, !dbg !4627
  br label %do.body, !dbg !4627

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4628

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4627
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !4627
  %5 = bitcast i8* %add.ptr to %struct.vmbus_channel*, !dbg !4627
  store %struct.vmbus_channel* %5, %struct.vmbus_channel** %tmp, align 8, !dbg !4628
  %6 = load %struct.vmbus_channel*, %struct.vmbus_channel** %tmp, align 8, !dbg !4627
  store %struct.vmbus_channel* %6, %struct.vmbus_channel** %channel, align 8, !dbg !4630
  br label %for.cond, !dbg !4630

for.cond:                                         ; preds = %do.end35, %do.end
  %7 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel, align 8, !dbg !4631
  %listentry = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %7, i32 0, i32 0, !dbg !4631
  %cmp2 = icmp eq %struct.list_head* %listentry, getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 11), !dbg !4631
  %lnot = xor i1 %cmp2, true, !dbg !4631
  br i1 %lnot, label %for.body, label %for.end38, !dbg !4630

for.body:                                         ; preds = %for.cond
  %8 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel, align 8, !dbg !4633
  %target_cpu = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %8, i32 0, i32 27, !dbg !4636
  %9 = load i32, i32* %target_cpu, align 8, !dbg !4636
  %10 = load i32, i32* %cpu.addr, align 4, !dbg !4637
  %cmp3 = icmp eq i32 %9, %10, !dbg !4638
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !4639

if.then4:                                         ; preds = %for.body
  store i8 1, i8* %channel_found, align 1, !dbg !4640
  br label %for.end38, !dbg !4642

if.end5:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__mptr6, metadata !4643, metadata !DIExpression()), !dbg !4646
  %11 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel, align 8, !dbg !4646
  %sc_list = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %11, i32 0, i32 30, !dbg !4646
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %sc_list, i32 0, i32 0, !dbg !4646
  %12 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4646
  %13 = bitcast %struct.list_head* %12 to i8*, !dbg !4646
  store i8* %13, i8** %__mptr6, align 8, !dbg !4646
  br label %do.body7, !dbg !4646

do.body7:                                         ; preds = %if.end5
  br label %do.end8, !dbg !4647

do.end8:                                          ; preds = %do.body7
  %14 = load i8*, i8** %__mptr6, align 8, !dbg !4646
  %add.ptr10 = getelementptr i8, i8* %14, i64 -632, !dbg !4646
  %15 = bitcast i8* %add.ptr10 to %struct.vmbus_channel*, !dbg !4646
  store %struct.vmbus_channel* %15, %struct.vmbus_channel** %tmp9, align 8, !dbg !4647
  %16 = load %struct.vmbus_channel*, %struct.vmbus_channel** %tmp9, align 8, !dbg !4646
  store %struct.vmbus_channel* %16, %struct.vmbus_channel** %sc, align 8, !dbg !4649
  br label %for.cond11, !dbg !4649

for.cond11:                                       ; preds = %do.end25, %do.end8
  %17 = load %struct.vmbus_channel*, %struct.vmbus_channel** %sc, align 8, !dbg !4650
  %sc_list12 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %17, i32 0, i32 30, !dbg !4650
  %18 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel, align 8, !dbg !4650
  %sc_list13 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %18, i32 0, i32 30, !dbg !4650
  %cmp14 = icmp eq %struct.list_head* %sc_list12, %sc_list13, !dbg !4650
  %lnot15 = xor i1 %cmp14, true, !dbg !4650
  br i1 %lnot15, label %for.body16, label %for.end, !dbg !4649

for.body16:                                       ; preds = %for.cond11
  %19 = load %struct.vmbus_channel*, %struct.vmbus_channel** %sc, align 8, !dbg !4652
  %target_cpu17 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %19, i32 0, i32 27, !dbg !4655
  %20 = load i32, i32* %target_cpu17, align 8, !dbg !4655
  %21 = load i32, i32* %cpu.addr, align 4, !dbg !4656
  %cmp18 = icmp eq i32 %20, %21, !dbg !4657
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4658

if.then19:                                        ; preds = %for.body16
  store i8 1, i8* %channel_found, align 1, !dbg !4659
  br label %for.end, !dbg !4661

if.end20:                                         ; preds = %for.body16
  br label %for.inc, !dbg !4662

for.inc:                                          ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i8** %__mptr21, metadata !4663, metadata !DIExpression()), !dbg !4665
  %22 = load %struct.vmbus_channel*, %struct.vmbus_channel** %sc, align 8, !dbg !4665
  %sc_list22 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %22, i32 0, i32 30, !dbg !4665
  %next23 = getelementptr inbounds %struct.list_head, %struct.list_head* %sc_list22, i32 0, i32 0, !dbg !4665
  %23 = load %struct.list_head*, %struct.list_head** %next23, align 8, !dbg !4665
  %24 = bitcast %struct.list_head* %23 to i8*, !dbg !4665
  store i8* %24, i8** %__mptr21, align 8, !dbg !4665
  br label %do.body24, !dbg !4665

do.body24:                                        ; preds = %for.inc
  br label %do.end25, !dbg !4666

do.end25:                                         ; preds = %do.body24
  %25 = load i8*, i8** %__mptr21, align 8, !dbg !4665
  %add.ptr27 = getelementptr i8, i8* %25, i64 -632, !dbg !4665
  %26 = bitcast i8* %add.ptr27 to %struct.vmbus_channel*, !dbg !4665
  store %struct.vmbus_channel* %26, %struct.vmbus_channel** %tmp26, align 8, !dbg !4666
  %27 = load %struct.vmbus_channel*, %struct.vmbus_channel** %tmp26, align 8, !dbg !4665
  store %struct.vmbus_channel* %27, %struct.vmbus_channel** %sc, align 8, !dbg !4650
  br label %for.cond11, !dbg !4650, !llvm.loop !4668

for.end:                                          ; preds = %if.then19, %for.cond11
  %28 = load i8, i8* %channel_found, align 1, !dbg !4670
  %tobool = trunc i8 %28 to i1, !dbg !4670
  br i1 %tobool, label %if.then28, label %if.end29, !dbg !4672

if.then28:                                        ; preds = %for.end
  br label %for.end38, !dbg !4673

if.end29:                                         ; preds = %for.end
  br label %for.inc30, !dbg !4674

for.inc30:                                        ; preds = %if.end29
  call void @llvm.dbg.declare(metadata i8** %__mptr31, metadata !4675, metadata !DIExpression()), !dbg !4677
  %29 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel, align 8, !dbg !4677
  %listentry32 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %29, i32 0, i32 0, !dbg !4677
  %next33 = getelementptr inbounds %struct.list_head, %struct.list_head* %listentry32, i32 0, i32 0, !dbg !4677
  %30 = load %struct.list_head*, %struct.list_head** %next33, align 8, !dbg !4677
  %31 = bitcast %struct.list_head* %30 to i8*, !dbg !4677
  store i8* %31, i8** %__mptr31, align 8, !dbg !4677
  br label %do.body34, !dbg !4677

do.body34:                                        ; preds = %for.inc30
  br label %do.end35, !dbg !4678

do.end35:                                         ; preds = %do.body34
  %32 = load i8*, i8** %__mptr31, align 8, !dbg !4677
  %add.ptr37 = getelementptr i8, i8* %32, i64 0, !dbg !4677
  %33 = bitcast i8* %add.ptr37 to %struct.vmbus_channel*, !dbg !4677
  store %struct.vmbus_channel* %33, %struct.vmbus_channel** %tmp36, align 8, !dbg !4678
  %34 = load %struct.vmbus_channel*, %struct.vmbus_channel** %tmp36, align 8, !dbg !4677
  store %struct.vmbus_channel* %34, %struct.vmbus_channel** %channel, align 8, !dbg !4631
  br label %for.cond, !dbg !4631, !llvm.loop !4680

for.end38:                                        ; preds = %if.then28, %if.then4, %for.cond
  call void @mutex_unlock(%struct.mutex* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 12)) #10, !dbg !4682
  %35 = load i8, i8* %channel_found, align 1, !dbg !4683
  %tobool39 = trunc i8 %35 to i1, !dbg !4683
  br i1 %tobool39, label %land.lhs.true40, label %if.end43, !dbg !4685

land.lhs.true40:                                  ; preds = %for.end38
  %36 = load i32, i32* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 2), align 8, !dbg !4686
  %cmp41 = icmp eq i32 %36, 2, !dbg !4687
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !4688

if.then42:                                        ; preds = %land.lhs.true40
  store i32 -16, i32* %retval, align 4, !dbg !4689
  br label %return, !dbg !4689

if.end43:                                         ; preds = %land.lhs.true40, %for.end38
  %37 = load i32, i32* %cpu.addr, align 4, !dbg !4690
  call void @hv_stimer_legacy_cleanup(i32 %37) #10, !dbg !4691
  %38 = load i32, i32* %cpu.addr, align 4, !dbg !4692
  call void @hv_synic_disable_regs(i32 %38) #10, !dbg !4693
  store i32 0, i32* %retval, align 4, !dbg !4694
  br label %return, !dbg !4694

return:                                           ; preds = %if.end43, %if.then42, %if.then
  %39 = load i32, i32* %retval, align 4, !dbg !4695
  ret i32 %39, !dbg !4695
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local void @hv_stimer_legacy_cleanup(i32) #1

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !4696 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4697, metadata !DIExpression()), !dbg !4701
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4710, metadata !DIExpression()), !dbg !4711
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4712, metadata !DIExpression()), !dbg !4713
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4714, metadata !DIExpression()), !dbg !4715
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4716, metadata !DIExpression()), !dbg !4720
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4722, metadata !DIExpression()), !dbg !4726
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4728, metadata !DIExpression()), !dbg !4732
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4737, metadata !DIExpression()), !dbg !4738
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4739, metadata !DIExpression()), !dbg !4740
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4741, metadata !DIExpression()), !dbg !4742
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4743, metadata !DIExpression()), !dbg !4744
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4745, metadata !DIExpression()), !dbg !4746
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4747, metadata !DIExpression()), !dbg !4748
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4749, metadata !DIExpression()), !dbg !4750
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4751, metadata !DIExpression()), !dbg !4752
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4753, metadata !DIExpression()), !dbg !4754
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4755, metadata !DIExpression()), !dbg !4756
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4757, metadata !DIExpression()), !dbg !4758
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !4759, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !4761, metadata !DIExpression()), !dbg !4764
  %0 = load i64, i64* %n.addr, align 8, !dbg !4764
  store i64 %0, i64* %__a, align 8, !dbg !4764
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !4765, metadata !DIExpression()), !dbg !4764
  %1 = load i64, i64* %size.addr, align 8, !dbg !4764
  store i64 %1, i64* %__b, align 8, !dbg !4764
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !4766, metadata !DIExpression()), !dbg !4764
  store i64* %bytes, i64** %__d, align 8, !dbg !4764
  %cmp = icmp eq i64* %__a, %__b, !dbg !4764
  %conv = zext i1 %cmp to i32, !dbg !4764
  %2 = load i64*, i64** %__d, align 8, !dbg !4764
  %cmp1 = icmp eq i64* %__a, %2, !dbg !4764
  %conv2 = zext i1 %cmp1 to i32, !dbg !4764
  %3 = load i64, i64* %__a, align 8, !dbg !4764
  %4 = load i64, i64* %__b, align 8, !dbg !4764
  %5 = load i64*, i64** %__d, align 8, !dbg !4764
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !4764
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4764
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !4764
  store i64 %8, i64* %5, align 8, !dbg !4764
  %frombool = zext i1 %7 to i8, !dbg !4764
  store i8 %frombool, i8* %tmp, align 1, !dbg !4764
  %9 = load i8, i8* %tmp, align 1, !dbg !4764
  %tobool = trunc i8 %9 to i1, !dbg !4764
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #10, !dbg !4768
  %lnot = xor i1 %call, true, !dbg !4768
  %lnot3 = xor i1 %lnot, true, !dbg !4768
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4768
  %conv4 = sext i32 %lnot.ext to i64, !dbg !4768
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !4768
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4769

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !4770
  br label %return, !dbg !4770

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !4771
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !4772
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !4773

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !4774
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !4775
  br i1 %13, label %if.then6, label %if.end8, !dbg !4776

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !4777
  %15 = load i32, i32* %flags.addr, align 4, !dbg !4778
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !4779
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #6, !dbg !4780
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !4781

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !4782
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !4783
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4784

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !4785
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !4786
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !4787
  %call.i.i = call i32 @get_order(i64 %21) #12, !dbg !4788
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4746
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !4789
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4790
  %24 = load i32, i32* %order.i.i, align 4, !dbg !4791
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4792
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4793
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4794
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #13, !dbg !4795
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4795
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4795
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4795
  call void @llvm.assume(i1 %maskcond.i.i.i) #6, !dbg !4795
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4796
  br label %kmalloc.exit, !dbg !4796

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !4797
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4798
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !4798
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4800

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4801
  br label %kmalloc_index.exit.i, !dbg !4801

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4802
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !4804
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4805

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4806
  br label %kmalloc_index.exit.i, !dbg !4806

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4807
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !4809
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4810

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4811
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !4812
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4813

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4814
  br label %kmalloc_index.exit.i, !dbg !4814

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4815
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !4817
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4818

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4819
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !4820
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4821

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4822
  br label %kmalloc_index.exit.i, !dbg !4822

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4823
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !4825
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4826

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4827
  br label %kmalloc_index.exit.i, !dbg !4827

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4828
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !4830
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4831

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4832
  br label %kmalloc_index.exit.i, !dbg !4832

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4833
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !4835
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4836

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4837
  br label %kmalloc_index.exit.i, !dbg !4837

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4838
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !4840
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4841

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4842
  br label %kmalloc_index.exit.i, !dbg !4842

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4843
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !4845
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4846

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4847
  br label %kmalloc_index.exit.i, !dbg !4847

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4848
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !4850
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4851

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4852
  br label %kmalloc_index.exit.i, !dbg !4852

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4853
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !4855
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4856

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4857
  br label %kmalloc_index.exit.i, !dbg !4857

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4858
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !4860
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4861

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4862
  br label %kmalloc_index.exit.i, !dbg !4862

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4863
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !4865
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4866

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4867
  br label %kmalloc_index.exit.i, !dbg !4867

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4868
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !4870
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4871

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4872
  br label %kmalloc_index.exit.i, !dbg !4872

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4873
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !4875
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4876

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4877
  br label %kmalloc_index.exit.i, !dbg !4877

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4878
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !4880
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4881

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4882
  br label %kmalloc_index.exit.i, !dbg !4882

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4883
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !4885
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4886

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4887
  br label %kmalloc_index.exit.i, !dbg !4887

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4888
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !4890
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4891

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4892
  br label %kmalloc_index.exit.i, !dbg !4892

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4893
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !4895
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4896

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4897
  br label %kmalloc_index.exit.i, !dbg !4897

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4898
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !4900
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4901

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4902
  br label %kmalloc_index.exit.i, !dbg !4902

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4903
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !4905
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4906

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4907
  br label %kmalloc_index.exit.i, !dbg !4907

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4908
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !4910
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4911

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4912
  br label %kmalloc_index.exit.i, !dbg !4912

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4913
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !4915
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4916

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4917
  br label %kmalloc_index.exit.i, !dbg !4917

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4918
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !4920
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4921

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4922
  br label %kmalloc_index.exit.i, !dbg !4922

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4923
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !4925
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4926

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4927
  br label %kmalloc_index.exit.i, !dbg !4927

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4928
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !4930
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4931

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4932
  br label %kmalloc_index.exit.i, !dbg !4932

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4933
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !4935
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4936

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4937
  br label %kmalloc_index.exit.i, !dbg !4937

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4938
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !4940
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4941

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4942
  br label %kmalloc_index.exit.i, !dbg !4942

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #6, !dbg !4943, !srcloc !4946
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 214) #6, !dbg !4947, !srcloc !4950
  unreachable, !dbg !4951

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !4952
  store i32 %59, i32* %index.i, align 4, !dbg !4953
  %60 = load i32, i32* %index.i, align 4, !dbg !4954
  %tobool.i = icmp ne i32 %60, 0, !dbg !4954
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4956

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4957
  br label %kmalloc.exit, !dbg !4957

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !4958
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4959
  %and.i.i = and i32 %62, 17, !dbg !4959
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4959
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4959
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4959
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4959
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4961

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4962
  br label %kmalloc_type.exit.i, !dbg !4962

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4963
  %and2.i.i = and i32 %63, 1, !dbg !4964
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4963
  %64 = zext i1 %tobool3.i.i to i64, !dbg !4963
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4963
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4965
  br label %kmalloc_type.exit.i, !dbg !4965

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !4966
  %idxprom.i = zext i32 %65 to i64, !dbg !4967
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4967
  %66 = load i32, i32* %index.i, align 4, !dbg !4968
  %idxprom6.i = zext i32 %66 to i64, !dbg !4967
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4967
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4967
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !4969
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !4970
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4971
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4972
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #13, !dbg !4973
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4973
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4973
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4973
  call void @llvm.assume(i1 %maskcond.i.i) #6, !dbg !4973
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4715
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4974
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !4975
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4976
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4977
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #13, !dbg !4978
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4979
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !4980
  store i8* %76, i8** %retval.i, align 8, !dbg !4981
  br label %kmalloc.exit, !dbg !4981

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !4982
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !4983
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #13, !dbg !4984
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4984
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4984
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4984
  call void @llvm.assume(i1 %maskcond.i) #6, !dbg !4984
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4985
  br label %kmalloc.exit, !dbg !4985

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !4986
  store i8* %79, i8** %retval, align 8, !dbg !4987
  br label %return, !dbg !4987

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !4988
  %81 = load i32, i32* %flags.addr, align 4, !dbg !4989
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #10, !dbg !4990
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !4990
  %maskedptr = and i64 %ptrint, 7, !dbg !4990
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !4990
  call void @llvm.assume(i1 %maskcond), !dbg !4990
  store i8* %call9, i8** %retval, align 8, !dbg !4991
  br label %return, !dbg !4991

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !4992
  ret i8* %82, !dbg !4992
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !4993 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !4997, metadata !DIExpression()), !dbg !4998
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !4999
  %tobool = trunc i8 %0 to i1, !dbg !4999
  %lnot = xor i1 %tobool, true, !dbg !4999
  %lnot1 = xor i1 %lnot, true, !dbg !4999
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4999
  %conv = sext i32 %lnot.ext to i64, !dbg !4999
  %tobool2 = icmp ne i64 %conv, 0, !dbg !4999
  ret i1 %tobool2, !dbg !5000
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #8

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #9 !dbg !5001 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5005, metadata !DIExpression()), !dbg !5010
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5012, metadata !DIExpression()), !dbg !5013
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5014, metadata !DIExpression()), !dbg !5015
  %0 = load i64, i64* %size.addr, align 8, !dbg !5016
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5018
  br i1 %1, label %if.then, label %if.end447, !dbg !5019

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5020
  %tobool = icmp ne i64 %2, 0, !dbg !5020
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5023

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5024
  br label %return, !dbg !5024

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5025
  %cmp = icmp ult i64 %3, 4096, !dbg !5027
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5028

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5029
  br label %return, !dbg !5029

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub = sub i64 %4, 1, !dbg !5030
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5030
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5030

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub4 = sub i64 %6, 1, !dbg !5030
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5030
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5030

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub6 = sub i64 %8, 1, !dbg !5030
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5030
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5030

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5030

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub9 = sub i64 %9, 1, !dbg !5030
  %and = and i64 %sub9, -9223372036854775808, !dbg !5030
  %tobool10 = icmp ne i64 %and, 0, !dbg !5030
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5030

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5030

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub13 = sub i64 %10, 1, !dbg !5030
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5030
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5030
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5030

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5030

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub18 = sub i64 %11, 1, !dbg !5030
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5030
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5030
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5030

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5030

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub23 = sub i64 %12, 1, !dbg !5030
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5030
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5030
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5030

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5030

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub28 = sub i64 %13, 1, !dbg !5030
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5030
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5030
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5030

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5030

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub33 = sub i64 %14, 1, !dbg !5030
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5030
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5030
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5030

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5030

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub38 = sub i64 %15, 1, !dbg !5030
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5030
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5030
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5030

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5030

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub43 = sub i64 %16, 1, !dbg !5030
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5030
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5030
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5030

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5030

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub48 = sub i64 %17, 1, !dbg !5030
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5030
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5030
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5030

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5030

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub53 = sub i64 %18, 1, !dbg !5030
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5030
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5030
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5030

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5030

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub58 = sub i64 %19, 1, !dbg !5030
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5030
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5030
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5030

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5030

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub63 = sub i64 %20, 1, !dbg !5030
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5030
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5030
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5030

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5030

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub68 = sub i64 %21, 1, !dbg !5030
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5030
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5030
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5030

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5030

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub73 = sub i64 %22, 1, !dbg !5030
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5030
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5030
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5030

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5030

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub78 = sub i64 %23, 1, !dbg !5030
  %and79 = and i64 %sub78, 562949953421312, !dbg !5030
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5030
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5030

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5030

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub83 = sub i64 %24, 1, !dbg !5030
  %and84 = and i64 %sub83, 281474976710656, !dbg !5030
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5030
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5030

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5030

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub88 = sub i64 %25, 1, !dbg !5030
  %and89 = and i64 %sub88, 140737488355328, !dbg !5030
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5030
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5030

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5030

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub93 = sub i64 %26, 1, !dbg !5030
  %and94 = and i64 %sub93, 70368744177664, !dbg !5030
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5030
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5030

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5030

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub98 = sub i64 %27, 1, !dbg !5030
  %and99 = and i64 %sub98, 35184372088832, !dbg !5030
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5030
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5030

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5030

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub103 = sub i64 %28, 1, !dbg !5030
  %and104 = and i64 %sub103, 17592186044416, !dbg !5030
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5030
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5030

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5030

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub108 = sub i64 %29, 1, !dbg !5030
  %and109 = and i64 %sub108, 8796093022208, !dbg !5030
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5030
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5030

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5030

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub113 = sub i64 %30, 1, !dbg !5030
  %and114 = and i64 %sub113, 4398046511104, !dbg !5030
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5030
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5030

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5030

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub118 = sub i64 %31, 1, !dbg !5030
  %and119 = and i64 %sub118, 2199023255552, !dbg !5030
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5030
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5030

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5030

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub123 = sub i64 %32, 1, !dbg !5030
  %and124 = and i64 %sub123, 1099511627776, !dbg !5030
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5030
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5030

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5030

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub128 = sub i64 %33, 1, !dbg !5030
  %and129 = and i64 %sub128, 549755813888, !dbg !5030
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5030
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5030

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5030

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub133 = sub i64 %34, 1, !dbg !5030
  %and134 = and i64 %sub133, 274877906944, !dbg !5030
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5030
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5030

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5030

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub138 = sub i64 %35, 1, !dbg !5030
  %and139 = and i64 %sub138, 137438953472, !dbg !5030
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5030
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5030

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5030

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub143 = sub i64 %36, 1, !dbg !5030
  %and144 = and i64 %sub143, 68719476736, !dbg !5030
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5030
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5030

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5030

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub148 = sub i64 %37, 1, !dbg !5030
  %and149 = and i64 %sub148, 34359738368, !dbg !5030
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5030
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5030

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5030

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub153 = sub i64 %38, 1, !dbg !5030
  %and154 = and i64 %sub153, 17179869184, !dbg !5030
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5030
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5030

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5030

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub158 = sub i64 %39, 1, !dbg !5030
  %and159 = and i64 %sub158, 8589934592, !dbg !5030
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5030
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5030

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5030

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub163 = sub i64 %40, 1, !dbg !5030
  %and164 = and i64 %sub163, 4294967296, !dbg !5030
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5030
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5030

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5030

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub168 = sub i64 %41, 1, !dbg !5030
  %and169 = and i64 %sub168, 2147483648, !dbg !5030
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5030
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5030

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5030

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub173 = sub i64 %42, 1, !dbg !5030
  %and174 = and i64 %sub173, 1073741824, !dbg !5030
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5030
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5030

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5030

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub178 = sub i64 %43, 1, !dbg !5030
  %and179 = and i64 %sub178, 536870912, !dbg !5030
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5030
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5030

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5030

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub183 = sub i64 %44, 1, !dbg !5030
  %and184 = and i64 %sub183, 268435456, !dbg !5030
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5030
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5030

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5030

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub188 = sub i64 %45, 1, !dbg !5030
  %and189 = and i64 %sub188, 134217728, !dbg !5030
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5030
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5030

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5030

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub193 = sub i64 %46, 1, !dbg !5030
  %and194 = and i64 %sub193, 67108864, !dbg !5030
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5030
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5030

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5030

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub198 = sub i64 %47, 1, !dbg !5030
  %and199 = and i64 %sub198, 33554432, !dbg !5030
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5030
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5030

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5030

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub203 = sub i64 %48, 1, !dbg !5030
  %and204 = and i64 %sub203, 16777216, !dbg !5030
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5030
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5030

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5030

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub208 = sub i64 %49, 1, !dbg !5030
  %and209 = and i64 %sub208, 8388608, !dbg !5030
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5030
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5030

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5030

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub213 = sub i64 %50, 1, !dbg !5030
  %and214 = and i64 %sub213, 4194304, !dbg !5030
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5030
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5030

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5030

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub218 = sub i64 %51, 1, !dbg !5030
  %and219 = and i64 %sub218, 2097152, !dbg !5030
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5030
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5030

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5030

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub223 = sub i64 %52, 1, !dbg !5030
  %and224 = and i64 %sub223, 1048576, !dbg !5030
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5030
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5030

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5030

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub228 = sub i64 %53, 1, !dbg !5030
  %and229 = and i64 %sub228, 524288, !dbg !5030
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5030
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5030

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5030

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub233 = sub i64 %54, 1, !dbg !5030
  %and234 = and i64 %sub233, 262144, !dbg !5030
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5030
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5030

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5030

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub238 = sub i64 %55, 1, !dbg !5030
  %and239 = and i64 %sub238, 131072, !dbg !5030
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5030
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5030

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5030

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub243 = sub i64 %56, 1, !dbg !5030
  %and244 = and i64 %sub243, 65536, !dbg !5030
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5030
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5030

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5030

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub248 = sub i64 %57, 1, !dbg !5030
  %and249 = and i64 %sub248, 32768, !dbg !5030
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5030
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5030

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5030

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub253 = sub i64 %58, 1, !dbg !5030
  %and254 = and i64 %sub253, 16384, !dbg !5030
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5030
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5030

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5030

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub258 = sub i64 %59, 1, !dbg !5030
  %and259 = and i64 %sub258, 8192, !dbg !5030
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5030
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5030

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5030

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub263 = sub i64 %60, 1, !dbg !5030
  %and264 = and i64 %sub263, 4096, !dbg !5030
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5030
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5030

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5030

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub268 = sub i64 %61, 1, !dbg !5030
  %and269 = and i64 %sub268, 2048, !dbg !5030
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5030
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5030

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5030

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub273 = sub i64 %62, 1, !dbg !5030
  %and274 = and i64 %sub273, 1024, !dbg !5030
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5030
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5030

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5030

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub278 = sub i64 %63, 1, !dbg !5030
  %and279 = and i64 %sub278, 512, !dbg !5030
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5030
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5030

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5030

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub283 = sub i64 %64, 1, !dbg !5030
  %and284 = and i64 %sub283, 256, !dbg !5030
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5030
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5030

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5030

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub288 = sub i64 %65, 1, !dbg !5030
  %and289 = and i64 %sub288, 128, !dbg !5030
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5030
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5030

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5030

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub293 = sub i64 %66, 1, !dbg !5030
  %and294 = and i64 %sub293, 64, !dbg !5030
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5030
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5030

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5030

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub298 = sub i64 %67, 1, !dbg !5030
  %and299 = and i64 %sub298, 32, !dbg !5030
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5030
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5030

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5030

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub303 = sub i64 %68, 1, !dbg !5030
  %and304 = and i64 %sub303, 16, !dbg !5030
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5030
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5030

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5030

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub308 = sub i64 %69, 1, !dbg !5030
  %and309 = and i64 %sub308, 8, !dbg !5030
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5030
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5030

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5030

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub313 = sub i64 %70, 1, !dbg !5030
  %and314 = and i64 %sub313, 4, !dbg !5030
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5030
  %71 = zext i1 %tobool315 to i64, !dbg !5030
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5030
  br label %cond.end, !dbg !5030

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5030
  br label %cond.end317, !dbg !5030

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5030
  br label %cond.end319, !dbg !5030

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5030
  br label %cond.end321, !dbg !5030

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5030
  br label %cond.end323, !dbg !5030

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5030
  br label %cond.end325, !dbg !5030

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5030
  br label %cond.end327, !dbg !5030

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5030
  br label %cond.end329, !dbg !5030

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5030
  br label %cond.end331, !dbg !5030

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5030
  br label %cond.end333, !dbg !5030

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5030
  br label %cond.end335, !dbg !5030

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5030
  br label %cond.end337, !dbg !5030

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5030
  br label %cond.end339, !dbg !5030

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5030
  br label %cond.end341, !dbg !5030

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5030
  br label %cond.end343, !dbg !5030

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5030
  br label %cond.end345, !dbg !5030

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5030
  br label %cond.end347, !dbg !5030

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5030
  br label %cond.end349, !dbg !5030

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5030
  br label %cond.end351, !dbg !5030

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5030
  br label %cond.end353, !dbg !5030

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5030
  br label %cond.end355, !dbg !5030

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5030
  br label %cond.end357, !dbg !5030

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5030
  br label %cond.end359, !dbg !5030

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5030
  br label %cond.end361, !dbg !5030

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5030
  br label %cond.end363, !dbg !5030

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5030
  br label %cond.end365, !dbg !5030

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5030
  br label %cond.end367, !dbg !5030

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5030
  br label %cond.end369, !dbg !5030

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5030
  br label %cond.end371, !dbg !5030

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5030
  br label %cond.end373, !dbg !5030

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5030
  br label %cond.end375, !dbg !5030

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5030
  br label %cond.end377, !dbg !5030

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5030
  br label %cond.end379, !dbg !5030

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5030
  br label %cond.end381, !dbg !5030

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5030
  br label %cond.end383, !dbg !5030

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5030
  br label %cond.end385, !dbg !5030

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5030
  br label %cond.end387, !dbg !5030

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5030
  br label %cond.end389, !dbg !5030

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5030
  br label %cond.end391, !dbg !5030

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5030
  br label %cond.end393, !dbg !5030

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5030
  br label %cond.end395, !dbg !5030

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5030
  br label %cond.end397, !dbg !5030

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5030
  br label %cond.end399, !dbg !5030

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5030
  br label %cond.end401, !dbg !5030

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5030
  br label %cond.end403, !dbg !5030

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5030
  br label %cond.end405, !dbg !5030

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5030
  br label %cond.end407, !dbg !5030

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5030
  br label %cond.end409, !dbg !5030

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5030
  br label %cond.end411, !dbg !5030

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5030
  br label %cond.end413, !dbg !5030

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5030
  br label %cond.end415, !dbg !5030

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5030
  br label %cond.end417, !dbg !5030

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5030
  br label %cond.end419, !dbg !5030

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5030
  br label %cond.end421, !dbg !5030

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5030
  br label %cond.end423, !dbg !5030

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5030
  br label %cond.end425, !dbg !5030

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5030
  br label %cond.end427, !dbg !5030

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5030
  br label %cond.end429, !dbg !5030

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5030
  br label %cond.end431, !dbg !5030

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5030
  br label %cond.end433, !dbg !5030

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5030
  br label %cond.end435, !dbg !5030

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5030
  br label %cond.end437, !dbg !5030

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5030
  br label %cond.end440, !dbg !5030

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5030

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5030
  br label %cond.end444, !dbg !5030

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5030
  %sub443 = sub i64 %72, 1, !dbg !5030
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5030
  br label %cond.end444, !dbg !5030

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5030
  %sub446 = sub i32 %cond445, 12, !dbg !5031
  %add = add i32 %sub446, 1, !dbg !5032
  store i32 %add, i32* %retval, align 4, !dbg !5033
  br label %return, !dbg !5033

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5034
  %dec = add i64 %73, -1, !dbg !5034
  store i64 %dec, i64* %size.addr, align 8, !dbg !5034
  %74 = load i64, i64* %size.addr, align 8, !dbg !5035
  %shr = lshr i64 %74, 12, !dbg !5035
  store i64 %shr, i64* %size.addr, align 8, !dbg !5035
  %75 = load i64, i64* %size.addr, align 8, !dbg !5036
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5013
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5037
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5038
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #5, !dbg !5037, !srcloc !5039
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5037
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5040
  %add.i = add i32 %79, 1, !dbg !5041
  store i32 %add.i, i32* %retval, align 4, !dbg !5042
  br label %return, !dbg !5042

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5043
  ret i32 %80, !dbg !5043
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #9 !dbg !5044 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5005, metadata !DIExpression()), !dbg !5048
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5012, metadata !DIExpression()), !dbg !5050
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5051, metadata !DIExpression()), !dbg !5052
  %0 = load i64, i64* %n.addr, align 8, !dbg !5053
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5050
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5054
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5055
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #5, !dbg !5054, !srcloc !5039
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5054
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5056
  %add.i = add i32 %4, 1, !dbg !5057
  %sub = sub i32 %add.i, 1, !dbg !5058
  ret i32 %sub, !dbg !5059
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5060 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5064, metadata !DIExpression()), !dbg !5065
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5066, metadata !DIExpression()), !dbg !5067
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5068, metadata !DIExpression()), !dbg !5069
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5070, metadata !DIExpression()), !dbg !5071
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5072
  ret i8* %0, !dbg !5073
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__phys_addr_nodebug(i64 %x) #0 !dbg !5074 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr, metadata !5078, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.declare(metadata i64* %y, metadata !5080, metadata !DIExpression()), !dbg !5081
  %0 = load i64, i64* %x.addr, align 8, !dbg !5082
  %sub = sub i64 %0, -2147483648, !dbg !5083
  store i64 %sub, i64* %y, align 8, !dbg !5081
  %1 = load i64, i64* %y, align 8, !dbg !5084
  %2 = load i64, i64* %x.addr, align 8, !dbg !5085
  %3 = load i64, i64* %y, align 8, !dbg !5086
  %cmp = icmp ugt i64 %2, %3, !dbg !5087
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5088

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* @phys_base, align 8, !dbg !5089
  br label %cond.end, !dbg !5088

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* @page_offset_base, align 8, !dbg !5090
  %sub1 = sub i64 -2147483648, %5, !dbg !5091
  br label %cond.end, !dbg !5088

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !5088
  %add = add i64 %1, %cond, !dbg !5092
  store i64 %add, i64* %x.addr, align 8, !dbg !5093
  %6 = load i64, i64* %x.addr, align 8, !dbg !5094
  ret i64 %6, !dbg !5095
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @paravirt_write_msr(i32 %msr, i32 %low, i32 %high) #0 !dbg !5096 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !5099, metadata !DIExpression()), !dbg !5100
  store i32 %low, i32* %low.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %low.addr, metadata !5101, metadata !DIExpression()), !dbg !5102
  store i32 %high, i32* %high.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %high.addr, metadata !5103, metadata !DIExpression()), !dbg !5104
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5105, metadata !DIExpression()), !dbg !5107
  %0 = load i64, i64* %__edi, align 8, !dbg !5107
  store i64 %0, i64* %__edi, align 8, !dbg !5107
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5108, metadata !DIExpression()), !dbg !5107
  %1 = load i64, i64* %__esi, align 8, !dbg !5107
  store i64 %1, i64* %__esi, align 8, !dbg !5107
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5109, metadata !DIExpression()), !dbg !5107
  %2 = load i64, i64* %__edx, align 8, !dbg !5107
  store i64 %2, i64* %__edx, align 8, !dbg !5107
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5110, metadata !DIExpression()), !dbg !5107
  %3 = load i64, i64* %__ecx, align 8, !dbg !5107
  store i64 %3, i64* %__ecx, align 8, !dbg !5107
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5111, metadata !DIExpression()), !dbg !5107
  %4 = load i64, i64* %__eax, align 8, !dbg !5107
  store i64 %4, i64* %__eax, align 8, !dbg !5107
  %5 = load void (i32, i32, i32)*, void (i32, i32, i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 24), align 8, !dbg !5107
  %6 = call i64 @llvm.read_register.i64(metadata !4134), !dbg !5107
  %7 = load i32, i32* %msr.addr, align 4, !dbg !5107
  %conv = zext i32 %7 to i64, !dbg !5107
  %8 = load i32, i32* %low.addr, align 4, !dbg !5107
  %conv1 = zext i32 %8 to i64, !dbg !5107
  %9 = load i32, i32* %high.addr, align 4, !dbg !5107
  %conv2 = zext i32 %9 to i64, !dbg !5107
  %10 = call { i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${6:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${5:c}\0A  .byte 772b-771b\0A  .short ${7:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},i,i,i,{di},{si},{dx},4,~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 27, void (i32, i32, i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 24), i32 511, i64 %conv, i64 %conv1, i64 %conv2, i64 %6) #6, !dbg !5107, !srcloc !5112
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %10, 0, !dbg !5107
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %10, 1, !dbg !5107
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %10, 2, !dbg !5107
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64 } %10, 3, !dbg !5107
  %asmresult6 = extractvalue { i64, i64, i64, i64, i64 } %10, 4, !dbg !5107
  store i64 %asmresult, i64* %__edi, align 8, !dbg !5107
  store i64 %asmresult3, i64* %__esi, align 8, !dbg !5107
  store i64 %asmresult4, i64* %__edx, align 8, !dbg !5107
  store i64 %asmresult5, i64* %__ecx, align 8, !dbg !5107
  call void @llvm.write_register.i64(metadata !4134, i64 %asmresult6), !dbg !5107
  ret void, !dbg !5113
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { nounwind willreturn }
attributes #9 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4134}
!llvm.module.flags = !{!4135, !4136, !4137, !4138}
!llvm.ident = !{!4139}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hv_context", scope: !2, file: !3, line: 24, type: !4128, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !192, globals: !4127, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/hv/hv.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !23, !34, !39, !46, !52, !57, !63, !70, !76, !85, !93, !99, !105, !112, !120, !126, !140, !147, !174, !179, !185}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hv_message_type", file: !6, line: 261, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./arch/x86/include/asm/hyperv-tlfs.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22}
!9 = !DIEnumerator(name: "HVMSG_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "HVMSG_UNMAPPED_GPA", value: 2147483648, isUnsigned: true)
!11 = !DIEnumerator(name: "HVMSG_GPA_INTERCEPT", value: 2147483649, isUnsigned: true)
!12 = !DIEnumerator(name: "HVMSG_TIMER_EXPIRED", value: 2147483664, isUnsigned: true)
!13 = !DIEnumerator(name: "HVMSG_INVALID_VP_REGISTER_VALUE", value: 2147483680, isUnsigned: true)
!14 = !DIEnumerator(name: "HVMSG_UNRECOVERABLE_EXCEPTION", value: 2147483681, isUnsigned: true)
!15 = !DIEnumerator(name: "HVMSG_UNSUPPORTED_FEATURE", value: 2147483682, isUnsigned: true)
!16 = !DIEnumerator(name: "HVMSG_EVENTLOG_BUFFERCOMPLETE", value: 2147483712, isUnsigned: true)
!17 = !DIEnumerator(name: "HVMSG_X64_IOPORT_INTERCEPT", value: 2147549184, isUnsigned: true)
!18 = !DIEnumerator(name: "HVMSG_X64_MSR_INTERCEPT", value: 2147549185, isUnsigned: true)
!19 = !DIEnumerator(name: "HVMSG_X64_CPUID_INTERCEPT", value: 2147549186, isUnsigned: true)
!20 = !DIEnumerator(name: "HVMSG_X64_EXCEPTION_INTERCEPT", value: 2147549187, isUnsigned: true)
!21 = !DIEnumerator(name: "HVMSG_X64_APIC_EOI", value: 2147549188, isUnsigned: true)
!22 = !DIEnumerator(name: "HVMSG_X64_LEGACY_FP_ERROR", value: 2147549189, isUnsigned: true)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 107, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "drivers/hv/hyperv_vmbus.h", directory: "/home/lizy2001/genbc/linux")
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33}
!26 = !DIEnumerator(name: "VMBUS_MESSAGE_CONNECTION_ID", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "VMBUS_MESSAGE_CONNECTION_ID_4", value: 4, isUnsigned: true)
!28 = !DIEnumerator(name: "VMBUS_MESSAGE_PORT_ID", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "VMBUS_EVENT_CONNECTION_ID", value: 2, isUnsigned: true)
!30 = !DIEnumerator(name: "VMBUS_EVENT_PORT_ID", value: 2, isUnsigned: true)
!31 = !DIEnumerator(name: "VMBUS_MONITOR_CONNECTION_ID", value: 3, isUnsigned: true)
!32 = !DIEnumerator(name: "VMBUS_MONITOR_PORT_ID", value: 3, isUnsigned: true)
!33 = !DIEnumerator(name: "VMBUS_MESSAGE_SINT", value: 2, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 10, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !40, line: 15, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!41 = !{!42, !43, !44, !45}
!42 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!43 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!44 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!45 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !47, line: 546, baseType: !7, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!48 = !{!49, !50, !51}
!49 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!50 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!51 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !53, line: 65, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!54 = !{!55, !56}
!55 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!56 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !58, line: 16, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!61 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!62 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !64, line: 59, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!65 = !{!66, !67, !68, !69}
!66 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!67 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!68 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!69 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !71, line: 54, baseType: !7, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !74, !75}
!73 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!74 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!75 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !77, line: 296, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!78 = !{!79, !80, !81, !82, !83, !84}
!79 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!80 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!81 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!82 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!83 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!84 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !86, line: 9, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!87 = !{!88, !89, !90, !91, !92}
!88 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!91 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!92 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !94, line: 26, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !100, line: 44, baseType: !7, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!101 = !{!102, !103, !104}
!102 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!104 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !106, line: 343, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109, !110, !111}
!108 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!111 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !113, line: 524, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!114 = !{!115, !116, !117, !118, !119}
!115 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!118 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!119 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !113, line: 502, baseType: !7, size: 32, elements: !121)
!121 = !{!122, !123, !124, !125}
!122 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!123 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!124 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!125 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !127, line: 76, baseType: !7, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139}
!129 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!130 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!131 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!132 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!133 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!134 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!135 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!136 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!137 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!138 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!139 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vmbus_channel_state", file: !141, line: 696, baseType: !7, size: 32, elements: !142)
!141 = !DIFile(filename: "./include/linux/hyperv.h", directory: "/home/lizy2001/genbc/linux")
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "CHANNEL_OFFER_STATE", value: 0, isUnsigned: true)
!144 = !DIEnumerator(name: "CHANNEL_OPENING_STATE", value: 1, isUnsigned: true)
!145 = !DIEnumerator(name: "CHANNEL_OPEN_STATE", value: 2, isUnsigned: true)
!146 = !DIEnumerator(name: "CHANNEL_OPENED_STATE", value: 3, isUnsigned: true)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vmbus_channel_message_type", file: !141, line: 453, baseType: !7, size: 32, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173}
!149 = !DIEnumerator(name: "CHANNELMSG_INVALID", value: 0, isUnsigned: true)
!150 = !DIEnumerator(name: "CHANNELMSG_OFFERCHANNEL", value: 1, isUnsigned: true)
!151 = !DIEnumerator(name: "CHANNELMSG_RESCIND_CHANNELOFFER", value: 2, isUnsigned: true)
!152 = !DIEnumerator(name: "CHANNELMSG_REQUESTOFFERS", value: 3, isUnsigned: true)
!153 = !DIEnumerator(name: "CHANNELMSG_ALLOFFERS_DELIVERED", value: 4, isUnsigned: true)
!154 = !DIEnumerator(name: "CHANNELMSG_OPENCHANNEL", value: 5, isUnsigned: true)
!155 = !DIEnumerator(name: "CHANNELMSG_OPENCHANNEL_RESULT", value: 6, isUnsigned: true)
!156 = !DIEnumerator(name: "CHANNELMSG_CLOSECHANNEL", value: 7, isUnsigned: true)
!157 = !DIEnumerator(name: "CHANNELMSG_GPADL_HEADER", value: 8, isUnsigned: true)
!158 = !DIEnumerator(name: "CHANNELMSG_GPADL_BODY", value: 9, isUnsigned: true)
!159 = !DIEnumerator(name: "CHANNELMSG_GPADL_CREATED", value: 10, isUnsigned: true)
!160 = !DIEnumerator(name: "CHANNELMSG_GPADL_TEARDOWN", value: 11, isUnsigned: true)
!161 = !DIEnumerator(name: "CHANNELMSG_GPADL_TORNDOWN", value: 12, isUnsigned: true)
!162 = !DIEnumerator(name: "CHANNELMSG_RELID_RELEASED", value: 13, isUnsigned: true)
!163 = !DIEnumerator(name: "CHANNELMSG_INITIATE_CONTACT", value: 14, isUnsigned: true)
!164 = !DIEnumerator(name: "CHANNELMSG_VERSION_RESPONSE", value: 15, isUnsigned: true)
!165 = !DIEnumerator(name: "CHANNELMSG_UNLOAD", value: 16, isUnsigned: true)
!166 = !DIEnumerator(name: "CHANNELMSG_UNLOAD_RESPONSE", value: 17, isUnsigned: true)
!167 = !DIEnumerator(name: "CHANNELMSG_18", value: 18, isUnsigned: true)
!168 = !DIEnumerator(name: "CHANNELMSG_19", value: 19, isUnsigned: true)
!169 = !DIEnumerator(name: "CHANNELMSG_20", value: 20, isUnsigned: true)
!170 = !DIEnumerator(name: "CHANNELMSG_TL_CONNECT_REQUEST", value: 21, isUnsigned: true)
!171 = !DIEnumerator(name: "CHANNELMSG_MODIFYCHANNEL", value: 22, isUnsigned: true)
!172 = !DIEnumerator(name: "CHANNELMSG_TL_CONNECT_RESULT", value: 23, isUnsigned: true)
!173 = !DIEnumerator(name: "CHANNELMSG_COUNT", value: 24, isUnsigned: true)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hv_callback_mode", file: !141, line: 844, baseType: !7, size: 32, elements: !175)
!175 = !{!176, !177, !178}
!176 = !DIEnumerator(name: "HV_CALL_BATCHED", value: 0, isUnsigned: true)
!177 = !DIEnumerator(name: "HV_CALL_DIRECT", value: 1, isUnsigned: true)
!178 = !DIEnumerator(name: "HV_CALL_ISR", value: 2, isUnsigned: true)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vmbus_connect_state", file: !24, line: 202, baseType: !7, size: 32, elements: !180)
!180 = !{!181, !182, !183, !184}
!181 = !DIEnumerator(name: "DISCONNECTED", value: 0, isUnsigned: true)
!182 = !DIEnumerator(name: "CONNECTING", value: 1, isUnsigned: true)
!183 = !DIEnumerator(name: "CONNECTED", value: 2, isUnsigned: true)
!184 = !DIEnumerator(name: "DISCONNECTING", value: 3, isUnsigned: true)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !186, line: 305, baseType: !7, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!187 = !{!188, !189, !190, !191}
!188 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!189 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!190 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!191 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!192 = !{!193, !197, !230, !239, !207, !240, !476, !472}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_per_cpu_context", file: !24, line: 121, size: 512, elements: !195)
!195 = !{!196, !198, !199, !200}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "synic_message_page", scope: !194, file: !24, line: 122, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "synic_event_page", scope: !194, file: !24, line: 123, baseType: !197, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "post_msg_page", scope: !194, file: !24, line: 127, baseType: !197, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "msg_dpc", scope: !194, file: !24, line: 134, baseType: !201, size: 320, offset: 192)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tasklet_struct", file: !202, line: 609, size: 320, elements: !203)
!202 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!203 = !{!204, !206, !208, !215, !218, !229}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !202, line: 611, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !201, file: !202, line: 612, baseType: !207, size: 64, offset: 64)
!207 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !201, file: !202, line: 613, baseType: !209, size: 32, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !210, line: 168, baseType: !211)
!210 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 166, size: 32, elements: !212)
!212 = !{!213}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !211, file: !210, line: 167, baseType: !214, size: 32)
!214 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "use_callback", scope: !201, file: !202, line: 614, baseType: !216, size: 8, offset: 160)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !210, line: 30, baseType: !217)
!217 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!218 = !DIDerivedType(tag: DW_TAG_member, scope: !201, file: !202, line: 615, baseType: !219, size: 64, offset: 192)
!219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !201, file: !202, line: 615, size: 64, elements: !220)
!220 = !{!221, !225}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !219, file: !202, line: 616, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !207}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !219, file: !202, line: 617, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !205}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !201, file: !202, line: 619, baseType: !207, size: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !233, line: 17, size: 64, elements: !234)
!233 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!234 = !{!235}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !232, file: !233, line: 17, baseType: !236, size: 64)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 64, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 1)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !210, line: 148, baseType: !7)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel", file: !141, line: 773, size: 6592, elements: !242)
!242 = !{!243, !249, !3946, !3947, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4037, !4038, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4102, !4103, !4104, !4105, !4106, !4107, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "listentry", scope: !241, file: !141, line: 774, baseType: !244, size: 128)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !210, line: 178, size: 128, elements: !245)
!245 = !{!246, !248}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !244, file: !210, line: 179, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !244, file: !210, line: 179, baseType: !247, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "device_obj", scope: !241, file: !141, line: 776, baseType: !250, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_device", file: !141, line: 1219, size: 6144, elements: !252)
!252 = !{!253, !265, !266, !271, !272, !3942, !3943, !3944, !3945}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "dev_type", scope: !251, file: !141, line: 1221, baseType: !254, size: 128)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !255, line: 25, baseType: !256)
!255 = !DIFile(filename: "./include/uapi/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !255, line: 23, size: 128, elements: !257)
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !256, file: !255, line: 24, baseType: !259, size: 128)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 128, elements: !263)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !261, line: 21, baseType: !262)
!261 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!262 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!263 = !{!264}
!264 = !DISubrange(count: 16)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "dev_instance", scope: !251, file: !141, line: 1224, baseType: !254, size: 128, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !251, file: !141, line: 1225, baseType: !267, size: 16, offset: 256)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !268, line: 19, baseType: !269)
!268 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !261, line: 24, baseType: !270)
!270 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !251, file: !141, line: 1226, baseType: !267, size: 16, offset: 272)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !251, file: !141, line: 1228, baseType: !273, size: 5568, offset: 320)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !106, line: 461, size: 5568, elements: !274)
!274 = !{!275, !3395, !3397, !3400, !3401, !3452, !3543, !3544, !3545, !3546, !3547, !3556, !3661, !3674, !3869, !3870, !3874, !3876, !3877, !3878, !3882, !3888, !3889, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3930, !3931, !3932, !3935, !3938, !3939, !3940, !3941}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !273, file: !106, line: 462, baseType: !276, size: 512)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !277, line: 64, size: 512, elements: !278)
!277 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!278 = !{!279, !283, !284, !286, !346, !3245, !3385, !3390, !3391, !3392, !3393, !3394}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !276, file: !277, line: 65, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !276, file: !277, line: 66, baseType: !244, size: 128, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !276, file: !277, line: 67, baseType: !285, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !276, file: !277, line: 68, baseType: !287, size: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !277, line: 192, size: 704, elements: !289)
!289 = !{!290, !291, !307, !308}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !288, file: !277, line: 193, baseType: !244, size: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !288, file: !277, line: 194, baseType: !292, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !293, line: 83, baseType: !294)
!293 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !293, line: 71, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, scope: !294, file: !293, line: 72, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !294, file: !293, line: 72, elements: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !297, file: !293, line: 73, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !293, line: 20, elements: !301)
!301 = !{!302}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !300, file: !293, line: 21, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !304, line: 25, baseType: !305)
!304 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !304, line: 25, elements: !306)
!306 = !{}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !288, file: !277, line: 195, baseType: !276, size: 512, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !288, file: !277, line: 196, baseType: !309, size: 64, offset: 640)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !277, line: 156, size: 192, elements: !312)
!312 = !{!313, !318, !323}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !311, file: !277, line: 157, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!214, !287, !285}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !311, file: !277, line: 158, baseType: !319, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!280, !287, !285}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !311, file: !277, line: 159, baseType: !324, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!214, !287, !285, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !277, line: 148, size: 20736, elements: !330)
!330 = !{!331, !336, !340, !341, !345}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !329, file: !277, line: 149, baseType: !332, size: 192)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 192, elements: !334)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!334 = !{!335}
!335 = !DISubrange(count: 3)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !329, file: !277, line: 150, baseType: !337, size: 4096, offset: 192)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 4096, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !329, file: !277, line: 151, baseType: !214, size: 32, offset: 4288)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !329, file: !277, line: 152, baseType: !342, size: 16384, offset: 4320)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 16384, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 2048)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !329, file: !277, line: 153, baseType: !214, size: 32, offset: 20704)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !276, file: !277, line: 69, baseType: !347, size: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !277, line: 138, size: 448, elements: !349)
!349 = !{!350, !354, !382, !384, !3207, !3235, !3239}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !348, file: !277, line: 139, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !285}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !348, file: !277, line: 140, baseType: !355, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !358, line: 230, size: 128, elements: !359)
!358 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!359 = !{!360, !375}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !357, file: !358, line: 231, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!364, !285, !369, !333}
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !210, line: 60, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !366, line: 73, baseType: !367)
!366 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !366, line: 15, baseType: !368)
!368 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !358, line: 30, size: 128, elements: !371)
!371 = !{!372, !373}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !370, file: !358, line: 31, baseType: !280, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !370, file: !358, line: 32, baseType: !374, size: 16, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !210, line: 19, baseType: !270)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !357, file: !358, line: 232, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!364, !285, !369, !280, !379}
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !210, line: 55, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !366, line: 72, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !366, line: 16, baseType: !207)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !348, file: !277, line: 141, baseType: !383, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !348, file: !277, line: 142, baseType: !385, size: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !358, line: 84, size: 320, elements: !389)
!389 = !{!390, !391, !395, !3204, !3205}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !388, file: !358, line: 85, baseType: !280, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !388, file: !358, line: 86, baseType: !392, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!374, !285, !369, !214}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !388, file: !358, line: 88, baseType: !396, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!374, !285, !399, !214}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !358, line: 168, size: 448, elements: !401)
!401 = !{!402, !403, !404, !405, !3199, !3200}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !400, file: !358, line: 169, baseType: !370, size: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !400, file: !358, line: 170, baseType: !379, size: 64, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !400, file: !358, line: 171, baseType: !197, size: 64, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !400, file: !358, line: 172, baseType: !406, size: 64, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!364, !409, !285, !399, !333, !583, !379}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !77, line: 916, size: 1856, align: 32, elements: !411)
!411 = !{!412, !430, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3182, !3183, !3192, !3193, !3194, !3195, !3196, !3197, !3198}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !410, file: !77, line: 920, baseType: !413, size: 128)
!413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !77, line: 917, size: 128, elements: !414)
!414 = !{!415, !421}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !413, file: !77, line: 918, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !417, line: 58, size: 64, elements: !418)
!417 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !416, file: !417, line: 59, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !413, file: !77, line: 919, baseType: !422, size: 128, align: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !210, line: 216, size: 128, align: 64, elements: !423)
!423 = !{!424, !426}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !422, file: !210, line: 217, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !422, file: !210, line: 218, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !425}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !410, file: !77, line: 921, baseType: !431, size: 128, offset: 128)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !432, line: 8, size: 128, elements: !433)
!432 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!433 = !{!434, !438}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !431, file: !432, line: 9, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !437, line: 18, flags: DIFlagFwdDecl)
!437 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!438 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !431, file: !432, line: 10, baseType: !439, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !437, line: 89, size: 1536, elements: !441)
!441 = !{!442, !443, !453, !461, !462, !482, !3132, !3134, !3146, !3147, !3148, !3149, !3150, !3156, !3157, !3158}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !440, file: !437, line: 91, baseType: !7, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !440, file: !437, line: 92, baseType: !444, size: 32, offset: 32)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !445, line: 277, baseType: !446)
!445 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !445, line: 277, size: 32, elements: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !446, file: !445, line: 277, baseType: !449, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !445, line: 70, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !445, line: 65, size: 32, elements: !451)
!451 = !{!452}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !450, file: !445, line: 66, baseType: !7, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !440, file: !437, line: 93, baseType: !454, size: 128, offset: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !455, line: 38, size: 128, elements: !456)
!455 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!456 = !{!457, !459}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !454, file: !455, line: 39, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !454, file: !455, line: 39, baseType: !460, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !440, file: !437, line: 94, baseType: !439, size: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !440, file: !437, line: 95, baseType: !463, size: 128, offset: 256)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !437, line: 47, size: 128, elements: !464)
!464 = !{!465, !479}
!465 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !437, line: 48, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !463, file: !437, line: 48, size: 64, elements: !467)
!467 = !{!468, !475}
!468 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !437, line: 49, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !466, file: !437, line: 49, size: 64, elements: !470)
!470 = !{!471, !474}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !469, file: !437, line: 50, baseType: !472, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !268, line: 21, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !261, line: 27, baseType: !7)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !469, file: !437, line: 50, baseType: !472, size: 32, offset: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !466, file: !437, line: 52, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !268, line: 23, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !261, line: 31, baseType: !478)
!478 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !463, file: !437, line: 54, baseType: !480, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !440, file: !437, line: 96, baseType: !483, size: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !77, line: 610, size: 4224, elements: !485)
!485 = !{!486, !487, !488, !496, !503, !504, !650, !2843, !2844, !2845, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !3108, !3116, !3117, !3118, !3128, !3129, !3130, !3131}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !484, file: !77, line: 611, baseType: !374, size: 16)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !484, file: !77, line: 612, baseType: !270, size: 16, offset: 16)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !484, file: !77, line: 613, baseType: !489, size: 32, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !490, line: 23, baseType: !491)
!490 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !490, line: 21, size: 32, elements: !492)
!492 = !{!493}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !491, file: !490, line: 22, baseType: !494, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !210, line: 32, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !366, line: 49, baseType: !7)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !484, file: !77, line: 614, baseType: !497, size: 32, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !490, line: 28, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !490, line: 26, size: 32, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !498, file: !490, line: 27, baseType: !501, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !210, line: 33, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !366, line: 50, baseType: !7)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !484, file: !77, line: 615, baseType: !7, size: 32, offset: 96)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !484, file: !77, line: 622, baseType: !505, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !77, line: 1864, size: 1536, align: 512, elements: !508)
!508 = !{!509, !513, !526, !530, !536, !540, !544, !548, !552, !556, !560, !561, !567, !571, !597, !626, !630, !636, !641, !645, !646}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !507, file: !77, line: 1865, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!439, !483, !439, !7}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !507, file: !77, line: 1866, baseType: !514, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!280, !439, !483, !517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !519, line: 10, size: 128, elements: !520)
!519 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!520 = !{!521, !525}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !518, file: !519, line: 11, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !197}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !518, file: !519, line: 12, baseType: !197, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !507, file: !77, line: 1867, baseType: !527, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!214, !483, !214}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !507, file: !77, line: 1868, baseType: !531, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!534, !483, !214}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !77, line: 581, flags: DIFlagFwdDecl)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !507, file: !77, line: 1870, baseType: !537, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!214, !439, !333, !214}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !507, file: !77, line: 1872, baseType: !541, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!214, !483, !439, !374, !216}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !507, file: !77, line: 1873, baseType: !545, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!214, !439, !483, !439}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !507, file: !77, line: 1874, baseType: !549, size: 64, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!214, !483, !439}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !507, file: !77, line: 1875, baseType: !553, size: 64, offset: 512)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!214, !483, !439, !280}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !507, file: !77, line: 1876, baseType: !557, size: 64, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!214, !483, !439, !374}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !507, file: !77, line: 1877, baseType: !549, size: 64, offset: 640)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !507, file: !77, line: 1878, baseType: !562, size: 64, offset: 704)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!214, !483, !439, !374, !565}
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !210, line: 16, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !210, line: 13, baseType: !472)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !507, file: !77, line: 1879, baseType: !568, size: 64, offset: 768)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!214, !483, !439, !483, !439, !7}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !507, file: !77, line: 1881, baseType: !572, size: 64, offset: 832)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!214, !439, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !77, line: 219, size: 640, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !586, !594, !595, !596}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !576, file: !77, line: 220, baseType: !7, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !576, file: !77, line: 221, baseType: !374, size: 16, offset: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !576, file: !77, line: 222, baseType: !489, size: 32, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !576, file: !77, line: 223, baseType: !497, size: 32, offset: 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !576, file: !77, line: 224, baseType: !583, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !210, line: 46, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !366, line: 88, baseType: !585)
!585 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !576, file: !77, line: 225, baseType: !587, size: 128, offset: 192)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !588, line: 13, size: 128, elements: !589)
!588 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!589 = !{!590, !593}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !587, file: !588, line: 14, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !588, line: 8, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !261, line: 30, baseType: !585)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !587, file: !588, line: 15, baseType: !368, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !576, file: !77, line: 226, baseType: !587, size: 128, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !576, file: !77, line: 227, baseType: !587, size: 128, offset: 448)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !576, file: !77, line: 234, baseType: !409, size: 64, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !507, file: !77, line: 1882, baseType: !598, size: 64, offset: 896)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!214, !601, !603, !472, !7}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !605, line: 22, size: 1152, elements: !606)
!605 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!606 = !{!607, !608, !609, !610, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !604, file: !605, line: 23, baseType: !472, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !604, file: !605, line: 24, baseType: !374, size: 16, offset: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !604, file: !605, line: 25, baseType: !7, size: 32, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !604, file: !605, line: 26, baseType: !611, size: 32, offset: 96)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !210, line: 104, baseType: !472)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !604, file: !605, line: 27, baseType: !476, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !604, file: !605, line: 28, baseType: !476, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !604, file: !605, line: 37, baseType: !476, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !604, file: !605, line: 38, baseType: !565, size: 32, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !604, file: !605, line: 39, baseType: !565, size: 32, offset: 352)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !604, file: !605, line: 40, baseType: !489, size: 32, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !604, file: !605, line: 41, baseType: !497, size: 32, offset: 416)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !604, file: !605, line: 42, baseType: !583, size: 64, offset: 448)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !604, file: !605, line: 43, baseType: !587, size: 128, offset: 512)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !604, file: !605, line: 44, baseType: !587, size: 128, offset: 640)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !604, file: !605, line: 45, baseType: !587, size: 128, offset: 768)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !604, file: !605, line: 46, baseType: !587, size: 128, offset: 896)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !604, file: !605, line: 47, baseType: !476, size: 64, offset: 1024)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !604, file: !605, line: 48, baseType: !476, size: 64, offset: 1088)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !507, file: !77, line: 1883, baseType: !627, size: 64, offset: 960)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!364, !439, !333, !379}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !507, file: !77, line: 1884, baseType: !631, size: 64, offset: 1024)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!214, !483, !634, !476, !476}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !77, line: 50, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !507, file: !77, line: 1886, baseType: !637, size: 64, offset: 1088)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!214, !483, !640, !214}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !507, file: !77, line: 1887, baseType: !642, size: 64, offset: 1152)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!214, !483, !439, !409, !7, !374}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !507, file: !77, line: 1890, baseType: !557, size: 64, offset: 1216)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !507, file: !77, line: 1891, baseType: !647, size: 64, offset: 1280)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!214, !483, !534, !214}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !484, file: !77, line: 623, baseType: !651, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !77, line: 1416, size: 9472, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !708, !2451, !2533, !2616, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2632, !2636, !2637, !2640, !2641, !2644, !2645, !2646, !2687, !2714, !2715, !2716, !2717, !2718, !2719, !2722, !2724, !2730, !2731, !2733, !2734, !2735, !2794, !2795, !2810, !2811, !2812, !2813, !2814, !2817, !2818, !2819, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !652, file: !77, line: 1417, baseType: !244, size: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !652, file: !77, line: 1418, baseType: !565, size: 32, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !652, file: !77, line: 1419, baseType: !262, size: 8, offset: 160)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !652, file: !77, line: 1420, baseType: !207, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !652, file: !77, line: 1421, baseType: !583, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !652, file: !77, line: 1422, baseType: !660, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !77, line: 2228, size: 576, elements: !662)
!662 = !{!663, !664, !665, !671, !675, !679, !683, !687, !688, !698, !701, !702, !703, !705, !706, !707}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !661, file: !77, line: 2229, baseType: !280, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !661, file: !77, line: 2230, baseType: !214, size: 32, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !661, file: !77, line: 2238, baseType: !666, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!214, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !77, line: 69, flags: DIFlagFwdDecl)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !661, file: !77, line: 2239, baseType: !672, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !674)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !77, line: 70, flags: DIFlagFwdDecl)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !661, file: !77, line: 2240, baseType: !676, size: 64, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!439, !660, !214, !280, !197}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !661, file: !77, line: 2242, baseType: !680, size: 64, offset: 320)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !651}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !661, file: !77, line: 2243, baseType: !684, size: 64, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !686, line: 76, flags: DIFlagFwdDecl)
!686 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !661, file: !77, line: 2244, baseType: !660, size: 64, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !661, file: !77, line: 2245, baseType: !689, size: 64, offset: 512)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !210, line: 182, size: 64, elements: !690)
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !689, file: !210, line: 183, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !210, line: 186, size: 128, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !693, file: !210, line: 187, baseType: !692, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !693, file: !210, line: 187, baseType: !697, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !661, file: !77, line: 2247, baseType: !699, offset: 576)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !700, line: 187, elements: !306)
!700 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!701 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !661, file: !77, line: 2248, baseType: !699, offset: 576)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !661, file: !77, line: 2249, baseType: !699, offset: 576)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !661, file: !77, line: 2250, baseType: !704, offset: 576)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, elements: !334)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !661, file: !77, line: 2252, baseType: !699, offset: 576)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !661, file: !77, line: 2253, baseType: !699, offset: 576)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !661, file: !77, line: 2254, baseType: !699, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !652, file: !77, line: 1423, baseType: !709, size: 64, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !711)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !77, line: 1935, size: 1472, elements: !712)
!712 = !{!713, !717, !721, !722, !726, !732, !736, !737, !738, !742, !746, !747, !748, !749, !755, !760, !761, !768, !769, !770, !771, !2435, !2450}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !711, file: !77, line: 1936, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!483, !651}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !711, file: !77, line: 1937, baseType: !718, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !483}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !711, file: !77, line: 1938, baseType: !718, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !711, file: !77, line: 1940, baseType: !723, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !483, !214}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !711, file: !77, line: 1941, baseType: !727, size: 64, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!214, !483, !730}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !47, line: 40, flags: DIFlagFwdDecl)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !711, file: !77, line: 1942, baseType: !733, size: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!214, !483}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !711, file: !77, line: 1943, baseType: !718, size: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !711, file: !77, line: 1944, baseType: !680, size: 64, offset: 448)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !711, file: !77, line: 1945, baseType: !739, size: 64, offset: 512)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!214, !651, !214}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !711, file: !77, line: 1946, baseType: !743, size: 64, offset: 576)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!214, !651}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !711, file: !77, line: 1947, baseType: !743, size: 64, offset: 640)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !711, file: !77, line: 1948, baseType: !743, size: 64, offset: 704)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !711, file: !77, line: 1949, baseType: !743, size: 64, offset: 768)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !711, file: !77, line: 1950, baseType: !750, size: 64, offset: 832)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!214, !439, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !77, line: 57, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !711, file: !77, line: 1951, baseType: !756, size: 64, offset: 896)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!214, !651, !759, !333}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !711, file: !77, line: 1952, baseType: !680, size: 64, offset: 960)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !711, file: !77, line: 1954, baseType: !762, size: 64, offset: 1024)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!214, !765, !439}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !767, line: 539, flags: DIFlagFwdDecl)
!767 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!768 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !711, file: !77, line: 1955, baseType: !762, size: 64, offset: 1088)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !711, file: !77, line: 1956, baseType: !762, size: 64, offset: 1152)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !711, file: !77, line: 1957, baseType: !762, size: 64, offset: 1216)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !711, file: !77, line: 1963, baseType: !772, size: 64, offset: 1280)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!214, !651, !775, !239}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !777, line: 68, size: 512, align: 128, elements: !778)
!777 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!778 = !{!779, !780, !2427, !2434}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !776, file: !777, line: 69, baseType: !207, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !777, line: 77, baseType: !781, size: 320, offset: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !777, line: 77, size: 320, elements: !782)
!782 = !{!783, !964, !969, !997, !1005, !1011, !2358, !2426}
!783 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 78, baseType: !784, size: 320)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 78, size: 320, elements: !785)
!785 = !{!786, !787, !962, !963}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !784, file: !777, line: 84, baseType: !244, size: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !784, file: !777, line: 86, baseType: !788, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !77, line: 451, size: 1216, align: 64, elements: !790)
!790 = !{!791, !792, !799, !800, !801, !816, !832, !833, !834, !835, !955, !956, !959, !960, !961}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !789, file: !77, line: 452, baseType: !483, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !789, file: !77, line: 453, baseType: !793, size: 128, offset: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !794, line: 292, size: 128, elements: !795)
!794 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!795 = !{!796, !797, !798}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !793, file: !794, line: 293, baseType: !292)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !793, file: !794, line: 295, baseType: !239, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !793, file: !794, line: 296, baseType: !197, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !789, file: !77, line: 454, baseType: !239, size: 32, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !789, file: !77, line: 455, baseType: !209, size: 32, offset: 224)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !789, file: !77, line: 460, baseType: !802, size: 128, offset: 256)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !803, line: 125, size: 128, elements: !804)
!803 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!804 = !{!805, !815}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !802, file: !803, line: 126, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !803, line: 31, size: 64, elements: !807)
!807 = !{!808}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !806, file: !803, line: 32, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !803, line: 24, size: 192, align: 64, elements: !811)
!811 = !{!812, !813, !814}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !810, file: !803, line: 25, baseType: !207, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !810, file: !803, line: 26, baseType: !809, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !810, file: !803, line: 27, baseType: !809, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !802, file: !803, line: 127, baseType: !809, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !789, file: !77, line: 461, baseType: !817, size: 256, offset: 384)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !818, line: 35, size: 256, elements: !819)
!818 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!819 = !{!820, !828, !829, !831}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !817, file: !818, line: 36, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !822, line: 13, baseType: !823)
!822 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !210, line: 175, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 173, size: 64, elements: !825)
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !824, file: !210, line: 174, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !268, line: 22, baseType: !592)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !817, file: !818, line: 42, baseType: !821, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !817, file: !818, line: 46, baseType: !830, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !293, line: 29, baseType: !300)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !817, file: !818, line: 47, baseType: !244, size: 128, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !789, file: !77, line: 462, baseType: !207, size: 64, offset: 640)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !789, file: !77, line: 463, baseType: !207, size: 64, offset: 704)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !789, file: !77, line: 464, baseType: !207, size: 64, offset: 768)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !789, file: !77, line: 465, baseType: !836, size: 64, offset: 832)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !838)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !77, line: 367, size: 1408, elements: !839)
!839 = !{!840, !844, !848, !852, !856, !860, !866, !872, !876, !881, !885, !889, !893, !919, !923, !929, !930, !931, !935, !940, !944, !951}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !838, file: !77, line: 368, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!214, !775, !730}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !838, file: !77, line: 369, baseType: !845, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!214, !409, !775}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !838, file: !77, line: 372, baseType: !849, size: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!214, !788, !730}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !838, file: !77, line: 375, baseType: !853, size: 64, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!214, !775}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !838, file: !77, line: 381, baseType: !857, size: 64, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!214, !409, !788, !247, !7}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !838, file: !77, line: 383, baseType: !861, size: 64, offset: 320)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !864}
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !77, line: 290, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !838, file: !77, line: 385, baseType: !867, size: 64, offset: 384)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!214, !409, !788, !583, !7, !7, !870, !871}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !838, file: !77, line: 388, baseType: !873, size: 64, offset: 448)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!214, !409, !788, !583, !7, !7, !775, !197}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !838, file: !77, line: 393, baseType: !877, size: 64, offset: 512)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!880, !788, !880}
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !210, line: 125, baseType: !476)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !838, file: !77, line: 394, baseType: !882, size: 64, offset: 576)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !775, !7, !7}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !838, file: !77, line: 395, baseType: !886, size: 64, offset: 640)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!214, !775, !239}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !838, file: !77, line: 396, baseType: !890, size: 64, offset: 704)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !775}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !838, file: !77, line: 397, baseType: !894, size: 64, offset: 768)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!364, !897, !917}
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !77, line: 320, size: 384, elements: !899)
!899 = !{!900, !901, !902, !906, !907, !908, !909, !910}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !898, file: !77, line: 321, baseType: !409, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !898, file: !77, line: 326, baseType: !583, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !898, file: !77, line: 327, baseType: !903, size: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !897, !368, !368}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !898, file: !77, line: 328, baseType: !197, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !898, file: !77, line: 329, baseType: !214, size: 32, offset: 256)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !898, file: !77, line: 330, baseType: !267, size: 16, offset: 288)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !898, file: !77, line: 331, baseType: !267, size: 16, offset: 304)
!910 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !77, line: 332, baseType: !911, size: 64, offset: 320)
!911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !898, file: !77, line: 332, size: 64, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !911, file: !77, line: 333, baseType: !7, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !911, file: !77, line: 334, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !77, line: 334, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !77, line: 64, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !838, file: !77, line: 402, baseType: !920, size: 64, offset: 832)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!214, !788, !775, !775, !39}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !838, file: !77, line: 404, baseType: !924, size: 64, offset: 896)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!216, !775, !927}
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !928, line: 305, baseType: !7)
!928 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!929 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !838, file: !77, line: 405, baseType: !890, size: 64, offset: 960)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !838, file: !77, line: 406, baseType: !853, size: 64, offset: 1024)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !838, file: !77, line: 407, baseType: !932, size: 64, offset: 1088)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!214, !775, !207, !207}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !838, file: !77, line: 409, baseType: !936, size: 64, offset: 1152)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{null, !775, !939, !939}
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !838, file: !77, line: 410, baseType: !941, size: 64, offset: 1216)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!214, !788, !775}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !838, file: !77, line: 413, baseType: !945, size: 64, offset: 1280)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!214, !948, !409, !950}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !77, line: 61, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !838, file: !77, line: 415, baseType: !952, size: 64, offset: 1344)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{null, !409}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !789, file: !77, line: 466, baseType: !207, size: 64, offset: 896)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !789, file: !77, line: 467, baseType: !957, size: 32, offset: 960)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !958, line: 8, baseType: !472)
!958 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!959 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !789, file: !77, line: 468, baseType: !292, offset: 992)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !789, file: !77, line: 469, baseType: !244, size: 128, offset: 1024)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !789, file: !77, line: 470, baseType: !197, size: 64, offset: 1152)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !784, file: !777, line: 87, baseType: !207, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !784, file: !777, line: 94, baseType: !207, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 96, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 96, size: 64, elements: !966)
!966 = !{!967}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !965, file: !777, line: 101, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !210, line: 143, baseType: !476)
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 103, baseType: !970, size: 320)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 103, size: 320, elements: !971)
!971 = !{!972, !982, !985, !986}
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !777, line: 104, baseType: !973, size: 128)
!973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !970, file: !777, line: 104, size: 128, elements: !974)
!974 = !{!975, !976}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !973, file: !777, line: 105, baseType: !244, size: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !973, file: !777, line: 106, baseType: !977, size: 128)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !973, file: !777, line: 106, size: 128, elements: !978)
!978 = !{!979, !980, !981}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !977, file: !777, line: 107, baseType: !775, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !977, file: !777, line: 109, baseType: !214, size: 32, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !977, file: !777, line: 110, baseType: !214, size: 32, offset: 96)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !970, file: !777, line: 117, baseType: !983, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !777, line: 117, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !970, file: !777, line: 119, baseType: !197, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !777, line: 120, baseType: !987, size: 64, offset: 256)
!987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !970, file: !777, line: 120, size: 64, elements: !988)
!988 = !{!989, !990, !991}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !987, file: !777, line: 121, baseType: !197, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !987, file: !777, line: 122, baseType: !207, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !987, file: !777, line: 123, baseType: !992, size: 32)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !987, file: !777, line: 123, size: 32, elements: !993)
!993 = !{!994, !995, !996}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !992, file: !777, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !992, file: !777, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !992, file: !777, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 130, baseType: !998, size: 192)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 130, size: 192, elements: !999)
!999 = !{!1000, !1001, !1002, !1003, !1004}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !998, file: !777, line: 131, baseType: !207, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !998, file: !777, line: 134, baseType: !262, size: 8, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !998, file: !777, line: 135, baseType: !262, size: 8, offset: 72)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !998, file: !777, line: 136, baseType: !209, size: 32, offset: 96)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !998, file: !777, line: 137, baseType: !7, size: 32, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 139, baseType: !1006, size: 256)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 139, size: 256, elements: !1007)
!1007 = !{!1008, !1009, !1010}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1006, file: !777, line: 140, baseType: !207, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1006, file: !777, line: 141, baseType: !209, size: 32, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1006, file: !777, line: 143, baseType: !244, size: 128, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 145, baseType: !1012, size: 256)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 145, size: 256, elements: !1013)
!1013 = !{!1014, !1015, !1017, !1018, !2357}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1012, file: !777, line: 146, baseType: !207, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1012, file: !777, line: 147, baseType: !1016, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !767, line: 509, baseType: !775)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1012, file: !777, line: 148, baseType: !207, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !1012, file: !777, line: 149, baseType: !1019, size: 64, offset: 192)
!1019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1012, file: !777, line: 149, size: 64, elements: !1020)
!1020 = !{!1021, !2356}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1019, file: !777, line: 150, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !777, line: 388, size: 7296, elements: !1024)
!1024 = !{!1025, !2352}
!1025 = !DIDerivedType(tag: DW_TAG_member, scope: !1023, file: !777, line: 389, baseType: !1026, size: 7296)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1023, file: !777, line: 389, size: 7296, elements: !1027)
!1027 = !{!1028, !1146, !1147, !1148, !1152, !1153, !1154, !1155, !1156, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1197, !1205, !1208, !1238, !1239, !2336, !2337, !2340, !2341, !2342, !2345, !2346, !2347, !2350, !2351}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1026, file: !777, line: 390, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !777, line: 305, size: 1472, elements: !1031)
!1031 = !{!1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1046, !1047, !1052, !1053, !1056, !1140, !1141, !1142, !1143, !1144}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1030, file: !777, line: 308, baseType: !207, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1030, file: !777, line: 309, baseType: !207, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1030, file: !777, line: 313, baseType: !1029, size: 64, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1030, file: !777, line: 313, baseType: !1029, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1030, file: !777, line: 315, baseType: !810, size: 192, align: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1030, file: !777, line: 323, baseType: !207, size: 64, offset: 448)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1030, file: !777, line: 327, baseType: !1022, size: 64, offset: 512)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1030, file: !777, line: 333, baseType: !1040, size: 64, offset: 576)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !767, line: 284, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !767, line: 284, size: 64, elements: !1042)
!1042 = !{!1043}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1041, file: !767, line: 284, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1045, line: 19, baseType: !207)
!1045 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1030, file: !777, line: 334, baseType: !207, size: 64, offset: 640)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1030, file: !777, line: 343, baseType: !1048, size: 256, offset: 704)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1030, file: !777, line: 340, size: 256, elements: !1049)
!1049 = !{!1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1048, file: !777, line: 341, baseType: !810, size: 192, align: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1048, file: !777, line: 342, baseType: !207, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1030, file: !777, line: 351, baseType: !244, size: 128, offset: 960)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1030, file: !777, line: 353, baseType: !1054, size: 64, offset: 1088)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !777, line: 353, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1030, file: !777, line: 356, baseType: !1057, size: 64, offset: 1152)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !47, line: 557, size: 832, elements: !1060)
!1060 = !{!1061, !1065, !1066, !1070, !1074, !1114, !1118, !1122, !1126, !1127, !1128, !1132, !1136}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1059, file: !47, line: 558, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !1029}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1059, file: !47, line: 559, baseType: !1062, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1059, file: !47, line: 560, baseType: !1067, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!214, !1029, !207}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1059, file: !47, line: 561, baseType: !1071, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!214, !1029}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1059, file: !47, line: 562, baseType: !1075, size: 64, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!1078, !1079}
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !777, line: 682, baseType: !7)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !47, line: 508, size: 768, elements: !1081)
!1081 = !{!1082, !1083, !1084, !1085, !1086, !1087, !1094, !1101, !1107, !1108, !1109, !1111, !1113}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1080, file: !47, line: 509, baseType: !1029, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1080, file: !47, line: 510, baseType: !7, size: 32, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1080, file: !47, line: 511, baseType: !239, size: 32, offset: 96)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1080, file: !47, line: 512, baseType: !207, size: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1080, file: !47, line: 513, baseType: !207, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1080, file: !47, line: 514, baseType: !1088, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !767, line: 385, baseType: !1090)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !767, line: 385, size: 64, elements: !1091)
!1091 = !{!1092}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1090, file: !767, line: 385, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1045, line: 15, baseType: !207)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1080, file: !47, line: 516, baseType: !1095, size: 64, offset: 320)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !767, line: 359, baseType: !1097)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !767, line: 359, size: 64, elements: !1098)
!1098 = !{!1099}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1097, file: !767, line: 359, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1045, line: 16, baseType: !207)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1080, file: !47, line: 519, baseType: !1102, size: 64, offset: 384)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1045, line: 21, baseType: !1103)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1045, line: 21, size: 64, elements: !1104)
!1104 = !{!1105}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1103, file: !1045, line: 21, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1045, line: 14, baseType: !207)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1080, file: !47, line: 521, baseType: !775, size: 64, offset: 448)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1080, file: !47, line: 522, baseType: !775, size: 64, offset: 512)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1080, file: !47, line: 528, baseType: !1110, size: 64, offset: 576)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1080, file: !47, line: 532, baseType: !1112, size: 64, offset: 640)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1080, file: !47, line: 536, baseType: !1016, size: 64, offset: 704)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1059, file: !47, line: 563, baseType: !1115, size: 64, offset: 320)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!1078, !1079, !46}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1059, file: !47, line: 565, baseType: !1119, size: 64, offset: 384)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null, !1079, !207, !207}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1059, file: !47, line: 567, baseType: !1123, size: 64, offset: 448)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!207, !1029}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1059, file: !47, line: 571, baseType: !1075, size: 64, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1059, file: !47, line: 574, baseType: !1075, size: 64, offset: 576)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1059, file: !47, line: 579, baseType: !1129, size: 64, offset: 640)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!214, !1029, !207, !197, !214, !214}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1059, file: !47, line: 585, baseType: !1133, size: 64, offset: 704)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!280, !1029}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1059, file: !47, line: 615, baseType: !1137, size: 64, offset: 768)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!775, !1029, !207}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1030, file: !777, line: 359, baseType: !207, size: 64, offset: 1216)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1030, file: !777, line: 361, baseType: !409, size: 64, offset: 1280)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1030, file: !777, line: 362, baseType: !197, size: 64, offset: 1344)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1030, file: !777, line: 365, baseType: !821, size: 64, offset: 1408)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1030, file: !777, line: 373, baseType: !1145, offset: 1472)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !777, line: 296, elements: !306)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1026, file: !777, line: 391, baseType: !806, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1026, file: !777, line: 392, baseType: !476, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1026, file: !777, line: 394, baseType: !1149, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!207, !409, !207, !207, !207, !207}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1026, file: !777, line: 398, baseType: !207, size: 64, offset: 256)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1026, file: !777, line: 399, baseType: !207, size: 64, offset: 320)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1026, file: !777, line: 405, baseType: !207, size: 64, offset: 384)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1026, file: !777, line: 406, baseType: !207, size: 64, offset: 448)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1026, file: !777, line: 407, baseType: !1157, size: 64, offset: 512)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !767, line: 286, baseType: !1159)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !767, line: 286, size: 64, elements: !1160)
!1160 = !{!1161}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1159, file: !767, line: 286, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1045, line: 18, baseType: !207)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1026, file: !777, line: 416, baseType: !209, size: 32, offset: 576)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1026, file: !777, line: 428, baseType: !209, size: 32, offset: 608)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1026, file: !777, line: 437, baseType: !209, size: 32, offset: 640)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1026, file: !777, line: 447, baseType: !209, size: 32, offset: 672)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1026, file: !777, line: 450, baseType: !821, size: 64, offset: 704)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1026, file: !777, line: 452, baseType: !214, size: 32, offset: 768)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1026, file: !777, line: 454, baseType: !292, offset: 800)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1026, file: !777, line: 457, baseType: !817, size: 256, offset: 832)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1026, file: !777, line: 459, baseType: !244, size: 128, offset: 1088)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1026, file: !777, line: 466, baseType: !207, size: 64, offset: 1216)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1026, file: !777, line: 467, baseType: !207, size: 64, offset: 1280)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1026, file: !777, line: 469, baseType: !207, size: 64, offset: 1344)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1026, file: !777, line: 470, baseType: !207, size: 64, offset: 1408)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1026, file: !777, line: 471, baseType: !823, size: 64, offset: 1472)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1026, file: !777, line: 472, baseType: !207, size: 64, offset: 1536)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1026, file: !777, line: 473, baseType: !207, size: 64, offset: 1600)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1026, file: !777, line: 474, baseType: !207, size: 64, offset: 1664)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1026, file: !777, line: 475, baseType: !207, size: 64, offset: 1728)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1026, file: !777, line: 477, baseType: !292, offset: 1792)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1026, file: !777, line: 478, baseType: !207, size: 64, offset: 1792)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1026, file: !777, line: 478, baseType: !207, size: 64, offset: 1856)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1026, file: !777, line: 478, baseType: !207, size: 64, offset: 1920)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1026, file: !777, line: 478, baseType: !207, size: 64, offset: 1984)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1026, file: !777, line: 479, baseType: !207, size: 64, offset: 2048)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1026, file: !777, line: 479, baseType: !207, size: 64, offset: 2112)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1026, file: !777, line: 479, baseType: !207, size: 64, offset: 2176)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1026, file: !777, line: 480, baseType: !207, size: 64, offset: 2240)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1026, file: !777, line: 480, baseType: !207, size: 64, offset: 2304)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1026, file: !777, line: 480, baseType: !207, size: 64, offset: 2368)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1026, file: !777, line: 480, baseType: !207, size: 64, offset: 2432)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1026, file: !777, line: 482, baseType: !1194, size: 2816, offset: 2496)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 2816, elements: !1195)
!1195 = !{!1196}
!1196 = !DISubrange(count: 44)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1026, file: !777, line: 488, baseType: !1198, size: 256, offset: 5312)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1199, line: 60, size: 256, elements: !1200)
!1199 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1200 = !{!1201}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1198, file: !1199, line: 61, baseType: !1202, size: 256)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !821, size: 256, elements: !1203)
!1203 = !{!1204}
!1204 = !DISubrange(count: 4)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1026, file: !777, line: 490, baseType: !1206, size: 64, offset: 5568)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !777, line: 490, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1026, file: !777, line: 493, baseType: !1209, size: 896, offset: 5632)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1210, line: 53, baseType: !1211)
!1210 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1210, line: 13, size: 896, elements: !1212)
!1212 = !{!1213, !1214, !1215, !1216, !1219, !1220, !1227, !1228, !1232, !1233, !1234}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1211, file: !1210, line: 18, baseType: !476, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1211, file: !1210, line: 28, baseType: !823, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1211, file: !1210, line: 31, baseType: !817, size: 256, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1211, file: !1210, line: 32, baseType: !1217, size: 64, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1210, line: 32, flags: DIFlagFwdDecl)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1211, file: !1210, line: 37, baseType: !270, size: 16, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1211, file: !1210, line: 40, baseType: !1221, size: 192, offset: 512)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1222, line: 53, size: 192, elements: !1223)
!1222 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1223 = !{!1224, !1225, !1226}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1221, file: !1222, line: 54, baseType: !821, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1221, file: !1222, line: 55, baseType: !292, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1221, file: !1222, line: 59, baseType: !244, size: 128, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1211, file: !1210, line: 41, baseType: !197, size: 64, offset: 704)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1211, file: !1210, line: 42, baseType: !1229, size: 64, offset: 768)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1231)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1210, line: 42, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1211, file: !1210, line: 44, baseType: !209, size: 32, offset: 832)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1211, file: !1210, line: 50, baseType: !267, size: 16, offset: 864)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1211, file: !1210, line: 51, baseType: !1235, size: 16, offset: 880)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !268, line: 18, baseType: !1236)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !261, line: 23, baseType: !1237)
!1237 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1026, file: !777, line: 495, baseType: !207, size: 64, offset: 6528)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1026, file: !777, line: 497, baseType: !1240, size: 64, offset: 6592)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !777, line: 381, size: 384, elements: !1242)
!1242 = !{!1243, !1244, !2335}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1241, file: !777, line: 382, baseType: !209, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1241, file: !777, line: 383, baseType: !1245, size: 128, offset: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !777, line: 376, size: 128, elements: !1246)
!1246 = !{!1247, !2333}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1245, file: !777, line: 377, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1250, line: 640, size: 48640, elements: !1251)
!1250 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1251 = !{!1252, !1258, !1260, !1261, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1278, !1296, !1307, !1391, !1392, !1393, !1397, !1398, !1400, !1401, !1402, !1403, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1482, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1520, !1522, !1523, !1524, !1536, !1537, !1538, !1539, !1540, !1541, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1565, !1570, !1754, !1755, !1756, !1757, !1759, !1762, !1765, !1768, !1771, !1774, !1875, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1921, !1922, !1923, !1924, !1925, !1930, !1931, !1932, !1935, !1936, !1939, !1942, !1945, !1948, !1991, !1994, !1995, !2074, !2075, !2078, !2079, !2082, !2083, !2084, !2088, !2089, !2090, !2103, !2104, !2105, !2115, !2120, !2123, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1249, file: !1250, line: 646, baseType: !1253, size: 128)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1254, line: 56, size: 128, elements: !1255)
!1254 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1255 = !{!1256, !1257}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1253, file: !1254, line: 57, baseType: !207, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1253, file: !1254, line: 58, baseType: !472, size: 32, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1249, file: !1250, line: 649, baseType: !1259, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !368)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1249, file: !1250, line: 657, baseType: !197, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1249, file: !1250, line: 658, baseType: !1262, size: 32, offset: 256)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1263, line: 113, baseType: !1264)
!1263 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1263, line: 111, size: 32, elements: !1265)
!1265 = !{!1266}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1264, file: !1263, line: 112, baseType: !209, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1249, file: !1250, line: 660, baseType: !7, size: 32, offset: 288)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1249, file: !1250, line: 661, baseType: !7, size: 32, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1249, file: !1250, line: 684, baseType: !214, size: 32, offset: 352)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1249, file: !1250, line: 686, baseType: !214, size: 32, offset: 384)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1249, file: !1250, line: 687, baseType: !214, size: 32, offset: 416)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1249, file: !1250, line: 688, baseType: !214, size: 32, offset: 448)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1249, file: !1250, line: 689, baseType: !7, size: 32, offset: 480)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1249, file: !1250, line: 691, baseType: !1275, size: 64, offset: 512)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1277)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1250, line: 691, flags: DIFlagFwdDecl)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1249, file: !1250, line: 692, baseType: !1279, size: 832, offset: 576)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1250, line: 451, size: 832, elements: !1280)
!1280 = !{!1281, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1279, file: !1250, line: 453, baseType: !1282, size: 128)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1250, line: 325, size: 128, elements: !1283)
!1283 = !{!1284, !1285}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1282, file: !1250, line: 326, baseType: !207, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1282, file: !1250, line: 327, baseType: !472, size: 32, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1279, file: !1250, line: 454, baseType: !810, size: 192, align: 64, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1279, file: !1250, line: 455, baseType: !244, size: 128, offset: 320)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1279, file: !1250, line: 456, baseType: !7, size: 32, offset: 448)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1279, file: !1250, line: 458, baseType: !476, size: 64, offset: 512)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1279, file: !1250, line: 459, baseType: !476, size: 64, offset: 576)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1279, file: !1250, line: 460, baseType: !476, size: 64, offset: 640)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1279, file: !1250, line: 461, baseType: !476, size: 64, offset: 704)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1279, file: !1250, line: 463, baseType: !476, size: 64, offset: 768)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1279, file: !1250, line: 465, baseType: !1295, offset: 832)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1250, line: 415, elements: !306)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1249, file: !1250, line: 693, baseType: !1297, size: 384, offset: 1408)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1250, line: 489, size: 384, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1302, !1303, !1304, !1305}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1297, file: !1250, line: 490, baseType: !244, size: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1297, file: !1250, line: 491, baseType: !207, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1297, file: !1250, line: 492, baseType: !207, size: 64, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1297, file: !1250, line: 493, baseType: !7, size: 32, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1297, file: !1250, line: 494, baseType: !270, size: 16, offset: 288)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1297, file: !1250, line: 495, baseType: !270, size: 16, offset: 304)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1297, file: !1250, line: 497, baseType: !1306, size: 64, offset: 320)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1249, file: !1250, line: 697, baseType: !1308, size: 1792, offset: 1792)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1250, line: 507, size: 1792, elements: !1309)
!1309 = !{!1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1388, !1389}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1308, file: !1250, line: 508, baseType: !810, size: 192, align: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1308, file: !1250, line: 515, baseType: !476, size: 64, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1308, file: !1250, line: 516, baseType: !476, size: 64, offset: 256)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1308, file: !1250, line: 517, baseType: !476, size: 64, offset: 320)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1308, file: !1250, line: 518, baseType: !476, size: 64, offset: 384)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1308, file: !1250, line: 519, baseType: !476, size: 64, offset: 448)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1308, file: !1250, line: 526, baseType: !827, size: 64, offset: 512)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1308, file: !1250, line: 527, baseType: !476, size: 64, offset: 576)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1308, file: !1250, line: 528, baseType: !7, size: 32, offset: 640)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1308, file: !1250, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1308, file: !1250, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1308, file: !1250, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1308, file: !1250, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1308, file: !1250, line: 563, baseType: !1324, size: 512, offset: 704)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !53, line: 118, size: 512, elements: !1325)
!1325 = !{!1326, !1334, !1335, !1340, !1383, !1385, !1386, !1387}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1324, file: !53, line: 119, baseType: !1327, size: 256)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1328, line: 9, size: 256, elements: !1329)
!1328 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1327, file: !1328, line: 10, baseType: !810, size: 192, align: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1327, file: !1328, line: 11, baseType: !1332, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1333, line: 29, baseType: !827)
!1333 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1324, file: !53, line: 120, baseType: !1332, size: 64, offset: 256)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1324, file: !53, line: 121, baseType: !1336, size: 64, offset: 320)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!52, !1339}
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1324, file: !53, line: 122, baseType: !1341, size: 64, offset: 384)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !53, line: 159, size: 512, align: 512, elements: !1343)
!1343 = !{!1344, !1364, !1365, !1368, !1373, !1374, !1378, !1382}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1342, file: !53, line: 160, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !53, line: 214, size: 4608, align: 512, elements: !1347)
!1347 = !{!1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1346, file: !53, line: 215, baseType: !830)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1346, file: !53, line: 216, baseType: !7, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1346, file: !53, line: 217, baseType: !7, size: 32, offset: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1346, file: !53, line: 218, baseType: !7, size: 32, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1346, file: !53, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1346, file: !53, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1346, file: !53, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1346, file: !53, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1346, file: !53, line: 233, baseType: !1332, size: 64, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1346, file: !53, line: 234, baseType: !1339, size: 64, offset: 192)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1346, file: !53, line: 235, baseType: !1332, size: 64, offset: 256)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1346, file: !53, line: 236, baseType: !1339, size: 64, offset: 320)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1346, file: !53, line: 237, baseType: !1361, size: 4096, offset: 512)
!1361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1342, size: 4096, elements: !1362)
!1362 = !{!1363}
!1363 = !DISubrange(count: 8)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1342, file: !53, line: 161, baseType: !7, size: 32, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1342, file: !53, line: 162, baseType: !1366, size: 32, offset: 96)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !210, line: 27, baseType: !1367)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !366, line: 96, baseType: !214)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1342, file: !53, line: 163, baseType: !1369, size: 32, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !445, line: 276, baseType: !1370)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !445, line: 276, size: 32, elements: !1371)
!1371 = !{!1372}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1370, file: !445, line: 276, baseType: !449, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1342, file: !53, line: 164, baseType: !1339, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1342, file: !53, line: 165, baseType: !1375, size: 128, offset: 256)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1328, line: 14, size: 128, elements: !1376)
!1376 = !{!1377}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1375, file: !1328, line: 15, baseType: !802, size: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1342, file: !53, line: 166, baseType: !1379, size: 64, offset: 384)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!1332}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1342, file: !53, line: 167, baseType: !1332, size: 64, offset: 448)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1324, file: !53, line: 123, baseType: !1384, size: 8, offset: 448)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !268, line: 17, baseType: !260)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1324, file: !53, line: 124, baseType: !1384, size: 8, offset: 456)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1324, file: !53, line: 125, baseType: !1384, size: 8, offset: 464)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1324, file: !53, line: 126, baseType: !1384, size: 8, offset: 472)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1308, file: !1250, line: 572, baseType: !1324, size: 512, offset: 1216)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1308, file: !1250, line: 580, baseType: !1390, size: 64, offset: 1728)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1249, file: !1250, line: 721, baseType: !7, size: 32, offset: 3584)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1249, file: !1250, line: 722, baseType: !214, size: 32, offset: 3616)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1249, file: !1250, line: 723, baseType: !1394, size: 64, offset: 3648)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1396)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !233, line: 17, baseType: !232)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1249, file: !1250, line: 724, baseType: !1396, size: 64, offset: 3712)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1249, file: !1250, line: 749, baseType: !1399, offset: 3776)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1250, line: 290, elements: !306)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1249, file: !1250, line: 751, baseType: !244, size: 128, offset: 3776)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1249, file: !1250, line: 757, baseType: !1022, size: 64, offset: 3904)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1249, file: !1250, line: 758, baseType: !1022, size: 64, offset: 3968)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1249, file: !1250, line: 761, baseType: !1404, size: 320, offset: 4032)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1199, line: 34, size: 320, elements: !1405)
!1405 = !{!1406, !1407}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1404, file: !1199, line: 35, baseType: !476, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1404, file: !1199, line: 36, baseType: !1408, size: 256, offset: 64)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1029, size: 256, elements: !1203)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1249, file: !1250, line: 766, baseType: !214, size: 32, offset: 4352)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1249, file: !1250, line: 767, baseType: !214, size: 32, offset: 4384)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1249, file: !1250, line: 768, baseType: !214, size: 32, offset: 4416)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1249, file: !1250, line: 770, baseType: !214, size: 32, offset: 4448)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1249, file: !1250, line: 772, baseType: !207, size: 64, offset: 4480)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1249, file: !1250, line: 775, baseType: !7, size: 32, offset: 4544)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1249, file: !1250, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1249, file: !1250, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1249, file: !1250, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1249, file: !1250, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1249, file: !1250, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1249, file: !1250, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1249, file: !1250, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1249, file: !1250, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1249, file: !1250, line: 831, baseType: !207, size: 64, offset: 4672)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1249, file: !1250, line: 833, baseType: !1425, size: 384, offset: 4736)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !58, line: 25, size: 384, elements: !1426)
!1426 = !{!1427, !1432}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1425, file: !58, line: 26, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!368, !1431}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, scope: !1425, file: !58, line: 27, baseType: !1433, size: 320, offset: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1425, file: !58, line: 27, size: 320, elements: !1434)
!1434 = !{!1435, !1445, !1472}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1433, file: !58, line: 36, baseType: !1436, size: 320)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1433, file: !58, line: 29, size: 320, elements: !1437)
!1437 = !{!1438, !1440, !1441, !1442, !1443, !1444}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1436, file: !58, line: 30, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1436, file: !58, line: 31, baseType: !472, size: 32, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1436, file: !58, line: 32, baseType: !472, size: 32, offset: 96)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1436, file: !58, line: 33, baseType: !472, size: 32, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1436, file: !58, line: 34, baseType: !476, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1436, file: !58, line: 35, baseType: !1439, size: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1433, file: !58, line: 46, baseType: !1446, size: 192)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1433, file: !58, line: 38, size: 192, elements: !1447)
!1447 = !{!1448, !1449, !1450, !1471}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1446, file: !58, line: 39, baseType: !1366, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1446, file: !58, line: 40, baseType: !57, size: 32, offset: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !58, line: 41, baseType: !1451, size: 64, offset: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !58, line: 41, size: 64, elements: !1452)
!1452 = !{!1453, !1461}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1451, file: !58, line: 42, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1456, line: 7, size: 128, elements: !1457)
!1456 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1457 = !{!1458, !1460}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1455, file: !1456, line: 8, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !366, line: 93, baseType: !585)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1455, file: !1456, line: 9, baseType: !585, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1451, file: !58, line: 43, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1464, line: 7, size: 64, elements: !1465)
!1464 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1465 = !{!1466, !1470}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1463, file: !1464, line: 8, baseType: !1467, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1464, line: 5, baseType: !1468)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !268, line: 20, baseType: !1469)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !261, line: 26, baseType: !214)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1463, file: !1464, line: 9, baseType: !1468, size: 32, offset: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1446, file: !58, line: 45, baseType: !476, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1433, file: !58, line: 54, baseType: !1473, size: 256)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1433, file: !58, line: 48, size: 256, elements: !1474)
!1474 = !{!1475, !1478, !1479, !1480, !1481}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1473, file: !58, line: 49, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !58, line: 14, flags: DIFlagFwdDecl)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1473, file: !58, line: 50, baseType: !214, size: 32, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1473, file: !58, line: 51, baseType: !214, size: 32, offset: 96)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1473, file: !58, line: 52, baseType: !207, size: 64, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1473, file: !58, line: 53, baseType: !207, size: 64, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1249, file: !1250, line: 835, baseType: !1483, size: 32, offset: 5120)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !210, line: 22, baseType: !1484)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !366, line: 28, baseType: !214)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1249, file: !1250, line: 836, baseType: !1483, size: 32, offset: 5152)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1249, file: !1250, line: 840, baseType: !207, size: 64, offset: 5184)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1249, file: !1250, line: 849, baseType: !1248, size: 64, offset: 5248)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1249, file: !1250, line: 852, baseType: !1248, size: 64, offset: 5312)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1249, file: !1250, line: 857, baseType: !244, size: 128, offset: 5376)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1249, file: !1250, line: 858, baseType: !244, size: 128, offset: 5504)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1249, file: !1250, line: 859, baseType: !1248, size: 64, offset: 5632)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1249, file: !1250, line: 867, baseType: !244, size: 128, offset: 5696)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1249, file: !1250, line: 868, baseType: !244, size: 128, offset: 5824)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1249, file: !1250, line: 871, baseType: !1495, size: 64, offset: 5952)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !86, line: 59, size: 768, elements: !1497)
!1497 = !{!1498, !1499, !1500, !1501, !1503, !1504, !1511, !1512}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1496, file: !86, line: 61, baseType: !1262, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1496, file: !86, line: 62, baseType: !7, size: 32, offset: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1496, file: !86, line: 63, baseType: !292, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1496, file: !86, line: 65, baseType: !1502, size: 256, offset: 64)
!1502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 256, elements: !1203)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1496, file: !86, line: 66, baseType: !689, size: 64, offset: 320)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1496, file: !86, line: 68, baseType: !1505, size: 128, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1506, line: 40, baseType: !1507)
!1506 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1506, line: 36, size: 128, elements: !1508)
!1508 = !{!1509, !1510}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1507, file: !1506, line: 37, baseType: !292)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1507, file: !1506, line: 38, baseType: !244, size: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1496, file: !86, line: 69, baseType: !422, size: 128, align: 64, offset: 512)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1496, file: !86, line: 70, baseType: !1513, size: 128, offset: 640)
!1513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1514, size: 128, elements: !237)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !86, line: 54, size: 128, elements: !1515)
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1514, file: !86, line: 55, baseType: !214, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1514, file: !86, line: 56, baseType: !1518, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !86, line: 56, flags: DIFlagFwdDecl)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1249, file: !1250, line: 872, baseType: !1521, size: 512, offset: 6016)
!1521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 512, elements: !1203)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1249, file: !1250, line: 873, baseType: !244, size: 128, offset: 6528)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1249, file: !1250, line: 874, baseType: !244, size: 128, offset: 6656)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1249, file: !1250, line: 876, baseType: !1525, size: 64, offset: 6784)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1527, line: 26, size: 192, elements: !1528)
!1527 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1528 = !{!1529, !1530}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1526, file: !1527, line: 27, baseType: !7, size: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1526, file: !1527, line: 28, baseType: !1531, size: 128, offset: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1532, line: 43, size: 128, elements: !1533)
!1532 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1533 = !{!1534, !1535}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1531, file: !1532, line: 44, baseType: !830)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1531, file: !1532, line: 45, baseType: !244, size: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1249, file: !1250, line: 879, baseType: !759, size: 64, offset: 6848)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1249, file: !1250, line: 882, baseType: !759, size: 64, offset: 6912)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1249, file: !1250, line: 884, baseType: !476, size: 64, offset: 6976)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1249, file: !1250, line: 885, baseType: !476, size: 64, offset: 7040)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1249, file: !1250, line: 890, baseType: !476, size: 64, offset: 7104)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1249, file: !1250, line: 891, baseType: !1542, size: 128, offset: 7168)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1250, line: 242, size: 128, elements: !1543)
!1543 = !{!1544, !1545, !1546}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1542, file: !1250, line: 244, baseType: !476, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1542, file: !1250, line: 245, baseType: !476, size: 64, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1542, file: !1250, line: 246, baseType: !830, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1249, file: !1250, line: 900, baseType: !207, size: 64, offset: 7296)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1249, file: !1250, line: 901, baseType: !207, size: 64, offset: 7360)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1249, file: !1250, line: 904, baseType: !476, size: 64, offset: 7424)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1249, file: !1250, line: 907, baseType: !476, size: 64, offset: 7488)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1249, file: !1250, line: 910, baseType: !207, size: 64, offset: 7552)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1249, file: !1250, line: 911, baseType: !207, size: 64, offset: 7616)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1249, file: !1250, line: 914, baseType: !1554, size: 640, offset: 7680)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1555, line: 123, size: 640, elements: !1556)
!1555 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1556 = !{!1557, !1563, !1564}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1554, file: !1555, line: 124, baseType: !1558, size: 576)
!1558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1559, size: 576, elements: !334)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1555, line: 108, size: 192, elements: !1560)
!1560 = !{!1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1559, file: !1555, line: 109, baseType: !476, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1559, file: !1555, line: 110, baseType: !1375, size: 128, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1554, file: !1555, line: 125, baseType: !7, size: 32, offset: 576)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1554, file: !1555, line: 126, baseType: !7, size: 32, offset: 608)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1249, file: !1250, line: 917, baseType: !1566, size: 192, offset: 8320)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1555, line: 134, size: 192, elements: !1567)
!1567 = !{!1568, !1569}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1566, file: !1555, line: 135, baseType: !422, size: 128, align: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1566, file: !1555, line: 136, baseType: !7, size: 32, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1249, file: !1250, line: 923, baseType: !1571, size: 64, offset: 8512)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1573)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1574, line: 111, size: 1280, elements: !1575)
!1574 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1575 = !{!1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1595, !1596, !1597, !1598, !1599, !1600, !1707, !1708, !1709, !1710, !1736, !1739, !1749}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1573, file: !1574, line: 112, baseType: !209, size: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1573, file: !1574, line: 120, baseType: !489, size: 32, offset: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1573, file: !1574, line: 121, baseType: !497, size: 32, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1573, file: !1574, line: 122, baseType: !489, size: 32, offset: 96)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1573, file: !1574, line: 123, baseType: !497, size: 32, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1573, file: !1574, line: 124, baseType: !489, size: 32, offset: 160)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1573, file: !1574, line: 125, baseType: !497, size: 32, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1573, file: !1574, line: 126, baseType: !489, size: 32, offset: 224)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1573, file: !1574, line: 127, baseType: !497, size: 32, offset: 256)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1573, file: !1574, line: 128, baseType: !7, size: 32, offset: 288)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1573, file: !1574, line: 129, baseType: !1587, size: 64, offset: 320)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1588, line: 26, baseType: !1589)
!1588 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1588, line: 24, size: 64, elements: !1590)
!1590 = !{!1591}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1589, file: !1588, line: 25, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 64, elements: !1593)
!1593 = !{!1594}
!1594 = !DISubrange(count: 2)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1573, file: !1574, line: 130, baseType: !1587, size: 64, offset: 384)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1573, file: !1574, line: 131, baseType: !1587, size: 64, offset: 448)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1573, file: !1574, line: 132, baseType: !1587, size: 64, offset: 512)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1573, file: !1574, line: 133, baseType: !1587, size: 64, offset: 576)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1573, file: !1574, line: 135, baseType: !262, size: 8, offset: 640)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1573, file: !1574, line: 137, baseType: !1601, size: 64, offset: 704)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1603, line: 189, size: 1664, elements: !1604)
!1603 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1604 = !{!1605, !1606, !1609, !1614, !1615, !1618, !1619, !1624, !1625, !1626, !1627, !1629, !1630, !1631, !1632, !1633, !1671, !1692}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1602, file: !1603, line: 190, baseType: !1262, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1602, file: !1603, line: 191, baseType: !1607, size: 32, offset: 32)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1603, line: 28, baseType: !1608)
!1608 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !210, line: 98, baseType: !1468)
!1609 = !DIDerivedType(tag: DW_TAG_member, scope: !1602, file: !1603, line: 192, baseType: !1610, size: 192, offset: 64)
!1610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1602, file: !1603, line: 192, size: 192, elements: !1611)
!1611 = !{!1612, !1613}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1610, file: !1603, line: 193, baseType: !244, size: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1610, file: !1603, line: 194, baseType: !810, size: 192, align: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1602, file: !1603, line: 199, baseType: !817, size: 256, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1602, file: !1603, line: 200, baseType: !1616, size: 64, offset: 512)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1603, line: 200, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1602, file: !1603, line: 201, baseType: !197, size: 64, offset: 576)
!1619 = !DIDerivedType(tag: DW_TAG_member, scope: !1602, file: !1603, line: 202, baseType: !1620, size: 64, offset: 640)
!1620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1602, file: !1603, line: 202, size: 64, elements: !1621)
!1621 = !{!1622, !1623}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1620, file: !1603, line: 203, baseType: !591, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1620, file: !1603, line: 204, baseType: !591, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1602, file: !1603, line: 206, baseType: !591, size: 64, offset: 704)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1602, file: !1603, line: 207, baseType: !489, size: 32, offset: 768)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1602, file: !1603, line: 208, baseType: !497, size: 32, offset: 800)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1602, file: !1603, line: 209, baseType: !1628, size: 32, offset: 832)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1603, line: 31, baseType: !611)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1602, file: !1603, line: 210, baseType: !270, size: 16, offset: 864)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1602, file: !1603, line: 211, baseType: !270, size: 16, offset: 880)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1602, file: !1603, line: 215, baseType: !1237, size: 16, offset: 896)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1602, file: !1603, line: 222, baseType: !207, size: 64, offset: 960)
!1633 = !DIDerivedType(tag: DW_TAG_member, scope: !1602, file: !1603, line: 239, baseType: !1634, size: 320, offset: 1024)
!1634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1602, file: !1603, line: 239, size: 320, elements: !1635)
!1635 = !{!1636, !1663}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1634, file: !1603, line: 240, baseType: !1637, size: 320)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1603, line: 108, size: 320, elements: !1638)
!1638 = !{!1639, !1640, !1652, !1655, !1662}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1637, file: !1603, line: 110, baseType: !207, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, scope: !1637, file: !1603, line: 111, baseType: !1641, size: 64, offset: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1637, file: !1603, line: 111, size: 64, elements: !1642)
!1642 = !{!1643, !1651}
!1643 = !DIDerivedType(tag: DW_TAG_member, scope: !1641, file: !1603, line: 112, baseType: !1644, size: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1641, file: !1603, line: 112, size: 64, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1644, file: !1603, line: 114, baseType: !267, size: 16)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1644, file: !1603, line: 115, baseType: !1648, size: 48, offset: 16)
!1648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 48, elements: !1649)
!1649 = !{!1650}
!1650 = !DISubrange(count: 6)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1641, file: !1603, line: 121, baseType: !207, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1637, file: !1603, line: 123, baseType: !1653, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1603, line: 96, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1637, file: !1603, line: 124, baseType: !1656, size: 64, offset: 192)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1603, line: 102, size: 192, elements: !1658)
!1658 = !{!1659, !1660, !1661}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1657, file: !1603, line: 103, baseType: !422, size: 128, align: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1657, file: !1603, line: 104, baseType: !1262, size: 32, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1657, file: !1603, line: 105, baseType: !216, size: 8, offset: 160)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1637, file: !1603, line: 125, baseType: !280, size: 64, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, scope: !1634, file: !1603, line: 241, baseType: !1664, size: 320)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1634, file: !1603, line: 241, size: 320, elements: !1665)
!1665 = !{!1666, !1667, !1668, !1669, !1670}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1664, file: !1603, line: 242, baseType: !207, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1664, file: !1603, line: 243, baseType: !207, size: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1664, file: !1603, line: 244, baseType: !1653, size: 64, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1664, file: !1603, line: 245, baseType: !1656, size: 64, offset: 192)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1664, file: !1603, line: 246, baseType: !333, size: 64, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1602, file: !1603, line: 254, baseType: !1672, size: 256, offset: 1344)
!1672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1602, file: !1603, line: 254, size: 256, elements: !1673)
!1673 = !{!1674, !1680}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1672, file: !1603, line: 255, baseType: !1675, size: 256)
!1675 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1603, line: 128, size: 256, elements: !1676)
!1676 = !{!1677, !1678}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1675, file: !1603, line: 129, baseType: !197, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1675, file: !1603, line: 130, baseType: !1679, size: 256)
!1679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 256, elements: !1203)
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1672, file: !1603, line: 256, baseType: !1681, size: 256)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1672, file: !1603, line: 256, size: 256, elements: !1682)
!1682 = !{!1683, !1684}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1681, file: !1603, line: 258, baseType: !244, size: 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1681, file: !1603, line: 259, baseType: !1685, size: 128, offset: 128)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1686, line: 22, size: 128, elements: !1687)
!1686 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1687 = !{!1688, !1691}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1685, file: !1686, line: 23, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1686, line: 23, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1685, file: !1686, line: 24, baseType: !207, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1602, file: !1603, line: 274, baseType: !1693, size: 64, offset: 1600)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1603, line: 170, size: 192, elements: !1695)
!1695 = !{!1696, !1705, !1706}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1694, file: !1603, line: 171, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1603, line: 165, baseType: !1698)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!214, !1601, !1701, !1703, !1601}
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1654)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1675)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1694, file: !1603, line: 172, baseType: !1601, size: 64, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1694, file: !1603, line: 173, baseType: !1653, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1573, file: !1574, line: 138, baseType: !1601, size: 64, offset: 768)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1573, file: !1574, line: 139, baseType: !1601, size: 64, offset: 832)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1573, file: !1574, line: 140, baseType: !1601, size: 64, offset: 896)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1573, file: !1574, line: 145, baseType: !1711, size: 64, offset: 960)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1713, line: 13, size: 896, elements: !1714)
!1713 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1714 = !{!1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1712, file: !1713, line: 14, baseType: !1262, size: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1712, file: !1713, line: 15, baseType: !209, size: 32, offset: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1712, file: !1713, line: 16, baseType: !209, size: 32, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1712, file: !1713, line: 21, baseType: !821, size: 64, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1712, file: !1713, line: 27, baseType: !207, size: 64, offset: 192)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1712, file: !1713, line: 28, baseType: !207, size: 64, offset: 256)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1712, file: !1713, line: 29, baseType: !821, size: 64, offset: 320)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1712, file: !1713, line: 32, baseType: !693, size: 128, offset: 384)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1712, file: !1713, line: 33, baseType: !489, size: 32, offset: 512)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1712, file: !1713, line: 37, baseType: !821, size: 64, offset: 576)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1712, file: !1713, line: 44, baseType: !1726, size: 256, offset: 640)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1727, line: 15, size: 256, elements: !1728)
!1727 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1728 = !{!1729, !1730, !1731, !1732, !1733, !1734, !1735}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1726, file: !1727, line: 16, baseType: !830)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1726, file: !1727, line: 18, baseType: !214, size: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1726, file: !1727, line: 19, baseType: !214, size: 32, offset: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1726, file: !1727, line: 20, baseType: !214, size: 32, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1726, file: !1727, line: 21, baseType: !214, size: 32, offset: 96)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1726, file: !1727, line: 22, baseType: !207, size: 64, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1726, file: !1727, line: 23, baseType: !207, size: 64, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1573, file: !1574, line: 146, baseType: !1737, size: 64, offset: 1024)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !777, line: 516, flags: DIFlagFwdDecl)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1573, file: !1574, line: 147, baseType: !1740, size: 64, offset: 1088)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1574, line: 25, size: 64, elements: !1742)
!1742 = !{!1743, !1744, !1745}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1741, file: !1574, line: 26, baseType: !209, size: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1741, file: !1574, line: 27, baseType: !214, size: 32, offset: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1741, file: !1574, line: 28, baseType: !1746, offset: 64)
!1746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !497, elements: !1747)
!1747 = !{!1748}
!1748 = !DISubrange(count: 0)
!1749 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !1574, line: 149, baseType: !1750, size: 128, offset: 1152)
!1750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1573, file: !1574, line: 149, size: 128, elements: !1751)
!1751 = !{!1752, !1753}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1750, file: !1574, line: 150, baseType: !214, size: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1750, file: !1574, line: 151, baseType: !422, size: 128, align: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1249, file: !1250, line: 926, baseType: !1571, size: 64, offset: 8576)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1249, file: !1250, line: 929, baseType: !1571, size: 64, offset: 8640)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1249, file: !1250, line: 933, baseType: !1601, size: 64, offset: 8704)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1249, file: !1250, line: 943, baseType: !1758, size: 128, offset: 8768)
!1758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 128, elements: !263)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1249, file: !1250, line: 945, baseType: !1760, size: 64, offset: 8896)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1250, line: 49, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1249, file: !1250, line: 956, baseType: !1763, size: 64, offset: 8960)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1250, line: 45, flags: DIFlagFwdDecl)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1249, file: !1250, line: 959, baseType: !1766, size: 64, offset: 9024)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1250, line: 959, flags: DIFlagFwdDecl)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1249, file: !1250, line: 962, baseType: !1769, size: 64, offset: 9088)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1250, line: 66, flags: DIFlagFwdDecl)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1249, file: !1250, line: 966, baseType: !1772, size: 64, offset: 9152)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1250, line: 50, flags: DIFlagFwdDecl)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1249, file: !1250, line: 969, baseType: !1775, size: 64, offset: 9216)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1777, line: 82, size: 7296, elements: !1778)
!1777 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1778 = !{!1779, !1780, !1781, !1782, !1783, !1784, !1785, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1814, !1823, !1824, !1826, !1827, !1828, !1831, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1861, !1862, !1869, !1870, !1871, !1872, !1873, !1874}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1776, file: !1777, line: 83, baseType: !1262, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1776, file: !1777, line: 84, baseType: !209, size: 32, offset: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1776, file: !1777, line: 85, baseType: !214, size: 32, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1776, file: !1777, line: 86, baseType: !244, size: 128, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1776, file: !1777, line: 88, baseType: !1505, size: 128, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1776, file: !1777, line: 91, baseType: !1248, size: 64, offset: 384)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1776, file: !1777, line: 94, baseType: !1786, size: 192, offset: 448)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1787, line: 30, size: 192, elements: !1788)
!1787 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1788 = !{!1789, !1790}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1786, file: !1787, line: 31, baseType: !244, size: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1786, file: !1787, line: 32, baseType: !1791, size: 64, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1792, line: 25, baseType: !1793)
!1792 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1792, line: 23, size: 64, elements: !1794)
!1794 = !{!1795}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1793, file: !1792, line: 24, baseType: !236, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1776, file: !1777, line: 97, baseType: !689, size: 64, offset: 640)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1776, file: !1777, line: 100, baseType: !214, size: 32, offset: 704)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1776, file: !1777, line: 106, baseType: !214, size: 32, offset: 736)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1776, file: !1777, line: 107, baseType: !1248, size: 64, offset: 768)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1776, file: !1777, line: 110, baseType: !214, size: 32, offset: 832)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1776, file: !1777, line: 111, baseType: !7, size: 32, offset: 864)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1776, file: !1777, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1776, file: !1777, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1776, file: !1777, line: 128, baseType: !214, size: 32, offset: 928)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1776, file: !1777, line: 129, baseType: !244, size: 128, offset: 960)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1776, file: !1777, line: 132, baseType: !1324, size: 512, offset: 1088)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1776, file: !1777, line: 133, baseType: !1332, size: 64, offset: 1600)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1776, file: !1777, line: 140, baseType: !1809, size: 256, offset: 1664)
!1809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1810, size: 256, elements: !1593)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1777, line: 38, size: 128, elements: !1811)
!1811 = !{!1812, !1813}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1810, file: !1777, line: 39, baseType: !476, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1810, file: !1777, line: 40, baseType: !476, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1776, file: !1777, line: 146, baseType: !1815, size: 192, offset: 1920)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1777, line: 66, size: 192, elements: !1816)
!1816 = !{!1817}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1815, file: !1777, line: 67, baseType: !1818, size: 192)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1777, line: 47, size: 192, elements: !1819)
!1819 = !{!1820, !1821, !1822}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1818, file: !1777, line: 48, baseType: !823, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1818, file: !1777, line: 49, baseType: !823, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1818, file: !1777, line: 50, baseType: !823, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1776, file: !1777, line: 150, baseType: !1554, size: 640, offset: 2112)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1776, file: !1777, line: 153, baseType: !1825, size: 256, offset: 2752)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1495, size: 256, elements: !1203)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1776, file: !1777, line: 159, baseType: !1495, size: 64, offset: 3008)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1776, file: !1777, line: 162, baseType: !214, size: 32, offset: 3072)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1776, file: !1777, line: 164, baseType: !1829, size: 64, offset: 3136)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1777, line: 164, flags: DIFlagFwdDecl)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1776, file: !1777, line: 175, baseType: !1832, size: 32, offset: 3200)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !445, line: 805, baseType: !1833)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !445, line: 798, size: 32, elements: !1834)
!1834 = !{!1835, !1836}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1833, file: !445, line: 803, baseType: !444, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1833, file: !445, line: 804, baseType: !292, offset: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1776, file: !1777, line: 176, baseType: !476, size: 64, offset: 3264)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1776, file: !1777, line: 176, baseType: !476, size: 64, offset: 3328)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1776, file: !1777, line: 176, baseType: !476, size: 64, offset: 3392)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1776, file: !1777, line: 176, baseType: !476, size: 64, offset: 3456)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1776, file: !1777, line: 177, baseType: !476, size: 64, offset: 3520)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1776, file: !1777, line: 178, baseType: !476, size: 64, offset: 3584)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1776, file: !1777, line: 179, baseType: !1542, size: 128, offset: 3648)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1776, file: !1777, line: 180, baseType: !207, size: 64, offset: 3776)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1776, file: !1777, line: 180, baseType: !207, size: 64, offset: 3840)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1776, file: !1777, line: 180, baseType: !207, size: 64, offset: 3904)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1776, file: !1777, line: 180, baseType: !207, size: 64, offset: 3968)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1776, file: !1777, line: 181, baseType: !207, size: 64, offset: 4032)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1776, file: !1777, line: 181, baseType: !207, size: 64, offset: 4096)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1776, file: !1777, line: 181, baseType: !207, size: 64, offset: 4160)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1776, file: !1777, line: 181, baseType: !207, size: 64, offset: 4224)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1776, file: !1777, line: 182, baseType: !207, size: 64, offset: 4288)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1776, file: !1777, line: 182, baseType: !207, size: 64, offset: 4352)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1776, file: !1777, line: 182, baseType: !207, size: 64, offset: 4416)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1776, file: !1777, line: 182, baseType: !207, size: 64, offset: 4480)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1776, file: !1777, line: 183, baseType: !207, size: 64, offset: 4544)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1776, file: !1777, line: 183, baseType: !207, size: 64, offset: 4608)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1776, file: !1777, line: 184, baseType: !1859, offset: 4672)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1860, line: 12, elements: !306)
!1860 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1776, file: !1777, line: 192, baseType: !478, size: 64, offset: 4672)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1776, file: !1777, line: 203, baseType: !1863, size: 2048, offset: 4736)
!1863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1864, size: 2048, elements: !263)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1865, line: 43, size: 128, elements: !1866)
!1865 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1866 = !{!1867, !1868}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1864, file: !1865, line: 44, baseType: !381, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1864, file: !1865, line: 45, baseType: !381, size: 64, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1776, file: !1777, line: 220, baseType: !216, size: 8, offset: 6784)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1776, file: !1777, line: 221, baseType: !1237, size: 16, offset: 6800)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1776, file: !1777, line: 222, baseType: !1237, size: 16, offset: 6816)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1776, file: !1777, line: 224, baseType: !1022, size: 64, offset: 6848)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1776, file: !1777, line: 227, baseType: !1221, size: 192, offset: 6912)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1776, file: !1777, line: 233, baseType: !1221, size: 192, offset: 7104)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1249, file: !1250, line: 970, baseType: !1876, size: 64, offset: 9280)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1777, line: 20, size: 16576, elements: !1878)
!1878 = !{!1879, !1880, !1881, !1882}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1877, file: !1777, line: 21, baseType: !292)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1877, file: !1777, line: 22, baseType: !1262, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1877, file: !1777, line: 23, baseType: !1505, size: 128, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1877, file: !1777, line: 24, baseType: !1883, size: 16384, offset: 192)
!1883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1884, size: 16384, elements: !338)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1787, line: 49, size: 256, elements: !1885)
!1885 = !{!1886}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1884, file: !1787, line: 50, baseType: !1887, size: 256)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1787, line: 35, size: 256, elements: !1888)
!1888 = !{!1889, !1896, !1897, !1903}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1887, file: !1787, line: 37, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1891, line: 19, baseType: !1892)
!1891 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1891, line: 18, baseType: !1894)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{null, !214}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1887, file: !1787, line: 38, baseType: !207, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1887, file: !1787, line: 44, baseType: !1898, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1891, line: 22, baseType: !1899)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1891, line: 21, baseType: !1901)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{null}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1887, file: !1787, line: 46, baseType: !1791, size: 64, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1249, file: !1250, line: 971, baseType: !1791, size: 64, offset: 9344)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1249, file: !1250, line: 972, baseType: !1791, size: 64, offset: 9408)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1249, file: !1250, line: 974, baseType: !1791, size: 64, offset: 9472)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1249, file: !1250, line: 975, baseType: !1786, size: 192, offset: 9536)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1249, file: !1250, line: 976, baseType: !207, size: 64, offset: 9728)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1249, file: !1250, line: 977, baseType: !379, size: 64, offset: 9792)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1249, file: !1250, line: 978, baseType: !7, size: 32, offset: 9856)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1249, file: !1250, line: 980, baseType: !425, size: 64, offset: 9920)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1249, file: !1250, line: 989, baseType: !1913, size: 128, offset: 9984)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1914, line: 35, size: 128, elements: !1915)
!1914 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1915 = !{!1916, !1917, !1918}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1913, file: !1914, line: 36, baseType: !214, size: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1913, file: !1914, line: 37, baseType: !209, size: 32, offset: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1913, file: !1914, line: 38, baseType: !1919, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1914, line: 23, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1249, file: !1250, line: 992, baseType: !476, size: 64, offset: 10112)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1249, file: !1250, line: 993, baseType: !476, size: 64, offset: 10176)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1249, file: !1250, line: 996, baseType: !292, offset: 10240)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1249, file: !1250, line: 999, baseType: !830, offset: 10240)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1249, file: !1250, line: 1001, baseType: !1926, size: 64, offset: 10240)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1250, line: 636, size: 64, elements: !1927)
!1927 = !{!1928}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1926, file: !1250, line: 637, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1249, file: !1250, line: 1005, baseType: !802, size: 128, offset: 10304)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1249, file: !1250, line: 1007, baseType: !1248, size: 64, offset: 10432)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1249, file: !1250, line: 1009, baseType: !1933, size: 64, offset: 10496)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1250, line: 1009, flags: DIFlagFwdDecl)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1249, file: !1250, line: 1043, baseType: !197, size: 64, offset: 10560)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1249, file: !1250, line: 1046, baseType: !1937, size: 64, offset: 10624)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1250, line: 41, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1249, file: !1250, line: 1050, baseType: !1940, size: 64, offset: 10688)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1250, line: 42, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1249, file: !1250, line: 1054, baseType: !1943, size: 64, offset: 10752)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1250, line: 55, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1249, file: !1250, line: 1056, baseType: !1946, size: 64, offset: 10816)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1250, line: 40, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1249, file: !1250, line: 1058, baseType: !1949, size: 64, offset: 10880)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1951, line: 99, size: 704, elements: !1952)
!1951 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1952 = !{!1953, !1954, !1955, !1956, !1957, !1958, !1959, !1978, !1979}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1950, file: !1951, line: 100, baseType: !821, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1950, file: !1951, line: 101, baseType: !209, size: 32, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1950, file: !1951, line: 102, baseType: !209, size: 32, offset: 96)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1950, file: !1951, line: 105, baseType: !292, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1950, file: !1951, line: 107, baseType: !270, size: 16, offset: 128)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1950, file: !1951, line: 109, baseType: !793, size: 128, offset: 192)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1950, file: !1951, line: 110, baseType: !1960, size: 64, offset: 320)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1951, line: 73, size: 448, elements: !1962)
!1962 = !{!1963, !1966, !1967, !1972, !1977}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1961, file: !1951, line: 74, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1951, line: 74, flags: DIFlagFwdDecl)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1961, file: !1951, line: 75, baseType: !1949, size: 64, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, scope: !1961, file: !1951, line: 83, baseType: !1968, size: 128, offset: 128)
!1968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1961, file: !1951, line: 83, size: 128, elements: !1969)
!1969 = !{!1970, !1971}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1968, file: !1951, line: 84, baseType: !244, size: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1968, file: !1951, line: 85, baseType: !983, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, scope: !1961, file: !1951, line: 87, baseType: !1973, size: 128, offset: 256)
!1973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1961, file: !1951, line: 87, size: 128, elements: !1974)
!1974 = !{!1975, !1976}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1973, file: !1951, line: 88, baseType: !693, size: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1973, file: !1951, line: 89, baseType: !422, size: 128, align: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1961, file: !1951, line: 92, baseType: !7, size: 32, offset: 384)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1950, file: !1951, line: 111, baseType: !689, size: 64, offset: 384)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1950, file: !1951, line: 113, baseType: !1980, size: 256, offset: 448)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1981, line: 102, size: 256, elements: !1982)
!1981 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1982 = !{!1983, !1984, !1985}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1980, file: !1981, line: 103, baseType: !821, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1980, file: !1981, line: 104, baseType: !244, size: 128, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1980, file: !1981, line: 105, baseType: !1986, size: 64, offset: 192)
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1981, line: 21, baseType: !1987)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{null, !1990}
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1249, file: !1250, line: 1061, baseType: !1992, size: 64, offset: 10944)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1250, line: 43, flags: DIFlagFwdDecl)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1249, file: !1250, line: 1064, baseType: !207, size: 64, offset: 11008)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1249, file: !1250, line: 1065, baseType: !1996, size: 64, offset: 11072)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1787, line: 14, baseType: !1998)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1787, line: 12, size: 384, elements: !1999)
!1999 = !{!2000}
!2000 = !DIDerivedType(tag: DW_TAG_member, scope: !1998, file: !1787, line: 13, baseType: !2001, size: 384)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1998, file: !1787, line: 13, size: 384, elements: !2002)
!2002 = !{!2003, !2004, !2005, !2006}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2001, file: !1787, line: 13, baseType: !214, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2001, file: !1787, line: 13, baseType: !214, size: 32, offset: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2001, file: !1787, line: 13, baseType: !214, size: 32, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2001, file: !1787, line: 13, baseType: !2007, size: 256, offset: 128)
!2007 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2008, line: 32, size: 256, elements: !2009)
!2008 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2009 = !{!2010, !2015, !2028, !2034, !2043, !2063, !2068}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2007, file: !2008, line: 37, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2007, file: !2008, line: 34, size: 64, elements: !2012)
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2011, file: !2008, line: 35, baseType: !1484, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2011, file: !2008, line: 36, baseType: !495, size: 32, offset: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2007, file: !2008, line: 45, baseType: !2016, size: 192)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2007, file: !2008, line: 40, size: 192, elements: !2017)
!2017 = !{!2018, !2020, !2021, !2027}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2016, file: !2008, line: 41, baseType: !2019, size: 32)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !366, line: 95, baseType: !214)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2016, file: !2008, line: 42, baseType: !214, size: 32, offset: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2016, file: !2008, line: 43, baseType: !2022, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2008, line: 11, baseType: !2023)
!2023 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2008, line: 8, size: 64, elements: !2024)
!2024 = !{!2025, !2026}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2023, file: !2008, line: 9, baseType: !214, size: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2023, file: !2008, line: 10, baseType: !197, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2016, file: !2008, line: 44, baseType: !214, size: 32, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2007, file: !2008, line: 52, baseType: !2029, size: 128)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2007, file: !2008, line: 48, size: 128, elements: !2030)
!2030 = !{!2031, !2032, !2033}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2029, file: !2008, line: 49, baseType: !1484, size: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2029, file: !2008, line: 50, baseType: !495, size: 32, offset: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2029, file: !2008, line: 51, baseType: !2022, size: 64, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2007, file: !2008, line: 61, baseType: !2035, size: 256)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2007, file: !2008, line: 55, size: 256, elements: !2036)
!2036 = !{!2037, !2038, !2039, !2040, !2042}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2035, file: !2008, line: 56, baseType: !1484, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2035, file: !2008, line: 57, baseType: !495, size: 32, offset: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2035, file: !2008, line: 58, baseType: !214, size: 32, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2035, file: !2008, line: 59, baseType: !2041, size: 64, offset: 128)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !366, line: 94, baseType: !367)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2035, file: !2008, line: 60, baseType: !2041, size: 64, offset: 192)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2007, file: !2008, line: 95, baseType: !2044, size: 256)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2007, file: !2008, line: 64, size: 256, elements: !2045)
!2045 = !{!2046, !2047}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2044, file: !2008, line: 65, baseType: !197, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, scope: !2044, file: !2008, line: 77, baseType: !2048, size: 192, offset: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2044, file: !2008, line: 77, size: 192, elements: !2049)
!2049 = !{!2050, !2051, !2058}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2048, file: !2008, line: 82, baseType: !1237, size: 16)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2048, file: !2008, line: 88, baseType: !2052, size: 192)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2048, file: !2008, line: 84, size: 192, elements: !2053)
!2053 = !{!2054, !2056, !2057}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2052, file: !2008, line: 85, baseType: !2055, size: 64)
!2055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 64, elements: !1362)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2052, file: !2008, line: 86, baseType: !197, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2052, file: !2008, line: 87, baseType: !197, size: 64, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2048, file: !2008, line: 93, baseType: !2059, size: 96)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2048, file: !2008, line: 90, size: 96, elements: !2060)
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2059, file: !2008, line: 91, baseType: !2055, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2059, file: !2008, line: 92, baseType: !473, size: 32, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2007, file: !2008, line: 101, baseType: !2064, size: 128)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2007, file: !2008, line: 98, size: 128, elements: !2065)
!2065 = !{!2066, !2067}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2064, file: !2008, line: 99, baseType: !368, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2064, file: !2008, line: 100, baseType: !214, size: 32, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2007, file: !2008, line: 108, baseType: !2069, size: 128)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2007, file: !2008, line: 104, size: 128, elements: !2070)
!2070 = !{!2071, !2072, !2073}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2069, file: !2008, line: 105, baseType: !197, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2069, file: !2008, line: 106, baseType: !214, size: 32, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2069, file: !2008, line: 107, baseType: !7, size: 32, offset: 96)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1249, file: !1250, line: 1067, baseType: !1859, offset: 11136)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1249, file: !1250, line: 1099, baseType: !2076, size: 64, offset: 11136)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1250, line: 56, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1249, file: !1250, line: 1103, baseType: !244, size: 128, offset: 11200)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1249, file: !1250, line: 1104, baseType: !2080, size: 64, offset: 11328)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1250, line: 46, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1249, file: !1250, line: 1105, baseType: !1221, size: 192, offset: 11392)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1249, file: !1250, line: 1106, baseType: !7, size: 32, offset: 11584)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1249, file: !1250, line: 1109, baseType: !2085, size: 128, offset: 11648)
!2085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2086, size: 128, elements: !1593)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1250, line: 51, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1249, file: !1250, line: 1110, baseType: !1221, size: 192, offset: 11776)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1249, file: !1250, line: 1111, baseType: !244, size: 128, offset: 11968)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1249, file: !1250, line: 1173, baseType: !2091, size: 64, offset: 12096)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2093, line: 62, size: 256, align: 256, elements: !2094)
!2093 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2094 = !{!2095, !2096, !2097, !2102}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2092, file: !2093, line: 75, baseType: !473, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2092, file: !2093, line: 90, baseType: !473, size: 32, offset: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2092, file: !2093, line: 124, baseType: !2098, size: 64, offset: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2092, file: !2093, line: 109, size: 64, elements: !2099)
!2099 = !{!2100, !2101}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2098, file: !2093, line: 110, baseType: !477, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2098, file: !2093, line: 112, baseType: !477, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2092, file: !2093, line: 144, baseType: !473, size: 32, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1249, file: !1250, line: 1174, baseType: !472, size: 32, offset: 12160)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1249, file: !1250, line: 1179, baseType: !207, size: 64, offset: 12224)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1249, file: !1250, line: 1182, baseType: !2106, size: 128, offset: 12288)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1199, line: 76, size: 128, elements: !2107)
!2107 = !{!2108, !2113, !2114}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2106, file: !1199, line: 85, baseType: !2109, size: 64)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2110, line: 7, size: 64, elements: !2111)
!2110 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2111 = !{!2112}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2109, file: !2110, line: 12, baseType: !232, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2106, file: !1199, line: 88, baseType: !216, size: 8, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2106, file: !1199, line: 95, baseType: !216, size: 8, offset: 72)
!2115 = !DIDerivedType(tag: DW_TAG_member, scope: !1249, file: !1250, line: 1184, baseType: !2116, size: 128, offset: 12416)
!2116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1249, file: !1250, line: 1184, size: 128, elements: !2117)
!2117 = !{!2118, !2119}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2116, file: !1250, line: 1185, baseType: !1262, size: 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2116, file: !1250, line: 1186, baseType: !422, size: 128, align: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1249, file: !1250, line: 1190, baseType: !2121, size: 64, offset: 12544)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1250, line: 53, flags: DIFlagFwdDecl)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1249, file: !1250, line: 1192, baseType: !2124, size: 128, offset: 12608)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1199, line: 64, size: 128, elements: !2125)
!2125 = !{!2126, !2127, !2128}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2124, file: !1199, line: 65, baseType: !775, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2124, file: !1199, line: 67, baseType: !473, size: 32, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2124, file: !1199, line: 68, baseType: !473, size: 32, offset: 96)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1249, file: !1250, line: 1206, baseType: !214, size: 32, offset: 12736)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1249, file: !1250, line: 1207, baseType: !214, size: 32, offset: 12768)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1249, file: !1250, line: 1209, baseType: !207, size: 64, offset: 12800)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1249, file: !1250, line: 1219, baseType: !476, size: 64, offset: 12864)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1249, file: !1250, line: 1220, baseType: !476, size: 64, offset: 12928)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1249, file: !1250, line: 1317, baseType: !214, size: 32, offset: 12992)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1249, file: !1250, line: 1319, baseType: !1248, size: 64, offset: 13056)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1249, file: !1250, line: 1322, baseType: !2137, size: 64, offset: 13120)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2139, line: 56, size: 512, elements: !2140)
!2139 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2140 = !{!2141, !2142, !2143, !2144, !2145, !2146, !2147, !2149}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2138, file: !2139, line: 57, baseType: !2137, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2138, file: !2139, line: 58, baseType: !197, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2138, file: !2139, line: 59, baseType: !207, size: 64, offset: 128)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2138, file: !2139, line: 60, baseType: !207, size: 64, offset: 192)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2138, file: !2139, line: 61, baseType: !870, size: 64, offset: 256)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2138, file: !2139, line: 62, baseType: !7, size: 32, offset: 320)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2138, file: !2139, line: 63, baseType: !2148, size: 64, offset: 384)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !210, line: 153, baseType: !476)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2138, file: !2139, line: 64, baseType: !2150, size: 64, offset: 448)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1249, file: !1250, line: 1326, baseType: !1262, size: 32, offset: 13184)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1249, file: !1250, line: 1342, baseType: !197, size: 64, offset: 13248)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1249, file: !1250, line: 1343, baseType: !477, size: 64, offset: 13312)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1249, file: !1250, line: 1344, baseType: !476, size: 64, offset: 13376)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1249, file: !1250, line: 1345, baseType: !477, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1249, file: !1250, line: 1346, baseType: !477, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1249, file: !1250, line: 1347, baseType: !477, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1249, file: !1250, line: 1348, baseType: !422, size: 128, align: 64, offset: 13504)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1249, file: !1250, line: 1358, baseType: !2161, size: 34816, offset: 13824)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2162, line: 485, size: 34816, elements: !2163)
!2162 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2163 = !{!2164, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2193, !2194, !2195, !2196, !2197, !2198, !2201, !2202, !2203}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2161, file: !2162, line: 487, baseType: !2165, size: 192)
!2165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2166, size: 192, elements: !334)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2167, line: 16, size: 64, elements: !2168)
!2167 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2168 = !{!2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2166, file: !2167, line: 17, baseType: !267, size: 16)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2166, file: !2167, line: 18, baseType: !267, size: 16, offset: 16)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2166, file: !2167, line: 19, baseType: !267, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2166, file: !2167, line: 19, baseType: !267, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2166, file: !2167, line: 19, baseType: !267, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2166, file: !2167, line: 19, baseType: !267, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2166, file: !2167, line: 19, baseType: !267, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2166, file: !2167, line: 20, baseType: !267, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2166, file: !2167, line: 20, baseType: !267, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2166, file: !2167, line: 20, baseType: !267, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2166, file: !2167, line: 20, baseType: !267, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2166, file: !2167, line: 20, baseType: !267, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2166, file: !2167, line: 20, baseType: !267, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2161, file: !2162, line: 491, baseType: !207, size: 64, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2161, file: !2162, line: 495, baseType: !270, size: 16, offset: 256)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2161, file: !2162, line: 496, baseType: !270, size: 16, offset: 272)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2161, file: !2162, line: 497, baseType: !270, size: 16, offset: 288)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2161, file: !2162, line: 498, baseType: !270, size: 16, offset: 304)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2161, file: !2162, line: 502, baseType: !207, size: 64, offset: 320)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2161, file: !2162, line: 503, baseType: !207, size: 64, offset: 384)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2161, file: !2162, line: 514, baseType: !2190, size: 256, offset: 448)
!2190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2191, size: 256, elements: !1203)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2162, line: 483, flags: DIFlagFwdDecl)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2161, file: !2162, line: 516, baseType: !207, size: 64, offset: 704)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2161, file: !2162, line: 518, baseType: !207, size: 64, offset: 768)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2161, file: !2162, line: 520, baseType: !207, size: 64, offset: 832)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2161, file: !2162, line: 521, baseType: !207, size: 64, offset: 896)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2161, file: !2162, line: 522, baseType: !207, size: 64, offset: 960)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2161, file: !2162, line: 528, baseType: !2199, size: 64, offset: 1024)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2162, line: 10, flags: DIFlagFwdDecl)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2161, file: !2162, line: 535, baseType: !207, size: 64, offset: 1088)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2161, file: !2162, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2161, file: !2162, line: 540, baseType: !2204, size: 33280, offset: 1536)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2205, line: 317, size: 33280, elements: !2206)
!2205 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2206 = !{!2207, !2208, !2209}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2204, file: !2205, line: 330, baseType: !7, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2204, file: !2205, line: 337, baseType: !207, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2204, file: !2205, line: 348, baseType: !2210, size: 32768, offset: 512)
!2210 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2205, line: 304, size: 32768, elements: !2211)
!2211 = !{!2212, !2227, !2266, !2316, !2329}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2210, file: !2205, line: 305, baseType: !2213, size: 896)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2205, line: 12, size: 896, elements: !2214)
!2214 = !{!2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2226}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2213, file: !2205, line: 13, baseType: !472, size: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2213, file: !2205, line: 14, baseType: !472, size: 32, offset: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2213, file: !2205, line: 15, baseType: !472, size: 32, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2213, file: !2205, line: 16, baseType: !472, size: 32, offset: 96)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2213, file: !2205, line: 17, baseType: !472, size: 32, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2213, file: !2205, line: 18, baseType: !472, size: 32, offset: 160)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2213, file: !2205, line: 19, baseType: !472, size: 32, offset: 192)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2213, file: !2205, line: 22, baseType: !2223, size: 640, offset: 224)
!2223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 640, elements: !2224)
!2224 = !{!2225}
!2225 = !DISubrange(count: 20)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2213, file: !2205, line: 25, baseType: !472, size: 32, offset: 864)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2210, file: !2205, line: 306, baseType: !2228, size: 4096, align: 128)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2205, line: 34, size: 4096, align: 128, elements: !2229)
!2229 = !{!2230, !2231, !2232, !2233, !2234, !2249, !2250, !2251, !2255, !2257, !2261}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2228, file: !2205, line: 35, baseType: !267, size: 16)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2228, file: !2205, line: 36, baseType: !267, size: 16, offset: 16)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2228, file: !2205, line: 37, baseType: !267, size: 16, offset: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2228, file: !2205, line: 38, baseType: !267, size: 16, offset: 48)
!2234 = !DIDerivedType(tag: DW_TAG_member, scope: !2228, file: !2205, line: 39, baseType: !2235, size: 128, offset: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2228, file: !2205, line: 39, size: 128, elements: !2236)
!2236 = !{!2237, !2242}
!2237 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !2205, line: 40, baseType: !2238, size: 128)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !2205, line: 40, size: 128, elements: !2239)
!2239 = !{!2240, !2241}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2238, file: !2205, line: 41, baseType: !476, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2238, file: !2205, line: 42, baseType: !476, size: 64, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !2205, line: 44, baseType: !2243, size: 128)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !2205, line: 44, size: 128, elements: !2244)
!2244 = !{!2245, !2246, !2247, !2248}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2243, file: !2205, line: 45, baseType: !472, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2243, file: !2205, line: 46, baseType: !472, size: 32, offset: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2243, file: !2205, line: 47, baseType: !472, size: 32, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2243, file: !2205, line: 48, baseType: !472, size: 32, offset: 96)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2228, file: !2205, line: 51, baseType: !472, size: 32, offset: 192)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2228, file: !2205, line: 52, baseType: !472, size: 32, offset: 224)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2228, file: !2205, line: 55, baseType: !2252, size: 1024, offset: 256)
!2252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 1024, elements: !2253)
!2253 = !{!2254}
!2254 = !DISubrange(count: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2228, file: !2205, line: 58, baseType: !2256, size: 2048, offset: 1280)
!2256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 2048, elements: !338)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2228, file: !2205, line: 60, baseType: !2258, size: 384, offset: 3328)
!2258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 384, elements: !2259)
!2259 = !{!2260}
!2260 = !DISubrange(count: 12)
!2261 = !DIDerivedType(tag: DW_TAG_member, scope: !2228, file: !2205, line: 62, baseType: !2262, size: 384, offset: 3712)
!2262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2228, file: !2205, line: 62, size: 384, elements: !2263)
!2263 = !{!2264, !2265}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2262, file: !2205, line: 63, baseType: !2258, size: 384)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2262, file: !2205, line: 64, baseType: !2258, size: 384)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2210, file: !2205, line: 307, baseType: !2267, size: 1088)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2205, line: 79, size: 1088, elements: !2268)
!2268 = !{!2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2315}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2267, file: !2205, line: 80, baseType: !472, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2267, file: !2205, line: 81, baseType: !472, size: 32, offset: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2267, file: !2205, line: 82, baseType: !472, size: 32, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2267, file: !2205, line: 83, baseType: !472, size: 32, offset: 96)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2267, file: !2205, line: 84, baseType: !472, size: 32, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2267, file: !2205, line: 85, baseType: !472, size: 32, offset: 160)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2267, file: !2205, line: 86, baseType: !472, size: 32, offset: 192)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2267, file: !2205, line: 88, baseType: !2223, size: 640, offset: 224)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2267, file: !2205, line: 89, baseType: !1384, size: 8, offset: 864)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2267, file: !2205, line: 90, baseType: !1384, size: 8, offset: 872)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2267, file: !2205, line: 91, baseType: !1384, size: 8, offset: 880)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2267, file: !2205, line: 92, baseType: !1384, size: 8, offset: 888)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2267, file: !2205, line: 93, baseType: !1384, size: 8, offset: 896)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2267, file: !2205, line: 94, baseType: !1384, size: 8, offset: 904)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2267, file: !2205, line: 95, baseType: !2284, size: 64, offset: 960)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2286, line: 11, size: 128, elements: !2287)
!2286 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2287 = !{!2288, !2289}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2285, file: !2286, line: 12, baseType: !368, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2285, file: !2286, line: 13, baseType: !2290, size: 64, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2292, line: 56, size: 1344, elements: !2293)
!2292 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2293 = !{!2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2291, file: !2292, line: 61, baseType: !207, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2291, file: !2292, line: 62, baseType: !207, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2291, file: !2292, line: 63, baseType: !207, size: 64, offset: 128)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2291, file: !2292, line: 64, baseType: !207, size: 64, offset: 192)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2291, file: !2292, line: 65, baseType: !207, size: 64, offset: 256)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2291, file: !2292, line: 66, baseType: !207, size: 64, offset: 320)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2291, file: !2292, line: 68, baseType: !207, size: 64, offset: 384)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2291, file: !2292, line: 69, baseType: !207, size: 64, offset: 448)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2291, file: !2292, line: 70, baseType: !207, size: 64, offset: 512)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2291, file: !2292, line: 71, baseType: !207, size: 64, offset: 576)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2291, file: !2292, line: 72, baseType: !207, size: 64, offset: 640)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2291, file: !2292, line: 73, baseType: !207, size: 64, offset: 704)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2291, file: !2292, line: 74, baseType: !207, size: 64, offset: 768)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2291, file: !2292, line: 75, baseType: !207, size: 64, offset: 832)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2291, file: !2292, line: 76, baseType: !207, size: 64, offset: 896)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2291, file: !2292, line: 81, baseType: !207, size: 64, offset: 960)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2291, file: !2292, line: 83, baseType: !207, size: 64, offset: 1024)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2291, file: !2292, line: 84, baseType: !207, size: 64, offset: 1088)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2291, file: !2292, line: 85, baseType: !207, size: 64, offset: 1152)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2291, file: !2292, line: 86, baseType: !207, size: 64, offset: 1216)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2291, file: !2292, line: 87, baseType: !207, size: 64, offset: 1280)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2267, file: !2205, line: 96, baseType: !472, size: 32, offset: 1024)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2210, file: !2205, line: 308, baseType: !2317, size: 4608, align: 512)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2205, line: 289, size: 4608, align: 512, elements: !2318)
!2318 = !{!2319, !2320, !2327}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2317, file: !2205, line: 290, baseType: !2228, size: 4096, align: 128)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2317, file: !2205, line: 291, baseType: !2321, size: 512, offset: 4096)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2205, line: 268, size: 512, elements: !2322)
!2322 = !{!2323, !2324, !2325}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2321, file: !2205, line: 269, baseType: !476, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2321, file: !2205, line: 270, baseType: !476, size: 64, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2321, file: !2205, line: 271, baseType: !2326, size: 384, offset: 128)
!2326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 384, elements: !1649)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2317, file: !2205, line: 292, baseType: !2328, offset: 4608)
!2328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, elements: !1747)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2210, file: !2205, line: 309, baseType: !2330, size: 32768)
!2330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 32768, elements: !2331)
!2331 = !{!2332}
!2332 = !DISubrange(count: 4096)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1245, file: !777, line: 378, baseType: !2334, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1241, file: !777, line: 384, baseType: !1526, size: 192, offset: 192)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1026, file: !777, line: 500, baseType: !292, offset: 6656)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1026, file: !777, line: 501, baseType: !2338, size: 64, offset: 6656)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !777, line: 387, flags: DIFlagFwdDecl)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1026, file: !777, line: 516, baseType: !1737, size: 64, offset: 6720)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1026, file: !777, line: 519, baseType: !409, size: 64, offset: 6784)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1026, file: !777, line: 521, baseType: !2343, size: 64, offset: 6848)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !777, line: 521, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1026, file: !777, line: 545, baseType: !209, size: 32, offset: 6912)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1026, file: !777, line: 548, baseType: !216, size: 8, offset: 6944)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1026, file: !777, line: 550, baseType: !2348, offset: 6952)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2349, line: 142, elements: !306)
!2349 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1026, file: !777, line: 554, baseType: !1980, size: 256, offset: 6976)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1026, file: !777, line: 557, baseType: !472, size: 32, offset: 7232)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1023, file: !777, line: 565, baseType: !2353, offset: 7296)
!2353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, elements: !2354)
!2354 = !{!2355}
!2355 = !DISubrange(count: -1)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1019, file: !777, line: 151, baseType: !209, size: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1012, file: !777, line: 156, baseType: !292, offset: 256)
!2358 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 159, baseType: !2359, size: 128)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 159, size: 128, elements: !2360)
!2360 = !{!2361, !2425}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2359, file: !777, line: 161, baseType: !2362, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !64, line: 110, size: 1152, elements: !2364)
!2364 = !{!2365, !2375, !2396, !2397, !2398, !2399, !2400, !2412, !2413, !2414}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2363, file: !64, line: 111, baseType: !2366, size: 384)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !64, line: 19, size: 384, elements: !2367)
!2367 = !{!2368, !2370, !2371, !2372, !2373, !2374}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2366, file: !64, line: 20, baseType: !2369, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2366, file: !64, line: 21, baseType: !2369, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2366, file: !64, line: 22, baseType: !2369, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2366, file: !64, line: 23, baseType: !207, size: 64, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2366, file: !64, line: 24, baseType: !207, size: 64, offset: 256)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2366, file: !64, line: 25, baseType: !207, size: 64, offset: 320)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2363, file: !64, line: 112, baseType: !2376, size: 64, offset: 384)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2378, line: 105, size: 128, elements: !2379)
!2378 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2379 = !{!2380, !2381}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2377, file: !2378, line: 110, baseType: !207, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2377, file: !2378, line: 118, baseType: !2382, size: 64, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2378, line: 95, size: 448, elements: !2384)
!2384 = !{!2385, !2386, !2391, !2392, !2393, !2394, !2395}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2383, file: !2378, line: 96, baseType: !821, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2383, file: !2378, line: 97, baseType: !2387, size: 64, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2378, line: 60, baseType: !2389)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{null, !2376}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2383, file: !2378, line: 98, baseType: !2387, size: 64, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2383, file: !2378, line: 99, baseType: !216, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2383, file: !2378, line: 100, baseType: !216, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2383, file: !2378, line: 101, baseType: !422, size: 128, align: 64, offset: 256)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2383, file: !2378, line: 102, baseType: !2376, size: 64, offset: 384)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2363, file: !64, line: 113, baseType: !2377, size: 128, offset: 448)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2363, file: !64, line: 114, baseType: !1526, size: 192, offset: 576)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2363, file: !64, line: 115, baseType: !63, size: 32, offset: 768)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2363, file: !64, line: 116, baseType: !7, size: 32, offset: 800)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2363, file: !64, line: 117, baseType: !2401, size: 64, offset: 832)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2403)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !64, line: 67, size: 256, elements: !2404)
!2404 = !{!2405, !2406, !2410, !2411}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2403, file: !64, line: 73, baseType: !890, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2403, file: !64, line: 78, baseType: !2407, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{null, !2362}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2403, file: !64, line: 83, baseType: !2407, size: 64, offset: 128)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2403, file: !64, line: 89, baseType: !1075, size: 64, offset: 192)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2363, file: !64, line: 118, baseType: !197, size: 64, offset: 896)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2363, file: !64, line: 119, baseType: !214, size: 32, offset: 960)
!2414 = !DIDerivedType(tag: DW_TAG_member, scope: !2363, file: !64, line: 120, baseType: !2415, size: 128, offset: 1024)
!2415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2363, file: !64, line: 120, size: 128, elements: !2416)
!2416 = !{!2417, !2423}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2415, file: !64, line: 121, baseType: !2418, size: 128)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2419, line: 6, size: 128, elements: !2420)
!2419 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2420 = !{!2421, !2422}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2418, file: !2419, line: 7, baseType: !476, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2418, file: !2419, line: 8, baseType: !476, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2415, file: !64, line: 122, baseType: !2424)
!2424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2418, elements: !1747)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2359, file: !777, line: 162, baseType: !197, size: 64, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !781, file: !777, line: 176, baseType: !422, size: 128, align: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !777, line: 179, baseType: !2428, size: 32, offset: 384)
!2428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !777, line: 179, size: 32, elements: !2429)
!2429 = !{!2430, !2431, !2432, !2433}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2428, file: !777, line: 184, baseType: !209, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2428, file: !777, line: 192, baseType: !7, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2428, file: !777, line: 194, baseType: !7, size: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2428, file: !777, line: 195, baseType: !214, size: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !776, file: !777, line: 199, baseType: !209, size: 32, offset: 416)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !711, file: !77, line: 1964, baseType: !2436, size: 64, offset: 1344)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!368, !651, !2439}
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2441, line: 12, size: 256, elements: !2442)
!2441 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2442 = !{!2443, !2444, !2445, !2446, !2447}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2440, file: !2441, line: 13, baseType: !239, size: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2440, file: !2441, line: 16, baseType: !214, size: 32, offset: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2440, file: !2441, line: 23, baseType: !207, size: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2440, file: !2441, line: 30, baseType: !207, size: 64, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2440, file: !2441, line: 33, baseType: !2448, size: 64, offset: 192)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !777, line: 27, flags: DIFlagFwdDecl)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !711, file: !77, line: 1966, baseType: !2436, size: 64, offset: 1408)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !652, file: !77, line: 1424, baseType: !2452, size: 64, offset: 448)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2454)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !71, line: 322, size: 704, elements: !2455)
!2455 = !{!2456, !2502, !2506, !2510, !2511, !2512, !2513, !2514, !2519, !2524, !2528}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2454, file: !71, line: 323, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!214, !2460}
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !71, line: 294, size: 1600, elements: !2462)
!2462 = !{!2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2487, !2488, !2489}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2461, file: !71, line: 295, baseType: !693, size: 128)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2461, file: !71, line: 296, baseType: !244, size: 128, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2461, file: !71, line: 297, baseType: !244, size: 128, offset: 256)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2461, file: !71, line: 298, baseType: !244, size: 128, offset: 384)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2461, file: !71, line: 299, baseType: !1221, size: 192, offset: 512)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2461, file: !71, line: 300, baseType: !292, offset: 704)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2461, file: !71, line: 301, baseType: !209, size: 32, offset: 704)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2461, file: !71, line: 302, baseType: !651, size: 64, offset: 768)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2461, file: !71, line: 303, baseType: !2472, size: 64, offset: 832)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !71, line: 68, size: 64, elements: !2473)
!2473 = !{!2474, !2486}
!2474 = !DIDerivedType(tag: DW_TAG_member, scope: !2472, file: !71, line: 69, baseType: !2475, size: 32)
!2475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2472, file: !71, line: 69, size: 32, elements: !2476)
!2476 = !{!2477, !2478, !2479}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2475, file: !71, line: 70, baseType: !489, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2475, file: !71, line: 71, baseType: !497, size: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2475, file: !71, line: 72, baseType: !2480, size: 32)
!2480 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2481, line: 24, baseType: !2482)
!2481 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2481, line: 22, size: 32, elements: !2483)
!2483 = !{!2484}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2482, file: !2481, line: 23, baseType: !2485, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2481, line: 20, baseType: !495)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2472, file: !71, line: 74, baseType: !70, size: 32, offset: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2461, file: !71, line: 304, baseType: !583, size: 64, offset: 896)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2461, file: !71, line: 305, baseType: !207, size: 64, offset: 960)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2461, file: !71, line: 306, baseType: !2490, size: 576, offset: 1024)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !71, line: 205, size: 576, elements: !2491)
!2491 = !{!2492, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2490, file: !71, line: 206, baseType: !2493, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !71, line: 66, baseType: !585)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2490, file: !71, line: 207, baseType: !2493, size: 64, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2490, file: !71, line: 208, baseType: !2493, size: 64, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2490, file: !71, line: 209, baseType: !2493, size: 64, offset: 192)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2490, file: !71, line: 210, baseType: !2493, size: 64, offset: 256)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2490, file: !71, line: 211, baseType: !2493, size: 64, offset: 320)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2490, file: !71, line: 212, baseType: !2493, size: 64, offset: 384)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2490, file: !71, line: 213, baseType: !591, size: 64, offset: 448)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2490, file: !71, line: 214, baseType: !591, size: 64, offset: 512)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2454, file: !71, line: 324, baseType: !2503, size: 64, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!2460, !651, !214}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2454, file: !71, line: 325, baseType: !2507, size: 64, offset: 128)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{null, !2460}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2454, file: !71, line: 326, baseType: !2457, size: 64, offset: 192)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2454, file: !71, line: 327, baseType: !2457, size: 64, offset: 256)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2454, file: !71, line: 328, baseType: !2457, size: 64, offset: 320)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2454, file: !71, line: 329, baseType: !739, size: 64, offset: 384)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2454, file: !71, line: 332, baseType: !2515, size: 64, offset: 448)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!2518, !483}
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2454, file: !71, line: 333, baseType: !2520, size: 64, offset: 512)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!214, !483, !2523}
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2454, file: !71, line: 335, baseType: !2525, size: 64, offset: 576)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!214, !483, !2518}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2454, file: !71, line: 337, baseType: !2529, size: 64, offset: 640)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!214, !651, !2532}
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !652, file: !77, line: 1425, baseType: !2534, size: 64, offset: 512)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2536)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !71, line: 428, size: 704, elements: !2537)
!2537 = !{!2538, !2542, !2543, !2547, !2548, !2549, !2564, !2587, !2591, !2592, !2615}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2536, file: !71, line: 429, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!214, !651, !214, !214, !601}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2536, file: !71, line: 430, baseType: !739, size: 64, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2536, file: !71, line: 431, baseType: !2544, size: 64, offset: 128)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!214, !651, !7}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2536, file: !71, line: 432, baseType: !2544, size: 64, offset: 192)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2536, file: !71, line: 433, baseType: !739, size: 64, offset: 256)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2536, file: !71, line: 434, baseType: !2550, size: 64, offset: 320)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!214, !651, !214, !2553}
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !71, line: 415, size: 256, elements: !2555)
!2555 = !{!2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2554, file: !71, line: 416, baseType: !214, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2554, file: !71, line: 417, baseType: !7, size: 32, offset: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2554, file: !71, line: 418, baseType: !7, size: 32, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2554, file: !71, line: 420, baseType: !7, size: 32, offset: 96)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2554, file: !71, line: 421, baseType: !7, size: 32, offset: 128)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2554, file: !71, line: 422, baseType: !7, size: 32, offset: 160)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2554, file: !71, line: 423, baseType: !7, size: 32, offset: 192)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2554, file: !71, line: 424, baseType: !7, size: 32, offset: 224)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2536, file: !71, line: 435, baseType: !2565, size: 64, offset: 384)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!214, !651, !2472, !2568}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !71, line: 343, size: 960, elements: !2570)
!2570 = !{!2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2569, file: !71, line: 344, baseType: !214, size: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2569, file: !71, line: 345, baseType: !476, size: 64, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2569, file: !71, line: 346, baseType: !476, size: 64, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2569, file: !71, line: 347, baseType: !476, size: 64, offset: 192)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2569, file: !71, line: 348, baseType: !476, size: 64, offset: 256)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2569, file: !71, line: 349, baseType: !476, size: 64, offset: 320)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2569, file: !71, line: 350, baseType: !476, size: 64, offset: 384)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2569, file: !71, line: 351, baseType: !827, size: 64, offset: 448)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2569, file: !71, line: 353, baseType: !827, size: 64, offset: 512)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2569, file: !71, line: 354, baseType: !214, size: 32, offset: 576)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2569, file: !71, line: 355, baseType: !214, size: 32, offset: 608)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2569, file: !71, line: 356, baseType: !476, size: 64, offset: 640)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2569, file: !71, line: 357, baseType: !476, size: 64, offset: 704)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2569, file: !71, line: 358, baseType: !476, size: 64, offset: 768)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2569, file: !71, line: 359, baseType: !827, size: 64, offset: 832)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2569, file: !71, line: 360, baseType: !214, size: 32, offset: 896)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2536, file: !71, line: 436, baseType: !2588, size: 64, offset: 448)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!214, !651, !2532, !2568}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2536, file: !71, line: 438, baseType: !2565, size: 64, offset: 512)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2536, file: !71, line: 439, baseType: !2593, size: 64, offset: 576)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!214, !651, !2596}
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !71, line: 409, size: 1408, elements: !2598)
!2598 = !{!2599, !2600}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2597, file: !71, line: 410, baseType: !7, size: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2597, file: !71, line: 411, baseType: !2601, size: 1344, offset: 64)
!2601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2602, size: 1344, elements: !334)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !71, line: 395, size: 448, elements: !2603)
!2603 = !{!2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2614}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2602, file: !71, line: 396, baseType: !7, size: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2602, file: !71, line: 397, baseType: !7, size: 32, offset: 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2602, file: !71, line: 399, baseType: !7, size: 32, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2602, file: !71, line: 400, baseType: !7, size: 32, offset: 96)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2602, file: !71, line: 401, baseType: !7, size: 32, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2602, file: !71, line: 402, baseType: !7, size: 32, offset: 160)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2602, file: !71, line: 403, baseType: !7, size: 32, offset: 192)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2602, file: !71, line: 404, baseType: !478, size: 64, offset: 256)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2602, file: !71, line: 405, baseType: !2613, size: 64, offset: 320)
!2613 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !210, line: 126, baseType: !476)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2602, file: !71, line: 406, baseType: !2613, size: 64, offset: 384)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2536, file: !71, line: 440, baseType: !2544, size: 64, offset: 640)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !652, file: !77, line: 1426, baseType: !2617, size: 64, offset: 576)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2619)
!2619 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !77, line: 49, flags: DIFlagFwdDecl)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !652, file: !77, line: 1427, baseType: !207, size: 64, offset: 640)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !652, file: !77, line: 1428, baseType: !207, size: 64, offset: 704)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !652, file: !77, line: 1429, baseType: !207, size: 64, offset: 768)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !652, file: !77, line: 1430, baseType: !439, size: 64, offset: 832)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !652, file: !77, line: 1431, baseType: !817, size: 256, offset: 896)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !652, file: !77, line: 1432, baseType: !214, size: 32, offset: 1152)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !652, file: !77, line: 1433, baseType: !209, size: 32, offset: 1184)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !652, file: !77, line: 1437, baseType: !2628, size: 64, offset: 1216)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2631)
!2631 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !77, line: 1437, flags: DIFlagFwdDecl)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !652, file: !77, line: 1449, baseType: !2633, size: 64, offset: 1280)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !455, line: 34, size: 64, elements: !2634)
!2634 = !{!2635}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2633, file: !455, line: 35, baseType: !458, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !652, file: !77, line: 1450, baseType: !244, size: 128, offset: 1344)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !652, file: !77, line: 1451, baseType: !2638, size: 64, offset: 1472)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !77, line: 699, flags: DIFlagFwdDecl)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !652, file: !77, line: 1452, baseType: !1946, size: 64, offset: 1536)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !652, file: !77, line: 1453, baseType: !2642, size: 64, offset: 1600)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !77, line: 1453, flags: DIFlagFwdDecl)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !652, file: !77, line: 1454, baseType: !693, size: 128, offset: 1664)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !652, file: !77, line: 1455, baseType: !7, size: 32, offset: 1792)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !652, file: !77, line: 1456, baseType: !2647, size: 2432, offset: 1856)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !71, line: 518, size: 2432, elements: !2648)
!2648 = !{!2649, !2650, !2651, !2653, !2685}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2647, file: !71, line: 519, baseType: !7, size: 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2647, file: !71, line: 520, baseType: !817, size: 256, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2647, file: !71, line: 521, baseType: !2652, size: 192, offset: 320)
!2652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 192, elements: !334)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2647, file: !71, line: 522, baseType: !2654, size: 1728, offset: 512)
!2654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2655, size: 1728, elements: !334)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !71, line: 222, size: 576, elements: !2656)
!2656 = !{!2657, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2655, file: !71, line: 223, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !71, line: 443, size: 256, elements: !2660)
!2660 = !{!2661, !2662, !2675, !2676}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2659, file: !71, line: 444, baseType: !214, size: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2659, file: !71, line: 445, baseType: !2663, size: 64, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2665)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !71, line: 310, size: 512, elements: !2666)
!2666 = !{!2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2665, file: !71, line: 311, baseType: !739, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2665, file: !71, line: 312, baseType: !739, size: 64, offset: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2665, file: !71, line: 313, baseType: !739, size: 64, offset: 128)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2665, file: !71, line: 314, baseType: !739, size: 64, offset: 192)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2665, file: !71, line: 315, baseType: !2457, size: 64, offset: 256)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2665, file: !71, line: 316, baseType: !2457, size: 64, offset: 320)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2665, file: !71, line: 317, baseType: !2457, size: 64, offset: 384)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2665, file: !71, line: 318, baseType: !2529, size: 64, offset: 448)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2659, file: !71, line: 446, baseType: !684, size: 64, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2659, file: !71, line: 447, baseType: !2658, size: 64, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2655, file: !71, line: 224, baseType: !214, size: 32, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2655, file: !71, line: 226, baseType: !244, size: 128, offset: 128)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2655, file: !71, line: 227, baseType: !207, size: 64, offset: 256)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2655, file: !71, line: 228, baseType: !7, size: 32, offset: 320)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2655, file: !71, line: 229, baseType: !7, size: 32, offset: 352)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2655, file: !71, line: 230, baseType: !2493, size: 64, offset: 384)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2655, file: !71, line: 231, baseType: !2493, size: 64, offset: 448)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2655, file: !71, line: 232, baseType: !197, size: 64, offset: 512)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2647, file: !71, line: 523, baseType: !2686, size: 192, offset: 2240)
!2686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2663, size: 192, elements: !334)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !652, file: !77, line: 1458, baseType: !2688, size: 2112, offset: 4288)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !77, line: 1410, size: 2112, elements: !2689)
!2689 = !{!2690, !2691, !2692}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2688, file: !77, line: 1411, baseType: !214, size: 32)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2688, file: !77, line: 1412, baseType: !1505, size: 128, offset: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2688, file: !77, line: 1413, baseType: !2693, size: 1920, offset: 192)
!2693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2694, size: 1920, elements: !334)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2695, line: 12, size: 640, elements: !2696)
!2695 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2696 = !{!2697, !2705, !2707, !2712, !2713}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2694, file: !2695, line: 13, baseType: !2698, size: 320)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2699, line: 17, size: 320, elements: !2700)
!2699 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2700 = !{!2701, !2702, !2703, !2704}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2698, file: !2699, line: 18, baseType: !214, size: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2698, file: !2699, line: 19, baseType: !214, size: 32, offset: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2698, file: !2699, line: 20, baseType: !1505, size: 128, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2698, file: !2699, line: 22, baseType: !422, size: 128, align: 64, offset: 192)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2694, file: !2695, line: 14, baseType: !2706, size: 64, offset: 320)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2694, file: !2695, line: 15, baseType: !2708, size: 64, offset: 384)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2709, line: 16, size: 64, elements: !2710)
!2709 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2710 = !{!2711}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2708, file: !2709, line: 17, baseType: !1248, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2694, file: !2695, line: 16, baseType: !1505, size: 128, offset: 448)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2694, file: !2695, line: 17, baseType: !209, size: 32, offset: 576)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !652, file: !77, line: 1465, baseType: !197, size: 64, offset: 6400)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !652, file: !77, line: 1468, baseType: !472, size: 32, offset: 6464)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !652, file: !77, line: 1470, baseType: !591, size: 64, offset: 6528)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !652, file: !77, line: 1471, baseType: !591, size: 64, offset: 6592)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !652, file: !77, line: 1473, baseType: !473, size: 32, offset: 6656)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !652, file: !77, line: 1474, baseType: !2720, size: 64, offset: 6720)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !77, line: 603, flags: DIFlagFwdDecl)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !652, file: !77, line: 1477, baseType: !2723, size: 256, offset: 6784)
!2723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 256, elements: !2253)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !652, file: !77, line: 1478, baseType: !2725, size: 128, offset: 7040)
!2725 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2726, line: 18, baseType: !2727)
!2726 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2726, line: 16, size: 128, elements: !2728)
!2728 = !{!2729}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2727, file: !2726, line: 17, baseType: !259, size: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !652, file: !77, line: 1480, baseType: !7, size: 32, offset: 7168)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !652, file: !77, line: 1481, baseType: !2732, size: 32, offset: 7200)
!2732 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !210, line: 150, baseType: !7)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !652, file: !77, line: 1487, baseType: !1221, size: 192, offset: 7232)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !652, file: !77, line: 1493, baseType: !280, size: 64, offset: 7424)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !652, file: !77, line: 1495, baseType: !2736, size: 64, offset: 7488)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2738)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !437, line: 135, size: 1024, align: 512, elements: !2739)
!2739 = !{!2740, !2744, !2745, !2752, !2758, !2762, !2766, !2770, !2771, !2775, !2779, !2784, !2788}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2738, file: !437, line: 136, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!214, !439, !7}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2738, file: !437, line: 137, baseType: !2741, size: 64, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2738, file: !437, line: 138, baseType: !2746, size: 64, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!214, !2749, !2751}
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2738, file: !437, line: 139, baseType: !2753, size: 64, offset: 192)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!214, !2749, !7, !280, !2756}
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2738, file: !437, line: 141, baseType: !2759, size: 64, offset: 256)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!214, !2749}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2738, file: !437, line: 142, baseType: !2763, size: 64, offset: 320)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!214, !439}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2738, file: !437, line: 143, baseType: !2767, size: 64, offset: 384)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{null, !439}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2738, file: !437, line: 144, baseType: !2767, size: 64, offset: 448)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2738, file: !437, line: 145, baseType: !2772, size: 64, offset: 512)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{null, !439, !483}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2738, file: !437, line: 146, baseType: !2776, size: 64, offset: 576)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!333, !439, !333, !214}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2738, file: !437, line: 147, baseType: !2780, size: 64, offset: 640)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!435, !2783}
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2738, file: !437, line: 148, baseType: !2785, size: 64, offset: 704)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!214, !601, !216}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2738, file: !437, line: 149, baseType: !2789, size: 64, offset: 768)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!439, !439, !2792}
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !652, file: !77, line: 1500, baseType: !214, size: 32, offset: 7552)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !652, file: !77, line: 1502, baseType: !2796, size: 448, offset: 7616)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2441, line: 60, size: 448, elements: !2797)
!2797 = !{!2798, !2803, !2804, !2805, !2806, !2807, !2808}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2796, file: !2441, line: 61, baseType: !2799, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!207, !2802, !2439}
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2796, file: !2441, line: 63, baseType: !2799, size: 64, offset: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2796, file: !2441, line: 66, baseType: !368, size: 64, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2796, file: !2441, line: 67, baseType: !214, size: 32, offset: 192)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2796, file: !2441, line: 68, baseType: !7, size: 32, offset: 224)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2796, file: !2441, line: 71, baseType: !244, size: 128, offset: 256)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2796, file: !2441, line: 77, baseType: !2809, size: 64, offset: 384)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !652, file: !77, line: 1505, baseType: !821, size: 64, offset: 8064)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !652, file: !77, line: 1508, baseType: !821, size: 64, offset: 8128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !652, file: !77, line: 1511, baseType: !214, size: 32, offset: 8192)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !652, file: !77, line: 1514, baseType: !957, size: 32, offset: 8224)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !652, file: !77, line: 1517, baseType: !2815, size: 64, offset: 8256)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1981, line: 18, flags: DIFlagFwdDecl)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !652, file: !77, line: 1518, baseType: !689, size: 64, offset: 8320)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !652, file: !77, line: 1525, baseType: !1737, size: 64, offset: 8384)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !652, file: !77, line: 1532, baseType: !2820, size: 64, offset: 8448)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2821, line: 52, size: 64, elements: !2822)
!2821 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2822 = !{!2823}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2820, file: !2821, line: 53, baseType: !2824, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2821, line: 40, size: 256, elements: !2826)
!2826 = !{!2827, !2828, !2833}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2825, file: !2821, line: 42, baseType: !292)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2825, file: !2821, line: 44, baseType: !2829, size: 192)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2821, line: 28, size: 192, elements: !2830)
!2830 = !{!2831, !2832}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2829, file: !2821, line: 29, baseType: !244, size: 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2829, file: !2821, line: 31, baseType: !368, size: 64, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2825, file: !2821, line: 49, baseType: !368, size: 64, offset: 192)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !652, file: !77, line: 1533, baseType: !2820, size: 64, offset: 8512)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !652, file: !77, line: 1534, baseType: !422, size: 128, align: 64, offset: 8576)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !652, file: !77, line: 1535, baseType: !1980, size: 256, offset: 8704)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !652, file: !77, line: 1537, baseType: !1221, size: 192, offset: 8960)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !652, file: !77, line: 1542, baseType: !214, size: 32, offset: 9152)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !652, file: !77, line: 1545, baseType: !292, offset: 9184)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !652, file: !77, line: 1546, baseType: !244, size: 128, offset: 9216)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !652, file: !77, line: 1548, baseType: !292, offset: 9344)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !652, file: !77, line: 1549, baseType: !244, size: 128, offset: 9344)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !484, file: !77, line: 624, baseType: !788, size: 64, offset: 256)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !484, file: !77, line: 631, baseType: !207, size: 64, offset: 320)
!2845 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !77, line: 639, baseType: !2846, size: 32, offset: 384)
!2846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !77, line: 639, size: 32, elements: !2847)
!2847 = !{!2848, !2850}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2846, file: !77, line: 640, baseType: !2849, size: 32)
!2849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2846, file: !77, line: 641, baseType: !7, size: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !484, file: !77, line: 643, baseType: !565, size: 32, offset: 416)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !484, file: !77, line: 644, baseType: !583, size: 64, offset: 448)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !484, file: !77, line: 645, baseType: !587, size: 128, offset: 512)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !484, file: !77, line: 646, baseType: !587, size: 128, offset: 640)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !484, file: !77, line: 647, baseType: !587, size: 128, offset: 768)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !484, file: !77, line: 648, baseType: !292, offset: 896)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !484, file: !77, line: 649, baseType: !270, size: 16, offset: 896)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !484, file: !77, line: 650, baseType: !1384, size: 8, offset: 912)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !484, file: !77, line: 651, baseType: !1384, size: 8, offset: 920)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !484, file: !77, line: 652, baseType: !2613, size: 64, offset: 960)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !484, file: !77, line: 659, baseType: !207, size: 64, offset: 1024)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !484, file: !77, line: 660, baseType: !817, size: 256, offset: 1088)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !484, file: !77, line: 662, baseType: !207, size: 64, offset: 1344)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !484, file: !77, line: 663, baseType: !207, size: 64, offset: 1408)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !484, file: !77, line: 665, baseType: !693, size: 128, offset: 1472)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !484, file: !77, line: 666, baseType: !244, size: 128, offset: 1600)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !484, file: !77, line: 675, baseType: !244, size: 128, offset: 1728)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !484, file: !77, line: 676, baseType: !244, size: 128, offset: 1856)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !484, file: !77, line: 677, baseType: !244, size: 128, offset: 1984)
!2870 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !77, line: 678, baseType: !2871, size: 128, offset: 2112)
!2871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !77, line: 678, size: 128, elements: !2872)
!2872 = !{!2873, !2874}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2871, file: !77, line: 679, baseType: !689, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2871, file: !77, line: 680, baseType: !422, size: 128, align: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !484, file: !77, line: 682, baseType: !823, size: 64, offset: 2240)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !484, file: !77, line: 683, baseType: !823, size: 64, offset: 2304)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !484, file: !77, line: 684, baseType: !209, size: 32, offset: 2368)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !484, file: !77, line: 685, baseType: !209, size: 32, offset: 2400)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !484, file: !77, line: 686, baseType: !209, size: 32, offset: 2432)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !484, file: !77, line: 688, baseType: !209, size: 32, offset: 2464)
!2881 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !77, line: 690, baseType: !2882, size: 64, offset: 2496)
!2882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !77, line: 690, size: 64, elements: !2883)
!2883 = !{!2884, !3107}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2882, file: !77, line: 691, baseType: !2885, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2887)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !77, line: 1822, size: 2048, elements: !2888)
!2888 = !{!2889, !2890, !2894, !2899, !2903, !2904, !2905, !2909, !2922, !2923, !2931, !2935, !2936, !2940, !2941, !2945, !2950, !2951, !2955, !2959, !3067, !3071, !3072, !3076, !3077, !3081, !3085, !3090, !3094, !3098, !3102, !3106}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2887, file: !77, line: 1823, baseType: !684, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2887, file: !77, line: 1824, baseType: !2891, size: 64, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!583, !409, !583, !214}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2887, file: !77, line: 1825, baseType: !2895, size: 64, offset: 128)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!364, !409, !333, !379, !2898}
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2887, file: !77, line: 1826, baseType: !2900, size: 64, offset: 192)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!364, !409, !280, !379, !2898}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2887, file: !77, line: 1827, baseType: !894, size: 64, offset: 256)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2887, file: !77, line: 1828, baseType: !894, size: 64, offset: 320)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2887, file: !77, line: 1829, baseType: !2906, size: 64, offset: 384)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!214, !897, !216}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2887, file: !77, line: 1830, baseType: !2910, size: 64, offset: 448)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!214, !409, !2913}
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !77, line: 1776, size: 128, elements: !2915)
!2915 = !{!2916, !2921}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2914, file: !77, line: 1777, baseType: !2917, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !77, line: 1773, baseType: !2918)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!214, !2913, !280, !214, !583, !476, !7}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2914, file: !77, line: 1778, baseType: !583, size: 64, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2887, file: !77, line: 1831, baseType: !2910, size: 64, offset: 512)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2887, file: !77, line: 1832, baseType: !2924, size: 64, offset: 576)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!2927, !409, !2929}
!2927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2928, line: 52, baseType: !7)
!2928 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !77, line: 56, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2887, file: !77, line: 1833, baseType: !2932, size: 64, offset: 640)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!368, !409, !7, !207}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2887, file: !77, line: 1834, baseType: !2932, size: 64, offset: 704)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2887, file: !77, line: 1835, baseType: !2937, size: 64, offset: 768)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!214, !409, !1029}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2887, file: !77, line: 1836, baseType: !207, size: 64, offset: 832)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2887, file: !77, line: 1837, baseType: !2942, size: 64, offset: 896)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!214, !483, !409}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2887, file: !77, line: 1838, baseType: !2946, size: 64, offset: 960)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!214, !409, !2949}
!2949 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !77, line: 1007, baseType: !197)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2887, file: !77, line: 1839, baseType: !2942, size: 64, offset: 1024)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2887, file: !77, line: 1840, baseType: !2952, size: 64, offset: 1088)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!214, !409, !583, !583, !214}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2887, file: !77, line: 1841, baseType: !2956, size: 64, offset: 1152)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!214, !214, !409, !214}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2887, file: !77, line: 1842, baseType: !2960, size: 64, offset: 1216)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!214, !409, !214, !2963}
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !77, line: 1062, size: 1664, elements: !2965)
!2965 = !{!2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2997, !2998, !2999, !3012, !3043}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2964, file: !77, line: 1063, baseType: !2963, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2964, file: !77, line: 1064, baseType: !244, size: 128, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2964, file: !77, line: 1065, baseType: !693, size: 128, offset: 192)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2964, file: !77, line: 1066, baseType: !244, size: 128, offset: 320)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2964, file: !77, line: 1069, baseType: !244, size: 128, offset: 448)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2964, file: !77, line: 1072, baseType: !2949, size: 64, offset: 576)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2964, file: !77, line: 1073, baseType: !7, size: 32, offset: 640)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2964, file: !77, line: 1074, baseType: !262, size: 8, offset: 672)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2964, file: !77, line: 1075, baseType: !7, size: 32, offset: 704)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2964, file: !77, line: 1076, baseType: !214, size: 32, offset: 736)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2964, file: !77, line: 1077, baseType: !1505, size: 128, offset: 768)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2964, file: !77, line: 1078, baseType: !409, size: 64, offset: 896)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2964, file: !77, line: 1079, baseType: !583, size: 64, offset: 960)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2964, file: !77, line: 1080, baseType: !583, size: 64, offset: 1024)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2964, file: !77, line: 1082, baseType: !2981, size: 64, offset: 1088)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !77, line: 1314, size: 320, elements: !2983)
!2983 = !{!2984, !2992, !2993, !2994, !2995, !2996}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2982, file: !77, line: 1315, baseType: !2985)
!2985 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2986, line: 20, baseType: !2987)
!2986 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2986, line: 11, elements: !2988)
!2988 = !{!2989}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2987, file: !2986, line: 12, baseType: !2990)
!2990 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !304, line: 33, baseType: !2991)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !304, line: 31, elements: !306)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2982, file: !77, line: 1316, baseType: !214, size: 32)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2982, file: !77, line: 1317, baseType: !214, size: 32, offset: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2982, file: !77, line: 1318, baseType: !2981, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2982, file: !77, line: 1319, baseType: !409, size: 64, offset: 128)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2982, file: !77, line: 1320, baseType: !422, size: 128, align: 64, offset: 192)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2964, file: !77, line: 1084, baseType: !207, size: 64, offset: 1152)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2964, file: !77, line: 1085, baseType: !207, size: 64, offset: 1216)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2964, file: !77, line: 1087, baseType: !3000, size: 64, offset: 1280)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3002)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !77, line: 1011, size: 128, elements: !3003)
!3003 = !{!3004, !3008}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3002, file: !77, line: 1012, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{null, !2963, !2963}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3002, file: !77, line: 1013, baseType: !3009, size: 64, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{null, !2963}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2964, file: !77, line: 1088, baseType: !3013, size: 64, offset: 1344)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3015)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !77, line: 1016, size: 512, elements: !3016)
!3016 = !{!3017, !3021, !3025, !3026, !3030, !3034, !3038, !3042}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3015, file: !77, line: 1017, baseType: !3018, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!2949, !2949}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3015, file: !77, line: 1018, baseType: !3022, size: 64, offset: 64)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{null, !2949}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3015, file: !77, line: 1019, baseType: !3009, size: 64, offset: 128)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3015, file: !77, line: 1020, baseType: !3027, size: 64, offset: 192)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!214, !2963, !214}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3015, file: !77, line: 1021, baseType: !3031, size: 64, offset: 256)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!216, !2963}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3015, file: !77, line: 1022, baseType: !3035, size: 64, offset: 320)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!214, !2963, !214, !247}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3015, file: !77, line: 1023, baseType: !3039, size: 64, offset: 384)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{null, !2963, !871}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3015, file: !77, line: 1024, baseType: !3031, size: 64, offset: 448)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2964, file: !77, line: 1097, baseType: !3044, size: 256, offset: 1408)
!3044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2964, file: !77, line: 1089, size: 256, elements: !3045)
!3045 = !{!3046, !3055, !3061}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3044, file: !77, line: 1090, baseType: !3047, size: 256)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3048, line: 10, size: 256, elements: !3049)
!3048 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3049 = !{!3050, !3051, !3054}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3047, file: !3048, line: 11, baseType: !472, size: 32)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3047, file: !3048, line: 12, baseType: !3052, size: 64, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3048, line: 5, flags: DIFlagFwdDecl)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3047, file: !3048, line: 13, baseType: !244, size: 128, offset: 128)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3044, file: !77, line: 1091, baseType: !3056, size: 64)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3048, line: 17, size: 64, elements: !3057)
!3057 = !{!3058}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3056, file: !3048, line: 18, baseType: !3059, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3048, line: 16, flags: DIFlagFwdDecl)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3044, file: !77, line: 1096, baseType: !3062, size: 192)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3044, file: !77, line: 1092, size: 192, elements: !3063)
!3063 = !{!3064, !3065, !3066}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3062, file: !77, line: 1093, baseType: !244, size: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3062, file: !77, line: 1094, baseType: !214, size: 32, offset: 128)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3062, file: !77, line: 1095, baseType: !7, size: 32, offset: 160)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2887, file: !77, line: 1843, baseType: !3068, size: 64, offset: 1280)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!364, !409, !775, !214, !379, !2898, !214}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2887, file: !77, line: 1844, baseType: !1149, size: 64, offset: 1344)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2887, file: !77, line: 1845, baseType: !3073, size: 64, offset: 1408)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!214, !214}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2887, file: !77, line: 1846, baseType: !2960, size: 64, offset: 1472)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2887, file: !77, line: 1847, baseType: !3078, size: 64, offset: 1536)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!364, !2121, !409, !2898, !379, !7}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2887, file: !77, line: 1848, baseType: !3082, size: 64, offset: 1600)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!364, !409, !2898, !2121, !379, !7}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2887, file: !77, line: 1849, baseType: !3086, size: 64, offset: 1664)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!214, !409, !368, !3089, !871}
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2887, file: !77, line: 1850, baseType: !3091, size: 64, offset: 1728)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!368, !409, !214, !583, !583}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2887, file: !77, line: 1852, baseType: !3095, size: 64, offset: 1792)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{null, !765, !409}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2887, file: !77, line: 1856, baseType: !3099, size: 64, offset: 1856)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!364, !409, !583, !409, !583, !379, !7}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2887, file: !77, line: 1858, baseType: !3103, size: 64, offset: 1920)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!583, !409, !583, !409, !583, !583, !7}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2887, file: !77, line: 1861, baseType: !2952, size: 64, offset: 1984)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2882, file: !77, line: 692, baseType: !718, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !484, file: !77, line: 694, baseType: !3109, size: 64, offset: 2560)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !77, line: 1100, size: 384, elements: !3111)
!3111 = !{!3112, !3113, !3114, !3115}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3110, file: !77, line: 1101, baseType: !292)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3110, file: !77, line: 1102, baseType: !244, size: 128)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3110, file: !77, line: 1103, baseType: !244, size: 128, offset: 128)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3110, file: !77, line: 1104, baseType: !244, size: 128, offset: 256)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !484, file: !77, line: 695, baseType: !789, size: 1216, align: 64, offset: 2624)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !484, file: !77, line: 696, baseType: !244, size: 128, offset: 3840)
!3118 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !77, line: 697, baseType: !3119, size: 64, offset: 3968)
!3119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !77, line: 697, size: 64, elements: !3120)
!3120 = !{!3121, !3122, !3123, !3126, !3127}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3119, file: !77, line: 698, baseType: !2121, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3119, file: !77, line: 699, baseType: !2638, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3119, file: !77, line: 700, baseType: !3124, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !77, line: 700, flags: DIFlagFwdDecl)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3119, file: !77, line: 701, baseType: !333, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3119, file: !77, line: 702, baseType: !7, size: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !484, file: !77, line: 705, baseType: !473, size: 32, offset: 4032)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !484, file: !77, line: 708, baseType: !473, size: 32, offset: 4064)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !484, file: !77, line: 709, baseType: !2720, size: 64, offset: 4096)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !484, file: !77, line: 720, baseType: !197, size: 64, offset: 4160)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !440, file: !437, line: 98, baseType: !3133, size: 256, offset: 448)
!3133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 256, elements: !2253)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !440, file: !437, line: 101, baseType: !3135, size: 32, offset: 704)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3136, line: 25, size: 32, elements: !3137)
!3136 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3137 = !{!3138}
!3138 = !DIDerivedType(tag: DW_TAG_member, scope: !3135, file: !3136, line: 26, baseType: !3139, size: 32)
!3139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3135, file: !3136, line: 26, size: 32, elements: !3140)
!3140 = !{!3141}
!3141 = !DIDerivedType(tag: DW_TAG_member, scope: !3139, file: !3136, line: 30, baseType: !3142, size: 32)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3139, file: !3136, line: 30, size: 32, elements: !3143)
!3143 = !{!3144, !3145}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3142, file: !3136, line: 31, baseType: !292)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3142, file: !3136, line: 32, baseType: !214, size: 32)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !440, file: !437, line: 102, baseType: !2736, size: 64, offset: 768)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !440, file: !437, line: 103, baseType: !651, size: 64, offset: 832)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !440, file: !437, line: 104, baseType: !207, size: 64, offset: 896)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !440, file: !437, line: 105, baseType: !197, size: 64, offset: 960)
!3150 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !437, line: 107, baseType: !3151, size: 128, offset: 1024)
!3151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !437, line: 107, size: 128, elements: !3152)
!3152 = !{!3153, !3154}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3151, file: !437, line: 108, baseType: !244, size: 128)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3151, file: !437, line: 109, baseType: !3155, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !440, file: !437, line: 111, baseType: !244, size: 128, offset: 1152)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !440, file: !437, line: 112, baseType: !244, size: 128, offset: 1280)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !440, file: !437, line: 120, baseType: !3159, size: 128, offset: 1408)
!3159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !437, line: 116, size: 128, elements: !3160)
!3160 = !{!3161, !3162, !3163}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3159, file: !437, line: 117, baseType: !693, size: 128)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3159, file: !437, line: 118, baseType: !454, size: 128)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3159, file: !437, line: 119, baseType: !422, size: 128, align: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !410, file: !77, line: 922, baseType: !483, size: 64, offset: 256)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !410, file: !77, line: 923, baseType: !2885, size: 64, offset: 320)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !410, file: !77, line: 929, baseType: !292, offset: 384)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !410, file: !77, line: 930, baseType: !76, size: 32, offset: 384)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !410, file: !77, line: 931, baseType: !821, size: 64, offset: 448)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !410, file: !77, line: 932, baseType: !7, size: 32, offset: 512)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !410, file: !77, line: 933, baseType: !2732, size: 32, offset: 544)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !410, file: !77, line: 934, baseType: !1221, size: 192, offset: 576)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !410, file: !77, line: 935, baseType: !583, size: 64, offset: 768)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !410, file: !77, line: 936, baseType: !3174, size: 192, offset: 832)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !77, line: 885, size: 192, elements: !3175)
!3175 = !{!3176, !3177, !3178, !3179, !3180, !3181}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3174, file: !77, line: 886, baseType: !2985)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3174, file: !77, line: 887, baseType: !1495, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3174, file: !77, line: 888, baseType: !85, size: 32, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3174, file: !77, line: 889, baseType: !489, size: 32, offset: 96)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3174, file: !77, line: 889, baseType: !489, size: 32, offset: 128)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3174, file: !77, line: 890, baseType: !214, size: 32, offset: 160)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !410, file: !77, line: 937, baseType: !1571, size: 64, offset: 1024)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !410, file: !77, line: 938, baseType: !3184, size: 256, offset: 1088)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !77, line: 896, size: 256, elements: !3185)
!3185 = !{!3186, !3187, !3188, !3189, !3190, !3191}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3184, file: !77, line: 897, baseType: !207, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3184, file: !77, line: 898, baseType: !7, size: 32, offset: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3184, file: !77, line: 899, baseType: !7, size: 32, offset: 96)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3184, file: !77, line: 902, baseType: !7, size: 32, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3184, file: !77, line: 903, baseType: !7, size: 32, offset: 160)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3184, file: !77, line: 904, baseType: !583, size: 64, offset: 192)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !410, file: !77, line: 940, baseType: !476, size: 64, offset: 1344)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !410, file: !77, line: 945, baseType: !197, size: 64, offset: 1408)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !410, file: !77, line: 949, baseType: !244, size: 128, offset: 1472)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !410, file: !77, line: 950, baseType: !244, size: 128, offset: 1600)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !410, file: !77, line: 952, baseType: !788, size: 64, offset: 1728)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !410, file: !77, line: 953, baseType: !957, size: 32, offset: 1792)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !410, file: !77, line: 954, baseType: !957, size: 32, offset: 1824)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !400, file: !358, line: 174, baseType: !406, size: 64, offset: 320)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !400, file: !358, line: 176, baseType: !3201, size: 64, offset: 384)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!214, !409, !285, !399, !1029}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !388, file: !358, line: 90, baseType: !383, size: 64, offset: 192)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !388, file: !358, line: 91, baseType: !3206, size: 64, offset: 256)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !348, file: !277, line: 143, baseType: !3208, size: 64, offset: 256)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!3211, !285}
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3213)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !94, line: 39, size: 384, elements: !3214)
!3214 = !{!3215, !3216, !3220, !3224, !3230, !3234}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3213, file: !94, line: 40, baseType: !93, size: 32)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3213, file: !94, line: 41, baseType: !3217, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!216}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3213, file: !94, line: 42, baseType: !3221, size: 64, offset: 128)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!197}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3213, file: !94, line: 43, baseType: !3225, size: 64, offset: 192)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!2150, !3228}
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !94, line: 19, flags: DIFlagFwdDecl)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3213, file: !94, line: 44, baseType: !3231, size: 64, offset: 256)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!2150}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3213, file: !94, line: 45, baseType: !522, size: 64, offset: 320)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !348, file: !277, line: 144, baseType: !3236, size: 64, offset: 320)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!2150, !285}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !348, file: !277, line: 145, baseType: !3240, size: 64, offset: 384)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{null, !285, !3243, !3244}
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !276, file: !277, line: 70, baseType: !3246, size: 64, offset: 384)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3248, line: 123, size: 1024, elements: !3249)
!3248 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!3249 = !{!3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3378, !3379, !3380, !3381, !3382}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3247, file: !3248, line: 124, baseType: !209, size: 32)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3247, file: !3248, line: 125, baseType: !209, size: 32, offset: 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3247, file: !3248, line: 135, baseType: !3246, size: 64, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3247, file: !3248, line: 136, baseType: !280, size: 64, offset: 128)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3247, file: !3248, line: 138, baseType: !810, size: 192, align: 64, offset: 192)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3247, file: !3248, line: 140, baseType: !2150, size: 64, offset: 384)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3247, file: !3248, line: 141, baseType: !7, size: 32, offset: 448)
!3257 = !DIDerivedType(tag: DW_TAG_member, scope: !3247, file: !3248, line: 142, baseType: !3258, size: 256, offset: 512)
!3258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3247, file: !3248, line: 142, size: 256, elements: !3259)
!3259 = !{!3260, !3306, !3310}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3258, file: !3248, line: 143, baseType: !3261, size: 192)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3248, line: 91, size: 192, elements: !3262)
!3262 = !{!3263, !3264, !3265}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3261, file: !3248, line: 92, baseType: !207, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3261, file: !3248, line: 94, baseType: !806, size: 64, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3261, file: !3248, line: 100, baseType: !3266, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3248, line: 180, size: 704, elements: !3268)
!3268 = !{!3269, !3270, !3271, !3278, !3279, !3280, !3304, !3305}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3267, file: !3248, line: 182, baseType: !3246, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3267, file: !3248, line: 183, baseType: !7, size: 32, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3267, file: !3248, line: 186, baseType: !3272, size: 192, offset: 128)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3273, line: 19, size: 192, elements: !3274)
!3273 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3274 = !{!3275, !3276, !3277}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3272, file: !3273, line: 20, baseType: !793, size: 128)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3272, file: !3273, line: 21, baseType: !7, size: 32, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3272, file: !3273, line: 22, baseType: !7, size: 32, offset: 160)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3267, file: !3248, line: 187, baseType: !472, size: 32, offset: 320)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3267, file: !3248, line: 188, baseType: !472, size: 32, offset: 352)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3267, file: !3248, line: 189, baseType: !3281, size: 64, offset: 384)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !3248, line: 168, size: 320, elements: !3283)
!3283 = !{!3284, !3288, !3292, !3296, !3300}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3282, file: !3248, line: 169, baseType: !3285, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!214, !765, !3266}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3282, file: !3248, line: 171, baseType: !3289, size: 64, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!214, !3246, !280, !374}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3282, file: !3248, line: 173, baseType: !3293, size: 64, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!214, !3246}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3282, file: !3248, line: 174, baseType: !3297, size: 64, offset: 192)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!214, !3246, !3246, !280}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3282, file: !3248, line: 176, baseType: !3301, size: 64, offset: 256)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!214, !765, !3246, !3266}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3267, file: !3248, line: 192, baseType: !244, size: 128, offset: 448)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3267, file: !3248, line: 194, baseType: !1505, size: 128, offset: 576)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3258, file: !3248, line: 144, baseType: !3307, size: 64)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3248, line: 103, size: 64, elements: !3308)
!3308 = !{!3309}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3307, file: !3248, line: 104, baseType: !3246, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3258, file: !3248, line: 145, baseType: !3311, size: 256)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3248, line: 107, size: 256, elements: !3312)
!3312 = !{!3313, !3373, !3376, !3377}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3311, file: !3248, line: 108, baseType: !3314, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3316)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3248, line: 217, size: 768, elements: !3317)
!3317 = !{!3318, !3338, !3342, !3346, !3350, !3354, !3358, !3362, !3363, !3364, !3365, !3369}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3316, file: !3248, line: 222, baseType: !3319, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!214, !3322}
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3248, line: 197, size: 1088, elements: !3324)
!3324 = !{!3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3323, file: !3248, line: 199, baseType: !3246, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3323, file: !3248, line: 200, baseType: !409, size: 64, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3323, file: !3248, line: 201, baseType: !765, size: 64, offset: 128)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3323, file: !3248, line: 202, baseType: !197, size: 64, offset: 192)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3323, file: !3248, line: 205, baseType: !1221, size: 192, offset: 256)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3323, file: !3248, line: 206, baseType: !1221, size: 192, offset: 448)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3323, file: !3248, line: 207, baseType: !214, size: 32, offset: 640)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3323, file: !3248, line: 208, baseType: !244, size: 128, offset: 704)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3323, file: !3248, line: 209, baseType: !333, size: 64, offset: 832)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3323, file: !3248, line: 211, baseType: !379, size: 64, offset: 896)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3323, file: !3248, line: 212, baseType: !216, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3323, file: !3248, line: 213, baseType: !216, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3323, file: !3248, line: 214, baseType: !1057, size: 64, offset: 1024)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3316, file: !3248, line: 223, baseType: !3339, size: 64, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{null, !3322}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3316, file: !3248, line: 236, baseType: !3343, size: 64, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!214, !765, !197}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3316, file: !3248, line: 238, baseType: !3347, size: 64, offset: 192)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!197, !765, !2898}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3316, file: !3248, line: 239, baseType: !3351, size: 64, offset: 256)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!197, !765, !197, !2898}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3316, file: !3248, line: 240, baseType: !3355, size: 64, offset: 320)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{null, !765, !197}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3316, file: !3248, line: 242, baseType: !3359, size: 64, offset: 384)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!364, !3322, !333, !379, !583}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3316, file: !3248, line: 252, baseType: !379, size: 64, offset: 448)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3316, file: !3248, line: 259, baseType: !216, size: 8, offset: 512)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3316, file: !3248, line: 260, baseType: !3359, size: 64, offset: 576)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3316, file: !3248, line: 263, baseType: !3366, size: 64, offset: 640)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!2927, !3322, !2929}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3316, file: !3248, line: 266, baseType: !3370, size: 64, offset: 704)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!214, !3322, !1029}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3311, file: !3248, line: 109, baseType: !3374, size: 64, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3248, line: 31, flags: DIFlagFwdDecl)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3311, file: !3248, line: 110, baseType: !583, size: 64, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3311, file: !3248, line: 111, baseType: !3246, size: 64, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3247, file: !3248, line: 148, baseType: !197, size: 64, offset: 768)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3247, file: !3248, line: 154, baseType: !476, size: 64, offset: 832)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3247, file: !3248, line: 156, baseType: !270, size: 16, offset: 896)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3247, file: !3248, line: 157, baseType: !374, size: 16, offset: 912)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3247, file: !3248, line: 158, baseType: !3383, size: 64, offset: 960)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3248, line: 32, flags: DIFlagFwdDecl)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !276, file: !277, line: 71, baseType: !3386, size: 32, offset: 448)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3387, line: 19, size: 32, elements: !3388)
!3387 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3388 = !{!3389}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3386, file: !3387, line: 20, baseType: !1262, size: 32)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !276, file: !277, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !276, file: !277, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !276, file: !277, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !276, file: !277, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !276, file: !277, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !273, file: !106, line: 463, baseType: !3396, size: 64, offset: 512)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !273, file: !106, line: 465, baseType: !3398, size: 64, offset: 576)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !106, line: 36, flags: DIFlagFwdDecl)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !273, file: !106, line: 467, baseType: !280, size: 64, offset: 640)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !273, file: !106, line: 468, baseType: !3402, size: 64, offset: 704)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3404)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !106, line: 87, size: 384, elements: !3405)
!3405 = !{!3406, !3407, !3408, !3412, !3417, !3421}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3404, file: !106, line: 88, baseType: !280, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3404, file: !106, line: 89, baseType: !385, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3404, file: !106, line: 90, baseType: !3409, size: 64, offset: 128)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!214, !3396, !328}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3404, file: !106, line: 91, baseType: !3413, size: 64, offset: 192)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!333, !3396, !3416, !3243, !3244}
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3404, file: !106, line: 93, baseType: !3418, size: 64, offset: 256)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{null, !3396}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3404, file: !106, line: 95, baseType: !3422, size: 64, offset: 320)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3424)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !113, line: 278, size: 1472, elements: !3425)
!3425 = !{!3426, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3424, file: !113, line: 279, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!214, !3396}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3424, file: !113, line: 280, baseType: !3418, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3424, file: !113, line: 281, baseType: !3427, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3424, file: !113, line: 282, baseType: !3427, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3424, file: !113, line: 283, baseType: !3427, size: 64, offset: 256)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3424, file: !113, line: 284, baseType: !3427, size: 64, offset: 320)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3424, file: !113, line: 285, baseType: !3427, size: 64, offset: 384)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3424, file: !113, line: 286, baseType: !3427, size: 64, offset: 448)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3424, file: !113, line: 287, baseType: !3427, size: 64, offset: 512)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3424, file: !113, line: 288, baseType: !3427, size: 64, offset: 576)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3424, file: !113, line: 289, baseType: !3427, size: 64, offset: 640)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3424, file: !113, line: 290, baseType: !3427, size: 64, offset: 704)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3424, file: !113, line: 291, baseType: !3427, size: 64, offset: 768)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3424, file: !113, line: 292, baseType: !3427, size: 64, offset: 832)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3424, file: !113, line: 293, baseType: !3427, size: 64, offset: 896)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3424, file: !113, line: 294, baseType: !3427, size: 64, offset: 960)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3424, file: !113, line: 295, baseType: !3427, size: 64, offset: 1024)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3424, file: !113, line: 296, baseType: !3427, size: 64, offset: 1088)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3424, file: !113, line: 297, baseType: !3427, size: 64, offset: 1152)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3424, file: !113, line: 298, baseType: !3427, size: 64, offset: 1216)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3424, file: !113, line: 299, baseType: !3427, size: 64, offset: 1280)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3424, file: !113, line: 300, baseType: !3427, size: 64, offset: 1344)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3424, file: !113, line: 301, baseType: !3427, size: 64, offset: 1408)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !273, file: !106, line: 470, baseType: !3453, size: 64, offset: 768)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3455, line: 82, size: 1408, elements: !3456)
!3455 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3456 = !{!3457, !3458, !3459, !3460, !3461, !3462, !3463, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3538, !3541, !3542}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3454, file: !3455, line: 83, baseType: !280, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3454, file: !3455, line: 84, baseType: !280, size: 64, offset: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3454, file: !3455, line: 85, baseType: !3396, size: 64, offset: 128)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3454, file: !3455, line: 86, baseType: !385, size: 64, offset: 192)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3454, file: !3455, line: 87, baseType: !385, size: 64, offset: 256)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3454, file: !3455, line: 88, baseType: !385, size: 64, offset: 320)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3454, file: !3455, line: 90, baseType: !3464, size: 64, offset: 384)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!214, !3396, !3467}
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !100, line: 95, size: 1152, elements: !3469)
!3469 = !{!3470, !3471, !3472, !3473, !3474, !3475, !3476, !3489, !3502, !3503, !3504, !3505, !3506, !3514, !3515, !3516, !3517, !3518, !3519}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3468, file: !100, line: 96, baseType: !280, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3468, file: !100, line: 97, baseType: !3453, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3468, file: !100, line: 99, baseType: !684, size: 64, offset: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3468, file: !100, line: 100, baseType: !280, size: 64, offset: 192)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3468, file: !100, line: 102, baseType: !216, size: 8, offset: 256)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3468, file: !100, line: 103, baseType: !99, size: 32, offset: 288)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3468, file: !100, line: 105, baseType: !3477, size: 64, offset: 320)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3479)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3480, line: 262, size: 1600, elements: !3481)
!3480 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3481 = !{!3482, !3483, !3484, !3488}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3479, file: !3480, line: 263, baseType: !2723, size: 256)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3479, file: !3480, line: 264, baseType: !2723, size: 256, offset: 256)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3479, file: !3480, line: 265, baseType: !3485, size: 1024, offset: 512)
!3485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 1024, elements: !3486)
!3486 = !{!3487}
!3487 = !DISubrange(count: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3479, file: !3480, line: 266, baseType: !2150, size: 64, offset: 1536)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3468, file: !100, line: 106, baseType: !3490, size: 64, offset: 384)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3492)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3480, line: 210, size: 256, elements: !3493)
!3493 = !{!3494, !3498, !3500, !3501}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3492, file: !3480, line: 211, baseType: !3495, size: 72)
!3495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 72, elements: !3496)
!3496 = !{!3497}
!3497 = !DISubrange(count: 9)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3492, file: !3480, line: 212, baseType: !3499, size: 64, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3480, line: 14, baseType: !207)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3492, file: !3480, line: 213, baseType: !473, size: 32, offset: 192)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3492, file: !3480, line: 214, baseType: !473, size: 32, offset: 224)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3468, file: !100, line: 108, baseType: !3427, size: 64, offset: 448)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3468, file: !100, line: 109, baseType: !3418, size: 64, offset: 512)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3468, file: !100, line: 110, baseType: !3427, size: 64, offset: 576)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3468, file: !100, line: 111, baseType: !3418, size: 64, offset: 640)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3468, file: !100, line: 112, baseType: !3507, size: 64, offset: 704)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!214, !3396, !3510}
!3510 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !113, line: 52, baseType: !3511)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !113, line: 50, size: 32, elements: !3512)
!3512 = !{!3513}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3511, file: !113, line: 51, baseType: !214, size: 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3468, file: !100, line: 113, baseType: !3427, size: 64, offset: 768)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3468, file: !100, line: 114, baseType: !385, size: 64, offset: 832)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3468, file: !100, line: 115, baseType: !385, size: 64, offset: 896)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3468, file: !100, line: 117, baseType: !3422, size: 64, offset: 960)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3468, file: !100, line: 118, baseType: !3418, size: 64, offset: 1024)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3468, file: !100, line: 120, baseType: !3520, size: 64, offset: 1088)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !100, line: 120, flags: DIFlagFwdDecl)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3454, file: !3455, line: 91, baseType: !3409, size: 64, offset: 448)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3454, file: !3455, line: 92, baseType: !3427, size: 64, offset: 512)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3454, file: !3455, line: 93, baseType: !3418, size: 64, offset: 576)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3454, file: !3455, line: 94, baseType: !3427, size: 64, offset: 640)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3454, file: !3455, line: 95, baseType: !3418, size: 64, offset: 704)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3454, file: !3455, line: 97, baseType: !3427, size: 64, offset: 768)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3454, file: !3455, line: 98, baseType: !3427, size: 64, offset: 832)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3454, file: !3455, line: 100, baseType: !3507, size: 64, offset: 896)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3454, file: !3455, line: 101, baseType: !3427, size: 64, offset: 960)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3454, file: !3455, line: 103, baseType: !3427, size: 64, offset: 1024)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3454, file: !3455, line: 105, baseType: !3427, size: 64, offset: 1088)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3454, file: !3455, line: 107, baseType: !3422, size: 64, offset: 1152)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3454, file: !3455, line: 109, baseType: !3535, size: 64, offset: 1216)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3537)
!3537 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3455, line: 109, flags: DIFlagFwdDecl)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3454, file: !3455, line: 111, baseType: !3539, size: 64, offset: 1280)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3455, line: 111, flags: DIFlagFwdDecl)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3454, file: !3455, line: 112, baseType: !699, offset: 1344)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3454, file: !3455, line: 114, baseType: !216, size: 8, offset: 1344)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !273, file: !106, line: 471, baseType: !3467, size: 64, offset: 832)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !273, file: !106, line: 473, baseType: !197, size: 64, offset: 896)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !273, file: !106, line: 475, baseType: !197, size: 64, offset: 960)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !273, file: !106, line: 480, baseType: !1221, size: 192, offset: 1024)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !273, file: !106, line: 484, baseType: !3548, size: 576, offset: 1216)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !106, line: 361, size: 576, elements: !3549)
!3549 = !{!3550, !3551, !3552, !3553, !3554, !3555}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3548, file: !106, line: 362, baseType: !244, size: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3548, file: !106, line: 363, baseType: !244, size: 128, offset: 128)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3548, file: !106, line: 364, baseType: !244, size: 128, offset: 256)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3548, file: !106, line: 365, baseType: !244, size: 128, offset: 384)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3548, file: !106, line: 366, baseType: !216, size: 8, offset: 512)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3548, file: !106, line: 367, baseType: !105, size: 32, offset: 544)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !273, file: !106, line: 485, baseType: !3557, size: 2304, offset: 1792)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !113, line: 565, size: 2304, elements: !3558)
!3558 = !{!3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3654, !3658}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3557, file: !113, line: 566, baseType: !3510, size: 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3557, file: !113, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3557, file: !113, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3557, file: !113, line: 569, baseType: !216, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3557, file: !113, line: 570, baseType: !216, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3557, file: !113, line: 571, baseType: !216, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3557, file: !113, line: 572, baseType: !216, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3557, file: !113, line: 573, baseType: !216, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3557, file: !113, line: 574, baseType: !216, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3557, file: !113, line: 575, baseType: !216, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3557, file: !113, line: 576, baseType: !216, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3557, file: !113, line: 577, baseType: !472, size: 32, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3557, file: !113, line: 578, baseType: !292, offset: 96)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3557, file: !113, line: 580, baseType: !244, size: 128, offset: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3557, file: !113, line: 581, baseType: !1526, size: 192, offset: 256)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3557, file: !113, line: 582, baseType: !3575, size: 64, offset: 448)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3577, line: 43, size: 1472, elements: !3578)
!3577 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3578 = !{!3579, !3580, !3581, !3582, !3583, !3586, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3576, file: !3577, line: 44, baseType: !280, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3576, file: !3577, line: 45, baseType: !214, size: 32, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3576, file: !3577, line: 46, baseType: !244, size: 128, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3576, file: !3577, line: 47, baseType: !292, offset: 256)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3576, file: !3577, line: 48, baseType: !3584, size: 64, offset: 256)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !113, line: 533, flags: DIFlagFwdDecl)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3576, file: !3577, line: 49, baseType: !3587, size: 320, offset: 320)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3588, line: 11, size: 320, elements: !3589)
!3588 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3589 = !{!3590, !3591, !3592, !3597}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3587, file: !3588, line: 16, baseType: !693, size: 128)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3587, file: !3588, line: 17, baseType: !207, size: 64, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3587, file: !3588, line: 18, baseType: !3593, size: 64, offset: 192)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{null, !3596}
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3587, file: !3588, line: 19, baseType: !472, size: 32, offset: 256)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3576, file: !3577, line: 50, baseType: !207, size: 64, offset: 640)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3576, file: !3577, line: 51, baseType: !1332, size: 64, offset: 704)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3576, file: !3577, line: 52, baseType: !1332, size: 64, offset: 768)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3576, file: !3577, line: 53, baseType: !1332, size: 64, offset: 832)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3576, file: !3577, line: 54, baseType: !1332, size: 64, offset: 896)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3576, file: !3577, line: 55, baseType: !1332, size: 64, offset: 960)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3576, file: !3577, line: 56, baseType: !207, size: 64, offset: 1024)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3576, file: !3577, line: 57, baseType: !207, size: 64, offset: 1088)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3576, file: !3577, line: 58, baseType: !207, size: 64, offset: 1152)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3576, file: !3577, line: 59, baseType: !207, size: 64, offset: 1216)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3576, file: !3577, line: 60, baseType: !207, size: 64, offset: 1280)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3576, file: !3577, line: 61, baseType: !3396, size: 64, offset: 1344)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3576, file: !3577, line: 62, baseType: !216, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3576, file: !3577, line: 63, baseType: !216, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3557, file: !113, line: 583, baseType: !216, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3557, file: !113, line: 584, baseType: !216, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3557, file: !113, line: 585, baseType: !216, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3557, file: !113, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3557, file: !113, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3557, file: !113, line: 592, baseType: !1324, size: 512, offset: 576)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3557, file: !113, line: 593, baseType: !476, size: 64, offset: 1088)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3557, file: !113, line: 594, baseType: !1980, size: 256, offset: 1152)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3557, file: !113, line: 595, baseType: !1505, size: 128, offset: 1408)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3557, file: !113, line: 596, baseType: !3584, size: 64, offset: 1536)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3557, file: !113, line: 597, baseType: !209, size: 32, offset: 1600)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3557, file: !113, line: 598, baseType: !209, size: 32, offset: 1632)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3557, file: !113, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3557, file: !113, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3557, file: !113, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3557, file: !113, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3557, file: !113, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3557, file: !113, line: 604, baseType: !216, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3557, file: !113, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3557, file: !113, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3557, file: !113, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3557, file: !113, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3557, file: !113, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3557, file: !113, line: 610, baseType: !7, size: 32, offset: 1696)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3557, file: !113, line: 611, baseType: !112, size: 32, offset: 1728)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3557, file: !113, line: 612, baseType: !120, size: 32, offset: 1760)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3557, file: !113, line: 613, baseType: !214, size: 32, offset: 1792)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3557, file: !113, line: 614, baseType: !214, size: 32, offset: 1824)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3557, file: !113, line: 615, baseType: !476, size: 64, offset: 1856)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3557, file: !113, line: 616, baseType: !476, size: 64, offset: 1920)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3557, file: !113, line: 617, baseType: !476, size: 64, offset: 1984)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3557, file: !113, line: 618, baseType: !476, size: 64, offset: 2048)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3557, file: !113, line: 620, baseType: !3645, size: 64, offset: 2112)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !113, line: 536, size: 256, elements: !3647)
!3647 = !{!3648, !3649, !3650, !3651}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3646, file: !113, line: 537, baseType: !292)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3646, file: !113, line: 538, baseType: !7, size: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3646, file: !113, line: 540, baseType: !244, size: 128, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3646, file: !113, line: 543, baseType: !3652, size: 64, offset: 192)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !113, line: 534, flags: DIFlagFwdDecl)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3557, file: !113, line: 621, baseType: !3655, size: 64, offset: 2176)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{null, !3396, !1468}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3557, file: !113, line: 622, baseType: !3659, size: 64, offset: 2240)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !113, line: 622, flags: DIFlagFwdDecl)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !273, file: !106, line: 486, baseType: !3662, size: 64, offset: 4096)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !113, line: 642, size: 1792, elements: !3664)
!3664 = !{!3665, !3666, !3667, !3671, !3672, !3673}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3663, file: !113, line: 643, baseType: !3424, size: 1472)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3663, file: !113, line: 644, baseType: !3427, size: 64, offset: 1472)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3663, file: !113, line: 645, baseType: !3668, size: 64, offset: 1536)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{null, !3396, !216}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3663, file: !113, line: 646, baseType: !3427, size: 64, offset: 1600)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3663, file: !113, line: 647, baseType: !3418, size: 64, offset: 1664)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3663, file: !113, line: 648, baseType: !3418, size: 64, offset: 1728)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !273, file: !106, line: 493, baseType: !3675, size: 64, offset: 4160)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !127, line: 162, size: 1088, elements: !3677)
!3677 = !{!3678, !3679, !3680, !3853, !3854, !3855, !3856, !3857, !3858, !3861, !3862, !3863, !3864, !3865, !3866, !3867}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3676, file: !127, line: 163, baseType: !244, size: 128)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3676, file: !127, line: 164, baseType: !280, size: 64, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3676, file: !127, line: 165, baseType: !3681, size: 64, offset: 192)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3683)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !127, line: 105, size: 640, elements: !3684)
!3684 = !{!3685, !3803, !3814, !3819, !3823, !3830, !3834, !3838, !3845, !3849}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3683, file: !127, line: 106, baseType: !3686, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!214, !3675, !3689, !126}
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3691, line: 51, size: 1344, elements: !3692)
!3691 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3692 = !{!3693, !3694, !3696, !3697, !3787, !3796, !3797, !3798, !3799, !3800, !3801, !3802}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3690, file: !3691, line: 52, baseType: !280, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3690, file: !3691, line: 53, baseType: !3695, size: 32, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3691, line: 28, baseType: !472)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3690, file: !3691, line: 54, baseType: !280, size: 64, offset: 128)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3690, file: !3691, line: 55, baseType: !3698, size: 192, offset: 192)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3699, line: 17, size: 192, elements: !3700)
!3699 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3700 = !{!3701, !3703, !3786}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3698, file: !3699, line: 18, baseType: !3702, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3698, file: !3699, line: 19, baseType: !3704, size: 64, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3706)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3699, line: 110, size: 1152, elements: !3707)
!3707 = !{!3708, !3712, !3716, !3722, !3728, !3732, !3736, !3741, !3745, !3746, !3750, !3754, !3758, !3769, !3770, !3771, !3772, !3782}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3706, file: !3699, line: 111, baseType: !3709, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!3702, !3702}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3706, file: !3699, line: 112, baseType: !3713, size: 64, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{null, !3702}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3706, file: !3699, line: 113, baseType: !3717, size: 64, offset: 128)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!216, !3720}
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3698)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3706, file: !3699, line: 114, baseType: !3723, size: 64, offset: 192)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!2150, !3720, !3726}
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3706, file: !3699, line: 116, baseType: !3729, size: 64, offset: 256)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!216, !3720, !280}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3706, file: !3699, line: 118, baseType: !3733, size: 64, offset: 320)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!214, !3720, !280, !7, !197, !379}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3706, file: !3699, line: 123, baseType: !3737, size: 64, offset: 384)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!214, !3720, !280, !3740, !379}
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3706, file: !3699, line: 126, baseType: !3742, size: 64, offset: 448)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!280, !3720}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3706, file: !3699, line: 127, baseType: !3742, size: 64, offset: 512)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3706, file: !3699, line: 128, baseType: !3747, size: 64, offset: 576)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!3702, !3720}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3706, file: !3699, line: 130, baseType: !3751, size: 64, offset: 640)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!3702, !3720, !3702}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3706, file: !3699, line: 133, baseType: !3755, size: 64, offset: 704)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!3702, !3720, !280}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3706, file: !3699, line: 135, baseType: !3759, size: 64, offset: 768)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!214, !3720, !280, !280, !7, !7, !3762}
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3699, line: 43, size: 640, elements: !3764)
!3764 = !{!3765, !3766, !3767}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3763, file: !3699, line: 44, baseType: !3702, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3763, file: !3699, line: 45, baseType: !7, size: 32, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3763, file: !3699, line: 46, baseType: !3768, size: 512, offset: 128)
!3768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 512, elements: !1362)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3706, file: !3699, line: 140, baseType: !3751, size: 64, offset: 832)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3706, file: !3699, line: 143, baseType: !3747, size: 64, offset: 896)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3706, file: !3699, line: 145, baseType: !3709, size: 64, offset: 960)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3706, file: !3699, line: 146, baseType: !3773, size: 64, offset: 1024)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!214, !3720, !3776}
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3699, line: 29, size: 128, elements: !3778)
!3778 = !{!3779, !3780, !3781}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3777, file: !3699, line: 30, baseType: !7, size: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3777, file: !3699, line: 31, baseType: !7, size: 32, offset: 32)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3777, file: !3699, line: 32, baseType: !3720, size: 64, offset: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3706, file: !3699, line: 148, baseType: !3783, size: 64, offset: 1088)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!214, !3720, !3396}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3698, file: !3699, line: 20, baseType: !3396, size: 64, offset: 128)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3690, file: !3691, line: 57, baseType: !3788, size: 64, offset: 384)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3691, line: 31, size: 704, elements: !3790)
!3790 = !{!3791, !3792, !3793, !3794, !3795}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3789, file: !3691, line: 32, baseType: !333, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3789, file: !3691, line: 33, baseType: !214, size: 32, offset: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3789, file: !3691, line: 34, baseType: !197, size: 64, offset: 128)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3789, file: !3691, line: 35, baseType: !3788, size: 64, offset: 192)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3789, file: !3691, line: 43, baseType: !400, size: 448, offset: 256)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3690, file: !3691, line: 58, baseType: !3788, size: 64, offset: 448)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3690, file: !3691, line: 59, baseType: !3689, size: 64, offset: 512)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3690, file: !3691, line: 60, baseType: !3689, size: 64, offset: 576)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3690, file: !3691, line: 61, baseType: !3689, size: 64, offset: 640)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3690, file: !3691, line: 63, baseType: !276, size: 512, offset: 704)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3690, file: !3691, line: 65, baseType: !207, size: 64, offset: 1216)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3690, file: !3691, line: 66, baseType: !197, size: 64, offset: 1280)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3683, file: !127, line: 108, baseType: !3804, size: 64, offset: 64)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!214, !3675, !3807, !126}
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !127, line: 63, size: 640, elements: !3809)
!3809 = !{!3810, !3811, !3812}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3808, file: !127, line: 64, baseType: !3702, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3808, file: !127, line: 65, baseType: !214, size: 32, offset: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3808, file: !127, line: 66, baseType: !3813, size: 512, offset: 96)
!3813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 512, elements: !263)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3683, file: !127, line: 110, baseType: !3815, size: 64, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!214, !3675, !7, !3818}
!3818 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !210, line: 164, baseType: !207)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3683, file: !127, line: 111, baseType: !3820, size: 64, offset: 192)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{null, !3675, !7}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3683, file: !127, line: 112, baseType: !3824, size: 64, offset: 256)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!214, !3675, !3689, !3827, !7, !3829, !2706}
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3683, file: !127, line: 117, baseType: !3831, size: 64, offset: 320)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!214, !3675, !7, !7, !197}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3683, file: !127, line: 119, baseType: !3835, size: 64, offset: 384)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{null, !3675, !7, !7}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3683, file: !127, line: 121, baseType: !3839, size: 64, offset: 448)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!214, !3675, !3842, !216}
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3844, line: 16, flags: DIFlagFwdDecl)
!3844 = !DIFile(filename: "./include/linux/msi.h", directory: "/home/lizy2001/genbc/linux")
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3683, file: !127, line: 122, baseType: !3846, size: 64, offset: 512)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{null, !3675, !3842}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3683, file: !127, line: 123, baseType: !3850, size: 64, offset: 576)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!214, !3675, !3807, !3829, !2706}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3676, file: !127, line: 166, baseType: !197, size: 64, offset: 256)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3676, file: !127, line: 167, baseType: !7, size: 32, offset: 320)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3676, file: !127, line: 168, baseType: !7, size: 32, offset: 352)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3676, file: !127, line: 171, baseType: !3702, size: 64, offset: 384)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3676, file: !127, line: 172, baseType: !126, size: 32, offset: 448)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3676, file: !127, line: 173, baseType: !3859, size: 64, offset: 512)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !127, line: 134, flags: DIFlagFwdDecl)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3676, file: !127, line: 175, baseType: !3675, size: 64, offset: 576)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3676, file: !127, line: 182, baseType: !3818, size: 64, offset: 640)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3676, file: !127, line: 183, baseType: !7, size: 32, offset: 704)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3676, file: !127, line: 184, baseType: !7, size: 32, offset: 736)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3676, file: !127, line: 185, baseType: !793, size: 128, offset: 768)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3676, file: !127, line: 186, baseType: !1221, size: 192, offset: 896)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3676, file: !127, line: 187, baseType: !3868, offset: 1088)
!3868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2354)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !273, file: !106, line: 499, baseType: !244, size: 128, offset: 4224)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !273, file: !106, line: 502, baseType: !3871, size: 64, offset: 4352)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3873)
!3873 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !106, line: 502, flags: DIFlagFwdDecl)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !273, file: !106, line: 504, baseType: !3875, size: 64, offset: 4416)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !273, file: !106, line: 505, baseType: !476, size: 64, offset: 4480)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !273, file: !106, line: 510, baseType: !476, size: 64, offset: 4544)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !273, file: !106, line: 511, baseType: !3879, size: 64, offset: 4608)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3881)
!3881 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !106, line: 511, flags: DIFlagFwdDecl)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !273, file: !106, line: 513, baseType: !3883, size: 64, offset: 4672)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !106, line: 288, size: 128, elements: !3885)
!3885 = !{!3886, !3887}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3884, file: !106, line: 293, baseType: !7, size: 32)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3884, file: !106, line: 294, baseType: !207, size: 64, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !273, file: !106, line: 515, baseType: !244, size: 128, offset: 4736)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !273, file: !106, line: 526, baseType: !3890, offset: 4864)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3891, line: 5, elements: !306)
!3891 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !273, file: !106, line: 528, baseType: !3689, size: 64, offset: 4864)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !273, file: !106, line: 529, baseType: !3702, size: 64, offset: 4928)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !273, file: !106, line: 534, baseType: !565, size: 32, offset: 4992)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !273, file: !106, line: 535, baseType: !472, size: 32, offset: 5024)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !273, file: !106, line: 537, baseType: !292, offset: 5056)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !273, file: !106, line: 538, baseType: !244, size: 128, offset: 5056)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !273, file: !106, line: 540, baseType: !3899, size: 64, offset: 5184)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3901, line: 54, size: 960, elements: !3902)
!3901 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3902 = !{!3903, !3904, !3905, !3906, !3907, !3908, !3909, !3913, !3917, !3918, !3919, !3920, !3924, !3928, !3929}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3900, file: !3901, line: 55, baseType: !280, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3900, file: !3901, line: 56, baseType: !684, size: 64, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3900, file: !3901, line: 58, baseType: !385, size: 64, offset: 128)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3900, file: !3901, line: 59, baseType: !385, size: 64, offset: 192)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3900, file: !3901, line: 60, baseType: !285, size: 64, offset: 256)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3900, file: !3901, line: 62, baseType: !3409, size: 64, offset: 320)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3900, file: !3901, line: 63, baseType: !3910, size: 64, offset: 384)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!333, !3396, !3416}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3900, file: !3901, line: 65, baseType: !3914, size: 64, offset: 448)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{null, !3899}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3900, file: !3901, line: 66, baseType: !3418, size: 64, offset: 512)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3900, file: !3901, line: 68, baseType: !3427, size: 64, offset: 576)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3900, file: !3901, line: 70, baseType: !3211, size: 64, offset: 640)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3900, file: !3901, line: 71, baseType: !3921, size: 64, offset: 704)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!2150, !3396}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3900, file: !3901, line: 73, baseType: !3925, size: 64, offset: 768)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{null, !3396, !3243, !3244}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3900, file: !3901, line: 75, baseType: !3422, size: 64, offset: 832)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3900, file: !3901, line: 77, baseType: !3539, size: 64, offset: 896)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !273, file: !106, line: 541, baseType: !385, size: 64, offset: 5248)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !273, file: !106, line: 543, baseType: !3418, size: 64, offset: 5312)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !273, file: !106, line: 544, baseType: !3933, size: 64, offset: 5376)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !106, line: 45, flags: DIFlagFwdDecl)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !273, file: !106, line: 545, baseType: !3936, size: 64, offset: 5440)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !106, line: 47, flags: DIFlagFwdDecl)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !273, file: !106, line: 547, baseType: !216, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !273, file: !106, line: 548, baseType: !216, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !273, file: !106, line: 549, baseType: !216, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !273, file: !106, line: 550, baseType: !216, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !251, file: !141, line: 1229, baseType: !333, size: 64, offset: 5888)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !251, file: !141, line: 1231, baseType: !240, size: 64, offset: 5952)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "channels_kset", scope: !251, file: !141, line: 1232, baseType: !287, size: 64, offset: 6016)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !251, file: !141, line: 1235, baseType: !439, size: 64, offset: 6080)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !241, file: !141, line: 778, baseType: !140, size: 32, offset: 192)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "offermsg", scope: !241, file: !141, line: 780, baseType: !3948, size: 1568, offset: 224)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_offer_channel", file: !141, line: 502, size: 1568, elements: !3949)
!3949 = !{!3950, !3955, !3984, !3985, !3986, !3987, !3988, !3989, !3990}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3948, file: !141, line: 503, baseType: !3951, size: 64)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_message_header", file: !141, line: 484, size: 64, elements: !3952)
!3952 = !{!3953, !3954}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "msgtype", scope: !3951, file: !141, line: 485, baseType: !147, size: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3951, file: !141, line: 486, baseType: !472, size: 32, offset: 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "offer", scope: !3948, file: !141, line: 504, baseType: !3956, size: 1408, offset: 64)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_offer", file: !141, line: 266, size: 1408, elements: !3957)
!3957 = !{!3958, !3959, !3960, !3961, !3962, !3963, !3964, !3982, !3983}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "if_type", scope: !3956, file: !141, line: 267, baseType: !254, size: 128)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "if_instance", scope: !3956, file: !141, line: 268, baseType: !254, size: 128, offset: 128)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !3956, file: !141, line: 273, baseType: !476, size: 64, offset: 256)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !3956, file: !141, line: 274, baseType: !476, size: 64, offset: 320)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "chn_flags", scope: !3956, file: !141, line: 276, baseType: !267, size: 16, offset: 384)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_megabytes", scope: !3956, file: !141, line: 277, baseType: !267, size: 16, offset: 400)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !3956, file: !141, line: 296, baseType: !3965, size: 960, offset: 416)
!3965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3956, file: !141, line: 279, size: 960, elements: !3966)
!3966 = !{!3967, !3974}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !3965, file: !141, line: 283, baseType: !3968, size: 960)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3965, file: !141, line: 281, size: 960, elements: !3969)
!3969 = !{!3970}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "user_def", scope: !3968, file: !141, line: 282, baseType: !3971, size: 960)
!3971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 960, elements: !3972)
!3972 = !{!3973}
!3973 = !DISubrange(count: 120)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !3965, file: !141, line: 295, baseType: !3975, size: 960)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3965, file: !141, line: 292, size: 960, elements: !3976)
!3976 = !{!3977, !3978}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_mode", scope: !3975, file: !141, line: 293, baseType: !472, size: 32)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "user_def", scope: !3975, file: !141, line: 294, baseType: !3979, size: 928, offset: 32)
!3979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 928, elements: !3980)
!3980 = !{!3981}
!3981 = !DISubrange(count: 116)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "sub_channel_index", scope: !3956, file: !141, line: 303, baseType: !267, size: 16, offset: 1376)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !3956, file: !141, line: 304, baseType: !267, size: 16, offset: 1392)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "child_relid", scope: !3948, file: !141, line: 505, baseType: !472, size: 32, offset: 1472)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "monitorid", scope: !3948, file: !141, line: 506, baseType: !1384, size: 8, offset: 1504)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_allocated", scope: !3948, file: !141, line: 510, baseType: !1384, size: 1, offset: 1512, flags: DIFlagBitField, extraData: i64 1512)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3948, file: !141, line: 511, baseType: !1384, size: 7, offset: 1513, flags: DIFlagBitField, extraData: i64 1512)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "is_dedicated_interrupt", scope: !3948, file: !141, line: 523, baseType: !267, size: 1, offset: 1520, flags: DIFlagBitField, extraData: i64 1512)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !3948, file: !141, line: 524, baseType: !267, size: 15, offset: 1521, flags: DIFlagBitField, extraData: i64 1512)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "connection_id", scope: !3948, file: !141, line: 525, baseType: !472, size: 32, offset: 1536)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_grp", scope: !241, file: !141, line: 785, baseType: !1384, size: 8, offset: 1792)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_bit", scope: !241, file: !141, line: 786, baseType: !1384, size: 8, offset: 1800)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "rescind", scope: !241, file: !141, line: 788, baseType: !216, size: 8, offset: 1808)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "rescind_event", scope: !241, file: !141, line: 789, baseType: !1526, size: 192, offset: 1856)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "ringbuffer_gpadlhandle", scope: !241, file: !141, line: 791, baseType: !472, size: 32, offset: 2048)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "ringbuffer_page", scope: !241, file: !141, line: 794, baseType: !775, size: 64, offset: 2112)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "ringbuffer_pagecount", scope: !241, file: !141, line: 795, baseType: !472, size: 32, offset: 2176)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "ringbuffer_send_offset", scope: !241, file: !141, line: 796, baseType: !472, size: 32, offset: 2208)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "outbound", scope: !241, file: !141, line: 797, baseType: !4000, size: 448, offset: 2240)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_ring_buffer_info", file: !141, line: 171, size: 448, elements: !4001)
!4001 = !{!4002, !4025, !4026, !4033, !4034, !4035, !4036}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "ring_buffer", scope: !4000, file: !141, line: 172, baseType: !4003, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_ring_buffer", file: !141, line: 113, size: 32768, elements: !4005)
!4005 = !{!4006, !4007, !4008, !4009, !4010, !4011, !4019, !4023}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "write_index", scope: !4004, file: !141, line: 115, baseType: !472, size: 32)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "read_index", scope: !4004, file: !141, line: 118, baseType: !472, size: 32, offset: 32)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_mask", scope: !4004, file: !141, line: 120, baseType: !472, size: 32, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "pending_send_sz", scope: !4004, file: !141, line: 148, baseType: !472, size: 32, offset: 96)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !4004, file: !141, line: 149, baseType: !2258, size: 384, offset: 128)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "feature_bits", scope: !4004, file: !141, line: 155, baseType: !4012, size: 32, offset: 512)
!4012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4004, file: !141, line: 150, size: 32, elements: !4013)
!4013 = !{!4014, !4018}
!4014 = !DIDerivedType(tag: DW_TAG_member, scope: !4012, file: !141, line: 151, baseType: !4015, size: 32)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4012, file: !141, line: 151, size: 32, elements: !4016)
!4016 = !{!4017}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "feat_pending_send_sz", scope: !4015, file: !141, line: 152, baseType: !472, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4012, file: !141, line: 154, baseType: !472, size: 32)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !4004, file: !141, line: 158, baseType: !4020, size: 32224, offset: 544)
!4020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 32224, elements: !4021)
!4021 = !{!4022}
!4022 = !DISubrange(count: 4028)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4004, file: !141, line: 164, baseType: !4024, offset: 32768)
!4024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, elements: !2354)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "ring_size", scope: !4000, file: !141, line: 173, baseType: !472, size: 32, offset: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "ring_size_div10_reciprocal", scope: !4000, file: !141, line: 174, baseType: !4027, size: 64, offset: 96)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reciprocal_value", file: !4028, line: 23, size: 64, elements: !4029)
!4028 = !DIFile(filename: "./include/linux/reciprocal_div.h", directory: "/home/lizy2001/genbc/linux")
!4029 = !{!4030, !4031, !4032}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !4027, file: !4028, line: 24, baseType: !472, size: 32)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "sh1", scope: !4027, file: !4028, line: 25, baseType: !1384, size: 8, offset: 32)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "sh2", scope: !4027, file: !4028, line: 25, baseType: !1384, size: 8, offset: 40)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "ring_lock", scope: !4000, file: !141, line: 175, baseType: !292, offset: 160)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "ring_datasize", scope: !4000, file: !141, line: 177, baseType: !472, size: 32, offset: 160)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "priv_read_index", scope: !4000, file: !141, line: 178, baseType: !472, size: 32, offset: 192)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "ring_buffer_mutex", scope: !4000, file: !141, line: 183, baseType: !1221, size: 192, offset: 256)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "inbound", scope: !241, file: !141, line: 798, baseType: !4000, size: 448, offset: 2688)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "close_msg", scope: !241, file: !141, line: 800, baseType: !4039, size: 832, offset: 3136)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_close_msg", file: !141, line: 733, size: 832, elements: !4040)
!4040 = !{!4041, !4086}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4039, file: !141, line: 734, baseType: !4042, size: 704)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_msginfo", file: !141, line: 707, size: 704, elements: !4043)
!4043 = !{!4044, !4045, !4046, !4047, !4048, !4083, !4084}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "msglistentry", scope: !4042, file: !141, line: 709, baseType: !244, size: 128)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "submsglist", scope: !4042, file: !141, line: 712, baseType: !244, size: 128, offset: 128)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "waitevent", scope: !4042, file: !141, line: 715, baseType: !1526, size: 192, offset: 256)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_channel", scope: !4042, file: !141, line: 716, baseType: !240, size: 64, offset: 448)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !4042, file: !141, line: 723, baseType: !4049, size: 160, offset: 512)
!4049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4042, file: !141, line: 717, size: 160, elements: !4050)
!4050 = !{!4051, !4056, !4063, !4068, !4075}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "version_supported", scope: !4049, file: !141, line: 718, baseType: !4052, size: 72)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_version_supported", file: !141, line: 496, size: 72, elements: !4053)
!4053 = !{!4054, !4055}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4052, file: !141, line: 497, baseType: !3951, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "version_supported", scope: !4052, file: !141, line: 498, baseType: !1384, size: 8, offset: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "open_result", scope: !4049, file: !141, line: 719, baseType: !4057, size: 160)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_open_result", file: !141, line: 584, size: 160, elements: !4058)
!4058 = !{!4059, !4060, !4061, !4062}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4057, file: !141, line: 585, baseType: !3951, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "child_relid", scope: !4057, file: !141, line: 586, baseType: !472, size: 32, offset: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "openid", scope: !4057, file: !141, line: 587, baseType: !472, size: 32, offset: 96)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4057, file: !141, line: 588, baseType: !472, size: 32, offset: 128)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "gpadl_torndown", scope: !4049, file: !141, line: 720, baseType: !4064, size: 96)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_gpadl_torndown", file: !141, line: 638, size: 96, elements: !4065)
!4065 = !{!4066, !4067}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4064, file: !141, line: 639, baseType: !3951, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "gpadl", scope: !4064, file: !141, line: 640, baseType: !472, size: 32, offset: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "gpadl_created", scope: !4049, file: !141, line: 721, baseType: !4069, size: 160)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_gpadl_created", file: !141, line: 625, size: 160, elements: !4070)
!4070 = !{!4071, !4072, !4073, !4074}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4069, file: !141, line: 626, baseType: !3951, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "child_relid", scope: !4069, file: !141, line: 627, baseType: !472, size: 32, offset: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "gpadl", scope: !4069, file: !141, line: 628, baseType: !472, size: 32, offset: 96)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "creation_status", scope: !4069, file: !141, line: 629, baseType: !472, size: 32, offset: 128)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "version_response", scope: !4049, file: !141, line: 722, baseType: !4076, size: 128)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_version_response", file: !141, line: 678, size: 128, elements: !4077)
!4077 = !{!4078, !4079, !4080, !4081, !4082}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4076, file: !141, line: 679, baseType: !3951, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "version_supported", scope: !4076, file: !141, line: 680, baseType: !1384, size: 8, offset: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "connection_state", scope: !4076, file: !141, line: 682, baseType: !1384, size: 8, offset: 72)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4076, file: !141, line: 683, baseType: !267, size: 16, offset: 80)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "msg_conn_id", scope: !4076, file: !141, line: 693, baseType: !472, size: 32, offset: 96)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "msgsize", scope: !4042, file: !141, line: 725, baseType: !472, size: 32, offset: 672)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4042, file: !141, line: 730, baseType: !4085, offset: 704)
!4085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, elements: !2354)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4039, file: !141, line: 735, baseType: !4087, size: 96, offset: 704)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_close_channel", file: !141, line: 592, size: 96, elements: !4088)
!4088 = !{!4089, !4090}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4087, file: !141, line: 593, baseType: !3951, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "child_relid", scope: !4087, file: !141, line: 594, baseType: !472, size: 32, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !241, file: !141, line: 803, baseType: !476, size: 64, offset: 3968)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "sig_events", scope: !241, file: !141, line: 804, baseType: !476, size: 64, offset: 4032)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "intr_out_empty", scope: !241, file: !141, line: 810, baseType: !476, size: 64, offset: 4096)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "out_full_flag", scope: !241, file: !141, line: 817, baseType: !216, size: 8, offset: 4160)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "callback_event", scope: !241, file: !141, line: 820, baseType: !201, size: 320, offset: 4224)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "onchannel_callback", scope: !241, file: !141, line: 821, baseType: !522, size: 64, offset: 4544)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "channel_callback_context", scope: !241, file: !141, line: 822, baseType: !197, size: 64, offset: 4608)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "change_target_cpu_callback", scope: !241, file: !141, line: 824, baseType: !4099, size: 64, offset: 4672)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{null, !240, !472, !472}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "sched_lock", scope: !241, file: !141, line: 831, baseType: !292, offset: 4736)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "callback_mode", scope: !241, file: !141, line: 848, baseType: !174, size: 32, offset: 4736)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "is_dedicated_interrupt", scope: !241, file: !141, line: 850, baseType: !216, size: 8, offset: 4768)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "sig_event", scope: !241, file: !141, line: 851, baseType: !476, size: 64, offset: 4800)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "target_cpu", scope: !241, file: !141, line: 862, baseType: !472, size: 32, offset: 4864)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "sc_creation_callback", scope: !241, file: !141, line: 883, baseType: !4108, size: 64, offset: 4928)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{null, !240}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "chn_rescind_callback", scope: !241, file: !141, line: 889, baseType: !4108, size: 64, offset: 4992)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "sc_list", scope: !241, file: !141, line: 894, baseType: !244, size: 128, offset: 5056)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "primary_channel", scope: !241, file: !141, line: 899, baseType: !240, size: 64, offset: 5184)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "per_channel_state", scope: !241, file: !141, line: 903, baseType: !197, size: 64, offset: 5248)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !241, file: !141, line: 909, baseType: !422, size: 128, align: 64, offset: 5312)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !241, file: !141, line: 914, baseType: !276, size: 512, offset: 5440)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "low_latency", scope: !241, file: !141, line: 940, baseType: !216, size: 8, offset: 5952)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "probe_done", scope: !241, file: !141, line: 942, baseType: !216, size: 8, offset: 5960)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !241, file: !141, line: 949, baseType: !267, size: 16, offset: 5968)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "add_channel_work", scope: !241, file: !141, line: 957, baseType: !1980, size: 256, offset: 6016)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "intr_in_full", scope: !241, file: !141, line: 963, baseType: !476, size: 64, offset: 6272)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "out_full_total", scope: !241, file: !141, line: 969, baseType: !476, size: 64, offset: 6336)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "out_full_first", scope: !241, file: !141, line: 975, baseType: !476, size: 64, offset: 6400)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz_testing_state", scope: !241, file: !141, line: 978, baseType: !216, size: 8, offset: 6464)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz_testing_interrupt_delay", scope: !241, file: !141, line: 988, baseType: !472, size: 32, offset: 6496)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz_testing_message_delay", scope: !241, file: !141, line: 989, baseType: !472, size: 32, offset: 6528)
!4127 = !{!0}
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_context", file: !24, line: 137, size: 192, elements: !4129)
!4129 = !{!4130, !4131, !4132}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "guestid", scope: !4128, file: !24, line: 141, baseType: !476, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_context", scope: !4128, file: !24, line: 143, baseType: !193, size: 64, offset: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "hv_numa_map", scope: !4128, file: !24, line: 149, baseType: !4133, size: 64, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!4134 = !{!"rsp"}
!4135 = !{i32 7, !"Dwarf Version", i32 4}
!4136 = !{i32 2, !"Debug Info Version", i32 3}
!4137 = !{i32 1, !"wchar_size", i32 2}
!4138 = !{i32 1, !"Code Model", i32 2}
!4139 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4140 = distinct !DISubprogram(name: "hv_init", scope: !3, file: !3, line: 31, type: !4141, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !306)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!214}
!4143 = !DILocation(line: 33, column: 27, scope: !4140)
!4144 = !DILocation(line: 33, column: 25, scope: !4140)
!4145 = !DILocation(line: 34, column: 18, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4140, file: !3, line: 34, column: 6)
!4147 = !DILocation(line: 34, column: 7, scope: !4146)
!4148 = !DILocation(line: 34, column: 6, scope: !4140)
!4149 = !DILocation(line: 35, column: 3, scope: !4146)
!4150 = !DILocation(line: 36, column: 2, scope: !4140)
!4151 = !DILocation(line: 37, column: 1, scope: !4140)
!4152 = distinct !DISubprogram(name: "hv_post_message", scope: !3, file: !3, line: 44, type: !4153, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !306)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!214, !4155, !5, !197, !379}
!4155 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "hv_connection_id", file: !141, line: 739, size: 32, elements: !4156)
!4156 = !{!4157, !4158}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "asu32", scope: !4155, file: !141, line: 740, baseType: !472, size: 32)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4155, file: !141, line: 744, baseType: !4159, size: 32)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4155, file: !141, line: 741, size: 32, elements: !4160)
!4160 = !{!4161, !4162}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4159, file: !141, line: 742, baseType: !472, size: 24, flags: DIFlagBitField, extraData: i64 0)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4159, file: !141, line: 743, baseType: !472, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!4163 = !DILocalVariable(name: "connection_id", arg: 1, scope: !4152, file: !3, line: 44, type: !4155)
!4164 = !DILocation(line: 44, column: 44, scope: !4152)
!4165 = !DILocalVariable(name: "message_type", arg: 2, scope: !4152, file: !3, line: 45, type: !5)
!4166 = !DILocation(line: 45, column: 26, scope: !4152)
!4167 = !DILocalVariable(name: "payload", arg: 3, scope: !4152, file: !3, line: 46, type: !197)
!4168 = !DILocation(line: 46, column: 11, scope: !4152)
!4169 = !DILocalVariable(name: "payload_size", arg: 4, scope: !4152, file: !3, line: 46, type: !379)
!4170 = !DILocation(line: 46, column: 27, scope: !4152)
!4171 = !DILocalVariable(name: "aligned_msg", scope: !4152, file: !3, line: 48, type: !4172)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_input_post_message", file: !24, line: 98, size: 2048, elements: !4174)
!4174 = !{!4175, !4176, !4177, !4178, !4179}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "connectionid", scope: !4173, file: !24, line: 99, baseType: !4155, size: 32)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4173, file: !24, line: 100, baseType: !472, size: 32, offset: 32)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "message_type", scope: !4173, file: !24, line: 101, baseType: !472, size: 32, offset: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "payload_size", scope: !4173, file: !24, line: 102, baseType: !472, size: 32, offset: 96)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !4173, file: !24, line: 103, baseType: !4180, size: 1920, offset: 128)
!4180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 1920, elements: !4181)
!4181 = !{!4182}
!4182 = !DISubrange(count: 30)
!4183 = !DILocation(line: 48, column: 32, scope: !4152)
!4184 = !DILocalVariable(name: "hv_cpu", scope: !4152, file: !3, line: 49, type: !193)
!4185 = !DILocation(line: 49, column: 29, scope: !4152)
!4186 = !DILocalVariable(name: "status", scope: !4152, file: !3, line: 50, type: !476)
!4187 = !DILocation(line: 50, column: 6, scope: !4152)
!4188 = !DILocation(line: 52, column: 6, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 52, column: 6)
!4190 = !DILocation(line: 52, column: 19, scope: !4189)
!4191 = !DILocation(line: 52, column: 6, scope: !4152)
!4192 = !DILocation(line: 53, column: 3, scope: !4189)
!4193 = !DILocation(line: 55, column: 11, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 55, column: 11)
!4195 = !{i32 -2141628335}
!4196 = !DILocation(line: 55, column: 11, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4198, file: !3, line: 55, column: 11)
!4198 = distinct !DILexicalBlock(scope: !4194, file: !3, line: 55, column: 11)
!4199 = !DILocalVariable(name: "__vpp_verify", scope: !4200, file: !3, line: 55, type: !2150)
!4200 = distinct !DILexicalBlock(scope: !4197, file: !3, line: 55, column: 11)
!4201 = !DILocation(line: 55, column: 11, scope: !4200)
!4202 = !DILocation(line: 55, column: 11, scope: !4198)
!4203 = !DILocation(line: 55, column: 9, scope: !4152)
!4204 = !DILocation(line: 56, column: 16, scope: !4152)
!4205 = !DILocation(line: 56, column: 24, scope: !4152)
!4206 = !DILocation(line: 56, column: 14, scope: !4152)
!4207 = !DILocation(line: 57, column: 2, scope: !4152)
!4208 = !DILocation(line: 57, column: 15, scope: !4152)
!4209 = !DILocation(line: 57, column: 30, scope: !4152)
!4210 = !DILocation(line: 58, column: 2, scope: !4152)
!4211 = !DILocation(line: 58, column: 15, scope: !4152)
!4212 = !DILocation(line: 58, column: 24, scope: !4152)
!4213 = !DILocation(line: 59, column: 30, scope: !4152)
!4214 = !DILocation(line: 59, column: 2, scope: !4152)
!4215 = !DILocation(line: 59, column: 15, scope: !4152)
!4216 = !DILocation(line: 59, column: 28, scope: !4152)
!4217 = !DILocation(line: 60, column: 30, scope: !4152)
!4218 = !DILocation(line: 60, column: 2, scope: !4152)
!4219 = !DILocation(line: 60, column: 15, scope: !4152)
!4220 = !DILocation(line: 60, column: 28, scope: !4152)
!4221 = !DILocation(line: 61, column: 17, scope: !4152)
!4222 = !DILocation(line: 61, column: 30, scope: !4152)
!4223 = !DILocation(line: 61, column: 2, scope: !4152)
!4224 = !DILocation(line: 61, column: 39, scope: !4152)
!4225 = !DILocation(line: 61, column: 48, scope: !4152)
!4226 = !DILocation(line: 63, column: 48, scope: !4152)
!4227 = !DILocation(line: 63, column: 11, scope: !4152)
!4228 = !DILocation(line: 63, column: 9, scope: !4152)
!4229 = !DILocation(line: 69, column: 2, scope: !4152)
!4230 = !DILocation(line: 69, column: 2, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 69, column: 2)
!4232 = !{i32 -2141627711}
!4233 = !DILocation(line: 71, column: 9, scope: !4152)
!4234 = !DILocation(line: 71, column: 16, scope: !4152)
!4235 = !DILocation(line: 71, column: 2, scope: !4152)
!4236 = !DILocation(line: 72, column: 1, scope: !4152)
!4237 = distinct !DISubprogram(name: "hv_do_hypercall", scope: !4238, file: !4238, line: 80, type: !4239, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !306)
!4238 = !DIFile(filename: "./arch/x86/include/asm/mshyperv.h", directory: "/home/lizy2001/genbc/linux")
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!476, !476, !197, !197}
!4241 = !DILocalVariable(name: "control", arg: 1, scope: !4237, file: !4238, line: 80, type: !476)
!4242 = !DILocation(line: 80, column: 39, scope: !4237)
!4243 = !DILocalVariable(name: "input", arg: 2, scope: !4237, file: !4238, line: 80, type: !197)
!4244 = !DILocation(line: 80, column: 54, scope: !4237)
!4245 = !DILocalVariable(name: "output", arg: 3, scope: !4237, file: !4238, line: 80, type: !197)
!4246 = !DILocation(line: 80, column: 67, scope: !4237)
!4247 = !DILocalVariable(name: "input_address", scope: !4237, file: !4238, line: 82, type: !476)
!4248 = !DILocation(line: 82, column: 6, scope: !4237)
!4249 = !DILocation(line: 82, column: 22, scope: !4237)
!4250 = !DILocation(line: 82, column: 43, scope: !4237)
!4251 = !DILocation(line: 82, column: 30, scope: !4237)
!4252 = !DILocalVariable(name: "output_address", scope: !4237, file: !4238, line: 83, type: !476)
!4253 = !DILocation(line: 83, column: 6, scope: !4237)
!4254 = !DILocation(line: 83, column: 23, scope: !4237)
!4255 = !DILocation(line: 83, column: 45, scope: !4237)
!4256 = !DILocation(line: 83, column: 32, scope: !4237)
!4257 = !DILocalVariable(name: "hv_status", scope: !4237, file: !4238, line: 84, type: !476)
!4258 = !DILocation(line: 84, column: 6, scope: !4237)
!4259 = !DILocation(line: 87, column: 7, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4237, file: !4238, line: 87, column: 6)
!4261 = !DILocation(line: 87, column: 6, scope: !4237)
!4262 = !DILocation(line: 88, column: 3, scope: !4260)
!4263 = !DILocation(line: 90, column: 2, scope: !4237)
!4264 = !DILocation(line: 94, column: 17, scope: !4237)
!4265 = !DILocation(line: 95, column: 5, scope: !4237)
!4266 = !{i32 5550514, i32 -2141850021, i32 -2141849989, i32 -2141849983, i32 -2141849717, i32 -2141849666, i32 -2141849638, i32 -2141849613, i32 -2141849969, i32 -2141849967, i32 -2141849948, i32 -2141849917, i32 -2141848832, i32 -2141851170, i32 -2141848826, i32 -2141848778, i32 -2141848714, i32 -2141848652, i32 -2141848595, i32 -2141848539, i32 -2141848305, i32 -2141848257, i32 -2141848193, i32 -2141848131, i32 -2141848074, i32 -2141848018, i32 -2141851054, i32 -2141851029, i32 -2141847784, i32 -2141847629, i32 -2141847723, i32 -2141847709, i32 -2141847615, i32 -2141847601, i32 -2141847335, i32 -2141847540, i32 -2141847478, i32 -2141847472, i32 -2141847421, i32 -2141847393, i32 -2141847368, i32 -2141847526, i32 -2141847321, i32 -2141850877}
!4267 = !DILocation(line: 115, column: 9, scope: !4237)
!4268 = !DILocation(line: 115, column: 2, scope: !4237)
!4269 = !DILocation(line: 116, column: 1, scope: !4237)
!4270 = distinct !DISubprogram(name: "hv_synic_alloc", scope: !3, file: !3, line: 74, type: !4141, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !306)
!4271 = !DILocalVariable(name: "cpu", scope: !4270, file: !3, line: 76, type: !214)
!4272 = !DILocation(line: 76, column: 6, scope: !4270)
!4273 = !DILocalVariable(name: "hv_cpu", scope: !4270, file: !3, line: 77, type: !193)
!4274 = !DILocation(line: 77, column: 29, scope: !4270)
!4275 = !DILocation(line: 84, column: 2, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 84, column: 2)
!4277 = !DILocation(line: 84, column: 2, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 84, column: 2)
!4279 = !DILocation(line: 85, column: 12, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 85, column: 12)
!4281 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 84, column: 28)
!4282 = !DILocation(line: 85, column: 12, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4280, file: !3, line: 85, column: 12)
!4284 = !DILocalVariable(name: "__vpp_verify", scope: !4285, file: !3, line: 85, type: !2150)
!4285 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 85, column: 12)
!4286 = !DILocation(line: 85, column: 12, scope: !4285)
!4287 = !DILocation(line: 85, column: 10, scope: !4281)
!4288 = !DILocation(line: 86, column: 10, scope: !4281)
!4289 = !DILocation(line: 86, column: 3, scope: !4281)
!4290 = !DILocation(line: 87, column: 2, scope: !4281)
!4291 = distinct !{!4291, !4275, !4292}
!4292 = !DILocation(line: 87, column: 2, scope: !4276)
!4293 = !DILocation(line: 89, column: 27, scope: !4270)
!4294 = !DILocation(line: 89, column: 25, scope: !4270)
!4295 = !DILocation(line: 91, column: 17, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 91, column: 6)
!4297 = !DILocation(line: 91, column: 29, scope: !4296)
!4298 = !DILocation(line: 91, column: 6, scope: !4270)
!4299 = !DILocation(line: 92, column: 3, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 91, column: 38)
!4301 = !DILocation(line: 93, column: 3, scope: !4300)
!4302 = !DILocation(line: 96, column: 2, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 96, column: 2)
!4304 = !DILocation(line: 96, column: 2, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4303, file: !3, line: 96, column: 2)
!4306 = !DILocation(line: 97, column: 12, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 97, column: 12)
!4308 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 96, column: 28)
!4309 = !DILocation(line: 97, column: 12, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4307, file: !3, line: 97, column: 12)
!4311 = !DILocalVariable(name: "__vpp_verify", scope: !4312, file: !3, line: 97, type: !2150)
!4312 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 97, column: 12)
!4313 = !DILocation(line: 97, column: 12, scope: !4312)
!4314 = !DILocation(line: 97, column: 10, scope: !4308)
!4315 = !DILocation(line: 99, column: 17, scope: !4308)
!4316 = !DILocation(line: 99, column: 25, scope: !4308)
!4317 = !DILocation(line: 100, column: 43, scope: !4308)
!4318 = !DILocation(line: 100, column: 27, scope: !4308)
!4319 = !DILocation(line: 99, column: 3, scope: !4308)
!4320 = !DILocation(line: 103, column: 12, scope: !4308)
!4321 = !DILocation(line: 103, column: 4, scope: !4308)
!4322 = !DILocation(line: 102, column: 3, scope: !4308)
!4323 = !DILocation(line: 102, column: 11, scope: !4308)
!4324 = !DILocation(line: 102, column: 30, scope: !4308)
!4325 = !DILocation(line: 104, column: 7, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 104, column: 7)
!4327 = !DILocation(line: 104, column: 15, scope: !4326)
!4328 = !DILocation(line: 104, column: 34, scope: !4326)
!4329 = !DILocation(line: 104, column: 7, scope: !4308)
!4330 = !DILocation(line: 105, column: 4, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4326, file: !3, line: 104, column: 43)
!4332 = !DILocation(line: 106, column: 4, scope: !4331)
!4333 = !DILocation(line: 109, column: 38, scope: !4308)
!4334 = !DILocation(line: 109, column: 30, scope: !4308)
!4335 = !DILocation(line: 109, column: 3, scope: !4308)
!4336 = !DILocation(line: 109, column: 11, scope: !4308)
!4337 = !DILocation(line: 109, column: 28, scope: !4308)
!4338 = !DILocation(line: 110, column: 7, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 110, column: 7)
!4340 = !DILocation(line: 110, column: 15, scope: !4339)
!4341 = !DILocation(line: 110, column: 32, scope: !4339)
!4342 = !DILocation(line: 110, column: 7, scope: !4308)
!4343 = !DILocation(line: 111, column: 4, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 110, column: 41)
!4345 = !DILocation(line: 112, column: 4, scope: !4344)
!4346 = !DILocation(line: 115, column: 35, scope: !4308)
!4347 = !DILocation(line: 115, column: 27, scope: !4308)
!4348 = !DILocation(line: 115, column: 3, scope: !4308)
!4349 = !DILocation(line: 115, column: 11, scope: !4308)
!4350 = !DILocation(line: 115, column: 25, scope: !4308)
!4351 = !DILocation(line: 116, column: 7, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 116, column: 7)
!4353 = !DILocation(line: 116, column: 15, scope: !4352)
!4354 = !DILocation(line: 116, column: 29, scope: !4352)
!4355 = !DILocation(line: 116, column: 7, scope: !4308)
!4356 = !DILocation(line: 117, column: 4, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4352, file: !3, line: 116, column: 38)
!4358 = !DILocation(line: 118, column: 4, scope: !4357)
!4359 = !DILocation(line: 120, column: 2, scope: !4308)
!4360 = distinct !{!4360, !4302, !4361}
!4361 = !DILocation(line: 120, column: 2, scope: !4303)
!4362 = !DILocation(line: 122, column: 2, scope: !4270)
!4363 = !DILabel(scope: !4270, name: "err", file: !3, line: 123)
!4364 = !DILocation(line: 123, column: 1, scope: !4270)
!4365 = !DILocation(line: 128, column: 2, scope: !4270)
!4366 = !DILocation(line: 129, column: 1, scope: !4270)
!4367 = distinct !DISubprogram(name: "kcalloc", scope: !186, file: !186, line: 601, type: !4368, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !306)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!197, !379, !379, !239}
!4370 = !DILocalVariable(name: "n", arg: 1, scope: !4367, file: !186, line: 601, type: !379)
!4371 = !DILocation(line: 601, column: 36, scope: !4367)
!4372 = !DILocalVariable(name: "size", arg: 2, scope: !4367, file: !186, line: 601, type: !379)
!4373 = !DILocation(line: 601, column: 46, scope: !4367)
!4374 = !DILocalVariable(name: "flags", arg: 3, scope: !4367, file: !186, line: 601, type: !239)
!4375 = !DILocation(line: 601, column: 58, scope: !4367)
!4376 = !DILocation(line: 603, column: 23, scope: !4367)
!4377 = !DILocation(line: 603, column: 26, scope: !4367)
!4378 = !DILocation(line: 603, column: 32, scope: !4367)
!4379 = !DILocation(line: 603, column: 38, scope: !4367)
!4380 = !DILocation(line: 603, column: 9, scope: !4367)
!4381 = !DILocation(line: 603, column: 2, scope: !4367)
!4382 = distinct !DISubprogram(name: "hv_synic_free", scope: !3, file: !3, line: 132, type: !1901, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !306)
!4383 = !DILocalVariable(name: "cpu", scope: !4382, file: !3, line: 134, type: !214)
!4384 = !DILocation(line: 134, column: 6, scope: !4382)
!4385 = !DILocation(line: 136, column: 2, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4382, file: !3, line: 136, column: 2)
!4387 = !DILocation(line: 136, column: 2, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4386, file: !3, line: 136, column: 2)
!4389 = !DILocalVariable(name: "hv_cpu", scope: !4390, file: !3, line: 137, type: !193)
!4390 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 136, column: 28)
!4391 = !DILocation(line: 137, column: 30, scope: !4390)
!4392 = !DILocation(line: 138, column: 6, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4390, file: !3, line: 138, column: 6)
!4394 = !DILocation(line: 138, column: 6, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 138, column: 6)
!4396 = !DILocalVariable(name: "__vpp_verify", scope: !4397, file: !3, line: 138, type: !2150)
!4397 = distinct !DILexicalBlock(scope: !4395, file: !3, line: 138, column: 6)
!4398 = !DILocation(line: 138, column: 6, scope: !4397)
!4399 = !DILocation(line: 140, column: 3, scope: !4390)
!4400 = !DILocation(line: 141, column: 3, scope: !4390)
!4401 = !DILocation(line: 142, column: 3, scope: !4390)
!4402 = !DILocation(line: 143, column: 2, scope: !4390)
!4403 = distinct !{!4403, !4385, !4404}
!4404 = !DILocation(line: 143, column: 2, scope: !4386)
!4405 = !DILocation(line: 145, column: 19, scope: !4382)
!4406 = !DILocation(line: 145, column: 8, scope: !4382)
!4407 = !DILocation(line: 145, column: 2, scope: !4382)
!4408 = !DILocation(line: 146, column: 1, scope: !4382)
!4409 = distinct !DISubprogram(name: "hv_synic_enable_regs", scope: !3, file: !3, line: 155, type: !4410, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !306)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{null, !7}
!4412 = !DILocalVariable(name: "cpu", arg: 1, scope: !4409, file: !3, line: 155, type: !7)
!4413 = !DILocation(line: 155, column: 40, scope: !4409)
!4414 = !DILocalVariable(name: "hv_cpu", scope: !4409, file: !3, line: 157, type: !193)
!4415 = !DILocation(line: 157, column: 29, scope: !4409)
!4416 = !DILocation(line: 158, column: 5, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4409, file: !3, line: 158, column: 5)
!4418 = !DILocation(line: 158, column: 5, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4417, file: !3, line: 158, column: 5)
!4420 = !DILocalVariable(name: "__vpp_verify", scope: !4421, file: !3, line: 158, type: !2150)
!4421 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 158, column: 5)
!4422 = !DILocation(line: 158, column: 5, scope: !4421)
!4423 = !DILocalVariable(name: "simp", scope: !4409, file: !3, line: 159, type: !4424)
!4424 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "hv_synic_simp", file: !4425, line: 319, size: 64, elements: !4426)
!4425 = !DIFile(filename: "./include/asm-generic/hyperv-tlfs.h", directory: "/home/lizy2001/genbc/linux")
!4426 = !{!4427, !4428}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "as_uint64", scope: !4424, file: !4425, line: 320, baseType: !476, size: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, scope: !4424, file: !4425, line: 321, baseType: !4429, size: 64)
!4429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4424, file: !4425, line: 321, size: 64, elements: !4430)
!4430 = !{!4431, !4432, !4433}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "simp_enabled", scope: !4429, file: !4425, line: 322, baseType: !476, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "preserved", scope: !4429, file: !4425, line: 323, baseType: !476, size: 11, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "base_simp_gpa", scope: !4429, file: !4425, line: 324, baseType: !476, size: 52, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!4434 = !DILocation(line: 159, column: 22, scope: !4409)
!4435 = !DILocalVariable(name: "siefp", scope: !4409, file: !3, line: 160, type: !4436)
!4436 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "hv_synic_siefp", file: !4425, line: 329, size: 64, elements: !4437)
!4437 = !{!4438, !4439}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "as_uint64", scope: !4436, file: !4425, line: 330, baseType: !476, size: 64)
!4439 = !DIDerivedType(tag: DW_TAG_member, scope: !4436, file: !4425, line: 331, baseType: !4440, size: 64)
!4440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4436, file: !4425, line: 331, size: 64, elements: !4441)
!4441 = !{!4442, !4443, !4444}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "siefp_enabled", scope: !4440, file: !4425, line: 332, baseType: !476, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "preserved", scope: !4440, file: !4425, line: 333, baseType: !476, size: 11, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "base_siefp_gpa", scope: !4440, file: !4425, line: 334, baseType: !476, size: 52, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!4445 = !DILocation(line: 160, column: 23, scope: !4409)
!4446 = !DILocalVariable(name: "shared_sint", scope: !4409, file: !3, line: 161, type: !4447)
!4447 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "hv_synic_sint", file: !4425, line: 306, size: 64, elements: !4448)
!4448 = !{!4449, !4450}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "as_uint64", scope: !4447, file: !4425, line: 307, baseType: !476, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, scope: !4447, file: !4425, line: 308, baseType: !4451, size: 64)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4447, file: !4425, line: 308, size: 64, elements: !4452)
!4452 = !{!4453, !4454, !4455, !4456, !4457, !4458}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4451, file: !4425, line: 309, baseType: !476, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !4451, file: !4425, line: 310, baseType: !476, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "masked", scope: !4451, file: !4425, line: 311, baseType: !476, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "auto_eoi", scope: !4451, file: !4425, line: 312, baseType: !476, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "polling", scope: !4451, file: !4425, line: 313, baseType: !476, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !4451, file: !4425, line: 314, baseType: !476, size: 45, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!4459 = !DILocation(line: 161, column: 22, scope: !4409)
!4460 = !DILocalVariable(name: "sctrl", scope: !4409, file: !3, line: 162, type: !4461)
!4461 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "hv_synic_scontrol", file: !4425, line: 297, size: 64, elements: !4462)
!4462 = !{!4463, !4464}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "as_uint64", scope: !4461, file: !4425, line: 298, baseType: !476, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, scope: !4461, file: !4425, line: 299, baseType: !4465, size: 64)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4461, file: !4425, line: 299, size: 64, elements: !4466)
!4466 = !{!4467, !4468}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4465, file: !4425, line: 300, baseType: !476, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4465, file: !4425, line: 301, baseType: !476, size: 63, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4469 = !DILocation(line: 162, column: 26, scope: !4409)
!4470 = !DILocation(line: 165, column: 2, scope: !4409)
!4471 = !DILocation(line: 165, column: 2, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4409, file: !3, line: 165, column: 2)
!4473 = !DILocation(line: 166, column: 7, scope: !4409)
!4474 = !DILocation(line: 166, column: 20, scope: !4409)
!4475 = !DILocation(line: 167, column: 36, scope: !4409)
!4476 = !DILocation(line: 167, column: 44, scope: !4409)
!4477 = !DILocation(line: 167, column: 23, scope: !4409)
!4478 = !DILocation(line: 168, column: 3, scope: !4409)
!4479 = !DILocation(line: 167, column: 7, scope: !4409)
!4480 = !DILocation(line: 167, column: 21, scope: !4409)
!4481 = !DILocation(line: 170, column: 2, scope: !4409)
!4482 = !DILocation(line: 173, column: 2, scope: !4409)
!4483 = !DILocation(line: 173, column: 2, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4409, file: !3, line: 173, column: 2)
!4485 = !DILocation(line: 174, column: 8, scope: !4409)
!4486 = !DILocation(line: 174, column: 22, scope: !4409)
!4487 = !DILocation(line: 175, column: 38, scope: !4409)
!4488 = !DILocation(line: 175, column: 46, scope: !4409)
!4489 = !DILocation(line: 175, column: 25, scope: !4409)
!4490 = !DILocation(line: 176, column: 3, scope: !4409)
!4491 = !DILocation(line: 175, column: 8, scope: !4409)
!4492 = !DILocation(line: 175, column: 23, scope: !4409)
!4493 = !DILocation(line: 178, column: 2, scope: !4409)
!4494 = !DILocation(line: 181, column: 2, scope: !4409)
!4495 = !DILocation(line: 181, column: 2, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4409, file: !3, line: 181, column: 2)
!4497 = !DILocation(line: 183, column: 14, scope: !4409)
!4498 = !DILocation(line: 183, column: 21, scope: !4409)
!4499 = !DILocation(line: 184, column: 14, scope: !4409)
!4500 = !DILocation(line: 184, column: 21, scope: !4409)
!4501 = !DILocation(line: 185, column: 25, scope: !4409)
!4502 = !DILocation(line: 185, column: 14, scope: !4409)
!4503 = !DILocation(line: 185, column: 23, scope: !4409)
!4504 = !DILocation(line: 186, column: 2, scope: !4409)
!4505 = !DILocation(line: 189, column: 2, scope: !4409)
!4506 = !DILocation(line: 189, column: 2, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4409, file: !3, line: 189, column: 2)
!4508 = !DILocation(line: 190, column: 8, scope: !4409)
!4509 = !DILocation(line: 190, column: 15, scope: !4409)
!4510 = !DILocation(line: 192, column: 2, scope: !4409)
!4511 = !DILocation(line: 193, column: 1, scope: !4409)
!4512 = distinct !DISubprogram(name: "paravirt_read_msr", scope: !4513, file: !4513, line: 163, type: !4514, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !306)
!4513 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4514 = !DISubroutineType(types: !4515)
!4515 = !{!476, !7}
!4516 = !DILocalVariable(name: "msr", arg: 1, scope: !4512, file: !4513, line: 163, type: !7)
!4517 = !DILocation(line: 163, column: 46, scope: !4512)
!4518 = !DILocalVariable(name: "__ret", scope: !4519, file: !4513, line: 165, type: !476)
!4519 = distinct !DILexicalBlock(scope: !4512, file: !4513, line: 165, column: 9)
!4520 = !DILocation(line: 165, column: 9, scope: !4519)
!4521 = !DILocalVariable(name: "__edi", scope: !4519, file: !4513, line: 165, type: !207)
!4522 = !DILocalVariable(name: "__esi", scope: !4519, file: !4513, line: 165, type: !207)
!4523 = !DILocalVariable(name: "__edx", scope: !4519, file: !4513, line: 165, type: !207)
!4524 = !DILocalVariable(name: "__ecx", scope: !4519, file: !4513, line: 165, type: !207)
!4525 = !DILocalVariable(name: "__eax", scope: !4519, file: !4513, line: 165, type: !207)
!4526 = !DILocation(line: 165, column: 9, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4528, file: !4513, line: 165, column: 9)
!4528 = distinct !DILexicalBlock(scope: !4519, file: !4513, line: 165, column: 9)
!4529 = !{i32 -2145818816, i32 -2145816401, i32 -2145816167, i32 -2145816116, i32 -2145816088, i32 -2145816063, i32 -2145816379, i32 -2145816366, i32 -2145815928, i32 -2145815809, i32 -2145816274, i32 -2145816247, i32 -2145816219, i32 -2145816189}
!4530 = !DILocalVariable(name: "__mask", scope: !4531, file: !4513, line: 165, type: !207)
!4531 = distinct !DILexicalBlock(scope: !4527, file: !4513, line: 165, column: 9)
!4532 = !DILocation(line: 165, column: 9, scope: !4531)
!4533 = !DILocation(line: 165, column: 9, scope: !4528)
!4534 = !DILocation(line: 165, column: 2, scope: !4512)
!4535 = distinct !DISubprogram(name: "virt_to_phys", scope: !4536, file: !4536, line: 129, type: !4537, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !306)
!4536 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!2148, !4539}
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4541 = !DILocalVariable(name: "address", arg: 1, scope: !4535, file: !4536, line: 129, type: !4539)
!4542 = !DILocation(line: 129, column: 55, scope: !4535)
!4543 = !DILocation(line: 131, column: 9, scope: !4535)
!4544 = !DILocation(line: 131, column: 2, scope: !4535)
!4545 = distinct !DISubprogram(name: "wrmsrl", scope: !4513, file: !4513, line: 202, type: !4546, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !306)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{null, !7, !476}
!4548 = !DILocalVariable(name: "msr", arg: 1, scope: !4545, file: !4513, line: 202, type: !7)
!4549 = !DILocation(line: 202, column: 36, scope: !4545)
!4550 = !DILocalVariable(name: "val", arg: 2, scope: !4545, file: !4513, line: 202, type: !476)
!4551 = !DILocation(line: 202, column: 45, scope: !4545)
!4552 = !DILocation(line: 204, column: 2, scope: !4545)
!4553 = !DILocation(line: 204, column: 2, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4545, file: !4513, line: 204, column: 2)
!4555 = !DILocation(line: 205, column: 1, scope: !4545)
!4556 = distinct !DISubprogram(name: "hv_synic_init", scope: !3, file: !3, line: 195, type: !4557, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !306)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{!214, !7}
!4559 = !DILocalVariable(name: "cpu", arg: 1, scope: !4556, file: !3, line: 195, type: !7)
!4560 = !DILocation(line: 195, column: 32, scope: !4556)
!4561 = !DILocation(line: 197, column: 23, scope: !4556)
!4562 = !DILocation(line: 197, column: 2, scope: !4556)
!4563 = !DILocation(line: 199, column: 24, scope: !4556)
!4564 = !DILocation(line: 199, column: 2, scope: !4556)
!4565 = !DILocation(line: 201, column: 2, scope: !4556)
!4566 = distinct !DISubprogram(name: "hv_synic_disable_regs", scope: !3, file: !3, line: 207, type: !4410, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !306)
!4567 = !DILocalVariable(name: "cpu", arg: 1, scope: !4566, file: !3, line: 207, type: !7)
!4568 = !DILocation(line: 207, column: 41, scope: !4566)
!4569 = !DILocalVariable(name: "shared_sint", scope: !4566, file: !3, line: 209, type: !4447)
!4570 = !DILocation(line: 209, column: 22, scope: !4566)
!4571 = !DILocalVariable(name: "simp", scope: !4566, file: !3, line: 210, type: !4424)
!4572 = !DILocation(line: 210, column: 22, scope: !4566)
!4573 = !DILocalVariable(name: "siefp", scope: !4566, file: !3, line: 211, type: !4436)
!4574 = !DILocation(line: 211, column: 23, scope: !4566)
!4575 = !DILocalVariable(name: "sctrl", scope: !4566, file: !3, line: 212, type: !4461)
!4576 = !DILocation(line: 212, column: 26, scope: !4566)
!4577 = !DILocation(line: 214, column: 2, scope: !4566)
!4578 = !DILocation(line: 214, column: 2, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 214, column: 2)
!4580 = !DILocation(line: 216, column: 14, scope: !4566)
!4581 = !DILocation(line: 216, column: 21, scope: !4566)
!4582 = !DILocation(line: 220, column: 2, scope: !4566)
!4583 = !DILocation(line: 222, column: 2, scope: !4566)
!4584 = !DILocation(line: 222, column: 2, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 222, column: 2)
!4586 = !DILocation(line: 223, column: 7, scope: !4566)
!4587 = !DILocation(line: 223, column: 20, scope: !4566)
!4588 = !DILocation(line: 224, column: 7, scope: !4566)
!4589 = !DILocation(line: 224, column: 21, scope: !4566)
!4590 = !DILocation(line: 226, column: 2, scope: !4566)
!4591 = !DILocation(line: 228, column: 2, scope: !4566)
!4592 = !DILocation(line: 228, column: 2, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 228, column: 2)
!4594 = !DILocation(line: 229, column: 8, scope: !4566)
!4595 = !DILocation(line: 229, column: 22, scope: !4566)
!4596 = !DILocation(line: 230, column: 8, scope: !4566)
!4597 = !DILocation(line: 230, column: 23, scope: !4566)
!4598 = !DILocation(line: 232, column: 2, scope: !4566)
!4599 = !DILocation(line: 235, column: 2, scope: !4566)
!4600 = !DILocation(line: 235, column: 2, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 235, column: 2)
!4602 = !DILocation(line: 236, column: 8, scope: !4566)
!4603 = !DILocation(line: 236, column: 15, scope: !4566)
!4604 = !DILocation(line: 237, column: 2, scope: !4566)
!4605 = !DILocation(line: 238, column: 1, scope: !4566)
!4606 = distinct !DISubprogram(name: "hv_synic_cleanup", scope: !3, file: !3, line: 240, type: !4557, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !306)
!4607 = !DILocalVariable(name: "cpu", arg: 1, scope: !4606, file: !3, line: 240, type: !7)
!4608 = !DILocation(line: 240, column: 35, scope: !4606)
!4609 = !DILocalVariable(name: "channel", scope: !4606, file: !3, line: 242, type: !240)
!4610 = !DILocation(line: 242, column: 24, scope: !4606)
!4611 = !DILocalVariable(name: "sc", scope: !4606, file: !3, line: 242, type: !240)
!4612 = !DILocation(line: 242, column: 34, scope: !4606)
!4613 = !DILocalVariable(name: "channel_found", scope: !4606, file: !3, line: 243, type: !216)
!4614 = !DILocation(line: 243, column: 7, scope: !4606)
!4615 = !DILocation(line: 252, column: 6, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 252, column: 6)
!4617 = !DILocation(line: 252, column: 10, scope: !4616)
!4618 = !DILocation(line: 252, column: 31, scope: !4616)
!4619 = !DILocation(line: 253, column: 23, scope: !4616)
!4620 = !DILocation(line: 253, column: 34, scope: !4616)
!4621 = !DILocation(line: 252, column: 6, scope: !4606)
!4622 = !DILocation(line: 254, column: 3, scope: !4616)
!4623 = !DILocation(line: 263, column: 2, scope: !4606)
!4624 = !DILocalVariable(name: "__mptr", scope: !4625, file: !3, line: 264, type: !197)
!4625 = distinct !DILexicalBlock(scope: !4626, file: !3, line: 264, column: 2)
!4626 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 264, column: 2)
!4627 = !DILocation(line: 264, column: 2, scope: !4625)
!4628 = !DILocation(line: 264, column: 2, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4625, file: !3, line: 264, column: 2)
!4630 = !DILocation(line: 264, column: 2, scope: !4626)
!4631 = !DILocation(line: 264, column: 2, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4626, file: !3, line: 264, column: 2)
!4633 = !DILocation(line: 265, column: 7, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 265, column: 7)
!4635 = distinct !DILexicalBlock(scope: !4632, file: !3, line: 264, column: 70)
!4636 = !DILocation(line: 265, column: 16, scope: !4634)
!4637 = !DILocation(line: 265, column: 30, scope: !4634)
!4638 = !DILocation(line: 265, column: 27, scope: !4634)
!4639 = !DILocation(line: 265, column: 7, scope: !4635)
!4640 = !DILocation(line: 266, column: 18, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 265, column: 35)
!4642 = !DILocation(line: 267, column: 4, scope: !4641)
!4643 = !DILocalVariable(name: "__mptr", scope: !4644, file: !3, line: 269, type: !197)
!4644 = distinct !DILexicalBlock(scope: !4645, file: !3, line: 269, column: 3)
!4645 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 269, column: 3)
!4646 = !DILocation(line: 269, column: 3, scope: !4644)
!4647 = !DILocation(line: 269, column: 3, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4644, file: !3, line: 269, column: 3)
!4649 = !DILocation(line: 269, column: 3, scope: !4645)
!4650 = !DILocation(line: 269, column: 3, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4645, file: !3, line: 269, column: 3)
!4652 = !DILocation(line: 270, column: 8, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4654, file: !3, line: 270, column: 8)
!4654 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 269, column: 55)
!4655 = !DILocation(line: 270, column: 12, scope: !4653)
!4656 = !DILocation(line: 270, column: 26, scope: !4653)
!4657 = !DILocation(line: 270, column: 23, scope: !4653)
!4658 = !DILocation(line: 270, column: 8, scope: !4654)
!4659 = !DILocation(line: 271, column: 19, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 270, column: 31)
!4661 = !DILocation(line: 272, column: 5, scope: !4660)
!4662 = !DILocation(line: 274, column: 3, scope: !4654)
!4663 = !DILocalVariable(name: "__mptr", scope: !4664, file: !3, line: 269, type: !197)
!4664 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 269, column: 3)
!4665 = !DILocation(line: 269, column: 3, scope: !4664)
!4666 = !DILocation(line: 269, column: 3, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 269, column: 3)
!4668 = distinct !{!4668, !4649, !4669}
!4669 = !DILocation(line: 274, column: 3, scope: !4645)
!4670 = !DILocation(line: 275, column: 7, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 275, column: 7)
!4672 = !DILocation(line: 275, column: 7, scope: !4635)
!4673 = !DILocation(line: 276, column: 4, scope: !4671)
!4674 = !DILocation(line: 277, column: 2, scope: !4635)
!4675 = !DILocalVariable(name: "__mptr", scope: !4676, file: !3, line: 264, type: !197)
!4676 = distinct !DILexicalBlock(scope: !4632, file: !3, line: 264, column: 2)
!4677 = !DILocation(line: 264, column: 2, scope: !4676)
!4678 = !DILocation(line: 264, column: 2, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 264, column: 2)
!4680 = distinct !{!4680, !4630, !4681}
!4681 = !DILocation(line: 277, column: 2, scope: !4626)
!4682 = !DILocation(line: 278, column: 2, scope: !4606)
!4683 = !DILocation(line: 280, column: 6, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 280, column: 6)
!4685 = !DILocation(line: 280, column: 20, scope: !4684)
!4686 = !DILocation(line: 280, column: 40, scope: !4684)
!4687 = !DILocation(line: 280, column: 51, scope: !4684)
!4688 = !DILocation(line: 280, column: 6, scope: !4606)
!4689 = !DILocation(line: 281, column: 3, scope: !4684)
!4690 = !DILocation(line: 283, column: 27, scope: !4606)
!4691 = !DILocation(line: 283, column: 2, scope: !4606)
!4692 = !DILocation(line: 285, column: 24, scope: !4606)
!4693 = !DILocation(line: 285, column: 2, scope: !4606)
!4694 = !DILocation(line: 287, column: 2, scope: !4606)
!4695 = !DILocation(line: 288, column: 1, scope: !4606)
!4696 = distinct !DISubprogram(name: "kmalloc_array", scope: !186, file: !186, line: 584, type: !4368, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !306)
!4697 = !DILocalVariable(name: "s", arg: 1, scope: !4698, file: !186, line: 445, type: !983)
!4698 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !186, file: !186, line: 445, type: !4699, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !306)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!197, !983, !239, !379}
!4701 = !DILocation(line: 445, column: 72, scope: !4698, inlinedAt: !4702)
!4702 = distinct !DILocation(line: 552, column: 10, scope: !4703, inlinedAt: !4708)
!4703 = distinct !DILexicalBlock(scope: !4704, file: !186, line: 540, column: 34)
!4704 = distinct !DILexicalBlock(scope: !4705, file: !186, line: 540, column: 6)
!4705 = distinct !DISubprogram(name: "kmalloc", scope: !186, file: !186, line: 538, type: !4706, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !306)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!197, !379, !239}
!4708 = distinct !DILocation(line: 591, column: 10, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4696, file: !186, line: 590, column: 6)
!4710 = !DILocalVariable(name: "flags", arg: 2, scope: !4698, file: !186, line: 446, type: !239)
!4711 = !DILocation(line: 446, column: 9, scope: !4698, inlinedAt: !4702)
!4712 = !DILocalVariable(name: "size", arg: 3, scope: !4698, file: !186, line: 446, type: !379)
!4713 = !DILocation(line: 446, column: 23, scope: !4698, inlinedAt: !4702)
!4714 = !DILocalVariable(name: "ret", scope: !4698, file: !186, line: 448, type: !197)
!4715 = !DILocation(line: 448, column: 8, scope: !4698, inlinedAt: !4702)
!4716 = !DILocalVariable(name: "flags", arg: 1, scope: !4717, file: !186, line: 318, type: !239)
!4717 = distinct !DISubprogram(name: "kmalloc_type", scope: !186, file: !186, line: 318, type: !4718, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !306)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!185, !239}
!4720 = !DILocation(line: 318, column: 67, scope: !4717, inlinedAt: !4721)
!4721 = distinct !DILocation(line: 553, column: 20, scope: !4703, inlinedAt: !4708)
!4722 = !DILocalVariable(name: "size", arg: 1, scope: !4723, file: !186, line: 346, type: !379)
!4723 = distinct !DISubprogram(name: "kmalloc_index", scope: !186, file: !186, line: 346, type: !4724, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !306)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{!7, !379}
!4726 = !DILocation(line: 346, column: 58, scope: !4723, inlinedAt: !4727)
!4727 = distinct !DILocation(line: 547, column: 11, scope: !4703, inlinedAt: !4708)
!4728 = !DILocalVariable(name: "size", arg: 1, scope: !4729, file: !186, line: 472, type: !379)
!4729 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !186, file: !186, line: 472, type: !4730, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !306)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!197, !379, !239, !7}
!4732 = !DILocation(line: 472, column: 28, scope: !4729, inlinedAt: !4733)
!4733 = distinct !DILocation(line: 481, column: 9, scope: !4734, inlinedAt: !4735)
!4734 = distinct !DISubprogram(name: "kmalloc_large", scope: !186, file: !186, line: 478, type: !4706, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !306)
!4735 = distinct !DILocation(line: 545, column: 11, scope: !4736, inlinedAt: !4708)
!4736 = distinct !DILexicalBlock(scope: !4703, file: !186, line: 544, column: 7)
!4737 = !DILocalVariable(name: "flags", arg: 2, scope: !4729, file: !186, line: 472, type: !239)
!4738 = !DILocation(line: 472, column: 40, scope: !4729, inlinedAt: !4733)
!4739 = !DILocalVariable(name: "order", arg: 3, scope: !4729, file: !186, line: 472, type: !7)
!4740 = !DILocation(line: 472, column: 60, scope: !4729, inlinedAt: !4733)
!4741 = !DILocalVariable(name: "size", arg: 1, scope: !4734, file: !186, line: 478, type: !379)
!4742 = !DILocation(line: 478, column: 51, scope: !4734, inlinedAt: !4735)
!4743 = !DILocalVariable(name: "flags", arg: 2, scope: !4734, file: !186, line: 478, type: !239)
!4744 = !DILocation(line: 478, column: 63, scope: !4734, inlinedAt: !4735)
!4745 = !DILocalVariable(name: "order", scope: !4734, file: !186, line: 480, type: !7)
!4746 = !DILocation(line: 480, column: 15, scope: !4734, inlinedAt: !4735)
!4747 = !DILocalVariable(name: "size", arg: 1, scope: !4705, file: !186, line: 538, type: !379)
!4748 = !DILocation(line: 538, column: 45, scope: !4705, inlinedAt: !4708)
!4749 = !DILocalVariable(name: "flags", arg: 2, scope: !4705, file: !186, line: 538, type: !239)
!4750 = !DILocation(line: 538, column: 57, scope: !4705, inlinedAt: !4708)
!4751 = !DILocalVariable(name: "index", scope: !4703, file: !186, line: 542, type: !7)
!4752 = !DILocation(line: 542, column: 16, scope: !4703, inlinedAt: !4708)
!4753 = !DILocalVariable(name: "n", arg: 1, scope: !4696, file: !186, line: 584, type: !379)
!4754 = !DILocation(line: 584, column: 42, scope: !4696)
!4755 = !DILocalVariable(name: "size", arg: 2, scope: !4696, file: !186, line: 584, type: !379)
!4756 = !DILocation(line: 584, column: 52, scope: !4696)
!4757 = !DILocalVariable(name: "flags", arg: 3, scope: !4696, file: !186, line: 584, type: !239)
!4758 = !DILocation(line: 584, column: 64, scope: !4696)
!4759 = !DILocalVariable(name: "bytes", scope: !4696, file: !186, line: 586, type: !379)
!4760 = !DILocation(line: 586, column: 9, scope: !4696)
!4761 = !DILocalVariable(name: "__a", scope: !4762, file: !186, line: 588, type: !379)
!4762 = distinct !DILexicalBlock(scope: !4763, file: !186, line: 588, column: 6)
!4763 = distinct !DILexicalBlock(scope: !4696, file: !186, line: 588, column: 6)
!4764 = !DILocation(line: 588, column: 6, scope: !4762)
!4765 = !DILocalVariable(name: "__b", scope: !4762, file: !186, line: 588, type: !379)
!4766 = !DILocalVariable(name: "__d", scope: !4762, file: !186, line: 588, type: !4767)
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!4768 = !DILocation(line: 588, column: 6, scope: !4763)
!4769 = !DILocation(line: 588, column: 6, scope: !4696)
!4770 = !DILocation(line: 589, column: 3, scope: !4763)
!4771 = !DILocation(line: 590, column: 27, scope: !4709)
!4772 = !DILocation(line: 590, column: 6, scope: !4709)
!4773 = !DILocation(line: 590, column: 30, scope: !4709)
!4774 = !DILocation(line: 590, column: 54, scope: !4709)
!4775 = !DILocation(line: 590, column: 33, scope: !4709)
!4776 = !DILocation(line: 590, column: 6, scope: !4696)
!4777 = !DILocation(line: 591, column: 18, scope: !4709)
!4778 = !DILocation(line: 591, column: 25, scope: !4709)
!4779 = !DILocation(line: 540, column: 27, scope: !4704, inlinedAt: !4708)
!4780 = !DILocation(line: 540, column: 6, scope: !4704, inlinedAt: !4708)
!4781 = !DILocation(line: 540, column: 6, scope: !4705, inlinedAt: !4708)
!4782 = !DILocation(line: 544, column: 7, scope: !4736, inlinedAt: !4708)
!4783 = !DILocation(line: 544, column: 12, scope: !4736, inlinedAt: !4708)
!4784 = !DILocation(line: 544, column: 7, scope: !4703, inlinedAt: !4708)
!4785 = !DILocation(line: 545, column: 25, scope: !4736, inlinedAt: !4708)
!4786 = !DILocation(line: 545, column: 31, scope: !4736, inlinedAt: !4708)
!4787 = !DILocation(line: 480, column: 33, scope: !4734, inlinedAt: !4735)
!4788 = !DILocation(line: 480, column: 23, scope: !4734, inlinedAt: !4735)
!4789 = !DILocation(line: 481, column: 29, scope: !4734, inlinedAt: !4735)
!4790 = !DILocation(line: 481, column: 35, scope: !4734, inlinedAt: !4735)
!4791 = !DILocation(line: 481, column: 42, scope: !4734, inlinedAt: !4735)
!4792 = !DILocation(line: 474, column: 23, scope: !4729, inlinedAt: !4733)
!4793 = !DILocation(line: 474, column: 29, scope: !4729, inlinedAt: !4733)
!4794 = !DILocation(line: 474, column: 36, scope: !4729, inlinedAt: !4733)
!4795 = !DILocation(line: 474, column: 9, scope: !4729, inlinedAt: !4733)
!4796 = !DILocation(line: 545, column: 4, scope: !4736, inlinedAt: !4708)
!4797 = !DILocation(line: 547, column: 25, scope: !4703, inlinedAt: !4708)
!4798 = !DILocation(line: 348, column: 7, scope: !4799, inlinedAt: !4727)
!4799 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 348, column: 6)
!4800 = !DILocation(line: 348, column: 6, scope: !4723, inlinedAt: !4727)
!4801 = !DILocation(line: 349, column: 3, scope: !4799, inlinedAt: !4727)
!4802 = !DILocation(line: 351, column: 6, scope: !4803, inlinedAt: !4727)
!4803 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 351, column: 6)
!4804 = !DILocation(line: 351, column: 11, scope: !4803, inlinedAt: !4727)
!4805 = !DILocation(line: 351, column: 6, scope: !4723, inlinedAt: !4727)
!4806 = !DILocation(line: 352, column: 3, scope: !4803, inlinedAt: !4727)
!4807 = !DILocation(line: 354, column: 32, scope: !4808, inlinedAt: !4727)
!4808 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 354, column: 6)
!4809 = !DILocation(line: 354, column: 37, scope: !4808, inlinedAt: !4727)
!4810 = !DILocation(line: 354, column: 42, scope: !4808, inlinedAt: !4727)
!4811 = !DILocation(line: 354, column: 45, scope: !4808, inlinedAt: !4727)
!4812 = !DILocation(line: 354, column: 50, scope: !4808, inlinedAt: !4727)
!4813 = !DILocation(line: 354, column: 6, scope: !4723, inlinedAt: !4727)
!4814 = !DILocation(line: 355, column: 3, scope: !4808, inlinedAt: !4727)
!4815 = !DILocation(line: 356, column: 32, scope: !4816, inlinedAt: !4727)
!4816 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 356, column: 6)
!4817 = !DILocation(line: 356, column: 37, scope: !4816, inlinedAt: !4727)
!4818 = !DILocation(line: 356, column: 43, scope: !4816, inlinedAt: !4727)
!4819 = !DILocation(line: 356, column: 46, scope: !4816, inlinedAt: !4727)
!4820 = !DILocation(line: 356, column: 51, scope: !4816, inlinedAt: !4727)
!4821 = !DILocation(line: 356, column: 6, scope: !4723, inlinedAt: !4727)
!4822 = !DILocation(line: 357, column: 3, scope: !4816, inlinedAt: !4727)
!4823 = !DILocation(line: 358, column: 6, scope: !4824, inlinedAt: !4727)
!4824 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 358, column: 6)
!4825 = !DILocation(line: 358, column: 11, scope: !4824, inlinedAt: !4727)
!4826 = !DILocation(line: 358, column: 6, scope: !4723, inlinedAt: !4727)
!4827 = !DILocation(line: 358, column: 26, scope: !4824, inlinedAt: !4727)
!4828 = !DILocation(line: 359, column: 6, scope: !4829, inlinedAt: !4727)
!4829 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 359, column: 6)
!4830 = !DILocation(line: 359, column: 11, scope: !4829, inlinedAt: !4727)
!4831 = !DILocation(line: 359, column: 6, scope: !4723, inlinedAt: !4727)
!4832 = !DILocation(line: 359, column: 26, scope: !4829, inlinedAt: !4727)
!4833 = !DILocation(line: 360, column: 6, scope: !4834, inlinedAt: !4727)
!4834 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 360, column: 6)
!4835 = !DILocation(line: 360, column: 11, scope: !4834, inlinedAt: !4727)
!4836 = !DILocation(line: 360, column: 6, scope: !4723, inlinedAt: !4727)
!4837 = !DILocation(line: 360, column: 26, scope: !4834, inlinedAt: !4727)
!4838 = !DILocation(line: 361, column: 6, scope: !4839, inlinedAt: !4727)
!4839 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 361, column: 6)
!4840 = !DILocation(line: 361, column: 11, scope: !4839, inlinedAt: !4727)
!4841 = !DILocation(line: 361, column: 6, scope: !4723, inlinedAt: !4727)
!4842 = !DILocation(line: 361, column: 26, scope: !4839, inlinedAt: !4727)
!4843 = !DILocation(line: 362, column: 6, scope: !4844, inlinedAt: !4727)
!4844 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 362, column: 6)
!4845 = !DILocation(line: 362, column: 11, scope: !4844, inlinedAt: !4727)
!4846 = !DILocation(line: 362, column: 6, scope: !4723, inlinedAt: !4727)
!4847 = !DILocation(line: 362, column: 26, scope: !4844, inlinedAt: !4727)
!4848 = !DILocation(line: 363, column: 6, scope: !4849, inlinedAt: !4727)
!4849 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 363, column: 6)
!4850 = !DILocation(line: 363, column: 11, scope: !4849, inlinedAt: !4727)
!4851 = !DILocation(line: 363, column: 6, scope: !4723, inlinedAt: !4727)
!4852 = !DILocation(line: 363, column: 26, scope: !4849, inlinedAt: !4727)
!4853 = !DILocation(line: 364, column: 6, scope: !4854, inlinedAt: !4727)
!4854 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 364, column: 6)
!4855 = !DILocation(line: 364, column: 11, scope: !4854, inlinedAt: !4727)
!4856 = !DILocation(line: 364, column: 6, scope: !4723, inlinedAt: !4727)
!4857 = !DILocation(line: 364, column: 26, scope: !4854, inlinedAt: !4727)
!4858 = !DILocation(line: 365, column: 6, scope: !4859, inlinedAt: !4727)
!4859 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 365, column: 6)
!4860 = !DILocation(line: 365, column: 11, scope: !4859, inlinedAt: !4727)
!4861 = !DILocation(line: 365, column: 6, scope: !4723, inlinedAt: !4727)
!4862 = !DILocation(line: 365, column: 26, scope: !4859, inlinedAt: !4727)
!4863 = !DILocation(line: 366, column: 6, scope: !4864, inlinedAt: !4727)
!4864 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 366, column: 6)
!4865 = !DILocation(line: 366, column: 11, scope: !4864, inlinedAt: !4727)
!4866 = !DILocation(line: 366, column: 6, scope: !4723, inlinedAt: !4727)
!4867 = !DILocation(line: 366, column: 26, scope: !4864, inlinedAt: !4727)
!4868 = !DILocation(line: 367, column: 6, scope: !4869, inlinedAt: !4727)
!4869 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 367, column: 6)
!4870 = !DILocation(line: 367, column: 11, scope: !4869, inlinedAt: !4727)
!4871 = !DILocation(line: 367, column: 6, scope: !4723, inlinedAt: !4727)
!4872 = !DILocation(line: 367, column: 26, scope: !4869, inlinedAt: !4727)
!4873 = !DILocation(line: 368, column: 6, scope: !4874, inlinedAt: !4727)
!4874 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 368, column: 6)
!4875 = !DILocation(line: 368, column: 11, scope: !4874, inlinedAt: !4727)
!4876 = !DILocation(line: 368, column: 6, scope: !4723, inlinedAt: !4727)
!4877 = !DILocation(line: 368, column: 26, scope: !4874, inlinedAt: !4727)
!4878 = !DILocation(line: 369, column: 6, scope: !4879, inlinedAt: !4727)
!4879 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 369, column: 6)
!4880 = !DILocation(line: 369, column: 11, scope: !4879, inlinedAt: !4727)
!4881 = !DILocation(line: 369, column: 6, scope: !4723, inlinedAt: !4727)
!4882 = !DILocation(line: 369, column: 26, scope: !4879, inlinedAt: !4727)
!4883 = !DILocation(line: 370, column: 6, scope: !4884, inlinedAt: !4727)
!4884 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 370, column: 6)
!4885 = !DILocation(line: 370, column: 11, scope: !4884, inlinedAt: !4727)
!4886 = !DILocation(line: 370, column: 6, scope: !4723, inlinedAt: !4727)
!4887 = !DILocation(line: 370, column: 26, scope: !4884, inlinedAt: !4727)
!4888 = !DILocation(line: 371, column: 6, scope: !4889, inlinedAt: !4727)
!4889 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 371, column: 6)
!4890 = !DILocation(line: 371, column: 11, scope: !4889, inlinedAt: !4727)
!4891 = !DILocation(line: 371, column: 6, scope: !4723, inlinedAt: !4727)
!4892 = !DILocation(line: 371, column: 26, scope: !4889, inlinedAt: !4727)
!4893 = !DILocation(line: 372, column: 6, scope: !4894, inlinedAt: !4727)
!4894 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 372, column: 6)
!4895 = !DILocation(line: 372, column: 11, scope: !4894, inlinedAt: !4727)
!4896 = !DILocation(line: 372, column: 6, scope: !4723, inlinedAt: !4727)
!4897 = !DILocation(line: 372, column: 26, scope: !4894, inlinedAt: !4727)
!4898 = !DILocation(line: 373, column: 6, scope: !4899, inlinedAt: !4727)
!4899 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 373, column: 6)
!4900 = !DILocation(line: 373, column: 11, scope: !4899, inlinedAt: !4727)
!4901 = !DILocation(line: 373, column: 6, scope: !4723, inlinedAt: !4727)
!4902 = !DILocation(line: 373, column: 26, scope: !4899, inlinedAt: !4727)
!4903 = !DILocation(line: 374, column: 6, scope: !4904, inlinedAt: !4727)
!4904 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 374, column: 6)
!4905 = !DILocation(line: 374, column: 11, scope: !4904, inlinedAt: !4727)
!4906 = !DILocation(line: 374, column: 6, scope: !4723, inlinedAt: !4727)
!4907 = !DILocation(line: 374, column: 26, scope: !4904, inlinedAt: !4727)
!4908 = !DILocation(line: 375, column: 6, scope: !4909, inlinedAt: !4727)
!4909 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 375, column: 6)
!4910 = !DILocation(line: 375, column: 11, scope: !4909, inlinedAt: !4727)
!4911 = !DILocation(line: 375, column: 6, scope: !4723, inlinedAt: !4727)
!4912 = !DILocation(line: 375, column: 27, scope: !4909, inlinedAt: !4727)
!4913 = !DILocation(line: 376, column: 6, scope: !4914, inlinedAt: !4727)
!4914 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 376, column: 6)
!4915 = !DILocation(line: 376, column: 11, scope: !4914, inlinedAt: !4727)
!4916 = !DILocation(line: 376, column: 6, scope: !4723, inlinedAt: !4727)
!4917 = !DILocation(line: 376, column: 32, scope: !4914, inlinedAt: !4727)
!4918 = !DILocation(line: 377, column: 6, scope: !4919, inlinedAt: !4727)
!4919 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 377, column: 6)
!4920 = !DILocation(line: 377, column: 11, scope: !4919, inlinedAt: !4727)
!4921 = !DILocation(line: 377, column: 6, scope: !4723, inlinedAt: !4727)
!4922 = !DILocation(line: 377, column: 32, scope: !4919, inlinedAt: !4727)
!4923 = !DILocation(line: 378, column: 6, scope: !4924, inlinedAt: !4727)
!4924 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 378, column: 6)
!4925 = !DILocation(line: 378, column: 11, scope: !4924, inlinedAt: !4727)
!4926 = !DILocation(line: 378, column: 6, scope: !4723, inlinedAt: !4727)
!4927 = !DILocation(line: 378, column: 32, scope: !4924, inlinedAt: !4727)
!4928 = !DILocation(line: 379, column: 6, scope: !4929, inlinedAt: !4727)
!4929 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 379, column: 6)
!4930 = !DILocation(line: 379, column: 11, scope: !4929, inlinedAt: !4727)
!4931 = !DILocation(line: 379, column: 6, scope: !4723, inlinedAt: !4727)
!4932 = !DILocation(line: 379, column: 33, scope: !4929, inlinedAt: !4727)
!4933 = !DILocation(line: 380, column: 6, scope: !4934, inlinedAt: !4727)
!4934 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 380, column: 6)
!4935 = !DILocation(line: 380, column: 11, scope: !4934, inlinedAt: !4727)
!4936 = !DILocation(line: 380, column: 6, scope: !4723, inlinedAt: !4727)
!4937 = !DILocation(line: 380, column: 33, scope: !4934, inlinedAt: !4727)
!4938 = !DILocation(line: 381, column: 6, scope: !4939, inlinedAt: !4727)
!4939 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 381, column: 6)
!4940 = !DILocation(line: 381, column: 11, scope: !4939, inlinedAt: !4727)
!4941 = !DILocation(line: 381, column: 6, scope: !4723, inlinedAt: !4727)
!4942 = !DILocation(line: 381, column: 33, scope: !4939, inlinedAt: !4727)
!4943 = !DILocation(line: 382, column: 2, scope: !4944, inlinedAt: !4727)
!4944 = distinct !DILexicalBlock(scope: !4945, file: !186, line: 382, column: 2)
!4945 = distinct !DILexicalBlock(scope: !4723, file: !186, line: 382, column: 2)
!4946 = !{i32 -2142678061, i32 -2142678032, i32 -2142677986, i32 -2142677928, i32 -2142677874, i32 -2142677820, i32 -2142677765, i32 -2142677734}
!4947 = !DILocation(line: 382, column: 2, scope: !4948, inlinedAt: !4727)
!4948 = distinct !DILexicalBlock(scope: !4949, file: !186, line: 382, column: 2)
!4949 = distinct !DILexicalBlock(scope: !4945, file: !186, line: 382, column: 2)
!4950 = !{i32 -2142677291, i32 -2142677284, i32 -2142677230, i32 -2142677199, i32 -2142677169}
!4951 = !DILocation(line: 382, column: 2, scope: !4949, inlinedAt: !4727)
!4952 = !DILocation(line: 386, column: 1, scope: !4723, inlinedAt: !4727)
!4953 = !DILocation(line: 547, column: 9, scope: !4703, inlinedAt: !4708)
!4954 = !DILocation(line: 549, column: 8, scope: !4955, inlinedAt: !4708)
!4955 = distinct !DILexicalBlock(scope: !4703, file: !186, line: 549, column: 7)
!4956 = !DILocation(line: 549, column: 7, scope: !4703, inlinedAt: !4708)
!4957 = !DILocation(line: 550, column: 4, scope: !4955, inlinedAt: !4708)
!4958 = !DILocation(line: 553, column: 33, scope: !4703, inlinedAt: !4708)
!4959 = !DILocation(line: 325, column: 6, scope: !4960, inlinedAt: !4721)
!4960 = distinct !DILexicalBlock(scope: !4717, file: !186, line: 325, column: 6)
!4961 = !DILocation(line: 325, column: 6, scope: !4717, inlinedAt: !4721)
!4962 = !DILocation(line: 326, column: 3, scope: !4960, inlinedAt: !4721)
!4963 = !DILocation(line: 332, column: 9, scope: !4717, inlinedAt: !4721)
!4964 = !DILocation(line: 332, column: 15, scope: !4717, inlinedAt: !4721)
!4965 = !DILocation(line: 332, column: 2, scope: !4717, inlinedAt: !4721)
!4966 = !DILocation(line: 336, column: 1, scope: !4717, inlinedAt: !4721)
!4967 = !DILocation(line: 553, column: 5, scope: !4703, inlinedAt: !4708)
!4968 = !DILocation(line: 553, column: 41, scope: !4703, inlinedAt: !4708)
!4969 = !DILocation(line: 554, column: 5, scope: !4703, inlinedAt: !4708)
!4970 = !DILocation(line: 554, column: 12, scope: !4703, inlinedAt: !4708)
!4971 = !DILocation(line: 448, column: 31, scope: !4698, inlinedAt: !4702)
!4972 = !DILocation(line: 448, column: 34, scope: !4698, inlinedAt: !4702)
!4973 = !DILocation(line: 448, column: 14, scope: !4698, inlinedAt: !4702)
!4974 = !DILocation(line: 450, column: 22, scope: !4698, inlinedAt: !4702)
!4975 = !DILocation(line: 450, column: 25, scope: !4698, inlinedAt: !4702)
!4976 = !DILocation(line: 450, column: 30, scope: !4698, inlinedAt: !4702)
!4977 = !DILocation(line: 450, column: 36, scope: !4698, inlinedAt: !4702)
!4978 = !DILocation(line: 450, column: 8, scope: !4698, inlinedAt: !4702)
!4979 = !DILocation(line: 450, column: 6, scope: !4698, inlinedAt: !4702)
!4980 = !DILocation(line: 451, column: 9, scope: !4698, inlinedAt: !4702)
!4981 = !DILocation(line: 552, column: 3, scope: !4703, inlinedAt: !4708)
!4982 = !DILocation(line: 557, column: 19, scope: !4705, inlinedAt: !4708)
!4983 = !DILocation(line: 557, column: 25, scope: !4705, inlinedAt: !4708)
!4984 = !DILocation(line: 557, column: 9, scope: !4705, inlinedAt: !4708)
!4985 = !DILocation(line: 557, column: 2, scope: !4705, inlinedAt: !4708)
!4986 = !DILocation(line: 558, column: 1, scope: !4705, inlinedAt: !4708)
!4987 = !DILocation(line: 591, column: 3, scope: !4709)
!4988 = !DILocation(line: 592, column: 19, scope: !4696)
!4989 = !DILocation(line: 592, column: 26, scope: !4696)
!4990 = !DILocation(line: 592, column: 9, scope: !4696)
!4991 = !DILocation(line: 592, column: 2, scope: !4696)
!4992 = !DILocation(line: 593, column: 1, scope: !4696)
!4993 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4994, file: !4994, line: 52, type: !4995, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !306)
!4994 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!216, !216}
!4997 = !DILocalVariable(name: "overflow", arg: 1, scope: !4993, file: !4994, line: 52, type: !216)
!4998 = !DILocation(line: 52, column: 60, scope: !4993)
!4999 = !DILocation(line: 54, column: 9, scope: !4993)
!5000 = !DILocation(line: 54, column: 2, scope: !4993)
!5001 = distinct !DISubprogram(name: "get_order", scope: !5002, file: !5002, line: 29, type: !5003, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !306)
!5002 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5003 = !DISubroutineType(types: !5004)
!5004 = !{!214, !207}
!5005 = !DILocalVariable(name: "x", arg: 1, scope: !5006, file: !5007, line: 366, type: !477)
!5006 = distinct !DISubprogram(name: "fls64", scope: !5007, file: !5007, line: 366, type: !5008, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !306)
!5007 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5008 = !DISubroutineType(types: !5009)
!5009 = !{!214, !477}
!5010 = !DILocation(line: 366, column: 40, scope: !5006, inlinedAt: !5011)
!5011 = distinct !DILocation(line: 46, column: 9, scope: !5001)
!5012 = !DILocalVariable(name: "bitpos", scope: !5006, file: !5007, line: 368, type: !214)
!5013 = !DILocation(line: 368, column: 6, scope: !5006, inlinedAt: !5011)
!5014 = !DILocalVariable(name: "size", arg: 1, scope: !5001, file: !5002, line: 29, type: !207)
!5015 = !DILocation(line: 29, column: 63, scope: !5001)
!5016 = !DILocation(line: 31, column: 27, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5001, file: !5002, line: 31, column: 6)
!5018 = !DILocation(line: 31, column: 6, scope: !5017)
!5019 = !DILocation(line: 31, column: 6, scope: !5001)
!5020 = !DILocation(line: 32, column: 8, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5022, file: !5002, line: 32, column: 7)
!5022 = distinct !DILexicalBlock(scope: !5017, file: !5002, line: 31, column: 34)
!5023 = !DILocation(line: 32, column: 7, scope: !5022)
!5024 = !DILocation(line: 33, column: 4, scope: !5021)
!5025 = !DILocation(line: 35, column: 7, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5022, file: !5002, line: 35, column: 7)
!5027 = !DILocation(line: 35, column: 12, scope: !5026)
!5028 = !DILocation(line: 35, column: 7, scope: !5022)
!5029 = !DILocation(line: 36, column: 4, scope: !5026)
!5030 = !DILocation(line: 38, column: 10, scope: !5022)
!5031 = !DILocation(line: 38, column: 28, scope: !5022)
!5032 = !DILocation(line: 38, column: 41, scope: !5022)
!5033 = !DILocation(line: 38, column: 3, scope: !5022)
!5034 = !DILocation(line: 41, column: 6, scope: !5001)
!5035 = !DILocation(line: 42, column: 7, scope: !5001)
!5036 = !DILocation(line: 46, column: 15, scope: !5001)
!5037 = !DILocation(line: 374, column: 2, scope: !5006, inlinedAt: !5011)
!5038 = !DILocation(line: 376, column: 14, scope: !5006, inlinedAt: !5011)
!5039 = !{i32 246295}
!5040 = !DILocation(line: 377, column: 9, scope: !5006, inlinedAt: !5011)
!5041 = !DILocation(line: 377, column: 16, scope: !5006, inlinedAt: !5011)
!5042 = !DILocation(line: 46, column: 2, scope: !5001)
!5043 = !DILocation(line: 48, column: 1, scope: !5001)
!5044 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5045, file: !5045, line: 30, type: !5046, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !306)
!5045 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!214, !476}
!5048 = !DILocation(line: 366, column: 40, scope: !5006, inlinedAt: !5049)
!5049 = distinct !DILocation(line: 32, column: 9, scope: !5044)
!5050 = !DILocation(line: 368, column: 6, scope: !5006, inlinedAt: !5049)
!5051 = !DILocalVariable(name: "n", arg: 1, scope: !5044, file: !5045, line: 30, type: !476)
!5052 = !DILocation(line: 30, column: 21, scope: !5044)
!5053 = !DILocation(line: 32, column: 15, scope: !5044)
!5054 = !DILocation(line: 374, column: 2, scope: !5006, inlinedAt: !5049)
!5055 = !DILocation(line: 376, column: 14, scope: !5006, inlinedAt: !5049)
!5056 = !DILocation(line: 377, column: 9, scope: !5006, inlinedAt: !5049)
!5057 = !DILocation(line: 377, column: 16, scope: !5006, inlinedAt: !5049)
!5058 = !DILocation(line: 32, column: 18, scope: !5044)
!5059 = !DILocation(line: 32, column: 2, scope: !5044)
!5060 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5061, file: !5061, line: 137, type: !5062, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !306)
!5061 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5062 = !DISubroutineType(types: !5063)
!5063 = !{!197, !983, !2150, !379, !239}
!5064 = !DILocalVariable(name: "s", arg: 1, scope: !5060, file: !5061, line: 137, type: !983)
!5065 = !DILocation(line: 137, column: 54, scope: !5060)
!5066 = !DILocalVariable(name: "object", arg: 2, scope: !5060, file: !5061, line: 137, type: !2150)
!5067 = !DILocation(line: 137, column: 69, scope: !5060)
!5068 = !DILocalVariable(name: "size", arg: 3, scope: !5060, file: !5061, line: 138, type: !379)
!5069 = !DILocation(line: 138, column: 12, scope: !5060)
!5070 = !DILocalVariable(name: "flags", arg: 4, scope: !5060, file: !5061, line: 138, type: !239)
!5071 = !DILocation(line: 138, column: 24, scope: !5060)
!5072 = !DILocation(line: 140, column: 17, scope: !5060)
!5073 = !DILocation(line: 140, column: 2, scope: !5060)
!5074 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !5075, file: !5075, line: 18, type: !5076, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !306)
!5075 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/lizy2001/genbc/linux")
!5076 = !DISubroutineType(types: !5077)
!5077 = !{!207, !207}
!5078 = !DILocalVariable(name: "x", arg: 1, scope: !5074, file: !5075, line: 18, type: !207)
!5079 = !DILocation(line: 18, column: 63, scope: !5074)
!5080 = !DILocalVariable(name: "y", scope: !5074, file: !5075, line: 20, type: !207)
!5081 = !DILocation(line: 20, column: 16, scope: !5074)
!5082 = !DILocation(line: 20, column: 20, scope: !5074)
!5083 = !DILocation(line: 20, column: 22, scope: !5074)
!5084 = !DILocation(line: 23, column: 6, scope: !5074)
!5085 = !DILocation(line: 23, column: 12, scope: !5074)
!5086 = !DILocation(line: 23, column: 16, scope: !5074)
!5087 = !DILocation(line: 23, column: 14, scope: !5074)
!5088 = !DILocation(line: 23, column: 11, scope: !5074)
!5089 = !DILocation(line: 23, column: 21, scope: !5074)
!5090 = !DILocation(line: 23, column: 55, scope: !5074)
!5091 = !DILocation(line: 23, column: 53, scope: !5074)
!5092 = !DILocation(line: 23, column: 8, scope: !5074)
!5093 = !DILocation(line: 23, column: 4, scope: !5074)
!5094 = !DILocation(line: 25, column: 9, scope: !5074)
!5095 = !DILocation(line: 25, column: 2, scope: !5074)
!5096 = distinct !DISubprogram(name: "paravirt_write_msr", scope: !4513, file: !4513, line: 168, type: !5097, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !306)
!5097 = !DISubroutineType(types: !5098)
!5098 = !{null, !7, !7, !7}
!5099 = !DILocalVariable(name: "msr", arg: 1, scope: !5096, file: !4513, line: 168, type: !7)
!5100 = !DILocation(line: 168, column: 48, scope: !5096)
!5101 = !DILocalVariable(name: "low", arg: 2, scope: !5096, file: !4513, line: 169, type: !7)
!5102 = !DILocation(line: 169, column: 20, scope: !5096)
!5103 = !DILocalVariable(name: "high", arg: 3, scope: !5096, file: !4513, line: 169, type: !7)
!5104 = !DILocation(line: 169, column: 34, scope: !5096)
!5105 = !DILocalVariable(name: "__edi", scope: !5106, file: !4513, line: 171, type: !207)
!5106 = distinct !DILexicalBlock(scope: !5096, file: !4513, line: 171, column: 2)
!5107 = !DILocation(line: 171, column: 2, scope: !5106)
!5108 = !DILocalVariable(name: "__esi", scope: !5106, file: !4513, line: 171, type: !207)
!5109 = !DILocalVariable(name: "__edx", scope: !5106, file: !4513, line: 171, type: !207)
!5110 = !DILocalVariable(name: "__ecx", scope: !5106, file: !4513, line: 171, type: !207)
!5111 = !DILocalVariable(name: "__eax", scope: !5106, file: !4513, line: 171, type: !207)
!5112 = !{i32 -2145814177, i32 -2145809148, i32 -2145808914, i32 -2145808863, i32 -2145808835, i32 -2145808810, i32 -2145809126, i32 -2145809113, i32 -2145808675, i32 -2145808556, i32 -2145809021, i32 -2145808994, i32 -2145808966, i32 -2145808936}
!5113 = !DILocation(line: 172, column: 1, scope: !5096)
