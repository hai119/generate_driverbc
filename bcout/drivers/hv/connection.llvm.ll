; ModuleID = '../bcout/drivers/hv/connection.llvm.bc'
source_filename = "drivers/hv/connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.vmbus_connection = type { i32, %struct.atomic_t, i32, %struct.atomic_t, %struct.completion, i8*, i8*, i8*, [2 x %struct.hv_monitor_page*], %struct.list_head, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.vmbus_channel**, %struct.workqueue_struct*, %struct.workqueue_struct*, %struct.workqueue_struct*, %struct.atomic_t, %struct.completion, %struct.atomic_t, %struct.completion }
%struct.hv_monitor_page = type { %union.hv_monitor_trigger_state, i32, [4 x %union.hv_monitor_trigger_group], [3 x i64], [4 x [32 x i32]], [4 x [32 x i16]], [32 x i64], [4 x [32 x %struct.hv_monitor_parameter]], [1984 x i8] }
%union.hv_monitor_trigger_state = type { i32 }
%union.hv_monitor_trigger_group = type { i64 }
%struct.hv_monitor_parameter = type { %union.hv_connection_id, i16, i16 }
%union.hv_connection_id = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.file = type { %union.anon.2, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.57, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.58, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.59, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, %struct.fsnotify_mark_connector*, i8* }
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
%struct.kqid = type { %union.anon.56, i32 }
%union.anon.56 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.48, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics }
%struct.load_weight = type { i64, i32 }
%struct.sched_statistics = type {}
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, %struct.sched_rt_entity* }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, %struct.sched_dl_entity* }
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.mm_struct = type { %struct.anon.18, [0 x i64] }
%struct.anon.18 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.19, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.19 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.25, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.26, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.27, %union.anon.31, %struct.key_restriction* }
%union.anon.25 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.26 = type { i64 }
%union.anon.27 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.28, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.28 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.31 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.34, %union.anon.35, i32 }
%struct.request_queue = type opaque
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.36 }
%struct.anon.36 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.47, i32, [12 x i8] }
%union.anon.47 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.48 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.49, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.52 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i64, i64 }
%union.anon.52 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.3, i8* }
%union.anon.3 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.user_namespace = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.57 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%union.anon.58 = type { %struct.callback_head }
%union.anon.59 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.7 }
%union.anon.7 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.62 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.60 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.60 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.lockref = type { %union.anon.63 }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { %struct.spinlock, i32 }
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.vmbus_channel_offer_channel = type <{ %struct.vmbus_channel_message_header, %struct.vmbus_channel_offer, i32, i8, [3 x i8], i32 }>
%struct.vmbus_channel_message_header = type { i32, i32 }
%struct.vmbus_channel_offer = type { %struct.guid_t, %struct.guid_t, i64, i64, i16, i16, %union.anon.68, i16, i16 }
%union.anon.68 = type { %struct.anon.70 }
%struct.anon.70 = type { i32, [116 x i8] }
%struct.page = type { i64, %union.anon.5, %union.anon.55, %struct.atomic_t, [8 x i8] }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.55 = type { %struct.atomic_t }
%struct.hv_ring_buffer_info = type { %struct.hv_ring_buffer*, i32, %struct.reciprocal_value, %struct.spinlock, i32, i32, %struct.mutex }
%struct.hv_ring_buffer = type { i32, i32, i32, i32, [12 x i32], %union.anon.71, [4028 x i8], [0 x i8] }
%union.anon.71 = type { i32 }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.vmbus_close_msg = type { %struct.vmbus_channel_msginfo, %struct.vmbus_channel_close_channel }
%struct.vmbus_channel_msginfo = type { %struct.list_head, %struct.list_head, %struct.completion, %struct.vmbus_channel*, %union.anon.73, i32, [0 x i8] }
%union.anon.73 = type { %struct.vmbus_channel_open_result }
%struct.vmbus_channel_open_result = type { %struct.vmbus_channel_message_header, i32, i32, i32 }
%struct.vmbus_channel_close_channel = type { %struct.vmbus_channel_message_header, i32 }
%struct.tasklet_struct = type { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, %union.anon.74, i64 }
%union.anon.74 = type { void (i64)* }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.67, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.67 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.workqueue_struct = type opaque
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon.75 }
%union.anon.75 = type { i8* }
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
%struct.kmem_cache = type opaque
%struct.vmbus_channel_initiate_contact = type { %struct.vmbus_channel_message_header, i32, i32, %union.anon.76, i64, i64 }
%union.anon.76 = type { i64 }
%struct.anon.77 = type { i8, [3 x i8], i32 }
%struct.vmbus_channel_version_response = type { %struct.vmbus_channel_message_header, i8, i8, i16, i32 }
%struct.anon.1 = type { i32 }

@vmbus_connection = dso_local global %struct.vmbus_connection { i32 0, %struct.atomic_t zeroinitializer, i32 0, %struct.atomic_t { i32 925200 }, %struct.completion zeroinitializer, i8* null, i8* null, i8* null, [2 x %struct.hv_monitor_page*] zeroinitializer, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer, %struct.vmbus_channel** null, %struct.workqueue_struct* null, %struct.workqueue_struct* null, %struct.workqueue_struct* null, %struct.atomic_t zeroinitializer, %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.vmbus_connection* @vmbus_connection to i8*), i64 184) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.vmbus_connection* @vmbus_connection to i8*), i64 184) to %struct.list_head*) } } }, %struct.atomic_t zeroinitializer, %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.vmbus_connection* @vmbus_connection to i8*), i64 216) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.vmbus_connection* @vmbus_connection to i8*), i64 216) to %struct.list_head*) } } } }, align 8, !dbg !0
@__param_str_max_version = internal constant [21 x i8] c"hv_vmbus.max_version\00", align 16, !dbg !4242
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 8
@max_version = internal global i32 327682, align 4, !dbg !4247
@__param_max_version = internal constant %struct.kernel_param { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__param_str_max_version, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.75 { i8* bitcast (i32* @max_version to i8*) } }, section "__param", align 8, !dbg !4173
@__UNIQUE_ID_max_versiontype240 = internal constant [35 x i8] c"hv_vmbus.parmtype=max_version:uint\00", section ".modinfo", align 1, !dbg !4225
@__UNIQUE_ID_max_version241 = internal constant [81 x i8] c"hv_vmbus.parm=max_version:Maximal VMBus protocol version which can be negotiated\00", section ".modinfo", align 1, !dbg !4230
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"hv_vmbus_con\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"hv_pri_chan\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"hv_sub_chan\00", align 1
@vmbus_connect.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4235
@.str.4 = private unnamed_addr constant [32 x i8] c"&vmbus_connection.channel_mutex\00", align 1
@vmbus_versions = internal global [9 x i32] [i32 327682, i32 327681, i32 327680, i32 262145, i32 262144, i32 196608, i32 131076, i32 65537, i32 13], align 16, !dbg !4255
@vmbus_proto_version = dso_local global i32 0, align 4, !dbg !4240
@.str.5 = private unnamed_addr constant [33 x i8] c"\016hv_vmbus: Vmbus version:%d.%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"\013hv_vmbus: Unable to connect to host\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"drivers/hv/connection.c\00", align 1
@jiffies = external dso_local global i64, align 8
@.str.8 = private unnamed_addr constant [49 x i8] c"\013hv_vmbus: hv_post_msg() failed; error code:%d\0A\00", align 1
@__init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4250
@.str.9 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@hv_vp_index = external dso_local global i32*, align 8
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.10 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@hv_hypercall_pg = external dso_local global i8*, align 8
@llvm.used = appending global [3 x i8*] [i8* bitcast (%struct.kernel_param* @__param_max_version to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_max_versiontype240, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__UNIQUE_ID_max_version241, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @vmbus_negotiate_version(%struct.vmbus_channel_msginfo* %msginfo, i32 %version) #0 !dbg !4340 {
entry:
  %lock.addr.i108 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i108, metadata !4344, metadata !DIExpression()), !dbg !4350
  %lock.addr.i103 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i103, metadata !4357, metadata !DIExpression()), !dbg !4361
  %flags.addr.i104 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i104, metadata !4365, metadata !DIExpression()), !dbg !4366
  %tmp.i105 = alloca i32, align 4
  %tmp8.i106 = alloca i32, align 4
  %lock.addr.i101 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i101, metadata !4344, metadata !DIExpression()), !dbg !4367
  %lock.addr.i96 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i96, metadata !4357, metadata !DIExpression()), !dbg !4374
  %flags.addr.i97 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i97, metadata !4365, metadata !DIExpression()), !dbg !4376
  %tmp.i98 = alloca i32, align 4
  %tmp8.i99 = alloca i32, align 4
  %lock.addr.i94 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i94, metadata !4357, metadata !DIExpression()), !dbg !4377
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4365, metadata !DIExpression()), !dbg !4379
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4344, metadata !DIExpression()), !dbg !4380
  %retval = alloca i32, align 4
  %msginfo.addr = alloca %struct.vmbus_channel_msginfo*, align 8
  %version.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %msg = alloca %struct.vmbus_channel_initiate_contact*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy10 = alloca i64, align 8
  %__dummy211 = alloca i64, align 8
  %tmp14 = alloca i32, align 4
  %__dummy31 = alloca i64, align 8
  %__dummy232 = alloca i64, align 8
  %tmp35 = alloca i32, align 4
  %__dummy39 = alloca i64, align 8
  %__dummy240 = alloca i64, align 8
  %tmp43 = alloca i32, align 4
  %__dummy60 = alloca i64, align 8
  %__dummy261 = alloca i64, align 8
  %tmp64 = alloca i32, align 4
  %__dummy68 = alloca i64, align 8
  %__dummy269 = alloca i64, align 8
  %tmp72 = alloca i32, align 4
  store %struct.vmbus_channel_msginfo* %msginfo, %struct.vmbus_channel_msginfo** %msginfo.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vmbus_channel_msginfo** %msginfo.addr, metadata !4387, metadata !DIExpression()), !dbg !4388
  store i32 %version, i32* %version.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %version.addr, metadata !4389, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4391, metadata !DIExpression()), !dbg !4392
  store i32 0, i32* %ret, align 4, !dbg !4392
  call void @llvm.dbg.declare(metadata %struct.vmbus_channel_initiate_contact** %msg, metadata !4393, metadata !DIExpression()), !dbg !4394
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4395, metadata !DIExpression()), !dbg !4396
  %0 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %msginfo.addr, align 8, !dbg !4397
  %waitevent = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %0, i32 0, i32 2, !dbg !4397
  call void @__init_completion(%struct.completion* %waitevent) #10, !dbg !4397
  %1 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %msginfo.addr, align 8, !dbg !4398
  %msg1 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %1, i32 0, i32 6, !dbg !4399
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %msg1, i64 0, i64 0, !dbg !4398
  %2 = bitcast i8* %arraydecay to %struct.vmbus_channel_initiate_contact*, !dbg !4400
  store %struct.vmbus_channel_initiate_contact* %2, %struct.vmbus_channel_initiate_contact** %msg, align 8, !dbg !4401
  %3 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %msg, align 8, !dbg !4402
  %4 = bitcast %struct.vmbus_channel_initiate_contact* %3 to i8*, !dbg !4403
  call void @llvm.memset.p0i8.i64(i8* align 1 %4, i8 0, i64 40, i1 false), !dbg !4403
  %5 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %msg, align 8, !dbg !4404
  %header = getelementptr inbounds %struct.vmbus_channel_initiate_contact, %struct.vmbus_channel_initiate_contact* %5, i32 0, i32 0, !dbg !4405
  %msgtype = getelementptr inbounds %struct.vmbus_channel_message_header, %struct.vmbus_channel_message_header* %header, i32 0, i32 0, !dbg !4406
  store i32 14, i32* %msgtype, align 1, !dbg !4407
  %6 = load i32, i32* %version.addr, align 4, !dbg !4408
  %7 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %msg, align 8, !dbg !4409
  %vmbus_version_requested = getelementptr inbounds %struct.vmbus_channel_initiate_contact, %struct.vmbus_channel_initiate_contact* %7, i32 0, i32 1, !dbg !4410
  store i32 %6, i32* %vmbus_version_requested, align 1, !dbg !4411
  %8 = load i32, i32* %version.addr, align 4, !dbg !4412
  %cmp = icmp uge i32 %8, 327680, !dbg !4414
  br i1 %cmp, label %if.then, label %if.else, !dbg !4415

if.then:                                          ; preds = %entry
  %9 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %msg, align 8, !dbg !4416
  %10 = getelementptr inbounds %struct.vmbus_channel_initiate_contact, %struct.vmbus_channel_initiate_contact* %9, i32 0, i32 3, !dbg !4418
  %11 = bitcast %union.anon.76* %10 to %struct.anon.77*, !dbg !4418
  %msg_sint = getelementptr inbounds %struct.anon.77, %struct.anon.77* %11, i32 0, i32 0, !dbg !4418
  store i8 2, i8* %msg_sint, align 1, !dbg !4419
  store i32 4, i32* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 0), align 8, !dbg !4420
  br label %if.end, !dbg !4421

if.else:                                          ; preds = %entry
  %12 = load i8*, i8** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 5), align 8, !dbg !4422
  %call = call i64 @virt_to_phys(i8* %12) #10, !dbg !4424
  %13 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %msg, align 8, !dbg !4425
  %14 = getelementptr inbounds %struct.vmbus_channel_initiate_contact, %struct.vmbus_channel_initiate_contact* %13, i32 0, i32 3, !dbg !4426
  %interrupt_page = bitcast %union.anon.76* %14 to i64*, !dbg !4426
  store i64 %call, i64* %interrupt_page, align 1, !dbg !4427
  store i32 1, i32* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 0), align 8, !dbg !4428
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct.hv_monitor_page*, %struct.hv_monitor_page** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 8, i64 0), align 8, !dbg !4429
  %16 = bitcast %struct.hv_monitor_page* %15 to i8*, !dbg !4429
  %call2 = call i64 @virt_to_phys(i8* %16) #10, !dbg !4430
  %17 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %msg, align 8, !dbg !4431
  %monitor_page1 = getelementptr inbounds %struct.vmbus_channel_initiate_contact, %struct.vmbus_channel_initiate_contact* %17, i32 0, i32 4, !dbg !4432
  store i64 %call2, i64* %monitor_page1, align 1, !dbg !4433
  %18 = load %struct.hv_monitor_page*, %struct.hv_monitor_page** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 8, i64 1), align 8, !dbg !4434
  %19 = bitcast %struct.hv_monitor_page* %18 to i8*, !dbg !4434
  %call3 = call i64 @virt_to_phys(i8* %19) #10, !dbg !4435
  %20 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %msg, align 8, !dbg !4436
  %monitor_page2 = getelementptr inbounds %struct.vmbus_channel_initiate_contact, %struct.vmbus_channel_initiate_contact* %20, i32 0, i32 5, !dbg !4437
  store i64 %call3, i64* %monitor_page2, align 1, !dbg !4438
  %call4 = call i32 @hv_cpu_number_to_vp_number(i32 0) #10, !dbg !4439
  %21 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %msg, align 8, !dbg !4440
  %target_vcpu = getelementptr inbounds %struct.vmbus_channel_initiate_contact, %struct.vmbus_channel_initiate_contact* %21, i32 0, i32 2, !dbg !4441
  store i32 %call4, i32* %target_vcpu, align 1, !dbg !4442
  br label %do.body, !dbg !4443

do.body:                                          ; preds = %if.end
  br label %do.body5, !dbg !4444

do.body5:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4445, metadata !DIExpression()), !dbg !4447
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4448, metadata !DIExpression()), !dbg !4447
  %cmp6 = icmp eq i64* %__dummy, %__dummy2, !dbg !4447
  %conv = zext i1 %cmp6 to i32, !dbg !4447
  store i32 1, i32* %tmp, align 4, !dbg !4447
  %22 = load i32, i32* %tmp, align 4, !dbg !4447
  br label %do.body7, !dbg !4449

do.body7:                                         ; preds = %do.body5
  br label %do.body8, !dbg !4450

do.body8:                                         ; preds = %do.body7
  br label %do.body9, !dbg !4451

do.body9:                                         ; preds = %do.body8
  call void @llvm.dbg.declare(metadata i64* %__dummy10, metadata !4453, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.declare(metadata i64* %__dummy211, metadata !4457, metadata !DIExpression()), !dbg !4456
  %cmp12 = icmp eq i64* %__dummy10, %__dummy211, !dbg !4456
  %conv13 = zext i1 %cmp12 to i32, !dbg !4456
  store i32 1, i32* %tmp14, align 4, !dbg !4456
  %23 = load i32, i32* %tmp14, align 4, !dbg !4456
  %call15 = call i64 @arch_local_irq_save() #10, !dbg !4458
  store i64 %call15, i64* %flags, align 8, !dbg !4458
  br label %do.end, !dbg !4458

do.end:                                           ; preds = %do.body9
  br label %do.end16, !dbg !4451

do.end16:                                         ; preds = %do.end
  br label %do.body17, !dbg !4450

do.body17:                                        ; preds = %do.end16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4459, !srcloc !4460
  br label %do.body18, !dbg !4459

do.body18:                                        ; preds = %do.body17
  store %struct.spinlock* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 10), %struct.spinlock** %lock.addr.i, align 8
  %24 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4461
  %25 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %24, i32 0, i32 0, !dbg !4462
  %rlock.i = bitcast %union.anon* %25 to %struct.raw_spinlock*, !dbg !4462
  br label %do.end20, !dbg !4463

do.end20:                                         ; preds = %do.body18
  br label %do.end21, !dbg !4459

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !4450

do.end22:                                         ; preds = %do.end21
  br label %do.end23, !dbg !4449

do.end23:                                         ; preds = %do.end22
  br label %do.end24, !dbg !4444

do.end24:                                         ; preds = %do.end23
  %26 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %msginfo.addr, align 8, !dbg !4464
  %msglistentry = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %26, i32 0, i32 0, !dbg !4465
  call void @list_add_tail(%struct.list_head* %msglistentry, %struct.list_head* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 9)) #10, !dbg !4466
  %27 = load i64, i64* %flags, align 8, !dbg !4467
  store %struct.spinlock* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 10), %struct.spinlock** %lock.addr.i96, align 8
  store i64 %27, i64* %flags.addr.i97, align 8
  call void @llvm.dbg.declare(metadata !307, metadata !4468, metadata !DIExpression()) #7, !dbg !4471
  call void @llvm.dbg.declare(metadata !307, metadata !4472, metadata !DIExpression()) #7, !dbg !4471
  store i32 1, i32* %tmp.i98, align 4, !dbg !4471
  %28 = load i32, i32* %tmp.i98, align 4, !dbg !4471
  call void @llvm.dbg.declare(metadata !307, metadata !4473, metadata !DIExpression()) #7, !dbg !4478
  call void @llvm.dbg.declare(metadata !307, metadata !4479, metadata !DIExpression()) #7, !dbg !4478
  store i32 1, i32* %tmp8.i99, align 4, !dbg !4478
  %29 = load i32, i32* %tmp8.i99, align 4, !dbg !4478
  %30 = load i64, i64* %flags.addr.i97, align 8, !dbg !4480
  call void @arch_local_irq_restore(i64 %30) #11, !dbg !4480
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4481, !srcloc !4483
  %31 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i96, align 8, !dbg !4484
  %32 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %31, i32 0, i32 0, !dbg !4484
  %rlock.i100 = bitcast %union.anon* %32 to %struct.raw_spinlock*, !dbg !4484
  %33 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %msg, align 8, !dbg !4486
  %34 = bitcast %struct.vmbus_channel_initiate_contact* %33 to i8*, !dbg !4486
  %call25 = call i32 @vmbus_post_msg(i8* %34, i64 40, i1 zeroext true) #10, !dbg !4487
  store i32 %call25, i32* %ret, align 4, !dbg !4488
  %35 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %msg, align 8, !dbg !4489
  %36 = load i32, i32* %ret, align 4, !dbg !4490
  call void @trace_vmbus_negotiate_version(%struct.vmbus_channel_initiate_contact* %35, i32 %36) #10, !dbg !4491
  %37 = load i32, i32* %ret, align 4, !dbg !4492
  %cmp26 = icmp ne i32 %37, 0, !dbg !4493
  br i1 %cmp26, label %if.then28, label %if.end56, !dbg !4494

if.then28:                                        ; preds = %do.end24
  br label %do.body29, !dbg !4495

do.body29:                                        ; preds = %if.then28
  br label %do.body30, !dbg !4496

do.body30:                                        ; preds = %do.body29
  call void @llvm.dbg.declare(metadata i64* %__dummy31, metadata !4497, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.declare(metadata i64* %__dummy232, metadata !4500, metadata !DIExpression()), !dbg !4499
  %cmp33 = icmp eq i64* %__dummy31, %__dummy232, !dbg !4499
  %conv34 = zext i1 %cmp33 to i32, !dbg !4499
  store i32 1, i32* %tmp35, align 4, !dbg !4499
  %38 = load i32, i32* %tmp35, align 4, !dbg !4499
  br label %do.body36, !dbg !4501

do.body36:                                        ; preds = %do.body30
  br label %do.body37, !dbg !4502

do.body37:                                        ; preds = %do.body36
  br label %do.body38, !dbg !4503

do.body38:                                        ; preds = %do.body37
  call void @llvm.dbg.declare(metadata i64* %__dummy39, metadata !4505, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.declare(metadata i64* %__dummy240, metadata !4509, metadata !DIExpression()), !dbg !4508
  %cmp41 = icmp eq i64* %__dummy39, %__dummy240, !dbg !4508
  %conv42 = zext i1 %cmp41 to i32, !dbg !4508
  store i32 1, i32* %tmp43, align 4, !dbg !4508
  %39 = load i32, i32* %tmp43, align 4, !dbg !4508
  %call44 = call i64 @arch_local_irq_save() #10, !dbg !4510
  store i64 %call44, i64* %flags, align 8, !dbg !4510
  br label %do.end45, !dbg !4510

do.end45:                                         ; preds = %do.body38
  br label %do.end46, !dbg !4503

do.end46:                                         ; preds = %do.end45
  br label %do.body47, !dbg !4502

do.body47:                                        ; preds = %do.end46
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4511, !srcloc !4512
  br label %do.body48, !dbg !4511

do.body48:                                        ; preds = %do.body47
  store %struct.spinlock* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 10), %struct.spinlock** %lock.addr.i101, align 8
  %40 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i101, align 8, !dbg !4513
  %41 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %40, i32 0, i32 0, !dbg !4514
  %rlock.i102 = bitcast %union.anon* %41 to %struct.raw_spinlock*, !dbg !4514
  br label %do.end50, !dbg !4515

do.end50:                                         ; preds = %do.body48
  br label %do.end51, !dbg !4511

do.end51:                                         ; preds = %do.end50
  br label %do.end52, !dbg !4502

do.end52:                                         ; preds = %do.end51
  br label %do.end53, !dbg !4501

do.end53:                                         ; preds = %do.end52
  br label %do.end54, !dbg !4496

do.end54:                                         ; preds = %do.end53
  %42 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %msginfo.addr, align 8, !dbg !4516
  %msglistentry55 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %42, i32 0, i32 0, !dbg !4517
  call void @list_del(%struct.list_head* %msglistentry55) #10, !dbg !4518
  %43 = load i64, i64* %flags, align 8, !dbg !4519
  store %struct.spinlock* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 10), %struct.spinlock** %lock.addr.i103, align 8
  store i64 %43, i64* %flags.addr.i104, align 8
  call void @llvm.dbg.declare(metadata !307, metadata !4468, metadata !DIExpression()) #7, !dbg !4520
  call void @llvm.dbg.declare(metadata !307, metadata !4472, metadata !DIExpression()) #7, !dbg !4520
  store i32 1, i32* %tmp.i105, align 4, !dbg !4520
  %44 = load i32, i32* %tmp.i105, align 4, !dbg !4520
  call void @llvm.dbg.declare(metadata !307, metadata !4473, metadata !DIExpression()) #7, !dbg !4521
  call void @llvm.dbg.declare(metadata !307, metadata !4479, metadata !DIExpression()) #7, !dbg !4521
  store i32 1, i32* %tmp8.i106, align 4, !dbg !4521
  %45 = load i32, i32* %tmp8.i106, align 4, !dbg !4521
  %46 = load i64, i64* %flags.addr.i104, align 8, !dbg !4522
  call void @arch_local_irq_restore(i64 %46) #11, !dbg !4522
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4523, !srcloc !4483
  %47 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i103, align 8, !dbg !4524
  %48 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %47, i32 0, i32 0, !dbg !4524
  %rlock.i107 = bitcast %union.anon* %48 to %struct.raw_spinlock*, !dbg !4524
  %49 = load i32, i32* %ret, align 4, !dbg !4525
  store i32 %49, i32* %retval, align 4, !dbg !4526
  br label %return, !dbg !4526

if.end56:                                         ; preds = %do.end24
  %50 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %msginfo.addr, align 8, !dbg !4527
  %waitevent57 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %50, i32 0, i32 2, !dbg !4528
  call void @wait_for_completion(%struct.completion* %waitevent57) #10, !dbg !4529
  br label %do.body58, !dbg !4530

do.body58:                                        ; preds = %if.end56
  br label %do.body59, !dbg !4531

do.body59:                                        ; preds = %do.body58
  call void @llvm.dbg.declare(metadata i64* %__dummy60, metadata !4532, metadata !DIExpression()), !dbg !4534
  call void @llvm.dbg.declare(metadata i64* %__dummy261, metadata !4535, metadata !DIExpression()), !dbg !4534
  %cmp62 = icmp eq i64* %__dummy60, %__dummy261, !dbg !4534
  %conv63 = zext i1 %cmp62 to i32, !dbg !4534
  store i32 1, i32* %tmp64, align 4, !dbg !4534
  %51 = load i32, i32* %tmp64, align 4, !dbg !4534
  br label %do.body65, !dbg !4536

do.body65:                                        ; preds = %do.body59
  br label %do.body66, !dbg !4537

do.body66:                                        ; preds = %do.body65
  br label %do.body67, !dbg !4538

do.body67:                                        ; preds = %do.body66
  call void @llvm.dbg.declare(metadata i64* %__dummy68, metadata !4540, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.declare(metadata i64* %__dummy269, metadata !4544, metadata !DIExpression()), !dbg !4543
  %cmp70 = icmp eq i64* %__dummy68, %__dummy269, !dbg !4543
  %conv71 = zext i1 %cmp70 to i32, !dbg !4543
  store i32 1, i32* %tmp72, align 4, !dbg !4543
  %52 = load i32, i32* %tmp72, align 4, !dbg !4543
  %call73 = call i64 @arch_local_irq_save() #10, !dbg !4545
  store i64 %call73, i64* %flags, align 8, !dbg !4545
  br label %do.end74, !dbg !4545

do.end74:                                         ; preds = %do.body67
  br label %do.end75, !dbg !4538

do.end75:                                         ; preds = %do.end74
  br label %do.body76, !dbg !4537

do.body76:                                        ; preds = %do.end75
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4546, !srcloc !4547
  br label %do.body77, !dbg !4546

do.body77:                                        ; preds = %do.body76
  store %struct.spinlock* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 10), %struct.spinlock** %lock.addr.i108, align 8
  %53 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i108, align 8, !dbg !4548
  %54 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %53, i32 0, i32 0, !dbg !4549
  %rlock.i109 = bitcast %union.anon* %54 to %struct.raw_spinlock*, !dbg !4549
  br label %do.end79, !dbg !4550

do.end79:                                         ; preds = %do.body77
  br label %do.end80, !dbg !4546

do.end80:                                         ; preds = %do.end79
  br label %do.end81, !dbg !4537

do.end81:                                         ; preds = %do.end80
  br label %do.end82, !dbg !4536

do.end82:                                         ; preds = %do.end81
  br label %do.end83, !dbg !4531

do.end83:                                         ; preds = %do.end82
  %55 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %msginfo.addr, align 8, !dbg !4551
  %msglistentry84 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %55, i32 0, i32 0, !dbg !4552
  call void @list_del(%struct.list_head* %msglistentry84) #10, !dbg !4553
  %56 = load i64, i64* %flags, align 8, !dbg !4554
  store %struct.spinlock* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 10), %struct.spinlock** %lock.addr.i94, align 8
  store i64 %56, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !307, metadata !4468, metadata !DIExpression()) #7, !dbg !4555
  call void @llvm.dbg.declare(metadata !307, metadata !4472, metadata !DIExpression()) #7, !dbg !4555
  store i32 1, i32* %tmp.i, align 4, !dbg !4555
  %57 = load i32, i32* %tmp.i, align 4, !dbg !4555
  call void @llvm.dbg.declare(metadata !307, metadata !4473, metadata !DIExpression()) #7, !dbg !4556
  call void @llvm.dbg.declare(metadata !307, metadata !4479, metadata !DIExpression()) #7, !dbg !4556
  store i32 1, i32* %tmp8.i, align 4, !dbg !4556
  %58 = load i32, i32* %tmp8.i, align 4, !dbg !4556
  %59 = load i64, i64* %flags.addr.i, align 8, !dbg !4557
  call void @arch_local_irq_restore(i64 %59) #11, !dbg !4557
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4558, !srcloc !4483
  %60 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i94, align 8, !dbg !4559
  %61 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %60, i32 0, i32 0, !dbg !4559
  %rlock.i95 = bitcast %union.anon* %61 to %struct.raw_spinlock*, !dbg !4559
  %62 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %msginfo.addr, align 8, !dbg !4560
  %response = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %62, i32 0, i32 4, !dbg !4562
  %version_response = bitcast %union.anon.73* %response to %struct.vmbus_channel_version_response*, !dbg !4563
  %version_supported = getelementptr inbounds %struct.vmbus_channel_version_response, %struct.vmbus_channel_version_response* %version_response, i32 0, i32 1, !dbg !4564
  %63 = load i8, i8* %version_supported, align 8, !dbg !4564
  %tobool = icmp ne i8 %63, 0, !dbg !4560
  br i1 %tobool, label %if.then85, label %if.else92, !dbg !4565

if.then85:                                        ; preds = %do.end83
  store i32 2, i32* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 2), align 8, !dbg !4566
  %64 = load i32, i32* %version.addr, align 4, !dbg !4568
  %cmp86 = icmp uge i32 %64, 327680, !dbg !4570
  br i1 %cmp86, label %if.then88, label %if.end91, !dbg !4571

if.then88:                                        ; preds = %if.then85
  %65 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %msginfo.addr, align 8, !dbg !4572
  %response89 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %65, i32 0, i32 4, !dbg !4573
  %version_response90 = bitcast %union.anon.73* %response89 to %struct.vmbus_channel_version_response*, !dbg !4574
  %msg_conn_id = getelementptr inbounds %struct.vmbus_channel_version_response, %struct.vmbus_channel_version_response* %version_response90, i32 0, i32 4, !dbg !4575
  %66 = load i32, i32* %msg_conn_id, align 4, !dbg !4575
  store i32 %66, i32* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 0), align 8, !dbg !4576
  br label %if.end91, !dbg !4577

if.end91:                                         ; preds = %if.then88, %if.then85
  br label %if.end93, !dbg !4578

if.else92:                                        ; preds = %do.end83
  store i32 -111, i32* %retval, align 4, !dbg !4579
  br label %return, !dbg !4579

if.end93:                                         ; preds = %if.end91
  %67 = load i32, i32* %ret, align 4, !dbg !4581
  store i32 %67, i32* %retval, align 4, !dbg !4582
  br label %return, !dbg !4582

return:                                           ; preds = %if.end93, %if.else92, %do.end54
  %68 = load i32, i32* %retval, align 4, !dbg !4583
  ret i32 %68, !dbg !4583
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_completion(%struct.completion* %x) #0 !dbg !4252 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !4584, metadata !DIExpression()), !dbg !4585
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !4586
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !4587
  store i32 0, i32* %done, align 8, !dbg !4588
  br label %do.body, !dbg !4589

do.body:                                          ; preds = %entry
  %1 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !4590
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %1, i32 0, i32 1, !dbg !4590
  call void @__init_swait_queue_head(%struct.swait_queue_head* %wait, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), %struct.lock_class_key* @__init_completion.__key) #10, !dbg !4590
  br label %do.end, !dbg !4590

do.end:                                           ; preds = %do.body
  ret void, !dbg !4592
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @virt_to_phys(i8* %address) #0 !dbg !4593 {
entry:
  %address.addr = alloca i8*, align 8
  store i8* %address, i8** %address.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !4599, metadata !DIExpression()), !dbg !4600
  %0 = load i8*, i8** %address.addr, align 8, !dbg !4601
  %1 = ptrtoint i8* %0 to i64, !dbg !4601
  %call = call i64 @__phys_addr_nodebug(i64 %1) #10, !dbg !4601
  ret i64 %call, !dbg !4602
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hv_cpu_number_to_vp_number(i32 %cpu_number) #0 !dbg !4603 {
entry:
  %cpu_number.addr = alloca i32, align 4
  store i32 %cpu_number, i32* %cpu_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu_number.addr, metadata !4605, metadata !DIExpression()), !dbg !4606
  %0 = load i32*, i32** @hv_vp_index, align 8, !dbg !4607
  %1 = load i32, i32* %cpu_number.addr, align 4, !dbg !4608
  %idxprom = sext i32 %1 to i64, !dbg !4607
  %arrayidx = getelementptr i32, i32* %0, i64 %idxprom, !dbg !4607
  %2 = load i32, i32* %arrayidx, align 4, !dbg !4607
  ret i32 %2, !dbg !4609
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !4610 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !4614, metadata !DIExpression()), !dbg !4615
  %call = call i64 @arch_local_save_flags() #10, !dbg !4616
  store i64 %call, i64* %f, align 8, !dbg !4617
  call void @arch_local_irq_disable() #10, !dbg !4618
  %0 = load i64, i64* %f, align 8, !dbg !4619
  ret i64 %0, !dbg !4620
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4621 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4625, metadata !DIExpression()), !dbg !4626
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4627, metadata !DIExpression()), !dbg !4628
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4629
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4630
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4631
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4631
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4632
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #10, !dbg !4633
  ret void, !dbg !4634
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @vmbus_post_msg(i8* %buffer, i64 %buflen, i1 zeroext %can_sleep) #0 !dbg !4635 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %can_sleep.addr = alloca i8, align 1
  %hdr = alloca %struct.vmbus_channel_message_header*, align 8
  %conn_id = alloca %union.hv_connection_id, align 4
  %ret = alloca i32, align 4
  %retries = alloca i32, align 4
  %usec = alloca i32, align 4
  %__ms = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !4638, metadata !DIExpression()), !dbg !4639
  store i64 %buflen, i64* %buflen.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %buflen.addr, metadata !4640, metadata !DIExpression()), !dbg !4641
  %frombool = zext i1 %can_sleep to i8
  store i8 %frombool, i8* %can_sleep.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %can_sleep.addr, metadata !4642, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.declare(metadata %struct.vmbus_channel_message_header** %hdr, metadata !4644, metadata !DIExpression()), !dbg !4646
  call void @llvm.dbg.declare(metadata %union.hv_connection_id* %conn_id, metadata !4647, metadata !DIExpression()), !dbg !4648
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4649, metadata !DIExpression()), !dbg !4650
  store i32 0, i32* %ret, align 4, !dbg !4650
  call void @llvm.dbg.declare(metadata i32* %retries, metadata !4651, metadata !DIExpression()), !dbg !4652
  store i32 0, i32* %retries, align 4, !dbg !4652
  call void @llvm.dbg.declare(metadata i32* %usec, metadata !4653, metadata !DIExpression()), !dbg !4654
  store i32 1, i32* %usec, align 4, !dbg !4654
  %asu32 = bitcast %union.hv_connection_id* %conn_id to i32*, !dbg !4655
  store i32 0, i32* %asu32, align 4, !dbg !4656
  %0 = load i32, i32* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 0), align 8, !dbg !4657
  %u = bitcast %union.hv_connection_id* %conn_id to %struct.anon.1*, !dbg !4658
  %1 = bitcast %struct.anon.1* %u to i32*, !dbg !4659
  %bf.load = load i32, i32* %1, align 4, !dbg !4660
  %bf.value = and i32 %0, 16777215, !dbg !4660
  %bf.clear = and i32 %bf.load, -16777216, !dbg !4660
  %bf.set = or i32 %bf.clear, %bf.value, !dbg !4660
  store i32 %bf.set, i32* %1, align 4, !dbg !4660
  br label %while.cond, !dbg !4661

while.cond:                                       ; preds = %if.end55, %entry
  %2 = load i32, i32* %retries, align 4, !dbg !4662
  %cmp = icmp slt i32 %2, 100, !dbg !4663
  br i1 %cmp, label %while.body, label %while.end56, !dbg !4661

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %buffer.addr, align 8, !dbg !4664
  %4 = load i64, i64* %buflen.addr, align 8, !dbg !4666
  %coerce.dive = getelementptr inbounds %union.hv_connection_id, %union.hv_connection_id* %conn_id, i32 0, i32 0, !dbg !4667
  %5 = load i32, i32* %coerce.dive, align 4, !dbg !4667
  %call = call i32 @hv_post_message(i32 %5, i32 1, i8* %3, i64 %4) #10, !dbg !4667
  store i32 %call, i32* %ret, align 4, !dbg !4668
  %6 = load i32, i32* %ret, align 4, !dbg !4669
  switch i32 %6, label %sw.default [
    i32 18, label %sw.bb
    i32 11, label %sw.bb2
    i32 19, label %sw.bb2
    i32 0, label %sw.bb3
  ], !dbg !4670

sw.bb:                                            ; preds = %while.body
  %7 = load i8*, i8** %buffer.addr, align 8, !dbg !4671
  %8 = bitcast i8* %7 to %struct.vmbus_channel_message_header*, !dbg !4671
  store %struct.vmbus_channel_message_header* %8, %struct.vmbus_channel_message_header** %hdr, align 8, !dbg !4673
  %9 = load %struct.vmbus_channel_message_header*, %struct.vmbus_channel_message_header** %hdr, align 8, !dbg !4674
  %msgtype = getelementptr inbounds %struct.vmbus_channel_message_header, %struct.vmbus_channel_message_header* %9, i32 0, i32 0, !dbg !4676
  %10 = load i32, i32* %msgtype, align 1, !dbg !4676
  %cmp1 = icmp eq i32 %10, 14, !dbg !4677
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4678

if.then:                                          ; preds = %sw.bb
  store i32 -22, i32* %retval, align 4, !dbg !4679
  br label %return, !dbg !4679

if.end:                                           ; preds = %sw.bb
  store i32 -11, i32* %ret, align 4, !dbg !4680
  br label %sw.epilog, !dbg !4681

sw.bb2:                                           ; preds = %while.body, %while.body
  store i32 -105, i32* %ret, align 4, !dbg !4682
  br label %sw.epilog, !dbg !4683

sw.bb3:                                           ; preds = %while.body
  %11 = load i32, i32* %ret, align 4, !dbg !4684
  store i32 %11, i32* %retval, align 4, !dbg !4685
  br label %return, !dbg !4685

sw.default:                                       ; preds = %while.body
  %12 = load i32, i32* %ret, align 4, !dbg !4686
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %12) #12, !dbg !4686
  store i32 -22, i32* %retval, align 4, !dbg !4687
  br label %return, !dbg !4687

sw.epilog:                                        ; preds = %sw.bb2, %if.end
  %13 = load i32, i32* %retries, align 4, !dbg !4688
  %inc = add i32 %13, 1, !dbg !4688
  store i32 %inc, i32* %retries, align 4, !dbg !4688
  %14 = load i8, i8* %can_sleep.addr, align 1, !dbg !4689
  %tobool = trunc i8 %14 to i1, !dbg !4689
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !4691

land.lhs.true:                                    ; preds = %sw.epilog
  %15 = load i32, i32* %usec, align 4, !dbg !4692
  %cmp5 = icmp ugt i32 %15, 1000, !dbg !4693
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !4694

if.then6:                                         ; preds = %land.lhs.true
  %16 = load i32, i32* %usec, align 4, !dbg !4695
  %div = udiv i32 %16, 1000, !dbg !4696
  call void @msleep(i32 %div) #10, !dbg !4697
  br label %if.end50, !dbg !4697

if.else:                                          ; preds = %land.lhs.true, %sw.epilog
  %17 = load i32, i32* %usec, align 4, !dbg !4698
  %cmp7 = icmp ult i32 %17, 5000, !dbg !4700
  br i1 %cmp7, label %if.then8, label %if.else18, !dbg !4701

if.then8:                                         ; preds = %if.else
  %18 = load i32, i32* %usec, align 4, !dbg !4702
  %19 = call i1 @llvm.is.constant.i32(i32 %18), !dbg !4702
  br i1 %19, label %if.then9, label %if.else15, !dbg !4705

if.then9:                                         ; preds = %if.then8
  %20 = load i32, i32* %usec, align 4, !dbg !4706
  %div10 = udiv i32 %20, 20000, !dbg !4706
  %cmp11 = icmp uge i32 %div10, 1, !dbg !4706
  br i1 %cmp11, label %if.then12, label %if.else13, !dbg !4709

if.then12:                                        ; preds = %if.then9
  call void @__bad_udelay() #10, !dbg !4706
  br label %if.end14, !dbg !4706

if.else13:                                        ; preds = %if.then9
  %21 = load i32, i32* %usec, align 4, !dbg !4706
  %conv = zext i32 %21 to i64, !dbg !4706
  %mul = mul i64 %conv, 4295, !dbg !4706
  call void @__const_udelay(i64 %mul) #10, !dbg !4706
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then12
  br label %if.end17, !dbg !4709

if.else15:                                        ; preds = %if.then8
  %22 = load i32, i32* %usec, align 4, !dbg !4710
  %conv16 = zext i32 %22 to i64, !dbg !4710
  call void @__udelay(i64 %conv16) #10, !dbg !4710
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.end14
  br label %if.end49, !dbg !4712

if.else18:                                        ; preds = %if.else
  %23 = load i32, i32* %usec, align 4, !dbg !4713
  %div19 = udiv i32 %23, 1000, !dbg !4713
  %24 = call i1 @llvm.is.constant.i32(i32 %div19), !dbg !4713
  br i1 %24, label %land.lhs.true20, label %cond.false, !dbg !4713

land.lhs.true20:                                  ; preds = %if.else18
  %25 = load i32, i32* %usec, align 4, !dbg !4713
  %div21 = udiv i32 %25, 1000, !dbg !4713
  %cmp22 = icmp ule i32 %div21, 5, !dbg !4713
  br i1 %cmp22, label %cond.true, label %cond.false, !dbg !4713

cond.true:                                        ; preds = %land.lhs.true20
  %26 = load i32, i32* %usec, align 4, !dbg !4714
  %div24 = udiv i32 %26, 1000, !dbg !4714
  %mul25 = mul i32 %div24, 1000, !dbg !4714
  %27 = call i1 @llvm.is.constant.i32(i32 %mul25), !dbg !4714
  br i1 %27, label %if.then26, label %if.else39, !dbg !4717

if.then26:                                        ; preds = %cond.true
  %28 = load i32, i32* %usec, align 4, !dbg !4718
  %div27 = udiv i32 %28, 1000, !dbg !4718
  %mul28 = mul i32 %div27, 1000, !dbg !4718
  %div29 = udiv i32 %mul28, 20000, !dbg !4718
  %cmp30 = icmp uge i32 %div29, 1, !dbg !4718
  br i1 %cmp30, label %if.then32, label %if.else33, !dbg !4721

if.then32:                                        ; preds = %if.then26
  call void @__bad_udelay() #10, !dbg !4718
  br label %if.end38, !dbg !4718

if.else33:                                        ; preds = %if.then26
  %29 = load i32, i32* %usec, align 4, !dbg !4718
  %div34 = udiv i32 %29, 1000, !dbg !4718
  %mul35 = mul i32 %div34, 1000, !dbg !4718
  %conv36 = zext i32 %mul35 to i64, !dbg !4718
  %mul37 = mul i64 %conv36, 4295, !dbg !4718
  call void @__const_udelay(i64 %mul37) #10, !dbg !4718
  br label %if.end38

if.end38:                                         ; preds = %if.else33, %if.then32
  br label %if.end43, !dbg !4721

if.else39:                                        ; preds = %cond.true
  %30 = load i32, i32* %usec, align 4, !dbg !4722
  %div40 = udiv i32 %30, 1000, !dbg !4722
  %mul41 = mul i32 %div40, 1000, !dbg !4722
  %conv42 = zext i32 %mul41 to i64, !dbg !4722
  call void @__udelay(i64 %conv42) #10, !dbg !4722
  br label %if.end43

if.end43:                                         ; preds = %if.else39, %if.end38
  br label %cond.end, !dbg !4713

cond.false:                                       ; preds = %land.lhs.true20, %if.else18
  call void @llvm.dbg.declare(metadata i64* %__ms, metadata !4724, metadata !DIExpression()), !dbg !4726
  %31 = load i32, i32* %usec, align 4, !dbg !4726
  %div44 = udiv i32 %31, 1000, !dbg !4726
  %conv45 = zext i32 %div44 to i64, !dbg !4726
  store i64 %conv45, i64* %__ms, align 8, !dbg !4726
  br label %while.cond46, !dbg !4726

while.cond46:                                     ; preds = %while.body48, %cond.false
  %32 = load i64, i64* %__ms, align 8, !dbg !4726
  %dec = add i64 %32, -1, !dbg !4726
  store i64 %dec, i64* %__ms, align 8, !dbg !4726
  %tobool47 = icmp ne i64 %32, 0, !dbg !4726
  br i1 %tobool47, label %while.body48, label %while.end, !dbg !4726

while.body48:                                     ; preds = %while.cond46
  call void @__const_udelay(i64 4295000) #10, !dbg !4727
  br label %while.cond46, !dbg !4726, !llvm.loop !4732

while.end:                                        ; preds = %while.cond46
  br label %cond.end, !dbg !4713

cond.end:                                         ; preds = %while.end, %if.end43
  br label %if.end49

if.end49:                                         ; preds = %cond.end, %if.end17
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then6
  %33 = load i32, i32* %retries, align 4, !dbg !4733
  %cmp51 = icmp slt i32 %33, 22, !dbg !4735
  br i1 %cmp51, label %if.then53, label %if.end55, !dbg !4736

if.then53:                                        ; preds = %if.end50
  %34 = load i32, i32* %usec, align 4, !dbg !4737
  %mul54 = mul i32 %34, 2, !dbg !4737
  store i32 %mul54, i32* %usec, align 4, !dbg !4737
  br label %if.end55, !dbg !4738

if.end55:                                         ; preds = %if.then53, %if.end50
  br label %while.cond, !dbg !4661, !llvm.loop !4739

while.end56:                                      ; preds = %while.cond
  %35 = load i32, i32* %ret, align 4, !dbg !4741
  store i32 %35, i32* %retval, align 4, !dbg !4742
  br label %return, !dbg !4742

return:                                           ; preds = %while.end56, %sw.default, %sw.bb3, %if.then
  %36 = load i32, i32* %retval, align 4, !dbg !4743
  ret i32 %36, !dbg !4743
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_vmbus_negotiate_version(%struct.vmbus_channel_initiate_contact* %msg, i32 %ret) #0 !dbg !4744 {
entry:
  %msg.addr = alloca %struct.vmbus_channel_initiate_contact*, align 8
  %ret.addr = alloca i32, align 4
  store %struct.vmbus_channel_initiate_contact* %msg, %struct.vmbus_channel_initiate_contact** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vmbus_channel_initiate_contact** %msg.addr, metadata !4750, metadata !DIExpression()), !dbg !4751
  store i32 %ret, i32* %ret.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ret.addr, metadata !4752, metadata !DIExpression()), !dbg !4751
  ret void, !dbg !4751
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !4753 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4756, metadata !DIExpression()), !dbg !4757
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4758
  call void @__list_del_entry(%struct.list_head* %0) #10, !dbg !4759
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4760
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4761
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !4762
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4763
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !4764
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !4765
  ret void, !dbg !4766
}

; Function Attrs: noredzone
declare dso_local void @wait_for_completion(%struct.completion*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @vmbus_connect() #0 !dbg !4237 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4344, metadata !DIExpression()), !dbg !4767
  %retval = alloca i32, align 4
  %msginfo = alloca %struct.vmbus_channel_msginfo*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %version = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  call void @llvm.dbg.declare(metadata %struct.vmbus_channel_msginfo** %msginfo, metadata !4770, metadata !DIExpression()), !dbg !4771
  store %struct.vmbus_channel_msginfo* null, %struct.vmbus_channel_msginfo** %msginfo, align 8, !dbg !4771
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4772, metadata !DIExpression()), !dbg !4773
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4774, metadata !DIExpression()), !dbg !4775
  store i32 0, i32* %ret, align 4, !dbg !4775
  call void @llvm.dbg.declare(metadata i32* %version, metadata !4776, metadata !DIExpression()), !dbg !4777
  store i32 1, i32* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 2), align 8, !dbg !4778
  %call = call %struct.workqueue_struct* (i8*, i32, i32, ...) @alloc_workqueue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 262152, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #10, !dbg !4779
  store %struct.workqueue_struct* %call, %struct.workqueue_struct** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 14), align 8, !dbg !4780
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 14), align 8, !dbg !4781
  %tobool = icmp ne %struct.workqueue_struct* %0, null, !dbg !4783
  br i1 %tobool, label %if.end, label %if.then, !dbg !4784

if.then:                                          ; preds = %entry
  store i32 -12, i32* %ret, align 4, !dbg !4785
  br label %cleanup, !dbg !4787

if.end:                                           ; preds = %entry
  %call1 = call %struct.workqueue_struct* (i8*, i32, i32, ...) @alloc_workqueue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 262152, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !4788
  store %struct.workqueue_struct* %call1, %struct.workqueue_struct** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 15), align 8, !dbg !4789
  %1 = load %struct.workqueue_struct*, %struct.workqueue_struct** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 15), align 8, !dbg !4790
  %tobool2 = icmp ne %struct.workqueue_struct* %1, null, !dbg !4792
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4793

if.then3:                                         ; preds = %if.end
  store i32 -12, i32* %ret, align 4, !dbg !4794
  br label %cleanup, !dbg !4796

if.end4:                                          ; preds = %if.end
  %call5 = call %struct.workqueue_struct* (i8*, i32, i32, ...) @alloc_workqueue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 262152, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !4797
  store %struct.workqueue_struct* %call5, %struct.workqueue_struct** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 16), align 8, !dbg !4798
  %2 = load %struct.workqueue_struct*, %struct.workqueue_struct** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 16), align 8, !dbg !4799
  %tobool6 = icmp ne %struct.workqueue_struct* %2, null, !dbg !4801
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4802

if.then7:                                         ; preds = %if.end4
  store i32 -12, i32* %ret, align 4, !dbg !4803
  br label %cleanup, !dbg !4805

if.end8:                                          ; preds = %if.end4
  call void @INIT_LIST_HEAD(%struct.list_head* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 9)) #10, !dbg !4806
  br label %do.body, !dbg !4807

do.body:                                          ; preds = %if.end8
  store %struct.spinlock* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 10), %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4808
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !4809
  %rlock.i = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !4809
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4810
  %rlock = bitcast %union.anon* %5 to %struct.raw_spinlock*, !dbg !4810
  %6 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4810
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.spinlock* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 10) to i8*), i8* align 1 %6, i64 0, i1 false), !dbg !4810
  br label %do.end, !dbg !4810

do.end:                                           ; preds = %do.body
  call void @INIT_LIST_HEAD(%struct.list_head* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 11)) #10, !dbg !4811
  br label %do.body10, !dbg !4812

do.body10:                                        ; preds = %do.end
  call void @__mutex_init(%struct.mutex* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 12), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), %struct.lock_class_key* @vmbus_connect.__key) #10, !dbg !4813
  br label %do.end11, !dbg !4813

do.end11:                                         ; preds = %do.body10
  %call12 = call i8* @hv_alloc_hyperv_zeroed_page() #10, !dbg !4815
  store i8* %call12, i8** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 5), align 8, !dbg !4816
  %7 = load i8*, i8** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 5), align 8, !dbg !4817
  %cmp = icmp eq i8* %7, null, !dbg !4819
  br i1 %cmp, label %if.then13, label %if.end14, !dbg !4820

if.then13:                                        ; preds = %do.end11
  store i32 -12, i32* %ret, align 4, !dbg !4821
  br label %cleanup, !dbg !4823

if.end14:                                         ; preds = %do.end11
  %8 = load i8*, i8** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 5), align 8, !dbg !4824
  store i8* %8, i8** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 7), align 8, !dbg !4825
  %9 = load i8*, i8** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 5), align 8, !dbg !4826
  %10 = ptrtoint i8* %9 to i64, !dbg !4827
  %add = add i64 %10, 2048, !dbg !4828
  %11 = inttoptr i64 %add to i8*, !dbg !4829
  store i8* %11, i8** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 6), align 8, !dbg !4830
  %call15 = call i8* @hv_alloc_hyperv_zeroed_page() #10, !dbg !4831
  %12 = bitcast i8* %call15 to %struct.hv_monitor_page*, !dbg !4832
  store %struct.hv_monitor_page* %12, %struct.hv_monitor_page** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 8, i64 0), align 8, !dbg !4833
  %call16 = call i8* @hv_alloc_hyperv_zeroed_page() #10, !dbg !4834
  %13 = bitcast i8* %call16 to %struct.hv_monitor_page*, !dbg !4835
  store %struct.hv_monitor_page* %13, %struct.hv_monitor_page** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 8, i64 1), align 8, !dbg !4836
  %14 = load %struct.hv_monitor_page*, %struct.hv_monitor_page** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 8, i64 0), align 8, !dbg !4837
  %cmp17 = icmp eq %struct.hv_monitor_page* %14, null, !dbg !4839
  br i1 %cmp17, label %if.then19, label %lor.lhs.false, !dbg !4840

lor.lhs.false:                                    ; preds = %if.end14
  %15 = load %struct.hv_monitor_page*, %struct.hv_monitor_page** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 8, i64 1), align 8, !dbg !4841
  %cmp18 = icmp eq %struct.hv_monitor_page* %15, null, !dbg !4842
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4843

if.then19:                                        ; preds = %lor.lhs.false, %if.end14
  store i32 -12, i32* %ret, align 4, !dbg !4844
  br label %cleanup, !dbg !4846

if.end20:                                         ; preds = %lor.lhs.false
  %call21 = call i8* @kzalloc(i64 128, i32 3264) #10, !dbg !4847
  %16 = bitcast i8* %call21 to %struct.vmbus_channel_msginfo*, !dbg !4847
  store %struct.vmbus_channel_msginfo* %16, %struct.vmbus_channel_msginfo** %msginfo, align 8, !dbg !4848
  %17 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %msginfo, align 8, !dbg !4849
  %cmp22 = icmp eq %struct.vmbus_channel_msginfo* %17, null, !dbg !4851
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !4852

if.then23:                                        ; preds = %if.end20
  store i32 -12, i32* %ret, align 4, !dbg !4853
  br label %cleanup, !dbg !4855

if.end24:                                         ; preds = %if.end20
  store i32 0, i32* %i, align 4, !dbg !4856
  br label %for.cond, !dbg !4858

for.cond:                                         ; preds = %for.inc, %if.end24
  %18 = load i32, i32* %i, align 4, !dbg !4859
  %conv = sext i32 %18 to i64, !dbg !4859
  %cmp25 = icmp eq i64 %conv, 9, !dbg !4863
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !4864

if.then27:                                        ; preds = %for.cond
  br label %cleanup, !dbg !4865

if.end28:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4, !dbg !4866
  %idxprom = sext i32 %19 to i64, !dbg !4867
  %arrayidx = getelementptr [9 x i32], [9 x i32]* @vmbus_versions, i64 0, i64 %idxprom, !dbg !4867
  %20 = load i32, i32* %arrayidx, align 4, !dbg !4867
  store i32 %20, i32* %version, align 4, !dbg !4868
  %21 = load i32, i32* %version, align 4, !dbg !4869
  %22 = load i32, i32* @max_version, align 4, !dbg !4871
  %cmp29 = icmp ugt i32 %21, %22, !dbg !4872
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !4873

if.then31:                                        ; preds = %if.end28
  br label %for.inc, !dbg !4874

if.end32:                                         ; preds = %if.end28
  %23 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %msginfo, align 8, !dbg !4875
  %24 = load i32, i32* %version, align 4, !dbg !4876
  %call33 = call i32 @vmbus_negotiate_version(%struct.vmbus_channel_msginfo* %23, i32 %24) #10, !dbg !4877
  store i32 %call33, i32* %ret, align 4, !dbg !4878
  %25 = load i32, i32* %ret, align 4, !dbg !4879
  %cmp34 = icmp eq i32 %25, -110, !dbg !4881
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !4882

if.then36:                                        ; preds = %if.end32
  br label %cleanup, !dbg !4883

if.end37:                                         ; preds = %if.end32
  %26 = load i32, i32* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 2), align 8, !dbg !4884
  %cmp38 = icmp eq i32 %26, 2, !dbg !4886
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !4887

if.then40:                                        ; preds = %if.end37
  br label %for.end, !dbg !4888

if.end41:                                         ; preds = %if.end37
  br label %for.inc, !dbg !4889

for.inc:                                          ; preds = %if.end41, %if.then31
  %27 = load i32, i32* %i, align 4, !dbg !4890
  %inc = add i32 %27, 1, !dbg !4890
  store i32 %inc, i32* %i, align 4, !dbg !4890
  br label %for.cond, !dbg !4891, !llvm.loop !4892

for.end:                                          ; preds = %if.then40
  %28 = load i32, i32* %version, align 4, !dbg !4895
  store i32 %28, i32* @vmbus_proto_version, align 4, !dbg !4896
  %29 = load i32, i32* %version, align 4, !dbg !4897
  %shr = lshr i32 %29, 16, !dbg !4897
  %30 = load i32, i32* %version, align 4, !dbg !4897
  %and = and i32 %30, 65535, !dbg !4897
  %call42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %shr, i32 %and) #12, !dbg !4897
  %call43 = call i8* @kcalloc(i64 2048, i64 8, i32 3264) #10, !dbg !4898
  %31 = bitcast i8* %call43 to %struct.vmbus_channel**, !dbg !4898
  store %struct.vmbus_channel** %31, %struct.vmbus_channel*** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 13), align 8, !dbg !4899
  %32 = load %struct.vmbus_channel**, %struct.vmbus_channel*** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 13), align 8, !dbg !4900
  %cmp44 = icmp eq %struct.vmbus_channel** %32, null, !dbg !4902
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !4903

if.then46:                                        ; preds = %for.end
  store i32 -12, i32* %ret, align 4, !dbg !4904
  br label %cleanup, !dbg !4906

if.end47:                                         ; preds = %for.end
  %33 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %msginfo, align 8, !dbg !4907
  %34 = bitcast %struct.vmbus_channel_msginfo* %33 to i8*, !dbg !4907
  call void @kfree(i8* %34) #10, !dbg !4908
  store i32 0, i32* %retval, align 4, !dbg !4909
  br label %return, !dbg !4909

cleanup:                                          ; preds = %if.then46, %if.then36, %if.then27, %if.then23, %if.then19, %if.then13, %if.then7, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !4910), !dbg !4911
  %call48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !4912
  store i32 0, i32* getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 2), align 8, !dbg !4913
  call void @vmbus_disconnect() #10, !dbg !4914
  %35 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %msginfo, align 8, !dbg !4915
  %36 = bitcast %struct.vmbus_channel_msginfo* %35 to i8*, !dbg !4915
  call void @kfree(i8* %36) #10, !dbg !4916
  %37 = load i32, i32* %ret, align 4, !dbg !4917
  store i32 %37, i32* %retval, align 4, !dbg !4918
  br label %return, !dbg !4918

return:                                           ; preds = %cleanup, %if.end47
  %38 = load i32, i32* %retval, align 4, !dbg !4919
  ret i32 %38, !dbg !4919
}

; Function Attrs: noredzone
declare dso_local %struct.workqueue_struct* @alloc_workqueue(i8*, i32, i32, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !4920 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4921, metadata !DIExpression()), !dbg !4922
  br label %do.body, !dbg !4923

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4924

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4926

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4924

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4928
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4928
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4928
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4928
  br label %do.end3, !dbg !4928

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4924

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4930
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4931
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4932
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4933
  ret void, !dbg !4934
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #3

; Function Attrs: noredzone
declare dso_local i8* @hv_alloc_hyperv_zeroed_page() #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4935 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4938, metadata !DIExpression()), !dbg !4942
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4948, metadata !DIExpression()), !dbg !4949
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4950, metadata !DIExpression()), !dbg !4951
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4952, metadata !DIExpression()), !dbg !4953
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4954, metadata !DIExpression()), !dbg !4958
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4960, metadata !DIExpression()), !dbg !4964
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4966, metadata !DIExpression()), !dbg !4970
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4975, metadata !DIExpression()), !dbg !4976
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4977, metadata !DIExpression()), !dbg !4978
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4979, metadata !DIExpression()), !dbg !4980
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4981, metadata !DIExpression()), !dbg !4982
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4983, metadata !DIExpression()), !dbg !4984
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4985, metadata !DIExpression()), !dbg !4986
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4987, metadata !DIExpression()), !dbg !4988
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4989, metadata !DIExpression()), !dbg !4990
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4991, metadata !DIExpression()), !dbg !4992
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4993, metadata !DIExpression()), !dbg !4994
  %0 = load i64, i64* %size.addr, align 8, !dbg !4995
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4996
  %or = or i32 %1, 256, !dbg !4997
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4998
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !4999
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5000

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5001
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5002
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5003

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5004
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5005
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5006
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !5007
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4984
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5008
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5009
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5010
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5011
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5012
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5013
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !5014
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5014
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5014
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5014
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !5014
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5015
  br label %kmalloc.exit, !dbg !5015

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5016
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5017
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5017
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5019

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5020
  br label %kmalloc_index.exit.i, !dbg !5020

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5021
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5023
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5024

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5025
  br label %kmalloc_index.exit.i, !dbg !5025

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5026
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5028
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5029

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5030
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5031
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5032

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5033
  br label %kmalloc_index.exit.i, !dbg !5033

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5034
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5036
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5037

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5038
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5039
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5040

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5041
  br label %kmalloc_index.exit.i, !dbg !5041

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5042
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5044
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5045

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5046
  br label %kmalloc_index.exit.i, !dbg !5046

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5047
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5049
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5050

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5051
  br label %kmalloc_index.exit.i, !dbg !5051

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5052
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5054
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5055

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5056
  br label %kmalloc_index.exit.i, !dbg !5056

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5057
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5059
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5060

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5061
  br label %kmalloc_index.exit.i, !dbg !5061

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5062
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5064
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5065

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5066
  br label %kmalloc_index.exit.i, !dbg !5066

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5067
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5069
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5070

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5071
  br label %kmalloc_index.exit.i, !dbg !5071

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5072
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5074
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5075

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5076
  br label %kmalloc_index.exit.i, !dbg !5076

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5077
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5079
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5080

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5081
  br label %kmalloc_index.exit.i, !dbg !5081

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5082
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5084
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5085

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5086
  br label %kmalloc_index.exit.i, !dbg !5086

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5087
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5089
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5090

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5091
  br label %kmalloc_index.exit.i, !dbg !5091

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5092
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5094
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5095

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5096
  br label %kmalloc_index.exit.i, !dbg !5096

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5097
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5099
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5100

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5101
  br label %kmalloc_index.exit.i, !dbg !5101

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5102
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5104
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5105

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5106
  br label %kmalloc_index.exit.i, !dbg !5106

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5107
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5109
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5110

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5111
  br label %kmalloc_index.exit.i, !dbg !5111

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5112
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5114
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5115

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5116
  br label %kmalloc_index.exit.i, !dbg !5116

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5117
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5119
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5120

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5121
  br label %kmalloc_index.exit.i, !dbg !5121

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5122
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5124
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5125

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5126
  br label %kmalloc_index.exit.i, !dbg !5126

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5127
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5129
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5130

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5131
  br label %kmalloc_index.exit.i, !dbg !5131

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5132
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5134
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5135

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5136
  br label %kmalloc_index.exit.i, !dbg !5136

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5137
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5139
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5140

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5141
  br label %kmalloc_index.exit.i, !dbg !5141

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5142
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5144
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5145

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5146
  br label %kmalloc_index.exit.i, !dbg !5146

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5147
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5149
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5150

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5151
  br label %kmalloc_index.exit.i, !dbg !5151

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5152
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5154
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5155

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5156
  br label %kmalloc_index.exit.i, !dbg !5156

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5157
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5159
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5160

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5161
  br label %kmalloc_index.exit.i, !dbg !5161

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !5162, !srcloc !5165
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 225) #7, !dbg !5166, !srcloc !5169
  unreachable, !dbg !5170

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5171
  store i32 %45, i32* %index.i, align 4, !dbg !5172
  %46 = load i32, i32* %index.i, align 4, !dbg !5173
  %tobool.i = icmp ne i32 %46, 0, !dbg !5173
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5175

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5176
  br label %kmalloc.exit, !dbg !5176

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5177
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5178
  %and.i.i = and i32 %48, 17, !dbg !5178
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5178
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5178
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5178
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5178
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5180

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5181
  br label %kmalloc_type.exit.i, !dbg !5181

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5182
  %and2.i.i = and i32 %49, 1, !dbg !5183
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5182
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5182
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5182
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5184
  br label %kmalloc_type.exit.i, !dbg !5184

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5185
  %idxprom.i = zext i32 %51 to i64, !dbg !5186
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5186
  %52 = load i32, i32* %index.i, align 4, !dbg !5187
  %idxprom6.i = zext i32 %52 to i64, !dbg !5186
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5186
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5186
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5188
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5189
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5190
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5191
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !5192
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5192
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5192
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5192
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !5192
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4953
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5193
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5194
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5195
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5196
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !5197
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5198
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5199
  store i8* %62, i8** %retval.i, align 8, !dbg !5200
  br label %kmalloc.exit, !dbg !5200

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5201
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5202
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !5203
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5203
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5203
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5203
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !5203
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5204
  br label %kmalloc.exit, !dbg !5204

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5205
  ret i8* %65, !dbg !5206
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !5207 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5210, metadata !DIExpression()), !dbg !5211
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5212, metadata !DIExpression()), !dbg !5213
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5214, metadata !DIExpression()), !dbg !5215
  %0 = load i64, i64* %n.addr, align 8, !dbg !5216
  %1 = load i64, i64* %size.addr, align 8, !dbg !5217
  %2 = load i32, i32* %flags.addr, align 4, !dbg !5218
  %or = or i32 %2, 256, !dbg !5219
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #10, !dbg !5220
  ret i8* %call, !dbg !5221
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @vmbus_disconnect() #0 !dbg !5222 {
entry:
  call void @vmbus_initiate_unload(i1 zeroext false) #10, !dbg !5223
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 16), align 8, !dbg !5224
  %tobool = icmp ne %struct.workqueue_struct* %0, null, !dbg !5226
  br i1 %tobool, label %if.then, label %if.end, !dbg !5227

if.then:                                          ; preds = %entry
  %1 = load %struct.workqueue_struct*, %struct.workqueue_struct** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 16), align 8, !dbg !5228
  call void @destroy_workqueue(%struct.workqueue_struct* %1) #10, !dbg !5229
  br label %if.end, !dbg !5229

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.workqueue_struct*, %struct.workqueue_struct** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 15), align 8, !dbg !5230
  %tobool1 = icmp ne %struct.workqueue_struct* %2, null, !dbg !5232
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5233

if.then2:                                         ; preds = %if.end
  %3 = load %struct.workqueue_struct*, %struct.workqueue_struct** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 15), align 8, !dbg !5234
  call void @destroy_workqueue(%struct.workqueue_struct* %3) #10, !dbg !5235
  br label %if.end3, !dbg !5235

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load %struct.workqueue_struct*, %struct.workqueue_struct** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 14), align 8, !dbg !5236
  %tobool4 = icmp ne %struct.workqueue_struct* %4, null, !dbg !5238
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5239

if.then5:                                         ; preds = %if.end3
  %5 = load %struct.workqueue_struct*, %struct.workqueue_struct** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 14), align 8, !dbg !5240
  call void @destroy_workqueue(%struct.workqueue_struct* %5) #10, !dbg !5241
  br label %if.end6, !dbg !5241

if.end6:                                          ; preds = %if.then5, %if.end3
  %6 = load i8*, i8** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 5), align 8, !dbg !5242
  %tobool7 = icmp ne i8* %6, null, !dbg !5244
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5245

if.then8:                                         ; preds = %if.end6
  %7 = load i8*, i8** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 5), align 8, !dbg !5246
  %8 = ptrtoint i8* %7 to i64, !dbg !5248
  call void @hv_free_hyperv_page(i64 %8) #10, !dbg !5249
  store i8* null, i8** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 5), align 8, !dbg !5250
  br label %if.end9, !dbg !5251

if.end9:                                          ; preds = %if.then8, %if.end6
  %9 = load %struct.hv_monitor_page*, %struct.hv_monitor_page** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 8, i64 0), align 8, !dbg !5252
  %10 = ptrtoint %struct.hv_monitor_page* %9 to i64, !dbg !5253
  call void @hv_free_hyperv_page(i64 %10) #10, !dbg !5254
  %11 = load %struct.hv_monitor_page*, %struct.hv_monitor_page** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 8, i64 1), align 8, !dbg !5255
  %12 = ptrtoint %struct.hv_monitor_page* %11 to i64, !dbg !5256
  call void @hv_free_hyperv_page(i64 %12) #10, !dbg !5257
  store %struct.hv_monitor_page* null, %struct.hv_monitor_page** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 8, i64 0), align 8, !dbg !5258
  store %struct.hv_monitor_page* null, %struct.hv_monitor_page** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 8, i64 1), align 8, !dbg !5259
  ret void, !dbg !5260
}

; Function Attrs: noredzone
declare dso_local void @vmbus_initiate_unload(i1 zeroext) #3

; Function Attrs: noredzone
declare dso_local void @destroy_workqueue(%struct.workqueue_struct*) #3

; Function Attrs: noredzone
declare dso_local void @hv_free_hyperv_page(i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.vmbus_channel* @relid2channel(i32 %relid) #0 !dbg !5261 {
entry:
  %retval = alloca %struct.vmbus_channel*, align 8
  %relid.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp24 = alloca %struct.vmbus_channel*, align 8
  store i32 %relid, i32* %relid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %relid.addr, metadata !5264, metadata !DIExpression()), !dbg !5265
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5266, metadata !DIExpression()), !dbg !5269
  %0 = load i32, i32* %relid.addr, align 4, !dbg !5269
  %cmp = icmp uge i32 %0, 2048, !dbg !5269
  %lnot = xor i1 %cmp, true, !dbg !5269
  %lnot1 = xor i1 %lnot, true, !dbg !5269
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5269
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5269
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !5270
  %tobool = icmp ne i32 %1, 0, !dbg !5270
  %lnot2 = xor i1 %tobool, true, !dbg !5270
  %lnot4 = xor i1 %lnot2, true, !dbg !5270
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !5270
  %conv = sext i32 %lnot.ext5 to i64, !dbg !5270
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5270
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5269

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5270

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !5272

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !5274

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !5272

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 306, i32 2305, i64 12) #7, !dbg !5276, !srcloc !5278
  br label %do.end9, !dbg !5276

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 246) #7, !dbg !5279, !srcloc !5281
  br label %do.body10, !dbg !5272

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !5282

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !5272

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !5272

if.end:                                           ; preds = %do.end12, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !5269
  %tobool13 = icmp ne i32 %2, 0, !dbg !5269
  %lnot14 = xor i1 %tobool13, true, !dbg !5269
  %lnot16 = xor i1 %lnot14, true, !dbg !5269
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !5269
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !5269
  store i64 %conv18, i64* %tmp, align 8, !dbg !5270
  %3 = load i64, i64* %tmp, align 8, !dbg !5269
  %tobool19 = icmp ne i64 %3, 0, !dbg !5284
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5285

if.then20:                                        ; preds = %if.end
  store %struct.vmbus_channel* null, %struct.vmbus_channel** %retval, align 8, !dbg !5286
  br label %return, !dbg !5286

if.end21:                                         ; preds = %if.end
  br label %do.body22, !dbg !5287

do.body22:                                        ; preds = %if.end21
  br label %do.end23, !dbg !5289

do.end23:                                         ; preds = %do.body22
  %4 = load %struct.vmbus_channel**, %struct.vmbus_channel*** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 13), align 8, !dbg !5287
  %5 = load i32, i32* %relid.addr, align 4, !dbg !5287
  %idxprom = zext i32 %5 to i64, !dbg !5287
  %arrayidx = getelementptr %struct.vmbus_channel*, %struct.vmbus_channel** %4, i64 %idxprom, !dbg !5287
  %6 = load volatile %struct.vmbus_channel*, %struct.vmbus_channel** %arrayidx, align 8, !dbg !5287
  store %struct.vmbus_channel* %6, %struct.vmbus_channel** %tmp24, align 8, !dbg !5289
  %7 = load %struct.vmbus_channel*, %struct.vmbus_channel** %tmp24, align 8, !dbg !5287
  store %struct.vmbus_channel* %7, %struct.vmbus_channel** %retval, align 8, !dbg !5291
  br label %return, !dbg !5291

return:                                           ; preds = %do.end23, %if.then20
  %8 = load %struct.vmbus_channel*, %struct.vmbus_channel** %retval, align 8, !dbg !5292
  ret %struct.vmbus_channel* %8, !dbg !5292
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @vmbus_on_event(i64 %data) #0 !dbg !5293 {
entry:
  %data.addr = alloca i64, align 8
  %channel = alloca %struct.vmbus_channel*, align 8
  %time_limit = alloca i64, align 8
  %callback_fn = alloca void (i8*)*, align 8
  %tmp = alloca void (i8*)*, align 8
  store i64 %data, i64* %data.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %data.addr, metadata !5294, metadata !DIExpression()), !dbg !5295
  call void @llvm.dbg.declare(metadata %struct.vmbus_channel** %channel, metadata !5296, metadata !DIExpression()), !dbg !5297
  %0 = load i64, i64* %data.addr, align 8, !dbg !5298
  %1 = inttoptr i64 %0 to i8*, !dbg !5299
  %2 = bitcast i8* %1 to %struct.vmbus_channel*, !dbg !5299
  store %struct.vmbus_channel* %2, %struct.vmbus_channel** %channel, align 8, !dbg !5297
  call void @llvm.dbg.declare(metadata i64* %time_limit, metadata !5300, metadata !DIExpression()), !dbg !5301
  %3 = load volatile i64, i64* @jiffies, align 8, !dbg !5302
  %add = add i64 %3, 2, !dbg !5303
  store i64 %add, i64* %time_limit, align 8, !dbg !5301
  %4 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel, align 8, !dbg !5304
  call void @trace_vmbus_on_event(%struct.vmbus_channel* %4) #10, !dbg !5305
  %5 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel, align 8, !dbg !5306
  call void @hv_debug_delay_test(%struct.vmbus_channel* %5, i32 0) #10, !dbg !5307
  br label %do.body, !dbg !5308

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.dbg.declare(metadata void (i8*)** %callback_fn, metadata !5309, metadata !DIExpression()), !dbg !5311
  br label %do.body1, !dbg !5312

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5314

do.end:                                           ; preds = %do.body1
  %6 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel, align 8, !dbg !5312
  %onchannel_callback = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %6, i32 0, i32 20, !dbg !5312
  %7 = load volatile void (i8*)*, void (i8*)** %onchannel_callback, align 8, !dbg !5312
  store void (i8*)* %7, void (i8*)** %tmp, align 8, !dbg !5314
  %8 = load void (i8*)*, void (i8*)** %tmp, align 8, !dbg !5312
  store void (i8*)* %8, void (i8*)** %callback_fn, align 8, !dbg !5316
  %9 = load void (i8*)*, void (i8*)** %callback_fn, align 8, !dbg !5317
  %cmp = icmp eq void (i8*)* %9, null, !dbg !5317
  %lnot = xor i1 %cmp, true, !dbg !5317
  %lnot2 = xor i1 %lnot, true, !dbg !5317
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5317
  %conv = sext i32 %lnot.ext to i64, !dbg !5317
  %tobool = icmp ne i64 %conv, 0, !dbg !5317
  br i1 %tobool, label %if.then, label %if.end, !dbg !5319

if.then:                                          ; preds = %do.end
  br label %return, !dbg !5320

if.end:                                           ; preds = %do.end
  %10 = load void (i8*)*, void (i8*)** %callback_fn, align 8, !dbg !5321
  %11 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel, align 8, !dbg !5322
  %channel_callback_context = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %11, i32 0, i32 21, !dbg !5323
  %12 = load i8*, i8** %channel_callback_context, align 8, !dbg !5323
  call void %10(i8* %12) #10, !dbg !5324
  %13 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel, align 8, !dbg !5325
  %callback_mode = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %13, i32 0, i32 24, !dbg !5327
  %14 = load i32, i32* %callback_mode, align 8, !dbg !5327
  %cmp3 = icmp ne i32 %14, 0, !dbg !5328
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !5329

if.then5:                                         ; preds = %if.end
  br label %return, !dbg !5330

if.end6:                                          ; preds = %if.end
  %15 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel, align 8, !dbg !5331
  %inbound = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %15, i32 0, i32 13, !dbg !5331
  %call = call i32 @hv_end_read(%struct.hv_ring_buffer_info* %inbound) #10, !dbg !5331
  %cmp7 = icmp eq i32 %call, 0, !dbg !5331
  %lnot9 = xor i1 %cmp7, true, !dbg !5331
  %lnot11 = xor i1 %lnot9, true, !dbg !5331
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5331
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5331
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !5331
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5333

if.then15:                                        ; preds = %if.end6
  br label %return, !dbg !5334

if.end16:                                         ; preds = %if.end6
  %16 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel, align 8, !dbg !5335
  %inbound17 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %16, i32 0, i32 13, !dbg !5336
  call void @hv_begin_read(%struct.hv_ring_buffer_info* %inbound17) #10, !dbg !5337
  br label %do.cond, !dbg !5338

do.cond:                                          ; preds = %if.end16
  %17 = load volatile i64, i64* @jiffies, align 8, !dbg !5339
  %18 = load i64, i64* %time_limit, align 8, !dbg !5339
  %sub = sub i64 %17, %18, !dbg !5339
  %cmp18 = icmp slt i64 %sub, 0, !dbg !5339
  %lnot20 = xor i1 %cmp18, true, !dbg !5339
  %lnot22 = xor i1 %lnot20, true, !dbg !5339
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5339
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5339
  %tobool25 = icmp ne i64 %conv24, 0, !dbg !5338
  br i1 %tobool25, label %do.body, label %do.end26, !dbg !5338, !llvm.loop !5340

do.end26:                                         ; preds = %do.cond
  %19 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel, align 8, !dbg !5342
  %callback_event = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %19, i32 0, i32 19, !dbg !5343
  call void @tasklet_schedule(%struct.tasklet_struct* %callback_event) #10, !dbg !5344
  br label %return, !dbg !5345

return:                                           ; preds = %do.end26, %if.then15, %if.then5, %if.then
  ret void, !dbg !5345
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_vmbus_on_event(%struct.vmbus_channel* %channel) #0 !dbg !5346 {
entry:
  %channel.addr = alloca %struct.vmbus_channel*, align 8
  store %struct.vmbus_channel* %channel, %struct.vmbus_channel** %channel.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vmbus_channel** %channel.addr, metadata !5351, metadata !DIExpression()), !dbg !5352
  ret void, !dbg !5352
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hv_debug_delay_test(%struct.vmbus_channel* %channel, i32 %delay_type) #0 !dbg !5353 {
entry:
  %channel.addr = alloca %struct.vmbus_channel*, align 8
  %delay_type.addr = alloca i32, align 4
  store %struct.vmbus_channel* %channel, %struct.vmbus_channel** %channel.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vmbus_channel** %channel.addr, metadata !5356, metadata !DIExpression()), !dbg !5357
  store i32 %delay_type, i32* %delay_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %delay_type.addr, metadata !5358, metadata !DIExpression()), !dbg !5359
  ret void, !dbg !5360
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hv_end_read(%struct.hv_ring_buffer_info* %rbi) #0 !dbg !5361 {
entry:
  %rbi.addr = alloca %struct.hv_ring_buffer_info*, align 8
  store %struct.hv_ring_buffer_info* %rbi, %struct.hv_ring_buffer_info** %rbi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_info** %rbi.addr, metadata !5365, metadata !DIExpression()), !dbg !5366
  %0 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi.addr, align 8, !dbg !5367
  %ring_buffer = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %0, i32 0, i32 0, !dbg !5368
  %1 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer, align 8, !dbg !5368
  %interrupt_mask = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %1, i32 0, i32 2, !dbg !5369
  store i32 0, i32* %interrupt_mask, align 1, !dbg !5370
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5371, !srcloc !5372
  %2 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi.addr, align 8, !dbg !5373
  %call = call i32 @hv_get_bytes_to_read(%struct.hv_ring_buffer_info* %2) #10, !dbg !5374
  ret i32 %call, !dbg !5375
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hv_begin_read(%struct.hv_ring_buffer_info* %rbi) #0 !dbg !5376 {
entry:
  %rbi.addr = alloca %struct.hv_ring_buffer_info*, align 8
  store %struct.hv_ring_buffer_info* %rbi, %struct.hv_ring_buffer_info** %rbi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_info** %rbi.addr, metadata !5379, metadata !DIExpression()), !dbg !5380
  %0 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi.addr, align 8, !dbg !5381
  %ring_buffer = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %0, i32 0, i32 0, !dbg !5382
  %1 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer, align 8, !dbg !5382
  %interrupt_mask = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %1, i32 0, i32 2, !dbg !5383
  store i32 1, i32* %interrupt_mask, align 1, !dbg !5384
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5385, !srcloc !5386
  ret void, !dbg !5387
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tasklet_schedule(%struct.tasklet_struct* %t) #0 !dbg !5388 {
entry:
  %t.addr = alloca %struct.tasklet_struct*, align 8
  store %struct.tasklet_struct* %t, %struct.tasklet_struct** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tasklet_struct** %t.addr, metadata !5389, metadata !DIExpression()), !dbg !5390
  %0 = load %struct.tasklet_struct*, %struct.tasklet_struct** %t.addr, align 8, !dbg !5391
  %state = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %0, i32 0, i32 1, !dbg !5393
  %call = call zeroext i1 @test_and_set_bit(i64 0, i64* %state) #10, !dbg !5394
  br i1 %call, label %if.end, label %if.then, !dbg !5395

if.then:                                          ; preds = %entry
  %1 = load %struct.tasklet_struct*, %struct.tasklet_struct** %t.addr, align 8, !dbg !5396
  call void @__tasklet_schedule(%struct.tasklet_struct* %1) #10, !dbg !5397
  br label %if.end, !dbg !5397

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5398
}

; Function Attrs: noredzone
declare dso_local i32 @hv_post_message(i32, i32, i8*, i64) #3

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noredzone
declare dso_local void @__bad_udelay() #3

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #3

; Function Attrs: noredzone
declare dso_local void @__udelay(i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @vmbus_set_event(%struct.vmbus_channel* %channel) #0 !dbg !5399 {
entry:
  %channel.addr = alloca %struct.vmbus_channel*, align 8
  %child_relid = alloca i32, align 4
  store %struct.vmbus_channel* %channel, %struct.vmbus_channel** %channel.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vmbus_channel** %channel.addr, metadata !5400, metadata !DIExpression()), !dbg !5401
  call void @llvm.dbg.declare(metadata i32* %child_relid, metadata !5402, metadata !DIExpression()), !dbg !5403
  %0 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !5404
  %offermsg = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %0, i32 0, i32 3, !dbg !5405
  %child_relid1 = getelementptr inbounds %struct.vmbus_channel_offer_channel, %struct.vmbus_channel_offer_channel* %offermsg, i32 0, i32 2, !dbg !5406
  %1 = load i32, i32* %child_relid1, align 4, !dbg !5406
  store i32 %1, i32* %child_relid, align 4, !dbg !5403
  %2 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !5407
  %is_dedicated_interrupt = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %2, i32 0, i32 25, !dbg !5409
  %3 = load i8, i8* %is_dedicated_interrupt, align 4, !dbg !5409
  %tobool = trunc i8 %3 to i1, !dbg !5409
  br i1 %tobool, label %if.end, label %if.then, !dbg !5410

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %child_relid, align 4, !dbg !5411
  call void @vmbus_send_interrupt(i32 %4) #10, !dbg !5412
  br label %if.end, !dbg !5412

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !5413
  %sig_events = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %5, i32 0, i32 16, !dbg !5414
  %6 = load i64, i64* %sig_events, align 8, !dbg !5415
  %inc = add i64 %6, 1, !dbg !5415
  store i64 %inc, i64* %sig_events, align 8, !dbg !5415
  %7 = load %struct.vmbus_channel*, %struct.vmbus_channel** %channel.addr, align 8, !dbg !5416
  %sig_event = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %7, i32 0, i32 26, !dbg !5417
  %8 = load i64, i64* %sig_event, align 8, !dbg !5417
  %call = call i64 @hv_do_fast_hypercall8(i16 zeroext 93, i64 %8) #10, !dbg !5418
  ret void, !dbg !5419
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vmbus_send_interrupt(i32 %relid) #0 !dbg !5420 {
entry:
  %relid.addr = alloca i32, align 4
  store i32 %relid, i32* %relid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %relid.addr, metadata !5423, metadata !DIExpression()), !dbg !5424
  %0 = load i32, i32* %relid.addr, align 4, !dbg !5425
  %conv = zext i32 %0 to i64, !dbg !5425
  %1 = load i8*, i8** getelementptr inbounds (%struct.vmbus_connection, %struct.vmbus_connection* @vmbus_connection, i32 0, i32 6), align 8, !dbg !5426
  %2 = bitcast i8* %1 to i64*, !dbg !5427
  call void @sync_set_bit(i64 %conv, i64* %2) #10, !dbg !5428
  ret void, !dbg !5429
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @hv_do_fast_hypercall8(i16 zeroext %code, i64 %input1) #0 !dbg !5430 {
entry:
  %code.addr = alloca i16, align 2
  %input1.addr = alloca i64, align 8
  %hv_status = alloca i64, align 8
  %control = alloca i64, align 8
  store i16 %code, i16* %code.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %code.addr, metadata !5434, metadata !DIExpression()), !dbg !5435
  store i64 %input1, i64* %input1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %input1.addr, metadata !5436, metadata !DIExpression()), !dbg !5437
  call void @llvm.dbg.declare(metadata i64* %hv_status, metadata !5438, metadata !DIExpression()), !dbg !5439
  call void @llvm.dbg.declare(metadata i64* %control, metadata !5440, metadata !DIExpression()), !dbg !5441
  %0 = load i16, i16* %code.addr, align 2, !dbg !5442
  %conv = zext i16 %0 to i64, !dbg !5443
  %or = or i64 %conv, 65536, !dbg !5444
  store i64 %or, i64* %control, align 8, !dbg !5441
  %1 = call i64 @llvm.read_register.i64(metadata !4334), !dbg !5445
  %2 = load i64, i64* %control, align 8, !dbg !5445
  %3 = load i64, i64* %input1.addr, align 8, !dbg !5445
  %4 = load i8*, i8** @hv_hypercall_pg, align 8, !dbg !5447
  %5 = call { i64, i64, i64, i64 } asm sideeffect "# ALT: oldinstr2\0A661:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *$4\0A\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .word ( 7*32+12)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .byte 663b-662b\0A .long 661b - .\0A .long 6642f - .\0A .word ( 7*32+13)\0A .byte 663b-661b\0A .byte 6652f-6642f\0A .byte 663b-662b\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09call __x86_retpoline_${4:V}\0A\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09lfence;\0A999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *$4\0A\0A6652:\0A.popsection\0A", "={ax},={rsp},={cx},={dx},r,1,2,3,~{cc},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i8* %4, i64 %1, i64 %2, i64 %3) #7, !dbg !5445, !srcloc !5448
  %asmresult = extractvalue { i64, i64, i64, i64 } %5, 0, !dbg !5445
  %asmresult1 = extractvalue { i64, i64, i64, i64 } %5, 1, !dbg !5445
  %asmresult2 = extractvalue { i64, i64, i64, i64 } %5, 2, !dbg !5445
  %asmresult3 = extractvalue { i64, i64, i64, i64 } %5, 3, !dbg !5445
  store i64 %asmresult, i64* %hv_status, align 8, !dbg !5445
  call void @llvm.write_register.i64(metadata !4334, i64 %asmresult1), !dbg !5445
  store i64 %asmresult2, i64* %control, align 8, !dbg !5445
  store i64 %asmresult3, i64* %input1.addr, align 8, !dbg !5445
  %6 = load i64, i64* %hv_status, align 8, !dbg !5449
  ret i64 %6, !dbg !5450
}

; Function Attrs: noredzone
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head*, i8*, %struct.lock_class_key*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__phys_addr_nodebug(i64 %x) #0 !dbg !5451 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr, metadata !5455, metadata !DIExpression()), !dbg !5456
  call void @llvm.dbg.declare(metadata i64* %y, metadata !5457, metadata !DIExpression()), !dbg !5458
  %0 = load i64, i64* %x.addr, align 8, !dbg !5459
  %sub = sub i64 %0, -2147483648, !dbg !5460
  store i64 %sub, i64* %y, align 8, !dbg !5458
  %1 = load i64, i64* %y, align 8, !dbg !5461
  %2 = load i64, i64* %x.addr, align 8, !dbg !5462
  %3 = load i64, i64* %y, align 8, !dbg !5463
  %cmp = icmp ugt i64 %2, %3, !dbg !5464
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5465

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* @phys_base, align 8, !dbg !5466
  br label %cond.end, !dbg !5465

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* @page_offset_base, align 8, !dbg !5467
  %sub1 = sub i64 -2147483648, %5, !dbg !5468
  br label %cond.end, !dbg !5465

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !5465
  %add = add i64 %1, %cond, !dbg !5469
  store i64 %add, i64* %x.addr, align 8, !dbg !5470
  %6 = load i64, i64* %x.addr, align 8, !dbg !5471
  ret i64 %6, !dbg !5472
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !5473 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5474, metadata !DIExpression()), !dbg !5476
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5477, metadata !DIExpression()), !dbg !5476
  %0 = load i64, i64* %__edi, align 8, !dbg !5476
  store i64 %0, i64* %__edi, align 8, !dbg !5476
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5478, metadata !DIExpression()), !dbg !5476
  %1 = load i64, i64* %__esi, align 8, !dbg !5476
  store i64 %1, i64* %__esi, align 8, !dbg !5476
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5479, metadata !DIExpression()), !dbg !5476
  %2 = load i64, i64* %__edx, align 8, !dbg !5476
  store i64 %2, i64* %__edx, align 8, !dbg !5476
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5480, metadata !DIExpression()), !dbg !5476
  %3 = load i64, i64* %__ecx, align 8, !dbg !5476
  store i64 %3, i64* %__ecx, align 8, !dbg !5476
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5481, metadata !DIExpression()), !dbg !5476
  %4 = load i64, i64* %__eax, align 8, !dbg !5476
  store i64 %4, i64* %__eax, align 8, !dbg !5476
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5476
  %6 = call i64 @llvm.read_register.i64(metadata !4334), !dbg !5482
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !5482, !srcloc !5485
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5482
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5482
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5482
  call void @llvm.write_register.i64(metadata !4334, i64 %asmresult1), !dbg !5482
  %8 = load i64, i64* %__eax, align 8, !dbg !5482
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5486, metadata !DIExpression()), !dbg !5488
  store i64 -1, i64* %__mask, align 8, !dbg !5488
  %9 = load i64, i64* %__mask, align 8, !dbg !5488
  store i64 %9, i64* %tmp, align 8, !dbg !5488
  %10 = load i64, i64* %tmp, align 8, !dbg !5488
  %and = and i64 %8, %10, !dbg !5482
  store i64 %and, i64* %__ret, align 8, !dbg !5482
  %11 = load i64, i64* %__ret, align 8, !dbg !5476
  store i64 %11, i64* %tmp2, align 8, !dbg !5489
  %12 = load i64, i64* %tmp2, align 8, !dbg !5476
  ret i64 %12, !dbg !5490
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !5491 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5492, metadata !DIExpression()), !dbg !5494
  %0 = load i64, i64* %__edi, align 8, !dbg !5494
  store i64 %0, i64* %__edi, align 8, !dbg !5494
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5495, metadata !DIExpression()), !dbg !5494
  %1 = load i64, i64* %__esi, align 8, !dbg !5494
  store i64 %1, i64* %__esi, align 8, !dbg !5494
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5496, metadata !DIExpression()), !dbg !5494
  %2 = load i64, i64* %__edx, align 8, !dbg !5494
  store i64 %2, i64* %__edx, align 8, !dbg !5494
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5497, metadata !DIExpression()), !dbg !5494
  %3 = load i64, i64* %__ecx, align 8, !dbg !5494
  store i64 %3, i64* %__ecx, align 8, !dbg !5494
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5498, metadata !DIExpression()), !dbg !5494
  %4 = load i64, i64* %__eax, align 8, !dbg !5494
  store i64 %4, i64* %__eax, align 8, !dbg !5494
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5494
  %6 = call i64 @llvm.read_register.i64(metadata !4334), !dbg !5494
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #7, !dbg !5494, !srcloc !5499
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5494
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5494
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5494
  call void @llvm.write_register.i64(metadata !4334, i64 %asmresult1), !dbg !5494
  ret void, !dbg !5500
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5501 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5504, metadata !DIExpression()), !dbg !5505
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5506, metadata !DIExpression()), !dbg !5507
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5508, metadata !DIExpression()), !dbg !5509
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5510
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5512
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5513
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #10, !dbg !5514
  br i1 %call, label %if.end, label %if.then, !dbg !5515

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5516

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5517
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5518
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5519
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5520
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5521
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5522
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5523
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5524
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5525
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5526
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5527
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5528
  br label %do.body, !dbg !5529

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5530

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5532

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5530

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5534
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5534
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5534
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5534
  br label %do.end7, !dbg !5534

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5530

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5536
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5537 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5540, metadata !DIExpression()), !dbg !5541
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5542, metadata !DIExpression()), !dbg !5543
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5544, metadata !DIExpression()), !dbg !5545
  ret i1 true, !dbg !5546
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !5547 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5548, metadata !DIExpression()), !dbg !5549
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5550, metadata !DIExpression()), !dbg !5552
  %0 = load i64, i64* %__edi, align 8, !dbg !5552
  store i64 %0, i64* %__edi, align 8, !dbg !5552
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5553, metadata !DIExpression()), !dbg !5552
  %1 = load i64, i64* %__esi, align 8, !dbg !5552
  store i64 %1, i64* %__esi, align 8, !dbg !5552
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5554, metadata !DIExpression()), !dbg !5552
  %2 = load i64, i64* %__edx, align 8, !dbg !5552
  store i64 %2, i64* %__edx, align 8, !dbg !5552
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5555, metadata !DIExpression()), !dbg !5552
  %3 = load i64, i64* %__ecx, align 8, !dbg !5552
  store i64 %3, i64* %__ecx, align 8, !dbg !5552
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5556, metadata !DIExpression()), !dbg !5552
  %4 = load i64, i64* %__eax, align 8, !dbg !5552
  store i64 %4, i64* %__eax, align 8, !dbg !5552
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5552
  %6 = call i64 @llvm.read_register.i64(metadata !4334), !dbg !5552
  %7 = load i64, i64* %f.addr, align 8, !dbg !5552
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #7, !dbg !5552, !srcloc !5557
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5552
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5552
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5552
  call void @llvm.write_register.i64(metadata !4334, i64 %asmresult1), !dbg !5552
  ret void, !dbg !5558
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5559 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5560, metadata !DIExpression()), !dbg !5561
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5562
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #10, !dbg !5564
  br i1 %call, label %if.end, label %if.then, !dbg !5565

if.then:                                          ; preds = %entry
  br label %return, !dbg !5566

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5567
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5568
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5568
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5569
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5570
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5570
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #10, !dbg !5571
  br label %return, !dbg !5572

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5572
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5573 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5576, metadata !DIExpression()), !dbg !5577
  ret i1 true, !dbg !5578
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5579 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5580, metadata !DIExpression()), !dbg !5581
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5582, metadata !DIExpression()), !dbg !5583
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5584
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5585
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5586
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5587
  br label %do.body, !dbg !5588

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5589

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5591

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5589

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5593
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5593
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5593
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5593
  br label %do.end5, !dbg !5593

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5589

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5595
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #8

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #9 !dbg !5596 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5600, metadata !DIExpression()), !dbg !5605
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5607, metadata !DIExpression()), !dbg !5608
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5609, metadata !DIExpression()), !dbg !5610
  %0 = load i64, i64* %size.addr, align 8, !dbg !5611
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5613
  br i1 %1, label %if.then, label %if.end447, !dbg !5614

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5615
  %tobool = icmp ne i64 %2, 0, !dbg !5615
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5618

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5619
  br label %return, !dbg !5619

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5620
  %cmp = icmp ult i64 %3, 4096, !dbg !5622
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5623

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5624
  br label %return, !dbg !5624

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub = sub i64 %4, 1, !dbg !5625
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5625
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5625

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub4 = sub i64 %6, 1, !dbg !5625
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5625
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5625

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub6 = sub i64 %8, 1, !dbg !5625
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5625
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5625

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5625

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub9 = sub i64 %9, 1, !dbg !5625
  %and = and i64 %sub9, -9223372036854775808, !dbg !5625
  %tobool10 = icmp ne i64 %and, 0, !dbg !5625
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5625

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5625

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub13 = sub i64 %10, 1, !dbg !5625
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5625
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5625
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5625

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5625

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub18 = sub i64 %11, 1, !dbg !5625
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5625
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5625
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5625

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5625

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub23 = sub i64 %12, 1, !dbg !5625
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5625
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5625
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5625

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5625

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub28 = sub i64 %13, 1, !dbg !5625
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5625
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5625
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5625

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5625

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub33 = sub i64 %14, 1, !dbg !5625
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5625
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5625
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5625

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5625

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub38 = sub i64 %15, 1, !dbg !5625
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5625
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5625
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5625

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5625

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub43 = sub i64 %16, 1, !dbg !5625
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5625
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5625
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5625

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5625

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub48 = sub i64 %17, 1, !dbg !5625
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5625
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5625
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5625

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5625

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub53 = sub i64 %18, 1, !dbg !5625
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5625
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5625
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5625

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5625

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub58 = sub i64 %19, 1, !dbg !5625
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5625
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5625
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5625

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5625

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub63 = sub i64 %20, 1, !dbg !5625
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5625
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5625
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5625

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5625

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub68 = sub i64 %21, 1, !dbg !5625
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5625
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5625
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5625

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5625

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub73 = sub i64 %22, 1, !dbg !5625
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5625
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5625
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5625

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5625

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub78 = sub i64 %23, 1, !dbg !5625
  %and79 = and i64 %sub78, 562949953421312, !dbg !5625
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5625
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5625

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5625

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub83 = sub i64 %24, 1, !dbg !5625
  %and84 = and i64 %sub83, 281474976710656, !dbg !5625
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5625
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5625

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5625

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub88 = sub i64 %25, 1, !dbg !5625
  %and89 = and i64 %sub88, 140737488355328, !dbg !5625
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5625
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5625

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5625

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub93 = sub i64 %26, 1, !dbg !5625
  %and94 = and i64 %sub93, 70368744177664, !dbg !5625
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5625
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5625

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5625

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub98 = sub i64 %27, 1, !dbg !5625
  %and99 = and i64 %sub98, 35184372088832, !dbg !5625
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5625
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5625

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5625

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub103 = sub i64 %28, 1, !dbg !5625
  %and104 = and i64 %sub103, 17592186044416, !dbg !5625
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5625
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5625

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5625

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub108 = sub i64 %29, 1, !dbg !5625
  %and109 = and i64 %sub108, 8796093022208, !dbg !5625
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5625
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5625

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5625

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub113 = sub i64 %30, 1, !dbg !5625
  %and114 = and i64 %sub113, 4398046511104, !dbg !5625
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5625
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5625

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5625

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub118 = sub i64 %31, 1, !dbg !5625
  %and119 = and i64 %sub118, 2199023255552, !dbg !5625
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5625
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5625

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5625

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub123 = sub i64 %32, 1, !dbg !5625
  %and124 = and i64 %sub123, 1099511627776, !dbg !5625
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5625
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5625

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5625

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub128 = sub i64 %33, 1, !dbg !5625
  %and129 = and i64 %sub128, 549755813888, !dbg !5625
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5625
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5625

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5625

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub133 = sub i64 %34, 1, !dbg !5625
  %and134 = and i64 %sub133, 274877906944, !dbg !5625
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5625
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5625

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5625

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub138 = sub i64 %35, 1, !dbg !5625
  %and139 = and i64 %sub138, 137438953472, !dbg !5625
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5625
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5625

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5625

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub143 = sub i64 %36, 1, !dbg !5625
  %and144 = and i64 %sub143, 68719476736, !dbg !5625
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5625
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5625

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5625

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub148 = sub i64 %37, 1, !dbg !5625
  %and149 = and i64 %sub148, 34359738368, !dbg !5625
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5625
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5625

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5625

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub153 = sub i64 %38, 1, !dbg !5625
  %and154 = and i64 %sub153, 17179869184, !dbg !5625
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5625
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5625

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5625

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub158 = sub i64 %39, 1, !dbg !5625
  %and159 = and i64 %sub158, 8589934592, !dbg !5625
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5625
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5625

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5625

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub163 = sub i64 %40, 1, !dbg !5625
  %and164 = and i64 %sub163, 4294967296, !dbg !5625
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5625
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5625

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5625

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub168 = sub i64 %41, 1, !dbg !5625
  %and169 = and i64 %sub168, 2147483648, !dbg !5625
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5625
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5625

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5625

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub173 = sub i64 %42, 1, !dbg !5625
  %and174 = and i64 %sub173, 1073741824, !dbg !5625
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5625
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5625

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5625

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub178 = sub i64 %43, 1, !dbg !5625
  %and179 = and i64 %sub178, 536870912, !dbg !5625
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5625
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5625

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5625

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub183 = sub i64 %44, 1, !dbg !5625
  %and184 = and i64 %sub183, 268435456, !dbg !5625
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5625
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5625

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5625

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub188 = sub i64 %45, 1, !dbg !5625
  %and189 = and i64 %sub188, 134217728, !dbg !5625
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5625
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5625

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5625

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub193 = sub i64 %46, 1, !dbg !5625
  %and194 = and i64 %sub193, 67108864, !dbg !5625
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5625
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5625

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5625

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub198 = sub i64 %47, 1, !dbg !5625
  %and199 = and i64 %sub198, 33554432, !dbg !5625
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5625
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5625

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5625

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub203 = sub i64 %48, 1, !dbg !5625
  %and204 = and i64 %sub203, 16777216, !dbg !5625
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5625
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5625

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5625

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub208 = sub i64 %49, 1, !dbg !5625
  %and209 = and i64 %sub208, 8388608, !dbg !5625
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5625
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5625

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5625

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub213 = sub i64 %50, 1, !dbg !5625
  %and214 = and i64 %sub213, 4194304, !dbg !5625
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5625
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5625

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5625

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub218 = sub i64 %51, 1, !dbg !5625
  %and219 = and i64 %sub218, 2097152, !dbg !5625
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5625
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5625

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5625

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub223 = sub i64 %52, 1, !dbg !5625
  %and224 = and i64 %sub223, 1048576, !dbg !5625
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5625
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5625

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5625

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub228 = sub i64 %53, 1, !dbg !5625
  %and229 = and i64 %sub228, 524288, !dbg !5625
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5625
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5625

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5625

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub233 = sub i64 %54, 1, !dbg !5625
  %and234 = and i64 %sub233, 262144, !dbg !5625
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5625
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5625

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5625

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub238 = sub i64 %55, 1, !dbg !5625
  %and239 = and i64 %sub238, 131072, !dbg !5625
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5625
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5625

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5625

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub243 = sub i64 %56, 1, !dbg !5625
  %and244 = and i64 %sub243, 65536, !dbg !5625
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5625
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5625

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5625

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub248 = sub i64 %57, 1, !dbg !5625
  %and249 = and i64 %sub248, 32768, !dbg !5625
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5625
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5625

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5625

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub253 = sub i64 %58, 1, !dbg !5625
  %and254 = and i64 %sub253, 16384, !dbg !5625
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5625
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5625

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5625

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub258 = sub i64 %59, 1, !dbg !5625
  %and259 = and i64 %sub258, 8192, !dbg !5625
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5625
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5625

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5625

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub263 = sub i64 %60, 1, !dbg !5625
  %and264 = and i64 %sub263, 4096, !dbg !5625
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5625
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5625

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5625

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub268 = sub i64 %61, 1, !dbg !5625
  %and269 = and i64 %sub268, 2048, !dbg !5625
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5625
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5625

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5625

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub273 = sub i64 %62, 1, !dbg !5625
  %and274 = and i64 %sub273, 1024, !dbg !5625
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5625
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5625

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5625

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub278 = sub i64 %63, 1, !dbg !5625
  %and279 = and i64 %sub278, 512, !dbg !5625
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5625
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5625

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5625

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub283 = sub i64 %64, 1, !dbg !5625
  %and284 = and i64 %sub283, 256, !dbg !5625
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5625
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5625

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5625

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub288 = sub i64 %65, 1, !dbg !5625
  %and289 = and i64 %sub288, 128, !dbg !5625
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5625
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5625

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5625

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub293 = sub i64 %66, 1, !dbg !5625
  %and294 = and i64 %sub293, 64, !dbg !5625
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5625
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5625

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5625

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub298 = sub i64 %67, 1, !dbg !5625
  %and299 = and i64 %sub298, 32, !dbg !5625
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5625
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5625

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5625

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub303 = sub i64 %68, 1, !dbg !5625
  %and304 = and i64 %sub303, 16, !dbg !5625
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5625
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5625

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5625

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub308 = sub i64 %69, 1, !dbg !5625
  %and309 = and i64 %sub308, 8, !dbg !5625
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5625
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5625

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5625

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub313 = sub i64 %70, 1, !dbg !5625
  %and314 = and i64 %sub313, 4, !dbg !5625
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5625
  %71 = zext i1 %tobool315 to i64, !dbg !5625
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5625
  br label %cond.end, !dbg !5625

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5625
  br label %cond.end317, !dbg !5625

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5625
  br label %cond.end319, !dbg !5625

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5625
  br label %cond.end321, !dbg !5625

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5625
  br label %cond.end323, !dbg !5625

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5625
  br label %cond.end325, !dbg !5625

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5625
  br label %cond.end327, !dbg !5625

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5625
  br label %cond.end329, !dbg !5625

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5625
  br label %cond.end331, !dbg !5625

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5625
  br label %cond.end333, !dbg !5625

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5625
  br label %cond.end335, !dbg !5625

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5625
  br label %cond.end337, !dbg !5625

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5625
  br label %cond.end339, !dbg !5625

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5625
  br label %cond.end341, !dbg !5625

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5625
  br label %cond.end343, !dbg !5625

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5625
  br label %cond.end345, !dbg !5625

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5625
  br label %cond.end347, !dbg !5625

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5625
  br label %cond.end349, !dbg !5625

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5625
  br label %cond.end351, !dbg !5625

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5625
  br label %cond.end353, !dbg !5625

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5625
  br label %cond.end355, !dbg !5625

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5625
  br label %cond.end357, !dbg !5625

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5625
  br label %cond.end359, !dbg !5625

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5625
  br label %cond.end361, !dbg !5625

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5625
  br label %cond.end363, !dbg !5625

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5625
  br label %cond.end365, !dbg !5625

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5625
  br label %cond.end367, !dbg !5625

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5625
  br label %cond.end369, !dbg !5625

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5625
  br label %cond.end371, !dbg !5625

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5625
  br label %cond.end373, !dbg !5625

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5625
  br label %cond.end375, !dbg !5625

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5625
  br label %cond.end377, !dbg !5625

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5625
  br label %cond.end379, !dbg !5625

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5625
  br label %cond.end381, !dbg !5625

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5625
  br label %cond.end383, !dbg !5625

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5625
  br label %cond.end385, !dbg !5625

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5625
  br label %cond.end387, !dbg !5625

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5625
  br label %cond.end389, !dbg !5625

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5625
  br label %cond.end391, !dbg !5625

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5625
  br label %cond.end393, !dbg !5625

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5625
  br label %cond.end395, !dbg !5625

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5625
  br label %cond.end397, !dbg !5625

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5625
  br label %cond.end399, !dbg !5625

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5625
  br label %cond.end401, !dbg !5625

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5625
  br label %cond.end403, !dbg !5625

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5625
  br label %cond.end405, !dbg !5625

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5625
  br label %cond.end407, !dbg !5625

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5625
  br label %cond.end409, !dbg !5625

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5625
  br label %cond.end411, !dbg !5625

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5625
  br label %cond.end413, !dbg !5625

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5625
  br label %cond.end415, !dbg !5625

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5625
  br label %cond.end417, !dbg !5625

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5625
  br label %cond.end419, !dbg !5625

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5625
  br label %cond.end421, !dbg !5625

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5625
  br label %cond.end423, !dbg !5625

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5625
  br label %cond.end425, !dbg !5625

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5625
  br label %cond.end427, !dbg !5625

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5625
  br label %cond.end429, !dbg !5625

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5625
  br label %cond.end431, !dbg !5625

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5625
  br label %cond.end433, !dbg !5625

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5625
  br label %cond.end435, !dbg !5625

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5625
  br label %cond.end437, !dbg !5625

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5625
  br label %cond.end440, !dbg !5625

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5625

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5625
  br label %cond.end444, !dbg !5625

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5625
  %sub443 = sub i64 %72, 1, !dbg !5625
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !5625
  br label %cond.end444, !dbg !5625

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5625
  %sub446 = sub i32 %cond445, 12, !dbg !5626
  %add = add i32 %sub446, 1, !dbg !5627
  store i32 %add, i32* %retval, align 4, !dbg !5628
  br label %return, !dbg !5628

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5629
  %dec = add i64 %73, -1, !dbg !5629
  store i64 %dec, i64* %size.addr, align 8, !dbg !5629
  %74 = load i64, i64* %size.addr, align 8, !dbg !5630
  %shr = lshr i64 %74, 12, !dbg !5630
  store i64 %shr, i64* %size.addr, align 8, !dbg !5630
  %75 = load i64, i64* %size.addr, align 8, !dbg !5631
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5608
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5632
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5633
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !5632, !srcloc !5634
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5632
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5635
  %add.i = add i32 %79, 1, !dbg !5636
  store i32 %add.i, i32* %retval, align 4, !dbg !5637
  br label %return, !dbg !5637

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5638
  ret i32 %80, !dbg !5638
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #9 !dbg !5639 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5600, metadata !DIExpression()), !dbg !5643
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5607, metadata !DIExpression()), !dbg !5645
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5646, metadata !DIExpression()), !dbg !5647
  %0 = load i64, i64* %n.addr, align 8, !dbg !5648
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5645
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5649
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5650
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !5649, !srcloc !5634
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5649
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5651
  %add.i = add i32 %4, 1, !dbg !5652
  %sub = sub i32 %add.i, 1, !dbg !5653
  ret i32 %sub, !dbg !5654
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5655 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5659, metadata !DIExpression()), !dbg !5660
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5661, metadata !DIExpression()), !dbg !5662
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5663, metadata !DIExpression()), !dbg !5664
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5665, metadata !DIExpression()), !dbg !5666
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5667
  ret i8* %0, !dbg !5668
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !5669 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4938, metadata !DIExpression()), !dbg !5670
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4948, metadata !DIExpression()), !dbg !5674
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4950, metadata !DIExpression()), !dbg !5675
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4952, metadata !DIExpression()), !dbg !5676
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4954, metadata !DIExpression()), !dbg !5677
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4960, metadata !DIExpression()), !dbg !5679
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4966, metadata !DIExpression()), !dbg !5681
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4975, metadata !DIExpression()), !dbg !5684
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4977, metadata !DIExpression()), !dbg !5685
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4979, metadata !DIExpression()), !dbg !5686
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4981, metadata !DIExpression()), !dbg !5687
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4983, metadata !DIExpression()), !dbg !5688
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4985, metadata !DIExpression()), !dbg !5689
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4987, metadata !DIExpression()), !dbg !5690
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4989, metadata !DIExpression()), !dbg !5691
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5692, metadata !DIExpression()), !dbg !5693
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5694, metadata !DIExpression()), !dbg !5695
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5696, metadata !DIExpression()), !dbg !5697
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !5698, metadata !DIExpression()), !dbg !5699
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !5700, metadata !DIExpression()), !dbg !5703
  %0 = load i64, i64* %n.addr, align 8, !dbg !5703
  store i64 %0, i64* %__a, align 8, !dbg !5703
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !5704, metadata !DIExpression()), !dbg !5703
  %1 = load i64, i64* %size.addr, align 8, !dbg !5703
  store i64 %1, i64* %__b, align 8, !dbg !5703
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !5705, metadata !DIExpression()), !dbg !5703
  store i64* %bytes, i64** %__d, align 8, !dbg !5703
  %cmp = icmp eq i64* %__a, %__b, !dbg !5703
  %conv = zext i1 %cmp to i32, !dbg !5703
  %2 = load i64*, i64** %__d, align 8, !dbg !5703
  %cmp1 = icmp eq i64* %__a, %2, !dbg !5703
  %conv2 = zext i1 %cmp1 to i32, !dbg !5703
  %3 = load i64, i64* %__a, align 8, !dbg !5703
  %4 = load i64, i64* %__b, align 8, !dbg !5703
  %5 = load i64*, i64** %__d, align 8, !dbg !5703
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !5703
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5703
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !5703
  store i64 %8, i64* %5, align 8, !dbg !5703
  %frombool = zext i1 %7 to i8, !dbg !5703
  store i8 %frombool, i8* %tmp, align 1, !dbg !5703
  %9 = load i8, i8* %tmp, align 1, !dbg !5703
  %tobool = trunc i8 %9 to i1, !dbg !5703
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #10, !dbg !5707
  %lnot = xor i1 %call, true, !dbg !5707
  %lnot3 = xor i1 %lnot, true, !dbg !5707
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5707
  %conv4 = sext i32 %lnot.ext to i64, !dbg !5707
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !5707
  br i1 %tobool5, label %if.then, label %if.end, !dbg !5708

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !5709
  br label %return, !dbg !5709

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !5710
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !5711
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !5712

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !5713
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !5714
  br i1 %13, label %if.then6, label %if.end8, !dbg !5715

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !5716
  %15 = load i32, i32* %flags.addr, align 4, !dbg !5717
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !5718
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #7, !dbg !5719
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !5720

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !5721
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !5722
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5723

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !5724
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !5725
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !5726
  %call.i.i = call i32 @get_order(i64 %21) #13, !dbg !5727
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5688
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !5728
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5729
  %24 = load i32, i32* %order.i.i, align 4, !dbg !5730
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5731
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5732
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5733
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #11, !dbg !5734
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5734
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5734
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5734
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !5734
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5735
  br label %kmalloc.exit, !dbg !5735

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !5736
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5737
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !5737
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5738

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5739
  br label %kmalloc_index.exit.i, !dbg !5739

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5740
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !5741
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5742

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5743
  br label %kmalloc_index.exit.i, !dbg !5743

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5744
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !5745
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5746

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5747
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !5748
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5749

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5750
  br label %kmalloc_index.exit.i, !dbg !5750

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5751
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !5752
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5753

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5754
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !5755
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5756

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5757
  br label %kmalloc_index.exit.i, !dbg !5757

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5758
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !5759
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5760

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5761
  br label %kmalloc_index.exit.i, !dbg !5761

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5762
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !5763
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5764

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5765
  br label %kmalloc_index.exit.i, !dbg !5765

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5766
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !5767
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5768

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5769
  br label %kmalloc_index.exit.i, !dbg !5769

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5770
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !5771
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5772

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5773
  br label %kmalloc_index.exit.i, !dbg !5773

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5774
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !5775
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5776

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5777
  br label %kmalloc_index.exit.i, !dbg !5777

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5778
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !5779
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5780

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5781
  br label %kmalloc_index.exit.i, !dbg !5781

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5782
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !5783
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5784

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5785
  br label %kmalloc_index.exit.i, !dbg !5785

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5786
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !5787
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5788

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5789
  br label %kmalloc_index.exit.i, !dbg !5789

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5790
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !5791
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5792

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5793
  br label %kmalloc_index.exit.i, !dbg !5793

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5794
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !5795
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5796

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5797
  br label %kmalloc_index.exit.i, !dbg !5797

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5798
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !5799
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5800

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5801
  br label %kmalloc_index.exit.i, !dbg !5801

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5802
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !5803
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5804

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5805
  br label %kmalloc_index.exit.i, !dbg !5805

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5806
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !5807
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5808

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5809
  br label %kmalloc_index.exit.i, !dbg !5809

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5810
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !5811
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5812

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5813
  br label %kmalloc_index.exit.i, !dbg !5813

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5814
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !5815
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5816

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5817
  br label %kmalloc_index.exit.i, !dbg !5817

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5818
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !5819
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5820

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5821
  br label %kmalloc_index.exit.i, !dbg !5821

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5822
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !5823
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5824

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5825
  br label %kmalloc_index.exit.i, !dbg !5825

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5826
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !5827
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5828

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5829
  br label %kmalloc_index.exit.i, !dbg !5829

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5830
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !5831
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5832

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5833
  br label %kmalloc_index.exit.i, !dbg !5833

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5834
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !5835
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5836

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5837
  br label %kmalloc_index.exit.i, !dbg !5837

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5838
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !5839
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5840

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5841
  br label %kmalloc_index.exit.i, !dbg !5841

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5842
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !5843
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5844

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5845
  br label %kmalloc_index.exit.i, !dbg !5845

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5846
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !5847
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5848

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5849
  br label %kmalloc_index.exit.i, !dbg !5849

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5850
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !5851
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5852

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5853
  br label %kmalloc_index.exit.i, !dbg !5853

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !5854, !srcloc !5165
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 225) #7, !dbg !5855, !srcloc !5169
  unreachable, !dbg !5856

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !5857
  store i32 %59, i32* %index.i, align 4, !dbg !5858
  %60 = load i32, i32* %index.i, align 4, !dbg !5859
  %tobool.i = icmp ne i32 %60, 0, !dbg !5859
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5860

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5861
  br label %kmalloc.exit, !dbg !5861

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !5862
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5863
  %and.i.i = and i32 %62, 17, !dbg !5863
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5863
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5863
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5863
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5863
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5864

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5865
  br label %kmalloc_type.exit.i, !dbg !5865

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5866
  %and2.i.i = and i32 %63, 1, !dbg !5867
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5866
  %64 = zext i1 %tobool3.i.i to i64, !dbg !5866
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5866
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5868
  br label %kmalloc_type.exit.i, !dbg !5868

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !5869
  %idxprom.i = zext i32 %65 to i64, !dbg !5870
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5870
  %66 = load i32, i32* %index.i, align 4, !dbg !5871
  %idxprom6.i = zext i32 %66 to i64, !dbg !5870
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5870
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5870
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !5872
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !5873
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5874
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5875
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #11, !dbg !5876
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5876
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5876
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5876
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !5876
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5676
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5877
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !5878
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5879
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5880
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #11, !dbg !5881
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5882
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !5883
  store i8* %76, i8** %retval.i, align 8, !dbg !5884
  br label %kmalloc.exit, !dbg !5884

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !5885
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !5886
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #11, !dbg !5887
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5887
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5887
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5887
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !5887
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5888
  br label %kmalloc.exit, !dbg !5888

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !5889
  store i8* %79, i8** %retval, align 8, !dbg !5890
  br label %return, !dbg !5890

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !5891
  %81 = load i32, i32* %flags.addr, align 4, !dbg !5892
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #10, !dbg !5893
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !5893
  %maskedptr = and i64 %ptrint, 7, !dbg !5893
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !5893
  call void @llvm.assume(i1 %maskcond), !dbg !5893
  store i8* %call9, i8** %retval, align 8, !dbg !5894
  br label %return, !dbg !5894

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !5895
  ret i8* %82, !dbg !5895
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !5896 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !5900, metadata !DIExpression()), !dbg !5901
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !5902
  %tobool = trunc i8 %0 to i1, !dbg !5902
  %lnot = xor i1 %tobool, true, !dbg !5902
  %lnot1 = xor i1 %lnot, true, !dbg !5902
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5902
  %conv = sext i32 %lnot.ext to i64, !dbg !5902
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5902
  ret i1 %tobool2, !dbg !5903
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hv_get_bytes_to_read(%struct.hv_ring_buffer_info* %rbi) #0 !dbg !5904 {
entry:
  %rbi.addr = alloca %struct.hv_ring_buffer_info*, align 8
  %read_loc = alloca i32, align 4
  %write_loc = alloca i32, align 4
  %dsize = alloca i32, align 4
  %read = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.hv_ring_buffer_info* %rbi, %struct.hv_ring_buffer_info** %rbi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hv_ring_buffer_info** %rbi.addr, metadata !5909, metadata !DIExpression()), !dbg !5910
  call void @llvm.dbg.declare(metadata i32* %read_loc, metadata !5911, metadata !DIExpression()), !dbg !5912
  call void @llvm.dbg.declare(metadata i32* %write_loc, metadata !5913, metadata !DIExpression()), !dbg !5914
  call void @llvm.dbg.declare(metadata i32* %dsize, metadata !5915, metadata !DIExpression()), !dbg !5916
  call void @llvm.dbg.declare(metadata i32* %read, metadata !5917, metadata !DIExpression()), !dbg !5918
  %0 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi.addr, align 8, !dbg !5919
  %ring_datasize = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %0, i32 0, i32 4, !dbg !5920
  %1 = load i32, i32* %ring_datasize, align 4, !dbg !5920
  store i32 %1, i32* %dsize, align 4, !dbg !5921
  %2 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi.addr, align 8, !dbg !5922
  %ring_buffer = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %2, i32 0, i32 0, !dbg !5923
  %3 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer, align 8, !dbg !5923
  %read_index = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %3, i32 0, i32 1, !dbg !5924
  %4 = load i32, i32* %read_index, align 1, !dbg !5924
  store i32 %4, i32* %read_loc, align 4, !dbg !5925
  br label %do.body, !dbg !5926

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5928

do.end:                                           ; preds = %do.body
  %5 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %rbi.addr, align 8, !dbg !5926
  %ring_buffer1 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %5, i32 0, i32 0, !dbg !5926
  %6 = load %struct.hv_ring_buffer*, %struct.hv_ring_buffer** %ring_buffer1, align 8, !dbg !5926
  %write_index = getelementptr inbounds %struct.hv_ring_buffer, %struct.hv_ring_buffer* %6, i32 0, i32 0, !dbg !5926
  %7 = load volatile i32, i32* %write_index, align 1, !dbg !5926
  store i32 %7, i32* %tmp, align 4, !dbg !5928
  %8 = load i32, i32* %tmp, align 4, !dbg !5926
  store i32 %8, i32* %write_loc, align 4, !dbg !5930
  %9 = load i32, i32* %write_loc, align 4, !dbg !5931
  %10 = load i32, i32* %read_loc, align 4, !dbg !5932
  %cmp = icmp uge i32 %9, %10, !dbg !5933
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5931

cond.true:                                        ; preds = %do.end
  %11 = load i32, i32* %write_loc, align 4, !dbg !5934
  %12 = load i32, i32* %read_loc, align 4, !dbg !5935
  %sub = sub i32 %11, %12, !dbg !5936
  br label %cond.end, !dbg !5931

cond.false:                                       ; preds = %do.end
  %13 = load i32, i32* %dsize, align 4, !dbg !5937
  %14 = load i32, i32* %read_loc, align 4, !dbg !5938
  %sub2 = sub i32 %13, %14, !dbg !5939
  %15 = load i32, i32* %write_loc, align 4, !dbg !5940
  %add = add i32 %sub2, %15, !dbg !5941
  br label %cond.end, !dbg !5931

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %add, %cond.false ], !dbg !5931
  store i32 %cond, i32* %read, align 4, !dbg !5942
  %16 = load i32, i32* %read, align 4, !dbg !5943
  ret i32 %16, !dbg !5944
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_set_bit(i64 %nr, i64* %addr) #0 !dbg !5945 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5951, metadata !DIExpression()), !dbg !5953
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5955, metadata !DIExpression()), !dbg !5956
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !5957, metadata !DIExpression()), !dbg !5959
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5960, metadata !DIExpression()), !dbg !5967
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5969, metadata !DIExpression()), !dbg !5970
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5971, metadata !DIExpression()), !dbg !5972
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5973, metadata !DIExpression()), !dbg !5974
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5975
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5976
  %div = sdiv i64 %1, 64, !dbg !5976
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5977
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5975
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5978
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5979
  %conv.i = trunc i64 %4 to i32, !dbg !5979
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !5980
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5981
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5981
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #11, !dbg !5981
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5982
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5983
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !5959
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !5959
  %11 = call i8 asm sideeffect " btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #7, !dbg !5959, !srcloc !5984
  store i8 %11, i8* %c.i, align 1, !dbg !5959
  %12 = load i8, i8* %c.i, align 1, !dbg !5959
  %tobool.i = trunc i8 %12 to i1, !dbg !5959
  %frombool.i = zext i1 %tobool.i to i8, !dbg !5959
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !5959
  %13 = load i8, i8* %tmp.i, align 1, !dbg !5959
  %tobool1.i = trunc i8 %13 to i1, !dbg !5959
  ret i1 %tobool1.i, !dbg !5985
}

; Function Attrs: noredzone
declare dso_local void @__tasklet_schedule(%struct.tasklet_struct*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5986 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5990, metadata !DIExpression()), !dbg !5991
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5992, metadata !DIExpression()), !dbg !5993
  ret i1 true, !dbg !5994
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5995 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5999, metadata !DIExpression()), !dbg !6000
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6001, metadata !DIExpression()), !dbg !6002
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6003, metadata !DIExpression()), !dbg !6004
  ret void, !dbg !6005
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sync_set_bit(i64 %nr, i64* %addr) #0 !dbg !6006 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6010, metadata !DIExpression()), !dbg !6011
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6012, metadata !DIExpression()), !dbg !6013
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6014
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6015
  call void asm sideeffect "lock;  btsq  $1,$0", "=*m,Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64 %1, i64* %0) #7, !dbg !6016, !srcloc !6017
  ret void, !dbg !6018
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn }
attributes #9 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noredzone }
attributes #11 = { noredzone nounwind }
attributes #12 = { cold noredzone }
attributes #13 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4334}
!llvm.module.flags = !{!4335, !4336, !4337, !4338}
!llvm.ident = !{!4339}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "vmbus_connection", scope: !2, file: !3, line: 27, type: !4258, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !201, globals: !4172, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/hv/connection.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !20, !26, !31, !37, !44, !50, !59, !67, !73, !79, !86, !94, !100, !114, !121, !148, !153, !163, !168, !185, !189, !196}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vmbus_connect_state", file: !6, line: 202, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/hv/hyperv_vmbus.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "DISCONNECTED", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "CONNECTING", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "CONNECTED", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "DISCONNECTING", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !14, line: 15, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !21, line: 546, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!22 = !{!23, !24, !25}
!23 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !27, line: 65, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!28 = !{!29, !30}
!29 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!30 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !32, line: 16, baseType: !7, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!33 = !{!34, !35, !36}
!34 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!35 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!36 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !38, line: 59, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !41, !42, !43}
!40 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!42 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!43 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !45, line: 54, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!46 = !{!47, !48, !49}
!47 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!48 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!49 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !51, line: 296, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57, !58}
!53 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!58 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !60, line: 9, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!61 = !{!62, !63, !64, !65, !66}
!62 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!65 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!66 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !68, line: 26, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!71 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!72 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !74, line: 44, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !80, line: 343, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !84, !85}
!82 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!85 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !87, line: 524, baseType: !7, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!88 = !{!89, !90, !91, !92, !93}
!89 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!93 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !87, line: 502, baseType: !7, size: 32, elements: !95)
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !101, line: 76, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113}
!103 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!105 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!106 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!107 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!108 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!109 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!110 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!111 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!112 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!113 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vmbus_channel_state", file: !115, line: 696, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/hyperv.h", directory: "/home/lizy2001/genbc/linux")
!116 = !{!117, !118, !119, !120}
!117 = !DIEnumerator(name: "CHANNEL_OFFER_STATE", value: 0, isUnsigned: true)
!118 = !DIEnumerator(name: "CHANNEL_OPENING_STATE", value: 1, isUnsigned: true)
!119 = !DIEnumerator(name: "CHANNEL_OPEN_STATE", value: 2, isUnsigned: true)
!120 = !DIEnumerator(name: "CHANNEL_OPENED_STATE", value: 3, isUnsigned: true)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vmbus_channel_message_type", file: !115, line: 453, baseType: !7, size: 32, elements: !122)
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147}
!123 = !DIEnumerator(name: "CHANNELMSG_INVALID", value: 0, isUnsigned: true)
!124 = !DIEnumerator(name: "CHANNELMSG_OFFERCHANNEL", value: 1, isUnsigned: true)
!125 = !DIEnumerator(name: "CHANNELMSG_RESCIND_CHANNELOFFER", value: 2, isUnsigned: true)
!126 = !DIEnumerator(name: "CHANNELMSG_REQUESTOFFERS", value: 3, isUnsigned: true)
!127 = !DIEnumerator(name: "CHANNELMSG_ALLOFFERS_DELIVERED", value: 4, isUnsigned: true)
!128 = !DIEnumerator(name: "CHANNELMSG_OPENCHANNEL", value: 5, isUnsigned: true)
!129 = !DIEnumerator(name: "CHANNELMSG_OPENCHANNEL_RESULT", value: 6, isUnsigned: true)
!130 = !DIEnumerator(name: "CHANNELMSG_CLOSECHANNEL", value: 7, isUnsigned: true)
!131 = !DIEnumerator(name: "CHANNELMSG_GPADL_HEADER", value: 8, isUnsigned: true)
!132 = !DIEnumerator(name: "CHANNELMSG_GPADL_BODY", value: 9, isUnsigned: true)
!133 = !DIEnumerator(name: "CHANNELMSG_GPADL_CREATED", value: 10, isUnsigned: true)
!134 = !DIEnumerator(name: "CHANNELMSG_GPADL_TEARDOWN", value: 11, isUnsigned: true)
!135 = !DIEnumerator(name: "CHANNELMSG_GPADL_TORNDOWN", value: 12, isUnsigned: true)
!136 = !DIEnumerator(name: "CHANNELMSG_RELID_RELEASED", value: 13, isUnsigned: true)
!137 = !DIEnumerator(name: "CHANNELMSG_INITIATE_CONTACT", value: 14, isUnsigned: true)
!138 = !DIEnumerator(name: "CHANNELMSG_VERSION_RESPONSE", value: 15, isUnsigned: true)
!139 = !DIEnumerator(name: "CHANNELMSG_UNLOAD", value: 16, isUnsigned: true)
!140 = !DIEnumerator(name: "CHANNELMSG_UNLOAD_RESPONSE", value: 17, isUnsigned: true)
!141 = !DIEnumerator(name: "CHANNELMSG_18", value: 18, isUnsigned: true)
!142 = !DIEnumerator(name: "CHANNELMSG_19", value: 19, isUnsigned: true)
!143 = !DIEnumerator(name: "CHANNELMSG_20", value: 20, isUnsigned: true)
!144 = !DIEnumerator(name: "CHANNELMSG_TL_CONNECT_REQUEST", value: 21, isUnsigned: true)
!145 = !DIEnumerator(name: "CHANNELMSG_MODIFYCHANNEL", value: 22, isUnsigned: true)
!146 = !DIEnumerator(name: "CHANNELMSG_TL_CONNECT_RESULT", value: 23, isUnsigned: true)
!147 = !DIEnumerator(name: "CHANNELMSG_COUNT", value: 24, isUnsigned: true)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hv_callback_mode", file: !115, line: 844, baseType: !7, size: 32, elements: !149)
!149 = !{!150, !151, !152}
!150 = !DIEnumerator(name: "HV_CALL_BATCHED", value: 0, isUnsigned: true)
!151 = !DIEnumerator(name: "HV_CALL_DIRECT", value: 1, isUnsigned: true)
!152 = !DIEnumerator(name: "HV_CALL_ISR", value: 2, isUnsigned: true)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 107, baseType: !7, size: 32, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162}
!155 = !DIEnumerator(name: "VMBUS_MESSAGE_CONNECTION_ID", value: 1, isUnsigned: true)
!156 = !DIEnumerator(name: "VMBUS_MESSAGE_CONNECTION_ID_4", value: 4, isUnsigned: true)
!157 = !DIEnumerator(name: "VMBUS_MESSAGE_PORT_ID", value: 1, isUnsigned: true)
!158 = !DIEnumerator(name: "VMBUS_EVENT_CONNECTION_ID", value: 2, isUnsigned: true)
!159 = !DIEnumerator(name: "VMBUS_EVENT_PORT_ID", value: 2, isUnsigned: true)
!160 = !DIEnumerator(name: "VMBUS_MONITOR_CONNECTION_ID", value: 3, isUnsigned: true)
!161 = !DIEnumerator(name: "VMBUS_MONITOR_PORT_ID", value: 3, isUnsigned: true)
!162 = !DIEnumerator(name: "VMBUS_MESSAGE_SINT", value: 2, isUnsigned: true)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !164, line: 10, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!165 = !{!166, !167}
!166 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!167 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !169, line: 308, baseType: !7, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184}
!171 = !DIEnumerator(name: "WQ_UNBOUND", value: 2, isUnsigned: true)
!172 = !DIEnumerator(name: "WQ_FREEZABLE", value: 4, isUnsigned: true)
!173 = !DIEnumerator(name: "WQ_MEM_RECLAIM", value: 8, isUnsigned: true)
!174 = !DIEnumerator(name: "WQ_HIGHPRI", value: 16, isUnsigned: true)
!175 = !DIEnumerator(name: "WQ_CPU_INTENSIVE", value: 32, isUnsigned: true)
!176 = !DIEnumerator(name: "WQ_SYSFS", value: 64, isUnsigned: true)
!177 = !DIEnumerator(name: "WQ_POWER_EFFICIENT", value: 128, isUnsigned: true)
!178 = !DIEnumerator(name: "__WQ_DRAINING", value: 65536, isUnsigned: true)
!179 = !DIEnumerator(name: "__WQ_ORDERED", value: 131072, isUnsigned: true)
!180 = !DIEnumerator(name: "__WQ_LEGACY", value: 262144, isUnsigned: true)
!181 = !DIEnumerator(name: "__WQ_ORDERED_EXPLICIT", value: 524288, isUnsigned: true)
!182 = !DIEnumerator(name: "WQ_MAX_ACTIVE", value: 512, isUnsigned: true)
!183 = !DIEnumerator(name: "WQ_MAX_UNBOUND_PER_CPU", value: 4, isUnsigned: true)
!184 = !DIEnumerator(name: "WQ_DFL_ACTIVE", value: 256, isUnsigned: true)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "delay", file: !6, line: 393, baseType: !7, size: 32, elements: !186)
!186 = !{!187, !188}
!187 = !DIEnumerator(name: "INTERRUPT_DELAY", value: 0, isUnsigned: true)
!188 = !DIEnumerator(name: "MESSAGE_DELAY", value: 1, isUnsigned: true)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !190, line: 305, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!191 = !{!192, !193, !194, !195}
!192 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!193 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!194 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!195 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !197, line: 651, baseType: !7, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!198 = !{!199, !200}
!199 = !DIEnumerator(name: "TASKLET_STATE_SCHED", value: 0, isUnsigned: true)
!200 = !DIEnumerator(name: "TASKLET_STATE_RUN", value: 1, isUnsigned: true)
!201 = !{!202, !237, !238, !239, !241, !242, !4163, !367, !4166, !4168, !4171, !220}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_initiate_contact", file: !115, line: 648, size: 320, elements: !204)
!204 = !{!205, !214, !215, !216, !235, !236}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !203, file: !115, line: 649, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_message_header", file: !115, line: 484, size: 64, elements: !207)
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "msgtype", scope: !206, file: !115, line: 485, baseType: !121, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !206, file: !115, line: 486, baseType: !210, size: 32, offset: 32)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !211, line: 21, baseType: !212)
!211 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !213, line: 27, baseType: !7)
!213 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!214 = !DIDerivedType(tag: DW_TAG_member, name: "vmbus_version_requested", scope: !203, file: !115, line: 650, baseType: !210, size: 32, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "target_vcpu", scope: !203, file: !115, line: 651, baseType: !210, size: 32, offset: 96)
!216 = !DIDerivedType(tag: DW_TAG_member, scope: !203, file: !115, line: 652, baseType: !217, size: 64, offset: 128)
!217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !203, file: !115, line: 652, size: 64, elements: !218)
!218 = !{!219, !223}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_page", scope: !217, file: !115, line: 653, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !211, line: 23, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !213, line: 31, baseType: !222)
!222 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!223 = !DIDerivedType(tag: DW_TAG_member, scope: !217, file: !115, line: 654, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !217, file: !115, line: 654, size: 64, elements: !225)
!225 = !{!226, !230, !234}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "msg_sint", scope: !224, file: !115, line: 655, baseType: !227, size: 8)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !211, line: 17, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !213, line: 21, baseType: !229)
!229 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !224, file: !115, line: 656, baseType: !231, size: 24, offset: 8)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 24, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 3)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "padding2", scope: !224, file: !115, line: 657, baseType: !210, size: 32, offset: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_page1", scope: !203, file: !115, line: 660, baseType: !220, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_page2", scope: !203, file: !115, line: 661, baseType: !220, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!238 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !240, line: 148, baseType: !7)
!240 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!241 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel", file: !115, line: 773, size: 6592, elements: !247)
!247 = !{!248, !254, !3967, !3968, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4054, !4055, !4108, !4109, !4110, !4111, !4112, !4132, !4133, !4134, !4138, !4139, !4140, !4141, !4142, !4143, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "listentry", scope: !246, file: !115, line: 774, baseType: !249, size: 128)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !240, line: 178, size: 128, elements: !250)
!250 = !{!251, !253}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !249, file: !240, line: 179, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !249, file: !240, line: 179, baseType: !252, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "device_obj", scope: !246, file: !115, line: 776, baseType: !255, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_device", file: !115, line: 1219, size: 6144, elements: !257)
!257 = !{!258, !267, !268, !272, !273, !3963, !3964, !3965, !3966}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "dev_type", scope: !256, file: !115, line: 1221, baseType: !259, size: 128)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !260, line: 25, baseType: !261)
!260 = !DIFile(filename: "./include/uapi/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !260, line: 23, size: 128, elements: !262)
!262 = !{!263}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !261, file: !260, line: 24, baseType: !264, size: 128)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 128, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 16)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "dev_instance", scope: !256, file: !115, line: 1224, baseType: !259, size: 128, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !256, file: !115, line: 1225, baseType: !269, size: 16, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !211, line: 19, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !213, line: 24, baseType: !271)
!271 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !256, file: !115, line: 1226, baseType: !269, size: 16, offset: 272)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !256, file: !115, line: 1228, baseType: !274, size: 5568, offset: 320)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !80, line: 461, size: 5568, elements: !275)
!275 = !{!276, !3416, !3418, !3421, !3422, !3473, !3564, !3565, !3566, !3567, !3568, !3577, !3682, !3695, !3890, !3891, !3895, !3897, !3898, !3899, !3903, !3909, !3910, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3951, !3952, !3953, !3956, !3959, !3960, !3961, !3962}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !274, file: !80, line: 462, baseType: !277, size: 512)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !278, line: 64, size: 512, elements: !279)
!278 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!279 = !{!280, !284, !285, !287, !345, !3266, !3406, !3411, !3412, !3413, !3414, !3415}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !277, file: !278, line: 65, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !277, file: !278, line: 66, baseType: !249, size: 128, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !277, file: !278, line: 67, baseType: !286, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !277, file: !278, line: 68, baseType: !288, size: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !278, line: 192, size: 704, elements: !290)
!290 = !{!291, !292, !308, !309}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !289, file: !278, line: 193, baseType: !249, size: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !289, file: !278, line: 194, baseType: !293, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !294, line: 83, baseType: !295)
!294 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !294, line: 71, elements: !296)
!296 = !{!297}
!297 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !294, line: 72, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !294, line: 72, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !298, file: !294, line: 73, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !294, line: 20, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !301, file: !294, line: 21, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !305, line: 25, baseType: !306)
!305 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !305, line: 25, elements: !307)
!307 = !{}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !289, file: !278, line: 195, baseType: !277, size: 512, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !289, file: !278, line: 196, baseType: !310, size: 64, offset: 640)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !278, line: 156, size: 192, elements: !313)
!313 = !{!314, !319, !324}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !312, file: !278, line: 157, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!241, !288, !286}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !312, file: !278, line: 158, baseType: !320, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!281, !288, !286}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !312, file: !278, line: 159, baseType: !325, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!241, !288, !286, !329}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !278, line: 148, size: 20736, elements: !331)
!331 = !{!332, !335, !339, !340, !344}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !330, file: !278, line: 149, baseType: !333, size: 192)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 192, elements: !232)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !330, file: !278, line: 150, baseType: !336, size: 4096, offset: 192)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 4096, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !330, file: !278, line: 151, baseType: !241, size: 32, offset: 4288)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !330, file: !278, line: 152, baseType: !341, size: 16384, offset: 4320)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 16384, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 2048)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !330, file: !278, line: 153, baseType: !241, size: 32, offset: 20704)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !277, file: !278, line: 69, baseType: !346, size: 64, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !278, line: 138, size: 448, elements: !348)
!348 = !{!349, !353, !381, !383, !3228, !3256, !3260}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !347, file: !278, line: 139, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !286}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !347, file: !278, line: 140, baseType: !354, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !357, line: 230, size: 128, elements: !358)
!357 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!358 = !{!359, !374}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !356, file: !357, line: 231, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!363, !286, !368, !334}
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !240, line: 60, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !365, line: 73, baseType: !366)
!365 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !365, line: 15, baseType: !367)
!367 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !357, line: 30, size: 128, elements: !370)
!370 = !{!371, !372}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !369, file: !357, line: 31, baseType: !281, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !369, file: !357, line: 32, baseType: !373, size: 16, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !240, line: 19, baseType: !271)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !356, file: !357, line: 232, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!363, !286, !368, !281, !378}
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !240, line: 55, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !365, line: 72, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !365, line: 16, baseType: !238)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !347, file: !278, line: 141, baseType: !382, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !347, file: !278, line: 142, baseType: !384, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !357, line: 84, size: 320, elements: !388)
!388 = !{!389, !390, !394, !3225, !3226}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !387, file: !357, line: 85, baseType: !281, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !387, file: !357, line: 86, baseType: !391, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!373, !286, !368, !241}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !387, file: !357, line: 88, baseType: !395, size: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!373, !286, !398, !241}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !357, line: 168, size: 448, elements: !400)
!400 = !{!401, !402, !403, !404, !3220, !3221}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !399, file: !357, line: 169, baseType: !369, size: 128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !399, file: !357, line: 170, baseType: !378, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !399, file: !357, line: 171, baseType: !237, size: 64, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !399, file: !357, line: 172, baseType: !405, size: 64, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!363, !408, !286, !398, !334, !579, !378}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !51, line: 916, size: 1856, align: 32, elements: !410)
!410 = !{!411, !429, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3203, !3204, !3213, !3214, !3215, !3216, !3217, !3218, !3219}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !409, file: !51, line: 920, baseType: !412, size: 128)
!412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !409, file: !51, line: 917, size: 128, elements: !413)
!413 = !{!414, !420}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !412, file: !51, line: 918, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !416, line: 58, size: 64, elements: !417)
!416 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !415, file: !416, line: 59, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !412, file: !51, line: 919, baseType: !421, size: 128, align: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !240, line: 216, size: 128, align: 64, elements: !422)
!422 = !{!423, !425}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !240, line: 217, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !421, file: !240, line: 218, baseType: !426, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !424}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !409, file: !51, line: 921, baseType: !430, size: 128, offset: 128)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !431, line: 8, size: 128, elements: !432)
!431 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!432 = !{!433, !437}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !430, file: !431, line: 9, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !436, line: 18, flags: DIFlagFwdDecl)
!436 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!437 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !430, file: !431, line: 10, baseType: !438, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !436, line: 89, size: 1536, elements: !440)
!440 = !{!441, !442, !452, !460, !461, !476, !3153, !3155, !3167, !3168, !3169, !3170, !3171, !3177, !3178, !3179}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !439, file: !436, line: 91, baseType: !7, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !439, file: !436, line: 92, baseType: !443, size: 32, offset: 32)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !444, line: 277, baseType: !445)
!444 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !444, line: 277, size: 32, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !445, file: !444, line: 277, baseType: !448, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !444, line: 70, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !444, line: 65, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !449, file: !444, line: 66, baseType: !7, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !439, file: !436, line: 93, baseType: !453, size: 128, offset: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !454, line: 38, size: 128, elements: !455)
!454 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!455 = !{!456, !458}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !453, file: !454, line: 39, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !453, file: !454, line: 39, baseType: !459, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !439, file: !436, line: 94, baseType: !438, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !439, file: !436, line: 95, baseType: !462, size: 128, offset: 256)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !436, line: 47, size: 128, elements: !463)
!463 = !{!464, !473}
!464 = !DIDerivedType(tag: DW_TAG_member, scope: !462, file: !436, line: 48, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !462, file: !436, line: 48, size: 64, elements: !466)
!466 = !{!467, !472}
!467 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !436, line: 49, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !465, file: !436, line: 49, size: 64, elements: !469)
!469 = !{!470, !471}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !468, file: !436, line: 50, baseType: !210, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !468, file: !436, line: 50, baseType: !210, size: 32, offset: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !465, file: !436, line: 52, baseType: !220, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !462, file: !436, line: 54, baseType: !474, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !439, file: !436, line: 96, baseType: !477, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !51, line: 610, size: 4224, elements: !479)
!479 = !{!480, !481, !482, !490, !497, !498, !646, !2864, !2865, !2866, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !3129, !3137, !3138, !3139, !3149, !3150, !3151, !3152}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !478, file: !51, line: 611, baseType: !373, size: 16)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !478, file: !51, line: 612, baseType: !271, size: 16, offset: 16)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !478, file: !51, line: 613, baseType: !483, size: 32, offset: 32)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !484, line: 23, baseType: !485)
!484 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !484, line: 21, size: 32, elements: !486)
!486 = !{!487}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !485, file: !484, line: 22, baseType: !488, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !240, line: 32, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !365, line: 49, baseType: !7)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !478, file: !51, line: 614, baseType: !491, size: 32, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !484, line: 28, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !484, line: 26, size: 32, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !492, file: !484, line: 27, baseType: !495, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !240, line: 33, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !365, line: 50, baseType: !7)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !478, file: !51, line: 615, baseType: !7, size: 32, offset: 96)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !478, file: !51, line: 622, baseType: !499, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !51, line: 1864, size: 1536, align: 512, elements: !502)
!502 = !{!503, !507, !520, !524, !530, !534, !540, !544, !548, !552, !556, !557, !563, !567, !593, !622, !626, !632, !637, !641, !642}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !501, file: !51, line: 1865, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!438, !477, !438, !7}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !501, file: !51, line: 1866, baseType: !508, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!281, !438, !477, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !513, line: 10, size: 128, elements: !514)
!513 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!514 = !{!515, !519}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !512, file: !513, line: 11, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !237}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !512, file: !513, line: 12, baseType: !237, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !501, file: !51, line: 1867, baseType: !521, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!241, !477, !241}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !501, file: !51, line: 1868, baseType: !525, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!528, !477, !241}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !51, line: 581, flags: DIFlagFwdDecl)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !501, file: !51, line: 1870, baseType: !531, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!241, !438, !334, !241}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !501, file: !51, line: 1872, baseType: !535, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!241, !477, !438, !373, !538}
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !240, line: 30, baseType: !539)
!539 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !501, file: !51, line: 1873, baseType: !541, size: 64, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!241, !438, !477, !438}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !501, file: !51, line: 1874, baseType: !545, size: 64, offset: 448)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!241, !477, !438}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !501, file: !51, line: 1875, baseType: !549, size: 64, offset: 512)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!241, !477, !438, !281}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !501, file: !51, line: 1876, baseType: !553, size: 64, offset: 576)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!241, !477, !438, !373}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !501, file: !51, line: 1877, baseType: !545, size: 64, offset: 640)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !501, file: !51, line: 1878, baseType: !558, size: 64, offset: 704)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!241, !477, !438, !373, !561}
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !240, line: 16, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !240, line: 13, baseType: !210)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !501, file: !51, line: 1879, baseType: !564, size: 64, offset: 768)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!241, !477, !438, !477, !438, !7}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !501, file: !51, line: 1881, baseType: !568, size: 64, offset: 832)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!241, !438, !571}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !51, line: 219, size: 640, elements: !573)
!573 = !{!574, !575, !576, !577, !578, !582, !590, !591, !592}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !572, file: !51, line: 220, baseType: !7, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !572, file: !51, line: 221, baseType: !373, size: 16, offset: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !572, file: !51, line: 222, baseType: !483, size: 32, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !572, file: !51, line: 223, baseType: !491, size: 32, offset: 96)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !572, file: !51, line: 224, baseType: !579, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !240, line: 46, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !365, line: 88, baseType: !581)
!581 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !572, file: !51, line: 225, baseType: !583, size: 128, offset: 192)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !584, line: 13, size: 128, elements: !585)
!584 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!585 = !{!586, !589}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !583, file: !584, line: 14, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !584, line: 8, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !213, line: 30, baseType: !581)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !583, file: !584, line: 15, baseType: !367, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !572, file: !51, line: 226, baseType: !583, size: 128, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !572, file: !51, line: 227, baseType: !583, size: 128, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !572, file: !51, line: 234, baseType: !408, size: 64, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !501, file: !51, line: 1882, baseType: !594, size: 64, offset: 896)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!241, !597, !599, !210, !7}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !601, line: 22, size: 1152, elements: !602)
!601 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!602 = !{!603, !604, !605, !606, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !600, file: !601, line: 23, baseType: !210, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !600, file: !601, line: 24, baseType: !373, size: 16, offset: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !600, file: !601, line: 25, baseType: !7, size: 32, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !600, file: !601, line: 26, baseType: !607, size: 32, offset: 96)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !240, line: 104, baseType: !210)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !600, file: !601, line: 27, baseType: !220, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !600, file: !601, line: 28, baseType: !220, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !600, file: !601, line: 37, baseType: !220, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !600, file: !601, line: 38, baseType: !561, size: 32, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !600, file: !601, line: 39, baseType: !561, size: 32, offset: 352)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !600, file: !601, line: 40, baseType: !483, size: 32, offset: 384)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !600, file: !601, line: 41, baseType: !491, size: 32, offset: 416)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !600, file: !601, line: 42, baseType: !579, size: 64, offset: 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !600, file: !601, line: 43, baseType: !583, size: 128, offset: 512)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !600, file: !601, line: 44, baseType: !583, size: 128, offset: 640)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !600, file: !601, line: 45, baseType: !583, size: 128, offset: 768)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !600, file: !601, line: 46, baseType: !583, size: 128, offset: 896)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !600, file: !601, line: 47, baseType: !220, size: 64, offset: 1024)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !600, file: !601, line: 48, baseType: !220, size: 64, offset: 1088)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !501, file: !51, line: 1883, baseType: !623, size: 64, offset: 960)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!363, !438, !334, !378}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !501, file: !51, line: 1884, baseType: !627, size: 64, offset: 1024)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!241, !477, !630, !220, !220}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !51, line: 50, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !501, file: !51, line: 1886, baseType: !633, size: 64, offset: 1088)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!241, !477, !636, !241}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !501, file: !51, line: 1887, baseType: !638, size: 64, offset: 1152)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!241, !477, !438, !408, !7, !373}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !501, file: !51, line: 1890, baseType: !553, size: 64, offset: 1216)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !501, file: !51, line: 1891, baseType: !643, size: 64, offset: 1280)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!241, !477, !528, !241}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !478, file: !51, line: 623, baseType: !647, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !51, line: 1416, size: 9472, elements: !649)
!649 = !{!650, !651, !652, !653, !654, !655, !704, !2472, !2554, !2637, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2653, !2657, !2658, !2661, !2662, !2665, !2666, !2667, !2708, !2735, !2736, !2737, !2738, !2739, !2740, !2743, !2745, !2751, !2752, !2754, !2755, !2756, !2815, !2816, !2831, !2832, !2833, !2834, !2835, !2838, !2839, !2840, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !648, file: !51, line: 1417, baseType: !249, size: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !648, file: !51, line: 1418, baseType: !561, size: 32, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !648, file: !51, line: 1419, baseType: !229, size: 8, offset: 160)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !648, file: !51, line: 1420, baseType: !238, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !648, file: !51, line: 1421, baseType: !579, size: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !648, file: !51, line: 1422, baseType: !656, size: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !51, line: 2228, size: 576, elements: !658)
!658 = !{!659, !660, !661, !667, !671, !675, !679, !683, !684, !694, !697, !698, !699, !701, !702, !703}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !657, file: !51, line: 2229, baseType: !281, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !657, file: !51, line: 2230, baseType: !241, size: 32, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !657, file: !51, line: 2238, baseType: !662, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!241, !665}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !51, line: 69, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !657, file: !51, line: 2239, baseType: !668, size: 64, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !51, line: 70, flags: DIFlagFwdDecl)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !657, file: !51, line: 2240, baseType: !672, size: 64, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!438, !656, !241, !281, !237}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !657, file: !51, line: 2242, baseType: !676, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !647}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !657, file: !51, line: 2243, baseType: !680, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !682, line: 76, flags: DIFlagFwdDecl)
!682 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!683 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !657, file: !51, line: 2244, baseType: !656, size: 64, offset: 448)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !657, file: !51, line: 2245, baseType: !685, size: 64, offset: 512)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !240, line: 182, size: 64, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !685, file: !240, line: 183, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !240, line: 186, size: 128, elements: !690)
!690 = !{!691, !692}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !689, file: !240, line: 187, baseType: !688, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !689, file: !240, line: 187, baseType: !693, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !657, file: !51, line: 2247, baseType: !695, offset: 576)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !696, line: 187, elements: !307)
!696 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!697 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !657, file: !51, line: 2248, baseType: !695, offset: 576)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !657, file: !51, line: 2249, baseType: !695, offset: 576)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !657, file: !51, line: 2250, baseType: !700, offset: 576)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !695, elements: !232)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !657, file: !51, line: 2252, baseType: !695, offset: 576)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !657, file: !51, line: 2253, baseType: !695, offset: 576)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !657, file: !51, line: 2254, baseType: !695, offset: 576)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !648, file: !51, line: 1423, baseType: !705, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !51, line: 1935, size: 1472, elements: !708)
!708 = !{!709, !713, !717, !718, !722, !728, !732, !733, !734, !738, !742, !743, !744, !745, !751, !756, !757, !764, !765, !766, !767, !2456, !2471}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !707, file: !51, line: 1936, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!477, !647}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !707, file: !51, line: 1937, baseType: !714, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !477}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !707, file: !51, line: 1938, baseType: !714, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !707, file: !51, line: 1940, baseType: !719, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !477, !241}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !707, file: !51, line: 1941, baseType: !723, size: 64, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!241, !477, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !21, line: 40, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !707, file: !51, line: 1942, baseType: !729, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!241, !477}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !707, file: !51, line: 1943, baseType: !714, size: 64, offset: 384)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !707, file: !51, line: 1944, baseType: !676, size: 64, offset: 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !707, file: !51, line: 1945, baseType: !735, size: 64, offset: 512)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!241, !647, !241}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !707, file: !51, line: 1946, baseType: !739, size: 64, offset: 576)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!241, !647}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !707, file: !51, line: 1947, baseType: !739, size: 64, offset: 640)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !707, file: !51, line: 1948, baseType: !739, size: 64, offset: 704)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !707, file: !51, line: 1949, baseType: !739, size: 64, offset: 768)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !707, file: !51, line: 1950, baseType: !746, size: 64, offset: 832)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!241, !438, !749}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !51, line: 57, flags: DIFlagFwdDecl)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !707, file: !51, line: 1951, baseType: !752, size: 64, offset: 896)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!241, !647, !755, !334}
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !707, file: !51, line: 1952, baseType: !676, size: 64, offset: 960)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !707, file: !51, line: 1954, baseType: !758, size: 64, offset: 1024)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!241, !761, !438}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !763, line: 539, flags: DIFlagFwdDecl)
!763 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!764 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !707, file: !51, line: 1955, baseType: !758, size: 64, offset: 1088)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !707, file: !51, line: 1956, baseType: !758, size: 64, offset: 1152)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !707, file: !51, line: 1957, baseType: !758, size: 64, offset: 1216)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !707, file: !51, line: 1963, baseType: !768, size: 64, offset: 1280)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!241, !647, !771, !239}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !773, line: 68, size: 512, align: 128, elements: !774)
!773 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!774 = !{!775, !776, !2448, !2455}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !772, file: !773, line: 69, baseType: !238, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !773, line: 77, baseType: !777, size: 320, offset: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !772, file: !773, line: 77, size: 320, elements: !778)
!778 = !{!779, !964, !969, !997, !1005, !1011, !2379, !2447}
!779 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !773, line: 78, baseType: !780, size: 320)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !773, line: 78, size: 320, elements: !781)
!781 = !{!782, !783, !962, !963}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !780, file: !773, line: 84, baseType: !249, size: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !780, file: !773, line: 86, baseType: !784, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !51, line: 451, size: 1216, align: 64, elements: !786)
!786 = !{!787, !788, !795, !796, !801, !816, !832, !833, !834, !835, !955, !956, !959, !960, !961}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !785, file: !51, line: 452, baseType: !477, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !785, file: !51, line: 453, baseType: !789, size: 128, offset: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !790, line: 292, size: 128, elements: !791)
!790 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!791 = !{!792, !793, !794}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !789, file: !790, line: 293, baseType: !293)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !789, file: !790, line: 295, baseType: !239, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !789, file: !790, line: 296, baseType: !237, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !785, file: !51, line: 454, baseType: !239, size: 32, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !785, file: !51, line: 455, baseType: !797, size: 32, offset: 224)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !240, line: 168, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !240, line: 166, size: 32, elements: !799)
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !798, file: !240, line: 167, baseType: !241, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !785, file: !51, line: 460, baseType: !802, size: 128, offset: 256)
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
!812 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !810, file: !803, line: 25, baseType: !238, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !810, file: !803, line: 26, baseType: !809, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !810, file: !803, line: 27, baseType: !809, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !802, file: !803, line: 127, baseType: !809, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !785, file: !51, line: 461, baseType: !817, size: 256, offset: 384)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !818, line: 35, size: 256, elements: !819)
!818 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!819 = !{!820, !828, !829, !831}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !817, file: !818, line: 36, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !822, line: 13, baseType: !823)
!822 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !240, line: 175, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !240, line: 173, size: 64, elements: !825)
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !824, file: !240, line: 174, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !211, line: 22, baseType: !588)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !817, file: !818, line: 42, baseType: !821, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !817, file: !818, line: 46, baseType: !830, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !294, line: 29, baseType: !301)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !817, file: !818, line: 47, baseType: !249, size: 128, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !785, file: !51, line: 462, baseType: !238, size: 64, offset: 640)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !785, file: !51, line: 463, baseType: !238, size: 64, offset: 704)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !785, file: !51, line: 464, baseType: !238, size: 64, offset: 768)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !785, file: !51, line: 465, baseType: !836, size: 64, offset: 832)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !838)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !51, line: 367, size: 1408, elements: !839)
!839 = !{!840, !844, !848, !852, !856, !860, !866, !872, !876, !881, !885, !889, !893, !919, !923, !929, !930, !931, !935, !940, !944, !951}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !838, file: !51, line: 368, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!241, !771, !726}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !838, file: !51, line: 369, baseType: !845, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!241, !408, !771}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !838, file: !51, line: 372, baseType: !849, size: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!241, !784, !726}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !838, file: !51, line: 375, baseType: !853, size: 64, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!241, !771}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !838, file: !51, line: 381, baseType: !857, size: 64, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!241, !408, !784, !252, !7}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !838, file: !51, line: 383, baseType: !861, size: 64, offset: 320)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !864}
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !51, line: 290, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !838, file: !51, line: 385, baseType: !867, size: 64, offset: 384)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!241, !408, !784, !579, !7, !7, !870, !871}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !838, file: !51, line: 388, baseType: !873, size: 64, offset: 448)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!241, !408, !784, !579, !7, !7, !771, !237}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !838, file: !51, line: 393, baseType: !877, size: 64, offset: 512)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!880, !784, !880}
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !240, line: 125, baseType: !220)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !838, file: !51, line: 394, baseType: !882, size: 64, offset: 576)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !771, !7, !7}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !838, file: !51, line: 395, baseType: !886, size: 64, offset: 640)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!241, !771, !239}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !838, file: !51, line: 396, baseType: !890, size: 64, offset: 704)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !771}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !838, file: !51, line: 397, baseType: !894, size: 64, offset: 768)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!363, !897, !917}
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !51, line: 320, size: 384, elements: !899)
!899 = !{!900, !901, !902, !906, !907, !908, !909, !910}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !898, file: !51, line: 321, baseType: !408, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !898, file: !51, line: 326, baseType: !579, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !898, file: !51, line: 327, baseType: !903, size: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !897, !367, !367}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !898, file: !51, line: 328, baseType: !237, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !898, file: !51, line: 329, baseType: !241, size: 32, offset: 256)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !898, file: !51, line: 330, baseType: !269, size: 16, offset: 288)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !898, file: !51, line: 331, baseType: !269, size: 16, offset: 304)
!910 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !51, line: 332, baseType: !911, size: 64, offset: 320)
!911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !898, file: !51, line: 332, size: 64, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !911, file: !51, line: 333, baseType: !7, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !911, file: !51, line: 334, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !51, line: 334, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !51, line: 64, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !838, file: !51, line: 402, baseType: !920, size: 64, offset: 832)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!241, !784, !771, !771, !13}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !838, file: !51, line: 404, baseType: !924, size: 64, offset: 896)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!538, !771, !927}
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !928, line: 305, baseType: !7)
!928 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!929 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !838, file: !51, line: 405, baseType: !890, size: 64, offset: 960)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !838, file: !51, line: 406, baseType: !853, size: 64, offset: 1024)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !838, file: !51, line: 407, baseType: !932, size: 64, offset: 1088)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!241, !771, !238, !238}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !838, file: !51, line: 409, baseType: !936, size: 64, offset: 1152)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{null, !771, !939, !939}
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !838, file: !51, line: 410, baseType: !941, size: 64, offset: 1216)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!241, !784, !771}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !838, file: !51, line: 413, baseType: !945, size: 64, offset: 1280)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!241, !948, !408, !950}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !51, line: 61, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !838, file: !51, line: 415, baseType: !952, size: 64, offset: 1344)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{null, !408}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !785, file: !51, line: 466, baseType: !238, size: 64, offset: 896)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !785, file: !51, line: 467, baseType: !957, size: 32, offset: 960)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !958, line: 8, baseType: !210)
!958 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!959 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !785, file: !51, line: 468, baseType: !293, offset: 992)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !785, file: !51, line: 469, baseType: !249, size: 128, offset: 1024)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !785, file: !51, line: 470, baseType: !237, size: 64, offset: 1152)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !780, file: !773, line: 87, baseType: !238, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !780, file: !773, line: 94, baseType: !238, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !773, line: 96, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !773, line: 96, size: 64, elements: !966)
!966 = !{!967}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !965, file: !773, line: 101, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !240, line: 143, baseType: !220)
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !773, line: 103, baseType: !970, size: 320)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !773, line: 103, size: 320, elements: !971)
!971 = !{!972, !982, !985, !986}
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !773, line: 104, baseType: !973, size: 128)
!973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !970, file: !773, line: 104, size: 128, elements: !974)
!974 = !{!975, !976}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !973, file: !773, line: 105, baseType: !249, size: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !973, file: !773, line: 106, baseType: !977, size: 128)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !973, file: !773, line: 106, size: 128, elements: !978)
!978 = !{!979, !980, !981}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !977, file: !773, line: 107, baseType: !771, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !977, file: !773, line: 109, baseType: !241, size: 32, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !977, file: !773, line: 110, baseType: !241, size: 32, offset: 96)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !970, file: !773, line: 117, baseType: !983, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !773, line: 117, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !970, file: !773, line: 119, baseType: !237, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !773, line: 120, baseType: !987, size: 64, offset: 256)
!987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !970, file: !773, line: 120, size: 64, elements: !988)
!988 = !{!989, !990, !991}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !987, file: !773, line: 121, baseType: !237, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !987, file: !773, line: 122, baseType: !238, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !987, file: !773, line: 123, baseType: !992, size: 32)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !987, file: !773, line: 123, size: 32, elements: !993)
!993 = !{!994, !995, !996}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !992, file: !773, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !992, file: !773, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !992, file: !773, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !773, line: 130, baseType: !998, size: 192)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !773, line: 130, size: 192, elements: !999)
!999 = !{!1000, !1001, !1002, !1003, !1004}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !998, file: !773, line: 131, baseType: !238, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !998, file: !773, line: 134, baseType: !229, size: 8, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !998, file: !773, line: 135, baseType: !229, size: 8, offset: 72)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !998, file: !773, line: 136, baseType: !797, size: 32, offset: 96)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !998, file: !773, line: 137, baseType: !7, size: 32, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !773, line: 139, baseType: !1006, size: 256)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !773, line: 139, size: 256, elements: !1007)
!1007 = !{!1008, !1009, !1010}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1006, file: !773, line: 140, baseType: !238, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1006, file: !773, line: 141, baseType: !797, size: 32, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1006, file: !773, line: 143, baseType: !249, size: 128, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !773, line: 145, baseType: !1012, size: 256)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !773, line: 145, size: 256, elements: !1013)
!1013 = !{!1014, !1015, !1017, !1018, !2378}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1012, file: !773, line: 146, baseType: !238, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1012, file: !773, line: 147, baseType: !1016, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !763, line: 509, baseType: !771)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1012, file: !773, line: 148, baseType: !238, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !1012, file: !773, line: 149, baseType: !1019, size: 64, offset: 192)
!1019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1012, file: !773, line: 149, size: 64, elements: !1020)
!1020 = !{!1021, !2377}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1019, file: !773, line: 150, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !773, line: 388, size: 7296, elements: !1024)
!1024 = !{!1025, !2373}
!1025 = !DIDerivedType(tag: DW_TAG_member, scope: !1023, file: !773, line: 389, baseType: !1026, size: 7296)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1023, file: !773, line: 389, size: 7296, elements: !1027)
!1027 = !{!1028, !1146, !1147, !1148, !1152, !1153, !1154, !1155, !1156, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1197, !1205, !1208, !1254, !1255, !2357, !2358, !2361, !2362, !2363, !2366, !2367, !2368, !2371, !2372}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1026, file: !773, line: 390, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !773, line: 305, size: 1472, elements: !1031)
!1031 = !{!1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1046, !1047, !1052, !1053, !1056, !1140, !1141, !1142, !1143, !1144}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1030, file: !773, line: 308, baseType: !238, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1030, file: !773, line: 309, baseType: !238, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1030, file: !773, line: 313, baseType: !1029, size: 64, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1030, file: !773, line: 313, baseType: !1029, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1030, file: !773, line: 315, baseType: !810, size: 192, align: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1030, file: !773, line: 323, baseType: !238, size: 64, offset: 448)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1030, file: !773, line: 327, baseType: !1022, size: 64, offset: 512)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1030, file: !773, line: 333, baseType: !1040, size: 64, offset: 576)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !763, line: 284, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !763, line: 284, size: 64, elements: !1042)
!1042 = !{!1043}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1041, file: !763, line: 284, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1045, line: 19, baseType: !238)
!1045 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1030, file: !773, line: 334, baseType: !238, size: 64, offset: 640)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1030, file: !773, line: 343, baseType: !1048, size: 256, offset: 704)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1030, file: !773, line: 340, size: 256, elements: !1049)
!1049 = !{!1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1048, file: !773, line: 341, baseType: !810, size: 192, align: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1048, file: !773, line: 342, baseType: !238, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1030, file: !773, line: 351, baseType: !249, size: 128, offset: 960)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1030, file: !773, line: 353, baseType: !1054, size: 64, offset: 1088)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !773, line: 353, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1030, file: !773, line: 356, baseType: !1057, size: 64, offset: 1152)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !21, line: 557, size: 832, elements: !1060)
!1060 = !{!1061, !1065, !1066, !1070, !1074, !1114, !1118, !1122, !1126, !1127, !1128, !1132, !1136}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1059, file: !21, line: 558, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !1029}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1059, file: !21, line: 559, baseType: !1062, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1059, file: !21, line: 560, baseType: !1067, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!241, !1029, !238}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1059, file: !21, line: 561, baseType: !1071, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!241, !1029}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1059, file: !21, line: 562, baseType: !1075, size: 64, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!1078, !1079}
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !773, line: 682, baseType: !7)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !21, line: 508, size: 768, elements: !1081)
!1081 = !{!1082, !1083, !1084, !1085, !1086, !1087, !1094, !1101, !1107, !1108, !1109, !1111, !1113}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1080, file: !21, line: 509, baseType: !1029, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1080, file: !21, line: 510, baseType: !7, size: 32, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1080, file: !21, line: 511, baseType: !239, size: 32, offset: 96)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1080, file: !21, line: 512, baseType: !238, size: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1080, file: !21, line: 513, baseType: !238, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1080, file: !21, line: 514, baseType: !1088, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !763, line: 385, baseType: !1090)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !763, line: 385, size: 64, elements: !1091)
!1091 = !{!1092}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1090, file: !763, line: 385, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1045, line: 15, baseType: !238)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1080, file: !21, line: 516, baseType: !1095, size: 64, offset: 320)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !763, line: 359, baseType: !1097)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !763, line: 359, size: 64, elements: !1098)
!1098 = !{!1099}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1097, file: !763, line: 359, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1045, line: 16, baseType: !238)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1080, file: !21, line: 519, baseType: !1102, size: 64, offset: 384)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1045, line: 21, baseType: !1103)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1045, line: 21, size: 64, elements: !1104)
!1104 = !{!1105}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1103, file: !1045, line: 21, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1045, line: 14, baseType: !238)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1080, file: !21, line: 521, baseType: !771, size: 64, offset: 448)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1080, file: !21, line: 522, baseType: !771, size: 64, offset: 512)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1080, file: !21, line: 528, baseType: !1110, size: 64, offset: 576)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1080, file: !21, line: 532, baseType: !1112, size: 64, offset: 640)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1080, file: !21, line: 536, baseType: !1016, size: 64, offset: 704)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1059, file: !21, line: 563, baseType: !1115, size: 64, offset: 320)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!1078, !1079, !20}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1059, file: !21, line: 565, baseType: !1119, size: 64, offset: 384)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null, !1079, !238, !238}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1059, file: !21, line: 567, baseType: !1123, size: 64, offset: 448)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!238, !1029}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1059, file: !21, line: 571, baseType: !1075, size: 64, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1059, file: !21, line: 574, baseType: !1075, size: 64, offset: 576)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1059, file: !21, line: 579, baseType: !1129, size: 64, offset: 640)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!241, !1029, !238, !237, !241, !241}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1059, file: !21, line: 585, baseType: !1133, size: 64, offset: 704)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!281, !1029}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1059, file: !21, line: 615, baseType: !1137, size: 64, offset: 768)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!771, !1029, !238}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1030, file: !773, line: 359, baseType: !238, size: 64, offset: 1216)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1030, file: !773, line: 361, baseType: !408, size: 64, offset: 1280)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1030, file: !773, line: 362, baseType: !237, size: 64, offset: 1344)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1030, file: !773, line: 365, baseType: !821, size: 64, offset: 1408)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1030, file: !773, line: 373, baseType: !1145, offset: 1472)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !773, line: 296, elements: !307)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1026, file: !773, line: 391, baseType: !806, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1026, file: !773, line: 392, baseType: !220, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1026, file: !773, line: 394, baseType: !1149, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!238, !408, !238, !238, !238, !238}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1026, file: !773, line: 398, baseType: !238, size: 64, offset: 256)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1026, file: !773, line: 399, baseType: !238, size: 64, offset: 320)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1026, file: !773, line: 405, baseType: !238, size: 64, offset: 384)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1026, file: !773, line: 406, baseType: !238, size: 64, offset: 448)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1026, file: !773, line: 407, baseType: !1157, size: 64, offset: 512)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !763, line: 286, baseType: !1159)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !763, line: 286, size: 64, elements: !1160)
!1160 = !{!1161}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1159, file: !763, line: 286, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1045, line: 18, baseType: !238)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1026, file: !773, line: 416, baseType: !797, size: 32, offset: 576)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1026, file: !773, line: 428, baseType: !797, size: 32, offset: 608)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1026, file: !773, line: 437, baseType: !797, size: 32, offset: 640)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1026, file: !773, line: 447, baseType: !797, size: 32, offset: 672)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1026, file: !773, line: 450, baseType: !821, size: 64, offset: 704)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1026, file: !773, line: 452, baseType: !241, size: 32, offset: 768)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1026, file: !773, line: 454, baseType: !293, offset: 800)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1026, file: !773, line: 457, baseType: !817, size: 256, offset: 832)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1026, file: !773, line: 459, baseType: !249, size: 128, offset: 1088)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1026, file: !773, line: 466, baseType: !238, size: 64, offset: 1216)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1026, file: !773, line: 467, baseType: !238, size: 64, offset: 1280)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1026, file: !773, line: 469, baseType: !238, size: 64, offset: 1344)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1026, file: !773, line: 470, baseType: !238, size: 64, offset: 1408)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1026, file: !773, line: 471, baseType: !823, size: 64, offset: 1472)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1026, file: !773, line: 472, baseType: !238, size: 64, offset: 1536)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1026, file: !773, line: 473, baseType: !238, size: 64, offset: 1600)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1026, file: !773, line: 474, baseType: !238, size: 64, offset: 1664)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1026, file: !773, line: 475, baseType: !238, size: 64, offset: 1728)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1026, file: !773, line: 477, baseType: !293, offset: 1792)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1026, file: !773, line: 478, baseType: !238, size: 64, offset: 1792)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1026, file: !773, line: 478, baseType: !238, size: 64, offset: 1856)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1026, file: !773, line: 478, baseType: !238, size: 64, offset: 1920)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1026, file: !773, line: 478, baseType: !238, size: 64, offset: 1984)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1026, file: !773, line: 479, baseType: !238, size: 64, offset: 2048)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1026, file: !773, line: 479, baseType: !238, size: 64, offset: 2112)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1026, file: !773, line: 479, baseType: !238, size: 64, offset: 2176)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1026, file: !773, line: 480, baseType: !238, size: 64, offset: 2240)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1026, file: !773, line: 480, baseType: !238, size: 64, offset: 2304)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1026, file: !773, line: 480, baseType: !238, size: 64, offset: 2368)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1026, file: !773, line: 480, baseType: !238, size: 64, offset: 2432)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1026, file: !773, line: 482, baseType: !1194, size: 2816, offset: 2496)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 2816, elements: !1195)
!1195 = !{!1196}
!1196 = !DISubrange(count: 44)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1026, file: !773, line: 488, baseType: !1198, size: 256, offset: 5312)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1199, line: 60, size: 256, elements: !1200)
!1199 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1200 = !{!1201}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1198, file: !1199, line: 61, baseType: !1202, size: 256)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !821, size: 256, elements: !1203)
!1203 = !{!1204}
!1204 = !DISubrange(count: 4)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1026, file: !773, line: 490, baseType: !1206, size: 64, offset: 5568)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !773, line: 490, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1026, file: !773, line: 493, baseType: !1209, size: 896, offset: 5632)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1210, line: 53, baseType: !1211)
!1210 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1210, line: 13, size: 896, elements: !1212)
!1212 = !{!1213, !1214, !1215, !1216, !1219, !1220, !1227, !1228, !1248, !1249, !1250}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1211, file: !1210, line: 18, baseType: !220, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1211, file: !1210, line: 28, baseType: !823, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1211, file: !1210, line: 31, baseType: !817, size: 256, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1211, file: !1210, line: 32, baseType: !1217, size: 64, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1210, line: 32, flags: DIFlagFwdDecl)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1211, file: !1210, line: 37, baseType: !271, size: 16, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1211, file: !1210, line: 40, baseType: !1221, size: 192, offset: 512)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1222, line: 53, size: 192, elements: !1223)
!1222 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1223 = !{!1224, !1225, !1226}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1221, file: !1222, line: 54, baseType: !821, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1221, file: !1222, line: 55, baseType: !293, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1221, file: !1222, line: 59, baseType: !249, size: 128, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1211, file: !1210, line: 41, baseType: !237, size: 64, offset: 704)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1211, file: !1210, line: 42, baseType: !1229, size: 64, offset: 768)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1231)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1232, line: 13, size: 896, elements: !1233)
!1232 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1231, file: !1232, line: 14, baseType: !237, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1231, file: !1232, line: 15, baseType: !238, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1231, file: !1232, line: 17, baseType: !238, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1231, file: !1232, line: 17, baseType: !238, size: 64, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1231, file: !1232, line: 19, baseType: !367, size: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1231, file: !1232, line: 21, baseType: !367, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1231, file: !1232, line: 22, baseType: !367, size: 64, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1231, file: !1232, line: 23, baseType: !367, size: 64, offset: 448)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1231, file: !1232, line: 24, baseType: !367, size: 64, offset: 512)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1231, file: !1232, line: 25, baseType: !367, size: 64, offset: 576)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1231, file: !1232, line: 26, baseType: !367, size: 64, offset: 640)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1231, file: !1232, line: 27, baseType: !367, size: 64, offset: 704)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1231, file: !1232, line: 28, baseType: !367, size: 64, offset: 768)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1231, file: !1232, line: 29, baseType: !367, size: 64, offset: 832)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1211, file: !1210, line: 44, baseType: !797, size: 32, offset: 832)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1211, file: !1210, line: 50, baseType: !269, size: 16, offset: 864)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1211, file: !1210, line: 51, baseType: !1251, size: 16, offset: 880)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !211, line: 18, baseType: !1252)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !213, line: 23, baseType: !1253)
!1253 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1026, file: !773, line: 495, baseType: !238, size: 64, offset: 6528)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1026, file: !773, line: 497, baseType: !1256, size: 64, offset: 6592)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !773, line: 381, size: 384, elements: !1258)
!1258 = !{!1259, !1260, !2356}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1257, file: !773, line: 382, baseType: !797, size: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1257, file: !773, line: 383, baseType: !1261, size: 128, offset: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !773, line: 376, size: 128, elements: !1262)
!1262 = !{!1263, !2354}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1261, file: !773, line: 377, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1266, line: 640, size: 48640, elements: !1267)
!1266 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1267 = !{!1268, !1274, !1276, !1277, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1294, !1312, !1323, !1406, !1407, !1408, !1419, !1420, !1422, !1423, !1424, !1425, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1504, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1542, !1544, !1545, !1546, !1558, !1559, !1560, !1561, !1562, !1563, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1587, !1592, !1776, !1777, !1778, !1779, !1781, !1784, !1787, !1790, !1793, !1796, !1897, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1943, !1944, !1945, !1946, !1947, !1952, !1953, !1954, !1957, !1958, !1961, !1964, !1967, !1970, !2012, !2015, !2016, !2095, !2096, !2099, !2100, !2103, !2104, !2105, !2109, !2110, !2111, !2124, !2125, !2126, !2136, !2141, !2144, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1265, file: !1266, line: 646, baseType: !1269, size: 128)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1270, line: 56, size: 128, elements: !1271)
!1270 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1271 = !{!1272, !1273}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1269, file: !1270, line: 57, baseType: !238, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1269, file: !1270, line: 58, baseType: !210, size: 32, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1265, file: !1266, line: 649, baseType: !1275, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !367)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1265, file: !1266, line: 657, baseType: !237, size: 64, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1265, file: !1266, line: 658, baseType: !1278, size: 32, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1279, line: 113, baseType: !1280)
!1279 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1279, line: 111, size: 32, elements: !1281)
!1281 = !{!1282}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1280, file: !1279, line: 112, baseType: !797, size: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1265, file: !1266, line: 660, baseType: !7, size: 32, offset: 288)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1265, file: !1266, line: 661, baseType: !7, size: 32, offset: 320)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1265, file: !1266, line: 684, baseType: !241, size: 32, offset: 352)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1265, file: !1266, line: 686, baseType: !241, size: 32, offset: 384)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1265, file: !1266, line: 687, baseType: !241, size: 32, offset: 416)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1265, file: !1266, line: 688, baseType: !241, size: 32, offset: 448)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1265, file: !1266, line: 689, baseType: !7, size: 32, offset: 480)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1265, file: !1266, line: 691, baseType: !1291, size: 64, offset: 512)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1293)
!1293 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1266, line: 691, flags: DIFlagFwdDecl)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1265, file: !1266, line: 692, baseType: !1295, size: 832, offset: 576)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1266, line: 451, size: 832, elements: !1296)
!1296 = !{!1297, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1295, file: !1266, line: 453, baseType: !1298, size: 128)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1266, line: 325, size: 128, elements: !1299)
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1298, file: !1266, line: 326, baseType: !238, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1298, file: !1266, line: 327, baseType: !210, size: 32, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1295, file: !1266, line: 454, baseType: !810, size: 192, align: 64, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1295, file: !1266, line: 455, baseType: !249, size: 128, offset: 320)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1295, file: !1266, line: 456, baseType: !7, size: 32, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1295, file: !1266, line: 458, baseType: !220, size: 64, offset: 512)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1295, file: !1266, line: 459, baseType: !220, size: 64, offset: 576)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1295, file: !1266, line: 460, baseType: !220, size: 64, offset: 640)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1295, file: !1266, line: 461, baseType: !220, size: 64, offset: 704)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1295, file: !1266, line: 463, baseType: !220, size: 64, offset: 768)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1295, file: !1266, line: 465, baseType: !1311, offset: 832)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1266, line: 415, elements: !307)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1265, file: !1266, line: 693, baseType: !1313, size: 384, offset: 1408)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1266, line: 489, size: 384, elements: !1314)
!1314 = !{!1315, !1316, !1317, !1318, !1319, !1320, !1321}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1313, file: !1266, line: 490, baseType: !249, size: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1313, file: !1266, line: 491, baseType: !238, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1313, file: !1266, line: 492, baseType: !238, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1313, file: !1266, line: 493, baseType: !7, size: 32, offset: 256)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1313, file: !1266, line: 494, baseType: !271, size: 16, offset: 288)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1313, file: !1266, line: 495, baseType: !271, size: 16, offset: 304)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1313, file: !1266, line: 497, baseType: !1322, size: 64, offset: 320)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1265, file: !1266, line: 697, baseType: !1324, size: 1792, offset: 1792)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1266, line: 507, size: 1792, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1403, !1404}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1324, file: !1266, line: 508, baseType: !810, size: 192, align: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1324, file: !1266, line: 515, baseType: !220, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1324, file: !1266, line: 516, baseType: !220, size: 64, offset: 256)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1324, file: !1266, line: 517, baseType: !220, size: 64, offset: 320)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1324, file: !1266, line: 518, baseType: !220, size: 64, offset: 384)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1324, file: !1266, line: 519, baseType: !220, size: 64, offset: 448)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1324, file: !1266, line: 526, baseType: !827, size: 64, offset: 512)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1324, file: !1266, line: 527, baseType: !220, size: 64, offset: 576)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1324, file: !1266, line: 528, baseType: !7, size: 32, offset: 640)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1324, file: !1266, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1324, file: !1266, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1324, file: !1266, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1324, file: !1266, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1324, file: !1266, line: 563, baseType: !1340, size: 512, offset: 704)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !27, line: 118, size: 512, elements: !1341)
!1341 = !{!1342, !1350, !1351, !1356, !1399, !1400, !1401, !1402}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1340, file: !27, line: 119, baseType: !1343, size: 256)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1344, line: 9, size: 256, elements: !1345)
!1344 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1345 = !{!1346, !1347}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1343, file: !1344, line: 10, baseType: !810, size: 192, align: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1343, file: !1344, line: 11, baseType: !1348, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1349, line: 29, baseType: !827)
!1349 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1340, file: !27, line: 120, baseType: !1348, size: 64, offset: 256)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1340, file: !27, line: 121, baseType: !1352, size: 64, offset: 320)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!26, !1355}
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1340, file: !27, line: 122, baseType: !1357, size: 64, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !27, line: 159, size: 512, align: 512, elements: !1359)
!1359 = !{!1360, !1380, !1381, !1384, !1389, !1390, !1394, !1398}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1358, file: !27, line: 160, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !27, line: 214, size: 4608, align: 512, elements: !1363)
!1363 = !{!1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1362, file: !27, line: 215, baseType: !830)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1362, file: !27, line: 216, baseType: !7, size: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1362, file: !27, line: 217, baseType: !7, size: 32, offset: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1362, file: !27, line: 218, baseType: !7, size: 32, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1362, file: !27, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1362, file: !27, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1362, file: !27, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1362, file: !27, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1362, file: !27, line: 233, baseType: !1348, size: 64, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1362, file: !27, line: 234, baseType: !1355, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1362, file: !27, line: 235, baseType: !1348, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1362, file: !27, line: 236, baseType: !1355, size: 64, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1362, file: !27, line: 237, baseType: !1377, size: 4096, offset: 512)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1358, size: 4096, elements: !1378)
!1378 = !{!1379}
!1379 = !DISubrange(count: 8)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1358, file: !27, line: 161, baseType: !7, size: 32, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1358, file: !27, line: 162, baseType: !1382, size: 32, offset: 96)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !240, line: 27, baseType: !1383)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !365, line: 96, baseType: !241)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1358, file: !27, line: 163, baseType: !1385, size: 32, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !444, line: 276, baseType: !1386)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !444, line: 276, size: 32, elements: !1387)
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1386, file: !444, line: 276, baseType: !448, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1358, file: !27, line: 164, baseType: !1355, size: 64, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1358, file: !27, line: 165, baseType: !1391, size: 128, offset: 256)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1344, line: 14, size: 128, elements: !1392)
!1392 = !{!1393}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1391, file: !1344, line: 15, baseType: !802, size: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1358, file: !27, line: 166, baseType: !1395, size: 64, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!1348}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1358, file: !27, line: 167, baseType: !1348, size: 64, offset: 448)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1340, file: !27, line: 123, baseType: !227, size: 8, offset: 448)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1340, file: !27, line: 124, baseType: !227, size: 8, offset: 456)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1340, file: !27, line: 125, baseType: !227, size: 8, offset: 464)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1340, file: !27, line: 126, baseType: !227, size: 8, offset: 472)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1324, file: !1266, line: 572, baseType: !1340, size: 512, offset: 1216)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1324, file: !1266, line: 580, baseType: !1405, size: 64, offset: 1728)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1265, file: !1266, line: 721, baseType: !7, size: 32, offset: 3584)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1265, file: !1266, line: 722, baseType: !241, size: 32, offset: 3616)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1265, file: !1266, line: 723, baseType: !1409, size: 64, offset: 3648)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1412, line: 17, baseType: !1413)
!1412 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1412, line: 17, size: 64, elements: !1414)
!1414 = !{!1415}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1413, file: !1412, line: 17, baseType: !1416, size: 64)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 64, elements: !1417)
!1417 = !{!1418}
!1418 = !DISubrange(count: 1)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1265, file: !1266, line: 724, baseType: !1411, size: 64, offset: 3712)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1265, file: !1266, line: 749, baseType: !1421, offset: 3776)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1266, line: 290, elements: !307)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1265, file: !1266, line: 751, baseType: !249, size: 128, offset: 3776)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1265, file: !1266, line: 757, baseType: !1022, size: 64, offset: 3904)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1265, file: !1266, line: 758, baseType: !1022, size: 64, offset: 3968)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1265, file: !1266, line: 761, baseType: !1426, size: 320, offset: 4032)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1199, line: 34, size: 320, elements: !1427)
!1427 = !{!1428, !1429}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1426, file: !1199, line: 35, baseType: !220, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1426, file: !1199, line: 36, baseType: !1430, size: 256, offset: 64)
!1430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1029, size: 256, elements: !1203)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1265, file: !1266, line: 766, baseType: !241, size: 32, offset: 4352)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1265, file: !1266, line: 767, baseType: !241, size: 32, offset: 4384)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1265, file: !1266, line: 768, baseType: !241, size: 32, offset: 4416)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1265, file: !1266, line: 770, baseType: !241, size: 32, offset: 4448)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1265, file: !1266, line: 772, baseType: !238, size: 64, offset: 4480)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1265, file: !1266, line: 775, baseType: !7, size: 32, offset: 4544)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1265, file: !1266, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1265, file: !1266, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1265, file: !1266, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1265, file: !1266, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1265, file: !1266, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1265, file: !1266, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1265, file: !1266, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1265, file: !1266, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1265, file: !1266, line: 831, baseType: !238, size: 64, offset: 4672)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1265, file: !1266, line: 833, baseType: !1447, size: 384, offset: 4736)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !32, line: 25, size: 384, elements: !1448)
!1448 = !{!1449, !1454}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1447, file: !32, line: 26, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!367, !1453}
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, scope: !1447, file: !32, line: 27, baseType: !1455, size: 320, offset: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1447, file: !32, line: 27, size: 320, elements: !1456)
!1456 = !{!1457, !1467, !1494}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1455, file: !32, line: 36, baseType: !1458, size: 320)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1455, file: !32, line: 29, size: 320, elements: !1459)
!1459 = !{!1460, !1462, !1463, !1464, !1465, !1466}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1458, file: !32, line: 30, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1458, file: !32, line: 31, baseType: !210, size: 32, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1458, file: !32, line: 32, baseType: !210, size: 32, offset: 96)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1458, file: !32, line: 33, baseType: !210, size: 32, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1458, file: !32, line: 34, baseType: !220, size: 64, offset: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1458, file: !32, line: 35, baseType: !1461, size: 64, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1455, file: !32, line: 46, baseType: !1468, size: 192)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1455, file: !32, line: 38, size: 192, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1493}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1468, file: !32, line: 39, baseType: !1382, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1468, file: !32, line: 40, baseType: !31, size: 32, offset: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !32, line: 41, baseType: !1473, size: 64, offset: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1468, file: !32, line: 41, size: 64, elements: !1474)
!1474 = !{!1475, !1483}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1473, file: !32, line: 42, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1478, line: 7, size: 128, elements: !1479)
!1478 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1479 = !{!1480, !1482}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1477, file: !1478, line: 8, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !365, line: 93, baseType: !581)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1477, file: !1478, line: 9, baseType: !581, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1473, file: !32, line: 43, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1486, line: 7, size: 64, elements: !1487)
!1486 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1487 = !{!1488, !1492}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1485, file: !1486, line: 8, baseType: !1489, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1486, line: 5, baseType: !1490)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !211, line: 20, baseType: !1491)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !213, line: 26, baseType: !241)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1485, file: !1486, line: 9, baseType: !1490, size: 32, offset: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1468, file: !32, line: 45, baseType: !220, size: 64, offset: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1455, file: !32, line: 54, baseType: !1495, size: 256)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1455, file: !32, line: 48, size: 256, elements: !1496)
!1496 = !{!1497, !1500, !1501, !1502, !1503}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1495, file: !32, line: 49, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !32, line: 14, flags: DIFlagFwdDecl)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1495, file: !32, line: 50, baseType: !241, size: 32, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1495, file: !32, line: 51, baseType: !241, size: 32, offset: 96)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1495, file: !32, line: 52, baseType: !238, size: 64, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1495, file: !32, line: 53, baseType: !238, size: 64, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1265, file: !1266, line: 835, baseType: !1505, size: 32, offset: 5120)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !240, line: 22, baseType: !1506)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !365, line: 28, baseType: !241)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1265, file: !1266, line: 836, baseType: !1505, size: 32, offset: 5152)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1265, file: !1266, line: 840, baseType: !238, size: 64, offset: 5184)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1265, file: !1266, line: 849, baseType: !1264, size: 64, offset: 5248)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1265, file: !1266, line: 852, baseType: !1264, size: 64, offset: 5312)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1265, file: !1266, line: 857, baseType: !249, size: 128, offset: 5376)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1265, file: !1266, line: 858, baseType: !249, size: 128, offset: 5504)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1265, file: !1266, line: 859, baseType: !1264, size: 64, offset: 5632)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1265, file: !1266, line: 867, baseType: !249, size: 128, offset: 5696)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1265, file: !1266, line: 868, baseType: !249, size: 128, offset: 5824)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1265, file: !1266, line: 871, baseType: !1517, size: 64, offset: 5952)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !60, line: 59, size: 768, elements: !1519)
!1519 = !{!1520, !1521, !1522, !1523, !1525, !1526, !1533, !1534}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1518, file: !60, line: 61, baseType: !1278, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1518, file: !60, line: 62, baseType: !7, size: 32, offset: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1518, file: !60, line: 63, baseType: !293, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1518, file: !60, line: 65, baseType: !1524, size: 256, offset: 64)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 256, elements: !1203)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1518, file: !60, line: 66, baseType: !685, size: 64, offset: 320)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1518, file: !60, line: 68, baseType: !1527, size: 128, offset: 384)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1528, line: 40, baseType: !1529)
!1528 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1528, line: 36, size: 128, elements: !1530)
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1529, file: !1528, line: 37, baseType: !293)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1529, file: !1528, line: 38, baseType: !249, size: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1518, file: !60, line: 69, baseType: !421, size: 128, align: 64, offset: 512)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1518, file: !60, line: 70, baseType: !1535, size: 128, offset: 640)
!1535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1536, size: 128, elements: !1417)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !60, line: 54, size: 128, elements: !1537)
!1537 = !{!1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1536, file: !60, line: 55, baseType: !241, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1536, file: !60, line: 56, baseType: !1540, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !60, line: 56, flags: DIFlagFwdDecl)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1265, file: !1266, line: 872, baseType: !1543, size: 512, offset: 6016)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 512, elements: !1203)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1265, file: !1266, line: 873, baseType: !249, size: 128, offset: 6528)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1265, file: !1266, line: 874, baseType: !249, size: 128, offset: 6656)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1265, file: !1266, line: 876, baseType: !1547, size: 64, offset: 6784)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1549, line: 26, size: 192, elements: !1550)
!1549 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1550 = !{!1551, !1552}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1548, file: !1549, line: 27, baseType: !7, size: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1548, file: !1549, line: 28, baseType: !1553, size: 128, offset: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1554, line: 43, size: 128, elements: !1555)
!1554 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1555 = !{!1556, !1557}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1553, file: !1554, line: 44, baseType: !830)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1553, file: !1554, line: 45, baseType: !249, size: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1265, file: !1266, line: 879, baseType: !755, size: 64, offset: 6848)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1265, file: !1266, line: 882, baseType: !755, size: 64, offset: 6912)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1265, file: !1266, line: 884, baseType: !220, size: 64, offset: 6976)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1265, file: !1266, line: 885, baseType: !220, size: 64, offset: 7040)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1265, file: !1266, line: 890, baseType: !220, size: 64, offset: 7104)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1265, file: !1266, line: 891, baseType: !1564, size: 128, offset: 7168)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1266, line: 242, size: 128, elements: !1565)
!1565 = !{!1566, !1567, !1568}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1564, file: !1266, line: 244, baseType: !220, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1564, file: !1266, line: 245, baseType: !220, size: 64, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1564, file: !1266, line: 246, baseType: !830, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1265, file: !1266, line: 900, baseType: !238, size: 64, offset: 7296)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1265, file: !1266, line: 901, baseType: !238, size: 64, offset: 7360)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1265, file: !1266, line: 904, baseType: !220, size: 64, offset: 7424)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1265, file: !1266, line: 907, baseType: !220, size: 64, offset: 7488)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1265, file: !1266, line: 910, baseType: !238, size: 64, offset: 7552)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1265, file: !1266, line: 911, baseType: !238, size: 64, offset: 7616)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1265, file: !1266, line: 914, baseType: !1576, size: 640, offset: 7680)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1577, line: 123, size: 640, elements: !1578)
!1577 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1578 = !{!1579, !1585, !1586}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1576, file: !1577, line: 124, baseType: !1580, size: 576)
!1580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1581, size: 576, elements: !232)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1577, line: 108, size: 192, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1581, file: !1577, line: 109, baseType: !220, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1581, file: !1577, line: 110, baseType: !1391, size: 128, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1576, file: !1577, line: 125, baseType: !7, size: 32, offset: 576)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1576, file: !1577, line: 126, baseType: !7, size: 32, offset: 608)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1265, file: !1266, line: 917, baseType: !1588, size: 192, offset: 8320)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1577, line: 134, size: 192, elements: !1589)
!1589 = !{!1590, !1591}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1588, file: !1577, line: 135, baseType: !421, size: 128, align: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1588, file: !1577, line: 136, baseType: !7, size: 32, offset: 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1265, file: !1266, line: 923, baseType: !1593, size: 64, offset: 8512)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1595)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1596, line: 111, size: 1280, elements: !1597)
!1596 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1617, !1618, !1619, !1620, !1621, !1622, !1729, !1730, !1731, !1732, !1758, !1761, !1771}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1595, file: !1596, line: 112, baseType: !797, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1595, file: !1596, line: 120, baseType: !483, size: 32, offset: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1595, file: !1596, line: 121, baseType: !491, size: 32, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1595, file: !1596, line: 122, baseType: !483, size: 32, offset: 96)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1595, file: !1596, line: 123, baseType: !491, size: 32, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1595, file: !1596, line: 124, baseType: !483, size: 32, offset: 160)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1595, file: !1596, line: 125, baseType: !491, size: 32, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1595, file: !1596, line: 126, baseType: !483, size: 32, offset: 224)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1595, file: !1596, line: 127, baseType: !491, size: 32, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1595, file: !1596, line: 128, baseType: !7, size: 32, offset: 288)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1595, file: !1596, line: 129, baseType: !1609, size: 64, offset: 320)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1610, line: 26, baseType: !1611)
!1610 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1610, line: 24, size: 64, elements: !1612)
!1612 = !{!1613}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1611, file: !1610, line: 25, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 64, elements: !1615)
!1615 = !{!1616}
!1616 = !DISubrange(count: 2)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1595, file: !1596, line: 130, baseType: !1609, size: 64, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1595, file: !1596, line: 131, baseType: !1609, size: 64, offset: 448)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1595, file: !1596, line: 132, baseType: !1609, size: 64, offset: 512)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1595, file: !1596, line: 133, baseType: !1609, size: 64, offset: 576)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1595, file: !1596, line: 135, baseType: !229, size: 8, offset: 640)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1595, file: !1596, line: 137, baseType: !1623, size: 64, offset: 704)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1625, line: 189, size: 1664, elements: !1626)
!1625 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1626 = !{!1627, !1628, !1631, !1636, !1637, !1640, !1641, !1646, !1647, !1648, !1649, !1651, !1652, !1653, !1654, !1655, !1693, !1714}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1624, file: !1625, line: 190, baseType: !1278, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1624, file: !1625, line: 191, baseType: !1629, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1625, line: 28, baseType: !1630)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !240, line: 98, baseType: !1490)
!1631 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !1625, line: 192, baseType: !1632, size: 192, offset: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1624, file: !1625, line: 192, size: 192, elements: !1633)
!1633 = !{!1634, !1635}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1632, file: !1625, line: 193, baseType: !249, size: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1632, file: !1625, line: 194, baseType: !810, size: 192, align: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1624, file: !1625, line: 199, baseType: !817, size: 256, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1624, file: !1625, line: 200, baseType: !1638, size: 64, offset: 512)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1625, line: 200, flags: DIFlagFwdDecl)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1624, file: !1625, line: 201, baseType: !237, size: 64, offset: 576)
!1641 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !1625, line: 202, baseType: !1642, size: 64, offset: 640)
!1642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1624, file: !1625, line: 202, size: 64, elements: !1643)
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1642, file: !1625, line: 203, baseType: !587, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1642, file: !1625, line: 204, baseType: !587, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1624, file: !1625, line: 206, baseType: !587, size: 64, offset: 704)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1624, file: !1625, line: 207, baseType: !483, size: 32, offset: 768)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1624, file: !1625, line: 208, baseType: !491, size: 32, offset: 800)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1624, file: !1625, line: 209, baseType: !1650, size: 32, offset: 832)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1625, line: 31, baseType: !607)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1624, file: !1625, line: 210, baseType: !271, size: 16, offset: 864)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1624, file: !1625, line: 211, baseType: !271, size: 16, offset: 880)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1624, file: !1625, line: 215, baseType: !1253, size: 16, offset: 896)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1624, file: !1625, line: 222, baseType: !238, size: 64, offset: 960)
!1655 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !1625, line: 239, baseType: !1656, size: 320, offset: 1024)
!1656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1624, file: !1625, line: 239, size: 320, elements: !1657)
!1657 = !{!1658, !1685}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1656, file: !1625, line: 240, baseType: !1659, size: 320)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1625, line: 108, size: 320, elements: !1660)
!1660 = !{!1661, !1662, !1674, !1677, !1684}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1659, file: !1625, line: 110, baseType: !238, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !1625, line: 111, baseType: !1663, size: 64, offset: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1659, file: !1625, line: 111, size: 64, elements: !1664)
!1664 = !{!1665, !1673}
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1663, file: !1625, line: 112, baseType: !1666, size: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1663, file: !1625, line: 112, size: 64, elements: !1667)
!1667 = !{!1668, !1669}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1666, file: !1625, line: 114, baseType: !269, size: 16)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1666, file: !1625, line: 115, baseType: !1670, size: 48, offset: 16)
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 48, elements: !1671)
!1671 = !{!1672}
!1672 = !DISubrange(count: 6)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1663, file: !1625, line: 121, baseType: !238, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1659, file: !1625, line: 123, baseType: !1675, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1625, line: 96, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1659, file: !1625, line: 124, baseType: !1678, size: 64, offset: 192)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1625, line: 102, size: 192, elements: !1680)
!1680 = !{!1681, !1682, !1683}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1679, file: !1625, line: 103, baseType: !421, size: 128, align: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1679, file: !1625, line: 104, baseType: !1278, size: 32, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1679, file: !1625, line: 105, baseType: !538, size: 8, offset: 160)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1659, file: !1625, line: 125, baseType: !281, size: 64, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1656, file: !1625, line: 241, baseType: !1686, size: 320)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1656, file: !1625, line: 241, size: 320, elements: !1687)
!1687 = !{!1688, !1689, !1690, !1691, !1692}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1686, file: !1625, line: 242, baseType: !238, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1686, file: !1625, line: 243, baseType: !238, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1686, file: !1625, line: 244, baseType: !1675, size: 64, offset: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1686, file: !1625, line: 245, baseType: !1678, size: 64, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1686, file: !1625, line: 246, baseType: !334, size: 64, offset: 256)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !1625, line: 254, baseType: !1694, size: 256, offset: 1344)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1624, file: !1625, line: 254, size: 256, elements: !1695)
!1695 = !{!1696, !1702}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1694, file: !1625, line: 255, baseType: !1697, size: 256)
!1697 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1625, line: 128, size: 256, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1697, file: !1625, line: 129, baseType: !237, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1697, file: !1625, line: 130, baseType: !1701, size: 256)
!1701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 256, elements: !1203)
!1702 = !DIDerivedType(tag: DW_TAG_member, scope: !1694, file: !1625, line: 256, baseType: !1703, size: 256)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1694, file: !1625, line: 256, size: 256, elements: !1704)
!1704 = !{!1705, !1706}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1703, file: !1625, line: 258, baseType: !249, size: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1703, file: !1625, line: 259, baseType: !1707, size: 128, offset: 128)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1708, line: 22, size: 128, elements: !1709)
!1708 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1709 = !{!1710, !1713}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1707, file: !1708, line: 23, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1708, line: 23, flags: DIFlagFwdDecl)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1707, file: !1708, line: 24, baseType: !238, size: 64, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1624, file: !1625, line: 274, baseType: !1715, size: 64, offset: 1600)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1625, line: 170, size: 192, elements: !1717)
!1717 = !{!1718, !1727, !1728}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1716, file: !1625, line: 171, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1625, line: 165, baseType: !1720)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!241, !1623, !1723, !1725, !1623}
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1676)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1697)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1716, file: !1625, line: 172, baseType: !1623, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1716, file: !1625, line: 173, baseType: !1675, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1595, file: !1596, line: 138, baseType: !1623, size: 64, offset: 768)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1595, file: !1596, line: 139, baseType: !1623, size: 64, offset: 832)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1595, file: !1596, line: 140, baseType: !1623, size: 64, offset: 896)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1595, file: !1596, line: 145, baseType: !1733, size: 64, offset: 960)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1735, line: 13, size: 896, elements: !1736)
!1735 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1736 = !{!1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1734, file: !1735, line: 14, baseType: !1278, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1734, file: !1735, line: 15, baseType: !797, size: 32, offset: 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1734, file: !1735, line: 16, baseType: !797, size: 32, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1734, file: !1735, line: 21, baseType: !821, size: 64, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1734, file: !1735, line: 27, baseType: !238, size: 64, offset: 192)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1734, file: !1735, line: 28, baseType: !238, size: 64, offset: 256)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1734, file: !1735, line: 29, baseType: !821, size: 64, offset: 320)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1734, file: !1735, line: 32, baseType: !689, size: 128, offset: 384)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1734, file: !1735, line: 33, baseType: !483, size: 32, offset: 512)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1734, file: !1735, line: 37, baseType: !821, size: 64, offset: 576)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1734, file: !1735, line: 44, baseType: !1748, size: 256, offset: 640)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1749, line: 15, size: 256, elements: !1750)
!1749 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1750 = !{!1751, !1752, !1753, !1754, !1755, !1756, !1757}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1748, file: !1749, line: 16, baseType: !830)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1748, file: !1749, line: 18, baseType: !241, size: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1748, file: !1749, line: 19, baseType: !241, size: 32, offset: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1748, file: !1749, line: 20, baseType: !241, size: 32, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1748, file: !1749, line: 21, baseType: !241, size: 32, offset: 96)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1748, file: !1749, line: 22, baseType: !238, size: 64, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1748, file: !1749, line: 23, baseType: !238, size: 64, offset: 192)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1595, file: !1596, line: 146, baseType: !1759, size: 64, offset: 1024)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !484, line: 18, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1595, file: !1596, line: 147, baseType: !1762, size: 64, offset: 1088)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1596, line: 25, size: 64, elements: !1764)
!1764 = !{!1765, !1766, !1767}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1763, file: !1596, line: 26, baseType: !797, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1763, file: !1596, line: 27, baseType: !241, size: 32, offset: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1763, file: !1596, line: 28, baseType: !1768, offset: 64)
!1768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, elements: !1769)
!1769 = !{!1770}
!1770 = !DISubrange(count: 0)
!1771 = !DIDerivedType(tag: DW_TAG_member, scope: !1595, file: !1596, line: 149, baseType: !1772, size: 128, offset: 1152)
!1772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1595, file: !1596, line: 149, size: 128, elements: !1773)
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1772, file: !1596, line: 150, baseType: !241, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1772, file: !1596, line: 151, baseType: !421, size: 128, align: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1265, file: !1266, line: 926, baseType: !1593, size: 64, offset: 8576)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1265, file: !1266, line: 929, baseType: !1593, size: 64, offset: 8640)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1265, file: !1266, line: 933, baseType: !1623, size: 64, offset: 8704)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1265, file: !1266, line: 943, baseType: !1780, size: 128, offset: 8768)
!1780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 128, elements: !265)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1265, file: !1266, line: 945, baseType: !1782, size: 64, offset: 8896)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1266, line: 49, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1265, file: !1266, line: 956, baseType: !1785, size: 64, offset: 8960)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1266, line: 45, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1265, file: !1266, line: 959, baseType: !1788, size: 64, offset: 9024)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1266, line: 959, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1265, file: !1266, line: 962, baseType: !1791, size: 64, offset: 9088)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1266, line: 66, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1265, file: !1266, line: 966, baseType: !1794, size: 64, offset: 9152)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1266, line: 50, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1265, file: !1266, line: 969, baseType: !1797, size: 64, offset: 9216)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1799, line: 82, size: 7296, elements: !1800)
!1799 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1800 = !{!1801, !1802, !1803, !1804, !1805, !1806, !1807, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1836, !1845, !1846, !1848, !1849, !1850, !1853, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1883, !1884, !1891, !1892, !1893, !1894, !1895, !1896}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1798, file: !1799, line: 83, baseType: !1278, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1798, file: !1799, line: 84, baseType: !797, size: 32, offset: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1798, file: !1799, line: 85, baseType: !241, size: 32, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1798, file: !1799, line: 86, baseType: !249, size: 128, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1798, file: !1799, line: 88, baseType: !1527, size: 128, offset: 256)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1798, file: !1799, line: 91, baseType: !1264, size: 64, offset: 384)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1798, file: !1799, line: 94, baseType: !1808, size: 192, offset: 448)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1809, line: 30, size: 192, elements: !1810)
!1809 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1808, file: !1809, line: 31, baseType: !249, size: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1808, file: !1809, line: 32, baseType: !1813, size: 64, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1814, line: 25, baseType: !1815)
!1814 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1814, line: 23, size: 64, elements: !1816)
!1816 = !{!1817}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1815, file: !1814, line: 24, baseType: !1416, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1798, file: !1799, line: 97, baseType: !685, size: 64, offset: 640)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1798, file: !1799, line: 100, baseType: !241, size: 32, offset: 704)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1798, file: !1799, line: 106, baseType: !241, size: 32, offset: 736)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1798, file: !1799, line: 107, baseType: !1264, size: 64, offset: 768)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1798, file: !1799, line: 110, baseType: !241, size: 32, offset: 832)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1798, file: !1799, line: 111, baseType: !7, size: 32, offset: 864)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1798, file: !1799, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1798, file: !1799, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1798, file: !1799, line: 128, baseType: !241, size: 32, offset: 928)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1798, file: !1799, line: 129, baseType: !249, size: 128, offset: 960)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1798, file: !1799, line: 132, baseType: !1340, size: 512, offset: 1088)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1798, file: !1799, line: 133, baseType: !1348, size: 64, offset: 1600)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1798, file: !1799, line: 140, baseType: !1831, size: 256, offset: 1664)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1832, size: 256, elements: !1615)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1799, line: 38, size: 128, elements: !1833)
!1833 = !{!1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1832, file: !1799, line: 39, baseType: !220, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1832, file: !1799, line: 40, baseType: !220, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1798, file: !1799, line: 146, baseType: !1837, size: 192, offset: 1920)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1799, line: 66, size: 192, elements: !1838)
!1838 = !{!1839}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1837, file: !1799, line: 67, baseType: !1840, size: 192)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1799, line: 47, size: 192, elements: !1841)
!1841 = !{!1842, !1843, !1844}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1840, file: !1799, line: 48, baseType: !823, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1840, file: !1799, line: 49, baseType: !823, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1840, file: !1799, line: 50, baseType: !823, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1798, file: !1799, line: 150, baseType: !1576, size: 640, offset: 2112)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1798, file: !1799, line: 153, baseType: !1847, size: 256, offset: 2752)
!1847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1517, size: 256, elements: !1203)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1798, file: !1799, line: 159, baseType: !1517, size: 64, offset: 3008)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1798, file: !1799, line: 162, baseType: !241, size: 32, offset: 3072)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1798, file: !1799, line: 164, baseType: !1851, size: 64, offset: 3136)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1799, line: 164, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1798, file: !1799, line: 175, baseType: !1854, size: 32, offset: 3200)
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !444, line: 805, baseType: !1855)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !444, line: 798, size: 32, elements: !1856)
!1856 = !{!1857, !1858}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1855, file: !444, line: 803, baseType: !443, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1855, file: !444, line: 804, baseType: !293, offset: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1798, file: !1799, line: 176, baseType: !220, size: 64, offset: 3264)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1798, file: !1799, line: 176, baseType: !220, size: 64, offset: 3328)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1798, file: !1799, line: 176, baseType: !220, size: 64, offset: 3392)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1798, file: !1799, line: 176, baseType: !220, size: 64, offset: 3456)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1798, file: !1799, line: 177, baseType: !220, size: 64, offset: 3520)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1798, file: !1799, line: 178, baseType: !220, size: 64, offset: 3584)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1798, file: !1799, line: 179, baseType: !1564, size: 128, offset: 3648)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1798, file: !1799, line: 180, baseType: !238, size: 64, offset: 3776)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1798, file: !1799, line: 180, baseType: !238, size: 64, offset: 3840)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1798, file: !1799, line: 180, baseType: !238, size: 64, offset: 3904)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1798, file: !1799, line: 180, baseType: !238, size: 64, offset: 3968)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1798, file: !1799, line: 181, baseType: !238, size: 64, offset: 4032)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1798, file: !1799, line: 181, baseType: !238, size: 64, offset: 4096)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1798, file: !1799, line: 181, baseType: !238, size: 64, offset: 4160)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1798, file: !1799, line: 181, baseType: !238, size: 64, offset: 4224)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1798, file: !1799, line: 182, baseType: !238, size: 64, offset: 4288)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1798, file: !1799, line: 182, baseType: !238, size: 64, offset: 4352)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1798, file: !1799, line: 182, baseType: !238, size: 64, offset: 4416)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1798, file: !1799, line: 182, baseType: !238, size: 64, offset: 4480)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1798, file: !1799, line: 183, baseType: !238, size: 64, offset: 4544)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1798, file: !1799, line: 183, baseType: !238, size: 64, offset: 4608)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1798, file: !1799, line: 184, baseType: !1881, offset: 4672)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1882, line: 12, elements: !307)
!1882 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1798, file: !1799, line: 192, baseType: !222, size: 64, offset: 4672)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1798, file: !1799, line: 203, baseType: !1885, size: 2048, offset: 4736)
!1885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1886, size: 2048, elements: !265)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1887, line: 43, size: 128, elements: !1888)
!1887 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1886, file: !1887, line: 44, baseType: !380, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1886, file: !1887, line: 45, baseType: !380, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1798, file: !1799, line: 220, baseType: !538, size: 8, offset: 6784)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1798, file: !1799, line: 221, baseType: !1253, size: 16, offset: 6800)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1798, file: !1799, line: 222, baseType: !1253, size: 16, offset: 6816)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1798, file: !1799, line: 224, baseType: !1022, size: 64, offset: 6848)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1798, file: !1799, line: 227, baseType: !1221, size: 192, offset: 6912)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1798, file: !1799, line: 233, baseType: !1221, size: 192, offset: 7104)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1265, file: !1266, line: 970, baseType: !1898, size: 64, offset: 9280)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1799, line: 20, size: 16576, elements: !1900)
!1900 = !{!1901, !1902, !1903, !1904}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1899, file: !1799, line: 21, baseType: !293)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1899, file: !1799, line: 22, baseType: !1278, size: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1899, file: !1799, line: 23, baseType: !1527, size: 128, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1899, file: !1799, line: 24, baseType: !1905, size: 16384, offset: 192)
!1905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1906, size: 16384, elements: !337)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1809, line: 49, size: 256, elements: !1907)
!1907 = !{!1908}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1906, file: !1809, line: 50, baseType: !1909, size: 256)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1809, line: 35, size: 256, elements: !1910)
!1910 = !{!1911, !1918, !1919, !1925}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1909, file: !1809, line: 37, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1913, line: 19, baseType: !1914)
!1913 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1913, line: 18, baseType: !1916)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{null, !241}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1909, file: !1809, line: 38, baseType: !238, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1909, file: !1809, line: 44, baseType: !1920, size: 64, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1913, line: 22, baseType: !1921)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1913, line: 21, baseType: !1923)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{null}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1909, file: !1809, line: 46, baseType: !1813, size: 64, offset: 192)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1265, file: !1266, line: 971, baseType: !1813, size: 64, offset: 9344)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1265, file: !1266, line: 972, baseType: !1813, size: 64, offset: 9408)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1265, file: !1266, line: 974, baseType: !1813, size: 64, offset: 9472)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1265, file: !1266, line: 975, baseType: !1808, size: 192, offset: 9536)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1265, file: !1266, line: 976, baseType: !238, size: 64, offset: 9728)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1265, file: !1266, line: 977, baseType: !378, size: 64, offset: 9792)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1265, file: !1266, line: 978, baseType: !7, size: 32, offset: 9856)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1265, file: !1266, line: 980, baseType: !424, size: 64, offset: 9920)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1265, file: !1266, line: 989, baseType: !1935, size: 128, offset: 9984)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1936, line: 35, size: 128, elements: !1937)
!1936 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1937 = !{!1938, !1939, !1940}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1935, file: !1936, line: 36, baseType: !241, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1935, file: !1936, line: 37, baseType: !797, size: 32, offset: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1935, file: !1936, line: 38, baseType: !1941, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1936, line: 23, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1265, file: !1266, line: 992, baseType: !220, size: 64, offset: 10112)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1265, file: !1266, line: 993, baseType: !220, size: 64, offset: 10176)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1265, file: !1266, line: 996, baseType: !293, offset: 10240)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1265, file: !1266, line: 999, baseType: !830, offset: 10240)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1265, file: !1266, line: 1001, baseType: !1948, size: 64, offset: 10240)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1266, line: 636, size: 64, elements: !1949)
!1949 = !{!1950}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1948, file: !1266, line: 637, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1265, file: !1266, line: 1005, baseType: !802, size: 128, offset: 10304)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1265, file: !1266, line: 1007, baseType: !1264, size: 64, offset: 10432)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1265, file: !1266, line: 1009, baseType: !1955, size: 64, offset: 10496)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1266, line: 1009, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1265, file: !1266, line: 1043, baseType: !237, size: 64, offset: 10560)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1265, file: !1266, line: 1046, baseType: !1959, size: 64, offset: 10624)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1266, line: 41, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1265, file: !1266, line: 1050, baseType: !1962, size: 64, offset: 10688)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1266, line: 42, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1265, file: !1266, line: 1054, baseType: !1965, size: 64, offset: 10752)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1266, line: 55, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1265, file: !1266, line: 1056, baseType: !1968, size: 64, offset: 10816)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1266, line: 40, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1265, file: !1266, line: 1058, baseType: !1971, size: 64, offset: 10880)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1973, line: 99, size: 704, elements: !1974)
!1973 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1974 = !{!1975, !1976, !1977, !1978, !1979, !1980, !1981, !2000, !2001}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1972, file: !1973, line: 100, baseType: !821, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1972, file: !1973, line: 101, baseType: !797, size: 32, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1972, file: !1973, line: 102, baseType: !797, size: 32, offset: 96)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1972, file: !1973, line: 105, baseType: !293, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1972, file: !1973, line: 107, baseType: !271, size: 16, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1972, file: !1973, line: 109, baseType: !789, size: 128, offset: 192)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1972, file: !1973, line: 110, baseType: !1982, size: 64, offset: 320)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1973, line: 73, size: 448, elements: !1984)
!1984 = !{!1985, !1988, !1989, !1994, !1999}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1983, file: !1973, line: 74, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1973, line: 74, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1983, file: !1973, line: 75, baseType: !1971, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, scope: !1983, file: !1973, line: 83, baseType: !1990, size: 128, offset: 128)
!1990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1983, file: !1973, line: 83, size: 128, elements: !1991)
!1991 = !{!1992, !1993}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1990, file: !1973, line: 84, baseType: !249, size: 128)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1990, file: !1973, line: 85, baseType: !983, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, scope: !1983, file: !1973, line: 87, baseType: !1995, size: 128, offset: 256)
!1995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1983, file: !1973, line: 87, size: 128, elements: !1996)
!1996 = !{!1997, !1998}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1995, file: !1973, line: 88, baseType: !689, size: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1995, file: !1973, line: 89, baseType: !421, size: 128, align: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1983, file: !1973, line: 92, baseType: !7, size: 32, offset: 384)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1972, file: !1973, line: 111, baseType: !685, size: 64, offset: 384)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1972, file: !1973, line: 113, baseType: !2002, size: 256, offset: 448)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !169, line: 102, size: 256, elements: !2003)
!2003 = !{!2004, !2005, !2006}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2002, file: !169, line: 103, baseType: !821, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2002, file: !169, line: 104, baseType: !249, size: 128, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2002, file: !169, line: 105, baseType: !2007, size: 64, offset: 192)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !169, line: 21, baseType: !2008)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{null, !2011}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1265, file: !1266, line: 1061, baseType: !2013, size: 64, offset: 10944)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1266, line: 43, flags: DIFlagFwdDecl)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1265, file: !1266, line: 1064, baseType: !238, size: 64, offset: 11008)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1265, file: !1266, line: 1065, baseType: !2017, size: 64, offset: 11072)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1809, line: 14, baseType: !2019)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1809, line: 12, size: 384, elements: !2020)
!2020 = !{!2021}
!2021 = !DIDerivedType(tag: DW_TAG_member, scope: !2019, file: !1809, line: 13, baseType: !2022, size: 384)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2019, file: !1809, line: 13, size: 384, elements: !2023)
!2023 = !{!2024, !2025, !2026, !2027}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2022, file: !1809, line: 13, baseType: !241, size: 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2022, file: !1809, line: 13, baseType: !241, size: 32, offset: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2022, file: !1809, line: 13, baseType: !241, size: 32, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2022, file: !1809, line: 13, baseType: !2028, size: 256, offset: 128)
!2028 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2029, line: 32, size: 256, elements: !2030)
!2029 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2030 = !{!2031, !2036, !2049, !2055, !2064, !2084, !2089}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2028, file: !2029, line: 37, baseType: !2032, size: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2028, file: !2029, line: 34, size: 64, elements: !2033)
!2033 = !{!2034, !2035}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2032, file: !2029, line: 35, baseType: !1506, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2032, file: !2029, line: 36, baseType: !489, size: 32, offset: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2028, file: !2029, line: 45, baseType: !2037, size: 192)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2028, file: !2029, line: 40, size: 192, elements: !2038)
!2038 = !{!2039, !2041, !2042, !2048}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2037, file: !2029, line: 41, baseType: !2040, size: 32)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !365, line: 95, baseType: !241)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2037, file: !2029, line: 42, baseType: !241, size: 32, offset: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2037, file: !2029, line: 43, baseType: !2043, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2029, line: 11, baseType: !2044)
!2044 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2029, line: 8, size: 64, elements: !2045)
!2045 = !{!2046, !2047}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2044, file: !2029, line: 9, baseType: !241, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2044, file: !2029, line: 10, baseType: !237, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2037, file: !2029, line: 44, baseType: !241, size: 32, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2028, file: !2029, line: 52, baseType: !2050, size: 128)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2028, file: !2029, line: 48, size: 128, elements: !2051)
!2051 = !{!2052, !2053, !2054}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2050, file: !2029, line: 49, baseType: !1506, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2050, file: !2029, line: 50, baseType: !489, size: 32, offset: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2050, file: !2029, line: 51, baseType: !2043, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2028, file: !2029, line: 61, baseType: !2056, size: 256)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2028, file: !2029, line: 55, size: 256, elements: !2057)
!2057 = !{!2058, !2059, !2060, !2061, !2063}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2056, file: !2029, line: 56, baseType: !1506, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2056, file: !2029, line: 57, baseType: !489, size: 32, offset: 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2056, file: !2029, line: 58, baseType: !241, size: 32, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2056, file: !2029, line: 59, baseType: !2062, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !365, line: 94, baseType: !366)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2056, file: !2029, line: 60, baseType: !2062, size: 64, offset: 192)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2028, file: !2029, line: 95, baseType: !2065, size: 256)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2028, file: !2029, line: 64, size: 256, elements: !2066)
!2066 = !{!2067, !2068}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2065, file: !2029, line: 65, baseType: !237, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !2065, file: !2029, line: 77, baseType: !2069, size: 192, offset: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2065, file: !2029, line: 77, size: 192, elements: !2070)
!2070 = !{!2071, !2072, !2079}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2069, file: !2029, line: 82, baseType: !1253, size: 16)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2069, file: !2029, line: 88, baseType: !2073, size: 192)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2069, file: !2029, line: 84, size: 192, elements: !2074)
!2074 = !{!2075, !2077, !2078}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2073, file: !2029, line: 85, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 64, elements: !1378)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2073, file: !2029, line: 86, baseType: !237, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2073, file: !2029, line: 87, baseType: !237, size: 64, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2069, file: !2029, line: 93, baseType: !2080, size: 96)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2069, file: !2029, line: 90, size: 96, elements: !2081)
!2081 = !{!2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2080, file: !2029, line: 91, baseType: !2076, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2080, file: !2029, line: 92, baseType: !212, size: 32, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2028, file: !2029, line: 101, baseType: !2085, size: 128)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2028, file: !2029, line: 98, size: 128, elements: !2086)
!2086 = !{!2087, !2088}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2085, file: !2029, line: 99, baseType: !367, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2085, file: !2029, line: 100, baseType: !241, size: 32, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2028, file: !2029, line: 108, baseType: !2090, size: 128)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2028, file: !2029, line: 104, size: 128, elements: !2091)
!2091 = !{!2092, !2093, !2094}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2090, file: !2029, line: 105, baseType: !237, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2090, file: !2029, line: 106, baseType: !241, size: 32, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2090, file: !2029, line: 107, baseType: !7, size: 32, offset: 96)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1265, file: !1266, line: 1067, baseType: !1881, offset: 11136)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1265, file: !1266, line: 1099, baseType: !2097, size: 64, offset: 11136)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1266, line: 56, flags: DIFlagFwdDecl)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1265, file: !1266, line: 1103, baseType: !249, size: 128, offset: 11200)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1265, file: !1266, line: 1104, baseType: !2101, size: 64, offset: 11328)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1266, line: 46, flags: DIFlagFwdDecl)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1265, file: !1266, line: 1105, baseType: !1221, size: 192, offset: 11392)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1265, file: !1266, line: 1106, baseType: !7, size: 32, offset: 11584)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1265, file: !1266, line: 1109, baseType: !2106, size: 128, offset: 11648)
!2106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2107, size: 128, elements: !1615)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1266, line: 51, flags: DIFlagFwdDecl)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1265, file: !1266, line: 1110, baseType: !1221, size: 192, offset: 11776)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1265, file: !1266, line: 1111, baseType: !249, size: 128, offset: 11968)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1265, file: !1266, line: 1173, baseType: !2112, size: 64, offset: 12096)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2114, line: 62, size: 256, align: 256, elements: !2115)
!2114 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2115 = !{!2116, !2117, !2118, !2123}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2113, file: !2114, line: 75, baseType: !212, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2113, file: !2114, line: 90, baseType: !212, size: 32, offset: 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2113, file: !2114, line: 124, baseType: !2119, size: 64, offset: 64)
!2119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2113, file: !2114, line: 109, size: 64, elements: !2120)
!2120 = !{!2121, !2122}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2119, file: !2114, line: 110, baseType: !221, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2119, file: !2114, line: 112, baseType: !221, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2113, file: !2114, line: 144, baseType: !212, size: 32, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1265, file: !1266, line: 1174, baseType: !210, size: 32, offset: 12160)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1265, file: !1266, line: 1179, baseType: !238, size: 64, offset: 12224)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1265, file: !1266, line: 1182, baseType: !2127, size: 128, offset: 12288)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1199, line: 76, size: 128, elements: !2128)
!2128 = !{!2129, !2134, !2135}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2127, file: !1199, line: 85, baseType: !2130, size: 64)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2131, line: 7, size: 64, elements: !2132)
!2131 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2132 = !{!2133}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2130, file: !2131, line: 12, baseType: !1413, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2127, file: !1199, line: 88, baseType: !538, size: 8, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2127, file: !1199, line: 95, baseType: !538, size: 8, offset: 72)
!2136 = !DIDerivedType(tag: DW_TAG_member, scope: !1265, file: !1266, line: 1184, baseType: !2137, size: 128, offset: 12416)
!2137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1265, file: !1266, line: 1184, size: 128, elements: !2138)
!2138 = !{!2139, !2140}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2137, file: !1266, line: 1185, baseType: !1278, size: 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2137, file: !1266, line: 1186, baseType: !421, size: 128, align: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1265, file: !1266, line: 1190, baseType: !2142, size: 64, offset: 12544)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1266, line: 53, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1265, file: !1266, line: 1192, baseType: !2145, size: 128, offset: 12608)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1199, line: 64, size: 128, elements: !2146)
!2146 = !{!2147, !2148, !2149}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2145, file: !1199, line: 65, baseType: !771, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2145, file: !1199, line: 67, baseType: !212, size: 32, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2145, file: !1199, line: 68, baseType: !212, size: 32, offset: 96)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1265, file: !1266, line: 1206, baseType: !241, size: 32, offset: 12736)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1265, file: !1266, line: 1207, baseType: !241, size: 32, offset: 12768)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1265, file: !1266, line: 1209, baseType: !238, size: 64, offset: 12800)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1265, file: !1266, line: 1219, baseType: !220, size: 64, offset: 12864)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1265, file: !1266, line: 1220, baseType: !220, size: 64, offset: 12928)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1265, file: !1266, line: 1317, baseType: !241, size: 32, offset: 12992)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1265, file: !1266, line: 1319, baseType: !1264, size: 64, offset: 13056)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1265, file: !1266, line: 1322, baseType: !2158, size: 64, offset: 13120)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2160, line: 56, size: 512, elements: !2161)
!2160 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2161 = !{!2162, !2163, !2164, !2165, !2166, !2167, !2168, !2170}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2159, file: !2160, line: 57, baseType: !2158, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2159, file: !2160, line: 58, baseType: !237, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2159, file: !2160, line: 59, baseType: !238, size: 64, offset: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2159, file: !2160, line: 60, baseType: !238, size: 64, offset: 192)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2159, file: !2160, line: 61, baseType: !870, size: 64, offset: 256)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2159, file: !2160, line: 62, baseType: !7, size: 32, offset: 320)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2159, file: !2160, line: 63, baseType: !2169, size: 64, offset: 384)
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !240, line: 153, baseType: !220)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2159, file: !2160, line: 64, baseType: !2171, size: 64, offset: 448)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1265, file: !1266, line: 1326, baseType: !1278, size: 32, offset: 13184)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1265, file: !1266, line: 1342, baseType: !237, size: 64, offset: 13248)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1265, file: !1266, line: 1343, baseType: !221, size: 64, offset: 13312)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1265, file: !1266, line: 1344, baseType: !220, size: 64, offset: 13376)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1265, file: !1266, line: 1345, baseType: !221, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1265, file: !1266, line: 1346, baseType: !221, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1265, file: !1266, line: 1347, baseType: !221, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1265, file: !1266, line: 1348, baseType: !421, size: 128, align: 64, offset: 13504)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1265, file: !1266, line: 1358, baseType: !2182, size: 34816, offset: 13824)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2183, line: 485, size: 34816, elements: !2184)
!2183 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2184 = !{!2185, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2214, !2215, !2216, !2217, !2218, !2219, !2222, !2223, !2224}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2182, file: !2183, line: 487, baseType: !2186, size: 192)
!2186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2187, size: 192, elements: !232)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2188, line: 16, size: 64, elements: !2189)
!2188 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2189 = !{!2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2187, file: !2188, line: 17, baseType: !269, size: 16)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2187, file: !2188, line: 18, baseType: !269, size: 16, offset: 16)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2187, file: !2188, line: 19, baseType: !269, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2187, file: !2188, line: 19, baseType: !269, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2187, file: !2188, line: 19, baseType: !269, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2187, file: !2188, line: 19, baseType: !269, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2187, file: !2188, line: 19, baseType: !269, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2187, file: !2188, line: 20, baseType: !269, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2187, file: !2188, line: 20, baseType: !269, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2187, file: !2188, line: 20, baseType: !269, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2187, file: !2188, line: 20, baseType: !269, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2187, file: !2188, line: 20, baseType: !269, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2187, file: !2188, line: 20, baseType: !269, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2182, file: !2183, line: 491, baseType: !238, size: 64, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2182, file: !2183, line: 495, baseType: !271, size: 16, offset: 256)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2182, file: !2183, line: 496, baseType: !271, size: 16, offset: 272)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2182, file: !2183, line: 497, baseType: !271, size: 16, offset: 288)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2182, file: !2183, line: 498, baseType: !271, size: 16, offset: 304)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2182, file: !2183, line: 502, baseType: !238, size: 64, offset: 320)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2182, file: !2183, line: 503, baseType: !238, size: 64, offset: 384)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2182, file: !2183, line: 514, baseType: !2211, size: 256, offset: 448)
!2211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2212, size: 256, elements: !1203)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2183, line: 483, flags: DIFlagFwdDecl)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2182, file: !2183, line: 516, baseType: !238, size: 64, offset: 704)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2182, file: !2183, line: 518, baseType: !238, size: 64, offset: 768)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2182, file: !2183, line: 520, baseType: !238, size: 64, offset: 832)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2182, file: !2183, line: 521, baseType: !238, size: 64, offset: 896)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2182, file: !2183, line: 522, baseType: !238, size: 64, offset: 960)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2182, file: !2183, line: 528, baseType: !2220, size: 64, offset: 1024)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2183, line: 10, flags: DIFlagFwdDecl)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2182, file: !2183, line: 535, baseType: !238, size: 64, offset: 1088)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2182, file: !2183, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2182, file: !2183, line: 540, baseType: !2225, size: 33280, offset: 1536)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2226, line: 317, size: 33280, elements: !2227)
!2226 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2227 = !{!2228, !2229, !2230}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2225, file: !2226, line: 330, baseType: !7, size: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2225, file: !2226, line: 337, baseType: !238, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2225, file: !2226, line: 348, baseType: !2231, size: 32768, offset: 512)
!2231 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2226, line: 304, size: 32768, elements: !2232)
!2232 = !{!2233, !2248, !2287, !2337, !2350}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2231, file: !2226, line: 305, baseType: !2234, size: 896)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2226, line: 12, size: 896, elements: !2235)
!2235 = !{!2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2247}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2234, file: !2226, line: 13, baseType: !210, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2234, file: !2226, line: 14, baseType: !210, size: 32, offset: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2234, file: !2226, line: 15, baseType: !210, size: 32, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2234, file: !2226, line: 16, baseType: !210, size: 32, offset: 96)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2234, file: !2226, line: 17, baseType: !210, size: 32, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2234, file: !2226, line: 18, baseType: !210, size: 32, offset: 160)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2234, file: !2226, line: 19, baseType: !210, size: 32, offset: 192)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2234, file: !2226, line: 22, baseType: !2244, size: 640, offset: 224)
!2244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 640, elements: !2245)
!2245 = !{!2246}
!2246 = !DISubrange(count: 20)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2234, file: !2226, line: 25, baseType: !210, size: 32, offset: 864)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2231, file: !2226, line: 306, baseType: !2249, size: 4096, align: 128)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2226, line: 34, size: 4096, align: 128, elements: !2250)
!2250 = !{!2251, !2252, !2253, !2254, !2255, !2270, !2271, !2272, !2276, !2278, !2282}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2249, file: !2226, line: 35, baseType: !269, size: 16)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2249, file: !2226, line: 36, baseType: !269, size: 16, offset: 16)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2249, file: !2226, line: 37, baseType: !269, size: 16, offset: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2249, file: !2226, line: 38, baseType: !269, size: 16, offset: 48)
!2255 = !DIDerivedType(tag: DW_TAG_member, scope: !2249, file: !2226, line: 39, baseType: !2256, size: 128, offset: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2249, file: !2226, line: 39, size: 128, elements: !2257)
!2257 = !{!2258, !2263}
!2258 = !DIDerivedType(tag: DW_TAG_member, scope: !2256, file: !2226, line: 40, baseType: !2259, size: 128)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2256, file: !2226, line: 40, size: 128, elements: !2260)
!2260 = !{!2261, !2262}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2259, file: !2226, line: 41, baseType: !220, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2259, file: !2226, line: 42, baseType: !220, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, scope: !2256, file: !2226, line: 44, baseType: !2264, size: 128)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2256, file: !2226, line: 44, size: 128, elements: !2265)
!2265 = !{!2266, !2267, !2268, !2269}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2264, file: !2226, line: 45, baseType: !210, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2264, file: !2226, line: 46, baseType: !210, size: 32, offset: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2264, file: !2226, line: 47, baseType: !210, size: 32, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2264, file: !2226, line: 48, baseType: !210, size: 32, offset: 96)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2249, file: !2226, line: 51, baseType: !210, size: 32, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2249, file: !2226, line: 52, baseType: !210, size: 32, offset: 224)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2249, file: !2226, line: 55, baseType: !2273, size: 1024, offset: 256)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 1024, elements: !2274)
!2274 = !{!2275}
!2275 = !DISubrange(count: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2249, file: !2226, line: 58, baseType: !2277, size: 2048, offset: 1280)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 2048, elements: !337)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2249, file: !2226, line: 60, baseType: !2279, size: 384, offset: 3328)
!2279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 384, elements: !2280)
!2280 = !{!2281}
!2281 = !DISubrange(count: 12)
!2282 = !DIDerivedType(tag: DW_TAG_member, scope: !2249, file: !2226, line: 62, baseType: !2283, size: 384, offset: 3712)
!2283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2249, file: !2226, line: 62, size: 384, elements: !2284)
!2284 = !{!2285, !2286}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2283, file: !2226, line: 63, baseType: !2279, size: 384)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2283, file: !2226, line: 64, baseType: !2279, size: 384)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2231, file: !2226, line: 307, baseType: !2288, size: 1088)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2226, line: 79, size: 1088, elements: !2289)
!2289 = !{!2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2336}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2288, file: !2226, line: 80, baseType: !210, size: 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2288, file: !2226, line: 81, baseType: !210, size: 32, offset: 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2288, file: !2226, line: 82, baseType: !210, size: 32, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2288, file: !2226, line: 83, baseType: !210, size: 32, offset: 96)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2288, file: !2226, line: 84, baseType: !210, size: 32, offset: 128)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2288, file: !2226, line: 85, baseType: !210, size: 32, offset: 160)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2288, file: !2226, line: 86, baseType: !210, size: 32, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2288, file: !2226, line: 88, baseType: !2244, size: 640, offset: 224)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2288, file: !2226, line: 89, baseType: !227, size: 8, offset: 864)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2288, file: !2226, line: 90, baseType: !227, size: 8, offset: 872)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2288, file: !2226, line: 91, baseType: !227, size: 8, offset: 880)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2288, file: !2226, line: 92, baseType: !227, size: 8, offset: 888)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2288, file: !2226, line: 93, baseType: !227, size: 8, offset: 896)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2288, file: !2226, line: 94, baseType: !227, size: 8, offset: 904)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2288, file: !2226, line: 95, baseType: !2305, size: 64, offset: 960)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2307, line: 11, size: 128, elements: !2308)
!2307 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2308 = !{!2309, !2310}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2306, file: !2307, line: 12, baseType: !367, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2306, file: !2307, line: 13, baseType: !2311, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2313, line: 56, size: 1344, elements: !2314)
!2313 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2314 = !{!2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2312, file: !2313, line: 61, baseType: !238, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2312, file: !2313, line: 62, baseType: !238, size: 64, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2312, file: !2313, line: 63, baseType: !238, size: 64, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2312, file: !2313, line: 64, baseType: !238, size: 64, offset: 192)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2312, file: !2313, line: 65, baseType: !238, size: 64, offset: 256)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2312, file: !2313, line: 66, baseType: !238, size: 64, offset: 320)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2312, file: !2313, line: 68, baseType: !238, size: 64, offset: 384)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2312, file: !2313, line: 69, baseType: !238, size: 64, offset: 448)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2312, file: !2313, line: 70, baseType: !238, size: 64, offset: 512)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2312, file: !2313, line: 71, baseType: !238, size: 64, offset: 576)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2312, file: !2313, line: 72, baseType: !238, size: 64, offset: 640)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2312, file: !2313, line: 73, baseType: !238, size: 64, offset: 704)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2312, file: !2313, line: 74, baseType: !238, size: 64, offset: 768)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2312, file: !2313, line: 75, baseType: !238, size: 64, offset: 832)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2312, file: !2313, line: 76, baseType: !238, size: 64, offset: 896)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2312, file: !2313, line: 81, baseType: !238, size: 64, offset: 960)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2312, file: !2313, line: 83, baseType: !238, size: 64, offset: 1024)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2312, file: !2313, line: 84, baseType: !238, size: 64, offset: 1088)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2312, file: !2313, line: 85, baseType: !238, size: 64, offset: 1152)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2312, file: !2313, line: 86, baseType: !238, size: 64, offset: 1216)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2312, file: !2313, line: 87, baseType: !238, size: 64, offset: 1280)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2288, file: !2226, line: 96, baseType: !210, size: 32, offset: 1024)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2231, file: !2226, line: 308, baseType: !2338, size: 4608, align: 512)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2226, line: 289, size: 4608, align: 512, elements: !2339)
!2339 = !{!2340, !2341, !2348}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2338, file: !2226, line: 290, baseType: !2249, size: 4096, align: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2338, file: !2226, line: 291, baseType: !2342, size: 512, offset: 4096)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2226, line: 268, size: 512, elements: !2343)
!2343 = !{!2344, !2345, !2346}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2342, file: !2226, line: 269, baseType: !220, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2342, file: !2226, line: 270, baseType: !220, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2342, file: !2226, line: 271, baseType: !2347, size: 384, offset: 128)
!2347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 384, elements: !1671)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2338, file: !2226, line: 292, baseType: !2349, offset: 4608)
!2349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, elements: !1769)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2231, file: !2226, line: 309, baseType: !2351, size: 32768)
!2351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 32768, elements: !2352)
!2352 = !{!2353}
!2353 = !DISubrange(count: 4096)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1261, file: !773, line: 378, baseType: !2355, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1257, file: !773, line: 384, baseType: !1548, size: 192, offset: 192)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1026, file: !773, line: 500, baseType: !293, offset: 6656)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1026, file: !773, line: 501, baseType: !2359, size: 64, offset: 6656)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !773, line: 387, flags: DIFlagFwdDecl)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1026, file: !773, line: 516, baseType: !1759, size: 64, offset: 6720)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1026, file: !773, line: 519, baseType: !408, size: 64, offset: 6784)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1026, file: !773, line: 521, baseType: !2364, size: 64, offset: 6848)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !773, line: 521, flags: DIFlagFwdDecl)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1026, file: !773, line: 545, baseType: !797, size: 32, offset: 6912)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1026, file: !773, line: 548, baseType: !538, size: 8, offset: 6944)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1026, file: !773, line: 550, baseType: !2369, offset: 6952)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2370, line: 142, elements: !307)
!2370 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1026, file: !773, line: 554, baseType: !2002, size: 256, offset: 6976)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1026, file: !773, line: 557, baseType: !210, size: 32, offset: 7232)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1023, file: !773, line: 565, baseType: !2374, offset: 7296)
!2374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, elements: !2375)
!2375 = !{!2376}
!2376 = !DISubrange(count: -1)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1019, file: !773, line: 151, baseType: !797, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1012, file: !773, line: 156, baseType: !293, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !773, line: 159, baseType: !2380, size: 128)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !773, line: 159, size: 128, elements: !2381)
!2381 = !{!2382, !2446}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2380, file: !773, line: 161, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !38, line: 110, size: 1152, elements: !2385)
!2385 = !{!2386, !2396, !2417, !2418, !2419, !2420, !2421, !2433, !2434, !2435}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2384, file: !38, line: 111, baseType: !2387, size: 384)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !38, line: 19, size: 384, elements: !2388)
!2388 = !{!2389, !2391, !2392, !2393, !2394, !2395}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2387, file: !38, line: 20, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2387, file: !38, line: 21, baseType: !2390, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2387, file: !38, line: 22, baseType: !2390, size: 64, offset: 128)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2387, file: !38, line: 23, baseType: !238, size: 64, offset: 192)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2387, file: !38, line: 24, baseType: !238, size: 64, offset: 256)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2387, file: !38, line: 25, baseType: !238, size: 64, offset: 320)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2384, file: !38, line: 112, baseType: !2397, size: 64, offset: 384)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2399, line: 105, size: 128, elements: !2400)
!2399 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2400 = !{!2401, !2402}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2398, file: !2399, line: 110, baseType: !238, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2398, file: !2399, line: 118, baseType: !2403, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2399, line: 95, size: 448, elements: !2405)
!2405 = !{!2406, !2407, !2412, !2413, !2414, !2415, !2416}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2404, file: !2399, line: 96, baseType: !821, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2404, file: !2399, line: 97, baseType: !2408, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2399, line: 60, baseType: !2410)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{null, !2397}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2404, file: !2399, line: 98, baseType: !2408, size: 64, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2404, file: !2399, line: 99, baseType: !538, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2404, file: !2399, line: 100, baseType: !538, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2404, file: !2399, line: 101, baseType: !421, size: 128, align: 64, offset: 256)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2404, file: !2399, line: 102, baseType: !2397, size: 64, offset: 384)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2384, file: !38, line: 113, baseType: !2398, size: 128, offset: 448)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2384, file: !38, line: 114, baseType: !1548, size: 192, offset: 576)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2384, file: !38, line: 115, baseType: !37, size: 32, offset: 768)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2384, file: !38, line: 116, baseType: !7, size: 32, offset: 800)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2384, file: !38, line: 117, baseType: !2422, size: 64, offset: 832)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2424)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !38, line: 67, size: 256, elements: !2425)
!2425 = !{!2426, !2427, !2431, !2432}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2424, file: !38, line: 73, baseType: !890, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2424, file: !38, line: 78, baseType: !2428, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{null, !2383}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2424, file: !38, line: 83, baseType: !2428, size: 64, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2424, file: !38, line: 89, baseType: !1075, size: 64, offset: 192)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2384, file: !38, line: 118, baseType: !237, size: 64, offset: 896)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2384, file: !38, line: 119, baseType: !241, size: 32, offset: 960)
!2435 = !DIDerivedType(tag: DW_TAG_member, scope: !2384, file: !38, line: 120, baseType: !2436, size: 128, offset: 1024)
!2436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2384, file: !38, line: 120, size: 128, elements: !2437)
!2437 = !{!2438, !2444}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2436, file: !38, line: 121, baseType: !2439, size: 128)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2440, line: 6, size: 128, elements: !2441)
!2440 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2441 = !{!2442, !2443}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2439, file: !2440, line: 7, baseType: !220, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2439, file: !2440, line: 8, baseType: !220, size: 64, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2436, file: !38, line: 122, baseType: !2445)
!2445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2439, elements: !1769)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2380, file: !773, line: 162, baseType: !237, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !777, file: !773, line: 176, baseType: !421, size: 128, align: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !773, line: 179, baseType: !2449, size: 32, offset: 384)
!2449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !772, file: !773, line: 179, size: 32, elements: !2450)
!2450 = !{!2451, !2452, !2453, !2454}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2449, file: !773, line: 184, baseType: !797, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2449, file: !773, line: 192, baseType: !7, size: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2449, file: !773, line: 194, baseType: !7, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2449, file: !773, line: 195, baseType: !241, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !772, file: !773, line: 199, baseType: !797, size: 32, offset: 416)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !707, file: !51, line: 1964, baseType: !2457, size: 64, offset: 1344)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!367, !647, !2460}
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2462, line: 12, size: 256, elements: !2463)
!2462 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2463 = !{!2464, !2465, !2466, !2467, !2468}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2461, file: !2462, line: 13, baseType: !239, size: 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2461, file: !2462, line: 16, baseType: !241, size: 32, offset: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2461, file: !2462, line: 23, baseType: !238, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2461, file: !2462, line: 30, baseType: !238, size: 64, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2461, file: !2462, line: 33, baseType: !2469, size: 64, offset: 192)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !773, line: 27, flags: DIFlagFwdDecl)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !707, file: !51, line: 1966, baseType: !2457, size: 64, offset: 1408)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !648, file: !51, line: 1424, baseType: !2473, size: 64, offset: 448)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2475)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !45, line: 322, size: 704, elements: !2476)
!2476 = !{!2477, !2523, !2527, !2531, !2532, !2533, !2534, !2535, !2540, !2545, !2549}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2475, file: !45, line: 323, baseType: !2478, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!241, !2481}
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !45, line: 294, size: 1600, elements: !2483)
!2483 = !{!2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2508, !2509, !2510}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2482, file: !45, line: 295, baseType: !689, size: 128)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2482, file: !45, line: 296, baseType: !249, size: 128, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2482, file: !45, line: 297, baseType: !249, size: 128, offset: 256)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2482, file: !45, line: 298, baseType: !249, size: 128, offset: 384)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2482, file: !45, line: 299, baseType: !1221, size: 192, offset: 512)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2482, file: !45, line: 300, baseType: !293, offset: 704)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2482, file: !45, line: 301, baseType: !797, size: 32, offset: 704)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2482, file: !45, line: 302, baseType: !647, size: 64, offset: 768)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2482, file: !45, line: 303, baseType: !2493, size: 64, offset: 832)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !45, line: 68, size: 64, elements: !2494)
!2494 = !{!2495, !2507}
!2495 = !DIDerivedType(tag: DW_TAG_member, scope: !2493, file: !45, line: 69, baseType: !2496, size: 32)
!2496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2493, file: !45, line: 69, size: 32, elements: !2497)
!2497 = !{!2498, !2499, !2500}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2496, file: !45, line: 70, baseType: !483, size: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2496, file: !45, line: 71, baseType: !491, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2496, file: !45, line: 72, baseType: !2501, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2502, line: 24, baseType: !2503)
!2502 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2502, line: 22, size: 32, elements: !2504)
!2504 = !{!2505}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2503, file: !2502, line: 23, baseType: !2506, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2502, line: 20, baseType: !489)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2493, file: !45, line: 74, baseType: !44, size: 32, offset: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2482, file: !45, line: 304, baseType: !579, size: 64, offset: 896)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2482, file: !45, line: 305, baseType: !238, size: 64, offset: 960)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2482, file: !45, line: 306, baseType: !2511, size: 576, offset: 1024)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !45, line: 205, size: 576, elements: !2512)
!2512 = !{!2513, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2511, file: !45, line: 206, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !45, line: 66, baseType: !581)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2511, file: !45, line: 207, baseType: !2514, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2511, file: !45, line: 208, baseType: !2514, size: 64, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2511, file: !45, line: 209, baseType: !2514, size: 64, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2511, file: !45, line: 210, baseType: !2514, size: 64, offset: 256)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2511, file: !45, line: 211, baseType: !2514, size: 64, offset: 320)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2511, file: !45, line: 212, baseType: !2514, size: 64, offset: 384)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2511, file: !45, line: 213, baseType: !587, size: 64, offset: 448)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2511, file: !45, line: 214, baseType: !587, size: 64, offset: 512)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2475, file: !45, line: 324, baseType: !2524, size: 64, offset: 64)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!2481, !647, !241}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2475, file: !45, line: 325, baseType: !2528, size: 64, offset: 128)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{null, !2481}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2475, file: !45, line: 326, baseType: !2478, size: 64, offset: 192)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2475, file: !45, line: 327, baseType: !2478, size: 64, offset: 256)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2475, file: !45, line: 328, baseType: !2478, size: 64, offset: 320)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2475, file: !45, line: 329, baseType: !735, size: 64, offset: 384)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2475, file: !45, line: 332, baseType: !2536, size: 64, offset: 448)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!2539, !477}
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2475, file: !45, line: 333, baseType: !2541, size: 64, offset: 512)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!241, !477, !2544}
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2475, file: !45, line: 335, baseType: !2546, size: 64, offset: 576)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!241, !477, !2539}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2475, file: !45, line: 337, baseType: !2550, size: 64, offset: 640)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!241, !647, !2553}
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !648, file: !51, line: 1425, baseType: !2555, size: 64, offset: 512)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2557)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !45, line: 428, size: 704, elements: !2558)
!2558 = !{!2559, !2563, !2564, !2568, !2569, !2570, !2585, !2608, !2612, !2613, !2636}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2557, file: !45, line: 429, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!241, !647, !241, !241, !597}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2557, file: !45, line: 430, baseType: !735, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2557, file: !45, line: 431, baseType: !2565, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!241, !647, !7}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2557, file: !45, line: 432, baseType: !2565, size: 64, offset: 192)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2557, file: !45, line: 433, baseType: !735, size: 64, offset: 256)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2557, file: !45, line: 434, baseType: !2571, size: 64, offset: 320)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!241, !647, !241, !2574}
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !45, line: 415, size: 256, elements: !2576)
!2576 = !{!2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2575, file: !45, line: 416, baseType: !241, size: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2575, file: !45, line: 417, baseType: !7, size: 32, offset: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2575, file: !45, line: 418, baseType: !7, size: 32, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2575, file: !45, line: 420, baseType: !7, size: 32, offset: 96)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2575, file: !45, line: 421, baseType: !7, size: 32, offset: 128)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2575, file: !45, line: 422, baseType: !7, size: 32, offset: 160)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2575, file: !45, line: 423, baseType: !7, size: 32, offset: 192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2575, file: !45, line: 424, baseType: !7, size: 32, offset: 224)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2557, file: !45, line: 435, baseType: !2586, size: 64, offset: 384)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!241, !647, !2493, !2589}
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !45, line: 343, size: 960, elements: !2591)
!2591 = !{!2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2590, file: !45, line: 344, baseType: !241, size: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2590, file: !45, line: 345, baseType: !220, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2590, file: !45, line: 346, baseType: !220, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2590, file: !45, line: 347, baseType: !220, size: 64, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2590, file: !45, line: 348, baseType: !220, size: 64, offset: 256)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2590, file: !45, line: 349, baseType: !220, size: 64, offset: 320)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2590, file: !45, line: 350, baseType: !220, size: 64, offset: 384)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2590, file: !45, line: 351, baseType: !827, size: 64, offset: 448)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2590, file: !45, line: 353, baseType: !827, size: 64, offset: 512)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2590, file: !45, line: 354, baseType: !241, size: 32, offset: 576)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2590, file: !45, line: 355, baseType: !241, size: 32, offset: 608)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2590, file: !45, line: 356, baseType: !220, size: 64, offset: 640)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2590, file: !45, line: 357, baseType: !220, size: 64, offset: 704)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2590, file: !45, line: 358, baseType: !220, size: 64, offset: 768)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2590, file: !45, line: 359, baseType: !827, size: 64, offset: 832)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2590, file: !45, line: 360, baseType: !241, size: 32, offset: 896)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2557, file: !45, line: 436, baseType: !2609, size: 64, offset: 448)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!241, !647, !2553, !2589}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2557, file: !45, line: 438, baseType: !2586, size: 64, offset: 512)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2557, file: !45, line: 439, baseType: !2614, size: 64, offset: 576)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!241, !647, !2617}
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !45, line: 409, size: 1408, elements: !2619)
!2619 = !{!2620, !2621}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2618, file: !45, line: 410, baseType: !7, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2618, file: !45, line: 411, baseType: !2622, size: 1344, offset: 64)
!2622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2623, size: 1344, elements: !232)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !45, line: 395, size: 448, elements: !2624)
!2624 = !{!2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2635}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2623, file: !45, line: 396, baseType: !7, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2623, file: !45, line: 397, baseType: !7, size: 32, offset: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2623, file: !45, line: 399, baseType: !7, size: 32, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2623, file: !45, line: 400, baseType: !7, size: 32, offset: 96)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2623, file: !45, line: 401, baseType: !7, size: 32, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2623, file: !45, line: 402, baseType: !7, size: 32, offset: 160)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2623, file: !45, line: 403, baseType: !7, size: 32, offset: 192)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2623, file: !45, line: 404, baseType: !222, size: 64, offset: 256)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2623, file: !45, line: 405, baseType: !2634, size: 64, offset: 320)
!2634 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !240, line: 126, baseType: !220)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2623, file: !45, line: 406, baseType: !2634, size: 64, offset: 384)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2557, file: !45, line: 440, baseType: !2565, size: 64, offset: 640)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !648, file: !51, line: 1426, baseType: !2638, size: 64, offset: 576)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2640)
!2640 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !51, line: 49, flags: DIFlagFwdDecl)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !648, file: !51, line: 1427, baseType: !238, size: 64, offset: 640)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !648, file: !51, line: 1428, baseType: !238, size: 64, offset: 704)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !648, file: !51, line: 1429, baseType: !238, size: 64, offset: 768)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !648, file: !51, line: 1430, baseType: !438, size: 64, offset: 832)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !648, file: !51, line: 1431, baseType: !817, size: 256, offset: 896)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !648, file: !51, line: 1432, baseType: !241, size: 32, offset: 1152)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !648, file: !51, line: 1433, baseType: !797, size: 32, offset: 1184)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !648, file: !51, line: 1437, baseType: !2649, size: 64, offset: 1216)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2652)
!2652 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !51, line: 1437, flags: DIFlagFwdDecl)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !648, file: !51, line: 1449, baseType: !2654, size: 64, offset: 1280)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !454, line: 34, size: 64, elements: !2655)
!2655 = !{!2656}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2654, file: !454, line: 35, baseType: !457, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !648, file: !51, line: 1450, baseType: !249, size: 128, offset: 1344)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !648, file: !51, line: 1451, baseType: !2659, size: 64, offset: 1472)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !51, line: 699, flags: DIFlagFwdDecl)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !648, file: !51, line: 1452, baseType: !1968, size: 64, offset: 1536)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !648, file: !51, line: 1453, baseType: !2663, size: 64, offset: 1600)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !51, line: 1453, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !648, file: !51, line: 1454, baseType: !689, size: 128, offset: 1664)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !648, file: !51, line: 1455, baseType: !7, size: 32, offset: 1792)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !648, file: !51, line: 1456, baseType: !2668, size: 2432, offset: 1856)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !45, line: 518, size: 2432, elements: !2669)
!2669 = !{!2670, !2671, !2672, !2674, !2706}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2668, file: !45, line: 519, baseType: !7, size: 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2668, file: !45, line: 520, baseType: !817, size: 256, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2668, file: !45, line: 521, baseType: !2673, size: 192, offset: 320)
!2673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 192, elements: !232)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2668, file: !45, line: 522, baseType: !2675, size: 1728, offset: 512)
!2675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2676, size: 1728, elements: !232)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !45, line: 222, size: 576, elements: !2677)
!2677 = !{!2678, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2676, file: !45, line: 223, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !45, line: 443, size: 256, elements: !2681)
!2681 = !{!2682, !2683, !2696, !2697}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2680, file: !45, line: 444, baseType: !241, size: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2680, file: !45, line: 445, baseType: !2684, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2686)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !45, line: 310, size: 512, elements: !2687)
!2687 = !{!2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2686, file: !45, line: 311, baseType: !735, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2686, file: !45, line: 312, baseType: !735, size: 64, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2686, file: !45, line: 313, baseType: !735, size: 64, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2686, file: !45, line: 314, baseType: !735, size: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2686, file: !45, line: 315, baseType: !2478, size: 64, offset: 256)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2686, file: !45, line: 316, baseType: !2478, size: 64, offset: 320)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2686, file: !45, line: 317, baseType: !2478, size: 64, offset: 384)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2686, file: !45, line: 318, baseType: !2550, size: 64, offset: 448)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2680, file: !45, line: 446, baseType: !680, size: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2680, file: !45, line: 447, baseType: !2679, size: 64, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2676, file: !45, line: 224, baseType: !241, size: 32, offset: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2676, file: !45, line: 226, baseType: !249, size: 128, offset: 128)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2676, file: !45, line: 227, baseType: !238, size: 64, offset: 256)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2676, file: !45, line: 228, baseType: !7, size: 32, offset: 320)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2676, file: !45, line: 229, baseType: !7, size: 32, offset: 352)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2676, file: !45, line: 230, baseType: !2514, size: 64, offset: 384)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2676, file: !45, line: 231, baseType: !2514, size: 64, offset: 448)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2676, file: !45, line: 232, baseType: !237, size: 64, offset: 512)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2668, file: !45, line: 523, baseType: !2707, size: 192, offset: 2240)
!2707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2684, size: 192, elements: !232)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !648, file: !51, line: 1458, baseType: !2709, size: 2112, offset: 4288)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !51, line: 1410, size: 2112, elements: !2710)
!2710 = !{!2711, !2712, !2713}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2709, file: !51, line: 1411, baseType: !241, size: 32)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2709, file: !51, line: 1412, baseType: !1527, size: 128, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2709, file: !51, line: 1413, baseType: !2714, size: 1920, offset: 192)
!2714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2715, size: 1920, elements: !232)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2716, line: 12, size: 640, elements: !2717)
!2716 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2717 = !{!2718, !2726, !2728, !2733, !2734}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2715, file: !2716, line: 13, baseType: !2719, size: 320)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2720, line: 17, size: 320, elements: !2721)
!2720 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2721 = !{!2722, !2723, !2724, !2725}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2719, file: !2720, line: 18, baseType: !241, size: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2719, file: !2720, line: 19, baseType: !241, size: 32, offset: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2719, file: !2720, line: 20, baseType: !1527, size: 128, offset: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2719, file: !2720, line: 22, baseType: !421, size: 128, align: 64, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2715, file: !2716, line: 14, baseType: !2727, size: 64, offset: 320)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2715, file: !2716, line: 15, baseType: !2729, size: 64, offset: 384)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2730, line: 16, size: 64, elements: !2731)
!2730 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2731 = !{!2732}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2729, file: !2730, line: 17, baseType: !1264, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2715, file: !2716, line: 16, baseType: !1527, size: 128, offset: 448)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2715, file: !2716, line: 17, baseType: !797, size: 32, offset: 576)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !648, file: !51, line: 1465, baseType: !237, size: 64, offset: 6400)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !648, file: !51, line: 1468, baseType: !210, size: 32, offset: 6464)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !648, file: !51, line: 1470, baseType: !587, size: 64, offset: 6528)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !648, file: !51, line: 1471, baseType: !587, size: 64, offset: 6592)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !648, file: !51, line: 1473, baseType: !212, size: 32, offset: 6656)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !648, file: !51, line: 1474, baseType: !2741, size: 64, offset: 6720)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !51, line: 603, flags: DIFlagFwdDecl)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !648, file: !51, line: 1477, baseType: !2744, size: 256, offset: 6784)
!2744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 256, elements: !2274)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !648, file: !51, line: 1478, baseType: !2746, size: 128, offset: 7040)
!2746 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2747, line: 18, baseType: !2748)
!2747 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2747, line: 16, size: 128, elements: !2749)
!2749 = !{!2750}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2748, file: !2747, line: 17, baseType: !264, size: 128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !648, file: !51, line: 1480, baseType: !7, size: 32, offset: 7168)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !648, file: !51, line: 1481, baseType: !2753, size: 32, offset: 7200)
!2753 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !240, line: 150, baseType: !7)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !648, file: !51, line: 1487, baseType: !1221, size: 192, offset: 7232)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !648, file: !51, line: 1493, baseType: !281, size: 64, offset: 7424)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !648, file: !51, line: 1495, baseType: !2757, size: 64, offset: 7488)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2759)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !436, line: 135, size: 1024, align: 512, elements: !2760)
!2760 = !{!2761, !2765, !2766, !2773, !2779, !2783, !2787, !2791, !2792, !2796, !2800, !2805, !2809}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2759, file: !436, line: 136, baseType: !2762, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!241, !438, !7}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2759, file: !436, line: 137, baseType: !2762, size: 64, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2759, file: !436, line: 138, baseType: !2767, size: 64, offset: 128)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!241, !2770, !2772}
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2759, file: !436, line: 139, baseType: !2774, size: 64, offset: 192)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!241, !2770, !7, !281, !2777}
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2759, file: !436, line: 141, baseType: !2780, size: 64, offset: 256)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!241, !2770}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2759, file: !436, line: 142, baseType: !2784, size: 64, offset: 320)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!241, !438}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2759, file: !436, line: 143, baseType: !2788, size: 64, offset: 384)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{null, !438}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2759, file: !436, line: 144, baseType: !2788, size: 64, offset: 448)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2759, file: !436, line: 145, baseType: !2793, size: 64, offset: 512)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{null, !438, !477}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2759, file: !436, line: 146, baseType: !2797, size: 64, offset: 576)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!334, !438, !334, !241}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2759, file: !436, line: 147, baseType: !2801, size: 64, offset: 640)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!434, !2804}
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2759, file: !436, line: 148, baseType: !2806, size: 64, offset: 704)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!241, !597, !538}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2759, file: !436, line: 149, baseType: !2810, size: 64, offset: 768)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!438, !438, !2813}
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !648, file: !51, line: 1500, baseType: !241, size: 32, offset: 7552)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !648, file: !51, line: 1502, baseType: !2817, size: 448, offset: 7616)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2462, line: 60, size: 448, elements: !2818)
!2818 = !{!2819, !2824, !2825, !2826, !2827, !2828, !2829}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2817, file: !2462, line: 61, baseType: !2820, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!238, !2823, !2460}
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2817, file: !2462, line: 63, baseType: !2820, size: 64, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2817, file: !2462, line: 66, baseType: !367, size: 64, offset: 128)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2817, file: !2462, line: 67, baseType: !241, size: 32, offset: 192)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2817, file: !2462, line: 68, baseType: !7, size: 32, offset: 224)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2817, file: !2462, line: 71, baseType: !249, size: 128, offset: 256)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2817, file: !2462, line: 77, baseType: !2830, size: 64, offset: 384)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !648, file: !51, line: 1505, baseType: !821, size: 64, offset: 8064)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !648, file: !51, line: 1508, baseType: !821, size: 64, offset: 8128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !648, file: !51, line: 1511, baseType: !241, size: 32, offset: 8192)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !648, file: !51, line: 1514, baseType: !957, size: 32, offset: 8224)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !648, file: !51, line: 1517, baseType: !2836, size: 64, offset: 8256)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !169, line: 18, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !648, file: !51, line: 1518, baseType: !685, size: 64, offset: 8320)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !648, file: !51, line: 1525, baseType: !1759, size: 64, offset: 8384)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !648, file: !51, line: 1532, baseType: !2841, size: 64, offset: 8448)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2842, line: 52, size: 64, elements: !2843)
!2842 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2843 = !{!2844}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2841, file: !2842, line: 53, baseType: !2845, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2842, line: 40, size: 256, elements: !2847)
!2847 = !{!2848, !2849, !2854}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2846, file: !2842, line: 42, baseType: !293)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2846, file: !2842, line: 44, baseType: !2850, size: 192)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2842, line: 28, size: 192, elements: !2851)
!2851 = !{!2852, !2853}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2850, file: !2842, line: 29, baseType: !249, size: 128)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2850, file: !2842, line: 31, baseType: !367, size: 64, offset: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2846, file: !2842, line: 49, baseType: !367, size: 64, offset: 192)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !648, file: !51, line: 1533, baseType: !2841, size: 64, offset: 8512)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !648, file: !51, line: 1534, baseType: !421, size: 128, align: 64, offset: 8576)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !648, file: !51, line: 1535, baseType: !2002, size: 256, offset: 8704)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !648, file: !51, line: 1537, baseType: !1221, size: 192, offset: 8960)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !648, file: !51, line: 1542, baseType: !241, size: 32, offset: 9152)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !648, file: !51, line: 1545, baseType: !293, offset: 9184)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !648, file: !51, line: 1546, baseType: !249, size: 128, offset: 9216)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !648, file: !51, line: 1548, baseType: !293, offset: 9344)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !648, file: !51, line: 1549, baseType: !249, size: 128, offset: 9344)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !478, file: !51, line: 624, baseType: !784, size: 64, offset: 256)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !478, file: !51, line: 631, baseType: !238, size: 64, offset: 320)
!2866 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !51, line: 639, baseType: !2867, size: 32, offset: 384)
!2867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !478, file: !51, line: 639, size: 32, elements: !2868)
!2868 = !{!2869, !2871}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2867, file: !51, line: 640, baseType: !2870, size: 32)
!2870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2867, file: !51, line: 641, baseType: !7, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !478, file: !51, line: 643, baseType: !561, size: 32, offset: 416)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !478, file: !51, line: 644, baseType: !579, size: 64, offset: 448)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !478, file: !51, line: 645, baseType: !583, size: 128, offset: 512)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !478, file: !51, line: 646, baseType: !583, size: 128, offset: 640)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !478, file: !51, line: 647, baseType: !583, size: 128, offset: 768)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !478, file: !51, line: 648, baseType: !293, offset: 896)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !478, file: !51, line: 649, baseType: !271, size: 16, offset: 896)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !478, file: !51, line: 650, baseType: !227, size: 8, offset: 912)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !478, file: !51, line: 651, baseType: !227, size: 8, offset: 920)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !478, file: !51, line: 652, baseType: !2634, size: 64, offset: 960)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !478, file: !51, line: 659, baseType: !238, size: 64, offset: 1024)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !478, file: !51, line: 660, baseType: !817, size: 256, offset: 1088)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !478, file: !51, line: 662, baseType: !238, size: 64, offset: 1344)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !478, file: !51, line: 663, baseType: !238, size: 64, offset: 1408)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !478, file: !51, line: 665, baseType: !689, size: 128, offset: 1472)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !478, file: !51, line: 666, baseType: !249, size: 128, offset: 1600)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !478, file: !51, line: 675, baseType: !249, size: 128, offset: 1728)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !478, file: !51, line: 676, baseType: !249, size: 128, offset: 1856)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !478, file: !51, line: 677, baseType: !249, size: 128, offset: 1984)
!2891 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !51, line: 678, baseType: !2892, size: 128, offset: 2112)
!2892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !478, file: !51, line: 678, size: 128, elements: !2893)
!2893 = !{!2894, !2895}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2892, file: !51, line: 679, baseType: !685, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2892, file: !51, line: 680, baseType: !421, size: 128, align: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !478, file: !51, line: 682, baseType: !823, size: 64, offset: 2240)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !478, file: !51, line: 683, baseType: !823, size: 64, offset: 2304)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !478, file: !51, line: 684, baseType: !797, size: 32, offset: 2368)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !478, file: !51, line: 685, baseType: !797, size: 32, offset: 2400)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !478, file: !51, line: 686, baseType: !797, size: 32, offset: 2432)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !478, file: !51, line: 688, baseType: !797, size: 32, offset: 2464)
!2902 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !51, line: 690, baseType: !2903, size: 64, offset: 2496)
!2903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !478, file: !51, line: 690, size: 64, elements: !2904)
!2904 = !{!2905, !3128}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2903, file: !51, line: 691, baseType: !2906, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2908)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !51, line: 1822, size: 2048, elements: !2909)
!2909 = !{!2910, !2911, !2915, !2920, !2924, !2925, !2926, !2930, !2943, !2944, !2952, !2956, !2957, !2961, !2962, !2966, !2971, !2972, !2976, !2980, !3088, !3092, !3093, !3097, !3098, !3102, !3106, !3111, !3115, !3119, !3123, !3127}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2908, file: !51, line: 1823, baseType: !680, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2908, file: !51, line: 1824, baseType: !2912, size: 64, offset: 64)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!579, !408, !579, !241}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2908, file: !51, line: 1825, baseType: !2916, size: 64, offset: 128)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!363, !408, !334, !378, !2919}
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2908, file: !51, line: 1826, baseType: !2921, size: 64, offset: 192)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!363, !408, !281, !378, !2919}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2908, file: !51, line: 1827, baseType: !894, size: 64, offset: 256)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2908, file: !51, line: 1828, baseType: !894, size: 64, offset: 320)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2908, file: !51, line: 1829, baseType: !2927, size: 64, offset: 384)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!241, !897, !538}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2908, file: !51, line: 1830, baseType: !2931, size: 64, offset: 448)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!241, !408, !2934}
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !51, line: 1776, size: 128, elements: !2936)
!2936 = !{!2937, !2942}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2935, file: !51, line: 1777, baseType: !2938, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !51, line: 1773, baseType: !2939)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!241, !2934, !281, !241, !579, !220, !7}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2935, file: !51, line: 1778, baseType: !579, size: 64, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2908, file: !51, line: 1831, baseType: !2931, size: 64, offset: 512)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2908, file: !51, line: 1832, baseType: !2945, size: 64, offset: 576)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!2948, !408, !2950}
!2948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2949, line: 52, baseType: !7)
!2949 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !51, line: 56, flags: DIFlagFwdDecl)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2908, file: !51, line: 1833, baseType: !2953, size: 64, offset: 640)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!367, !408, !7, !238}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2908, file: !51, line: 1834, baseType: !2953, size: 64, offset: 704)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2908, file: !51, line: 1835, baseType: !2958, size: 64, offset: 768)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!241, !408, !1029}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2908, file: !51, line: 1836, baseType: !238, size: 64, offset: 832)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2908, file: !51, line: 1837, baseType: !2963, size: 64, offset: 896)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!241, !477, !408}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2908, file: !51, line: 1838, baseType: !2967, size: 64, offset: 960)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!241, !408, !2970}
!2970 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !51, line: 1007, baseType: !237)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2908, file: !51, line: 1839, baseType: !2963, size: 64, offset: 1024)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2908, file: !51, line: 1840, baseType: !2973, size: 64, offset: 1088)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!241, !408, !579, !579, !241}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2908, file: !51, line: 1841, baseType: !2977, size: 64, offset: 1152)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!241, !241, !408, !241}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2908, file: !51, line: 1842, baseType: !2981, size: 64, offset: 1216)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!241, !408, !241, !2984}
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !51, line: 1062, size: 1664, elements: !2986)
!2986 = !{!2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3018, !3019, !3020, !3033, !3064}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2985, file: !51, line: 1063, baseType: !2984, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2985, file: !51, line: 1064, baseType: !249, size: 128, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2985, file: !51, line: 1065, baseType: !689, size: 128, offset: 192)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2985, file: !51, line: 1066, baseType: !249, size: 128, offset: 320)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2985, file: !51, line: 1069, baseType: !249, size: 128, offset: 448)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2985, file: !51, line: 1072, baseType: !2970, size: 64, offset: 576)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2985, file: !51, line: 1073, baseType: !7, size: 32, offset: 640)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2985, file: !51, line: 1074, baseType: !229, size: 8, offset: 672)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2985, file: !51, line: 1075, baseType: !7, size: 32, offset: 704)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2985, file: !51, line: 1076, baseType: !241, size: 32, offset: 736)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2985, file: !51, line: 1077, baseType: !1527, size: 128, offset: 768)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2985, file: !51, line: 1078, baseType: !408, size: 64, offset: 896)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2985, file: !51, line: 1079, baseType: !579, size: 64, offset: 960)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2985, file: !51, line: 1080, baseType: !579, size: 64, offset: 1024)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2985, file: !51, line: 1082, baseType: !3002, size: 64, offset: 1088)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !51, line: 1314, size: 320, elements: !3004)
!3004 = !{!3005, !3013, !3014, !3015, !3016, !3017}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3003, file: !51, line: 1315, baseType: !3006)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3007, line: 20, baseType: !3008)
!3007 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3007, line: 11, elements: !3009)
!3009 = !{!3010}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3008, file: !3007, line: 12, baseType: !3011)
!3011 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !305, line: 33, baseType: !3012)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !305, line: 31, elements: !307)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3003, file: !51, line: 1316, baseType: !241, size: 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3003, file: !51, line: 1317, baseType: !241, size: 32, offset: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3003, file: !51, line: 1318, baseType: !3002, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3003, file: !51, line: 1319, baseType: !408, size: 64, offset: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3003, file: !51, line: 1320, baseType: !421, size: 128, align: 64, offset: 192)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2985, file: !51, line: 1084, baseType: !238, size: 64, offset: 1152)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2985, file: !51, line: 1085, baseType: !238, size: 64, offset: 1216)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2985, file: !51, line: 1087, baseType: !3021, size: 64, offset: 1280)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3023)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !51, line: 1011, size: 128, elements: !3024)
!3024 = !{!3025, !3029}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3023, file: !51, line: 1012, baseType: !3026, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{null, !2984, !2984}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3023, file: !51, line: 1013, baseType: !3030, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{null, !2984}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2985, file: !51, line: 1088, baseType: !3034, size: 64, offset: 1344)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3036)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !51, line: 1016, size: 512, elements: !3037)
!3037 = !{!3038, !3042, !3046, !3047, !3051, !3055, !3059, !3063}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3036, file: !51, line: 1017, baseType: !3039, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!2970, !2970}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3036, file: !51, line: 1018, baseType: !3043, size: 64, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{null, !2970}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3036, file: !51, line: 1019, baseType: !3030, size: 64, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3036, file: !51, line: 1020, baseType: !3048, size: 64, offset: 192)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!241, !2984, !241}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3036, file: !51, line: 1021, baseType: !3052, size: 64, offset: 256)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!538, !2984}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3036, file: !51, line: 1022, baseType: !3056, size: 64, offset: 320)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!241, !2984, !241, !252}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3036, file: !51, line: 1023, baseType: !3060, size: 64, offset: 384)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{null, !2984, !871}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3036, file: !51, line: 1024, baseType: !3052, size: 64, offset: 448)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2985, file: !51, line: 1097, baseType: !3065, size: 256, offset: 1408)
!3065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2985, file: !51, line: 1089, size: 256, elements: !3066)
!3066 = !{!3067, !3076, !3082}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3065, file: !51, line: 1090, baseType: !3068, size: 256)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3069, line: 10, size: 256, elements: !3070)
!3069 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3070 = !{!3071, !3072, !3075}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3068, file: !3069, line: 11, baseType: !210, size: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3068, file: !3069, line: 12, baseType: !3073, size: 64, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3069, line: 5, flags: DIFlagFwdDecl)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3068, file: !3069, line: 13, baseType: !249, size: 128, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3065, file: !51, line: 1091, baseType: !3077, size: 64)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3069, line: 17, size: 64, elements: !3078)
!3078 = !{!3079}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3077, file: !3069, line: 18, baseType: !3080, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3069, line: 16, flags: DIFlagFwdDecl)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3065, file: !51, line: 1096, baseType: !3083, size: 192)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !51, line: 1092, size: 192, elements: !3084)
!3084 = !{!3085, !3086, !3087}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3083, file: !51, line: 1093, baseType: !249, size: 128)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3083, file: !51, line: 1094, baseType: !241, size: 32, offset: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3083, file: !51, line: 1095, baseType: !7, size: 32, offset: 160)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2908, file: !51, line: 1843, baseType: !3089, size: 64, offset: 1280)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!363, !408, !771, !241, !378, !2919, !241}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2908, file: !51, line: 1844, baseType: !1149, size: 64, offset: 1344)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2908, file: !51, line: 1845, baseType: !3094, size: 64, offset: 1408)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!241, !241}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2908, file: !51, line: 1846, baseType: !2981, size: 64, offset: 1472)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2908, file: !51, line: 1847, baseType: !3099, size: 64, offset: 1536)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!363, !2142, !408, !2919, !378, !7}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2908, file: !51, line: 1848, baseType: !3103, size: 64, offset: 1600)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!363, !408, !2919, !2142, !378, !7}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2908, file: !51, line: 1849, baseType: !3107, size: 64, offset: 1664)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!241, !408, !367, !3110, !871}
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2908, file: !51, line: 1850, baseType: !3112, size: 64, offset: 1728)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!367, !408, !241, !579, !579}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2908, file: !51, line: 1852, baseType: !3116, size: 64, offset: 1792)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{null, !761, !408}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2908, file: !51, line: 1856, baseType: !3120, size: 64, offset: 1856)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!363, !408, !579, !408, !579, !378, !7}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2908, file: !51, line: 1858, baseType: !3124, size: 64, offset: 1920)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!579, !408, !579, !408, !579, !579, !7}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2908, file: !51, line: 1861, baseType: !2973, size: 64, offset: 1984)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2903, file: !51, line: 692, baseType: !714, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !478, file: !51, line: 694, baseType: !3130, size: 64, offset: 2560)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !51, line: 1100, size: 384, elements: !3132)
!3132 = !{!3133, !3134, !3135, !3136}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3131, file: !51, line: 1101, baseType: !293)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3131, file: !51, line: 1102, baseType: !249, size: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3131, file: !51, line: 1103, baseType: !249, size: 128, offset: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3131, file: !51, line: 1104, baseType: !249, size: 128, offset: 256)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !478, file: !51, line: 695, baseType: !785, size: 1216, align: 64, offset: 2624)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !478, file: !51, line: 696, baseType: !249, size: 128, offset: 3840)
!3139 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !51, line: 697, baseType: !3140, size: 64, offset: 3968)
!3140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !478, file: !51, line: 697, size: 64, elements: !3141)
!3141 = !{!3142, !3143, !3144, !3147, !3148}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3140, file: !51, line: 698, baseType: !2142, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3140, file: !51, line: 699, baseType: !2659, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3140, file: !51, line: 700, baseType: !3145, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !51, line: 700, flags: DIFlagFwdDecl)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3140, file: !51, line: 701, baseType: !334, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3140, file: !51, line: 702, baseType: !7, size: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !478, file: !51, line: 705, baseType: !212, size: 32, offset: 4032)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !478, file: !51, line: 708, baseType: !212, size: 32, offset: 4064)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !478, file: !51, line: 709, baseType: !2741, size: 64, offset: 4096)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !478, file: !51, line: 720, baseType: !237, size: 64, offset: 4160)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !439, file: !436, line: 98, baseType: !3154, size: 256, offset: 448)
!3154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 256, elements: !2274)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !439, file: !436, line: 101, baseType: !3156, size: 32, offset: 704)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3157, line: 25, size: 32, elements: !3158)
!3157 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3158 = !{!3159}
!3159 = !DIDerivedType(tag: DW_TAG_member, scope: !3156, file: !3157, line: 26, baseType: !3160, size: 32)
!3160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3156, file: !3157, line: 26, size: 32, elements: !3161)
!3161 = !{!3162}
!3162 = !DIDerivedType(tag: DW_TAG_member, scope: !3160, file: !3157, line: 30, baseType: !3163, size: 32)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3160, file: !3157, line: 30, size: 32, elements: !3164)
!3164 = !{!3165, !3166}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3163, file: !3157, line: 31, baseType: !293)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3163, file: !3157, line: 32, baseType: !241, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !439, file: !436, line: 102, baseType: !2757, size: 64, offset: 768)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !439, file: !436, line: 103, baseType: !647, size: 64, offset: 832)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !439, file: !436, line: 104, baseType: !238, size: 64, offset: 896)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !439, file: !436, line: 105, baseType: !237, size: 64, offset: 960)
!3171 = !DIDerivedType(tag: DW_TAG_member, scope: !439, file: !436, line: 107, baseType: !3172, size: 128, offset: 1024)
!3172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !439, file: !436, line: 107, size: 128, elements: !3173)
!3173 = !{!3174, !3175}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3172, file: !436, line: 108, baseType: !249, size: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3172, file: !436, line: 109, baseType: !3176, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !439, file: !436, line: 111, baseType: !249, size: 128, offset: 1152)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !439, file: !436, line: 112, baseType: !249, size: 128, offset: 1280)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !439, file: !436, line: 120, baseType: !3180, size: 128, offset: 1408)
!3180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !439, file: !436, line: 116, size: 128, elements: !3181)
!3181 = !{!3182, !3183, !3184}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3180, file: !436, line: 117, baseType: !689, size: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3180, file: !436, line: 118, baseType: !453, size: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3180, file: !436, line: 119, baseType: !421, size: 128, align: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !409, file: !51, line: 922, baseType: !477, size: 64, offset: 256)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !409, file: !51, line: 923, baseType: !2906, size: 64, offset: 320)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !409, file: !51, line: 929, baseType: !293, offset: 384)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !409, file: !51, line: 930, baseType: !50, size: 32, offset: 384)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !409, file: !51, line: 931, baseType: !821, size: 64, offset: 448)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !409, file: !51, line: 932, baseType: !7, size: 32, offset: 512)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !409, file: !51, line: 933, baseType: !2753, size: 32, offset: 544)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !409, file: !51, line: 934, baseType: !1221, size: 192, offset: 576)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !409, file: !51, line: 935, baseType: !579, size: 64, offset: 768)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !409, file: !51, line: 936, baseType: !3195, size: 192, offset: 832)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !51, line: 885, size: 192, elements: !3196)
!3196 = !{!3197, !3198, !3199, !3200, !3201, !3202}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3195, file: !51, line: 886, baseType: !3006)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3195, file: !51, line: 887, baseType: !1517, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3195, file: !51, line: 888, baseType: !59, size: 32, offset: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3195, file: !51, line: 889, baseType: !483, size: 32, offset: 96)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3195, file: !51, line: 889, baseType: !483, size: 32, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3195, file: !51, line: 890, baseType: !241, size: 32, offset: 160)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !409, file: !51, line: 937, baseType: !1593, size: 64, offset: 1024)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !409, file: !51, line: 938, baseType: !3205, size: 256, offset: 1088)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !51, line: 896, size: 256, elements: !3206)
!3206 = !{!3207, !3208, !3209, !3210, !3211, !3212}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3205, file: !51, line: 897, baseType: !238, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3205, file: !51, line: 898, baseType: !7, size: 32, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3205, file: !51, line: 899, baseType: !7, size: 32, offset: 96)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3205, file: !51, line: 902, baseType: !7, size: 32, offset: 128)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3205, file: !51, line: 903, baseType: !7, size: 32, offset: 160)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3205, file: !51, line: 904, baseType: !579, size: 64, offset: 192)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !409, file: !51, line: 940, baseType: !220, size: 64, offset: 1344)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !409, file: !51, line: 945, baseType: !237, size: 64, offset: 1408)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !409, file: !51, line: 949, baseType: !249, size: 128, offset: 1472)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !409, file: !51, line: 950, baseType: !249, size: 128, offset: 1600)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !409, file: !51, line: 952, baseType: !784, size: 64, offset: 1728)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !409, file: !51, line: 953, baseType: !957, size: 32, offset: 1792)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !409, file: !51, line: 954, baseType: !957, size: 32, offset: 1824)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !399, file: !357, line: 174, baseType: !405, size: 64, offset: 320)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !399, file: !357, line: 176, baseType: !3222, size: 64, offset: 384)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!241, !408, !286, !398, !1029}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !387, file: !357, line: 90, baseType: !382, size: 64, offset: 192)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !387, file: !357, line: 91, baseType: !3227, size: 64, offset: 256)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !347, file: !278, line: 143, baseType: !3229, size: 64, offset: 256)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!3232, !286}
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3234)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !68, line: 39, size: 384, elements: !3235)
!3235 = !{!3236, !3237, !3241, !3245, !3251, !3255}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3234, file: !68, line: 40, baseType: !67, size: 32)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3234, file: !68, line: 41, baseType: !3238, size: 64, offset: 64)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!538}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3234, file: !68, line: 42, baseType: !3242, size: 64, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!237}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3234, file: !68, line: 43, baseType: !3246, size: 64, offset: 192)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!2171, !3249}
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !68, line: 19, flags: DIFlagFwdDecl)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3234, file: !68, line: 44, baseType: !3252, size: 64, offset: 256)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!2171}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3234, file: !68, line: 45, baseType: !516, size: 64, offset: 320)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !347, file: !278, line: 144, baseType: !3257, size: 64, offset: 320)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!2171, !286}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !347, file: !278, line: 145, baseType: !3261, size: 64, offset: 384)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{null, !286, !3264, !3265}
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !277, file: !278, line: 70, baseType: !3267, size: 64, offset: 384)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3269, line: 123, size: 1024, elements: !3270)
!3269 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!3270 = !{!3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3399, !3400, !3401, !3402, !3403}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3268, file: !3269, line: 124, baseType: !797, size: 32)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3268, file: !3269, line: 125, baseType: !797, size: 32, offset: 32)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3268, file: !3269, line: 135, baseType: !3267, size: 64, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3268, file: !3269, line: 136, baseType: !281, size: 64, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3268, file: !3269, line: 138, baseType: !810, size: 192, align: 64, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3268, file: !3269, line: 140, baseType: !2171, size: 64, offset: 384)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3268, file: !3269, line: 141, baseType: !7, size: 32, offset: 448)
!3278 = !DIDerivedType(tag: DW_TAG_member, scope: !3268, file: !3269, line: 142, baseType: !3279, size: 256, offset: 512)
!3279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3268, file: !3269, line: 142, size: 256, elements: !3280)
!3280 = !{!3281, !3327, !3331}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3279, file: !3269, line: 143, baseType: !3282, size: 192)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3269, line: 91, size: 192, elements: !3283)
!3283 = !{!3284, !3285, !3286}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3282, file: !3269, line: 92, baseType: !238, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3282, file: !3269, line: 94, baseType: !806, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3282, file: !3269, line: 100, baseType: !3287, size: 64, offset: 128)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3269, line: 180, size: 704, elements: !3289)
!3289 = !{!3290, !3291, !3292, !3299, !3300, !3301, !3325, !3326}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3288, file: !3269, line: 182, baseType: !3267, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3288, file: !3269, line: 183, baseType: !7, size: 32, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3288, file: !3269, line: 186, baseType: !3293, size: 192, offset: 128)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3294, line: 19, size: 192, elements: !3295)
!3294 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3295 = !{!3296, !3297, !3298}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3293, file: !3294, line: 20, baseType: !789, size: 128)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3293, file: !3294, line: 21, baseType: !7, size: 32, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3293, file: !3294, line: 22, baseType: !7, size: 32, offset: 160)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3288, file: !3269, line: 187, baseType: !210, size: 32, offset: 320)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3288, file: !3269, line: 188, baseType: !210, size: 32, offset: 352)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3288, file: !3269, line: 189, baseType: !3302, size: 64, offset: 384)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !3269, line: 168, size: 320, elements: !3304)
!3304 = !{!3305, !3309, !3313, !3317, !3321}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3303, file: !3269, line: 169, baseType: !3306, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!241, !761, !3287}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3303, file: !3269, line: 171, baseType: !3310, size: 64, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!241, !3267, !281, !373}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3303, file: !3269, line: 173, baseType: !3314, size: 64, offset: 128)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!241, !3267}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3303, file: !3269, line: 174, baseType: !3318, size: 64, offset: 192)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!241, !3267, !3267, !281}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3303, file: !3269, line: 176, baseType: !3322, size: 64, offset: 256)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!241, !761, !3267, !3287}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3288, file: !3269, line: 192, baseType: !249, size: 128, offset: 448)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3288, file: !3269, line: 194, baseType: !1527, size: 128, offset: 576)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3279, file: !3269, line: 144, baseType: !3328, size: 64)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3269, line: 103, size: 64, elements: !3329)
!3329 = !{!3330}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3328, file: !3269, line: 104, baseType: !3267, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3279, file: !3269, line: 145, baseType: !3332, size: 256)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3269, line: 107, size: 256, elements: !3333)
!3333 = !{!3334, !3394, !3397, !3398}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3332, file: !3269, line: 108, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3337)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3269, line: 217, size: 768, elements: !3338)
!3338 = !{!3339, !3359, !3363, !3367, !3371, !3375, !3379, !3383, !3384, !3385, !3386, !3390}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3337, file: !3269, line: 222, baseType: !3340, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!241, !3343}
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3269, line: 197, size: 1088, elements: !3345)
!3345 = !{!3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3344, file: !3269, line: 199, baseType: !3267, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3344, file: !3269, line: 200, baseType: !408, size: 64, offset: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3344, file: !3269, line: 201, baseType: !761, size: 64, offset: 128)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3344, file: !3269, line: 202, baseType: !237, size: 64, offset: 192)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3344, file: !3269, line: 205, baseType: !1221, size: 192, offset: 256)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3344, file: !3269, line: 206, baseType: !1221, size: 192, offset: 448)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3344, file: !3269, line: 207, baseType: !241, size: 32, offset: 640)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3344, file: !3269, line: 208, baseType: !249, size: 128, offset: 704)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3344, file: !3269, line: 209, baseType: !334, size: 64, offset: 832)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3344, file: !3269, line: 211, baseType: !378, size: 64, offset: 896)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3344, file: !3269, line: 212, baseType: !538, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3344, file: !3269, line: 213, baseType: !538, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3344, file: !3269, line: 214, baseType: !1057, size: 64, offset: 1024)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3337, file: !3269, line: 223, baseType: !3360, size: 64, offset: 64)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{null, !3343}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3337, file: !3269, line: 236, baseType: !3364, size: 64, offset: 128)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!241, !761, !237}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3337, file: !3269, line: 238, baseType: !3368, size: 64, offset: 192)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!237, !761, !2919}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3337, file: !3269, line: 239, baseType: !3372, size: 64, offset: 256)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!237, !761, !237, !2919}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3337, file: !3269, line: 240, baseType: !3376, size: 64, offset: 320)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{null, !761, !237}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3337, file: !3269, line: 242, baseType: !3380, size: 64, offset: 384)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!363, !3343, !334, !378, !579}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3337, file: !3269, line: 252, baseType: !378, size: 64, offset: 448)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3337, file: !3269, line: 259, baseType: !538, size: 8, offset: 512)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3337, file: !3269, line: 260, baseType: !3380, size: 64, offset: 576)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3337, file: !3269, line: 263, baseType: !3387, size: 64, offset: 640)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!2948, !3343, !2950}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3337, file: !3269, line: 266, baseType: !3391, size: 64, offset: 704)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!241, !3343, !1029}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3332, file: !3269, line: 109, baseType: !3395, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3269, line: 31, flags: DIFlagFwdDecl)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3332, file: !3269, line: 110, baseType: !579, size: 64, offset: 128)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3332, file: !3269, line: 111, baseType: !3267, size: 64, offset: 192)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3268, file: !3269, line: 148, baseType: !237, size: 64, offset: 768)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3268, file: !3269, line: 154, baseType: !220, size: 64, offset: 832)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3268, file: !3269, line: 156, baseType: !271, size: 16, offset: 896)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3268, file: !3269, line: 157, baseType: !373, size: 16, offset: 912)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3268, file: !3269, line: 158, baseType: !3404, size: 64, offset: 960)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3269, line: 32, flags: DIFlagFwdDecl)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !277, file: !278, line: 71, baseType: !3407, size: 32, offset: 448)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3408, line: 19, size: 32, elements: !3409)
!3408 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3409 = !{!3410}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3407, file: !3408, line: 20, baseType: !1278, size: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !277, file: !278, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !277, file: !278, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !277, file: !278, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !277, file: !278, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !277, file: !278, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !274, file: !80, line: 463, baseType: !3417, size: 64, offset: 512)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !274, file: !80, line: 465, baseType: !3419, size: 64, offset: 576)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !80, line: 36, flags: DIFlagFwdDecl)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !274, file: !80, line: 467, baseType: !281, size: 64, offset: 640)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !274, file: !80, line: 468, baseType: !3423, size: 64, offset: 704)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3425)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !80, line: 87, size: 384, elements: !3426)
!3426 = !{!3427, !3428, !3429, !3433, !3438, !3442}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3425, file: !80, line: 88, baseType: !281, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3425, file: !80, line: 89, baseType: !384, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3425, file: !80, line: 90, baseType: !3430, size: 64, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!241, !3417, !329}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3425, file: !80, line: 91, baseType: !3434, size: 64, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!334, !3417, !3437, !3264, !3265}
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3425, file: !80, line: 93, baseType: !3439, size: 64, offset: 256)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{null, !3417}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3425, file: !80, line: 95, baseType: !3443, size: 64, offset: 320)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3445)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !87, line: 278, size: 1472, elements: !3446)
!3446 = !{!3447, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3445, file: !87, line: 279, baseType: !3448, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!241, !3417}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3445, file: !87, line: 280, baseType: !3439, size: 64, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3445, file: !87, line: 281, baseType: !3448, size: 64, offset: 128)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3445, file: !87, line: 282, baseType: !3448, size: 64, offset: 192)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3445, file: !87, line: 283, baseType: !3448, size: 64, offset: 256)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3445, file: !87, line: 284, baseType: !3448, size: 64, offset: 320)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3445, file: !87, line: 285, baseType: !3448, size: 64, offset: 384)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3445, file: !87, line: 286, baseType: !3448, size: 64, offset: 448)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3445, file: !87, line: 287, baseType: !3448, size: 64, offset: 512)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3445, file: !87, line: 288, baseType: !3448, size: 64, offset: 576)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3445, file: !87, line: 289, baseType: !3448, size: 64, offset: 640)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3445, file: !87, line: 290, baseType: !3448, size: 64, offset: 704)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3445, file: !87, line: 291, baseType: !3448, size: 64, offset: 768)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3445, file: !87, line: 292, baseType: !3448, size: 64, offset: 832)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3445, file: !87, line: 293, baseType: !3448, size: 64, offset: 896)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3445, file: !87, line: 294, baseType: !3448, size: 64, offset: 960)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3445, file: !87, line: 295, baseType: !3448, size: 64, offset: 1024)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3445, file: !87, line: 296, baseType: !3448, size: 64, offset: 1088)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3445, file: !87, line: 297, baseType: !3448, size: 64, offset: 1152)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3445, file: !87, line: 298, baseType: !3448, size: 64, offset: 1216)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3445, file: !87, line: 299, baseType: !3448, size: 64, offset: 1280)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3445, file: !87, line: 300, baseType: !3448, size: 64, offset: 1344)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3445, file: !87, line: 301, baseType: !3448, size: 64, offset: 1408)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !274, file: !80, line: 470, baseType: !3474, size: 64, offset: 768)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3476, line: 82, size: 1408, elements: !3477)
!3476 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3477 = !{!3478, !3479, !3480, !3481, !3482, !3483, !3484, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3559, !3562, !3563}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3475, file: !3476, line: 83, baseType: !281, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3475, file: !3476, line: 84, baseType: !281, size: 64, offset: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3475, file: !3476, line: 85, baseType: !3417, size: 64, offset: 128)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3475, file: !3476, line: 86, baseType: !384, size: 64, offset: 192)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3475, file: !3476, line: 87, baseType: !384, size: 64, offset: 256)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3475, file: !3476, line: 88, baseType: !384, size: 64, offset: 320)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3475, file: !3476, line: 90, baseType: !3485, size: 64, offset: 384)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!241, !3417, !3488}
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !74, line: 95, size: 1152, elements: !3490)
!3490 = !{!3491, !3492, !3493, !3494, !3495, !3496, !3497, !3510, !3523, !3524, !3525, !3526, !3527, !3535, !3536, !3537, !3538, !3539, !3540}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3489, file: !74, line: 96, baseType: !281, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3489, file: !74, line: 97, baseType: !3474, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3489, file: !74, line: 99, baseType: !680, size: 64, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3489, file: !74, line: 100, baseType: !281, size: 64, offset: 192)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3489, file: !74, line: 102, baseType: !538, size: 8, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3489, file: !74, line: 103, baseType: !73, size: 32, offset: 288)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3489, file: !74, line: 105, baseType: !3498, size: 64, offset: 320)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3500)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3501, line: 262, size: 1600, elements: !3502)
!3501 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3502 = !{!3503, !3504, !3505, !3509}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3500, file: !3501, line: 263, baseType: !2744, size: 256)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3500, file: !3501, line: 264, baseType: !2744, size: 256, offset: 256)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3500, file: !3501, line: 265, baseType: !3506, size: 1024, offset: 512)
!3506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 1024, elements: !3507)
!3507 = !{!3508}
!3508 = !DISubrange(count: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3500, file: !3501, line: 266, baseType: !2171, size: 64, offset: 1536)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3489, file: !74, line: 106, baseType: !3511, size: 64, offset: 384)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3513)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3501, line: 210, size: 256, elements: !3514)
!3514 = !{!3515, !3519, !3521, !3522}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3513, file: !3501, line: 211, baseType: !3516, size: 72)
!3516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 72, elements: !3517)
!3517 = !{!3518}
!3518 = !DISubrange(count: 9)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3513, file: !3501, line: 212, baseType: !3520, size: 64, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3501, line: 14, baseType: !238)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3513, file: !3501, line: 213, baseType: !212, size: 32, offset: 192)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3513, file: !3501, line: 214, baseType: !212, size: 32, offset: 224)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3489, file: !74, line: 108, baseType: !3448, size: 64, offset: 448)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3489, file: !74, line: 109, baseType: !3439, size: 64, offset: 512)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3489, file: !74, line: 110, baseType: !3448, size: 64, offset: 576)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3489, file: !74, line: 111, baseType: !3439, size: 64, offset: 640)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3489, file: !74, line: 112, baseType: !3528, size: 64, offset: 704)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!241, !3417, !3531}
!3531 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !87, line: 52, baseType: !3532)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !87, line: 50, size: 32, elements: !3533)
!3533 = !{!3534}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3532, file: !87, line: 51, baseType: !241, size: 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3489, file: !74, line: 113, baseType: !3448, size: 64, offset: 768)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3489, file: !74, line: 114, baseType: !384, size: 64, offset: 832)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3489, file: !74, line: 115, baseType: !384, size: 64, offset: 896)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3489, file: !74, line: 117, baseType: !3443, size: 64, offset: 960)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3489, file: !74, line: 118, baseType: !3439, size: 64, offset: 1024)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3489, file: !74, line: 120, baseType: !3541, size: 64, offset: 1088)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !74, line: 120, flags: DIFlagFwdDecl)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3475, file: !3476, line: 91, baseType: !3430, size: 64, offset: 448)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3475, file: !3476, line: 92, baseType: !3448, size: 64, offset: 512)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3475, file: !3476, line: 93, baseType: !3439, size: 64, offset: 576)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3475, file: !3476, line: 94, baseType: !3448, size: 64, offset: 640)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3475, file: !3476, line: 95, baseType: !3439, size: 64, offset: 704)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3475, file: !3476, line: 97, baseType: !3448, size: 64, offset: 768)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3475, file: !3476, line: 98, baseType: !3448, size: 64, offset: 832)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3475, file: !3476, line: 100, baseType: !3528, size: 64, offset: 896)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3475, file: !3476, line: 101, baseType: !3448, size: 64, offset: 960)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3475, file: !3476, line: 103, baseType: !3448, size: 64, offset: 1024)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3475, file: !3476, line: 105, baseType: !3448, size: 64, offset: 1088)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3475, file: !3476, line: 107, baseType: !3443, size: 64, offset: 1152)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3475, file: !3476, line: 109, baseType: !3556, size: 64, offset: 1216)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3558)
!3558 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3476, line: 109, flags: DIFlagFwdDecl)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3475, file: !3476, line: 111, baseType: !3560, size: 64, offset: 1280)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3476, line: 111, flags: DIFlagFwdDecl)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3475, file: !3476, line: 112, baseType: !695, offset: 1344)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3475, file: !3476, line: 114, baseType: !538, size: 8, offset: 1344)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !274, file: !80, line: 471, baseType: !3488, size: 64, offset: 832)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !274, file: !80, line: 473, baseType: !237, size: 64, offset: 896)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !274, file: !80, line: 475, baseType: !237, size: 64, offset: 960)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !274, file: !80, line: 480, baseType: !1221, size: 192, offset: 1024)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !274, file: !80, line: 484, baseType: !3569, size: 576, offset: 1216)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !80, line: 361, size: 576, elements: !3570)
!3570 = !{!3571, !3572, !3573, !3574, !3575, !3576}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3569, file: !80, line: 362, baseType: !249, size: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3569, file: !80, line: 363, baseType: !249, size: 128, offset: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3569, file: !80, line: 364, baseType: !249, size: 128, offset: 256)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3569, file: !80, line: 365, baseType: !249, size: 128, offset: 384)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3569, file: !80, line: 366, baseType: !538, size: 8, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3569, file: !80, line: 367, baseType: !79, size: 32, offset: 544)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !274, file: !80, line: 485, baseType: !3578, size: 2304, offset: 1792)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !87, line: 565, size: 2304, elements: !3579)
!3579 = !{!3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3675, !3679}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3578, file: !87, line: 566, baseType: !3531, size: 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3578, file: !87, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3578, file: !87, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3578, file: !87, line: 569, baseType: !538, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3578, file: !87, line: 570, baseType: !538, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3578, file: !87, line: 571, baseType: !538, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3578, file: !87, line: 572, baseType: !538, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3578, file: !87, line: 573, baseType: !538, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3578, file: !87, line: 574, baseType: !538, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3578, file: !87, line: 575, baseType: !538, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3578, file: !87, line: 576, baseType: !538, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3578, file: !87, line: 577, baseType: !210, size: 32, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3578, file: !87, line: 578, baseType: !293, offset: 96)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3578, file: !87, line: 580, baseType: !249, size: 128, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3578, file: !87, line: 581, baseType: !1548, size: 192, offset: 256)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3578, file: !87, line: 582, baseType: !3596, size: 64, offset: 448)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3598, line: 43, size: 1472, elements: !3599)
!3598 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3599 = !{!3600, !3601, !3602, !3603, !3604, !3607, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3597, file: !3598, line: 44, baseType: !281, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3597, file: !3598, line: 45, baseType: !241, size: 32, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3597, file: !3598, line: 46, baseType: !249, size: 128, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3597, file: !3598, line: 47, baseType: !293, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3597, file: !3598, line: 48, baseType: !3605, size: 64, offset: 256)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !87, line: 533, flags: DIFlagFwdDecl)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3597, file: !3598, line: 49, baseType: !3608, size: 320, offset: 320)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3609, line: 11, size: 320, elements: !3610)
!3609 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3610 = !{!3611, !3612, !3613, !3618}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3608, file: !3609, line: 16, baseType: !689, size: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3608, file: !3609, line: 17, baseType: !238, size: 64, offset: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3608, file: !3609, line: 18, baseType: !3614, size: 64, offset: 192)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{null, !3617}
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3608, file: !3609, line: 19, baseType: !210, size: 32, offset: 256)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3597, file: !3598, line: 50, baseType: !238, size: 64, offset: 640)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3597, file: !3598, line: 51, baseType: !1348, size: 64, offset: 704)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3597, file: !3598, line: 52, baseType: !1348, size: 64, offset: 768)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3597, file: !3598, line: 53, baseType: !1348, size: 64, offset: 832)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3597, file: !3598, line: 54, baseType: !1348, size: 64, offset: 896)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3597, file: !3598, line: 55, baseType: !1348, size: 64, offset: 960)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3597, file: !3598, line: 56, baseType: !238, size: 64, offset: 1024)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3597, file: !3598, line: 57, baseType: !238, size: 64, offset: 1088)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3597, file: !3598, line: 58, baseType: !238, size: 64, offset: 1152)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3597, file: !3598, line: 59, baseType: !238, size: 64, offset: 1216)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3597, file: !3598, line: 60, baseType: !238, size: 64, offset: 1280)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3597, file: !3598, line: 61, baseType: !3417, size: 64, offset: 1344)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3597, file: !3598, line: 62, baseType: !538, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3597, file: !3598, line: 63, baseType: !538, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3578, file: !87, line: 583, baseType: !538, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3578, file: !87, line: 584, baseType: !538, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3578, file: !87, line: 585, baseType: !538, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3578, file: !87, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3578, file: !87, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3578, file: !87, line: 592, baseType: !1340, size: 512, offset: 576)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3578, file: !87, line: 593, baseType: !220, size: 64, offset: 1088)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3578, file: !87, line: 594, baseType: !2002, size: 256, offset: 1152)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3578, file: !87, line: 595, baseType: !1527, size: 128, offset: 1408)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3578, file: !87, line: 596, baseType: !3605, size: 64, offset: 1536)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3578, file: !87, line: 597, baseType: !797, size: 32, offset: 1600)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3578, file: !87, line: 598, baseType: !797, size: 32, offset: 1632)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3578, file: !87, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3578, file: !87, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3578, file: !87, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3578, file: !87, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3578, file: !87, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3578, file: !87, line: 604, baseType: !538, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3578, file: !87, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3578, file: !87, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3578, file: !87, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3578, file: !87, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3578, file: !87, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3578, file: !87, line: 610, baseType: !7, size: 32, offset: 1696)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3578, file: !87, line: 611, baseType: !86, size: 32, offset: 1728)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3578, file: !87, line: 612, baseType: !94, size: 32, offset: 1760)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3578, file: !87, line: 613, baseType: !241, size: 32, offset: 1792)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3578, file: !87, line: 614, baseType: !241, size: 32, offset: 1824)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3578, file: !87, line: 615, baseType: !220, size: 64, offset: 1856)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3578, file: !87, line: 616, baseType: !220, size: 64, offset: 1920)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3578, file: !87, line: 617, baseType: !220, size: 64, offset: 1984)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3578, file: !87, line: 618, baseType: !220, size: 64, offset: 2048)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3578, file: !87, line: 620, baseType: !3666, size: 64, offset: 2112)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !87, line: 536, size: 256, elements: !3668)
!3668 = !{!3669, !3670, !3671, !3672}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3667, file: !87, line: 537, baseType: !293)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3667, file: !87, line: 538, baseType: !7, size: 32)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3667, file: !87, line: 540, baseType: !249, size: 128, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3667, file: !87, line: 543, baseType: !3673, size: 64, offset: 192)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !87, line: 534, flags: DIFlagFwdDecl)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3578, file: !87, line: 621, baseType: !3676, size: 64, offset: 2176)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{null, !3417, !1490}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3578, file: !87, line: 622, baseType: !3680, size: 64, offset: 2240)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !87, line: 622, flags: DIFlagFwdDecl)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !274, file: !80, line: 486, baseType: !3683, size: 64, offset: 4096)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !87, line: 642, size: 1792, elements: !3685)
!3685 = !{!3686, !3687, !3688, !3692, !3693, !3694}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3684, file: !87, line: 643, baseType: !3445, size: 1472)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3684, file: !87, line: 644, baseType: !3448, size: 64, offset: 1472)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3684, file: !87, line: 645, baseType: !3689, size: 64, offset: 1536)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{null, !3417, !538}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3684, file: !87, line: 646, baseType: !3448, size: 64, offset: 1600)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3684, file: !87, line: 647, baseType: !3439, size: 64, offset: 1664)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3684, file: !87, line: 648, baseType: !3439, size: 64, offset: 1728)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !274, file: !80, line: 493, baseType: !3696, size: 64, offset: 4160)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !101, line: 162, size: 1088, elements: !3698)
!3698 = !{!3699, !3700, !3701, !3874, !3875, !3876, !3877, !3878, !3879, !3882, !3883, !3884, !3885, !3886, !3887, !3888}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3697, file: !101, line: 163, baseType: !249, size: 128)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3697, file: !101, line: 164, baseType: !281, size: 64, offset: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3697, file: !101, line: 165, baseType: !3702, size: 64, offset: 192)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3704)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !101, line: 105, size: 640, elements: !3705)
!3705 = !{!3706, !3824, !3835, !3840, !3844, !3851, !3855, !3859, !3866, !3870}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3704, file: !101, line: 106, baseType: !3707, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!241, !3696, !3710, !100}
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3712, line: 51, size: 1344, elements: !3713)
!3712 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3713 = !{!3714, !3715, !3717, !3718, !3808, !3817, !3818, !3819, !3820, !3821, !3822, !3823}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3711, file: !3712, line: 52, baseType: !281, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3711, file: !3712, line: 53, baseType: !3716, size: 32, offset: 64)
!3716 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3712, line: 28, baseType: !210)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3711, file: !3712, line: 54, baseType: !281, size: 64, offset: 128)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3711, file: !3712, line: 55, baseType: !3719, size: 192, offset: 192)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3720, line: 17, size: 192, elements: !3721)
!3720 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3721 = !{!3722, !3724, !3807}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3719, file: !3720, line: 18, baseType: !3723, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3719, file: !3720, line: 19, baseType: !3725, size: 64, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3727)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3720, line: 110, size: 1152, elements: !3728)
!3728 = !{!3729, !3733, !3737, !3743, !3749, !3753, !3757, !3762, !3766, !3767, !3771, !3775, !3779, !3790, !3791, !3792, !3793, !3803}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3727, file: !3720, line: 111, baseType: !3730, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!3723, !3723}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3727, file: !3720, line: 112, baseType: !3734, size: 64, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{null, !3723}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3727, file: !3720, line: 113, baseType: !3738, size: 64, offset: 128)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!538, !3741}
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3719)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3727, file: !3720, line: 114, baseType: !3744, size: 64, offset: 192)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!2171, !3741, !3747}
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3727, file: !3720, line: 116, baseType: !3750, size: 64, offset: 256)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!538, !3741, !281}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3727, file: !3720, line: 118, baseType: !3754, size: 64, offset: 320)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!241, !3741, !281, !7, !237, !378}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3727, file: !3720, line: 123, baseType: !3758, size: 64, offset: 384)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!241, !3741, !281, !3761, !378}
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3727, file: !3720, line: 126, baseType: !3763, size: 64, offset: 448)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!281, !3741}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3727, file: !3720, line: 127, baseType: !3763, size: 64, offset: 512)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3727, file: !3720, line: 128, baseType: !3768, size: 64, offset: 576)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!3723, !3741}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3727, file: !3720, line: 130, baseType: !3772, size: 64, offset: 640)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!3723, !3741, !3723}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3727, file: !3720, line: 133, baseType: !3776, size: 64, offset: 704)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!3723, !3741, !281}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3727, file: !3720, line: 135, baseType: !3780, size: 64, offset: 768)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!241, !3741, !281, !281, !7, !7, !3783}
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3720, line: 43, size: 640, elements: !3785)
!3785 = !{!3786, !3787, !3788}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3784, file: !3720, line: 44, baseType: !3723, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3784, file: !3720, line: 45, baseType: !7, size: 32, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3784, file: !3720, line: 46, baseType: !3789, size: 512, offset: 128)
!3789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 512, elements: !1378)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3727, file: !3720, line: 140, baseType: !3772, size: 64, offset: 832)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3727, file: !3720, line: 143, baseType: !3768, size: 64, offset: 896)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3727, file: !3720, line: 145, baseType: !3730, size: 64, offset: 960)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3727, file: !3720, line: 146, baseType: !3794, size: 64, offset: 1024)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!241, !3741, !3797}
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3720, line: 29, size: 128, elements: !3799)
!3799 = !{!3800, !3801, !3802}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3798, file: !3720, line: 30, baseType: !7, size: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3798, file: !3720, line: 31, baseType: !7, size: 32, offset: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3798, file: !3720, line: 32, baseType: !3741, size: 64, offset: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3727, file: !3720, line: 148, baseType: !3804, size: 64, offset: 1088)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!241, !3741, !3417}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3719, file: !3720, line: 20, baseType: !3417, size: 64, offset: 128)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3711, file: !3712, line: 57, baseType: !3809, size: 64, offset: 384)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3712, line: 31, size: 704, elements: !3811)
!3811 = !{!3812, !3813, !3814, !3815, !3816}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3810, file: !3712, line: 32, baseType: !334, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3810, file: !3712, line: 33, baseType: !241, size: 32, offset: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3810, file: !3712, line: 34, baseType: !237, size: 64, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3810, file: !3712, line: 35, baseType: !3809, size: 64, offset: 192)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3810, file: !3712, line: 43, baseType: !399, size: 448, offset: 256)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3711, file: !3712, line: 58, baseType: !3809, size: 64, offset: 448)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3711, file: !3712, line: 59, baseType: !3710, size: 64, offset: 512)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3711, file: !3712, line: 60, baseType: !3710, size: 64, offset: 576)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3711, file: !3712, line: 61, baseType: !3710, size: 64, offset: 640)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3711, file: !3712, line: 63, baseType: !277, size: 512, offset: 704)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3711, file: !3712, line: 65, baseType: !238, size: 64, offset: 1216)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3711, file: !3712, line: 66, baseType: !237, size: 64, offset: 1280)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3704, file: !101, line: 108, baseType: !3825, size: 64, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!241, !3696, !3828, !100}
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !101, line: 63, size: 640, elements: !3830)
!3830 = !{!3831, !3832, !3833}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3829, file: !101, line: 64, baseType: !3723, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3829, file: !101, line: 65, baseType: !241, size: 32, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3829, file: !101, line: 66, baseType: !3834, size: 512, offset: 96)
!3834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 512, elements: !265)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3704, file: !101, line: 110, baseType: !3836, size: 64, offset: 128)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!241, !3696, !7, !3839}
!3839 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !240, line: 164, baseType: !238)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3704, file: !101, line: 111, baseType: !3841, size: 64, offset: 192)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{null, !3696, !7}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3704, file: !101, line: 112, baseType: !3845, size: 64, offset: 256)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!241, !3696, !3710, !3848, !7, !3850, !2727}
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3704, file: !101, line: 117, baseType: !3852, size: 64, offset: 320)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!241, !3696, !7, !7, !237}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3704, file: !101, line: 119, baseType: !3856, size: 64, offset: 384)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{null, !3696, !7, !7}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3704, file: !101, line: 121, baseType: !3860, size: 64, offset: 448)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!241, !3696, !3863, !538}
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3865, line: 16, flags: DIFlagFwdDecl)
!3865 = !DIFile(filename: "./include/linux/msi.h", directory: "/home/lizy2001/genbc/linux")
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3704, file: !101, line: 122, baseType: !3867, size: 64, offset: 512)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{null, !3696, !3863}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3704, file: !101, line: 123, baseType: !3871, size: 64, offset: 576)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!241, !3696, !3828, !3850, !2727}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3697, file: !101, line: 166, baseType: !237, size: 64, offset: 256)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3697, file: !101, line: 167, baseType: !7, size: 32, offset: 320)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3697, file: !101, line: 168, baseType: !7, size: 32, offset: 352)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3697, file: !101, line: 171, baseType: !3723, size: 64, offset: 384)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3697, file: !101, line: 172, baseType: !100, size: 32, offset: 448)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3697, file: !101, line: 173, baseType: !3880, size: 64, offset: 512)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !101, line: 134, flags: DIFlagFwdDecl)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3697, file: !101, line: 175, baseType: !3696, size: 64, offset: 576)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3697, file: !101, line: 182, baseType: !3839, size: 64, offset: 640)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3697, file: !101, line: 183, baseType: !7, size: 32, offset: 704)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3697, file: !101, line: 184, baseType: !7, size: 32, offset: 736)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3697, file: !101, line: 185, baseType: !789, size: 128, offset: 768)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3697, file: !101, line: 186, baseType: !1221, size: 192, offset: 896)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3697, file: !101, line: 187, baseType: !3889, offset: 1088)
!3889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2375)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !274, file: !80, line: 499, baseType: !249, size: 128, offset: 4224)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !274, file: !80, line: 502, baseType: !3892, size: 64, offset: 4352)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3894)
!3894 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !80, line: 502, flags: DIFlagFwdDecl)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !274, file: !80, line: 504, baseType: !3896, size: 64, offset: 4416)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !274, file: !80, line: 505, baseType: !220, size: 64, offset: 4480)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !274, file: !80, line: 510, baseType: !220, size: 64, offset: 4544)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !274, file: !80, line: 511, baseType: !3900, size: 64, offset: 4608)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3902)
!3902 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !80, line: 511, flags: DIFlagFwdDecl)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !274, file: !80, line: 513, baseType: !3904, size: 64, offset: 4672)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !80, line: 288, size: 128, elements: !3906)
!3906 = !{!3907, !3908}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3905, file: !80, line: 293, baseType: !7, size: 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3905, file: !80, line: 294, baseType: !238, size: 64, offset: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !274, file: !80, line: 515, baseType: !249, size: 128, offset: 4736)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !274, file: !80, line: 526, baseType: !3911, offset: 4864)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3912, line: 5, elements: !307)
!3912 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !274, file: !80, line: 528, baseType: !3710, size: 64, offset: 4864)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !274, file: !80, line: 529, baseType: !3723, size: 64, offset: 4928)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !274, file: !80, line: 534, baseType: !561, size: 32, offset: 4992)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !274, file: !80, line: 535, baseType: !210, size: 32, offset: 5024)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !274, file: !80, line: 537, baseType: !293, offset: 5056)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !274, file: !80, line: 538, baseType: !249, size: 128, offset: 5056)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !274, file: !80, line: 540, baseType: !3920, size: 64, offset: 5184)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3922, line: 54, size: 960, elements: !3923)
!3922 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3923 = !{!3924, !3925, !3926, !3927, !3928, !3929, !3930, !3934, !3938, !3939, !3940, !3941, !3945, !3949, !3950}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3921, file: !3922, line: 55, baseType: !281, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3921, file: !3922, line: 56, baseType: !680, size: 64, offset: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3921, file: !3922, line: 58, baseType: !384, size: 64, offset: 128)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3921, file: !3922, line: 59, baseType: !384, size: 64, offset: 192)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3921, file: !3922, line: 60, baseType: !286, size: 64, offset: 256)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3921, file: !3922, line: 62, baseType: !3430, size: 64, offset: 320)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3921, file: !3922, line: 63, baseType: !3931, size: 64, offset: 384)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!334, !3417, !3437}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3921, file: !3922, line: 65, baseType: !3935, size: 64, offset: 448)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{null, !3920}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3921, file: !3922, line: 66, baseType: !3439, size: 64, offset: 512)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3921, file: !3922, line: 68, baseType: !3448, size: 64, offset: 576)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3921, file: !3922, line: 70, baseType: !3232, size: 64, offset: 640)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3921, file: !3922, line: 71, baseType: !3942, size: 64, offset: 704)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!2171, !3417}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3921, file: !3922, line: 73, baseType: !3946, size: 64, offset: 768)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{null, !3417, !3264, !3265}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3921, file: !3922, line: 75, baseType: !3443, size: 64, offset: 832)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3921, file: !3922, line: 77, baseType: !3560, size: 64, offset: 896)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !274, file: !80, line: 541, baseType: !384, size: 64, offset: 5248)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !274, file: !80, line: 543, baseType: !3439, size: 64, offset: 5312)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !274, file: !80, line: 544, baseType: !3954, size: 64, offset: 5376)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !80, line: 45, flags: DIFlagFwdDecl)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !274, file: !80, line: 545, baseType: !3957, size: 64, offset: 5440)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !80, line: 47, flags: DIFlagFwdDecl)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !274, file: !80, line: 547, baseType: !538, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !274, file: !80, line: 548, baseType: !538, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !274, file: !80, line: 549, baseType: !538, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !274, file: !80, line: 550, baseType: !538, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !256, file: !115, line: 1229, baseType: !334, size: 64, offset: 5888)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !256, file: !115, line: 1231, baseType: !245, size: 64, offset: 5952)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "channels_kset", scope: !256, file: !115, line: 1232, baseType: !288, size: 64, offset: 6016)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !256, file: !115, line: 1235, baseType: !438, size: 64, offset: 6080)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !246, file: !115, line: 778, baseType: !114, size: 32, offset: 192)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "offermsg", scope: !246, file: !115, line: 780, baseType: !3969, size: 1568, offset: 224)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_offer_channel", file: !115, line: 502, size: 1568, elements: !3970)
!3970 = !{!3971, !3972, !4001, !4002, !4003, !4004, !4005, !4006, !4007}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3969, file: !115, line: 503, baseType: !206, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "offer", scope: !3969, file: !115, line: 504, baseType: !3973, size: 1408, offset: 64)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_offer", file: !115, line: 266, size: 1408, elements: !3974)
!3974 = !{!3975, !3976, !3977, !3978, !3979, !3980, !3981, !3999, !4000}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "if_type", scope: !3973, file: !115, line: 267, baseType: !259, size: 128)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "if_instance", scope: !3973, file: !115, line: 268, baseType: !259, size: 128, offset: 128)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !3973, file: !115, line: 273, baseType: !220, size: 64, offset: 256)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !3973, file: !115, line: 274, baseType: !220, size: 64, offset: 320)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "chn_flags", scope: !3973, file: !115, line: 276, baseType: !269, size: 16, offset: 384)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_megabytes", scope: !3973, file: !115, line: 277, baseType: !269, size: 16, offset: 400)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !3973, file: !115, line: 296, baseType: !3982, size: 960, offset: 416)
!3982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3973, file: !115, line: 279, size: 960, elements: !3983)
!3983 = !{!3984, !3991}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !3982, file: !115, line: 283, baseType: !3985, size: 960)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3982, file: !115, line: 281, size: 960, elements: !3986)
!3986 = !{!3987}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "user_def", scope: !3985, file: !115, line: 282, baseType: !3988, size: 960)
!3988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 960, elements: !3989)
!3989 = !{!3990}
!3990 = !DISubrange(count: 120)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !3982, file: !115, line: 295, baseType: !3992, size: 960)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3982, file: !115, line: 292, size: 960, elements: !3993)
!3993 = !{!3994, !3995}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_mode", scope: !3992, file: !115, line: 293, baseType: !210, size: 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "user_def", scope: !3992, file: !115, line: 294, baseType: !3996, size: 928, offset: 32)
!3996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 928, elements: !3997)
!3997 = !{!3998}
!3998 = !DISubrange(count: 116)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "sub_channel_index", scope: !3973, file: !115, line: 303, baseType: !269, size: 16, offset: 1376)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !3973, file: !115, line: 304, baseType: !269, size: 16, offset: 1392)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "child_relid", scope: !3969, file: !115, line: 505, baseType: !210, size: 32, offset: 1472)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "monitorid", scope: !3969, file: !115, line: 506, baseType: !227, size: 8, offset: 1504)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_allocated", scope: !3969, file: !115, line: 510, baseType: !227, size: 1, offset: 1512, flags: DIFlagBitField, extraData: i64 1512)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3969, file: !115, line: 511, baseType: !227, size: 7, offset: 1513, flags: DIFlagBitField, extraData: i64 1512)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "is_dedicated_interrupt", scope: !3969, file: !115, line: 523, baseType: !269, size: 1, offset: 1520, flags: DIFlagBitField, extraData: i64 1512)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !3969, file: !115, line: 524, baseType: !269, size: 15, offset: 1521, flags: DIFlagBitField, extraData: i64 1512)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "connection_id", scope: !3969, file: !115, line: 525, baseType: !210, size: 32, offset: 1536)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_grp", scope: !246, file: !115, line: 785, baseType: !227, size: 8, offset: 1792)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_bit", scope: !246, file: !115, line: 786, baseType: !227, size: 8, offset: 1800)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "rescind", scope: !246, file: !115, line: 788, baseType: !538, size: 8, offset: 1808)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "rescind_event", scope: !246, file: !115, line: 789, baseType: !1548, size: 192, offset: 1856)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "ringbuffer_gpadlhandle", scope: !246, file: !115, line: 791, baseType: !210, size: 32, offset: 2048)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "ringbuffer_page", scope: !246, file: !115, line: 794, baseType: !771, size: 64, offset: 2112)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "ringbuffer_pagecount", scope: !246, file: !115, line: 795, baseType: !210, size: 32, offset: 2176)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "ringbuffer_send_offset", scope: !246, file: !115, line: 796, baseType: !210, size: 32, offset: 2208)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "outbound", scope: !246, file: !115, line: 797, baseType: !4017, size: 448, offset: 2240)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_ring_buffer_info", file: !115, line: 171, size: 448, elements: !4018)
!4018 = !{!4019, !4042, !4043, !4050, !4051, !4052, !4053}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "ring_buffer", scope: !4017, file: !115, line: 172, baseType: !4020, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_ring_buffer", file: !115, line: 113, size: 32768, elements: !4022)
!4022 = !{!4023, !4024, !4025, !4026, !4027, !4028, !4036, !4040}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "write_index", scope: !4021, file: !115, line: 115, baseType: !210, size: 32)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "read_index", scope: !4021, file: !115, line: 118, baseType: !210, size: 32, offset: 32)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_mask", scope: !4021, file: !115, line: 120, baseType: !210, size: 32, offset: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "pending_send_sz", scope: !4021, file: !115, line: 148, baseType: !210, size: 32, offset: 96)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !4021, file: !115, line: 149, baseType: !2279, size: 384, offset: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "feature_bits", scope: !4021, file: !115, line: 155, baseType: !4029, size: 32, offset: 512)
!4029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4021, file: !115, line: 150, size: 32, elements: !4030)
!4030 = !{!4031, !4035}
!4031 = !DIDerivedType(tag: DW_TAG_member, scope: !4029, file: !115, line: 151, baseType: !4032, size: 32)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4029, file: !115, line: 151, size: 32, elements: !4033)
!4033 = !{!4034}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "feat_pending_send_sz", scope: !4032, file: !115, line: 152, baseType: !210, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4029, file: !115, line: 154, baseType: !210, size: 32)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !4021, file: !115, line: 158, baseType: !4037, size: 32224, offset: 544)
!4037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 32224, elements: !4038)
!4038 = !{!4039}
!4039 = !DISubrange(count: 4028)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4021, file: !115, line: 164, baseType: !4041, offset: 32768)
!4041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, elements: !2375)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "ring_size", scope: !4017, file: !115, line: 173, baseType: !210, size: 32, offset: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "ring_size_div10_reciprocal", scope: !4017, file: !115, line: 174, baseType: !4044, size: 64, offset: 96)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reciprocal_value", file: !4045, line: 23, size: 64, elements: !4046)
!4045 = !DIFile(filename: "./include/linux/reciprocal_div.h", directory: "/home/lizy2001/genbc/linux")
!4046 = !{!4047, !4048, !4049}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !4044, file: !4045, line: 24, baseType: !210, size: 32)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "sh1", scope: !4044, file: !4045, line: 25, baseType: !227, size: 8, offset: 32)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "sh2", scope: !4044, file: !4045, line: 25, baseType: !227, size: 8, offset: 40)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "ring_lock", scope: !4017, file: !115, line: 175, baseType: !293, offset: 160)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "ring_datasize", scope: !4017, file: !115, line: 177, baseType: !210, size: 32, offset: 160)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "priv_read_index", scope: !4017, file: !115, line: 178, baseType: !210, size: 32, offset: 192)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "ring_buffer_mutex", scope: !4017, file: !115, line: 183, baseType: !1221, size: 192, offset: 256)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "inbound", scope: !246, file: !115, line: 798, baseType: !4017, size: 448, offset: 2688)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "close_msg", scope: !246, file: !115, line: 800, baseType: !4056, size: 832, offset: 3136)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_close_msg", file: !115, line: 733, size: 832, elements: !4057)
!4057 = !{!4058, !4103}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4056, file: !115, line: 734, baseType: !4059, size: 704)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_msginfo", file: !115, line: 707, size: 704, elements: !4060)
!4060 = !{!4061, !4062, !4063, !4064, !4065, !4100, !4101}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "msglistentry", scope: !4059, file: !115, line: 709, baseType: !249, size: 128)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "submsglist", scope: !4059, file: !115, line: 712, baseType: !249, size: 128, offset: 128)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "waitevent", scope: !4059, file: !115, line: 715, baseType: !1548, size: 192, offset: 256)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_channel", scope: !4059, file: !115, line: 716, baseType: !245, size: 64, offset: 448)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !4059, file: !115, line: 723, baseType: !4066, size: 160, offset: 512)
!4066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4059, file: !115, line: 717, size: 160, elements: !4067)
!4067 = !{!4068, !4073, !4080, !4085, !4092}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "version_supported", scope: !4066, file: !115, line: 718, baseType: !4069, size: 72)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_version_supported", file: !115, line: 496, size: 72, elements: !4070)
!4070 = !{!4071, !4072}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4069, file: !115, line: 497, baseType: !206, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "version_supported", scope: !4069, file: !115, line: 498, baseType: !227, size: 8, offset: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "open_result", scope: !4066, file: !115, line: 719, baseType: !4074, size: 160)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_open_result", file: !115, line: 584, size: 160, elements: !4075)
!4075 = !{!4076, !4077, !4078, !4079}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4074, file: !115, line: 585, baseType: !206, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "child_relid", scope: !4074, file: !115, line: 586, baseType: !210, size: 32, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "openid", scope: !4074, file: !115, line: 587, baseType: !210, size: 32, offset: 96)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4074, file: !115, line: 588, baseType: !210, size: 32, offset: 128)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "gpadl_torndown", scope: !4066, file: !115, line: 720, baseType: !4081, size: 96)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_gpadl_torndown", file: !115, line: 638, size: 96, elements: !4082)
!4082 = !{!4083, !4084}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4081, file: !115, line: 639, baseType: !206, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "gpadl", scope: !4081, file: !115, line: 640, baseType: !210, size: 32, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "gpadl_created", scope: !4066, file: !115, line: 721, baseType: !4086, size: 160)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_gpadl_created", file: !115, line: 625, size: 160, elements: !4087)
!4087 = !{!4088, !4089, !4090, !4091}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4086, file: !115, line: 626, baseType: !206, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "child_relid", scope: !4086, file: !115, line: 627, baseType: !210, size: 32, offset: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "gpadl", scope: !4086, file: !115, line: 628, baseType: !210, size: 32, offset: 96)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "creation_status", scope: !4086, file: !115, line: 629, baseType: !210, size: 32, offset: 128)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "version_response", scope: !4066, file: !115, line: 722, baseType: !4093, size: 128)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_version_response", file: !115, line: 678, size: 128, elements: !4094)
!4094 = !{!4095, !4096, !4097, !4098, !4099}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4093, file: !115, line: 679, baseType: !206, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "version_supported", scope: !4093, file: !115, line: 680, baseType: !227, size: 8, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "connection_state", scope: !4093, file: !115, line: 682, baseType: !227, size: 8, offset: 72)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4093, file: !115, line: 683, baseType: !269, size: 16, offset: 80)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "msg_conn_id", scope: !4093, file: !115, line: 693, baseType: !210, size: 32, offset: 96)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "msgsize", scope: !4059, file: !115, line: 725, baseType: !210, size: 32, offset: 672)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4059, file: !115, line: 730, baseType: !4102, offset: 704)
!4102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, elements: !2375)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4056, file: !115, line: 735, baseType: !4104, size: 96, offset: 704)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_channel_close_channel", file: !115, line: 592, size: 96, elements: !4105)
!4105 = !{!4106, !4107}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4104, file: !115, line: 593, baseType: !206, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "child_relid", scope: !4104, file: !115, line: 594, baseType: !210, size: 32, offset: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !246, file: !115, line: 803, baseType: !220, size: 64, offset: 3968)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "sig_events", scope: !246, file: !115, line: 804, baseType: !220, size: 64, offset: 4032)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "intr_out_empty", scope: !246, file: !115, line: 810, baseType: !220, size: 64, offset: 4096)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "out_full_flag", scope: !246, file: !115, line: 817, baseType: !538, size: 8, offset: 4160)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "callback_event", scope: !246, file: !115, line: 820, baseType: !4113, size: 320, offset: 4224)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tasklet_struct", file: !197, line: 609, size: 320, elements: !4114)
!4114 = !{!4115, !4117, !4118, !4119, !4120, !4131}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4113, file: !197, line: 611, baseType: !4116, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4113, file: !197, line: 612, baseType: !238, size: 64, offset: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4113, file: !197, line: 613, baseType: !797, size: 32, offset: 128)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "use_callback", scope: !4113, file: !197, line: 614, baseType: !538, size: 8, offset: 160)
!4120 = !DIDerivedType(tag: DW_TAG_member, scope: !4113, file: !197, line: 615, baseType: !4121, size: 64, offset: 192)
!4121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4113, file: !197, line: 615, size: 64, elements: !4122)
!4122 = !{!4123, !4127}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4121, file: !197, line: 616, baseType: !4124, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{null, !238}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4121, file: !197, line: 617, baseType: !4128, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{null, !4116}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4113, file: !197, line: 619, baseType: !238, size: 64, offset: 256)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "onchannel_callback", scope: !246, file: !115, line: 821, baseType: !516, size: 64, offset: 4544)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "channel_callback_context", scope: !246, file: !115, line: 822, baseType: !237, size: 64, offset: 4608)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "change_target_cpu_callback", scope: !246, file: !115, line: 824, baseType: !4135, size: 64, offset: 4672)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{null, !245, !210, !210}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "sched_lock", scope: !246, file: !115, line: 831, baseType: !293, offset: 4736)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "callback_mode", scope: !246, file: !115, line: 848, baseType: !148, size: 32, offset: 4736)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "is_dedicated_interrupt", scope: !246, file: !115, line: 850, baseType: !538, size: 8, offset: 4768)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "sig_event", scope: !246, file: !115, line: 851, baseType: !220, size: 64, offset: 4800)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "target_cpu", scope: !246, file: !115, line: 862, baseType: !210, size: 32, offset: 4864)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "sc_creation_callback", scope: !246, file: !115, line: 883, baseType: !4144, size: 64, offset: 4928)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{null, !245}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "chn_rescind_callback", scope: !246, file: !115, line: 889, baseType: !4144, size: 64, offset: 4992)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "sc_list", scope: !246, file: !115, line: 894, baseType: !249, size: 128, offset: 5056)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "primary_channel", scope: !246, file: !115, line: 899, baseType: !245, size: 64, offset: 5184)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "per_channel_state", scope: !246, file: !115, line: 903, baseType: !237, size: 64, offset: 5248)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !246, file: !115, line: 909, baseType: !421, size: 128, align: 64, offset: 5312)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !246, file: !115, line: 914, baseType: !277, size: 512, offset: 5440)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "low_latency", scope: !246, file: !115, line: 940, baseType: !538, size: 8, offset: 5952)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "probe_done", scope: !246, file: !115, line: 942, baseType: !538, size: 8, offset: 5960)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !246, file: !115, line: 949, baseType: !269, size: 16, offset: 5968)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "add_channel_work", scope: !246, file: !115, line: 957, baseType: !2002, size: 256, offset: 6016)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "intr_in_full", scope: !246, file: !115, line: 963, baseType: !220, size: 64, offset: 6272)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "out_full_total", scope: !246, file: !115, line: 969, baseType: !220, size: 64, offset: 6336)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "out_full_first", scope: !246, file: !115, line: 975, baseType: !220, size: 64, offset: 6400)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz_testing_state", scope: !246, file: !115, line: 978, baseType: !538, size: 8, offset: 6464)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz_testing_interrupt_delay", scope: !246, file: !115, line: 988, baseType: !210, size: 32, offset: 6496)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz_testing_message_delay", scope: !246, file: !115, line: 989, baseType: !210, size: 32, offset: 6528)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4165)
!4165 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !516)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !252)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4170)
!4170 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!4172 = !{!0, !4173, !4225, !4230, !4235, !4240, !4242, !4247, !4250, !4255}
!4173 = !DIGlobalVariableExpression(var: !4174, expr: !DIExpression())
!4174 = distinct !DIGlobalVariable(name: "__param_max_version", scope: !2, file: !3, line: 65, type: !4175, isLocal: true, isDefinition: true, align: 64)
!4175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4176)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4177, line: 69, size: 320, elements: !4178)
!4177 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!4178 = !{!4179, !4180, !4181, !4197, !4199, !4203, !4204}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4176, file: !4177, line: 70, baseType: !281, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4176, file: !4177, line: 71, baseType: !680, size: 64, offset: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4176, file: !4177, line: 72, baseType: !4182, size: 64, offset: 128)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4184)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4177, line: 47, size: 256, elements: !4185)
!4185 = !{!4186, !4187, !4192, !4196}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4184, file: !4177, line: 49, baseType: !7, size: 32)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4184, file: !4177, line: 51, baseType: !4188, size: 64, offset: 64)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!241, !281, !4191}
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4184, file: !4177, line: 53, baseType: !4193, size: 64, offset: 128)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!241, !334, !4191}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4184, file: !4177, line: 55, baseType: !516, size: 64, offset: 192)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4176, file: !4177, line: 73, baseType: !4198, size: 16, offset: 192)
!4198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4176, file: !4177, line: 74, baseType: !4200, size: 8, offset: 208)
!4200 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !211, line: 16, baseType: !4201)
!4201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !213, line: 20, baseType: !4202)
!4202 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4176, file: !4177, line: 75, baseType: !227, size: 8, offset: 216)
!4204 = !DIDerivedType(tag: DW_TAG_member, scope: !4176, file: !4177, line: 76, baseType: !4205, size: 64, offset: 256)
!4205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4176, file: !4177, line: 76, size: 64, elements: !4206)
!4206 = !{!4207, !4208, !4215}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4205, file: !4177, line: 77, baseType: !237, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4205, file: !4177, line: 78, baseType: !4209, size: 64)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4211)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4177, line: 86, size: 128, elements: !4212)
!4212 = !{!4213, !4214}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4211, file: !4177, line: 87, baseType: !7, size: 32)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4211, file: !4177, line: 88, baseType: !334, size: 64, offset: 64)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4205, file: !4177, line: 79, baseType: !4216, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4218)
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4177, line: 92, size: 256, elements: !4219)
!4219 = !{!4220, !4221, !4222, !4223, !4224}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4218, file: !4177, line: 94, baseType: !7, size: 32)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4218, file: !4177, line: 95, baseType: !7, size: 32, offset: 32)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4218, file: !4177, line: 96, baseType: !2727, size: 64, offset: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4218, file: !4177, line: 97, baseType: !4182, size: 64, offset: 128)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4218, file: !4177, line: 98, baseType: !237, size: 64, offset: 192)
!4225 = !DIGlobalVariableExpression(var: !4226, expr: !DIExpression())
!4226 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_max_versiontype240", scope: !2, file: !3, line: 65, type: !4227, isLocal: true, isDefinition: true, align: 8)
!4227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 280, elements: !4228)
!4228 = !{!4229}
!4229 = !DISubrange(count: 35)
!4230 = !DIGlobalVariableExpression(var: !4231, expr: !DIExpression())
!4231 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_max_version241", scope: !2, file: !3, line: 66, type: !4232, isLocal: true, isDefinition: true, align: 8)
!4232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 648, elements: !4233)
!4233 = !{!4234}
!4234 = !DISubrange(count: 81)
!4235 = !DIGlobalVariableExpression(var: !4236, expr: !DIExpression())
!4236 = distinct !DIGlobalVariable(name: "__key", scope: !4237, file: !3, line: 186, type: !695, isLocal: true, isDefinition: true)
!4237 = distinct !DISubprogram(name: "vmbus_connect", scope: !3, file: !3, line: 154, type: !4238, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !307)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!241}
!4240 = !DIGlobalVariableExpression(var: !4241, expr: !DIExpression())
!4241 = distinct !DIGlobalVariable(name: "vmbus_proto_version", scope: !2, file: !3, line: 41, type: !212, isLocal: false, isDefinition: true)
!4242 = !DIGlobalVariableExpression(var: !4243, expr: !DIExpression())
!4243 = distinct !DIGlobalVariable(name: "__param_str_max_version", scope: !2, file: !3, line: 65, type: !4244, isLocal: true, isDefinition: true)
!4244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 168, elements: !4245)
!4245 = !{!4246}
!4246 = !DISubrange(count: 21)
!4247 = !DIGlobalVariableExpression(var: !4248, expr: !DIExpression())
!4248 = distinct !DIGlobalVariable(name: "max_version", scope: !2, file: !3, line: 63, type: !4249, isLocal: true, isDefinition: true)
!4249 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint", file: !240, line: 87, baseType: !7)
!4250 = !DIGlobalVariableExpression(var: !4251, expr: !DIExpression())
!4251 = distinct !DIGlobalVariable(name: "__key", scope: !4252, file: !1549, line: 88, type: !695, isLocal: true, isDefinition: true)
!4252 = distinct !DISubprogram(name: "__init_completion", scope: !1549, file: !1549, line: 85, type: !4253, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{null, !1547}
!4255 = !DIGlobalVariableExpression(var: !4256, expr: !DIExpression())
!4256 = distinct !DIGlobalVariable(name: "vmbus_versions", scope: !2, file: !3, line: 47, type: !4257, isLocal: true, isDefinition: true)
!4257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 288, elements: !3517)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmbus_connection", file: !6, line: 217, size: 1856, elements: !4259)
!4259 = !{!4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4321, !4322, !4323, !4324, !4325, !4327, !4328, !4329, !4330, !4331, !4332, !4333}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "msg_conn_id", scope: !4258, file: !6, line: 218, baseType: !210, size: 32)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "offer_in_progress", scope: !4258, file: !6, line: 220, baseType: !797, size: 32, offset: 32)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "conn_state", scope: !4258, file: !6, line: 222, baseType: !5, size: 32, offset: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "next_gpadl_handle", scope: !4258, file: !6, line: 224, baseType: !797, size: 32, offset: 96)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "unload_event", scope: !4258, file: !6, line: 226, baseType: !1548, size: 192, offset: 128)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "int_page", scope: !4258, file: !6, line: 234, baseType: !237, size: 64, offset: 320)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "send_int_page", scope: !4258, file: !6, line: 235, baseType: !237, size: 64, offset: 384)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "recv_int_page", scope: !4258, file: !6, line: 236, baseType: !237, size: 64, offset: 448)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_pages", scope: !4258, file: !6, line: 242, baseType: !4269, size: 128, offset: 512)
!4269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4270, size: 128, elements: !1615)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_monitor_page", file: !6, line: 78, size: 32768, elements: !4272)
!4272 = !{!4273, !4282, !4283, !4293, !4295, !4298, !4300, !4302, !4317}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_state", scope: !4271, file: !6, line: 79, baseType: !4274, size: 32)
!4274 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "hv_monitor_trigger_state", file: !6, line: 50, size: 32, elements: !4275)
!4275 = !{!4276, !4277}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "asu32", scope: !4274, file: !6, line: 51, baseType: !210, size: 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, scope: !4274, file: !6, line: 53, baseType: !4278, size: 32)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4274, file: !6, line: 53, size: 32, elements: !4279)
!4279 = !{!4280, !4281}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "group_enable", scope: !4278, file: !6, line: 54, baseType: !210, size: 4, flags: DIFlagBitField, extraData: i64 0)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "rsvdz", scope: !4278, file: !6, line: 55, baseType: !210, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "rsvdz1", scope: !4271, file: !6, line: 80, baseType: !210, size: 32, offset: 32)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_group", scope: !4271, file: !6, line: 82, baseType: !4284, size: 256, offset: 64)
!4284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4285, size: 256, elements: !1203)
!4285 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "hv_monitor_trigger_group", file: !6, line: 36, size: 64, elements: !4286)
!4286 = !{!4287, !4288}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "as_uint64", scope: !4285, file: !6, line: 37, baseType: !220, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, scope: !4285, file: !6, line: 38, baseType: !4289, size: 64)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4285, file: !6, line: 38, size: 64, elements: !4290)
!4290 = !{!4291, !4292}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !4289, file: !6, line: 39, baseType: !210, size: 32)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "armed", scope: !4289, file: !6, line: 40, baseType: !210, size: 32, offset: 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "rsvdz2", scope: !4271, file: !6, line: 83, baseType: !4294, size: 192, offset: 320)
!4294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 192, elements: !232)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "next_checktime", scope: !4271, file: !6, line: 85, baseType: !4296, size: 4096, offset: 512)
!4296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1490, size: 4096, elements: !4297)
!4297 = !{!1204, !2275}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4271, file: !6, line: 87, baseType: !4299, size: 2048, offset: 4608)
!4299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 2048, elements: !4297)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "rsvdz3", scope: !4271, file: !6, line: 88, baseType: !4301, size: 2048, offset: 6656)
!4301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 2048, elements: !2274)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "parameter", scope: !4271, file: !6, line: 90, baseType: !4303, size: 8192, offset: 8704)
!4303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4304, size: 8192, elements: !4297)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv_monitor_parameter", file: !6, line: 44, size: 64, elements: !4305)
!4305 = !{!4306, !4315, !4316}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "connectionid", scope: !4304, file: !6, line: 45, baseType: !4307, size: 32)
!4307 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "hv_connection_id", file: !115, line: 739, size: 32, elements: !4308)
!4308 = !{!4309, !4310}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "asu32", scope: !4307, file: !115, line: 740, baseType: !210, size: 32)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4307, file: !115, line: 744, baseType: !4311, size: 32)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4307, file: !115, line: 741, size: 32, elements: !4312)
!4312 = !{!4313, !4314}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4311, file: !115, line: 742, baseType: !210, size: 24, flags: DIFlagBitField, extraData: i64 0)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4311, file: !115, line: 743, baseType: !210, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "flagnumber", scope: !4304, file: !6, line: 46, baseType: !269, size: 16, offset: 32)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "rsvdz", scope: !4304, file: !6, line: 47, baseType: !269, size: 16, offset: 48)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "rsvdz4", scope: !4271, file: !6, line: 92, baseType: !4318, size: 15872, offset: 16896)
!4318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 15872, elements: !4319)
!4319 = !{!4320}
!4320 = !DISubrange(count: 1984)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "chn_msg_list", scope: !4258, file: !6, line: 243, baseType: !249, size: 128, offset: 640)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "channelmsg_lock", scope: !4258, file: !6, line: 244, baseType: !293, offset: 768)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "chn_list", scope: !4258, file: !6, line: 247, baseType: !249, size: 128, offset: 768)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "channel_mutex", scope: !4258, file: !6, line: 248, baseType: !1221, size: 192, offset: 896)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !4258, file: !6, line: 251, baseType: !4326, size: 64, offset: 1088)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "work_queue", scope: !4258, file: !6, line: 258, baseType: !2836, size: 64, offset: 1152)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "handle_primary_chan_wq", scope: !4258, file: !6, line: 259, baseType: !2836, size: 64, offset: 1216)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "handle_sub_chan_wq", scope: !4258, file: !6, line: 260, baseType: !2836, size: 64, offset: 1280)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_chan_close_on_suspend", scope: !4258, file: !6, line: 267, baseType: !797, size: 32, offset: 1344)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "ready_for_suspend_event", scope: !4258, file: !6, line: 272, baseType: !1548, size: 192, offset: 1408)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_chan_fixup_on_resume", scope: !4258, file: !6, line: 281, baseType: !797, size: 32, offset: 1600)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "ready_for_resume_event", scope: !4258, file: !6, line: 286, baseType: !1548, size: 192, offset: 1664)
!4334 = !{!"rsp"}
!4335 = !{i32 7, !"Dwarf Version", i32 4}
!4336 = !{i32 2, !"Debug Info Version", i32 3}
!4337 = !{i32 1, !"wchar_size", i32 2}
!4338 = !{i32 1, !"Code Model", i32 2}
!4339 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4340 = distinct !DISubprogram(name: "vmbus_negotiate_version", scope: !3, file: !3, line: 69, type: !4341, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !307)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!241, !4343, !210}
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4344 = !DILocalVariable(name: "lock", arg: 1, scope: !4345, file: !4346, line: 327, type: !1112)
!4345 = distinct !DISubprogram(name: "spinlock_check", scope: !4346, file: !4346, line: 327, type: !4347, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!4346 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!4349, !1112}
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!4350 = !DILocation(line: 327, column: 67, scope: !4345, inlinedAt: !4351)
!4351 = distinct !DILocation(line: 133, column: 2, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4353, file: !3, line: 133, column: 2)
!4353 = distinct !DILexicalBlock(scope: !4354, file: !3, line: 133, column: 2)
!4354 = distinct !DILexicalBlock(scope: !4355, file: !3, line: 133, column: 2)
!4355 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 133, column: 2)
!4356 = distinct !DILexicalBlock(scope: !4340, file: !3, line: 133, column: 2)
!4357 = !DILocalVariable(name: "lock", arg: 1, scope: !4358, file: !4346, line: 407, type: !1112)
!4358 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4346, file: !4346, line: 407, type: !4359, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{null, !1112, !238}
!4361 = !DILocation(line: 407, column: 64, scope: !4358, inlinedAt: !4362)
!4362 = distinct !DILocation(line: 125, column: 3, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 122, column: 16)
!4364 = distinct !DILexicalBlock(scope: !4340, file: !3, line: 122, column: 6)
!4365 = !DILocalVariable(name: "flags", arg: 2, scope: !4358, file: !4346, line: 407, type: !238)
!4366 = !DILocation(line: 407, column: 84, scope: !4358, inlinedAt: !4362)
!4367 = !DILocation(line: 327, column: 67, scope: !4345, inlinedAt: !4368)
!4368 = distinct !DILocation(line: 123, column: 3, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4370, file: !3, line: 123, column: 3)
!4370 = distinct !DILexicalBlock(scope: !4371, file: !3, line: 123, column: 3)
!4371 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 123, column: 3)
!4372 = distinct !DILexicalBlock(scope: !4373, file: !3, line: 123, column: 3)
!4373 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 123, column: 3)
!4374 = !DILocation(line: 407, column: 64, scope: !4358, inlinedAt: !4375)
!4375 = distinct !DILocation(line: 114, column: 2, scope: !4340)
!4376 = !DILocation(line: 407, column: 84, scope: !4358, inlinedAt: !4375)
!4377 = !DILocation(line: 407, column: 64, scope: !4358, inlinedAt: !4378)
!4378 = distinct !DILocation(line: 135, column: 2, scope: !4340)
!4379 = !DILocation(line: 407, column: 84, scope: !4358, inlinedAt: !4378)
!4380 = !DILocation(line: 327, column: 67, scope: !4345, inlinedAt: !4381)
!4381 = distinct !DILocation(line: 110, column: 2, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4383, file: !3, line: 110, column: 2)
!4383 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 110, column: 2)
!4384 = distinct !DILexicalBlock(scope: !4385, file: !3, line: 110, column: 2)
!4385 = distinct !DILexicalBlock(scope: !4386, file: !3, line: 110, column: 2)
!4386 = distinct !DILexicalBlock(scope: !4340, file: !3, line: 110, column: 2)
!4387 = !DILocalVariable(name: "msginfo", arg: 1, scope: !4340, file: !3, line: 69, type: !4343)
!4388 = !DILocation(line: 69, column: 59, scope: !4340)
!4389 = !DILocalVariable(name: "version", arg: 2, scope: !4340, file: !3, line: 69, type: !210)
!4390 = !DILocation(line: 69, column: 72, scope: !4340)
!4391 = !DILocalVariable(name: "ret", scope: !4340, file: !3, line: 71, type: !241)
!4392 = !DILocation(line: 71, column: 6, scope: !4340)
!4393 = !DILocalVariable(name: "msg", scope: !4340, file: !3, line: 72, type: !202)
!4394 = !DILocation(line: 72, column: 41, scope: !4340)
!4395 = !DILocalVariable(name: "flags", scope: !4340, file: !3, line: 73, type: !238)
!4396 = !DILocation(line: 73, column: 16, scope: !4340)
!4397 = !DILocation(line: 75, column: 2, scope: !4340)
!4398 = !DILocation(line: 77, column: 49, scope: !4340)
!4399 = !DILocation(line: 77, column: 58, scope: !4340)
!4400 = !DILocation(line: 77, column: 8, scope: !4340)
!4401 = !DILocation(line: 77, column: 6, scope: !4340)
!4402 = !DILocation(line: 79, column: 9, scope: !4340)
!4403 = !DILocation(line: 79, column: 2, scope: !4340)
!4404 = !DILocation(line: 80, column: 2, scope: !4340)
!4405 = !DILocation(line: 80, column: 7, scope: !4340)
!4406 = !DILocation(line: 80, column: 14, scope: !4340)
!4407 = !DILocation(line: 80, column: 22, scope: !4340)
!4408 = !DILocation(line: 81, column: 33, scope: !4340)
!4409 = !DILocation(line: 81, column: 2, scope: !4340)
!4410 = !DILocation(line: 81, column: 7, scope: !4340)
!4411 = !DILocation(line: 81, column: 31, scope: !4340)
!4412 = !DILocation(line: 94, column: 6, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4340, file: !3, line: 94, column: 6)
!4414 = !DILocation(line: 94, column: 14, scope: !4413)
!4415 = !DILocation(line: 94, column: 6, scope: !4340)
!4416 = !DILocation(line: 95, column: 3, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4413, file: !3, line: 94, column: 35)
!4418 = !DILocation(line: 95, column: 8, scope: !4417)
!4419 = !DILocation(line: 95, column: 17, scope: !4417)
!4420 = !DILocation(line: 96, column: 32, scope: !4417)
!4421 = !DILocation(line: 97, column: 2, scope: !4417)
!4422 = !DILocation(line: 98, column: 55, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4413, file: !3, line: 97, column: 9)
!4424 = !DILocation(line: 98, column: 25, scope: !4423)
!4425 = !DILocation(line: 98, column: 3, scope: !4423)
!4426 = !DILocation(line: 98, column: 8, scope: !4423)
!4427 = !DILocation(line: 98, column: 23, scope: !4423)
!4428 = !DILocation(line: 99, column: 32, scope: !4423)
!4429 = !DILocation(line: 102, column: 36, scope: !4340)
!4430 = !DILocation(line: 102, column: 23, scope: !4340)
!4431 = !DILocation(line: 102, column: 2, scope: !4340)
!4432 = !DILocation(line: 102, column: 7, scope: !4340)
!4433 = !DILocation(line: 102, column: 21, scope: !4340)
!4434 = !DILocation(line: 103, column: 36, scope: !4340)
!4435 = !DILocation(line: 103, column: 23, scope: !4340)
!4436 = !DILocation(line: 103, column: 2, scope: !4340)
!4437 = !DILocation(line: 103, column: 7, scope: !4340)
!4438 = !DILocation(line: 103, column: 21, scope: !4340)
!4439 = !DILocation(line: 104, column: 21, scope: !4340)
!4440 = !DILocation(line: 104, column: 2, scope: !4340)
!4441 = !DILocation(line: 104, column: 7, scope: !4340)
!4442 = !DILocation(line: 104, column: 19, scope: !4340)
!4443 = !DILocation(line: 110, column: 2, scope: !4340)
!4444 = !DILocation(line: 110, column: 2, scope: !4386)
!4445 = !DILocalVariable(name: "__dummy", scope: !4446, file: !3, line: 110, type: !238)
!4446 = distinct !DILexicalBlock(scope: !4385, file: !3, line: 110, column: 2)
!4447 = !DILocation(line: 110, column: 2, scope: !4446)
!4448 = !DILocalVariable(name: "__dummy2", scope: !4446, file: !3, line: 110, type: !238)
!4449 = !DILocation(line: 110, column: 2, scope: !4385)
!4450 = !DILocation(line: 110, column: 2, scope: !4384)
!4451 = !DILocation(line: 110, column: 2, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 110, column: 2)
!4453 = !DILocalVariable(name: "__dummy", scope: !4454, file: !3, line: 110, type: !238)
!4454 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 110, column: 2)
!4455 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 110, column: 2)
!4456 = !DILocation(line: 110, column: 2, scope: !4454)
!4457 = !DILocalVariable(name: "__dummy2", scope: !4454, file: !3, line: 110, type: !238)
!4458 = !DILocation(line: 110, column: 2, scope: !4455)
!4459 = !DILocation(line: 110, column: 2, scope: !4383)
!4460 = !{i32 -2141600237}
!4461 = !DILocation(line: 329, column: 10, scope: !4345, inlinedAt: !4381)
!4462 = !DILocation(line: 329, column: 16, scope: !4345, inlinedAt: !4381)
!4463 = !DILocation(line: 110, column: 2, scope: !4382)
!4464 = !DILocation(line: 111, column: 17, scope: !4340)
!4465 = !DILocation(line: 111, column: 26, scope: !4340)
!4466 = !DILocation(line: 111, column: 2, scope: !4340)
!4467 = !DILocation(line: 114, column: 60, scope: !4340)
!4468 = !DILocalVariable(name: "__dummy", scope: !4469, file: !4346, line: 409, type: !238)
!4469 = distinct !DILexicalBlock(scope: !4470, file: !4346, line: 409, column: 2)
!4470 = distinct !DILexicalBlock(scope: !4358, file: !4346, line: 409, column: 2)
!4471 = !DILocation(line: 409, column: 2, scope: !4469, inlinedAt: !4375)
!4472 = !DILocalVariable(name: "__dummy2", scope: !4469, file: !4346, line: 409, type: !238)
!4473 = !DILocalVariable(name: "__dummy", scope: !4474, file: !4346, line: 409, type: !238)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !4346, line: 409, column: 2)
!4475 = distinct !DILexicalBlock(scope: !4476, file: !4346, line: 409, column: 2)
!4476 = distinct !DILexicalBlock(scope: !4477, file: !4346, line: 409, column: 2)
!4477 = distinct !DILexicalBlock(scope: !4470, file: !4346, line: 409, column: 2)
!4478 = !DILocation(line: 409, column: 2, scope: !4474, inlinedAt: !4375)
!4479 = !DILocalVariable(name: "__dummy2", scope: !4474, file: !4346, line: 409, type: !238)
!4480 = !DILocation(line: 409, column: 2, scope: !4475, inlinedAt: !4375)
!4481 = !DILocation(line: 409, column: 2, scope: !4482, inlinedAt: !4375)
!4482 = distinct !DILexicalBlock(scope: !4477, file: !4346, line: 409, column: 2)
!4483 = !{i32 -2145328231}
!4484 = !DILocation(line: 409, column: 2, scope: !4485, inlinedAt: !4375)
!4485 = distinct !DILexicalBlock(scope: !4482, file: !4346, line: 409, column: 2)
!4486 = !DILocation(line: 116, column: 23, scope: !4340)
!4487 = !DILocation(line: 116, column: 8, scope: !4340)
!4488 = !DILocation(line: 116, column: 6, scope: !4340)
!4489 = !DILocation(line: 120, column: 32, scope: !4340)
!4490 = !DILocation(line: 120, column: 37, scope: !4340)
!4491 = !DILocation(line: 120, column: 2, scope: !4340)
!4492 = !DILocation(line: 122, column: 6, scope: !4364)
!4493 = !DILocation(line: 122, column: 10, scope: !4364)
!4494 = !DILocation(line: 122, column: 6, scope: !4340)
!4495 = !DILocation(line: 123, column: 3, scope: !4363)
!4496 = !DILocation(line: 123, column: 3, scope: !4373)
!4497 = !DILocalVariable(name: "__dummy", scope: !4498, file: !3, line: 123, type: !238)
!4498 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 123, column: 3)
!4499 = !DILocation(line: 123, column: 3, scope: !4498)
!4500 = !DILocalVariable(name: "__dummy2", scope: !4498, file: !3, line: 123, type: !238)
!4501 = !DILocation(line: 123, column: 3, scope: !4372)
!4502 = !DILocation(line: 123, column: 3, scope: !4371)
!4503 = !DILocation(line: 123, column: 3, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4371, file: !3, line: 123, column: 3)
!4505 = !DILocalVariable(name: "__dummy", scope: !4506, file: !3, line: 123, type: !238)
!4506 = distinct !DILexicalBlock(scope: !4507, file: !3, line: 123, column: 3)
!4507 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 123, column: 3)
!4508 = !DILocation(line: 123, column: 3, scope: !4506)
!4509 = !DILocalVariable(name: "__dummy2", scope: !4506, file: !3, line: 123, type: !238)
!4510 = !DILocation(line: 123, column: 3, scope: !4507)
!4511 = !DILocation(line: 123, column: 3, scope: !4370)
!4512 = !{i32 -2141599064}
!4513 = !DILocation(line: 329, column: 10, scope: !4345, inlinedAt: !4368)
!4514 = !DILocation(line: 329, column: 16, scope: !4345, inlinedAt: !4368)
!4515 = !DILocation(line: 123, column: 3, scope: !4369)
!4516 = !DILocation(line: 124, column: 13, scope: !4363)
!4517 = !DILocation(line: 124, column: 22, scope: !4363)
!4518 = !DILocation(line: 124, column: 3, scope: !4363)
!4519 = !DILocation(line: 126, column: 6, scope: !4363)
!4520 = !DILocation(line: 409, column: 2, scope: !4469, inlinedAt: !4362)
!4521 = !DILocation(line: 409, column: 2, scope: !4474, inlinedAt: !4362)
!4522 = !DILocation(line: 409, column: 2, scope: !4475, inlinedAt: !4362)
!4523 = !DILocation(line: 409, column: 2, scope: !4482, inlinedAt: !4362)
!4524 = !DILocation(line: 409, column: 2, scope: !4485, inlinedAt: !4362)
!4525 = !DILocation(line: 127, column: 10, scope: !4363)
!4526 = !DILocation(line: 127, column: 3, scope: !4363)
!4527 = !DILocation(line: 131, column: 23, scope: !4340)
!4528 = !DILocation(line: 131, column: 32, scope: !4340)
!4529 = !DILocation(line: 131, column: 2, scope: !4340)
!4530 = !DILocation(line: 133, column: 2, scope: !4340)
!4531 = !DILocation(line: 133, column: 2, scope: !4356)
!4532 = !DILocalVariable(name: "__dummy", scope: !4533, file: !3, line: 133, type: !238)
!4533 = distinct !DILexicalBlock(scope: !4355, file: !3, line: 133, column: 2)
!4534 = !DILocation(line: 133, column: 2, scope: !4533)
!4535 = !DILocalVariable(name: "__dummy2", scope: !4533, file: !3, line: 133, type: !238)
!4536 = !DILocation(line: 133, column: 2, scope: !4355)
!4537 = !DILocation(line: 133, column: 2, scope: !4354)
!4538 = !DILocation(line: 133, column: 2, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4354, file: !3, line: 133, column: 2)
!4540 = !DILocalVariable(name: "__dummy", scope: !4541, file: !3, line: 133, type: !238)
!4541 = distinct !DILexicalBlock(scope: !4542, file: !3, line: 133, column: 2)
!4542 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 133, column: 2)
!4543 = !DILocation(line: 133, column: 2, scope: !4541)
!4544 = !DILocalVariable(name: "__dummy2", scope: !4541, file: !3, line: 133, type: !238)
!4545 = !DILocation(line: 133, column: 2, scope: !4542)
!4546 = !DILocation(line: 133, column: 2, scope: !4353)
!4547 = !{i32 -2141597891}
!4548 = !DILocation(line: 329, column: 10, scope: !4345, inlinedAt: !4351)
!4549 = !DILocation(line: 329, column: 16, scope: !4345, inlinedAt: !4351)
!4550 = !DILocation(line: 133, column: 2, scope: !4352)
!4551 = !DILocation(line: 134, column: 12, scope: !4340)
!4552 = !DILocation(line: 134, column: 21, scope: !4340)
!4553 = !DILocation(line: 134, column: 2, scope: !4340)
!4554 = !DILocation(line: 135, column: 60, scope: !4340)
!4555 = !DILocation(line: 409, column: 2, scope: !4469, inlinedAt: !4378)
!4556 = !DILocation(line: 409, column: 2, scope: !4474, inlinedAt: !4378)
!4557 = !DILocation(line: 409, column: 2, scope: !4475, inlinedAt: !4378)
!4558 = !DILocation(line: 409, column: 2, scope: !4482, inlinedAt: !4378)
!4559 = !DILocation(line: 409, column: 2, scope: !4485, inlinedAt: !4378)
!4560 = !DILocation(line: 138, column: 6, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4340, file: !3, line: 138, column: 6)
!4562 = !DILocation(line: 138, column: 15, scope: !4561)
!4563 = !DILocation(line: 138, column: 24, scope: !4561)
!4564 = !DILocation(line: 138, column: 41, scope: !4561)
!4565 = !DILocation(line: 138, column: 6, scope: !4340)
!4566 = !DILocation(line: 139, column: 31, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 138, column: 60)
!4568 = !DILocation(line: 141, column: 7, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4567, file: !3, line: 141, column: 7)
!4570 = !DILocation(line: 141, column: 15, scope: !4569)
!4571 = !DILocation(line: 141, column: 7, scope: !4567)
!4572 = !DILocation(line: 143, column: 5, scope: !4569)
!4573 = !DILocation(line: 143, column: 14, scope: !4569)
!4574 = !DILocation(line: 143, column: 23, scope: !4569)
!4575 = !DILocation(line: 143, column: 40, scope: !4569)
!4576 = !DILocation(line: 142, column: 33, scope: !4569)
!4577 = !DILocation(line: 142, column: 4, scope: !4569)
!4578 = !DILocation(line: 144, column: 2, scope: !4567)
!4579 = !DILocation(line: 145, column: 3, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 144, column: 9)
!4581 = !DILocation(line: 148, column: 9, scope: !4340)
!4582 = !DILocation(line: 148, column: 2, scope: !4340)
!4583 = !DILocation(line: 149, column: 1, scope: !4340)
!4584 = !DILocalVariable(name: "x", arg: 1, scope: !4252, file: !1549, line: 85, type: !1547)
!4585 = !DILocation(line: 85, column: 57, scope: !4252)
!4586 = !DILocation(line: 87, column: 2, scope: !4252)
!4587 = !DILocation(line: 87, column: 5, scope: !4252)
!4588 = !DILocation(line: 87, column: 10, scope: !4252)
!4589 = !DILocation(line: 88, column: 2, scope: !4252)
!4590 = !DILocation(line: 88, column: 2, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4252, file: !1549, line: 88, column: 2)
!4592 = !DILocation(line: 89, column: 1, scope: !4252)
!4593 = distinct !DISubprogram(name: "virt_to_phys", scope: !4594, file: !4594, line: 129, type: !4595, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!4594 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!2169, !4597}
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4599 = !DILocalVariable(name: "address", arg: 1, scope: !4593, file: !4594, line: 129, type: !4597)
!4600 = !DILocation(line: 129, column: 55, scope: !4593)
!4601 = !DILocation(line: 131, column: 9, scope: !4593)
!4602 = !DILocation(line: 131, column: 2, scope: !4593)
!4603 = distinct !DISubprogram(name: "hv_cpu_number_to_vp_number", scope: !4604, file: !4604, line: 128, type: !3095, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!4604 = !DIFile(filename: "./include/asm-generic/mshyperv.h", directory: "/home/lizy2001/genbc/linux")
!4605 = !DILocalVariable(name: "cpu_number", arg: 1, scope: !4603, file: !4604, line: 128, type: !241)
!4606 = !DILocation(line: 128, column: 50, scope: !4603)
!4607 = !DILocation(line: 130, column: 9, scope: !4603)
!4608 = !DILocation(line: 130, column: 21, scope: !4603)
!4609 = !DILocation(line: 130, column: 2, scope: !4603)
!4610 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4611, file: !4611, line: 666, type: !4612, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!4611 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!238}
!4614 = !DILocalVariable(name: "f", scope: !4610, file: !4611, line: 668, type: !238)
!4615 = !DILocation(line: 668, column: 16, scope: !4610)
!4616 = !DILocation(line: 670, column: 6, scope: !4610)
!4617 = !DILocation(line: 670, column: 4, scope: !4610)
!4618 = !DILocation(line: 671, column: 2, scope: !4610)
!4619 = !DILocation(line: 672, column: 9, scope: !4610)
!4620 = !DILocation(line: 672, column: 2, scope: !4610)
!4621 = distinct !DISubprogram(name: "list_add_tail", scope: !4622, file: !4622, line: 98, type: !4623, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!4622 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4623 = !DISubroutineType(types: !4624)
!4624 = !{null, !252, !252}
!4625 = !DILocalVariable(name: "new", arg: 1, scope: !4621, file: !4622, line: 98, type: !252)
!4626 = !DILocation(line: 98, column: 52, scope: !4621)
!4627 = !DILocalVariable(name: "head", arg: 2, scope: !4621, file: !4622, line: 98, type: !252)
!4628 = !DILocation(line: 98, column: 75, scope: !4621)
!4629 = !DILocation(line: 100, column: 13, scope: !4621)
!4630 = !DILocation(line: 100, column: 18, scope: !4621)
!4631 = !DILocation(line: 100, column: 24, scope: !4621)
!4632 = !DILocation(line: 100, column: 30, scope: !4621)
!4633 = !DILocation(line: 100, column: 2, scope: !4621)
!4634 = !DILocation(line: 101, column: 1, scope: !4621)
!4635 = distinct !DISubprogram(name: "vmbus_post_msg", scope: !3, file: !3, line: 362, type: !4636, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !307)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!241, !237, !378, !538}
!4638 = !DILocalVariable(name: "buffer", arg: 1, scope: !4635, file: !3, line: 362, type: !237)
!4639 = !DILocation(line: 362, column: 26, scope: !4635)
!4640 = !DILocalVariable(name: "buflen", arg: 2, scope: !4635, file: !3, line: 362, type: !378)
!4641 = !DILocation(line: 362, column: 41, scope: !4635)
!4642 = !DILocalVariable(name: "can_sleep", arg: 3, scope: !4635, file: !3, line: 362, type: !538)
!4643 = !DILocation(line: 362, column: 54, scope: !4635)
!4644 = !DILocalVariable(name: "hdr", scope: !4635, file: !3, line: 364, type: !4645)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!4646 = !DILocation(line: 364, column: 39, scope: !4635)
!4647 = !DILocalVariable(name: "conn_id", scope: !4635, file: !3, line: 365, type: !4307)
!4648 = !DILocation(line: 365, column: 25, scope: !4635)
!4649 = !DILocalVariable(name: "ret", scope: !4635, file: !3, line: 366, type: !241)
!4650 = !DILocation(line: 366, column: 6, scope: !4635)
!4651 = !DILocalVariable(name: "retries", scope: !4635, file: !3, line: 367, type: !241)
!4652 = !DILocation(line: 367, column: 6, scope: !4635)
!4653 = !DILocalVariable(name: "usec", scope: !4635, file: !3, line: 368, type: !210)
!4654 = !DILocation(line: 368, column: 6, scope: !4635)
!4655 = !DILocation(line: 370, column: 10, scope: !4635)
!4656 = !DILocation(line: 370, column: 16, scope: !4635)
!4657 = !DILocation(line: 371, column: 34, scope: !4635)
!4658 = !DILocation(line: 371, column: 10, scope: !4635)
!4659 = !DILocation(line: 371, column: 12, scope: !4635)
!4660 = !DILocation(line: 371, column: 15, scope: !4635)
!4661 = !DILocation(line: 378, column: 2, scope: !4635)
!4662 = !DILocation(line: 378, column: 9, scope: !4635)
!4663 = !DILocation(line: 378, column: 17, scope: !4635)
!4664 = !DILocation(line: 379, column: 37, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 378, column: 24)
!4666 = !DILocation(line: 379, column: 45, scope: !4665)
!4667 = !DILocation(line: 379, column: 9, scope: !4665)
!4668 = !DILocation(line: 379, column: 7, scope: !4665)
!4669 = !DILocation(line: 381, column: 11, scope: !4665)
!4670 = !DILocation(line: 381, column: 3, scope: !4665)
!4671 = !DILocation(line: 392, column: 10, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 381, column: 16)
!4673 = !DILocation(line: 392, column: 8, scope: !4672)
!4674 = !DILocation(line: 393, column: 8, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 393, column: 8)
!4676 = !DILocation(line: 393, column: 13, scope: !4675)
!4677 = !DILocation(line: 393, column: 21, scope: !4675)
!4678 = !DILocation(line: 393, column: 8, scope: !4672)
!4679 = !DILocation(line: 394, column: 5, scope: !4675)
!4680 = !DILocation(line: 399, column: 8, scope: !4672)
!4681 = !DILocation(line: 400, column: 4, scope: !4672)
!4682 = !DILocation(line: 403, column: 8, scope: !4672)
!4683 = !DILocation(line: 404, column: 4, scope: !4672)
!4684 = !DILocation(line: 406, column: 11, scope: !4672)
!4685 = !DILocation(line: 406, column: 4, scope: !4672)
!4686 = !DILocation(line: 408, column: 4, scope: !4672)
!4687 = !DILocation(line: 409, column: 4, scope: !4672)
!4688 = !DILocation(line: 412, column: 10, scope: !4665)
!4689 = !DILocation(line: 413, column: 7, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 413, column: 7)
!4691 = !DILocation(line: 413, column: 17, scope: !4690)
!4692 = !DILocation(line: 413, column: 20, scope: !4690)
!4693 = !DILocation(line: 413, column: 25, scope: !4690)
!4694 = !DILocation(line: 413, column: 7, scope: !4665)
!4695 = !DILocation(line: 414, column: 11, scope: !4690)
!4696 = !DILocation(line: 414, column: 16, scope: !4690)
!4697 = !DILocation(line: 414, column: 4, scope: !4690)
!4698 = !DILocation(line: 415, column: 12, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4690, file: !3, line: 415, column: 12)
!4700 = !DILocation(line: 415, column: 17, scope: !4699)
!4701 = !DILocation(line: 415, column: 12, scope: !4690)
!4702 = !DILocation(line: 416, column: 4, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4704, file: !3, line: 416, column: 4)
!4704 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 416, column: 4)
!4705 = !DILocation(line: 416, column: 4, scope: !4704)
!4706 = !DILocation(line: 416, column: 4, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 416, column: 4)
!4708 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 416, column: 4)
!4709 = !DILocation(line: 416, column: 4, scope: !4708)
!4710 = !DILocation(line: 416, column: 4, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 416, column: 4)
!4712 = !DILocation(line: 416, column: 4, scope: !4699)
!4713 = !DILocation(line: 418, column: 4, scope: !4699)
!4714 = !DILocation(line: 418, column: 4, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 418, column: 4)
!4716 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 418, column: 4)
!4717 = !DILocation(line: 418, column: 4, scope: !4716)
!4718 = !DILocation(line: 418, column: 4, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4720, file: !3, line: 418, column: 4)
!4720 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 418, column: 4)
!4721 = !DILocation(line: 418, column: 4, scope: !4720)
!4722 = !DILocation(line: 418, column: 4, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4715, file: !3, line: 418, column: 4)
!4724 = !DILocalVariable(name: "__ms", scope: !4725, file: !3, line: 418, type: !238)
!4725 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 418, column: 4)
!4726 = !DILocation(line: 418, column: 4, scope: !4725)
!4727 = !DILocation(line: 418, column: 4, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 418, column: 4)
!4729 = distinct !DILexicalBlock(scope: !4730, file: !3, line: 418, column: 4)
!4730 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 418, column: 4)
!4731 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 418, column: 4)
!4732 = distinct !{!4732, !4726, !4726}
!4733 = !DILocation(line: 420, column: 7, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 420, column: 7)
!4735 = !DILocation(line: 420, column: 15, scope: !4734)
!4736 = !DILocation(line: 420, column: 7, scope: !4665)
!4737 = !DILocation(line: 421, column: 9, scope: !4734)
!4738 = !DILocation(line: 421, column: 4, scope: !4734)
!4739 = distinct !{!4739, !4661, !4740}
!4740 = !DILocation(line: 422, column: 2, scope: !4635)
!4741 = !DILocation(line: 423, column: 9, scope: !4635)
!4742 = !DILocation(line: 423, column: 2, scope: !4635)
!4743 = !DILocation(line: 424, column: 1, scope: !4635)
!4744 = distinct !DISubprogram(name: "trace_vmbus_negotiate_version", scope: !4745, file: !4745, line: 235, type: !4746, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!4745 = !DIFile(filename: "drivers/hv/hv_trace.h", directory: "/home/lizy2001/genbc/linux")
!4746 = !DISubroutineType(types: !4747)
!4747 = !{null, !4748, !241}
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!4750 = !DILocalVariable(name: "msg", arg: 1, scope: !4744, file: !4745, line: 235, type: !4748)
!4751 = !DILocation(line: 235, column: 1, scope: !4744)
!4752 = !DILocalVariable(name: "ret", arg: 2, scope: !4744, file: !4745, line: 235, type: !241)
!4753 = distinct !DISubprogram(name: "list_del", scope: !4622, file: !4622, line: 144, type: !4754, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{null, !252}
!4756 = !DILocalVariable(name: "entry", arg: 1, scope: !4753, file: !4622, line: 144, type: !252)
!4757 = !DILocation(line: 144, column: 47, scope: !4753)
!4758 = !DILocation(line: 146, column: 19, scope: !4753)
!4759 = !DILocation(line: 146, column: 2, scope: !4753)
!4760 = !DILocation(line: 147, column: 2, scope: !4753)
!4761 = !DILocation(line: 147, column: 9, scope: !4753)
!4762 = !DILocation(line: 147, column: 14, scope: !4753)
!4763 = !DILocation(line: 148, column: 2, scope: !4753)
!4764 = !DILocation(line: 148, column: 9, scope: !4753)
!4765 = !DILocation(line: 148, column: 14, scope: !4753)
!4766 = !DILocation(line: 149, column: 1, scope: !4753)
!4767 = !DILocation(line: 327, column: 67, scope: !4345, inlinedAt: !4768)
!4768 = distinct !DILocation(line: 183, column: 2, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 183, column: 2)
!4770 = !DILocalVariable(name: "msginfo", scope: !4237, file: !3, line: 156, type: !4343)
!4771 = !DILocation(line: 156, column: 32, scope: !4237)
!4772 = !DILocalVariable(name: "i", scope: !4237, file: !3, line: 157, type: !241)
!4773 = !DILocation(line: 157, column: 6, scope: !4237)
!4774 = !DILocalVariable(name: "ret", scope: !4237, file: !3, line: 157, type: !241)
!4775 = !DILocation(line: 157, column: 9, scope: !4237)
!4776 = !DILocalVariable(name: "version", scope: !4237, file: !3, line: 158, type: !212)
!4777 = !DILocation(line: 158, column: 8, scope: !4237)
!4778 = !DILocation(line: 161, column: 30, scope: !4237)
!4779 = !DILocation(line: 162, column: 32, scope: !4237)
!4780 = !DILocation(line: 162, column: 30, scope: !4237)
!4781 = !DILocation(line: 163, column: 24, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 163, column: 6)
!4783 = !DILocation(line: 163, column: 7, scope: !4782)
!4784 = !DILocation(line: 163, column: 6, scope: !4237)
!4785 = !DILocation(line: 164, column: 7, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4782, file: !3, line: 163, column: 36)
!4787 = !DILocation(line: 165, column: 3, scope: !4786)
!4788 = !DILocation(line: 169, column: 3, scope: !4237)
!4789 = !DILocation(line: 168, column: 42, scope: !4237)
!4790 = !DILocation(line: 170, column: 24, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 170, column: 6)
!4792 = !DILocation(line: 170, column: 7, scope: !4791)
!4793 = !DILocation(line: 170, column: 6, scope: !4237)
!4794 = !DILocation(line: 171, column: 7, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4791, file: !3, line: 170, column: 48)
!4796 = !DILocation(line: 172, column: 3, scope: !4795)
!4797 = !DILocation(line: 176, column: 3, scope: !4237)
!4798 = !DILocation(line: 175, column: 38, scope: !4237)
!4799 = !DILocation(line: 177, column: 24, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 177, column: 6)
!4801 = !DILocation(line: 177, column: 7, scope: !4800)
!4802 = !DILocation(line: 177, column: 6, scope: !4237)
!4803 = !DILocation(line: 178, column: 7, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 177, column: 44)
!4805 = !DILocation(line: 179, column: 3, scope: !4804)
!4806 = !DILocation(line: 182, column: 2, scope: !4237)
!4807 = !DILocation(line: 183, column: 2, scope: !4237)
!4808 = !DILocation(line: 329, column: 10, scope: !4345, inlinedAt: !4768)
!4809 = !DILocation(line: 329, column: 16, scope: !4345, inlinedAt: !4768)
!4810 = !DILocation(line: 183, column: 2, scope: !4769)
!4811 = !DILocation(line: 185, column: 2, scope: !4237)
!4812 = !DILocation(line: 186, column: 2, scope: !4237)
!4813 = !DILocation(line: 186, column: 2, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 186, column: 2)
!4815 = !DILocation(line: 193, column: 10, scope: !4237)
!4816 = !DILocation(line: 192, column: 28, scope: !4237)
!4817 = !DILocation(line: 194, column: 23, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 194, column: 6)
!4819 = !DILocation(line: 194, column: 32, scope: !4818)
!4820 = !DILocation(line: 194, column: 6, scope: !4237)
!4821 = !DILocation(line: 195, column: 7, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 194, column: 41)
!4823 = !DILocation(line: 196, column: 3, scope: !4822)
!4824 = !DILocation(line: 199, column: 52, scope: !4237)
!4825 = !DILocation(line: 199, column: 33, scope: !4237)
!4826 = !DILocation(line: 201, column: 44, scope: !4237)
!4827 = !DILocation(line: 201, column: 12, scope: !4237)
!4828 = !DILocation(line: 201, column: 53, scope: !4237)
!4829 = !DILocation(line: 201, column: 3, scope: !4237)
!4830 = !DILocation(line: 200, column: 33, scope: !4237)
!4831 = !DILocation(line: 208, column: 46, scope: !4237)
!4832 = !DILocation(line: 208, column: 38, scope: !4237)
!4833 = !DILocation(line: 208, column: 36, scope: !4237)
!4834 = !DILocation(line: 209, column: 46, scope: !4237)
!4835 = !DILocation(line: 209, column: 38, scope: !4237)
!4836 = !DILocation(line: 209, column: 36, scope: !4237)
!4837 = !DILocation(line: 210, column: 7, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 210, column: 6)
!4839 = !DILocation(line: 210, column: 41, scope: !4838)
!4840 = !DILocation(line: 210, column: 50, scope: !4838)
!4841 = !DILocation(line: 211, column: 7, scope: !4838)
!4842 = !DILocation(line: 211, column: 41, scope: !4838)
!4843 = !DILocation(line: 210, column: 6, scope: !4237)
!4844 = !DILocation(line: 212, column: 7, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4838, file: !3, line: 211, column: 51)
!4846 = !DILocation(line: 213, column: 3, scope: !4845)
!4847 = !DILocation(line: 216, column: 12, scope: !4237)
!4848 = !DILocation(line: 216, column: 10, scope: !4237)
!4849 = !DILocation(line: 219, column: 6, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 219, column: 6)
!4851 = !DILocation(line: 219, column: 14, scope: !4850)
!4852 = !DILocation(line: 219, column: 6, scope: !4237)
!4853 = !DILocation(line: 220, column: 7, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 219, column: 23)
!4855 = !DILocation(line: 221, column: 3, scope: !4854)
!4856 = !DILocation(line: 231, column: 9, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 231, column: 2)
!4858 = !DILocation(line: 231, column: 7, scope: !4857)
!4859 = !DILocation(line: 232, column: 7, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4861, file: !3, line: 232, column: 7)
!4861 = distinct !DILexicalBlock(scope: !4862, file: !3, line: 231, column: 21)
!4862 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 231, column: 2)
!4863 = !DILocation(line: 232, column: 9, scope: !4860)
!4864 = !DILocation(line: 232, column: 7, scope: !4861)
!4865 = !DILocation(line: 233, column: 4, scope: !4860)
!4866 = !DILocation(line: 235, column: 28, scope: !4861)
!4867 = !DILocation(line: 235, column: 13, scope: !4861)
!4868 = !DILocation(line: 235, column: 11, scope: !4861)
!4869 = !DILocation(line: 236, column: 7, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4861, file: !3, line: 236, column: 7)
!4871 = !DILocation(line: 236, column: 17, scope: !4870)
!4872 = !DILocation(line: 236, column: 15, scope: !4870)
!4873 = !DILocation(line: 236, column: 7, scope: !4861)
!4874 = !DILocation(line: 237, column: 4, scope: !4870)
!4875 = !DILocation(line: 239, column: 33, scope: !4861)
!4876 = !DILocation(line: 239, column: 42, scope: !4861)
!4877 = !DILocation(line: 239, column: 9, scope: !4861)
!4878 = !DILocation(line: 239, column: 7, scope: !4861)
!4879 = !DILocation(line: 240, column: 7, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4861, file: !3, line: 240, column: 7)
!4881 = !DILocation(line: 240, column: 11, scope: !4880)
!4882 = !DILocation(line: 240, column: 7, scope: !4861)
!4883 = !DILocation(line: 241, column: 4, scope: !4880)
!4884 = !DILocation(line: 243, column: 24, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4861, file: !3, line: 243, column: 7)
!4886 = !DILocation(line: 243, column: 35, scope: !4885)
!4887 = !DILocation(line: 243, column: 7, scope: !4861)
!4888 = !DILocation(line: 244, column: 4, scope: !4885)
!4889 = !DILocation(line: 245, column: 2, scope: !4861)
!4890 = !DILocation(line: 231, column: 17, scope: !4862)
!4891 = !DILocation(line: 231, column: 2, scope: !4862)
!4892 = distinct !{!4892, !4893, !4894}
!4893 = !DILocation(line: 231, column: 2, scope: !4857)
!4894 = !DILocation(line: 245, column: 2, scope: !4857)
!4895 = !DILocation(line: 247, column: 24, scope: !4237)
!4896 = !DILocation(line: 247, column: 22, scope: !4237)
!4897 = !DILocation(line: 248, column: 2, scope: !4237)
!4898 = !DILocation(line: 251, column: 30, scope: !4237)
!4899 = !DILocation(line: 251, column: 28, scope: !4237)
!4900 = !DILocation(line: 254, column: 23, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 254, column: 6)
!4902 = !DILocation(line: 254, column: 32, scope: !4901)
!4903 = !DILocation(line: 254, column: 6, scope: !4237)
!4904 = !DILocation(line: 255, column: 7, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 254, column: 41)
!4906 = !DILocation(line: 256, column: 3, scope: !4905)
!4907 = !DILocation(line: 259, column: 8, scope: !4237)
!4908 = !DILocation(line: 259, column: 2, scope: !4237)
!4909 = !DILocation(line: 260, column: 2, scope: !4237)
!4910 = !DILabel(scope: !4237, name: "cleanup", file: !3, line: 262)
!4911 = !DILocation(line: 262, column: 1, scope: !4237)
!4912 = !DILocation(line: 263, column: 2, scope: !4237)
!4913 = !DILocation(line: 265, column: 30, scope: !4237)
!4914 = !DILocation(line: 266, column: 2, scope: !4237)
!4915 = !DILocation(line: 268, column: 8, scope: !4237)
!4916 = !DILocation(line: 268, column: 2, scope: !4237)
!4917 = !DILocation(line: 270, column: 9, scope: !4237)
!4918 = !DILocation(line: 270, column: 2, scope: !4237)
!4919 = !DILocation(line: 271, column: 1, scope: !4237)
!4920 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4622, file: !4622, line: 33, type: !4754, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!4921 = !DILocalVariable(name: "list", arg: 1, scope: !4920, file: !4622, line: 33, type: !252)
!4922 = !DILocation(line: 33, column: 53, scope: !4920)
!4923 = !DILocation(line: 35, column: 2, scope: !4920)
!4924 = !DILocation(line: 35, column: 2, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4920, file: !4622, line: 35, column: 2)
!4926 = !DILocation(line: 35, column: 2, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4925, file: !4622, line: 35, column: 2)
!4928 = !DILocation(line: 35, column: 2, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4925, file: !4622, line: 35, column: 2)
!4930 = !DILocation(line: 36, column: 15, scope: !4920)
!4931 = !DILocation(line: 36, column: 2, scope: !4920)
!4932 = !DILocation(line: 36, column: 8, scope: !4920)
!4933 = !DILocation(line: 36, column: 13, scope: !4920)
!4934 = !DILocation(line: 37, column: 1, scope: !4920)
!4935 = distinct !DISubprogram(name: "kzalloc", scope: !190, file: !190, line: 662, type: !4936, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!4936 = !DISubroutineType(types: !4937)
!4937 = !{!237, !378, !239}
!4938 = !DILocalVariable(name: "s", arg: 1, scope: !4939, file: !190, line: 445, type: !983)
!4939 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !190, file: !190, line: 445, type: !4940, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!237, !983, !239, !378}
!4942 = !DILocation(line: 445, column: 72, scope: !4939, inlinedAt: !4943)
!4943 = distinct !DILocation(line: 552, column: 10, scope: !4944, inlinedAt: !4947)
!4944 = distinct !DILexicalBlock(scope: !4945, file: !190, line: 540, column: 34)
!4945 = distinct !DILexicalBlock(scope: !4946, file: !190, line: 540, column: 6)
!4946 = distinct !DISubprogram(name: "kmalloc", scope: !190, file: !190, line: 538, type: !4936, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!4947 = distinct !DILocation(line: 664, column: 9, scope: !4935)
!4948 = !DILocalVariable(name: "flags", arg: 2, scope: !4939, file: !190, line: 446, type: !239)
!4949 = !DILocation(line: 446, column: 9, scope: !4939, inlinedAt: !4943)
!4950 = !DILocalVariable(name: "size", arg: 3, scope: !4939, file: !190, line: 446, type: !378)
!4951 = !DILocation(line: 446, column: 23, scope: !4939, inlinedAt: !4943)
!4952 = !DILocalVariable(name: "ret", scope: !4939, file: !190, line: 448, type: !237)
!4953 = !DILocation(line: 448, column: 8, scope: !4939, inlinedAt: !4943)
!4954 = !DILocalVariable(name: "flags", arg: 1, scope: !4955, file: !190, line: 318, type: !239)
!4955 = distinct !DISubprogram(name: "kmalloc_type", scope: !190, file: !190, line: 318, type: !4956, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{!189, !239}
!4958 = !DILocation(line: 318, column: 67, scope: !4955, inlinedAt: !4959)
!4959 = distinct !DILocation(line: 553, column: 20, scope: !4944, inlinedAt: !4947)
!4960 = !DILocalVariable(name: "size", arg: 1, scope: !4961, file: !190, line: 346, type: !378)
!4961 = distinct !DISubprogram(name: "kmalloc_index", scope: !190, file: !190, line: 346, type: !4962, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!7, !378}
!4964 = !DILocation(line: 346, column: 58, scope: !4961, inlinedAt: !4965)
!4965 = distinct !DILocation(line: 547, column: 11, scope: !4944, inlinedAt: !4947)
!4966 = !DILocalVariable(name: "size", arg: 1, scope: !4967, file: !190, line: 472, type: !378)
!4967 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !190, file: !190, line: 472, type: !4968, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!4968 = !DISubroutineType(types: !4969)
!4969 = !{!237, !378, !239, !7}
!4970 = !DILocation(line: 472, column: 28, scope: !4967, inlinedAt: !4971)
!4971 = distinct !DILocation(line: 481, column: 9, scope: !4972, inlinedAt: !4973)
!4972 = distinct !DISubprogram(name: "kmalloc_large", scope: !190, file: !190, line: 478, type: !4936, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!4973 = distinct !DILocation(line: 545, column: 11, scope: !4974, inlinedAt: !4947)
!4974 = distinct !DILexicalBlock(scope: !4944, file: !190, line: 544, column: 7)
!4975 = !DILocalVariable(name: "flags", arg: 2, scope: !4967, file: !190, line: 472, type: !239)
!4976 = !DILocation(line: 472, column: 40, scope: !4967, inlinedAt: !4971)
!4977 = !DILocalVariable(name: "order", arg: 3, scope: !4967, file: !190, line: 472, type: !7)
!4978 = !DILocation(line: 472, column: 60, scope: !4967, inlinedAt: !4971)
!4979 = !DILocalVariable(name: "size", arg: 1, scope: !4972, file: !190, line: 478, type: !378)
!4980 = !DILocation(line: 478, column: 51, scope: !4972, inlinedAt: !4973)
!4981 = !DILocalVariable(name: "flags", arg: 2, scope: !4972, file: !190, line: 478, type: !239)
!4982 = !DILocation(line: 478, column: 63, scope: !4972, inlinedAt: !4973)
!4983 = !DILocalVariable(name: "order", scope: !4972, file: !190, line: 480, type: !7)
!4984 = !DILocation(line: 480, column: 15, scope: !4972, inlinedAt: !4973)
!4985 = !DILocalVariable(name: "size", arg: 1, scope: !4946, file: !190, line: 538, type: !378)
!4986 = !DILocation(line: 538, column: 45, scope: !4946, inlinedAt: !4947)
!4987 = !DILocalVariable(name: "flags", arg: 2, scope: !4946, file: !190, line: 538, type: !239)
!4988 = !DILocation(line: 538, column: 57, scope: !4946, inlinedAt: !4947)
!4989 = !DILocalVariable(name: "index", scope: !4944, file: !190, line: 542, type: !7)
!4990 = !DILocation(line: 542, column: 16, scope: !4944, inlinedAt: !4947)
!4991 = !DILocalVariable(name: "size", arg: 1, scope: !4935, file: !190, line: 662, type: !378)
!4992 = !DILocation(line: 662, column: 36, scope: !4935)
!4993 = !DILocalVariable(name: "flags", arg: 2, scope: !4935, file: !190, line: 662, type: !239)
!4994 = !DILocation(line: 662, column: 48, scope: !4935)
!4995 = !DILocation(line: 664, column: 17, scope: !4935)
!4996 = !DILocation(line: 664, column: 23, scope: !4935)
!4997 = !DILocation(line: 664, column: 29, scope: !4935)
!4998 = !DILocation(line: 540, column: 27, scope: !4945, inlinedAt: !4947)
!4999 = !DILocation(line: 540, column: 6, scope: !4945, inlinedAt: !4947)
!5000 = !DILocation(line: 540, column: 6, scope: !4946, inlinedAt: !4947)
!5001 = !DILocation(line: 544, column: 7, scope: !4974, inlinedAt: !4947)
!5002 = !DILocation(line: 544, column: 12, scope: !4974, inlinedAt: !4947)
!5003 = !DILocation(line: 544, column: 7, scope: !4944, inlinedAt: !4947)
!5004 = !DILocation(line: 545, column: 25, scope: !4974, inlinedAt: !4947)
!5005 = !DILocation(line: 545, column: 31, scope: !4974, inlinedAt: !4947)
!5006 = !DILocation(line: 480, column: 33, scope: !4972, inlinedAt: !4973)
!5007 = !DILocation(line: 480, column: 23, scope: !4972, inlinedAt: !4973)
!5008 = !DILocation(line: 481, column: 29, scope: !4972, inlinedAt: !4973)
!5009 = !DILocation(line: 481, column: 35, scope: !4972, inlinedAt: !4973)
!5010 = !DILocation(line: 481, column: 42, scope: !4972, inlinedAt: !4973)
!5011 = !DILocation(line: 474, column: 23, scope: !4967, inlinedAt: !4971)
!5012 = !DILocation(line: 474, column: 29, scope: !4967, inlinedAt: !4971)
!5013 = !DILocation(line: 474, column: 36, scope: !4967, inlinedAt: !4971)
!5014 = !DILocation(line: 474, column: 9, scope: !4967, inlinedAt: !4971)
!5015 = !DILocation(line: 545, column: 4, scope: !4974, inlinedAt: !4947)
!5016 = !DILocation(line: 547, column: 25, scope: !4944, inlinedAt: !4947)
!5017 = !DILocation(line: 348, column: 7, scope: !5018, inlinedAt: !4965)
!5018 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 348, column: 6)
!5019 = !DILocation(line: 348, column: 6, scope: !4961, inlinedAt: !4965)
!5020 = !DILocation(line: 349, column: 3, scope: !5018, inlinedAt: !4965)
!5021 = !DILocation(line: 351, column: 6, scope: !5022, inlinedAt: !4965)
!5022 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 351, column: 6)
!5023 = !DILocation(line: 351, column: 11, scope: !5022, inlinedAt: !4965)
!5024 = !DILocation(line: 351, column: 6, scope: !4961, inlinedAt: !4965)
!5025 = !DILocation(line: 352, column: 3, scope: !5022, inlinedAt: !4965)
!5026 = !DILocation(line: 354, column: 32, scope: !5027, inlinedAt: !4965)
!5027 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 354, column: 6)
!5028 = !DILocation(line: 354, column: 37, scope: !5027, inlinedAt: !4965)
!5029 = !DILocation(line: 354, column: 42, scope: !5027, inlinedAt: !4965)
!5030 = !DILocation(line: 354, column: 45, scope: !5027, inlinedAt: !4965)
!5031 = !DILocation(line: 354, column: 50, scope: !5027, inlinedAt: !4965)
!5032 = !DILocation(line: 354, column: 6, scope: !4961, inlinedAt: !4965)
!5033 = !DILocation(line: 355, column: 3, scope: !5027, inlinedAt: !4965)
!5034 = !DILocation(line: 356, column: 32, scope: !5035, inlinedAt: !4965)
!5035 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 356, column: 6)
!5036 = !DILocation(line: 356, column: 37, scope: !5035, inlinedAt: !4965)
!5037 = !DILocation(line: 356, column: 43, scope: !5035, inlinedAt: !4965)
!5038 = !DILocation(line: 356, column: 46, scope: !5035, inlinedAt: !4965)
!5039 = !DILocation(line: 356, column: 51, scope: !5035, inlinedAt: !4965)
!5040 = !DILocation(line: 356, column: 6, scope: !4961, inlinedAt: !4965)
!5041 = !DILocation(line: 357, column: 3, scope: !5035, inlinedAt: !4965)
!5042 = !DILocation(line: 358, column: 6, scope: !5043, inlinedAt: !4965)
!5043 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 358, column: 6)
!5044 = !DILocation(line: 358, column: 11, scope: !5043, inlinedAt: !4965)
!5045 = !DILocation(line: 358, column: 6, scope: !4961, inlinedAt: !4965)
!5046 = !DILocation(line: 358, column: 26, scope: !5043, inlinedAt: !4965)
!5047 = !DILocation(line: 359, column: 6, scope: !5048, inlinedAt: !4965)
!5048 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 359, column: 6)
!5049 = !DILocation(line: 359, column: 11, scope: !5048, inlinedAt: !4965)
!5050 = !DILocation(line: 359, column: 6, scope: !4961, inlinedAt: !4965)
!5051 = !DILocation(line: 359, column: 26, scope: !5048, inlinedAt: !4965)
!5052 = !DILocation(line: 360, column: 6, scope: !5053, inlinedAt: !4965)
!5053 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 360, column: 6)
!5054 = !DILocation(line: 360, column: 11, scope: !5053, inlinedAt: !4965)
!5055 = !DILocation(line: 360, column: 6, scope: !4961, inlinedAt: !4965)
!5056 = !DILocation(line: 360, column: 26, scope: !5053, inlinedAt: !4965)
!5057 = !DILocation(line: 361, column: 6, scope: !5058, inlinedAt: !4965)
!5058 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 361, column: 6)
!5059 = !DILocation(line: 361, column: 11, scope: !5058, inlinedAt: !4965)
!5060 = !DILocation(line: 361, column: 6, scope: !4961, inlinedAt: !4965)
!5061 = !DILocation(line: 361, column: 26, scope: !5058, inlinedAt: !4965)
!5062 = !DILocation(line: 362, column: 6, scope: !5063, inlinedAt: !4965)
!5063 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 362, column: 6)
!5064 = !DILocation(line: 362, column: 11, scope: !5063, inlinedAt: !4965)
!5065 = !DILocation(line: 362, column: 6, scope: !4961, inlinedAt: !4965)
!5066 = !DILocation(line: 362, column: 26, scope: !5063, inlinedAt: !4965)
!5067 = !DILocation(line: 363, column: 6, scope: !5068, inlinedAt: !4965)
!5068 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 363, column: 6)
!5069 = !DILocation(line: 363, column: 11, scope: !5068, inlinedAt: !4965)
!5070 = !DILocation(line: 363, column: 6, scope: !4961, inlinedAt: !4965)
!5071 = !DILocation(line: 363, column: 26, scope: !5068, inlinedAt: !4965)
!5072 = !DILocation(line: 364, column: 6, scope: !5073, inlinedAt: !4965)
!5073 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 364, column: 6)
!5074 = !DILocation(line: 364, column: 11, scope: !5073, inlinedAt: !4965)
!5075 = !DILocation(line: 364, column: 6, scope: !4961, inlinedAt: !4965)
!5076 = !DILocation(line: 364, column: 26, scope: !5073, inlinedAt: !4965)
!5077 = !DILocation(line: 365, column: 6, scope: !5078, inlinedAt: !4965)
!5078 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 365, column: 6)
!5079 = !DILocation(line: 365, column: 11, scope: !5078, inlinedAt: !4965)
!5080 = !DILocation(line: 365, column: 6, scope: !4961, inlinedAt: !4965)
!5081 = !DILocation(line: 365, column: 26, scope: !5078, inlinedAt: !4965)
!5082 = !DILocation(line: 366, column: 6, scope: !5083, inlinedAt: !4965)
!5083 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 366, column: 6)
!5084 = !DILocation(line: 366, column: 11, scope: !5083, inlinedAt: !4965)
!5085 = !DILocation(line: 366, column: 6, scope: !4961, inlinedAt: !4965)
!5086 = !DILocation(line: 366, column: 26, scope: !5083, inlinedAt: !4965)
!5087 = !DILocation(line: 367, column: 6, scope: !5088, inlinedAt: !4965)
!5088 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 367, column: 6)
!5089 = !DILocation(line: 367, column: 11, scope: !5088, inlinedAt: !4965)
!5090 = !DILocation(line: 367, column: 6, scope: !4961, inlinedAt: !4965)
!5091 = !DILocation(line: 367, column: 26, scope: !5088, inlinedAt: !4965)
!5092 = !DILocation(line: 368, column: 6, scope: !5093, inlinedAt: !4965)
!5093 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 368, column: 6)
!5094 = !DILocation(line: 368, column: 11, scope: !5093, inlinedAt: !4965)
!5095 = !DILocation(line: 368, column: 6, scope: !4961, inlinedAt: !4965)
!5096 = !DILocation(line: 368, column: 26, scope: !5093, inlinedAt: !4965)
!5097 = !DILocation(line: 369, column: 6, scope: !5098, inlinedAt: !4965)
!5098 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 369, column: 6)
!5099 = !DILocation(line: 369, column: 11, scope: !5098, inlinedAt: !4965)
!5100 = !DILocation(line: 369, column: 6, scope: !4961, inlinedAt: !4965)
!5101 = !DILocation(line: 369, column: 26, scope: !5098, inlinedAt: !4965)
!5102 = !DILocation(line: 370, column: 6, scope: !5103, inlinedAt: !4965)
!5103 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 370, column: 6)
!5104 = !DILocation(line: 370, column: 11, scope: !5103, inlinedAt: !4965)
!5105 = !DILocation(line: 370, column: 6, scope: !4961, inlinedAt: !4965)
!5106 = !DILocation(line: 370, column: 26, scope: !5103, inlinedAt: !4965)
!5107 = !DILocation(line: 371, column: 6, scope: !5108, inlinedAt: !4965)
!5108 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 371, column: 6)
!5109 = !DILocation(line: 371, column: 11, scope: !5108, inlinedAt: !4965)
!5110 = !DILocation(line: 371, column: 6, scope: !4961, inlinedAt: !4965)
!5111 = !DILocation(line: 371, column: 26, scope: !5108, inlinedAt: !4965)
!5112 = !DILocation(line: 372, column: 6, scope: !5113, inlinedAt: !4965)
!5113 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 372, column: 6)
!5114 = !DILocation(line: 372, column: 11, scope: !5113, inlinedAt: !4965)
!5115 = !DILocation(line: 372, column: 6, scope: !4961, inlinedAt: !4965)
!5116 = !DILocation(line: 372, column: 26, scope: !5113, inlinedAt: !4965)
!5117 = !DILocation(line: 373, column: 6, scope: !5118, inlinedAt: !4965)
!5118 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 373, column: 6)
!5119 = !DILocation(line: 373, column: 11, scope: !5118, inlinedAt: !4965)
!5120 = !DILocation(line: 373, column: 6, scope: !4961, inlinedAt: !4965)
!5121 = !DILocation(line: 373, column: 26, scope: !5118, inlinedAt: !4965)
!5122 = !DILocation(line: 374, column: 6, scope: !5123, inlinedAt: !4965)
!5123 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 374, column: 6)
!5124 = !DILocation(line: 374, column: 11, scope: !5123, inlinedAt: !4965)
!5125 = !DILocation(line: 374, column: 6, scope: !4961, inlinedAt: !4965)
!5126 = !DILocation(line: 374, column: 26, scope: !5123, inlinedAt: !4965)
!5127 = !DILocation(line: 375, column: 6, scope: !5128, inlinedAt: !4965)
!5128 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 375, column: 6)
!5129 = !DILocation(line: 375, column: 11, scope: !5128, inlinedAt: !4965)
!5130 = !DILocation(line: 375, column: 6, scope: !4961, inlinedAt: !4965)
!5131 = !DILocation(line: 375, column: 27, scope: !5128, inlinedAt: !4965)
!5132 = !DILocation(line: 376, column: 6, scope: !5133, inlinedAt: !4965)
!5133 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 376, column: 6)
!5134 = !DILocation(line: 376, column: 11, scope: !5133, inlinedAt: !4965)
!5135 = !DILocation(line: 376, column: 6, scope: !4961, inlinedAt: !4965)
!5136 = !DILocation(line: 376, column: 32, scope: !5133, inlinedAt: !4965)
!5137 = !DILocation(line: 377, column: 6, scope: !5138, inlinedAt: !4965)
!5138 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 377, column: 6)
!5139 = !DILocation(line: 377, column: 11, scope: !5138, inlinedAt: !4965)
!5140 = !DILocation(line: 377, column: 6, scope: !4961, inlinedAt: !4965)
!5141 = !DILocation(line: 377, column: 32, scope: !5138, inlinedAt: !4965)
!5142 = !DILocation(line: 378, column: 6, scope: !5143, inlinedAt: !4965)
!5143 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 378, column: 6)
!5144 = !DILocation(line: 378, column: 11, scope: !5143, inlinedAt: !4965)
!5145 = !DILocation(line: 378, column: 6, scope: !4961, inlinedAt: !4965)
!5146 = !DILocation(line: 378, column: 32, scope: !5143, inlinedAt: !4965)
!5147 = !DILocation(line: 379, column: 6, scope: !5148, inlinedAt: !4965)
!5148 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 379, column: 6)
!5149 = !DILocation(line: 379, column: 11, scope: !5148, inlinedAt: !4965)
!5150 = !DILocation(line: 379, column: 6, scope: !4961, inlinedAt: !4965)
!5151 = !DILocation(line: 379, column: 33, scope: !5148, inlinedAt: !4965)
!5152 = !DILocation(line: 380, column: 6, scope: !5153, inlinedAt: !4965)
!5153 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 380, column: 6)
!5154 = !DILocation(line: 380, column: 11, scope: !5153, inlinedAt: !4965)
!5155 = !DILocation(line: 380, column: 6, scope: !4961, inlinedAt: !4965)
!5156 = !DILocation(line: 380, column: 33, scope: !5153, inlinedAt: !4965)
!5157 = !DILocation(line: 381, column: 6, scope: !5158, inlinedAt: !4965)
!5158 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 381, column: 6)
!5159 = !DILocation(line: 381, column: 11, scope: !5158, inlinedAt: !4965)
!5160 = !DILocation(line: 381, column: 6, scope: !4961, inlinedAt: !4965)
!5161 = !DILocation(line: 381, column: 33, scope: !5158, inlinedAt: !4965)
!5162 = !DILocation(line: 382, column: 2, scope: !5163, inlinedAt: !4965)
!5163 = distinct !DILexicalBlock(scope: !5164, file: !190, line: 382, column: 2)
!5164 = distinct !DILexicalBlock(scope: !4961, file: !190, line: 382, column: 2)
!5165 = !{i32 -2142459800, i32 -2142459771, i32 -2142459725, i32 -2142459667, i32 -2142459613, i32 -2142459559, i32 -2142459504, i32 -2142459473}
!5166 = !DILocation(line: 382, column: 2, scope: !5167, inlinedAt: !4965)
!5167 = distinct !DILexicalBlock(scope: !5168, file: !190, line: 382, column: 2)
!5168 = distinct !DILexicalBlock(scope: !5164, file: !190, line: 382, column: 2)
!5169 = !{i32 -2142459030, i32 -2142459023, i32 -2142458969, i32 -2142458938, i32 -2142458908}
!5170 = !DILocation(line: 382, column: 2, scope: !5168, inlinedAt: !4965)
!5171 = !DILocation(line: 386, column: 1, scope: !4961, inlinedAt: !4965)
!5172 = !DILocation(line: 547, column: 9, scope: !4944, inlinedAt: !4947)
!5173 = !DILocation(line: 549, column: 8, scope: !5174, inlinedAt: !4947)
!5174 = distinct !DILexicalBlock(scope: !4944, file: !190, line: 549, column: 7)
!5175 = !DILocation(line: 549, column: 7, scope: !4944, inlinedAt: !4947)
!5176 = !DILocation(line: 550, column: 4, scope: !5174, inlinedAt: !4947)
!5177 = !DILocation(line: 553, column: 33, scope: !4944, inlinedAt: !4947)
!5178 = !DILocation(line: 325, column: 6, scope: !5179, inlinedAt: !4959)
!5179 = distinct !DILexicalBlock(scope: !4955, file: !190, line: 325, column: 6)
!5180 = !DILocation(line: 325, column: 6, scope: !4955, inlinedAt: !4959)
!5181 = !DILocation(line: 326, column: 3, scope: !5179, inlinedAt: !4959)
!5182 = !DILocation(line: 332, column: 9, scope: !4955, inlinedAt: !4959)
!5183 = !DILocation(line: 332, column: 15, scope: !4955, inlinedAt: !4959)
!5184 = !DILocation(line: 332, column: 2, scope: !4955, inlinedAt: !4959)
!5185 = !DILocation(line: 336, column: 1, scope: !4955, inlinedAt: !4959)
!5186 = !DILocation(line: 553, column: 5, scope: !4944, inlinedAt: !4947)
!5187 = !DILocation(line: 553, column: 41, scope: !4944, inlinedAt: !4947)
!5188 = !DILocation(line: 554, column: 5, scope: !4944, inlinedAt: !4947)
!5189 = !DILocation(line: 554, column: 12, scope: !4944, inlinedAt: !4947)
!5190 = !DILocation(line: 448, column: 31, scope: !4939, inlinedAt: !4943)
!5191 = !DILocation(line: 448, column: 34, scope: !4939, inlinedAt: !4943)
!5192 = !DILocation(line: 448, column: 14, scope: !4939, inlinedAt: !4943)
!5193 = !DILocation(line: 450, column: 22, scope: !4939, inlinedAt: !4943)
!5194 = !DILocation(line: 450, column: 25, scope: !4939, inlinedAt: !4943)
!5195 = !DILocation(line: 450, column: 30, scope: !4939, inlinedAt: !4943)
!5196 = !DILocation(line: 450, column: 36, scope: !4939, inlinedAt: !4943)
!5197 = !DILocation(line: 450, column: 8, scope: !4939, inlinedAt: !4943)
!5198 = !DILocation(line: 450, column: 6, scope: !4939, inlinedAt: !4943)
!5199 = !DILocation(line: 451, column: 9, scope: !4939, inlinedAt: !4943)
!5200 = !DILocation(line: 552, column: 3, scope: !4944, inlinedAt: !4947)
!5201 = !DILocation(line: 557, column: 19, scope: !4946, inlinedAt: !4947)
!5202 = !DILocation(line: 557, column: 25, scope: !4946, inlinedAt: !4947)
!5203 = !DILocation(line: 557, column: 9, scope: !4946, inlinedAt: !4947)
!5204 = !DILocation(line: 557, column: 2, scope: !4946, inlinedAt: !4947)
!5205 = !DILocation(line: 558, column: 1, scope: !4946, inlinedAt: !4947)
!5206 = !DILocation(line: 664, column: 2, scope: !4935)
!5207 = distinct !DISubprogram(name: "kcalloc", scope: !190, file: !190, line: 601, type: !5208, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5208 = !DISubroutineType(types: !5209)
!5209 = !{!237, !378, !378, !239}
!5210 = !DILocalVariable(name: "n", arg: 1, scope: !5207, file: !190, line: 601, type: !378)
!5211 = !DILocation(line: 601, column: 36, scope: !5207)
!5212 = !DILocalVariable(name: "size", arg: 2, scope: !5207, file: !190, line: 601, type: !378)
!5213 = !DILocation(line: 601, column: 46, scope: !5207)
!5214 = !DILocalVariable(name: "flags", arg: 3, scope: !5207, file: !190, line: 601, type: !239)
!5215 = !DILocation(line: 601, column: 58, scope: !5207)
!5216 = !DILocation(line: 603, column: 23, scope: !5207)
!5217 = !DILocation(line: 603, column: 26, scope: !5207)
!5218 = !DILocation(line: 603, column: 32, scope: !5207)
!5219 = !DILocation(line: 603, column: 38, scope: !5207)
!5220 = !DILocation(line: 603, column: 9, scope: !5207)
!5221 = !DILocation(line: 603, column: 2, scope: !5207)
!5222 = distinct !DISubprogram(name: "vmbus_disconnect", scope: !3, file: !3, line: 273, type: !1923, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5223 = !DILocation(line: 278, column: 2, scope: !5222)
!5224 = !DILocation(line: 280, column: 23, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 280, column: 6)
!5226 = !DILocation(line: 280, column: 6, scope: !5225)
!5227 = !DILocation(line: 280, column: 6, scope: !5222)
!5228 = !DILocation(line: 281, column: 38, scope: !5225)
!5229 = !DILocation(line: 281, column: 3, scope: !5225)
!5230 = !DILocation(line: 283, column: 23, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 283, column: 6)
!5232 = !DILocation(line: 283, column: 6, scope: !5231)
!5233 = !DILocation(line: 283, column: 6, scope: !5222)
!5234 = !DILocation(line: 284, column: 38, scope: !5231)
!5235 = !DILocation(line: 284, column: 3, scope: !5231)
!5236 = !DILocation(line: 286, column: 23, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 286, column: 6)
!5238 = !DILocation(line: 286, column: 6, scope: !5237)
!5239 = !DILocation(line: 286, column: 6, scope: !5222)
!5240 = !DILocation(line: 287, column: 38, scope: !5237)
!5241 = !DILocation(line: 287, column: 3, scope: !5237)
!5242 = !DILocation(line: 289, column: 23, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 289, column: 6)
!5244 = !DILocation(line: 289, column: 6, scope: !5243)
!5245 = !DILocation(line: 289, column: 6, scope: !5222)
!5246 = !DILocation(line: 290, column: 55, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 289, column: 33)
!5248 = !DILocation(line: 290, column: 23, scope: !5247)
!5249 = !DILocation(line: 290, column: 3, scope: !5247)
!5250 = !DILocation(line: 291, column: 29, scope: !5247)
!5251 = !DILocation(line: 292, column: 2, scope: !5247)
!5252 = !DILocation(line: 294, column: 37, scope: !5222)
!5253 = !DILocation(line: 294, column: 22, scope: !5222)
!5254 = !DILocation(line: 294, column: 2, scope: !5222)
!5255 = !DILocation(line: 295, column: 37, scope: !5222)
!5256 = !DILocation(line: 295, column: 22, scope: !5222)
!5257 = !DILocation(line: 295, column: 2, scope: !5222)
!5258 = !DILocation(line: 296, column: 36, scope: !5222)
!5259 = !DILocation(line: 297, column: 36, scope: !5222)
!5260 = !DILocation(line: 298, column: 1, scope: !5222)
!5261 = distinct !DISubprogram(name: "relid2channel", scope: !3, file: !3, line: 304, type: !5262, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5262 = !DISubroutineType(types: !5263)
!5263 = !{!245, !210}
!5264 = !DILocalVariable(name: "relid", arg: 1, scope: !5261, file: !3, line: 304, type: !210)
!5265 = !DILocation(line: 304, column: 41, scope: !5261)
!5266 = !DILocalVariable(name: "__ret_warn_on", scope: !5267, file: !3, line: 306, type: !241)
!5267 = distinct !DILexicalBlock(scope: !5268, file: !3, line: 306, column: 6)
!5268 = distinct !DILexicalBlock(scope: !5261, file: !3, line: 306, column: 6)
!5269 = !DILocation(line: 306, column: 6, scope: !5267)
!5270 = !DILocation(line: 306, column: 6, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5267, file: !3, line: 306, column: 6)
!5272 = !DILocation(line: 306, column: 6, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 306, column: 6)
!5274 = !DILocation(line: 306, column: 6, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5273, file: !3, line: 306, column: 6)
!5276 = !DILocation(line: 306, column: 6, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5273, file: !3, line: 306, column: 6)
!5278 = !{i32 -2141591566, i32 -2141591537, i32 -2141591491, i32 -2141591433, i32 -2141591379, i32 -2141591325, i32 -2141591270, i32 -2141591239}
!5279 = !DILocation(line: 306, column: 6, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5273, file: !3, line: 306, column: 6)
!5281 = !{i32 -2141590834, i32 -2141590827, i32 -2141590775, i32 -2141590744, i32 -2141590714}
!5282 = !DILocation(line: 306, column: 6, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5273, file: !3, line: 306, column: 6)
!5284 = !DILocation(line: 306, column: 6, scope: !5268)
!5285 = !DILocation(line: 306, column: 6, scope: !5261)
!5286 = !DILocation(line: 307, column: 3, scope: !5268)
!5287 = !DILocation(line: 308, column: 9, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5261, file: !3, line: 308, column: 9)
!5289 = !DILocation(line: 308, column: 9, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 308, column: 9)
!5291 = !DILocation(line: 308, column: 2, scope: !5261)
!5292 = !DILocation(line: 309, column: 1, scope: !5261)
!5293 = distinct !DISubprogram(name: "vmbus_on_event", scope: !3, file: !3, line: 325, type: !4125, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5294 = !DILocalVariable(name: "data", arg: 1, scope: !5293, file: !3, line: 325, type: !238)
!5295 = !DILocation(line: 325, column: 35, scope: !5293)
!5296 = !DILocalVariable(name: "channel", scope: !5293, file: !3, line: 327, type: !245)
!5297 = !DILocation(line: 327, column: 24, scope: !5293)
!5298 = !DILocation(line: 327, column: 43, scope: !5293)
!5299 = !DILocation(line: 327, column: 34, scope: !5293)
!5300 = !DILocalVariable(name: "time_limit", scope: !5293, file: !3, line: 328, type: !238)
!5301 = !DILocation(line: 328, column: 16, scope: !5293)
!5302 = !DILocation(line: 328, column: 29, scope: !5293)
!5303 = !DILocation(line: 328, column: 37, scope: !5293)
!5304 = !DILocation(line: 330, column: 23, scope: !5293)
!5305 = !DILocation(line: 330, column: 2, scope: !5293)
!5306 = !DILocation(line: 332, column: 22, scope: !5293)
!5307 = !DILocation(line: 332, column: 2, scope: !5293)
!5308 = !DILocation(line: 333, column: 2, scope: !5293)
!5309 = !DILocalVariable(name: "callback_fn", scope: !5310, file: !3, line: 334, type: !516)
!5310 = distinct !DILexicalBlock(scope: !5293, file: !3, line: 333, column: 5)
!5311 = !DILocation(line: 334, column: 10, scope: !5310)
!5312 = !DILocation(line: 340, column: 17, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 340, column: 17)
!5314 = !DILocation(line: 340, column: 17, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5313, file: !3, line: 340, column: 17)
!5316 = !DILocation(line: 340, column: 15, scope: !5310)
!5317 = !DILocation(line: 341, column: 7, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 341, column: 7)
!5319 = !DILocation(line: 341, column: 7, scope: !5310)
!5320 = !DILocation(line: 342, column: 4, scope: !5318)
!5321 = !DILocation(line: 344, column: 5, scope: !5310)
!5322 = !DILocation(line: 344, column: 18, scope: !5310)
!5323 = !DILocation(line: 344, column: 27, scope: !5310)
!5324 = !DILocation(line: 344, column: 3, scope: !5310)
!5325 = !DILocation(line: 346, column: 7, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 346, column: 7)
!5327 = !DILocation(line: 346, column: 16, scope: !5326)
!5328 = !DILocation(line: 346, column: 30, scope: !5326)
!5329 = !DILocation(line: 346, column: 7, scope: !5310)
!5330 = !DILocation(line: 347, column: 4, scope: !5326)
!5331 = !DILocation(line: 349, column: 7, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 349, column: 7)
!5333 = !DILocation(line: 349, column: 7, scope: !5310)
!5334 = !DILocation(line: 350, column: 4, scope: !5332)
!5335 = !DILocation(line: 352, column: 18, scope: !5310)
!5336 = !DILocation(line: 352, column: 27, scope: !5310)
!5337 = !DILocation(line: 352, column: 3, scope: !5310)
!5338 = !DILocation(line: 353, column: 2, scope: !5310)
!5339 = !DILocation(line: 353, column: 11, scope: !5293)
!5340 = distinct !{!5340, !5308, !5341}
!5341 = !DILocation(line: 353, column: 51, scope: !5293)
!5342 = !DILocation(line: 356, column: 20, scope: !5293)
!5343 = !DILocation(line: 356, column: 29, scope: !5293)
!5344 = !DILocation(line: 356, column: 2, scope: !5293)
!5345 = !DILocation(line: 357, column: 1, scope: !5293)
!5346 = distinct !DISubprogram(name: "trace_vmbus_on_event", scope: !4745, file: !4745, line: 334, type: !5347, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5347 = !DISubroutineType(types: !5348)
!5348 = !{null, !5349}
!5349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5350, size: 64)
!5350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!5351 = !DILocalVariable(name: "channel", arg: 1, scope: !5346, file: !4745, line: 334, type: !5349)
!5352 = !DILocation(line: 334, column: 1, scope: !5346)
!5353 = distinct !DISubprogram(name: "hv_debug_delay_test", scope: !6, file: !6, line: 458, type: !5354, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5354 = !DISubroutineType(types: !5355)
!5355 = !{null, !245, !185}
!5356 = !DILocalVariable(name: "channel", arg: 1, scope: !5353, file: !6, line: 458, type: !245)
!5357 = !DILocation(line: 458, column: 62, scope: !5353)
!5358 = !DILocalVariable(name: "delay_type", arg: 2, scope: !5353, file: !6, line: 459, type: !185)
!5359 = !DILocation(line: 459, column: 23, scope: !5353)
!5360 = !DILocation(line: 459, column: 36, scope: !5353)
!5361 = distinct !DISubprogram(name: "hv_end_read", scope: !115, file: !115, line: 1589, type: !5362, scopeLine: 1590, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5362 = !DISubroutineType(types: !5363)
!5363 = !{!210, !5364}
!5364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!5365 = !DILocalVariable(name: "rbi", arg: 1, scope: !5361, file: !115, line: 1589, type: !5364)
!5366 = !DILocation(line: 1589, column: 59, scope: !5361)
!5367 = !DILocation(line: 1592, column: 2, scope: !5361)
!5368 = !DILocation(line: 1592, column: 7, scope: !5361)
!5369 = !DILocation(line: 1592, column: 20, scope: !5361)
!5370 = !DILocation(line: 1592, column: 35, scope: !5361)
!5371 = !DILocation(line: 1595, column: 2, scope: !5361)
!5372 = !{i32 -2141979268}
!5373 = !DILocation(line: 1602, column: 30, scope: !5361)
!5374 = !DILocation(line: 1602, column: 9, scope: !5361)
!5375 = !DILocation(line: 1602, column: 2, scope: !5361)
!5376 = distinct !DISubprogram(name: "hv_begin_read", scope: !115, file: !115, line: 1578, type: !5377, scopeLine: 1579, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5377 = !DISubroutineType(types: !5378)
!5378 = !{null, !5364}
!5379 = !DILocalVariable(name: "rbi", arg: 1, scope: !5376, file: !115, line: 1578, type: !5364)
!5380 = !DILocation(line: 1578, column: 62, scope: !5376)
!5381 = !DILocation(line: 1580, column: 2, scope: !5376)
!5382 = !DILocation(line: 1580, column: 7, scope: !5376)
!5383 = !DILocation(line: 1580, column: 20, scope: !5376)
!5384 = !DILocation(line: 1580, column: 35, scope: !5376)
!5385 = !DILocation(line: 1583, column: 2, scope: !5376)
!5386 = !{i32 -2141979503}
!5387 = !DILocation(line: 1584, column: 1, scope: !5376)
!5388 = distinct !DISubprogram(name: "tasklet_schedule", scope: !197, file: !197, line: 681, type: !4129, scopeLine: 682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5389 = !DILocalVariable(name: "t", arg: 1, scope: !5388, file: !197, line: 681, type: !4116)
!5390 = !DILocation(line: 681, column: 60, scope: !5388)
!5391 = !DILocation(line: 683, column: 46, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5388, file: !197, line: 683, column: 6)
!5393 = !DILocation(line: 683, column: 49, scope: !5392)
!5394 = !DILocation(line: 683, column: 7, scope: !5392)
!5395 = !DILocation(line: 683, column: 6, scope: !5388)
!5396 = !DILocation(line: 684, column: 22, scope: !5392)
!5397 = !DILocation(line: 684, column: 3, scope: !5392)
!5398 = !DILocation(line: 685, column: 1, scope: !5388)
!5399 = distinct !DISubprogram(name: "vmbus_set_event", scope: !3, file: !3, line: 429, type: !4145, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5400 = !DILocalVariable(name: "channel", arg: 1, scope: !5399, file: !3, line: 429, type: !245)
!5401 = !DILocation(line: 429, column: 44, scope: !5399)
!5402 = !DILocalVariable(name: "child_relid", scope: !5399, file: !3, line: 431, type: !210)
!5403 = !DILocation(line: 431, column: 6, scope: !5399)
!5404 = !DILocation(line: 431, column: 20, scope: !5399)
!5405 = !DILocation(line: 431, column: 29, scope: !5399)
!5406 = !DILocation(line: 431, column: 38, scope: !5399)
!5407 = !DILocation(line: 433, column: 7, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5399, file: !3, line: 433, column: 6)
!5409 = !DILocation(line: 433, column: 16, scope: !5408)
!5410 = !DILocation(line: 433, column: 6, scope: !5399)
!5411 = !DILocation(line: 434, column: 24, scope: !5408)
!5412 = !DILocation(line: 434, column: 3, scope: !5408)
!5413 = !DILocation(line: 436, column: 4, scope: !5399)
!5414 = !DILocation(line: 436, column: 13, scope: !5399)
!5415 = !DILocation(line: 436, column: 2, scope: !5399)
!5416 = !DILocation(line: 438, column: 45, scope: !5399)
!5417 = !DILocation(line: 438, column: 54, scope: !5399)
!5418 = !DILocation(line: 438, column: 2, scope: !5399)
!5419 = !DILocation(line: 439, column: 1, scope: !5399)
!5420 = distinct !DISubprogram(name: "vmbus_send_interrupt", scope: !6, file: !6, line: 303, type: !5421, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5421 = !DISubroutineType(types: !5422)
!5422 = !{null, !210}
!5423 = !DILocalVariable(name: "relid", arg: 1, scope: !5420, file: !6, line: 303, type: !210)
!5424 = !DILocation(line: 303, column: 45, scope: !5420)
!5425 = !DILocation(line: 305, column: 15, scope: !5420)
!5426 = !DILocation(line: 305, column: 39, scope: !5420)
!5427 = !DILocation(line: 305, column: 22, scope: !5420)
!5428 = !DILocation(line: 305, column: 2, scope: !5420)
!5429 = !DILocation(line: 306, column: 1, scope: !5420)
!5430 = distinct !DISubprogram(name: "hv_do_fast_hypercall8", scope: !5431, file: !5431, line: 119, type: !5432, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5431 = !DIFile(filename: "./arch/x86/include/asm/mshyperv.h", directory: "/home/lizy2001/genbc/linux")
!5432 = !DISubroutineType(types: !5433)
!5433 = !{!220, !269, !220}
!5434 = !DILocalVariable(name: "code", arg: 1, scope: !5430, file: !5431, line: 119, type: !269)
!5435 = !DILocation(line: 119, column: 45, scope: !5430)
!5436 = !DILocalVariable(name: "input1", arg: 2, scope: !5430, file: !5431, line: 119, type: !220)
!5437 = !DILocation(line: 119, column: 55, scope: !5430)
!5438 = !DILocalVariable(name: "hv_status", scope: !5430, file: !5431, line: 121, type: !220)
!5439 = !DILocation(line: 121, column: 6, scope: !5430)
!5440 = !DILocalVariable(name: "control", scope: !5430, file: !5431, line: 121, type: !220)
!5441 = !DILocation(line: 121, column: 17, scope: !5430)
!5442 = !DILocation(line: 121, column: 32, scope: !5430)
!5443 = !DILocation(line: 121, column: 27, scope: !5430)
!5444 = !DILocation(line: 121, column: 37, scope: !5430)
!5445 = !DILocation(line: 125, column: 3, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5430, file: !5431, line: 124, column: 2)
!5447 = !DILocation(line: 128, column: 12, scope: !5446)
!5448 = !{i32 -2141814474, i32 -2141814441, i32 -2141814435, i32 -2141814169, i32 -2141814118, i32 -2141814090, i32 -2141814065, i32 -2141814421, i32 -2141814419, i32 -2141814400, i32 -2141814369, i32 -2141813284, i32 -2141815622, i32 -2141813278, i32 -2141813230, i32 -2141813166, i32 -2141813104, i32 -2141813047, i32 -2141812991, i32 -2141812757, i32 -2141812709, i32 -2141812645, i32 -2141812583, i32 -2141812526, i32 -2141812470, i32 -2141815506, i32 -2141815481, i32 -2141812236, i32 -2141812081, i32 -2141812175, i32 -2141812161, i32 -2141812067, i32 -2141812053, i32 -2141811787, i32 -2141811992, i32 -2141811930, i32 -2141811924, i32 -2141811873, i32 -2141811845, i32 -2141811820, i32 -2141811978, i32 -2141811773, i32 -2141815329}
!5449 = !DILocation(line: 146, column: 10, scope: !5430)
!5450 = !DILocation(line: 146, column: 3, scope: !5430)
!5451 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !5452, file: !5452, line: 18, type: !5453, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5452 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/lizy2001/genbc/linux")
!5453 = !DISubroutineType(types: !5454)
!5454 = !{!238, !238}
!5455 = !DILocalVariable(name: "x", arg: 1, scope: !5451, file: !5452, line: 18, type: !238)
!5456 = !DILocation(line: 18, column: 63, scope: !5451)
!5457 = !DILocalVariable(name: "y", scope: !5451, file: !5452, line: 20, type: !238)
!5458 = !DILocation(line: 20, column: 16, scope: !5451)
!5459 = !DILocation(line: 20, column: 20, scope: !5451)
!5460 = !DILocation(line: 20, column: 22, scope: !5451)
!5461 = !DILocation(line: 23, column: 6, scope: !5451)
!5462 = !DILocation(line: 23, column: 12, scope: !5451)
!5463 = !DILocation(line: 23, column: 16, scope: !5451)
!5464 = !DILocation(line: 23, column: 14, scope: !5451)
!5465 = !DILocation(line: 23, column: 11, scope: !5451)
!5466 = !DILocation(line: 23, column: 21, scope: !5451)
!5467 = !DILocation(line: 23, column: 55, scope: !5451)
!5468 = !DILocation(line: 23, column: 53, scope: !5451)
!5469 = !DILocation(line: 23, column: 8, scope: !5451)
!5470 = !DILocation(line: 23, column: 4, scope: !5451)
!5471 = !DILocation(line: 25, column: 9, scope: !5451)
!5472 = !DILocation(line: 25, column: 2, scope: !5451)
!5473 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4611, file: !4611, line: 646, type: !4612, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5474 = !DILocalVariable(name: "__ret", scope: !5475, file: !4611, line: 648, type: !238)
!5475 = distinct !DILexicalBlock(scope: !5473, file: !4611, line: 648, column: 9)
!5476 = !DILocation(line: 648, column: 9, scope: !5475)
!5477 = !DILocalVariable(name: "__edi", scope: !5475, file: !4611, line: 648, type: !238)
!5478 = !DILocalVariable(name: "__esi", scope: !5475, file: !4611, line: 648, type: !238)
!5479 = !DILocalVariable(name: "__edx", scope: !5475, file: !4611, line: 648, type: !238)
!5480 = !DILocalVariable(name: "__ecx", scope: !5475, file: !4611, line: 648, type: !238)
!5481 = !DILocalVariable(name: "__eax", scope: !5475, file: !4611, line: 648, type: !238)
!5482 = !DILocation(line: 648, column: 9, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5484, file: !4611, line: 648, column: 9)
!5484 = distinct !DILexicalBlock(scope: !5475, file: !4611, line: 648, column: 9)
!5485 = !{i32 -2145805074, i32 -2145802759, i32 -2145802525, i32 -2145802474, i32 -2145802446, i32 -2145802421, i32 -2145802737, i32 -2145802724, i32 -2145802286, i32 -2145802167, i32 -2145802632, i32 -2145802605, i32 -2145802577, i32 -2145802547}
!5486 = !DILocalVariable(name: "__mask", scope: !5487, file: !4611, line: 648, type: !238)
!5487 = distinct !DILexicalBlock(scope: !5483, file: !4611, line: 648, column: 9)
!5488 = !DILocation(line: 648, column: 9, scope: !5487)
!5489 = !DILocation(line: 648, column: 9, scope: !5484)
!5490 = !DILocation(line: 648, column: 2, scope: !5473)
!5491 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4611, file: !4611, line: 656, type: !1923, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5492 = !DILocalVariable(name: "__edi", scope: !5493, file: !4611, line: 658, type: !238)
!5493 = distinct !DILexicalBlock(scope: !5491, file: !4611, line: 658, column: 2)
!5494 = !DILocation(line: 658, column: 2, scope: !5493)
!5495 = !DILocalVariable(name: "__esi", scope: !5493, file: !4611, line: 658, type: !238)
!5496 = !DILocalVariable(name: "__edx", scope: !5493, file: !4611, line: 658, type: !238)
!5497 = !DILocalVariable(name: "__ecx", scope: !5493, file: !4611, line: 658, type: !238)
!5498 = !DILocalVariable(name: "__eax", scope: !5493, file: !4611, line: 658, type: !238)
!5499 = !{i32 -2145797980, i32 -2145797248, i32 -2145797014, i32 -2145796963, i32 -2145796935, i32 -2145796910, i32 -2145797226, i32 -2145797213, i32 -2145796775, i32 -2145796656, i32 -2145797121, i32 -2145797094, i32 -2145797066, i32 -2145797036}
!5500 = !DILocation(line: 659, column: 1, scope: !5491)
!5501 = distinct !DISubprogram(name: "__list_add", scope: !4622, file: !4622, line: 63, type: !5502, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5502 = !DISubroutineType(types: !5503)
!5503 = !{null, !252, !252, !252}
!5504 = !DILocalVariable(name: "new", arg: 1, scope: !5501, file: !4622, line: 63, type: !252)
!5505 = !DILocation(line: 63, column: 49, scope: !5501)
!5506 = !DILocalVariable(name: "prev", arg: 2, scope: !5501, file: !4622, line: 64, type: !252)
!5507 = !DILocation(line: 64, column: 28, scope: !5501)
!5508 = !DILocalVariable(name: "next", arg: 3, scope: !5501, file: !4622, line: 65, type: !252)
!5509 = !DILocation(line: 65, column: 28, scope: !5501)
!5510 = !DILocation(line: 67, column: 24, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5501, file: !4622, line: 67, column: 6)
!5512 = !DILocation(line: 67, column: 29, scope: !5511)
!5513 = !DILocation(line: 67, column: 35, scope: !5511)
!5514 = !DILocation(line: 67, column: 7, scope: !5511)
!5515 = !DILocation(line: 67, column: 6, scope: !5501)
!5516 = !DILocation(line: 68, column: 3, scope: !5511)
!5517 = !DILocation(line: 70, column: 15, scope: !5501)
!5518 = !DILocation(line: 70, column: 2, scope: !5501)
!5519 = !DILocation(line: 70, column: 8, scope: !5501)
!5520 = !DILocation(line: 70, column: 13, scope: !5501)
!5521 = !DILocation(line: 71, column: 14, scope: !5501)
!5522 = !DILocation(line: 71, column: 2, scope: !5501)
!5523 = !DILocation(line: 71, column: 7, scope: !5501)
!5524 = !DILocation(line: 71, column: 12, scope: !5501)
!5525 = !DILocation(line: 72, column: 14, scope: !5501)
!5526 = !DILocation(line: 72, column: 2, scope: !5501)
!5527 = !DILocation(line: 72, column: 7, scope: !5501)
!5528 = !DILocation(line: 72, column: 12, scope: !5501)
!5529 = !DILocation(line: 73, column: 2, scope: !5501)
!5530 = !DILocation(line: 73, column: 2, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5501, file: !4622, line: 73, column: 2)
!5532 = !DILocation(line: 73, column: 2, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5531, file: !4622, line: 73, column: 2)
!5534 = !DILocation(line: 73, column: 2, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5531, file: !4622, line: 73, column: 2)
!5536 = !DILocation(line: 74, column: 1, scope: !5501)
!5537 = distinct !DISubprogram(name: "__list_add_valid", scope: !4622, file: !4622, line: 45, type: !5538, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5538 = !DISubroutineType(types: !5539)
!5539 = !{!538, !252, !252, !252}
!5540 = !DILocalVariable(name: "new", arg: 1, scope: !5537, file: !4622, line: 45, type: !252)
!5541 = !DILocation(line: 45, column: 55, scope: !5537)
!5542 = !DILocalVariable(name: "prev", arg: 2, scope: !5537, file: !4622, line: 46, type: !252)
!5543 = !DILocation(line: 46, column: 23, scope: !5537)
!5544 = !DILocalVariable(name: "next", arg: 3, scope: !5537, file: !4622, line: 47, type: !252)
!5545 = !DILocation(line: 47, column: 23, scope: !5537)
!5546 = !DILocation(line: 49, column: 2, scope: !5537)
!5547 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4611, file: !4611, line: 651, type: !4125, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5548 = !DILocalVariable(name: "f", arg: 1, scope: !5547, file: !4611, line: 651, type: !238)
!5549 = !DILocation(line: 651, column: 65, scope: !5547)
!5550 = !DILocalVariable(name: "__edi", scope: !5551, file: !4611, line: 653, type: !238)
!5551 = distinct !DILexicalBlock(scope: !5547, file: !4611, line: 653, column: 2)
!5552 = !DILocation(line: 653, column: 2, scope: !5551)
!5553 = !DILocalVariable(name: "__esi", scope: !5551, file: !4611, line: 653, type: !238)
!5554 = !DILocalVariable(name: "__edx", scope: !5551, file: !4611, line: 653, type: !238)
!5555 = !DILocalVariable(name: "__ecx", scope: !5551, file: !4611, line: 653, type: !238)
!5556 = !DILocalVariable(name: "__eax", scope: !5551, file: !4611, line: 653, type: !238)
!5557 = !{i32 -2145800607, i32 -2145799857, i32 -2145799623, i32 -2145799572, i32 -2145799544, i32 -2145799519, i32 -2145799835, i32 -2145799822, i32 -2145799384, i32 -2145799265, i32 -2145799730, i32 -2145799703, i32 -2145799675, i32 -2145799645}
!5558 = !DILocation(line: 654, column: 1, scope: !5547)
!5559 = distinct !DISubprogram(name: "__list_del_entry", scope: !4622, file: !4622, line: 130, type: !4754, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5560 = !DILocalVariable(name: "entry", arg: 1, scope: !5559, file: !4622, line: 130, type: !252)
!5561 = !DILocation(line: 130, column: 55, scope: !5559)
!5562 = !DILocation(line: 132, column: 30, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5559, file: !4622, line: 132, column: 6)
!5564 = !DILocation(line: 132, column: 7, scope: !5563)
!5565 = !DILocation(line: 132, column: 6, scope: !5559)
!5566 = !DILocation(line: 133, column: 3, scope: !5563)
!5567 = !DILocation(line: 135, column: 13, scope: !5559)
!5568 = !DILocation(line: 135, column: 20, scope: !5559)
!5569 = !DILocation(line: 135, column: 26, scope: !5559)
!5570 = !DILocation(line: 135, column: 33, scope: !5559)
!5571 = !DILocation(line: 135, column: 2, scope: !5559)
!5572 = !DILocation(line: 136, column: 1, scope: !5559)
!5573 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4622, file: !4622, line: 51, type: !5574, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5574 = !DISubroutineType(types: !5575)
!5575 = !{!538, !252}
!5576 = !DILocalVariable(name: "entry", arg: 1, scope: !5573, file: !4622, line: 51, type: !252)
!5577 = !DILocation(line: 51, column: 61, scope: !5573)
!5578 = !DILocation(line: 53, column: 2, scope: !5573)
!5579 = distinct !DISubprogram(name: "__list_del", scope: !4622, file: !4622, line: 110, type: !4623, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5580 = !DILocalVariable(name: "prev", arg: 1, scope: !5579, file: !4622, line: 110, type: !252)
!5581 = !DILocation(line: 110, column: 50, scope: !5579)
!5582 = !DILocalVariable(name: "next", arg: 2, scope: !5579, file: !4622, line: 110, type: !252)
!5583 = !DILocation(line: 110, column: 75, scope: !5579)
!5584 = !DILocation(line: 112, column: 15, scope: !5579)
!5585 = !DILocation(line: 112, column: 2, scope: !5579)
!5586 = !DILocation(line: 112, column: 8, scope: !5579)
!5587 = !DILocation(line: 112, column: 13, scope: !5579)
!5588 = !DILocation(line: 113, column: 2, scope: !5579)
!5589 = !DILocation(line: 113, column: 2, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5579, file: !4622, line: 113, column: 2)
!5591 = !DILocation(line: 113, column: 2, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5590, file: !4622, line: 113, column: 2)
!5593 = !DILocation(line: 113, column: 2, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5590, file: !4622, line: 113, column: 2)
!5595 = !DILocation(line: 114, column: 1, scope: !5579)
!5596 = distinct !DISubprogram(name: "get_order", scope: !5597, file: !5597, line: 29, type: !5598, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5597 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5598 = !DISubroutineType(types: !5599)
!5599 = !{!241, !238}
!5600 = !DILocalVariable(name: "x", arg: 1, scope: !5601, file: !5602, line: 366, type: !221)
!5601 = distinct !DISubprogram(name: "fls64", scope: !5602, file: !5602, line: 366, type: !5603, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5602 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5603 = !DISubroutineType(types: !5604)
!5604 = !{!241, !221}
!5605 = !DILocation(line: 366, column: 40, scope: !5601, inlinedAt: !5606)
!5606 = distinct !DILocation(line: 46, column: 9, scope: !5596)
!5607 = !DILocalVariable(name: "bitpos", scope: !5601, file: !5602, line: 368, type: !241)
!5608 = !DILocation(line: 368, column: 6, scope: !5601, inlinedAt: !5606)
!5609 = !DILocalVariable(name: "size", arg: 1, scope: !5596, file: !5597, line: 29, type: !238)
!5610 = !DILocation(line: 29, column: 63, scope: !5596)
!5611 = !DILocation(line: 31, column: 27, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5596, file: !5597, line: 31, column: 6)
!5613 = !DILocation(line: 31, column: 6, scope: !5612)
!5614 = !DILocation(line: 31, column: 6, scope: !5596)
!5615 = !DILocation(line: 32, column: 8, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5617, file: !5597, line: 32, column: 7)
!5617 = distinct !DILexicalBlock(scope: !5612, file: !5597, line: 31, column: 34)
!5618 = !DILocation(line: 32, column: 7, scope: !5617)
!5619 = !DILocation(line: 33, column: 4, scope: !5616)
!5620 = !DILocation(line: 35, column: 7, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5617, file: !5597, line: 35, column: 7)
!5622 = !DILocation(line: 35, column: 12, scope: !5621)
!5623 = !DILocation(line: 35, column: 7, scope: !5617)
!5624 = !DILocation(line: 36, column: 4, scope: !5621)
!5625 = !DILocation(line: 38, column: 10, scope: !5617)
!5626 = !DILocation(line: 38, column: 28, scope: !5617)
!5627 = !DILocation(line: 38, column: 41, scope: !5617)
!5628 = !DILocation(line: 38, column: 3, scope: !5617)
!5629 = !DILocation(line: 41, column: 6, scope: !5596)
!5630 = !DILocation(line: 42, column: 7, scope: !5596)
!5631 = !DILocation(line: 46, column: 15, scope: !5596)
!5632 = !DILocation(line: 374, column: 2, scope: !5601, inlinedAt: !5606)
!5633 = !DILocation(line: 376, column: 14, scope: !5601, inlinedAt: !5606)
!5634 = !{i32 250735}
!5635 = !DILocation(line: 377, column: 9, scope: !5601, inlinedAt: !5606)
!5636 = !DILocation(line: 377, column: 16, scope: !5601, inlinedAt: !5606)
!5637 = !DILocation(line: 46, column: 2, scope: !5596)
!5638 = !DILocation(line: 48, column: 1, scope: !5596)
!5639 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5640, file: !5640, line: 30, type: !5641, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5640 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5641 = !DISubroutineType(types: !5642)
!5642 = !{!241, !220}
!5643 = !DILocation(line: 366, column: 40, scope: !5601, inlinedAt: !5644)
!5644 = distinct !DILocation(line: 32, column: 9, scope: !5639)
!5645 = !DILocation(line: 368, column: 6, scope: !5601, inlinedAt: !5644)
!5646 = !DILocalVariable(name: "n", arg: 1, scope: !5639, file: !5640, line: 30, type: !220)
!5647 = !DILocation(line: 30, column: 21, scope: !5639)
!5648 = !DILocation(line: 32, column: 15, scope: !5639)
!5649 = !DILocation(line: 374, column: 2, scope: !5601, inlinedAt: !5644)
!5650 = !DILocation(line: 376, column: 14, scope: !5601, inlinedAt: !5644)
!5651 = !DILocation(line: 377, column: 9, scope: !5601, inlinedAt: !5644)
!5652 = !DILocation(line: 377, column: 16, scope: !5601, inlinedAt: !5644)
!5653 = !DILocation(line: 32, column: 18, scope: !5639)
!5654 = !DILocation(line: 32, column: 2, scope: !5639)
!5655 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5656, file: !5656, line: 137, type: !5657, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5656 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5657 = !DISubroutineType(types: !5658)
!5658 = !{!237, !983, !2171, !378, !239}
!5659 = !DILocalVariable(name: "s", arg: 1, scope: !5655, file: !5656, line: 137, type: !983)
!5660 = !DILocation(line: 137, column: 54, scope: !5655)
!5661 = !DILocalVariable(name: "object", arg: 2, scope: !5655, file: !5656, line: 137, type: !2171)
!5662 = !DILocation(line: 137, column: 69, scope: !5655)
!5663 = !DILocalVariable(name: "size", arg: 3, scope: !5655, file: !5656, line: 138, type: !378)
!5664 = !DILocation(line: 138, column: 12, scope: !5655)
!5665 = !DILocalVariable(name: "flags", arg: 4, scope: !5655, file: !5656, line: 138, type: !239)
!5666 = !DILocation(line: 138, column: 24, scope: !5655)
!5667 = !DILocation(line: 140, column: 17, scope: !5655)
!5668 = !DILocation(line: 140, column: 2, scope: !5655)
!5669 = distinct !DISubprogram(name: "kmalloc_array", scope: !190, file: !190, line: 584, type: !5208, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5670 = !DILocation(line: 445, column: 72, scope: !4939, inlinedAt: !5671)
!5671 = distinct !DILocation(line: 552, column: 10, scope: !4944, inlinedAt: !5672)
!5672 = distinct !DILocation(line: 591, column: 10, scope: !5673)
!5673 = distinct !DILexicalBlock(scope: !5669, file: !190, line: 590, column: 6)
!5674 = !DILocation(line: 446, column: 9, scope: !4939, inlinedAt: !5671)
!5675 = !DILocation(line: 446, column: 23, scope: !4939, inlinedAt: !5671)
!5676 = !DILocation(line: 448, column: 8, scope: !4939, inlinedAt: !5671)
!5677 = !DILocation(line: 318, column: 67, scope: !4955, inlinedAt: !5678)
!5678 = distinct !DILocation(line: 553, column: 20, scope: !4944, inlinedAt: !5672)
!5679 = !DILocation(line: 346, column: 58, scope: !4961, inlinedAt: !5680)
!5680 = distinct !DILocation(line: 547, column: 11, scope: !4944, inlinedAt: !5672)
!5681 = !DILocation(line: 472, column: 28, scope: !4967, inlinedAt: !5682)
!5682 = distinct !DILocation(line: 481, column: 9, scope: !4972, inlinedAt: !5683)
!5683 = distinct !DILocation(line: 545, column: 11, scope: !4974, inlinedAt: !5672)
!5684 = !DILocation(line: 472, column: 40, scope: !4967, inlinedAt: !5682)
!5685 = !DILocation(line: 472, column: 60, scope: !4967, inlinedAt: !5682)
!5686 = !DILocation(line: 478, column: 51, scope: !4972, inlinedAt: !5683)
!5687 = !DILocation(line: 478, column: 63, scope: !4972, inlinedAt: !5683)
!5688 = !DILocation(line: 480, column: 15, scope: !4972, inlinedAt: !5683)
!5689 = !DILocation(line: 538, column: 45, scope: !4946, inlinedAt: !5672)
!5690 = !DILocation(line: 538, column: 57, scope: !4946, inlinedAt: !5672)
!5691 = !DILocation(line: 542, column: 16, scope: !4944, inlinedAt: !5672)
!5692 = !DILocalVariable(name: "n", arg: 1, scope: !5669, file: !190, line: 584, type: !378)
!5693 = !DILocation(line: 584, column: 42, scope: !5669)
!5694 = !DILocalVariable(name: "size", arg: 2, scope: !5669, file: !190, line: 584, type: !378)
!5695 = !DILocation(line: 584, column: 52, scope: !5669)
!5696 = !DILocalVariable(name: "flags", arg: 3, scope: !5669, file: !190, line: 584, type: !239)
!5697 = !DILocation(line: 584, column: 64, scope: !5669)
!5698 = !DILocalVariable(name: "bytes", scope: !5669, file: !190, line: 586, type: !378)
!5699 = !DILocation(line: 586, column: 9, scope: !5669)
!5700 = !DILocalVariable(name: "__a", scope: !5701, file: !190, line: 588, type: !378)
!5701 = distinct !DILexicalBlock(scope: !5702, file: !190, line: 588, column: 6)
!5702 = distinct !DILexicalBlock(scope: !5669, file: !190, line: 588, column: 6)
!5703 = !DILocation(line: 588, column: 6, scope: !5701)
!5704 = !DILocalVariable(name: "__b", scope: !5701, file: !190, line: 588, type: !378)
!5705 = !DILocalVariable(name: "__d", scope: !5701, file: !190, line: 588, type: !5706)
!5706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!5707 = !DILocation(line: 588, column: 6, scope: !5702)
!5708 = !DILocation(line: 588, column: 6, scope: !5669)
!5709 = !DILocation(line: 589, column: 3, scope: !5702)
!5710 = !DILocation(line: 590, column: 27, scope: !5673)
!5711 = !DILocation(line: 590, column: 6, scope: !5673)
!5712 = !DILocation(line: 590, column: 30, scope: !5673)
!5713 = !DILocation(line: 590, column: 54, scope: !5673)
!5714 = !DILocation(line: 590, column: 33, scope: !5673)
!5715 = !DILocation(line: 590, column: 6, scope: !5669)
!5716 = !DILocation(line: 591, column: 18, scope: !5673)
!5717 = !DILocation(line: 591, column: 25, scope: !5673)
!5718 = !DILocation(line: 540, column: 27, scope: !4945, inlinedAt: !5672)
!5719 = !DILocation(line: 540, column: 6, scope: !4945, inlinedAt: !5672)
!5720 = !DILocation(line: 540, column: 6, scope: !4946, inlinedAt: !5672)
!5721 = !DILocation(line: 544, column: 7, scope: !4974, inlinedAt: !5672)
!5722 = !DILocation(line: 544, column: 12, scope: !4974, inlinedAt: !5672)
!5723 = !DILocation(line: 544, column: 7, scope: !4944, inlinedAt: !5672)
!5724 = !DILocation(line: 545, column: 25, scope: !4974, inlinedAt: !5672)
!5725 = !DILocation(line: 545, column: 31, scope: !4974, inlinedAt: !5672)
!5726 = !DILocation(line: 480, column: 33, scope: !4972, inlinedAt: !5683)
!5727 = !DILocation(line: 480, column: 23, scope: !4972, inlinedAt: !5683)
!5728 = !DILocation(line: 481, column: 29, scope: !4972, inlinedAt: !5683)
!5729 = !DILocation(line: 481, column: 35, scope: !4972, inlinedAt: !5683)
!5730 = !DILocation(line: 481, column: 42, scope: !4972, inlinedAt: !5683)
!5731 = !DILocation(line: 474, column: 23, scope: !4967, inlinedAt: !5682)
!5732 = !DILocation(line: 474, column: 29, scope: !4967, inlinedAt: !5682)
!5733 = !DILocation(line: 474, column: 36, scope: !4967, inlinedAt: !5682)
!5734 = !DILocation(line: 474, column: 9, scope: !4967, inlinedAt: !5682)
!5735 = !DILocation(line: 545, column: 4, scope: !4974, inlinedAt: !5672)
!5736 = !DILocation(line: 547, column: 25, scope: !4944, inlinedAt: !5672)
!5737 = !DILocation(line: 348, column: 7, scope: !5018, inlinedAt: !5680)
!5738 = !DILocation(line: 348, column: 6, scope: !4961, inlinedAt: !5680)
!5739 = !DILocation(line: 349, column: 3, scope: !5018, inlinedAt: !5680)
!5740 = !DILocation(line: 351, column: 6, scope: !5022, inlinedAt: !5680)
!5741 = !DILocation(line: 351, column: 11, scope: !5022, inlinedAt: !5680)
!5742 = !DILocation(line: 351, column: 6, scope: !4961, inlinedAt: !5680)
!5743 = !DILocation(line: 352, column: 3, scope: !5022, inlinedAt: !5680)
!5744 = !DILocation(line: 354, column: 32, scope: !5027, inlinedAt: !5680)
!5745 = !DILocation(line: 354, column: 37, scope: !5027, inlinedAt: !5680)
!5746 = !DILocation(line: 354, column: 42, scope: !5027, inlinedAt: !5680)
!5747 = !DILocation(line: 354, column: 45, scope: !5027, inlinedAt: !5680)
!5748 = !DILocation(line: 354, column: 50, scope: !5027, inlinedAt: !5680)
!5749 = !DILocation(line: 354, column: 6, scope: !4961, inlinedAt: !5680)
!5750 = !DILocation(line: 355, column: 3, scope: !5027, inlinedAt: !5680)
!5751 = !DILocation(line: 356, column: 32, scope: !5035, inlinedAt: !5680)
!5752 = !DILocation(line: 356, column: 37, scope: !5035, inlinedAt: !5680)
!5753 = !DILocation(line: 356, column: 43, scope: !5035, inlinedAt: !5680)
!5754 = !DILocation(line: 356, column: 46, scope: !5035, inlinedAt: !5680)
!5755 = !DILocation(line: 356, column: 51, scope: !5035, inlinedAt: !5680)
!5756 = !DILocation(line: 356, column: 6, scope: !4961, inlinedAt: !5680)
!5757 = !DILocation(line: 357, column: 3, scope: !5035, inlinedAt: !5680)
!5758 = !DILocation(line: 358, column: 6, scope: !5043, inlinedAt: !5680)
!5759 = !DILocation(line: 358, column: 11, scope: !5043, inlinedAt: !5680)
!5760 = !DILocation(line: 358, column: 6, scope: !4961, inlinedAt: !5680)
!5761 = !DILocation(line: 358, column: 26, scope: !5043, inlinedAt: !5680)
!5762 = !DILocation(line: 359, column: 6, scope: !5048, inlinedAt: !5680)
!5763 = !DILocation(line: 359, column: 11, scope: !5048, inlinedAt: !5680)
!5764 = !DILocation(line: 359, column: 6, scope: !4961, inlinedAt: !5680)
!5765 = !DILocation(line: 359, column: 26, scope: !5048, inlinedAt: !5680)
!5766 = !DILocation(line: 360, column: 6, scope: !5053, inlinedAt: !5680)
!5767 = !DILocation(line: 360, column: 11, scope: !5053, inlinedAt: !5680)
!5768 = !DILocation(line: 360, column: 6, scope: !4961, inlinedAt: !5680)
!5769 = !DILocation(line: 360, column: 26, scope: !5053, inlinedAt: !5680)
!5770 = !DILocation(line: 361, column: 6, scope: !5058, inlinedAt: !5680)
!5771 = !DILocation(line: 361, column: 11, scope: !5058, inlinedAt: !5680)
!5772 = !DILocation(line: 361, column: 6, scope: !4961, inlinedAt: !5680)
!5773 = !DILocation(line: 361, column: 26, scope: !5058, inlinedAt: !5680)
!5774 = !DILocation(line: 362, column: 6, scope: !5063, inlinedAt: !5680)
!5775 = !DILocation(line: 362, column: 11, scope: !5063, inlinedAt: !5680)
!5776 = !DILocation(line: 362, column: 6, scope: !4961, inlinedAt: !5680)
!5777 = !DILocation(line: 362, column: 26, scope: !5063, inlinedAt: !5680)
!5778 = !DILocation(line: 363, column: 6, scope: !5068, inlinedAt: !5680)
!5779 = !DILocation(line: 363, column: 11, scope: !5068, inlinedAt: !5680)
!5780 = !DILocation(line: 363, column: 6, scope: !4961, inlinedAt: !5680)
!5781 = !DILocation(line: 363, column: 26, scope: !5068, inlinedAt: !5680)
!5782 = !DILocation(line: 364, column: 6, scope: !5073, inlinedAt: !5680)
!5783 = !DILocation(line: 364, column: 11, scope: !5073, inlinedAt: !5680)
!5784 = !DILocation(line: 364, column: 6, scope: !4961, inlinedAt: !5680)
!5785 = !DILocation(line: 364, column: 26, scope: !5073, inlinedAt: !5680)
!5786 = !DILocation(line: 365, column: 6, scope: !5078, inlinedAt: !5680)
!5787 = !DILocation(line: 365, column: 11, scope: !5078, inlinedAt: !5680)
!5788 = !DILocation(line: 365, column: 6, scope: !4961, inlinedAt: !5680)
!5789 = !DILocation(line: 365, column: 26, scope: !5078, inlinedAt: !5680)
!5790 = !DILocation(line: 366, column: 6, scope: !5083, inlinedAt: !5680)
!5791 = !DILocation(line: 366, column: 11, scope: !5083, inlinedAt: !5680)
!5792 = !DILocation(line: 366, column: 6, scope: !4961, inlinedAt: !5680)
!5793 = !DILocation(line: 366, column: 26, scope: !5083, inlinedAt: !5680)
!5794 = !DILocation(line: 367, column: 6, scope: !5088, inlinedAt: !5680)
!5795 = !DILocation(line: 367, column: 11, scope: !5088, inlinedAt: !5680)
!5796 = !DILocation(line: 367, column: 6, scope: !4961, inlinedAt: !5680)
!5797 = !DILocation(line: 367, column: 26, scope: !5088, inlinedAt: !5680)
!5798 = !DILocation(line: 368, column: 6, scope: !5093, inlinedAt: !5680)
!5799 = !DILocation(line: 368, column: 11, scope: !5093, inlinedAt: !5680)
!5800 = !DILocation(line: 368, column: 6, scope: !4961, inlinedAt: !5680)
!5801 = !DILocation(line: 368, column: 26, scope: !5093, inlinedAt: !5680)
!5802 = !DILocation(line: 369, column: 6, scope: !5098, inlinedAt: !5680)
!5803 = !DILocation(line: 369, column: 11, scope: !5098, inlinedAt: !5680)
!5804 = !DILocation(line: 369, column: 6, scope: !4961, inlinedAt: !5680)
!5805 = !DILocation(line: 369, column: 26, scope: !5098, inlinedAt: !5680)
!5806 = !DILocation(line: 370, column: 6, scope: !5103, inlinedAt: !5680)
!5807 = !DILocation(line: 370, column: 11, scope: !5103, inlinedAt: !5680)
!5808 = !DILocation(line: 370, column: 6, scope: !4961, inlinedAt: !5680)
!5809 = !DILocation(line: 370, column: 26, scope: !5103, inlinedAt: !5680)
!5810 = !DILocation(line: 371, column: 6, scope: !5108, inlinedAt: !5680)
!5811 = !DILocation(line: 371, column: 11, scope: !5108, inlinedAt: !5680)
!5812 = !DILocation(line: 371, column: 6, scope: !4961, inlinedAt: !5680)
!5813 = !DILocation(line: 371, column: 26, scope: !5108, inlinedAt: !5680)
!5814 = !DILocation(line: 372, column: 6, scope: !5113, inlinedAt: !5680)
!5815 = !DILocation(line: 372, column: 11, scope: !5113, inlinedAt: !5680)
!5816 = !DILocation(line: 372, column: 6, scope: !4961, inlinedAt: !5680)
!5817 = !DILocation(line: 372, column: 26, scope: !5113, inlinedAt: !5680)
!5818 = !DILocation(line: 373, column: 6, scope: !5118, inlinedAt: !5680)
!5819 = !DILocation(line: 373, column: 11, scope: !5118, inlinedAt: !5680)
!5820 = !DILocation(line: 373, column: 6, scope: !4961, inlinedAt: !5680)
!5821 = !DILocation(line: 373, column: 26, scope: !5118, inlinedAt: !5680)
!5822 = !DILocation(line: 374, column: 6, scope: !5123, inlinedAt: !5680)
!5823 = !DILocation(line: 374, column: 11, scope: !5123, inlinedAt: !5680)
!5824 = !DILocation(line: 374, column: 6, scope: !4961, inlinedAt: !5680)
!5825 = !DILocation(line: 374, column: 26, scope: !5123, inlinedAt: !5680)
!5826 = !DILocation(line: 375, column: 6, scope: !5128, inlinedAt: !5680)
!5827 = !DILocation(line: 375, column: 11, scope: !5128, inlinedAt: !5680)
!5828 = !DILocation(line: 375, column: 6, scope: !4961, inlinedAt: !5680)
!5829 = !DILocation(line: 375, column: 27, scope: !5128, inlinedAt: !5680)
!5830 = !DILocation(line: 376, column: 6, scope: !5133, inlinedAt: !5680)
!5831 = !DILocation(line: 376, column: 11, scope: !5133, inlinedAt: !5680)
!5832 = !DILocation(line: 376, column: 6, scope: !4961, inlinedAt: !5680)
!5833 = !DILocation(line: 376, column: 32, scope: !5133, inlinedAt: !5680)
!5834 = !DILocation(line: 377, column: 6, scope: !5138, inlinedAt: !5680)
!5835 = !DILocation(line: 377, column: 11, scope: !5138, inlinedAt: !5680)
!5836 = !DILocation(line: 377, column: 6, scope: !4961, inlinedAt: !5680)
!5837 = !DILocation(line: 377, column: 32, scope: !5138, inlinedAt: !5680)
!5838 = !DILocation(line: 378, column: 6, scope: !5143, inlinedAt: !5680)
!5839 = !DILocation(line: 378, column: 11, scope: !5143, inlinedAt: !5680)
!5840 = !DILocation(line: 378, column: 6, scope: !4961, inlinedAt: !5680)
!5841 = !DILocation(line: 378, column: 32, scope: !5143, inlinedAt: !5680)
!5842 = !DILocation(line: 379, column: 6, scope: !5148, inlinedAt: !5680)
!5843 = !DILocation(line: 379, column: 11, scope: !5148, inlinedAt: !5680)
!5844 = !DILocation(line: 379, column: 6, scope: !4961, inlinedAt: !5680)
!5845 = !DILocation(line: 379, column: 33, scope: !5148, inlinedAt: !5680)
!5846 = !DILocation(line: 380, column: 6, scope: !5153, inlinedAt: !5680)
!5847 = !DILocation(line: 380, column: 11, scope: !5153, inlinedAt: !5680)
!5848 = !DILocation(line: 380, column: 6, scope: !4961, inlinedAt: !5680)
!5849 = !DILocation(line: 380, column: 33, scope: !5153, inlinedAt: !5680)
!5850 = !DILocation(line: 381, column: 6, scope: !5158, inlinedAt: !5680)
!5851 = !DILocation(line: 381, column: 11, scope: !5158, inlinedAt: !5680)
!5852 = !DILocation(line: 381, column: 6, scope: !4961, inlinedAt: !5680)
!5853 = !DILocation(line: 381, column: 33, scope: !5158, inlinedAt: !5680)
!5854 = !DILocation(line: 382, column: 2, scope: !5163, inlinedAt: !5680)
!5855 = !DILocation(line: 382, column: 2, scope: !5167, inlinedAt: !5680)
!5856 = !DILocation(line: 382, column: 2, scope: !5168, inlinedAt: !5680)
!5857 = !DILocation(line: 386, column: 1, scope: !4961, inlinedAt: !5680)
!5858 = !DILocation(line: 547, column: 9, scope: !4944, inlinedAt: !5672)
!5859 = !DILocation(line: 549, column: 8, scope: !5174, inlinedAt: !5672)
!5860 = !DILocation(line: 549, column: 7, scope: !4944, inlinedAt: !5672)
!5861 = !DILocation(line: 550, column: 4, scope: !5174, inlinedAt: !5672)
!5862 = !DILocation(line: 553, column: 33, scope: !4944, inlinedAt: !5672)
!5863 = !DILocation(line: 325, column: 6, scope: !5179, inlinedAt: !5678)
!5864 = !DILocation(line: 325, column: 6, scope: !4955, inlinedAt: !5678)
!5865 = !DILocation(line: 326, column: 3, scope: !5179, inlinedAt: !5678)
!5866 = !DILocation(line: 332, column: 9, scope: !4955, inlinedAt: !5678)
!5867 = !DILocation(line: 332, column: 15, scope: !4955, inlinedAt: !5678)
!5868 = !DILocation(line: 332, column: 2, scope: !4955, inlinedAt: !5678)
!5869 = !DILocation(line: 336, column: 1, scope: !4955, inlinedAt: !5678)
!5870 = !DILocation(line: 553, column: 5, scope: !4944, inlinedAt: !5672)
!5871 = !DILocation(line: 553, column: 41, scope: !4944, inlinedAt: !5672)
!5872 = !DILocation(line: 554, column: 5, scope: !4944, inlinedAt: !5672)
!5873 = !DILocation(line: 554, column: 12, scope: !4944, inlinedAt: !5672)
!5874 = !DILocation(line: 448, column: 31, scope: !4939, inlinedAt: !5671)
!5875 = !DILocation(line: 448, column: 34, scope: !4939, inlinedAt: !5671)
!5876 = !DILocation(line: 448, column: 14, scope: !4939, inlinedAt: !5671)
!5877 = !DILocation(line: 450, column: 22, scope: !4939, inlinedAt: !5671)
!5878 = !DILocation(line: 450, column: 25, scope: !4939, inlinedAt: !5671)
!5879 = !DILocation(line: 450, column: 30, scope: !4939, inlinedAt: !5671)
!5880 = !DILocation(line: 450, column: 36, scope: !4939, inlinedAt: !5671)
!5881 = !DILocation(line: 450, column: 8, scope: !4939, inlinedAt: !5671)
!5882 = !DILocation(line: 450, column: 6, scope: !4939, inlinedAt: !5671)
!5883 = !DILocation(line: 451, column: 9, scope: !4939, inlinedAt: !5671)
!5884 = !DILocation(line: 552, column: 3, scope: !4944, inlinedAt: !5672)
!5885 = !DILocation(line: 557, column: 19, scope: !4946, inlinedAt: !5672)
!5886 = !DILocation(line: 557, column: 25, scope: !4946, inlinedAt: !5672)
!5887 = !DILocation(line: 557, column: 9, scope: !4946, inlinedAt: !5672)
!5888 = !DILocation(line: 557, column: 2, scope: !4946, inlinedAt: !5672)
!5889 = !DILocation(line: 558, column: 1, scope: !4946, inlinedAt: !5672)
!5890 = !DILocation(line: 591, column: 3, scope: !5673)
!5891 = !DILocation(line: 592, column: 19, scope: !5669)
!5892 = !DILocation(line: 592, column: 26, scope: !5669)
!5893 = !DILocation(line: 592, column: 9, scope: !5669)
!5894 = !DILocation(line: 592, column: 2, scope: !5669)
!5895 = !DILocation(line: 593, column: 1, scope: !5669)
!5896 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5897, file: !5897, line: 52, type: !5898, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5897 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!5898 = !DISubroutineType(types: !5899)
!5899 = !{!538, !538}
!5900 = !DILocalVariable(name: "overflow", arg: 1, scope: !5896, file: !5897, line: 52, type: !538)
!5901 = !DILocation(line: 52, column: 60, scope: !5896)
!5902 = !DILocation(line: 54, column: 9, scope: !5896)
!5903 = !DILocation(line: 54, column: 2, scope: !5896)
!5904 = distinct !DISubprogram(name: "hv_get_bytes_to_read", scope: !115, file: !115, line: 187, type: !5905, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5905 = !DISubroutineType(types: !5906)
!5906 = !{!210, !5907}
!5907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5908, size: 64)
!5908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4017)
!5909 = !DILocalVariable(name: "rbi", arg: 1, scope: !5904, file: !115, line: 187, type: !5907)
!5910 = !DILocation(line: 187, column: 74, scope: !5904)
!5911 = !DILocalVariable(name: "read_loc", scope: !5904, file: !115, line: 189, type: !210)
!5912 = !DILocation(line: 189, column: 6, scope: !5904)
!5913 = !DILocalVariable(name: "write_loc", scope: !5904, file: !115, line: 189, type: !210)
!5914 = !DILocation(line: 189, column: 16, scope: !5904)
!5915 = !DILocalVariable(name: "dsize", scope: !5904, file: !115, line: 189, type: !210)
!5916 = !DILocation(line: 189, column: 27, scope: !5904)
!5917 = !DILocalVariable(name: "read", scope: !5904, file: !115, line: 189, type: !210)
!5918 = !DILocation(line: 189, column: 34, scope: !5904)
!5919 = !DILocation(line: 191, column: 10, scope: !5904)
!5920 = !DILocation(line: 191, column: 15, scope: !5904)
!5921 = !DILocation(line: 191, column: 8, scope: !5904)
!5922 = !DILocation(line: 192, column: 13, scope: !5904)
!5923 = !DILocation(line: 192, column: 18, scope: !5904)
!5924 = !DILocation(line: 192, column: 31, scope: !5904)
!5925 = !DILocation(line: 192, column: 11, scope: !5904)
!5926 = !DILocation(line: 193, column: 14, scope: !5927)
!5927 = distinct !DILexicalBlock(scope: !5904, file: !115, line: 193, column: 14)
!5928 = !DILocation(line: 193, column: 14, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5927, file: !115, line: 193, column: 14)
!5930 = !DILocation(line: 193, column: 12, scope: !5904)
!5931 = !DILocation(line: 195, column: 9, scope: !5904)
!5932 = !DILocation(line: 195, column: 22, scope: !5904)
!5933 = !DILocation(line: 195, column: 19, scope: !5904)
!5934 = !DILocation(line: 195, column: 34, scope: !5904)
!5935 = !DILocation(line: 195, column: 46, scope: !5904)
!5936 = !DILocation(line: 195, column: 44, scope: !5904)
!5937 = !DILocation(line: 196, column: 4, scope: !5904)
!5938 = !DILocation(line: 196, column: 12, scope: !5904)
!5939 = !DILocation(line: 196, column: 10, scope: !5904)
!5940 = !DILocation(line: 196, column: 24, scope: !5904)
!5941 = !DILocation(line: 196, column: 22, scope: !5904)
!5942 = !DILocation(line: 195, column: 7, scope: !5904)
!5943 = !DILocation(line: 198, column: 9, scope: !5904)
!5944 = !DILocation(line: 198, column: 2, scope: !5904)
!5945 = distinct !DISubprogram(name: "test_and_set_bit", scope: !5946, file: !5946, line: 68, type: !5947, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5946 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5947 = !DISubroutineType(types: !5948)
!5948 = !{!538, !367, !5949}
!5949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5950, size: 64)
!5950 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !238)
!5951 = !DILocalVariable(name: "nr", arg: 1, scope: !5952, file: !5602, line: 136, type: !367)
!5952 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !5602, file: !5602, line: 136, type: !5947, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5953 = !DILocation(line: 136, column: 28, scope: !5952, inlinedAt: !5954)
!5954 = distinct !DILocation(line: 71, column: 9, scope: !5945)
!5955 = !DILocalVariable(name: "addr", arg: 2, scope: !5952, file: !5602, line: 136, type: !5949)
!5956 = !DILocation(line: 136, column: 56, scope: !5952, inlinedAt: !5954)
!5957 = !DILocalVariable(name: "c", scope: !5958, file: !5602, line: 138, type: !538)
!5958 = distinct !DILexicalBlock(scope: !5952, file: !5602, line: 138, column: 9)
!5959 = !DILocation(line: 138, column: 9, scope: !5958, inlinedAt: !5954)
!5960 = !DILocalVariable(name: "v", arg: 1, scope: !5961, file: !5962, line: 99, type: !5965)
!5961 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5962, file: !5962, line: 99, type: !5963, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5962 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5963 = !DISubroutineType(types: !5964)
!5964 = !{null, !5965, !378}
!5965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5966, size: 64)
!5966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4598)
!5967 = !DILocation(line: 99, column: 79, scope: !5961, inlinedAt: !5968)
!5968 = distinct !DILocation(line: 70, column: 2, scope: !5945)
!5969 = !DILocalVariable(name: "size", arg: 2, scope: !5961, file: !5962, line: 99, type: !378)
!5970 = !DILocation(line: 99, column: 89, scope: !5961, inlinedAt: !5968)
!5971 = !DILocalVariable(name: "nr", arg: 1, scope: !5945, file: !5946, line: 68, type: !367)
!5972 = !DILocation(line: 68, column: 42, scope: !5945)
!5973 = !DILocalVariable(name: "addr", arg: 2, scope: !5945, file: !5946, line: 68, type: !5949)
!5974 = !DILocation(line: 68, column: 70, scope: !5945)
!5975 = !DILocation(line: 70, column: 31, scope: !5945)
!5976 = !DILocation(line: 70, column: 38, scope: !5945)
!5977 = !DILocation(line: 70, column: 36, scope: !5945)
!5978 = !DILocation(line: 101, column: 20, scope: !5961, inlinedAt: !5968)
!5979 = !DILocation(line: 101, column: 23, scope: !5961, inlinedAt: !5968)
!5980 = !DILocation(line: 101, column: 2, scope: !5961, inlinedAt: !5968)
!5981 = !DILocation(line: 102, column: 2, scope: !5961, inlinedAt: !5968)
!5982 = !DILocation(line: 71, column: 31, scope: !5945)
!5983 = !DILocation(line: 71, column: 35, scope: !5945)
!5984 = !{i32 -2147197000, i32 -2147196904}
!5985 = !DILocation(line: 71, column: 2, scope: !5945)
!5986 = distinct !DISubprogram(name: "kasan_check_write", scope: !5987, file: !5987, line: 38, type: !5988, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5987 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5988 = !DISubroutineType(types: !5989)
!5989 = !{!538, !5965, !7}
!5990 = !DILocalVariable(name: "p", arg: 1, scope: !5986, file: !5987, line: 38, type: !5965)
!5991 = !DILocation(line: 38, column: 59, scope: !5986)
!5992 = !DILocalVariable(name: "size", arg: 2, scope: !5986, file: !5987, line: 38, type: !7)
!5993 = !DILocation(line: 38, column: 75, scope: !5986)
!5994 = !DILocation(line: 40, column: 2, scope: !5986)
!5995 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5996, file: !5996, line: 178, type: !5997, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!5996 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5997 = !DISubroutineType(types: !5998)
!5998 = !{null, !5965, !378, !241}
!5999 = !DILocalVariable(name: "ptr", arg: 1, scope: !5995, file: !5996, line: 178, type: !5965)
!6000 = !DILocation(line: 178, column: 60, scope: !5995)
!6001 = !DILocalVariable(name: "size", arg: 2, scope: !5995, file: !5996, line: 178, type: !378)
!6002 = !DILocation(line: 178, column: 72, scope: !5995)
!6003 = !DILocalVariable(name: "type", arg: 3, scope: !5995, file: !5996, line: 179, type: !241)
!6004 = !DILocation(line: 179, column: 15, scope: !5995)
!6005 = !DILocation(line: 179, column: 23, scope: !5995)
!6006 = distinct !DISubprogram(name: "sync_set_bit", scope: !6007, file: !6007, line: 32, type: !6008, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !307)
!6007 = !DIFile(filename: "./arch/x86/include/asm/sync_bitops.h", directory: "/home/lizy2001/genbc/linux")
!6008 = !DISubroutineType(types: !6009)
!6009 = !{null, !367, !5949}
!6010 = !DILocalVariable(name: "nr", arg: 1, scope: !6006, file: !6007, line: 32, type: !367)
!6011 = !DILocation(line: 32, column: 38, scope: !6006)
!6012 = !DILocalVariable(name: "addr", arg: 2, scope: !6006, file: !6007, line: 32, type: !5949)
!6013 = !DILocation(line: 32, column: 66, scope: !6006)
!6014 = !DILocation(line: 35, column: 16, scope: !6006)
!6015 = !DILocation(line: 36, column: 16, scope: !6006)
!6016 = !DILocation(line: 34, column: 2, scope: !6006)
!6017 = !{i32 5702404}
!6018 = !DILocation(line: 38, column: 1, scope: !6006)
