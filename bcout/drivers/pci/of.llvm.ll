; ModuleID = '../bcout/drivers/pci/of.llvm.bc'
source_filename = "drivers/pci/of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
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
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
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
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wake_irq = type opaque
%struct.atomic_t = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32, %struct.list_head, %struct.pm_domain_data* }
%struct.pm_domain_data = type opaque
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask] }
%struct.msi_desc = type opaque
%struct.cpumask = type { [1 x i64] }
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.seq_file = type opaque
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8* }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.45, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics }
%struct.load_weight = type { i64, i32 }
%struct.sched_statistics = type {}
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, %struct.sched_rt_entity* }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, %struct.sched_dl_entity* }
%struct.sched_info = type {}
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.1, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.54, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.55, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.56, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.59, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }
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
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.block_device = type opaque
%struct.mtd_info = type opaque
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.54 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.55 = type { %struct.callback_head }
%union.anon.56 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
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
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.59 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.52 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type opaque
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.30 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.30 = type { %struct.callback_head }
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
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
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
%struct.proc_dir_entry = type opaque
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.64 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.65, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, {}*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, {}*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, {}*, {}*, {}* }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.pcie_link_state = type opaque
%struct.pci_vpd = type opaque
%union.anon.65 = type { %struct.pci_sriov* }
%struct.pci_sriov = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, %struct.pci_dev*, %struct.pci_dev*, i32, i8, i16, i16, [6 x i64], i8 }
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }
%struct.pci_host_bridge = type { %struct.device, %struct.pci_bus*, %struct.pci_ops*, %struct.pci_ops*, i8*, i32, %struct.list_head, %struct.list_head, i8 (%struct.pci_dev*, i8*)*, i32 (%struct.pci_dev*, i8, i8)*, void (%struct.pci_host_bridge*)*, i8*, %struct.msi_controller*, i16, i64 (%struct.pci_dev*, %struct.resource*, i64, i64, i64)*, [8 x i8], [0 x i64] }
%struct.resource_entry = type { %struct.list_head, %struct.resource*, i64, %struct.resource }
%struct.of_pci_range = type { %union.anon.66, i64, i64, i32 }
%union.anon.66 = type { i64 }
%struct.of_pci_range_parser = type { %struct.device_node*, %struct.of_bus*, i32*, i32*, i32, i32, i32, i8 }
%struct.of_bus = type opaque

@.str = private unnamed_addr constant [16 x i8] c"external-facing\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"drivers/pci/of.c\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"multifunc-device\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"bus-range\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"linux,pci-domain\00", align 1
@of_chosen = external dso_local global %struct.device_node*, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"linux,pci-probe-only\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"\014PCI: OF: linux,pci-probe-only without valid value, ignoring\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"\016PCI: OF: PROBE_ONLY %sabled\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"max-link-speed\00", align 1
@pci_flags = external dso_local global i32, align 4
@.str.12 = private unnamed_addr constant [59 x i8] c"%s: no interrupt-map found, INTx interrupts not available\0A\00", align 1
@__func__.of_irq_parse_pci = private unnamed_addr constant [17 x i8] c"of_irq_parse_pci\00", align 1
@of_irq_parse_pci.__print_once = internal global i8 0, section ".data.once", align 1, !dbg !0
@.str.13 = private unnamed_addr constant [89 x i8] c"\014PCI: OF: %s: possibly some PCI slots don't have level triggered interrupts capability\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"%s: failed with rc=%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"error %d: failed to map resource %pR\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"non-prefetchable memory resource required\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"host bridge %pOF ranges:\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"  No bus range found for %pOF, using %pR\0A\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"MEM\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"  %6s %#012llx..%#012llx -> %#012llx\0A\00", align 1
@.str.23 = private unnamed_addr constant [86 x i8] c"I/O range found for %pOF. Please provide an io_base pointer to save CPU base address\0A\00", align 1
@.str.24 = private unnamed_addr constant [85 x i8] c"More than one I/O resource converted for %pOF. CPU base address for old range lost!\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"IB MEM\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_set_of_node(%struct.pci_dev* %dev) #0 !dbg !4394 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4395, metadata !DIExpression()), !dbg !4396
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4397
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 1, !dbg !4399
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4399
  %dev1 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %1, i32 0, i32 21, !dbg !4400
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 23, !dbg !4401
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4401
  %tobool = icmp ne %struct.device_node* %2, null, !dbg !4397
  br i1 %tobool, label %if.end, label %if.then, !dbg !4402

if.then:                                          ; preds = %entry
  br label %if.end15, !dbg !4403

if.end:                                           ; preds = %entry
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4404
  %bus2 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 1, !dbg !4405
  %4 = load %struct.pci_bus*, %struct.pci_bus** %bus2, align 8, !dbg !4405
  %dev3 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %4, i32 0, i32 21, !dbg !4406
  %of_node4 = getelementptr inbounds %struct.device, %struct.device* %dev3, i32 0, i32 23, !dbg !4407
  %5 = load %struct.device_node*, %struct.device_node** %of_node4, align 8, !dbg !4407
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4408
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 6, !dbg !4409
  %7 = load i32, i32* %devfn, align 8, !dbg !4409
  %call = call %struct.device_node* @of_pci_find_child_device(%struct.device_node* %5, i32 %7) #7, !dbg !4410
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4411
  %dev5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 41, !dbg !4412
  %of_node6 = getelementptr inbounds %struct.device, %struct.device* %dev5, i32 0, i32 23, !dbg !4413
  store %struct.device_node* %call, %struct.device_node** %of_node6, align 8, !dbg !4414
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4415
  %dev7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 41, !dbg !4417
  %of_node8 = getelementptr inbounds %struct.device, %struct.device* %dev7, i32 0, i32 23, !dbg !4418
  %10 = load %struct.device_node*, %struct.device_node** %of_node8, align 8, !dbg !4418
  %tobool9 = icmp ne %struct.device_node* %10, null, !dbg !4415
  br i1 %tobool9, label %if.then10, label %if.end15, !dbg !4419

if.then10:                                        ; preds = %if.end
  %11 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4420
  %dev11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 41, !dbg !4421
  %of_node12 = getelementptr inbounds %struct.device, %struct.device* %dev11, i32 0, i32 23, !dbg !4422
  %12 = load %struct.device_node*, %struct.device_node** %of_node12, align 8, !dbg !4422
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %12, i32 0, i32 3, !dbg !4423
  %13 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4424
  %dev13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 41, !dbg !4425
  %fwnode14 = getelementptr inbounds %struct.device, %struct.device* %dev13, i32 0, i32 24, !dbg !4426
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode14, align 8, !dbg !4427
  br label %if.end15, !dbg !4424

if.end15:                                         ; preds = %if.then, %if.then10, %if.end
  ret void, !dbg !4428
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device_node* @of_pci_find_child_device(%struct.device_node* %parent, i32 %devfn) #0 !dbg !4429 {
entry:
  %retval = alloca %struct.device_node*, align 8
  %parent.addr = alloca %struct.device_node*, align 8
  %devfn.addr = alloca i32, align 4
  %node = alloca %struct.device_node*, align 8
  %node2 = alloca %struct.device_node*, align 8
  store %struct.device_node* %parent, %struct.device_node** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %parent.addr, metadata !4432, metadata !DIExpression()), !dbg !4433
  store i32 %devfn, i32* %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devfn.addr, metadata !4434, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.declare(metadata %struct.device_node** %node, metadata !4436, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.declare(metadata %struct.device_node** %node2, metadata !4438, metadata !DIExpression()), !dbg !4439
  %0 = load %struct.device_node*, %struct.device_node** %parent.addr, align 8, !dbg !4440
  %call = call %struct.device_node* @of_get_next_child(%struct.device_node* %0, %struct.device_node* null) #7, !dbg !4440
  store %struct.device_node* %call, %struct.device_node** %node, align 8, !dbg !4440
  br label %for.cond, !dbg !4440

for.cond:                                         ; preds = %for.inc14, %entry
  %1 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !4442
  %cmp = icmp ne %struct.device_node* %1, null, !dbg !4442
  br i1 %cmp, label %for.body, label %for.end16, !dbg !4440

for.body:                                         ; preds = %for.cond
  %2 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !4444
  %3 = load i32, i32* %devfn.addr, align 4, !dbg !4447
  %call1 = call i32 @__of_pci_pci_compare(%struct.device_node* %2, i32 %3) #7, !dbg !4448
  %tobool = icmp ne i32 %call1, 0, !dbg !4448
  br i1 %tobool, label %if.then, label %if.end, !dbg !4449

if.then:                                          ; preds = %for.body
  %4 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !4450
  store %struct.device_node* %4, %struct.device_node** %retval, align 8, !dbg !4451
  br label %return, !dbg !4451

if.end:                                           ; preds = %for.body
  %5 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !4452
  %call2 = call zeroext i1 @of_node_name_eq(%struct.device_node* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !4454
  br i1 %call2, label %if.then3, label %if.end13, !dbg !4455

if.then3:                                         ; preds = %if.end
  %6 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !4456
  %call4 = call %struct.device_node* @of_get_next_child(%struct.device_node* %6, %struct.device_node* null) #7, !dbg !4456
  store %struct.device_node* %call4, %struct.device_node** %node2, align 8, !dbg !4456
  br label %for.cond5, !dbg !4456

for.cond5:                                        ; preds = %for.inc, %if.then3
  %7 = load %struct.device_node*, %struct.device_node** %node2, align 8, !dbg !4459
  %cmp6 = icmp ne %struct.device_node* %7, null, !dbg !4459
  br i1 %cmp6, label %for.body7, label %for.end, !dbg !4456

for.body7:                                        ; preds = %for.cond5
  %8 = load %struct.device_node*, %struct.device_node** %node2, align 8, !dbg !4461
  %9 = load i32, i32* %devfn.addr, align 4, !dbg !4464
  %call8 = call i32 @__of_pci_pci_compare(%struct.device_node* %8, i32 %9) #7, !dbg !4465
  %tobool9 = icmp ne i32 %call8, 0, !dbg !4465
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4466

if.then10:                                        ; preds = %for.body7
  %10 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !4467
  call void @of_node_put(%struct.device_node* %10) #7, !dbg !4469
  %11 = load %struct.device_node*, %struct.device_node** %node2, align 8, !dbg !4470
  store %struct.device_node* %11, %struct.device_node** %retval, align 8, !dbg !4471
  br label %return, !dbg !4471

if.end11:                                         ; preds = %for.body7
  br label %for.inc, !dbg !4472

for.inc:                                          ; preds = %if.end11
  %12 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !4459
  %13 = load %struct.device_node*, %struct.device_node** %node2, align 8, !dbg !4459
  %call12 = call %struct.device_node* @of_get_next_child(%struct.device_node* %12, %struct.device_node* %13) #7, !dbg !4459
  store %struct.device_node* %call12, %struct.device_node** %node2, align 8, !dbg !4459
  br label %for.cond5, !dbg !4459, !llvm.loop !4473

for.end:                                          ; preds = %for.cond5
  br label %if.end13, !dbg !4475

if.end13:                                         ; preds = %for.end, %if.end
  br label %for.inc14, !dbg !4476

for.inc14:                                        ; preds = %if.end13
  %14 = load %struct.device_node*, %struct.device_node** %parent.addr, align 8, !dbg !4442
  %15 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !4442
  %call15 = call %struct.device_node* @of_get_next_child(%struct.device_node* %14, %struct.device_node* %15) #7, !dbg !4442
  store %struct.device_node* %call15, %struct.device_node** %node, align 8, !dbg !4442
  br label %for.cond, !dbg !4442, !llvm.loop !4477

for.end16:                                        ; preds = %for.cond
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !4479
  br label %return, !dbg !4479

return:                                           ; preds = %for.end16, %if.then10, %if.then
  %16 = load %struct.device_node*, %struct.device_node** %retval, align 8, !dbg !4480
  ret %struct.device_node* %16, !dbg !4480
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_release_of_node(%struct.pci_dev* %dev) #0 !dbg !4481 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4482, metadata !DIExpression()), !dbg !4483
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4484
  %dev1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !4485
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 23, !dbg !4486
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4486
  call void @of_node_put(%struct.device_node* %1) #7, !dbg !4487
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4488
  %dev2 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 41, !dbg !4489
  %of_node3 = getelementptr inbounds %struct.device, %struct.device* %dev2, i32 0, i32 23, !dbg !4490
  store %struct.device_node* null, %struct.device_node** %of_node3, align 8, !dbg !4491
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4492
  %dev4 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 41, !dbg !4493
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev4, i32 0, i32 24, !dbg !4494
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %fwnode, align 8, !dbg !4495
  ret void, !dbg !4496
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !4497 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !4500, metadata !DIExpression()), !dbg !4501
  ret void, !dbg !4502
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_set_bus_of_node(%struct.pci_bus* %bus) #0 !dbg !4503 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  %node = alloca %struct.device_node*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4504, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.declare(metadata %struct.device_node** %node, metadata !4506, metadata !DIExpression()), !dbg !4507
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4508
  %self = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %0, i32 0, i32 4, !dbg !4510
  %1 = load %struct.pci_dev*, %struct.pci_dev** %self, align 8, !dbg !4510
  %cmp = icmp eq %struct.pci_dev* %1, null, !dbg !4511
  br i1 %cmp, label %if.then, label %if.else, !dbg !4512

if.then:                                          ; preds = %entry
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4513
  %call = call %struct.device_node* @pcibios_get_phb_of_node(%struct.pci_bus* %2) #7, !dbg !4515
  store %struct.device_node* %call, %struct.device_node** %node, align 8, !dbg !4516
  br label %if.end6, !dbg !4517

if.else:                                          ; preds = %entry
  %3 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4518
  %self1 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %3, i32 0, i32 4, !dbg !4520
  %4 = load %struct.pci_dev*, %struct.pci_dev** %self1, align 8, !dbg !4520
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 41, !dbg !4521
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !4522
  %5 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4522
  %call2 = call %struct.device_node* @of_node_get(%struct.device_node* %5) #7, !dbg !4523
  store %struct.device_node* %call2, %struct.device_node** %node, align 8, !dbg !4524
  %6 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !4525
  %tobool = icmp ne %struct.device_node* %6, null, !dbg !4525
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4527

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !4528
  %call3 = call zeroext i1 @of_property_read_bool(%struct.device_node* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #7, !dbg !4529
  br i1 %call3, label %if.then4, label %if.end, !dbg !4530

if.then4:                                         ; preds = %land.lhs.true
  %8 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4531
  %self5 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %8, i32 0, i32 4, !dbg !4532
  %9 = load %struct.pci_dev*, %struct.pci_dev** %self5, align 8, !dbg !4532
  %external_facing = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 46, !dbg !4533
  %10 = bitcast [5 x i8]* %external_facing to i40*, !dbg !4533
  %bf.load = load i40, i40* %10, align 1, !dbg !4534
  %bf.clear = and i40 %bf.load, -268435457, !dbg !4534
  %bf.set = or i40 %bf.clear, 268435456, !dbg !4534
  store i40 %bf.set, i40* %10, align 1, !dbg !4534
  br label %if.end, !dbg !4531

if.end:                                           ; preds = %if.then4, %land.lhs.true, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %11 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !4535
  %12 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4536
  %dev7 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %12, i32 0, i32 21, !dbg !4537
  %of_node8 = getelementptr inbounds %struct.device, %struct.device* %dev7, i32 0, i32 23, !dbg !4538
  store %struct.device_node* %11, %struct.device_node** %of_node8, align 8, !dbg !4539
  %13 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4540
  %dev9 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 21, !dbg !4542
  %of_node10 = getelementptr inbounds %struct.device, %struct.device* %dev9, i32 0, i32 23, !dbg !4543
  %14 = load %struct.device_node*, %struct.device_node** %of_node10, align 8, !dbg !4543
  %tobool11 = icmp ne %struct.device_node* %14, null, !dbg !4540
  br i1 %tobool11, label %if.then12, label %if.end17, !dbg !4544

if.then12:                                        ; preds = %if.end6
  %15 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4545
  %dev13 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 21, !dbg !4546
  %of_node14 = getelementptr inbounds %struct.device, %struct.device* %dev13, i32 0, i32 23, !dbg !4547
  %16 = load %struct.device_node*, %struct.device_node** %of_node14, align 8, !dbg !4547
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %16, i32 0, i32 3, !dbg !4548
  %17 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4549
  %dev15 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %17, i32 0, i32 21, !dbg !4550
  %fwnode16 = getelementptr inbounds %struct.device, %struct.device* %dev15, i32 0, i32 24, !dbg !4551
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode16, align 8, !dbg !4552
  br label %if.end17, !dbg !4549

if.end17:                                         ; preds = %if.then12, %if.end6
  ret void, !dbg !4553
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local %struct.device_node* @pcibios_get_phb_of_node(%struct.pci_bus* %bus) #0 !dbg !4554 {
entry:
  %retval = alloca %struct.device_node*, align 8
  %bus.addr = alloca %struct.pci_bus*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4557, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4559, metadata !DIExpression()), !dbg !4562
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4562
  %self = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %0, i32 0, i32 4, !dbg !4562
  %1 = load %struct.pci_dev*, %struct.pci_dev** %self, align 8, !dbg !4562
  %tobool = icmp ne %struct.pci_dev* %1, null, !dbg !4562
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !4562

lor.rhs:                                          ; preds = %entry
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4562
  %parent = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %2, i32 0, i32 1, !dbg !4562
  %3 = load %struct.pci_bus*, %struct.pci_bus** %parent, align 8, !dbg !4562
  %tobool1 = icmp ne %struct.pci_bus* %3, null, !dbg !4562
  br label %lor.end, !dbg !4562

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  %lnot = xor i1 %4, true, !dbg !4562
  %lnot2 = xor i1 %lnot, true, !dbg !4562
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4562
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4562
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !4563
  %tobool3 = icmp ne i32 %5, 0, !dbg !4563
  %lnot4 = xor i1 %tobool3, true, !dbg !4563
  %lnot6 = xor i1 %lnot4, true, !dbg !4563
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4563
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4563
  %tobool8 = icmp ne i64 %conv, 0, !dbg !4563
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4562

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !4563

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !4565

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !4567

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !4565

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 64, i32 2305, i64 12) #8, !dbg !4569, !srcloc !4571
  br label %do.end11, !dbg !4569

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 233) #8, !dbg !4572, !srcloc !4574
  br label %do.body12, !dbg !4565

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !4575

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !4565

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !4565

if.end:                                           ; preds = %do.end14, %lor.end
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !4562
  %tobool15 = icmp ne i32 %6, 0, !dbg !4562
  %lnot16 = xor i1 %tobool15, true, !dbg !4562
  %lnot18 = xor i1 %lnot16, true, !dbg !4562
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !4562
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !4562
  store i64 %conv20, i64* %tmp, align 8, !dbg !4563
  %7 = load i64, i64* %tmp, align 8, !dbg !4562
  %tobool21 = icmp ne i64 %7, 0, !dbg !4577
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4578

if.then22:                                        ; preds = %if.end
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !4579
  br label %return, !dbg !4579

if.end23:                                         ; preds = %if.end
  %8 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4580
  %bridge = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %8, i32 0, i32 20, !dbg !4582
  %9 = load %struct.device*, %struct.device** %bridge, align 8, !dbg !4582
  %of_node = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 23, !dbg !4583
  %10 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4583
  %tobool24 = icmp ne %struct.device_node* %10, null, !dbg !4580
  br i1 %tobool24, label %if.then25, label %if.end28, !dbg !4584

if.then25:                                        ; preds = %if.end23
  %11 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4585
  %bridge26 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %11, i32 0, i32 20, !dbg !4586
  %12 = load %struct.device*, %struct.device** %bridge26, align 8, !dbg !4586
  %of_node27 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 23, !dbg !4587
  %13 = load %struct.device_node*, %struct.device_node** %of_node27, align 8, !dbg !4587
  %call = call %struct.device_node* @of_node_get(%struct.device_node* %13) #7, !dbg !4588
  store %struct.device_node* %call, %struct.device_node** %retval, align 8, !dbg !4589
  br label %return, !dbg !4589

if.end28:                                         ; preds = %if.end23
  %14 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4590
  %bridge29 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %14, i32 0, i32 20, !dbg !4592
  %15 = load %struct.device*, %struct.device** %bridge29, align 8, !dbg !4592
  %parent30 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 1, !dbg !4593
  %16 = load %struct.device*, %struct.device** %parent30, align 8, !dbg !4593
  %tobool31 = icmp ne %struct.device* %16, null, !dbg !4590
  br i1 %tobool31, label %land.lhs.true, label %if.end41, !dbg !4594

land.lhs.true:                                    ; preds = %if.end28
  %17 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4595
  %bridge32 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %17, i32 0, i32 20, !dbg !4596
  %18 = load %struct.device*, %struct.device** %bridge32, align 8, !dbg !4596
  %parent33 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 1, !dbg !4597
  %19 = load %struct.device*, %struct.device** %parent33, align 8, !dbg !4597
  %of_node34 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 23, !dbg !4598
  %20 = load %struct.device_node*, %struct.device_node** %of_node34, align 8, !dbg !4598
  %tobool35 = icmp ne %struct.device_node* %20, null, !dbg !4595
  br i1 %tobool35, label %if.then36, label %if.end41, !dbg !4599

if.then36:                                        ; preds = %land.lhs.true
  %21 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4600
  %bridge37 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %21, i32 0, i32 20, !dbg !4601
  %22 = load %struct.device*, %struct.device** %bridge37, align 8, !dbg !4601
  %parent38 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 1, !dbg !4602
  %23 = load %struct.device*, %struct.device** %parent38, align 8, !dbg !4602
  %of_node39 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 23, !dbg !4603
  %24 = load %struct.device_node*, %struct.device_node** %of_node39, align 8, !dbg !4603
  %call40 = call %struct.device_node* @of_node_get(%struct.device_node* %24) #7, !dbg !4604
  store %struct.device_node* %call40, %struct.device_node** %retval, align 8, !dbg !4605
  br label %return, !dbg !4605

if.end41:                                         ; preds = %land.lhs.true, %if.end28
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !4606
  br label %return, !dbg !4606

return:                                           ; preds = %if.end41, %if.then36, %if.then25, %if.then22
  %25 = load %struct.device_node*, %struct.device_node** %retval, align 8, !dbg !4607
  ret %struct.device_node* %25, !dbg !4607
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @of_node_get(%struct.device_node* %node) #0 !dbg !4608 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !4611, metadata !DIExpression()), !dbg !4612
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4613
  ret %struct.device_node* %0, !dbg !4614
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @of_property_read_bool(%struct.device_node* %np, i8* %propname) #0 !dbg !4615 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %prop = alloca %struct.property*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4620, metadata !DIExpression()), !dbg !4621
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4622, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !4624, metadata !DIExpression()), !dbg !4625
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4626
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !4627
  %call = call %struct.property* @of_find_property(%struct.device_node* %0, i8* %1, i32* null) #7, !dbg !4628
  store %struct.property* %call, %struct.property** %prop, align 8, !dbg !4625
  %2 = load %struct.property*, %struct.property** %prop, align 8, !dbg !4629
  %tobool = icmp ne %struct.property* %2, null, !dbg !4629
  %3 = zext i1 %tobool to i64, !dbg !4629
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !4629
  %tobool1 = icmp ne i32 %cond, 0, !dbg !4629
  ret i1 %tobool1, !dbg !4630
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_release_bus_of_node(%struct.pci_bus* %bus) #0 !dbg !4631 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4632, metadata !DIExpression()), !dbg !4633
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4634
  %dev = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %0, i32 0, i32 21, !dbg !4635
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !4636
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4636
  call void @of_node_put(%struct.device_node* %1) #7, !dbg !4637
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4638
  %dev1 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %2, i32 0, i32 21, !dbg !4639
  %of_node2 = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 23, !dbg !4640
  store %struct.device_node* null, %struct.device_node** %of_node2, align 8, !dbg !4641
  %3 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4642
  %dev3 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %3, i32 0, i32 21, !dbg !4643
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev3, i32 0, i32 24, !dbg !4644
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %fwnode, align 8, !dbg !4645
  ret void, !dbg !4646
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.irq_domain* @pci_host_bridge_of_msi_domain(%struct.pci_bus* %bus) #0 !dbg !4647 {
entry:
  %retval = alloca %struct.irq_domain*, align 8
  %bus.addr = alloca %struct.pci_bus*, align 8
  %d = alloca %struct.irq_domain*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4650, metadata !DIExpression()), !dbg !4651
  call void @llvm.dbg.declare(metadata %struct.irq_domain** %d, metadata !4652, metadata !DIExpression()), !dbg !4653
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4654
  %dev = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %0, i32 0, i32 21, !dbg !4656
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !4657
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4657
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !4654
  br i1 %tobool, label %if.end, label %if.then, !dbg !4658

if.then:                                          ; preds = %entry
  store %struct.irq_domain* null, %struct.irq_domain** %retval, align 8, !dbg !4659
  br label %return, !dbg !4659

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4660
  %dev1 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %2, i32 0, i32 21, !dbg !4661
  %3 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4662
  %dev2 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %3, i32 0, i32 21, !dbg !4663
  %of_node3 = getelementptr inbounds %struct.device, %struct.device* %dev2, i32 0, i32 23, !dbg !4664
  %4 = load %struct.device_node*, %struct.device_node** %of_node3, align 8, !dbg !4664
  %call = call %struct.irq_domain* @of_msi_get_domain(%struct.device* %dev1, %struct.device_node* %4, i32 3) #7, !dbg !4665
  store %struct.irq_domain* %call, %struct.irq_domain** %d, align 8, !dbg !4666
  %5 = load %struct.irq_domain*, %struct.irq_domain** %d, align 8, !dbg !4667
  %tobool4 = icmp ne %struct.irq_domain* %5, null, !dbg !4667
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4669

if.then5:                                         ; preds = %if.end
  %6 = load %struct.irq_domain*, %struct.irq_domain** %d, align 8, !dbg !4670
  store %struct.irq_domain* %6, %struct.irq_domain** %retval, align 8, !dbg !4671
  br label %return, !dbg !4671

if.end6:                                          ; preds = %if.end
  %7 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4672
  %dev7 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %7, i32 0, i32 21, !dbg !4673
  %of_node8 = getelementptr inbounds %struct.device, %struct.device* %dev7, i32 0, i32 23, !dbg !4674
  %8 = load %struct.device_node*, %struct.device_node** %of_node8, align 8, !dbg !4674
  %call9 = call %struct.irq_domain* @irq_find_matching_host(%struct.device_node* %8, i32 3) #7, !dbg !4675
  store %struct.irq_domain* %call9, %struct.irq_domain** %d, align 8, !dbg !4676
  %9 = load %struct.irq_domain*, %struct.irq_domain** %d, align 8, !dbg !4677
  %tobool10 = icmp ne %struct.irq_domain* %9, null, !dbg !4677
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4679

if.then11:                                        ; preds = %if.end6
  %10 = load %struct.irq_domain*, %struct.irq_domain** %d, align 8, !dbg !4680
  store %struct.irq_domain* %10, %struct.irq_domain** %retval, align 8, !dbg !4681
  br label %return, !dbg !4681

if.end12:                                         ; preds = %if.end6
  %11 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4682
  %dev13 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %11, i32 0, i32 21, !dbg !4683
  %of_node14 = getelementptr inbounds %struct.device, %struct.device* %dev13, i32 0, i32 23, !dbg !4684
  %12 = load %struct.device_node*, %struct.device_node** %of_node14, align 8, !dbg !4684
  %call15 = call %struct.irq_domain* @irq_find_host(%struct.device_node* %12) #7, !dbg !4685
  store %struct.irq_domain* %call15, %struct.irq_domain** %retval, align 8, !dbg !4686
  br label %return, !dbg !4686

return:                                           ; preds = %if.end12, %if.then11, %if.then5, %if.then
  %13 = load %struct.irq_domain*, %struct.irq_domain** %retval, align 8, !dbg !4687
  ret %struct.irq_domain* %13, !dbg !4687
}

; Function Attrs: noredzone
declare dso_local %struct.irq_domain* @of_msi_get_domain(%struct.device*, %struct.device_node*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.irq_domain* @irq_find_matching_host(%struct.device_node* %node, i32 %bus_token) #0 !dbg !4688 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  %bus_token.addr = alloca i32, align 4
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !4691, metadata !DIExpression()), !dbg !4692
  store i32 %bus_token, i32* %bus_token.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bus_token.addr, metadata !4693, metadata !DIExpression()), !dbg !4694
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4695
  %call = call %struct.fwnode_handle* @of_node_to_fwnode(%struct.device_node* %0) #7, !dbg !4696
  %1 = load i32, i32* %bus_token.addr, align 4, !dbg !4697
  %call1 = call %struct.irq_domain* @irq_find_matching_fwnode(%struct.fwnode_handle* %call, i32 %1) #7, !dbg !4698
  ret %struct.irq_domain* %call1, !dbg !4699
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.irq_domain* @irq_find_host(%struct.device_node* %node) #0 !dbg !4700 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  %d = alloca %struct.irq_domain*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !4703, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.declare(metadata %struct.irq_domain** %d, metadata !4705, metadata !DIExpression()), !dbg !4706
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4707
  %call = call %struct.irq_domain* @irq_find_matching_host(%struct.device_node* %0, i32 1) #7, !dbg !4708
  store %struct.irq_domain* %call, %struct.irq_domain** %d, align 8, !dbg !4709
  %1 = load %struct.irq_domain*, %struct.irq_domain** %d, align 8, !dbg !4710
  %tobool = icmp ne %struct.irq_domain* %1, null, !dbg !4710
  br i1 %tobool, label %if.end, label %if.then, !dbg !4712

if.then:                                          ; preds = %entry
  %2 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4713
  %call1 = call %struct.irq_domain* @irq_find_matching_host(%struct.device_node* %2, i32 0) #7, !dbg !4714
  store %struct.irq_domain* %call1, %struct.irq_domain** %d, align 8, !dbg !4715
  br label %if.end, !dbg !4716

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.irq_domain*, %struct.irq_domain** %d, align 8, !dbg !4717
  ret %struct.irq_domain* %3, !dbg !4718
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__of_pci_pci_compare(%struct.device_node* %node, i32 %data) #0 !dbg !4719 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.device_node*, align 8
  %data.addr = alloca i32, align 4
  %devfn = alloca i32, align 4
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !4722, metadata !DIExpression()), !dbg !4723
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !4724, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.declare(metadata i32* %devfn, metadata !4726, metadata !DIExpression()), !dbg !4727
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4728
  %call = call i32 @of_pci_get_devfn(%struct.device_node* %0) #7, !dbg !4729
  store i32 %call, i32* %devfn, align 4, !dbg !4730
  %1 = load i32, i32* %devfn, align 4, !dbg !4731
  %cmp = icmp slt i32 %1, 0, !dbg !4733
  br i1 %cmp, label %if.then, label %if.end, !dbg !4734

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4735
  br label %return, !dbg !4735

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %devfn, align 4, !dbg !4736
  %3 = load i32, i32* %data.addr, align 4, !dbg !4737
  %cmp1 = icmp eq i32 %2, %3, !dbg !4738
  %conv = zext i1 %cmp1 to i32, !dbg !4738
  store i32 %conv, i32* %retval, align 4, !dbg !4739
  br label %return, !dbg !4739

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !4740
  ret i32 %4, !dbg !4740
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @of_node_name_eq(%struct.device_node*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_pci_get_devfn(%struct.device_node* %np) #0 !dbg !4741 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %reg = alloca [5 x i32], align 16
  %error = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4744, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.declare(metadata [5 x i32]* %reg, metadata !4746, metadata !DIExpression()), !dbg !4750
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4751, metadata !DIExpression()), !dbg !4752
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4753
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %reg, i64 0, i64 0, !dbg !4754
  %call = call i32 @of_property_read_u32_array(%struct.device_node* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %arraydecay, i64 5) #7, !dbg !4755
  store i32 %call, i32* %error, align 4, !dbg !4756
  %1 = load i32, i32* %error, align 4, !dbg !4757
  %tobool = icmp ne i32 %1, 0, !dbg !4757
  br i1 %tobool, label %if.then, label %if.end, !dbg !4759

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %error, align 4, !dbg !4760
  store i32 %2, i32* %retval, align 4, !dbg !4761
  br label %return, !dbg !4761

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [5 x i32], [5 x i32]* %reg, i64 0, i64 0, !dbg !4762
  %3 = load i32, i32* %arrayidx, align 16, !dbg !4762
  %shr = lshr i32 %3, 8, !dbg !4763
  %and = and i32 %shr, 255, !dbg !4764
  store i32 %and, i32* %retval, align 4, !dbg !4765
  br label %return, !dbg !4765

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !4766
  ret i32 %4, !dbg !4766
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32_array(%struct.device_node* %np, i8* %propname, i32* %out_values, i64 %sz) #0 !dbg !4767 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i32*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4770, metadata !DIExpression()), !dbg !4771
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4772, metadata !DIExpression()), !dbg !4773
  store i32* %out_values, i32** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_values.addr, metadata !4774, metadata !DIExpression()), !dbg !4775
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !4776, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4778, metadata !DIExpression()), !dbg !4779
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4780
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !4781
  %2 = load i32*, i32** %out_values.addr, align 8, !dbg !4782
  %3 = load i64, i64* %sz.addr, align 8, !dbg !4783
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 %3, i64 0) #7, !dbg !4784
  store i32 %call, i32* %ret, align 4, !dbg !4779
  %4 = load i32, i32* %ret, align 4, !dbg !4785
  %cmp = icmp sge i32 %4, 0, !dbg !4787
  br i1 %cmp, label %if.then, label %if.else, !dbg !4788

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4789
  br label %return, !dbg !4789

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !4790
  store i32 %5, i32* %retval, align 4, !dbg !4791
  br label %return, !dbg !4791

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4792
  ret i32 %6, !dbg !4792
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_pci_parse_bus_range(%struct.device_node* %node, %struct.resource* %res) #0 !dbg !4793 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.device_node*, align 8
  %res.addr = alloca %struct.resource*, align 8
  %bus_range = alloca [2 x i32], align 4
  %error = alloca i32, align 4
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !4796, metadata !DIExpression()), !dbg !4797
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !4798, metadata !DIExpression()), !dbg !4799
  call void @llvm.dbg.declare(metadata [2 x i32]* %bus_range, metadata !4800, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4803, metadata !DIExpression()), !dbg !4804
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4805
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %bus_range, i64 0, i64 0, !dbg !4806
  %call = call i32 @of_property_read_u32_array(%struct.device_node* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %arraydecay, i64 2) #7, !dbg !4807
  store i32 %call, i32* %error, align 4, !dbg !4808
  %1 = load i32, i32* %error, align 4, !dbg !4809
  %tobool = icmp ne i32 %1, 0, !dbg !4809
  br i1 %tobool, label %if.then, label %if.end, !dbg !4811

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %error, align 4, !dbg !4812
  store i32 %2, i32* %retval, align 4, !dbg !4813
  br label %return, !dbg !4813

if.end:                                           ; preds = %entry
  %3 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4814
  %name = getelementptr inbounds %struct.device_node, %struct.device_node* %3, i32 0, i32 0, !dbg !4815
  %4 = load i8*, i8** %name, align 8, !dbg !4815
  %5 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4816
  %name1 = getelementptr inbounds %struct.resource, %struct.resource* %5, i32 0, i32 2, !dbg !4817
  store i8* %4, i8** %name1, align 8, !dbg !4818
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %bus_range, i64 0, i64 0, !dbg !4819
  %6 = load i32, i32* %arrayidx, align 4, !dbg !4819
  %conv = zext i32 %6 to i64, !dbg !4819
  %7 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4820
  %start = getelementptr inbounds %struct.resource, %struct.resource* %7, i32 0, i32 0, !dbg !4821
  store i64 %conv, i64* %start, align 8, !dbg !4822
  %arrayidx2 = getelementptr [2 x i32], [2 x i32]* %bus_range, i64 0, i64 1, !dbg !4823
  %8 = load i32, i32* %arrayidx2, align 4, !dbg !4823
  %conv3 = zext i32 %8 to i64, !dbg !4823
  %9 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4824
  %end = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 1, !dbg !4825
  store i64 %conv3, i64* %end, align 8, !dbg !4826
  %10 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4827
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 3, !dbg !4828
  store i64 4096, i64* %flags, align 8, !dbg !4829
  store i32 0, i32* %retval, align 4, !dbg !4830
  br label %return, !dbg !4830

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !4831
  ret i32 %11, !dbg !4831
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_get_pci_domain_nr(%struct.device_node* %node) #0 !dbg !4832 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.device_node*, align 8
  %domain = alloca i32, align 4
  %error = alloca i32, align 4
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !4833, metadata !DIExpression()), !dbg !4834
  call void @llvm.dbg.declare(metadata i32* %domain, metadata !4835, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4837, metadata !DIExpression()), !dbg !4838
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4839
  %call = call i32 @of_property_read_u32(%struct.device_node* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* %domain) #7, !dbg !4840
  store i32 %call, i32* %error, align 4, !dbg !4841
  %1 = load i32, i32* %error, align 4, !dbg !4842
  %tobool = icmp ne i32 %1, 0, !dbg !4842
  br i1 %tobool, label %if.then, label %if.end, !dbg !4844

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %error, align 4, !dbg !4845
  store i32 %2, i32* %retval, align 4, !dbg !4846
  br label %return, !dbg !4846

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %domain, align 4, !dbg !4847
  %conv = trunc i32 %3 to i16, !dbg !4848
  %conv1 = zext i16 %conv to i32, !dbg !4848
  store i32 %conv1, i32* %retval, align 4, !dbg !4849
  br label %return, !dbg !4849

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !4850
  ret i32 %4, !dbg !4850
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32(%struct.device_node* %np, i8* %propname, i32* %out_value) #0 !dbg !4851 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_value.addr = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4854, metadata !DIExpression()), !dbg !4855
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4856, metadata !DIExpression()), !dbg !4857
  store i32* %out_value, i32** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_value.addr, metadata !4858, metadata !DIExpression()), !dbg !4859
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4860
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !4861
  %2 = load i32*, i32** %out_value.addr, align 8, !dbg !4862
  %call = call i32 @of_property_read_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 1) #7, !dbg !4863
  ret i32 %call, !dbg !4864
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @of_pci_check_probe_only() #0 !dbg !4865 {
entry:
  %val = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4866, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4868, metadata !DIExpression()), !dbg !4869
  %0 = load %struct.device_node*, %struct.device_node** @of_chosen, align 8, !dbg !4870
  %call = call i32 @of_property_read_u32(%struct.device_node* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32* %val) #7, !dbg !4871
  store i32 %call, i32* %ret, align 4, !dbg !4872
  %1 = load i32, i32* %ret, align 4, !dbg !4873
  %tobool = icmp ne i32 %1, 0, !dbg !4873
  br i1 %tobool, label %if.then, label %if.end4, !dbg !4875

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !4876
  %cmp = icmp eq i32 %2, -61, !dbg !4879
  br i1 %cmp, label %if.then2, label %lor.lhs.false, !dbg !4880

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i32, i32* %ret, align 4, !dbg !4881
  %cmp1 = icmp eq i32 %3, -75, !dbg !4882
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !4883

if.then2:                                         ; preds = %lor.lhs.false, %if.then
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !4884
  br label %if.end, !dbg !4884

if.end:                                           ; preds = %if.then2, %lor.lhs.false
  br label %return, !dbg !4885

if.end4:                                          ; preds = %entry
  %4 = load i32, i32* %val, align 4, !dbg !4886
  %tobool5 = icmp ne i32 %4, 0, !dbg !4886
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !4888

if.then6:                                         ; preds = %if.end4
  call void @pci_add_flags(i32 4) #7, !dbg !4889
  br label %if.end7, !dbg !4889

if.else:                                          ; preds = %if.end4
  call void @pci_clear_flags(i32 4) #7, !dbg !4890
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %5 = load i32, i32* %val, align 4, !dbg !4891
  %tobool8 = icmp ne i32 %5, 0, !dbg !4891
  %6 = zext i1 %tobool8 to i64, !dbg !4891
  %cond = select i1 %tobool8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), !dbg !4891
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %cond) #9, !dbg !4891
  br label %return, !dbg !4892

return:                                           ; preds = %if.end7, %if.end
  ret void, !dbg !4892
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_add_flags(i32 %flags) #0 !dbg !4893 {
entry:
  %flags.addr = alloca i32, align 4
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4894, metadata !DIExpression()), !dbg !4895
  %0 = load i32, i32* %flags.addr, align 4, !dbg !4896
  %1 = load i32, i32* @pci_flags, align 4, !dbg !4897
  %or = or i32 %1, %0, !dbg !4897
  store i32 %or, i32* @pci_flags, align 4, !dbg !4897
  ret void, !dbg !4898
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_clear_flags(i32 %flags) #0 !dbg !4899 {
entry:
  %flags.addr = alloca i32, align 4
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4900, metadata !DIExpression()), !dbg !4901
  %0 = load i32, i32* %flags.addr, align 4, !dbg !4902
  %neg = xor i32 %0, -1, !dbg !4903
  %1 = load i32, i32* @pci_flags, align 4, !dbg !4904
  %and = and i32 %1, %neg, !dbg !4904
  store i32 %and, i32* @pci_flags, align 4, !dbg !4904
  ret void, !dbg !4905
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_irq_parse_and_map_pci(%struct.pci_dev* %dev, i8 zeroext %slot, i8 zeroext %pin) #0 !dbg !4906 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %slot.addr = alloca i8, align 1
  %pin.addr = alloca i8, align 1
  %oirq = alloca %struct.of_phandle_args, align 8
  %ret = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4909, metadata !DIExpression()), !dbg !4910
  store i8 %slot, i8* %slot.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %slot.addr, metadata !4911, metadata !DIExpression()), !dbg !4912
  store i8 %pin, i8* %pin.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %pin.addr, metadata !4913, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args* %oirq, metadata !4915, metadata !DIExpression()), !dbg !4916
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4917, metadata !DIExpression()), !dbg !4918
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4919
  %call = call i32 @of_irq_parse_pci(%struct.pci_dev* %0, %struct.of_phandle_args* %oirq) #7, !dbg !4920
  store i32 %call, i32* %ret, align 4, !dbg !4921
  %1 = load i32, i32* %ret, align 4, !dbg !4922
  %tobool = icmp ne i32 %1, 0, !dbg !4922
  br i1 %tobool, label %if.then, label %if.end, !dbg !4924

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4925
  br label %return, !dbg !4925

if.end:                                           ; preds = %entry
  %call1 = call i32 @irq_create_of_mapping(%struct.of_phandle_args* %oirq) #7, !dbg !4926
  store i32 %call1, i32* %retval, align 4, !dbg !4927
  br label %return, !dbg !4927

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !4928
  ret i32 %2, !dbg !4928
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_irq_parse_pci(%struct.pci_dev* %pdev, %struct.of_phandle_args* %out_irq) #0 !dbg !2 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %out_irq.addr = alloca %struct.of_phandle_args*, align 8
  %dn = alloca %struct.device_node*, align 8
  %ppnode = alloca %struct.device_node*, align 8
  %ppdev = alloca %struct.pci_dev*, align 8
  %laddr = alloca [3 x i32], align 4
  %pin = alloca i8, align 1
  %rc = alloca i32, align 4
  %__ret_print_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4929, metadata !DIExpression()), !dbg !4930
  store %struct.of_phandle_args* %out_irq, %struct.of_phandle_args** %out_irq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args** %out_irq.addr, metadata !4931, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.declare(metadata %struct.device_node** %dn, metadata !4933, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.declare(metadata %struct.device_node** %ppnode, metadata !4935, metadata !DIExpression()), !dbg !4936
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %ppdev, metadata !4937, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.declare(metadata [3 x i32]* %laddr, metadata !4939, metadata !DIExpression()), !dbg !4941
  call void @llvm.dbg.declare(metadata i8* %pin, metadata !4942, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4944, metadata !DIExpression()), !dbg !4945
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4946
  %call = call %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev* %0) #7, !dbg !4947
  store %struct.device_node* %call, %struct.device_node** %dn, align 8, !dbg !4948
  %1 = load %struct.device_node*, %struct.device_node** %dn, align 8, !dbg !4949
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !4949
  br i1 %tobool, label %if.then, label %if.end4, !dbg !4951

if.then:                                          ; preds = %entry
  %2 = load %struct.device_node*, %struct.device_node** %dn, align 8, !dbg !4952
  %3 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !4954
  %call1 = call i32 @of_irq_parse_one(%struct.device_node* %2, i32 0, %struct.of_phandle_args* %3) #7, !dbg !4955
  store i32 %call1, i32* %rc, align 4, !dbg !4956
  %4 = load i32, i32* %rc, align 4, !dbg !4957
  %tobool2 = icmp ne i32 %4, 0, !dbg !4957
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !4959

if.then3:                                         ; preds = %if.then
  %5 = load i32, i32* %rc, align 4, !dbg !4960
  store i32 %5, i32* %retval, align 4, !dbg !4961
  br label %return, !dbg !4961

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !4962

if.end4:                                          ; preds = %if.end, %entry
  %6 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4963
  %call5 = call i32 @pci_read_config_byte(%struct.pci_dev* %6, i32 61, i8* %pin) #7, !dbg !4964
  store i32 %call5, i32* %rc, align 4, !dbg !4965
  %7 = load i32, i32* %rc, align 4, !dbg !4966
  %cmp = icmp ne i32 %7, 0, !dbg !4968
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !4969

if.then6:                                         ; preds = %if.end4
  br label %err, !dbg !4970

if.end7:                                          ; preds = %if.end4
  %8 = load i8, i8* %pin, align 1, !dbg !4971
  %conv = zext i8 %8 to i32, !dbg !4971
  %cmp8 = icmp eq i32 %conv, 0, !dbg !4973
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !4974

if.then10:                                        ; preds = %if.end7
  store i32 -19, i32* %retval, align 4, !dbg !4975
  br label %return, !dbg !4975

if.end11:                                         ; preds = %if.end7
  br label %for.cond, !dbg !4976

for.cond:                                         ; preds = %if.end25, %if.end11
  %9 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4977
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 1, !dbg !4981
  %10 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4981
  %self = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %10, i32 0, i32 4, !dbg !4982
  %11 = load %struct.pci_dev*, %struct.pci_dev** %self, align 8, !dbg !4982
  store %struct.pci_dev* %11, %struct.pci_dev** %ppdev, align 8, !dbg !4983
  %12 = load %struct.pci_dev*, %struct.pci_dev** %ppdev, align 8, !dbg !4984
  %cmp12 = icmp eq %struct.pci_dev* %12, null, !dbg !4986
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !4987

if.then14:                                        ; preds = %for.cond
  %13 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4988
  %bus15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 1, !dbg !4990
  %14 = load %struct.pci_bus*, %struct.pci_bus** %bus15, align 8, !dbg !4990
  %call16 = call %struct.device_node* @pci_bus_to_OF_node(%struct.pci_bus* %14) #7, !dbg !4991
  store %struct.device_node* %call16, %struct.device_node** %ppnode, align 8, !dbg !4992
  %15 = load %struct.device_node*, %struct.device_node** %ppnode, align 8, !dbg !4993
  %cmp17 = icmp eq %struct.device_node* %15, null, !dbg !4995
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !4996

if.then19:                                        ; preds = %if.then14
  store i32 -22, i32* %rc, align 4, !dbg !4997
  br label %err, !dbg !4999

if.end20:                                         ; preds = %if.then14
  br label %if.end22, !dbg !5000

if.else:                                          ; preds = %for.cond
  %16 = load %struct.pci_dev*, %struct.pci_dev** %ppdev, align 8, !dbg !5001
  %call21 = call %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev* %16) #7, !dbg !5003
  store %struct.device_node* %call21, %struct.device_node** %ppnode, align 8, !dbg !5004
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end20
  %17 = load %struct.device_node*, %struct.device_node** %ppnode, align 8, !dbg !5005
  %tobool23 = icmp ne %struct.device_node* %17, null, !dbg !5005
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !5007

if.then24:                                        ; preds = %if.end22
  br label %for.end, !dbg !5008

if.end25:                                         ; preds = %if.end22
  %18 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5009
  %19 = load i8, i8* %pin, align 1, !dbg !5010
  %call26 = call zeroext i8 @pci_swizzle_interrupt_pin(%struct.pci_dev* %18, i8 zeroext %19) #7, !dbg !5011
  store i8 %call26, i8* %pin, align 1, !dbg !5012
  %20 = load %struct.pci_dev*, %struct.pci_dev** %ppdev, align 8, !dbg !5013
  store %struct.pci_dev* %20, %struct.pci_dev** %pdev.addr, align 8, !dbg !5014
  br label %for.cond, !dbg !5015, !llvm.loop !5016

for.end:                                          ; preds = %if.then24
  %21 = load %struct.device_node*, %struct.device_node** %ppnode, align 8, !dbg !5019
  %22 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !5020
  %np = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %22, i32 0, i32 0, !dbg !5021
  store %struct.device_node* %21, %struct.device_node** %np, align 8, !dbg !5022
  %23 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !5023
  %args_count = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %23, i32 0, i32 1, !dbg !5024
  store i32 1, i32* %args_count, align 8, !dbg !5025
  %24 = load i8, i8* %pin, align 1, !dbg !5026
  %conv27 = zext i8 %24 to i32, !dbg !5026
  %25 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !5027
  %args = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %25, i32 0, i32 2, !dbg !5028
  %arrayidx = getelementptr [16 x i32], [16 x i32]* %args, i64 0, i64 0, !dbg !5027
  store i32 %conv27, i32* %arrayidx, align 4, !dbg !5029
  %26 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5030
  %bus28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 1, !dbg !5030
  %27 = load %struct.pci_bus*, %struct.pci_bus** %bus28, align 8, !dbg !5030
  %number = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %27, i32 0, i32 13, !dbg !5030
  %28 = load i8, i8* %number, align 8, !dbg !5030
  %conv29 = zext i8 %28 to i32, !dbg !5030
  %shl = shl i32 %conv29, 16, !dbg !5030
  %29 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5030
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 6, !dbg !5030
  %30 = load i32, i32* %devfn, align 8, !dbg !5030
  %shl30 = shl i32 %30, 8, !dbg !5030
  %or = or i32 %shl, %shl30, !dbg !5030
  %31 = call i1 @llvm.is.constant.i32(i32 %or), !dbg !5030
  br i1 %31, label %cond.true, label %cond.false, !dbg !5030

cond.true:                                        ; preds = %for.end
  %32 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5030
  %bus31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 1, !dbg !5030
  %33 = load %struct.pci_bus*, %struct.pci_bus** %bus31, align 8, !dbg !5030
  %number32 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %33, i32 0, i32 13, !dbg !5030
  %34 = load i8, i8* %number32, align 8, !dbg !5030
  %conv33 = zext i8 %34 to i32, !dbg !5030
  %shl34 = shl i32 %conv33, 16, !dbg !5030
  %35 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5030
  %devfn35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 6, !dbg !5030
  %36 = load i32, i32* %devfn35, align 8, !dbg !5030
  %shl36 = shl i32 %36, 8, !dbg !5030
  %or37 = or i32 %shl34, %shl36, !dbg !5030
  %and = and i32 %or37, 255, !dbg !5030
  %shl38 = shl i32 %and, 24, !dbg !5030
  %37 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5030
  %bus39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 1, !dbg !5030
  %38 = load %struct.pci_bus*, %struct.pci_bus** %bus39, align 8, !dbg !5030
  %number40 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %38, i32 0, i32 13, !dbg !5030
  %39 = load i8, i8* %number40, align 8, !dbg !5030
  %conv41 = zext i8 %39 to i32, !dbg !5030
  %shl42 = shl i32 %conv41, 16, !dbg !5030
  %40 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5030
  %devfn43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 6, !dbg !5030
  %41 = load i32, i32* %devfn43, align 8, !dbg !5030
  %shl44 = shl i32 %41, 8, !dbg !5030
  %or45 = or i32 %shl42, %shl44, !dbg !5030
  %and46 = and i32 %or45, 65280, !dbg !5030
  %shl47 = shl i32 %and46, 8, !dbg !5030
  %or48 = or i32 %shl38, %shl47, !dbg !5030
  %42 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5030
  %bus49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 1, !dbg !5030
  %43 = load %struct.pci_bus*, %struct.pci_bus** %bus49, align 8, !dbg !5030
  %number50 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %43, i32 0, i32 13, !dbg !5030
  %44 = load i8, i8* %number50, align 8, !dbg !5030
  %conv51 = zext i8 %44 to i32, !dbg !5030
  %shl52 = shl i32 %conv51, 16, !dbg !5030
  %45 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5030
  %devfn53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 6, !dbg !5030
  %46 = load i32, i32* %devfn53, align 8, !dbg !5030
  %shl54 = shl i32 %46, 8, !dbg !5030
  %or55 = or i32 %shl52, %shl54, !dbg !5030
  %and56 = and i32 %or55, 16711680, !dbg !5030
  %shr = lshr i32 %and56, 8, !dbg !5030
  %or57 = or i32 %or48, %shr, !dbg !5030
  %47 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5030
  %bus58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 1, !dbg !5030
  %48 = load %struct.pci_bus*, %struct.pci_bus** %bus58, align 8, !dbg !5030
  %number59 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %48, i32 0, i32 13, !dbg !5030
  %49 = load i8, i8* %number59, align 8, !dbg !5030
  %conv60 = zext i8 %49 to i32, !dbg !5030
  %shl61 = shl i32 %conv60, 16, !dbg !5030
  %50 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5030
  %devfn62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 6, !dbg !5030
  %51 = load i32, i32* %devfn62, align 8, !dbg !5030
  %shl63 = shl i32 %51, 8, !dbg !5030
  %or64 = or i32 %shl61, %shl63, !dbg !5030
  %and65 = and i32 %or64, -16777216, !dbg !5030
  %shr66 = lshr i32 %and65, 24, !dbg !5030
  %or67 = or i32 %or57, %shr66, !dbg !5030
  br label %cond.end, !dbg !5030

cond.false:                                       ; preds = %for.end
  %52 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5030
  %bus68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 1, !dbg !5030
  %53 = load %struct.pci_bus*, %struct.pci_bus** %bus68, align 8, !dbg !5030
  %number69 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %53, i32 0, i32 13, !dbg !5030
  %54 = load i8, i8* %number69, align 8, !dbg !5030
  %conv70 = zext i8 %54 to i32, !dbg !5030
  %shl71 = shl i32 %conv70, 16, !dbg !5030
  %55 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5030
  %devfn72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 6, !dbg !5030
  %56 = load i32, i32* %devfn72, align 8, !dbg !5030
  %shl73 = shl i32 %56, 8, !dbg !5030
  %or74 = or i32 %shl71, %shl73, !dbg !5030
  %call75 = call i32 @__fswab32(i32 %or74) #10, !dbg !5030
  br label %cond.end, !dbg !5030

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or67, %cond.true ], [ %call75, %cond.false ], !dbg !5030
  %arrayidx76 = getelementptr [3 x i32], [3 x i32]* %laddr, i64 0, i64 0, !dbg !5031
  store i32 %cond, i32* %arrayidx76, align 4, !dbg !5032
  %arrayidx77 = getelementptr [3 x i32], [3 x i32]* %laddr, i64 0, i64 2, !dbg !5033
  store i32 0, i32* %arrayidx77, align 4, !dbg !5034
  %arrayidx78 = getelementptr [3 x i32], [3 x i32]* %laddr, i64 0, i64 1, !dbg !5035
  store i32 0, i32* %arrayidx78, align 4, !dbg !5036
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %laddr, i64 0, i64 0, !dbg !5037
  %57 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !5038
  %call79 = call i32 @of_irq_parse_raw(i32* %arraydecay, %struct.of_phandle_args* %57) #7, !dbg !5039
  store i32 %call79, i32* %rc, align 4, !dbg !5040
  %58 = load i32, i32* %rc, align 4, !dbg !5041
  %tobool80 = icmp ne i32 %58, 0, !dbg !5041
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !5043

if.then81:                                        ; preds = %cond.end
  br label %err, !dbg !5044

if.end82:                                         ; preds = %cond.end
  store i32 0, i32* %retval, align 4, !dbg !5045
  br label %return, !dbg !5045

err:                                              ; preds = %if.then81, %if.then19, %if.then6
  call void @llvm.dbg.label(metadata !5046), !dbg !5047
  %59 = load i32, i32* %rc, align 4, !dbg !5048
  %cmp83 = icmp eq i32 %59, -2, !dbg !5050
  br i1 %cmp83, label %if.then85, label %if.else95, !dbg !5051

if.then85:                                        ; preds = %err
  %60 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5052
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 41, !dbg !5052
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.of_irq_parse_pci, i64 0, i64 0)) #9, !dbg !5052
  call void @llvm.dbg.declare(metadata i8* %__ret_print_once, metadata !5054, metadata !DIExpression()), !dbg !5056
  %61 = load i8, i8* @of_irq_parse_pci.__print_once, align 1, !dbg !5056
  %tobool86 = trunc i8 %61 to i1, !dbg !5056
  %lnot = xor i1 %tobool86, true, !dbg !5056
  %frombool = zext i1 %lnot to i8, !dbg !5056
  store i8 %frombool, i8* %__ret_print_once, align 1, !dbg !5056
  %62 = load i8, i8* @of_irq_parse_pci.__print_once, align 1, !dbg !5057
  %tobool87 = trunc i8 %62 to i1, !dbg !5057
  br i1 %tobool87, label %if.end90, label %if.then88, !dbg !5056

if.then88:                                        ; preds = %if.then85
  store i8 1, i8* @of_irq_parse_pci.__print_once, align 1, !dbg !5059
  %call89 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.of_irq_parse_pci, i64 0, i64 0)) #9, !dbg !5059
  br label %if.end90, !dbg !5059

if.end90:                                         ; preds = %if.then88, %if.then85
  %63 = load i8, i8* %__ret_print_once, align 1, !dbg !5056
  %tobool91 = trunc i8 %63 to i1, !dbg !5056
  %lnot92 = xor i1 %tobool91, true, !dbg !5056
  %lnot93 = xor i1 %lnot92, true, !dbg !5056
  %lnot.ext = zext i1 %lnot93 to i32, !dbg !5056
  %conv94 = sext i32 %lnot.ext to i64, !dbg !5056
  store i64 %conv94, i64* %tmp, align 8, !dbg !5057
  %64 = load i64, i64* %tmp, align 8, !dbg !5056
  br label %if.end97, !dbg !5061

if.else95:                                        ; preds = %err
  %65 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5062
  %dev96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 41, !dbg !5062
  %66 = load i32, i32* %rc, align 4, !dbg !5062
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.of_irq_parse_pci, i64 0, i64 0), i32 %66) #9, !dbg !5062
  br label %if.end97

if.end97:                                         ; preds = %if.else95, %if.end90
  %67 = load i32, i32* %rc, align 4, !dbg !5064
  store i32 %67, i32* %retval, align 4, !dbg !5065
  br label %return, !dbg !5065

return:                                           ; preds = %if.end97, %if.end82, %if.then10, %if.then3
  %68 = load i32, i32* %retval, align 4, !dbg !5066
  ret i32 %68, !dbg !5066
}

; Function Attrs: noredzone
declare dso_local i32 @irq_create_of_mapping(%struct.of_phandle_args*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @devm_of_pci_bridge_init(%struct.device* %dev, %struct.pci_host_bridge* %bridge) #0 !dbg !5067 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %bridge.addr = alloca %struct.pci_host_bridge*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5111, metadata !DIExpression()), !dbg !5112
  store %struct.pci_host_bridge* %bridge, %struct.pci_host_bridge** %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_host_bridge** %bridge.addr, metadata !5113, metadata !DIExpression()), !dbg !5114
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5115
  %of_node = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 23, !dbg !5117
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !5117
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !5115
  br i1 %tobool, label %if.end, label %if.then, !dbg !5118

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5119
  br label %return, !dbg !5119

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %bridge.addr, align 8, !dbg !5120
  %swizzle_irq = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %2, i32 0, i32 8, !dbg !5121
  store i8 (%struct.pci_dev*, i8*)* @pci_common_swizzle, i8 (%struct.pci_dev*, i8*)** %swizzle_irq, align 64, !dbg !5122
  %3 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %bridge.addr, align 8, !dbg !5123
  %map_irq = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %3, i32 0, i32 9, !dbg !5124
  store i32 (%struct.pci_dev*, i8, i8)* @of_irq_parse_and_map_pci, i32 (%struct.pci_dev*, i8, i8)** %map_irq, align 8, !dbg !5125
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5126
  %5 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %bridge.addr, align 8, !dbg !5127
  %call = call i32 @pci_parse_request_of_pci_ranges(%struct.device* %4, %struct.pci_host_bridge* %5) #7, !dbg !5128
  store i32 %call, i32* %retval, align 4, !dbg !5129
  br label %return, !dbg !5129

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !5130
  ret i32 %6, !dbg !5130
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @pci_common_swizzle(%struct.pci_dev*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_parse_request_of_pci_ranges(%struct.device* %dev, %struct.pci_host_bridge* %bridge) #0 !dbg !5131 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %bridge.addr = alloca %struct.pci_host_bridge*, align 8
  %err = alloca i32, align 4
  %res_valid = alloca i32, align 4
  %iobase = alloca i64, align 8
  %win = alloca %struct.resource_entry*, align 8
  %tmp = alloca %struct.resource_entry*, align 8
  %__mptr = alloca i8*, align 8
  %tmp9 = alloca %struct.resource_entry*, align 8
  %__mptr10 = alloca i8*, align 8
  %tmp14 = alloca %struct.resource_entry*, align 8
  %res = alloca %struct.resource*, align 8
  %__mptr27 = alloca i8*, align 8
  %tmp32 = alloca %struct.resource_entry*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5132, metadata !DIExpression()), !dbg !5133
  store %struct.pci_host_bridge* %bridge, %struct.pci_host_bridge** %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_host_bridge** %bridge.addr, metadata !5134, metadata !DIExpression()), !dbg !5135
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5136, metadata !DIExpression()), !dbg !5137
  call void @llvm.dbg.declare(metadata i32* %res_valid, metadata !5138, metadata !DIExpression()), !dbg !5139
  store i32 0, i32* %res_valid, align 4, !dbg !5139
  call void @llvm.dbg.declare(metadata i64* %iobase, metadata !5140, metadata !DIExpression()), !dbg !5141
  call void @llvm.dbg.declare(metadata %struct.resource_entry** %win, metadata !5142, metadata !DIExpression()), !dbg !5143
  call void @llvm.dbg.declare(metadata %struct.resource_entry** %tmp, metadata !5144, metadata !DIExpression()), !dbg !5145
  %0 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %bridge.addr, align 8, !dbg !5146
  %windows = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %0, i32 0, i32 6, !dbg !5147
  call void @INIT_LIST_HEAD(%struct.list_head* %windows) #7, !dbg !5148
  %1 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %bridge.addr, align 8, !dbg !5149
  %dma_ranges = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %1, i32 0, i32 7, !dbg !5150
  call void @INIT_LIST_HEAD(%struct.list_head* %dma_ranges) #7, !dbg !5151
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5152
  %3 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %bridge.addr, align 8, !dbg !5153
  %windows1 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %3, i32 0, i32 6, !dbg !5154
  %4 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %bridge.addr, align 8, !dbg !5155
  %dma_ranges2 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %4, i32 0, i32 7, !dbg !5156
  %call = call i32 @devm_of_pci_get_host_bridge_resources(%struct.device* %2, i8 zeroext 0, i8 zeroext -1, %struct.list_head* %windows1, %struct.list_head* %dma_ranges2, i64* %iobase) #7, !dbg !5157
  store i32 %call, i32* %err, align 4, !dbg !5158
  %5 = load i32, i32* %err, align 4, !dbg !5159
  %tobool = icmp ne i32 %5, 0, !dbg !5159
  br i1 %tobool, label %if.then, label %if.end, !dbg !5161

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %err, align 4, !dbg !5162
  store i32 %6, i32* %retval, align 4, !dbg !5163
  br label %return, !dbg !5163

if.end:                                           ; preds = %entry
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5164
  %8 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %bridge.addr, align 8, !dbg !5165
  %windows3 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %8, i32 0, i32 6, !dbg !5166
  %call4 = call i32 @devm_request_pci_bus_resources(%struct.device* %7, %struct.list_head* %windows3) #7, !dbg !5167
  store i32 %call4, i32* %err, align 4, !dbg !5168
  %9 = load i32, i32* %err, align 4, !dbg !5169
  %tobool5 = icmp ne i32 %9, 0, !dbg !5169
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5171

if.then6:                                         ; preds = %if.end
  %10 = load i32, i32* %err, align 4, !dbg !5172
  store i32 %10, i32* %retval, align 4, !dbg !5173
  br label %return, !dbg !5173

if.end7:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5174, metadata !DIExpression()), !dbg !5177
  %11 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %bridge.addr, align 8, !dbg !5177
  %windows8 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %11, i32 0, i32 6, !dbg !5177
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %windows8, i32 0, i32 0, !dbg !5177
  %12 = load %struct.list_head*, %struct.list_head** %next, align 32, !dbg !5177
  %13 = bitcast %struct.list_head* %12 to i8*, !dbg !5177
  store i8* %13, i8** %__mptr, align 8, !dbg !5177
  br label %do.body, !dbg !5177

do.body:                                          ; preds = %if.end7
  br label %do.end, !dbg !5178

do.end:                                           ; preds = %do.body
  %14 = load i8*, i8** %__mptr, align 8, !dbg !5177
  %add.ptr = getelementptr i8, i8* %14, i64 0, !dbg !5177
  %15 = bitcast i8* %add.ptr to %struct.resource_entry*, !dbg !5177
  store %struct.resource_entry* %15, %struct.resource_entry** %tmp9, align 8, !dbg !5178
  %16 = load %struct.resource_entry*, %struct.resource_entry** %tmp9, align 8, !dbg !5177
  store %struct.resource_entry* %16, %struct.resource_entry** %win, align 8, !dbg !5180
  call void @llvm.dbg.declare(metadata i8** %__mptr10, metadata !5181, metadata !DIExpression()), !dbg !5183
  %17 = load %struct.resource_entry*, %struct.resource_entry** %win, align 8, !dbg !5183
  %node = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %17, i32 0, i32 0, !dbg !5183
  %next11 = getelementptr inbounds %struct.list_head, %struct.list_head* %node, i32 0, i32 0, !dbg !5183
  %18 = load %struct.list_head*, %struct.list_head** %next11, align 8, !dbg !5183
  %19 = bitcast %struct.list_head* %18 to i8*, !dbg !5183
  store i8* %19, i8** %__mptr10, align 8, !dbg !5183
  br label %do.body12, !dbg !5183

do.body12:                                        ; preds = %do.end
  br label %do.end13, !dbg !5184

do.end13:                                         ; preds = %do.body12
  %20 = load i8*, i8** %__mptr10, align 8, !dbg !5183
  %add.ptr15 = getelementptr i8, i8* %20, i64 0, !dbg !5183
  %21 = bitcast i8* %add.ptr15 to %struct.resource_entry*, !dbg !5183
  store %struct.resource_entry* %21, %struct.resource_entry** %tmp14, align 8, !dbg !5184
  %22 = load %struct.resource_entry*, %struct.resource_entry** %tmp14, align 8, !dbg !5183
  store %struct.resource_entry* %22, %struct.resource_entry** %tmp, align 8, !dbg !5180
  br label %for.cond, !dbg !5180

for.cond:                                         ; preds = %do.end31, %do.end13
  %23 = load %struct.resource_entry*, %struct.resource_entry** %win, align 8, !dbg !5186
  %node16 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %23, i32 0, i32 0, !dbg !5186
  %24 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %bridge.addr, align 8, !dbg !5186
  %windows17 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %24, i32 0, i32 6, !dbg !5186
  %cmp = icmp eq %struct.list_head* %node16, %windows17, !dbg !5186
  %lnot = xor i1 %cmp, true, !dbg !5186
  br i1 %lnot, label %for.body, label %for.end, !dbg !5180

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !5188, metadata !DIExpression()), !dbg !5190
  %25 = load %struct.resource_entry*, %struct.resource_entry** %win, align 8, !dbg !5191
  %res18 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %25, i32 0, i32 1, !dbg !5192
  %26 = load %struct.resource*, %struct.resource** %res18, align 8, !dbg !5192
  store %struct.resource* %26, %struct.resource** %res, align 8, !dbg !5190
  %27 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5193
  %call19 = call i64 @resource_type(%struct.resource* %27) #7, !dbg !5194
  switch i64 %call19, label %sw.epilog [
    i64 256, label %sw.bb
    i64 512, label %sw.bb24
  ], !dbg !5195

sw.bb:                                            ; preds = %for.body
  %28 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5196
  %29 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5198
  %30 = load i64, i64* %iobase, align 8, !dbg !5199
  %call20 = call i32 @devm_pci_remap_iospace(%struct.device* %28, %struct.resource* %29, i64 %30) #7, !dbg !5200
  store i32 %call20, i32* %err, align 4, !dbg !5201
  %31 = load i32, i32* %err, align 4, !dbg !5202
  %tobool21 = icmp ne i32 %31, 0, !dbg !5202
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !5204

if.then22:                                        ; preds = %sw.bb
  %32 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5205
  %33 = load i32, i32* %err, align 4, !dbg !5205
  %34 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5205
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i32 %33, %struct.resource* %34) #9, !dbg !5205
  %35 = load %struct.resource_entry*, %struct.resource_entry** %win, align 8, !dbg !5207
  call void @resource_list_destroy_entry(%struct.resource_entry* %35) #7, !dbg !5208
  br label %if.end23, !dbg !5209

if.end23:                                         ; preds = %if.then22, %sw.bb
  br label %sw.epilog, !dbg !5210

sw.bb24:                                          ; preds = %for.body
  %36 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5211
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 3, !dbg !5212
  %37 = load i64, i64* %flags, align 8, !dbg !5212
  %and = and i64 %37, 8192, !dbg !5213
  %tobool25 = icmp ne i64 %and, 0, !dbg !5214
  %lnot26 = xor i1 %tobool25, true, !dbg !5214
  %lnot.ext = zext i1 %lnot26 to i32, !dbg !5214
  %38 = load i32, i32* %res_valid, align 4, !dbg !5215
  %or = or i32 %38, %lnot.ext, !dbg !5215
  store i32 %or, i32* %res_valid, align 4, !dbg !5215
  br label %sw.epilog, !dbg !5216

sw.epilog:                                        ; preds = %for.body, %sw.bb24, %if.end23
  br label %for.inc, !dbg !5217

for.inc:                                          ; preds = %sw.epilog
  %39 = load %struct.resource_entry*, %struct.resource_entry** %tmp, align 8, !dbg !5186
  store %struct.resource_entry* %39, %struct.resource_entry** %win, align 8, !dbg !5186
  call void @llvm.dbg.declare(metadata i8** %__mptr27, metadata !5218, metadata !DIExpression()), !dbg !5220
  %40 = load %struct.resource_entry*, %struct.resource_entry** %tmp, align 8, !dbg !5220
  %node28 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %40, i32 0, i32 0, !dbg !5220
  %next29 = getelementptr inbounds %struct.list_head, %struct.list_head* %node28, i32 0, i32 0, !dbg !5220
  %41 = load %struct.list_head*, %struct.list_head** %next29, align 8, !dbg !5220
  %42 = bitcast %struct.list_head* %41 to i8*, !dbg !5220
  store i8* %42, i8** %__mptr27, align 8, !dbg !5220
  br label %do.body30, !dbg !5220

do.body30:                                        ; preds = %for.inc
  br label %do.end31, !dbg !5221

do.end31:                                         ; preds = %do.body30
  %43 = load i8*, i8** %__mptr27, align 8, !dbg !5220
  %add.ptr33 = getelementptr i8, i8* %43, i64 0, !dbg !5220
  %44 = bitcast i8* %add.ptr33 to %struct.resource_entry*, !dbg !5220
  store %struct.resource_entry* %44, %struct.resource_entry** %tmp32, align 8, !dbg !5221
  %45 = load %struct.resource_entry*, %struct.resource_entry** %tmp32, align 8, !dbg !5220
  store %struct.resource_entry* %45, %struct.resource_entry** %tmp, align 8, !dbg !5186
  br label %for.cond, !dbg !5186, !llvm.loop !5223

for.end:                                          ; preds = %for.cond
  %46 = load i32, i32* %res_valid, align 4, !dbg !5225
  %tobool34 = icmp ne i32 %46, 0, !dbg !5225
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !5227

if.then35:                                        ; preds = %for.end
  %47 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5228
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !5228
  br label %if.end36, !dbg !5228

if.end36:                                         ; preds = %if.then35, %for.end
  store i32 0, i32* %retval, align 4, !dbg !5229
  br label %return, !dbg !5229

return:                                           ; preds = %if.end36, %if.then6, %if.then
  %48 = load i32, i32* %retval, align 4, !dbg !5230
  ret i32 %48, !dbg !5230
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_pci_get_max_link_speed(%struct.device_node* %node) #0 !dbg !5231 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.device_node*, align 8
  %max_link_speed = alloca i32, align 4
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !5232, metadata !DIExpression()), !dbg !5233
  call void @llvm.dbg.declare(metadata i32* %max_link_speed, metadata !5234, metadata !DIExpression()), !dbg !5235
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !5236
  %call = call i32 @of_property_read_u32(%struct.device_node* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32* %max_link_speed) #7, !dbg !5238
  %tobool = icmp ne i32 %call, 0, !dbg !5238
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !5239

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %max_link_speed, align 4, !dbg !5240
  %cmp = icmp eq i32 %1, 0, !dbg !5241
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !5242

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %max_link_speed, align 4, !dbg !5243
  %cmp2 = icmp ugt i32 %2, 4, !dbg !5244
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5245

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5246
  br label %return, !dbg !5246

if.end:                                           ; preds = %lor.lhs.false1
  %3 = load i32, i32* %max_link_speed, align 4, !dbg !5247
  store i32 %3, i32* %retval, align 4, !dbg !5248
  br label %return, !dbg !5248

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !5249
  ret i32 %4, !dbg !5249
}

; Function Attrs: noredzone
declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.irq_domain* @irq_find_matching_fwnode(%struct.fwnode_handle* %fwnode, i32 %bus_token) #0 !dbg !5250 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %bus_token.addr = alloca i32, align 4
  %fwspec = alloca %struct.irq_fwspec, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !5253, metadata !DIExpression()), !dbg !5254
  store i32 %bus_token, i32* %bus_token.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bus_token.addr, metadata !5255, metadata !DIExpression()), !dbg !5256
  call void @llvm.dbg.declare(metadata %struct.irq_fwspec* %fwspec, metadata !5257, metadata !DIExpression()), !dbg !5258
  %0 = bitcast %struct.irq_fwspec* %fwspec to i8*, !dbg !5258
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 80, i1 false), !dbg !5258
  %fwnode1 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i32 0, i32 0, !dbg !5259
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !5260
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %fwnode1, align 8, !dbg !5259
  %2 = load i32, i32* %bus_token.addr, align 4, !dbg !5261
  %call = call %struct.irq_domain* @irq_find_matching_fwspec(%struct.irq_fwspec* %fwspec, i32 %2) #7, !dbg !5262
  ret %struct.irq_domain* %call, !dbg !5263
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @of_node_to_fwnode(%struct.device_node* %node) #0 !dbg !5264 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !5267, metadata !DIExpression()), !dbg !5268
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !5269
  %tobool = icmp ne %struct.device_node* %0, null, !dbg !5269
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5269

cond.true:                                        ; preds = %entry
  %1 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !5270
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %1, i32 0, i32 3, !dbg !5271
  br label %cond.end, !dbg !5269

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5269

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.fwnode_handle* [ %fwnode, %cond.true ], [ null, %cond.false ], !dbg !5269
  ret %struct.fwnode_handle* %cond, !dbg !5272
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local %struct.irq_domain* @irq_find_matching_fwspec(%struct.irq_fwspec*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node*, i8*, i32*, i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev* %pdev) #0 !dbg !5273 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5276, metadata !DIExpression()), !dbg !5277
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5278
  %tobool = icmp ne %struct.pci_dev* %0, null, !dbg !5278
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5278

cond.true:                                        ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5279
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 41, !dbg !5280
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !5281
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !5281
  br label %cond.end, !dbg !5278

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5278

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.device_node* [ %2, %cond.true ], [ null, %cond.false ], !dbg !5278
  ret %struct.device_node* %cond, !dbg !5282
}

; Function Attrs: noredzone
declare dso_local i32 @of_irq_parse_one(%struct.device_node*, i32, %struct.of_phandle_args*) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @pci_bus_to_OF_node(%struct.pci_bus* %bus) #0 !dbg !5283 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !5284, metadata !DIExpression()), !dbg !5285
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !5286
  %tobool = icmp ne %struct.pci_bus* %0, null, !dbg !5286
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5286

cond.true:                                        ; preds = %entry
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !5287
  %dev = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %1, i32 0, i32 21, !dbg !5288
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !5289
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !5289
  br label %cond.end, !dbg !5286

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5286

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.device_node* [ %2, %cond.true ], [ null, %cond.false ], !dbg !5286
  ret %struct.device_node* %cond, !dbg !5290
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @pci_swizzle_interrupt_pin(%struct.pci_dev*, i8 zeroext) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #6 !dbg !5291 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5295, metadata !DIExpression()), !dbg !5296
  %0 = load i32, i32* %val.addr, align 4, !dbg !5297
  %call = call i32 @__arch_swab32(i32 %0) #10, !dbg !5298
  ret i32 %call, !dbg !5299
}

; Function Attrs: noredzone
declare dso_local i32 @of_irq_parse_raw(i32*, %struct.of_phandle_args*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #6 !dbg !5300 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5302, metadata !DIExpression()), !dbg !5303
  %0 = load i32, i32* %val.addr, align 4, !dbg !5304
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #11, !dbg !5305, !srcloc !5306
  store i32 %1, i32* %val.addr, align 4, !dbg !5305
  %2 = load i32, i32* %val.addr, align 4, !dbg !5307
  ret i32 %2, !dbg !5308
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !5309 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5313, metadata !DIExpression()), !dbg !5314
  br label %do.body, !dbg !5315

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5316

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5318

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5316

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5320
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5320
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5320
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !5320
  br label %do.end3, !dbg !5320

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5316

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5322
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5323
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !5324
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !5325
  ret void, !dbg !5326
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_of_pci_get_host_bridge_resources(%struct.device* %dev, i8 zeroext %busno, i8 zeroext %bus_max, %struct.list_head* %resources, %struct.list_head* %ib_resources, i64* %io_base) #0 !dbg !5327 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %busno.addr = alloca i8, align 1
  %bus_max.addr = alloca i8, align 1
  %resources.addr = alloca %struct.list_head*, align 8
  %ib_resources.addr = alloca %struct.list_head*, align 8
  %io_base.addr = alloca i64*, align 8
  %dev_node = alloca %struct.device_node*, align 8
  %res = alloca %struct.resource*, align 8
  %tmp_res = alloca %struct.resource, align 8
  %bus_range = alloca %struct.resource*, align 8
  %range = alloca %struct.of_pci_range, align 8
  %parser = alloca %struct.of_pci_range_parser, align 8
  %range_type = alloca i8*, align 8
  %err = alloca i32, align 4
  %entry83 = alloca %struct.resource_entry*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.resource_entry*, align 8
  %__mptr123 = alloca i8*, align 8
  %tmp128 = alloca %struct.resource_entry*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5331, metadata !DIExpression()), !dbg !5332
  store i8 %busno, i8* %busno.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %busno.addr, metadata !5333, metadata !DIExpression()), !dbg !5334
  store i8 %bus_max, i8* %bus_max.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %bus_max.addr, metadata !5335, metadata !DIExpression()), !dbg !5336
  store %struct.list_head* %resources, %struct.list_head** %resources.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %resources.addr, metadata !5337, metadata !DIExpression()), !dbg !5338
  store %struct.list_head* %ib_resources, %struct.list_head** %ib_resources.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %ib_resources.addr, metadata !5339, metadata !DIExpression()), !dbg !5340
  store i64* %io_base, i64** %io_base.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %io_base.addr, metadata !5341, metadata !DIExpression()), !dbg !5342
  call void @llvm.dbg.declare(metadata %struct.device_node** %dev_node, metadata !5343, metadata !DIExpression()), !dbg !5344
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5345
  %of_node = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 23, !dbg !5346
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !5346
  store %struct.device_node* %1, %struct.device_node** %dev_node, align 8, !dbg !5344
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !5347, metadata !DIExpression()), !dbg !5348
  call void @llvm.dbg.declare(metadata %struct.resource* %tmp_res, metadata !5349, metadata !DIExpression()), !dbg !5350
  call void @llvm.dbg.declare(metadata %struct.resource** %bus_range, metadata !5351, metadata !DIExpression()), !dbg !5352
  call void @llvm.dbg.declare(metadata %struct.of_pci_range* %range, metadata !5353, metadata !DIExpression()), !dbg !5365
  call void @llvm.dbg.declare(metadata %struct.of_pci_range_parser* %parser, metadata !5366, metadata !DIExpression()), !dbg !5381
  call void @llvm.dbg.declare(metadata i8** %range_type, metadata !5382, metadata !DIExpression()), !dbg !5383
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5384, metadata !DIExpression()), !dbg !5385
  %2 = load i64*, i64** %io_base.addr, align 8, !dbg !5386
  %tobool = icmp ne i64* %2, null, !dbg !5386
  br i1 %tobool, label %if.then, label %if.end, !dbg !5388

if.then:                                          ; preds = %entry
  %3 = load i64*, i64** %io_base.addr, align 8, !dbg !5389
  store i64 -1, i64* %3, align 8, !dbg !5390
  br label %if.end, !dbg !5391

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5392
  %call = call i8* @devm_kzalloc(%struct.device* %4, i64 64, i32 3264) #7, !dbg !5393
  %5 = bitcast i8* %call to %struct.resource*, !dbg !5393
  store %struct.resource* %5, %struct.resource** %bus_range, align 8, !dbg !5394
  %6 = load %struct.resource*, %struct.resource** %bus_range, align 8, !dbg !5395
  %tobool1 = icmp ne %struct.resource* %6, null, !dbg !5395
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5397

if.then2:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !5398
  br label %return, !dbg !5398

if.end3:                                          ; preds = %if.end
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5399
  %8 = load %struct.device_node*, %struct.device_node** %dev_node, align 8, !dbg !5399
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), %struct.device_node* %8) #9, !dbg !5399
  %9 = load %struct.device_node*, %struct.device_node** %dev_node, align 8, !dbg !5400
  %10 = load %struct.resource*, %struct.resource** %bus_range, align 8, !dbg !5401
  %call4 = call i32 @of_pci_parse_bus_range(%struct.device_node* %9, %struct.resource* %10) #7, !dbg !5402
  store i32 %call4, i32* %err, align 4, !dbg !5403
  %11 = load i32, i32* %err, align 4, !dbg !5404
  %tobool5 = icmp ne i32 %11, 0, !dbg !5404
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !5406

if.then6:                                         ; preds = %if.end3
  %12 = load i8, i8* %busno.addr, align 1, !dbg !5407
  %conv = zext i8 %12 to i64, !dbg !5407
  %13 = load %struct.resource*, %struct.resource** %bus_range, align 8, !dbg !5409
  %start = getelementptr inbounds %struct.resource, %struct.resource* %13, i32 0, i32 0, !dbg !5410
  store i64 %conv, i64* %start, align 8, !dbg !5411
  %14 = load i8, i8* %bus_max.addr, align 1, !dbg !5412
  %conv7 = zext i8 %14 to i64, !dbg !5412
  %15 = load %struct.resource*, %struct.resource** %bus_range, align 8, !dbg !5413
  %end = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 1, !dbg !5414
  store i64 %conv7, i64* %end, align 8, !dbg !5415
  %16 = load %struct.resource*, %struct.resource** %bus_range, align 8, !dbg !5416
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 3, !dbg !5417
  store i64 4096, i64* %flags, align 8, !dbg !5418
  %17 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5419
  %18 = load %struct.device_node*, %struct.device_node** %dev_node, align 8, !dbg !5419
  %19 = load %struct.resource*, %struct.resource** %bus_range, align 8, !dbg !5419
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), %struct.device_node* %18, %struct.resource* %19) #9, !dbg !5419
  br label %if.end18, !dbg !5420

if.else:                                          ; preds = %if.end3
  %20 = load %struct.resource*, %struct.resource** %bus_range, align 8, !dbg !5421
  %end8 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 1, !dbg !5424
  %21 = load i64, i64* %end8, align 8, !dbg !5424
  %22 = load %struct.resource*, %struct.resource** %bus_range, align 8, !dbg !5425
  %start9 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 0, !dbg !5426
  %23 = load i64, i64* %start9, align 8, !dbg !5426
  %24 = load i8, i8* %bus_max.addr, align 1, !dbg !5427
  %conv10 = zext i8 %24 to i64, !dbg !5427
  %add = add i64 %23, %conv10, !dbg !5428
  %cmp = icmp ugt i64 %21, %add, !dbg !5429
  br i1 %cmp, label %if.then12, label %if.end17, !dbg !5430

if.then12:                                        ; preds = %if.else
  %25 = load %struct.resource*, %struct.resource** %bus_range, align 8, !dbg !5431
  %start13 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 0, !dbg !5432
  %26 = load i64, i64* %start13, align 8, !dbg !5432
  %27 = load i8, i8* %bus_max.addr, align 1, !dbg !5433
  %conv14 = zext i8 %27 to i64, !dbg !5433
  %add15 = add i64 %26, %conv14, !dbg !5434
  %28 = load %struct.resource*, %struct.resource** %bus_range, align 8, !dbg !5435
  %end16 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 1, !dbg !5436
  store i64 %add15, i64* %end16, align 8, !dbg !5437
  br label %if.end17, !dbg !5435

if.end17:                                         ; preds = %if.then12, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then6
  %29 = load %struct.list_head*, %struct.list_head** %resources.addr, align 8, !dbg !5438
  %30 = load %struct.resource*, %struct.resource** %bus_range, align 8, !dbg !5439
  call void @pci_add_resource(%struct.list_head* %29, %struct.resource* %30) #7, !dbg !5440
  %31 = load %struct.device_node*, %struct.device_node** %dev_node, align 8, !dbg !5441
  %call19 = call i32 @of_pci_range_parser_init(%struct.of_pci_range_parser* %parser, %struct.device_node* %31) #7, !dbg !5442
  store i32 %call19, i32* %err, align 4, !dbg !5443
  %32 = load i32, i32* %err, align 4, !dbg !5444
  %tobool20 = icmp ne i32 %32, 0, !dbg !5444
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !5446

if.then21:                                        ; preds = %if.end18
  br label %failed, !dbg !5447

if.end22:                                         ; preds = %if.end18
  br label %for.cond, !dbg !5448

for.cond:                                         ; preds = %if.end68, %if.then50, %if.then46, %if.end22
  %call23 = call %struct.of_pci_range* @of_pci_range_parser_one(%struct.of_pci_range_parser* %parser, %struct.of_pci_range* %range) #7, !dbg !5449
  %tobool24 = icmp ne %struct.of_pci_range* %call23, null, !dbg !5452
  br i1 %tobool24, label %for.body, label %for.end, !dbg !5452

for.body:                                         ; preds = %for.cond
  %flags25 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 3, !dbg !5453
  %33 = load i32, i32* %flags25, align 8, !dbg !5453
  %and = and i32 %33, 7936, !dbg !5456
  %cmp26 = icmp eq i32 %and, 256, !dbg !5457
  br i1 %cmp26, label %if.then28, label %if.else29, !dbg !5458

if.then28:                                        ; preds = %for.body
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8** %range_type, align 8, !dbg !5459
  br label %if.end37, !dbg !5460

if.else29:                                        ; preds = %for.body
  %flags30 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 3, !dbg !5461
  %34 = load i32, i32* %flags30, align 8, !dbg !5461
  %and31 = and i32 %34, 7936, !dbg !5463
  %cmp32 = icmp eq i32 %and31, 512, !dbg !5464
  br i1 %cmp32, label %if.then34, label %if.else35, !dbg !5465

if.then34:                                        ; preds = %if.else29
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8** %range_type, align 8, !dbg !5466
  br label %if.end36, !dbg !5467

if.else35:                                        ; preds = %if.else29
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8** %range_type, align 8, !dbg !5468
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %if.then34
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then28
  %35 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5469
  %36 = load i8*, i8** %range_type, align 8, !dbg !5469
  %cpu_addr = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 1, !dbg !5469
  %37 = load i64, i64* %cpu_addr, align 8, !dbg !5469
  %cpu_addr38 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 1, !dbg !5469
  %38 = load i64, i64* %cpu_addr38, align 8, !dbg !5469
  %size = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 2, !dbg !5469
  %39 = load i64, i64* %size, align 8, !dbg !5469
  %add39 = add i64 %38, %39, !dbg !5469
  %sub = sub i64 %add39, 1, !dbg !5469
  %40 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 0, !dbg !5469
  %pci_addr = bitcast %union.anon.66* %40 to i64*, !dbg !5469
  %41 = load i64, i64* %pci_addr, align 8, !dbg !5469
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i8* %36, i64 %37, i64 %sub, i64 %41) #9, !dbg !5469
  %cpu_addr40 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 1, !dbg !5470
  %42 = load i64, i64* %cpu_addr40, align 8, !dbg !5470
  %cmp41 = icmp eq i64 %42, -1, !dbg !5472
  br i1 %cmp41, label %if.then46, label %lor.lhs.false, !dbg !5473

lor.lhs.false:                                    ; preds = %if.end37
  %size43 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 2, !dbg !5474
  %43 = load i64, i64* %size43, align 8, !dbg !5474
  %cmp44 = icmp eq i64 %43, 0, !dbg !5475
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !5476

if.then46:                                        ; preds = %lor.lhs.false, %if.end37
  br label %for.cond, !dbg !5477, !llvm.loop !5478

if.end47:                                         ; preds = %lor.lhs.false
  %44 = load %struct.device_node*, %struct.device_node** %dev_node, align 8, !dbg !5480
  %call48 = call i32 @of_pci_range_to_resource(%struct.of_pci_range* %range, %struct.device_node* %44, %struct.resource* %tmp_res) #7, !dbg !5481
  store i32 %call48, i32* %err, align 4, !dbg !5482
  %45 = load i32, i32* %err, align 4, !dbg !5483
  %tobool49 = icmp ne i32 %45, 0, !dbg !5483
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !5485

if.then50:                                        ; preds = %if.end47
  br label %for.cond, !dbg !5486, !llvm.loop !5478

if.end51:                                         ; preds = %if.end47
  %46 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5487
  %47 = bitcast %struct.resource* %tmp_res to i8*, !dbg !5488
  %call52 = call i8* @devm_kmemdup(%struct.device* %46, i8* %47, i64 64, i32 3264) #7, !dbg !5489
  %48 = bitcast i8* %call52 to %struct.resource*, !dbg !5489
  store %struct.resource* %48, %struct.resource** %res, align 8, !dbg !5490
  %49 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5491
  %tobool53 = icmp ne %struct.resource* %49, null, !dbg !5491
  br i1 %tobool53, label %if.end55, label %if.then54, !dbg !5493

if.then54:                                        ; preds = %if.end51
  store i32 -12, i32* %err, align 4, !dbg !5494
  br label %failed, !dbg !5496

if.end55:                                         ; preds = %if.end51
  %50 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5497
  %call56 = call i64 @resource_type(%struct.resource* %50) #7, !dbg !5499
  %cmp57 = icmp eq i64 %call56, 256, !dbg !5500
  br i1 %cmp57, label %if.then59, label %if.end68, !dbg !5501

if.then59:                                        ; preds = %if.end55
  %51 = load i64*, i64** %io_base.addr, align 8, !dbg !5502
  %tobool60 = icmp ne i64* %51, null, !dbg !5502
  br i1 %tobool60, label %if.end62, label %if.then61, !dbg !5505

if.then61:                                        ; preds = %if.then59
  %52 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5506
  %53 = load %struct.device_node*, %struct.device_node** %dev_node, align 8, !dbg !5506
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %52, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.23, i64 0, i64 0), %struct.device_node* %53) #9, !dbg !5506
  store i32 -22, i32* %err, align 4, !dbg !5508
  br label %failed, !dbg !5509

if.end62:                                         ; preds = %if.then59
  %54 = load i64*, i64** %io_base.addr, align 8, !dbg !5510
  %55 = load i64, i64* %54, align 8, !dbg !5512
  %cmp63 = icmp ne i64 %55, -1, !dbg !5513
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !5514

if.then65:                                        ; preds = %if.end62
  %56 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5515
  %57 = load %struct.device_node*, %struct.device_node** %dev_node, align 8, !dbg !5515
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %56, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.24, i64 0, i64 0), %struct.device_node* %57) #9, !dbg !5515
  br label %if.end66, !dbg !5515

if.end66:                                         ; preds = %if.then65, %if.end62
  %cpu_addr67 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 1, !dbg !5516
  %58 = load i64, i64* %cpu_addr67, align 8, !dbg !5516
  %59 = load i64*, i64** %io_base.addr, align 8, !dbg !5517
  store i64 %58, i64* %59, align 8, !dbg !5518
  br label %if.end68, !dbg !5519

if.end68:                                         ; preds = %if.end66, %if.end55
  %60 = load %struct.list_head*, %struct.list_head** %resources.addr, align 8, !dbg !5520
  %61 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5521
  %62 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5522
  %start69 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0, !dbg !5523
  %63 = load i64, i64* %start69, align 8, !dbg !5523
  %64 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 0, !dbg !5524
  %pci_addr70 = bitcast %union.anon.66* %64 to i64*, !dbg !5524
  %65 = load i64, i64* %pci_addr70, align 8, !dbg !5524
  %sub71 = sub i64 %63, %65, !dbg !5525
  call void @pci_add_resource_offset(%struct.list_head* %60, %struct.resource* %61, i64 %sub71) #7, !dbg !5526
  br label %for.cond, !dbg !5449, !llvm.loop !5478

for.end:                                          ; preds = %for.cond
  %66 = load %struct.list_head*, %struct.list_head** %ib_resources.addr, align 8, !dbg !5527
  %tobool72 = icmp ne %struct.list_head* %66, null, !dbg !5527
  br i1 %tobool72, label %if.end74, label %if.then73, !dbg !5529

if.then73:                                        ; preds = %for.end
  store i32 0, i32* %retval, align 4, !dbg !5530
  br label %return, !dbg !5530

if.end74:                                         ; preds = %for.end
  %67 = load %struct.device_node*, %struct.device_node** %dev_node, align 8, !dbg !5531
  %call75 = call i32 @of_pci_dma_range_parser_init(%struct.of_pci_range_parser* %parser, %struct.device_node* %67) #7, !dbg !5532
  store i32 %call75, i32* %err, align 4, !dbg !5533
  %68 = load i32, i32* %err, align 4, !dbg !5534
  %tobool76 = icmp ne i32 %68, 0, !dbg !5534
  br i1 %tobool76, label %if.then77, label %if.end78, !dbg !5536

if.then77:                                        ; preds = %if.end74
  store i32 0, i32* %retval, align 4, !dbg !5537
  br label %return, !dbg !5537

if.end78:                                         ; preds = %if.end74
  br label %for.cond79, !dbg !5538

for.cond79:                                       ; preds = %for.end130, %if.then106, %if.then96, %if.end78
  %call80 = call %struct.of_pci_range* @of_pci_range_parser_one(%struct.of_pci_range_parser* %parser, %struct.of_pci_range* %range) #7, !dbg !5539
  %tobool81 = icmp ne %struct.of_pci_range* %call80, null, !dbg !5542
  br i1 %tobool81, label %for.body82, label %for.end135, !dbg !5542

for.body82:                                       ; preds = %for.cond79
  call void @llvm.dbg.declare(metadata %struct.resource_entry** %entry83, metadata !5543, metadata !DIExpression()), !dbg !5545
  %flags84 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 3, !dbg !5546
  %69 = load i32, i32* %flags84, align 8, !dbg !5546
  %and85 = and i32 %69, 7936, !dbg !5548
  %cmp86 = icmp ne i32 %and85, 512, !dbg !5549
  br i1 %cmp86, label %if.then96, label %lor.lhs.false88, !dbg !5550

lor.lhs.false88:                                  ; preds = %for.body82
  %cpu_addr89 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 1, !dbg !5551
  %70 = load i64, i64* %cpu_addr89, align 8, !dbg !5551
  %cmp90 = icmp eq i64 %70, -1, !dbg !5552
  br i1 %cmp90, label %if.then96, label %lor.lhs.false92, !dbg !5553

lor.lhs.false92:                                  ; preds = %lor.lhs.false88
  %size93 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 2, !dbg !5554
  %71 = load i64, i64* %size93, align 8, !dbg !5554
  %cmp94 = icmp eq i64 %71, 0, !dbg !5555
  br i1 %cmp94, label %if.then96, label %if.end97, !dbg !5556

if.then96:                                        ; preds = %lor.lhs.false92, %lor.lhs.false88, %for.body82
  br label %for.cond79, !dbg !5557, !llvm.loop !5558

if.end97:                                         ; preds = %lor.lhs.false92
  %72 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5560
  %cpu_addr98 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 1, !dbg !5560
  %73 = load i64, i64* %cpu_addr98, align 8, !dbg !5560
  %cpu_addr99 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 1, !dbg !5560
  %74 = load i64, i64* %cpu_addr99, align 8, !dbg !5560
  %size100 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 2, !dbg !5560
  %75 = load i64, i64* %size100, align 8, !dbg !5560
  %add101 = add i64 %74, %75, !dbg !5560
  %sub102 = sub i64 %add101, 1, !dbg !5560
  %76 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 0, !dbg !5560
  %pci_addr103 = bitcast %union.anon.66* %76 to i64*, !dbg !5560
  %77 = load i64, i64* %pci_addr103, align 8, !dbg !5560
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i64 %73, i64 %sub102, i64 %77) #9, !dbg !5560
  %78 = load %struct.device_node*, %struct.device_node** %dev_node, align 8, !dbg !5561
  %call104 = call i32 @of_pci_range_to_resource(%struct.of_pci_range* %range, %struct.device_node* %78, %struct.resource* %tmp_res) #7, !dbg !5562
  store i32 %call104, i32* %err, align 4, !dbg !5563
  %79 = load i32, i32* %err, align 4, !dbg !5564
  %tobool105 = icmp ne i32 %79, 0, !dbg !5564
  br i1 %tobool105, label %if.then106, label %if.end107, !dbg !5566

if.then106:                                       ; preds = %if.end97
  br label %for.cond79, !dbg !5567, !llvm.loop !5558

if.end107:                                        ; preds = %if.end97
  %80 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5568
  %81 = bitcast %struct.resource* %tmp_res to i8*, !dbg !5569
  %call108 = call i8* @devm_kmemdup(%struct.device* %80, i8* %81, i64 64, i32 3264) #7, !dbg !5570
  %82 = bitcast i8* %call108 to %struct.resource*, !dbg !5570
  store %struct.resource* %82, %struct.resource** %res, align 8, !dbg !5571
  %83 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5572
  %tobool109 = icmp ne %struct.resource* %83, null, !dbg !5572
  br i1 %tobool109, label %if.end111, label %if.then110, !dbg !5574

if.then110:                                       ; preds = %if.end107
  store i32 -12, i32* %err, align 4, !dbg !5575
  br label %failed, !dbg !5577

if.end111:                                        ; preds = %if.end107
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5578, metadata !DIExpression()), !dbg !5581
  %84 = load %struct.list_head*, %struct.list_head** %ib_resources.addr, align 8, !dbg !5581
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %84, i32 0, i32 0, !dbg !5581
  %85 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5581
  %86 = bitcast %struct.list_head* %85 to i8*, !dbg !5581
  store i8* %86, i8** %__mptr, align 8, !dbg !5581
  br label %do.body, !dbg !5581

do.body:                                          ; preds = %if.end111
  br label %do.end, !dbg !5582

do.end:                                           ; preds = %do.body
  %87 = load i8*, i8** %__mptr, align 8, !dbg !5581
  %add.ptr = getelementptr i8, i8* %87, i64 0, !dbg !5581
  %88 = bitcast i8* %add.ptr to %struct.resource_entry*, !dbg !5581
  store %struct.resource_entry* %88, %struct.resource_entry** %tmp, align 8, !dbg !5582
  %89 = load %struct.resource_entry*, %struct.resource_entry** %tmp, align 8, !dbg !5581
  store %struct.resource_entry* %89, %struct.resource_entry** %entry83, align 8, !dbg !5584
  br label %for.cond112, !dbg !5584

for.cond112:                                      ; preds = %do.end127, %do.end
  %90 = load %struct.resource_entry*, %struct.resource_entry** %entry83, align 8, !dbg !5585
  %node = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %90, i32 0, i32 0, !dbg !5585
  %91 = load %struct.list_head*, %struct.list_head** %ib_resources.addr, align 8, !dbg !5585
  %cmp113 = icmp eq %struct.list_head* %node, %91, !dbg !5585
  %lnot = xor i1 %cmp113, true, !dbg !5585
  br i1 %lnot, label %for.body115, label %for.end130, !dbg !5584

for.body115:                                      ; preds = %for.cond112
  %92 = load %struct.resource_entry*, %struct.resource_entry** %entry83, align 8, !dbg !5587
  %res116 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %92, i32 0, i32 1, !dbg !5589
  %93 = load %struct.resource*, %struct.resource** %res116, align 8, !dbg !5589
  %start117 = getelementptr inbounds %struct.resource, %struct.resource* %93, i32 0, i32 0, !dbg !5590
  %94 = load i64, i64* %start117, align 8, !dbg !5590
  %95 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5591
  %start118 = getelementptr inbounds %struct.resource, %struct.resource* %95, i32 0, i32 0, !dbg !5592
  %96 = load i64, i64* %start118, align 8, !dbg !5592
  %cmp119 = icmp ugt i64 %94, %96, !dbg !5593
  br i1 %cmp119, label %if.then121, label %if.end122, !dbg !5594

if.then121:                                       ; preds = %for.body115
  br label %for.end130, !dbg !5595

if.end122:                                        ; preds = %for.body115
  br label %for.inc, !dbg !5592

for.inc:                                          ; preds = %if.end122
  call void @llvm.dbg.declare(metadata i8** %__mptr123, metadata !5596, metadata !DIExpression()), !dbg !5598
  %97 = load %struct.resource_entry*, %struct.resource_entry** %entry83, align 8, !dbg !5598
  %node124 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %97, i32 0, i32 0, !dbg !5598
  %next125 = getelementptr inbounds %struct.list_head, %struct.list_head* %node124, i32 0, i32 0, !dbg !5598
  %98 = load %struct.list_head*, %struct.list_head** %next125, align 8, !dbg !5598
  %99 = bitcast %struct.list_head* %98 to i8*, !dbg !5598
  store i8* %99, i8** %__mptr123, align 8, !dbg !5598
  br label %do.body126, !dbg !5598

do.body126:                                       ; preds = %for.inc
  br label %do.end127, !dbg !5599

do.end127:                                        ; preds = %do.body126
  %100 = load i8*, i8** %__mptr123, align 8, !dbg !5598
  %add.ptr129 = getelementptr i8, i8* %100, i64 0, !dbg !5598
  %101 = bitcast i8* %add.ptr129 to %struct.resource_entry*, !dbg !5598
  store %struct.resource_entry* %101, %struct.resource_entry** %tmp128, align 8, !dbg !5599
  %102 = load %struct.resource_entry*, %struct.resource_entry** %tmp128, align 8, !dbg !5598
  store %struct.resource_entry* %102, %struct.resource_entry** %entry83, align 8, !dbg !5585
  br label %for.cond112, !dbg !5585, !llvm.loop !5601

for.end130:                                       ; preds = %if.then121, %for.cond112
  %103 = load %struct.resource_entry*, %struct.resource_entry** %entry83, align 8, !dbg !5603
  %node131 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %103, i32 0, i32 0, !dbg !5604
  %104 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5605
  %105 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5606
  %start132 = getelementptr inbounds %struct.resource, %struct.resource* %105, i32 0, i32 0, !dbg !5607
  %106 = load i64, i64* %start132, align 8, !dbg !5607
  %107 = getelementptr inbounds %struct.of_pci_range, %struct.of_pci_range* %range, i32 0, i32 0, !dbg !5608
  %pci_addr133 = bitcast %union.anon.66* %107 to i64*, !dbg !5608
  %108 = load i64, i64* %pci_addr133, align 8, !dbg !5608
  %sub134 = sub i64 %106, %108, !dbg !5609
  call void @pci_add_resource_offset(%struct.list_head* %node131, %struct.resource* %104, i64 %sub134) #7, !dbg !5610
  br label %for.cond79, !dbg !5539, !llvm.loop !5558

for.end135:                                       ; preds = %for.cond79
  store i32 0, i32* %retval, align 4, !dbg !5611
  br label %return, !dbg !5611

failed:                                           ; preds = %if.then110, %if.then61, %if.then54, %if.then21
  call void @llvm.dbg.label(metadata !5612), !dbg !5613
  %109 = load %struct.list_head*, %struct.list_head** %resources.addr, align 8, !dbg !5614
  call void @pci_free_resource_list(%struct.list_head* %109) #7, !dbg !5615
  %110 = load i32, i32* %err, align 4, !dbg !5616
  store i32 %110, i32* %retval, align 4, !dbg !5617
  br label %return, !dbg !5617

return:                                           ; preds = %failed, %for.end135, %if.then77, %if.then73, %if.then2
  %111 = load i32, i32* %retval, align 4, !dbg !5618
  ret i32 %111, !dbg !5618
}

; Function Attrs: noredzone
declare dso_local i32 @devm_request_pci_bus_resources(%struct.device*, %struct.list_head*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @resource_type(%struct.resource* %res) #0 !dbg !5619 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !5622, metadata !DIExpression()), !dbg !5623
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !5624
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 3, !dbg !5625
  %1 = load i64, i64* %flags, align 8, !dbg !5625
  %and = and i64 %1, 7936, !dbg !5626
  ret i64 %and, !dbg !5627
}

; Function Attrs: noredzone
declare dso_local i32 @devm_pci_remap_iospace(%struct.device*, %struct.resource*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @resource_list_destroy_entry(%struct.resource_entry* %entry1) #0 !dbg !5628 {
entry:
  %entry.addr = alloca %struct.resource_entry*, align 8
  store %struct.resource_entry* %entry1, %struct.resource_entry** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource_entry** %entry.addr, metadata !5631, metadata !DIExpression()), !dbg !5632
  %0 = load %struct.resource_entry*, %struct.resource_entry** %entry.addr, align 8, !dbg !5633
  call void @resource_list_del(%struct.resource_entry* %0) #7, !dbg !5634
  %1 = load %struct.resource_entry*, %struct.resource_entry** %entry.addr, align 8, !dbg !5635
  call void @resource_list_free_entry(%struct.resource_entry* %1) #7, !dbg !5636
  ret void, !dbg !5637
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #0 !dbg !5638 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5641, metadata !DIExpression()), !dbg !5642
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5643, metadata !DIExpression()), !dbg !5644
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !5645, metadata !DIExpression()), !dbg !5646
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5647
  %1 = load i64, i64* %size.addr, align 8, !dbg !5648
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !5649
  %or = or i32 %2, 256, !dbg !5650
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #7, !dbg !5651
  ret i8* %call, !dbg !5652
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local void @pci_add_resource(%struct.list_head*, %struct.resource*) #2

; Function Attrs: noredzone
declare dso_local i32 @of_pci_range_parser_init(%struct.of_pci_range_parser*, %struct.device_node*) #2

; Function Attrs: noredzone
declare dso_local %struct.of_pci_range* @of_pci_range_parser_one(%struct.of_pci_range_parser*, %struct.of_pci_range*) #2

; Function Attrs: noredzone
declare dso_local i32 @of_pci_range_to_resource(%struct.of_pci_range*, %struct.device_node*, %struct.resource*) #2

; Function Attrs: noredzone
declare dso_local i8* @devm_kmemdup(%struct.device*, i8*, i64, i32) #2

; Function Attrs: noredzone
declare dso_local void @pci_add_resource_offset(%struct.list_head*, %struct.resource*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @of_pci_dma_range_parser_init(%struct.of_pci_range_parser*, %struct.device_node*) #2

; Function Attrs: noredzone
declare dso_local void @pci_free_resource_list(%struct.list_head*) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @resource_list_del(%struct.resource_entry* %entry1) #0 !dbg !5653 {
entry:
  %entry.addr = alloca %struct.resource_entry*, align 8
  store %struct.resource_entry* %entry1, %struct.resource_entry** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource_entry** %entry.addr, metadata !5654, metadata !DIExpression()), !dbg !5655
  %0 = load %struct.resource_entry*, %struct.resource_entry** %entry.addr, align 8, !dbg !5656
  %node = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %0, i32 0, i32 0, !dbg !5657
  call void @list_del(%struct.list_head* %node) #7, !dbg !5658
  ret void, !dbg !5659
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @resource_list_free_entry(%struct.resource_entry* %entry1) #0 !dbg !5660 {
entry:
  %entry.addr = alloca %struct.resource_entry*, align 8
  store %struct.resource_entry* %entry1, %struct.resource_entry** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource_entry** %entry.addr, metadata !5661, metadata !DIExpression()), !dbg !5662
  %0 = load %struct.resource_entry*, %struct.resource_entry** %entry.addr, align 8, !dbg !5663
  %1 = bitcast %struct.resource_entry* %0 to i8*, !dbg !5663
  call void @kfree(i8* %1) #7, !dbg !5664
  ret void, !dbg !5665
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !5666 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5667, metadata !DIExpression()), !dbg !5668
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5669
  call void @__list_del_entry(%struct.list_head* %0) #7, !dbg !5670
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5671
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5672
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !5673
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5674
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !5675
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !5676
  ret void, !dbg !5677
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5678 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5679, metadata !DIExpression()), !dbg !5680
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5681
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #7, !dbg !5683
  br i1 %call, label %if.end, label %if.then, !dbg !5684

if.then:                                          ; preds = %entry
  br label %return, !dbg !5685

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5686
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5687
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5687
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5688
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5689
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5689
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #7, !dbg !5690
  br label %return, !dbg !5691

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5691
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5692 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5695, metadata !DIExpression()), !dbg !5696
  ret i1 true, !dbg !5697
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5698 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5701, metadata !DIExpression()), !dbg !5702
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5703, metadata !DIExpression()), !dbg !5704
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5705
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5706
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5707
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5708
  br label %do.body, !dbg !5709

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5710

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5712

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5710

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5714
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5714
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5714
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5714
  br label %do.end5, !dbg !5714

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5710

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5716
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { cold noredzone }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { nounwind readnone }

!llvm.dbg.cu = !{!4360}
!llvm.module.flags = !{!4389, !4390, !4391, !4392}
!llvm.ident = !{!4393}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__print_once", scope: !2, file: !3, line: 494, type: !376, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "of_irq_parse_pci", scope: !3, file: !3, line: 407, type: !4, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!3 = !DIFile(filename: "drivers/pci/of.c", directory: "/home/lizy2001/genbc/linux")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !4353}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !10, line: 309, size: 19264, elements: !11)
!10 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!11 = !{!12, !19, !4131, !4132, !4133, !4134, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4226, !4227, !4228, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4302, !4303, !4304, !4305, !4306, !4307, !4309, !4310, !4311, !4314, !4346, !4347, !4348, !4349, !4350, !4351, !4352}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !9, file: !10, line: 310, baseType: !13, size: 128)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !14, line: 178, size: 128, elements: !15)
!14 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !18}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !13, file: !14, line: 179, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !13, file: !14, line: 179, baseType: !17, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !9, file: !10, line: 311, baseType: !20, size: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !10, line: 605, size: 8064, elements: !22)
!22 = !{!23, !24, !25, !26, !27, !29, !30, !57, !58, !59, !88, !91, !92, !96, !98, !99, !100, !101, !105, !107, !109, !4127, !4128, !4129, !4130}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !21, file: !10, line: 606, baseType: !13, size: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !21, file: !10, line: 607, baseType: !20, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !21, file: !10, line: 608, baseType: !13, size: 128, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !21, file: !10, line: 609, baseType: !13, size: 128, offset: 320)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !21, file: !10, line: 610, baseType: !28, size: 64, offset: 448)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !21, file: !10, line: 611, baseType: !13, size: 128, offset: 512)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !21, file: !10, line: 613, baseType: !31, size: 256, offset: 640)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 256, elements: !55)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !34, line: 20, size: 512, elements: !35)
!34 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!35 = !{!36, !44, !45, !49, !51, !52, !53, !54}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !33, file: !34, line: 21, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !14, line: 158, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !14, line: 153, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !40, line: 23, baseType: !41)
!40 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !42, line: 31, baseType: !43)
!42 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!43 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !33, file: !34, line: 22, baseType: !37, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !33, file: !34, line: 23, baseType: !46, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !33, file: !34, line: 24, baseType: !50, size: 64, offset: 192)
!50 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !33, file: !34, line: 25, baseType: !50, size: 64, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !33, file: !34, line: 26, baseType: !32, size: 64, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !33, file: !34, line: 26, baseType: !32, size: 64, offset: 384)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !33, file: !34, line: 26, baseType: !32, size: 64, offset: 448)
!55 = !{!56}
!56 = !DISubrange(count: 4)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !21, file: !10, line: 614, baseType: !13, size: 128, offset: 896)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !21, file: !10, line: 615, baseType: !33, size: 512, offset: 1024)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !21, file: !10, line: 617, baseType: !60, size: 64, offset: 1536)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !10, line: 731, size: 320, elements: !62)
!62 = !{!63, !67, !71, !77, !84}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !61, file: !10, line: 732, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!6, !20}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !61, file: !10, line: 733, baseType: !68, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !20}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !61, file: !10, line: 734, baseType: !72, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!75, !20, !76, !6}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!76 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !61, file: !10, line: 735, baseType: !78, size: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!6, !20, !76, !6, !6, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !40, line: 21, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !42, line: 27, baseType: !76)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !61, file: !10, line: 736, baseType: !85, size: 64, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{!6, !20, !76, !6, !6, !82}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !21, file: !10, line: 618, baseType: !89, size: 64, offset: 1600)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !10, line: 537, flags: DIFlagFwdDecl)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !21, file: !10, line: 619, baseType: !75, size: 64, offset: 1664)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !21, file: !10, line: 620, baseType: !93, size: 64, offset: 1728)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !95, line: 123, flags: DIFlagFwdDecl)
!95 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!96 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !21, file: !10, line: 622, baseType: !97, size: 8, offset: 1792)
!97 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !21, file: !10, line: 623, baseType: !97, size: 8, offset: 1800)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !21, file: !10, line: 624, baseType: !97, size: 8, offset: 1808)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !21, file: !10, line: 625, baseType: !97, size: 8, offset: 1816)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !21, file: !10, line: 630, baseType: !102, size: 384, offset: 1824)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 384, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 48)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !21, file: !10, line: 632, baseType: !106, size: 16, offset: 2208)
!106 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !21, file: !10, line: 633, baseType: !108, size: 16, offset: 2224)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !10, line: 237, baseType: !106)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !21, file: !10, line: 634, baseType: !110, size: 64, offset: 2240)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !112, line: 461, size: 5568, elements: !113)
!112 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!113 = !{!114, !3302, !3303, !3306, !3307, !3359, !3456, !3457, !3458, !3459, !3460, !3475, !3593, !3606, !4054, !4055, !4059, !4061, !4062, !4063, !4067, !4073, !4074, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4115, !4116, !4117, !4120, !4123, !4124, !4125, !4126}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !111, file: !112, line: 462, baseType: !115, size: 512)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !116, line: 64, size: 512, elements: !117)
!116 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!117 = !{!118, !119, !120, !122, !182, !3153, !3292, !3297, !3298, !3299, !3300, !3301}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !115, file: !116, line: 65, baseType: !46, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !115, file: !116, line: 66, baseType: !13, size: 128, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !115, file: !116, line: 67, baseType: !121, size: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !115, file: !116, line: 68, baseType: !123, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !116, line: 192, size: 704, elements: !125)
!125 = !{!126, !127, !143, !144}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !124, file: !116, line: 193, baseType: !13, size: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !124, file: !116, line: 194, baseType: !128, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !129, line: 83, baseType: !130)
!129 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !129, line: 71, elements: !131)
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_member, scope: !130, file: !129, line: 72, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !130, file: !129, line: 72, elements: !134)
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !133, file: !129, line: 73, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !129, line: 20, elements: !137)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !136, file: !129, line: 21, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !140, line: 25, baseType: !141)
!140 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !140, line: 25, elements: !142)
!142 = !{}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !124, file: !116, line: 195, baseType: !115, size: 512, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !124, file: !116, line: 196, baseType: !145, size: 64, offset: 640)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !116, line: 156, size: 192, elements: !148)
!148 = !{!149, !154, !159}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !147, file: !116, line: 157, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!6, !123, !121}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !147, file: !116, line: 158, baseType: !155, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!46, !123, !121}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !147, file: !116, line: 159, baseType: !160, size: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!6, !123, !121, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !116, line: 148, size: 20736, elements: !166)
!166 = !{!167, !172, !176, !177, !181}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !165, file: !116, line: 149, baseType: !168, size: 192)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 192, elements: !170)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!170 = !{!171}
!171 = !DISubrange(count: 3)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !165, file: !116, line: 150, baseType: !173, size: 4096, offset: 192)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 4096, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !165, file: !116, line: 151, baseType: !6, size: 32, offset: 4288)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !165, file: !116, line: 152, baseType: !178, size: 16384, offset: 4320)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 16384, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 2048)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !165, file: !116, line: 153, baseType: !6, size: 32, offset: 20704)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !115, file: !116, line: 69, baseType: !183, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !116, line: 138, size: 448, elements: !185)
!185 = !{!186, !190, !218, !220, !3109, !3143, !3147}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !184, file: !116, line: 139, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !121}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !184, file: !116, line: 140, baseType: !191, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !194, line: 230, size: 128, elements: !195)
!194 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!195 = !{!196, !211}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !193, file: !194, line: 231, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!200, !121, !205, !169}
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !14, line: 60, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !202, line: 73, baseType: !203)
!202 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !202, line: 15, baseType: !204)
!204 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !194, line: 30, size: 128, elements: !207)
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !206, file: !194, line: 31, baseType: !46, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !206, file: !194, line: 32, baseType: !210, size: 16, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !14, line: 19, baseType: !106)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !193, file: !194, line: 232, baseType: !212, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!200, !121, !205, !46, !215}
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 55, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !202, line: 72, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !202, line: 16, baseType: !50)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !184, file: !116, line: 141, baseType: !219, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !184, file: !116, line: 142, baseType: !221, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !194, line: 84, size: 320, elements: !225)
!225 = !{!226, !227, !231, !3106, !3107}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !224, file: !194, line: 85, baseType: !46, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !224, file: !194, line: 86, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!210, !121, !205, !6}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !224, file: !194, line: 88, baseType: !232, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!210, !121, !235, !6}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !194, line: 168, size: 448, elements: !237)
!237 = !{!238, !239, !240, !241, !3101, !3102}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !236, file: !194, line: 169, baseType: !206, size: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !236, file: !194, line: 170, baseType: !215, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !236, file: !194, line: 171, baseType: !75, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !236, file: !194, line: 172, baseType: !242, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!200, !245, !121, !235, !169, !417, !215}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !247, line: 916, size: 1856, align: 32, elements: !248)
!247 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!248 = !{!249, !267, !3051, !3052, !3053, !3054, !3063, !3064, !3065, !3066, !3067, !3068, !3084, !3085, !3094, !3095, !3096, !3097, !3098, !3099, !3100}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !246, file: !247, line: 920, baseType: !250, size: 128)
!250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !246, file: !247, line: 917, size: 128, elements: !251)
!251 = !{!252, !258}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !250, file: !247, line: 918, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !254, line: 58, size: 64, elements: !255)
!254 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !253, file: !254, line: 59, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !250, file: !247, line: 919, baseType: !259, size: 128, align: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !14, line: 216, size: 128, align: 64, elements: !260)
!260 = !{!261, !263}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !259, file: !14, line: 217, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !259, file: !14, line: 218, baseType: !264, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !262}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !246, file: !247, line: 921, baseType: !268, size: 128, offset: 128)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !269, line: 8, size: 128, elements: !270)
!269 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!270 = !{!271, !275}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !268, file: !269, line: 9, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !274, line: 18, flags: DIFlagFwdDecl)
!274 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!275 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !268, file: !269, line: 10, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !274, line: 89, size: 1536, elements: !278)
!278 = !{!279, !280, !290, !298, !299, !314, !3019, !3021, !3033, !3034, !3035, !3036, !3037, !3043, !3044, !3045}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !277, file: !274, line: 91, baseType: !76, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !277, file: !274, line: 92, baseType: !281, size: 32, offset: 32)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !282, line: 277, baseType: !283)
!282 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !282, line: 277, size: 32, elements: !284)
!284 = !{!285}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !283, file: !282, line: 277, baseType: !286, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !282, line: 70, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !282, line: 65, size: 32, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !287, file: !282, line: 66, baseType: !76, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !277, file: !274, line: 93, baseType: !291, size: 128, offset: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !292, line: 38, size: 128, elements: !293)
!292 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!293 = !{!294, !296}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !291, file: !292, line: 39, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !291, file: !292, line: 39, baseType: !297, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !277, file: !274, line: 94, baseType: !276, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !277, file: !274, line: 95, baseType: !300, size: 128, offset: 256)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !274, line: 47, size: 128, elements: !301)
!301 = !{!302, !311}
!302 = !DIDerivedType(tag: DW_TAG_member, scope: !300, file: !274, line: 48, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !300, file: !274, line: 48, size: 64, elements: !304)
!304 = !{!305, !310}
!305 = !DIDerivedType(tag: DW_TAG_member, scope: !303, file: !274, line: 49, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !303, file: !274, line: 49, size: 64, elements: !307)
!307 = !{!308, !309}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !306, file: !274, line: 50, baseType: !82, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !306, file: !274, line: 50, baseType: !82, size: 32, offset: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !303, file: !274, line: 52, baseType: !39, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !274, line: 54, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !277, file: !274, line: 96, baseType: !315, size: 64, offset: 384)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !247, line: 610, size: 4224, elements: !317)
!317 = !{!318, !319, !320, !328, !335, !336, !484, !2730, !2731, !2732, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2995, !3003, !3004, !3005, !3015, !3016, !3017, !3018}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !316, file: !247, line: 611, baseType: !210, size: 16)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !316, file: !247, line: 612, baseType: !106, size: 16, offset: 16)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !316, file: !247, line: 613, baseType: !321, size: 32, offset: 32)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !322, line: 23, baseType: !323)
!322 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !322, line: 21, size: 32, elements: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !323, file: !322, line: 22, baseType: !326, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !14, line: 32, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !202, line: 49, baseType: !76)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !316, file: !247, line: 614, baseType: !329, size: 32, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !322, line: 28, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !322, line: 26, size: 32, elements: !331)
!331 = !{!332}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !330, file: !322, line: 27, baseType: !333, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !14, line: 33, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !202, line: 50, baseType: !76)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !316, file: !247, line: 615, baseType: !76, size: 32, offset: 96)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !316, file: !247, line: 622, baseType: !337, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !247, line: 1864, size: 1536, align: 512, elements: !340)
!340 = !{!341, !345, !358, !362, !368, !372, !378, !382, !386, !390, !394, !395, !401, !405, !431, !460, !464, !470, !475, !479, !480}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !339, file: !247, line: 1865, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!276, !315, !276, !76}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !339, file: !247, line: 1866, baseType: !346, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!46, !276, !315, !349}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !351, line: 10, size: 128, elements: !352)
!351 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!352 = !{!353, !357}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !350, file: !351, line: 11, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !75}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !350, file: !351, line: 12, baseType: !75, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !339, file: !247, line: 1867, baseType: !359, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!6, !315, !6}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !339, file: !247, line: 1868, baseType: !363, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!366, !315, !6}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !247, line: 581, flags: DIFlagFwdDecl)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !339, file: !247, line: 1870, baseType: !369, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!6, !276, !169, !6}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !339, file: !247, line: 1872, baseType: !373, size: 64, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!6, !315, !276, !210, !376}
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !14, line: 30, baseType: !377)
!377 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !339, file: !247, line: 1873, baseType: !379, size: 64, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!6, !276, !315, !276}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !339, file: !247, line: 1874, baseType: !383, size: 64, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!6, !315, !276}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !339, file: !247, line: 1875, baseType: !387, size: 64, offset: 512)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!6, !315, !276, !46}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !339, file: !247, line: 1876, baseType: !391, size: 64, offset: 576)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!6, !315, !276, !210}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !339, file: !247, line: 1877, baseType: !383, size: 64, offset: 640)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !339, file: !247, line: 1878, baseType: !396, size: 64, offset: 704)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!6, !315, !276, !210, !399}
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !14, line: 16, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !14, line: 13, baseType: !82)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !339, file: !247, line: 1879, baseType: !402, size: 64, offset: 768)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!6, !315, !276, !315, !276, !76}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !339, file: !247, line: 1881, baseType: !406, size: 64, offset: 832)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!6, !276, !409}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !247, line: 219, size: 640, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !420, !428, !429, !430}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !410, file: !247, line: 220, baseType: !76, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !410, file: !247, line: 221, baseType: !210, size: 16, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !410, file: !247, line: 222, baseType: !321, size: 32, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !410, file: !247, line: 223, baseType: !329, size: 32, offset: 96)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !410, file: !247, line: 224, baseType: !417, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !14, line: 46, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !202, line: 88, baseType: !419)
!419 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !410, file: !247, line: 225, baseType: !421, size: 128, offset: 192)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !422, line: 13, size: 128, elements: !423)
!422 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!423 = !{!424, !427}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !421, file: !422, line: 14, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !422, line: 8, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !42, line: 30, baseType: !419)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !421, file: !422, line: 15, baseType: !204, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !410, file: !247, line: 226, baseType: !421, size: 128, offset: 320)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !410, file: !247, line: 227, baseType: !421, size: 128, offset: 448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !410, file: !247, line: 234, baseType: !245, size: 64, offset: 576)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !339, file: !247, line: 1882, baseType: !432, size: 64, offset: 896)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!6, !435, !437, !82, !76}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !439, line: 22, size: 1152, elements: !440)
!439 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!440 = !{!441, !442, !443, !444, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !438, file: !439, line: 23, baseType: !82, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !438, file: !439, line: 24, baseType: !210, size: 16, offset: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !438, file: !439, line: 25, baseType: !76, size: 32, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !438, file: !439, line: 26, baseType: !445, size: 32, offset: 96)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !14, line: 104, baseType: !82)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !438, file: !439, line: 27, baseType: !39, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !438, file: !439, line: 28, baseType: !39, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !438, file: !439, line: 37, baseType: !39, size: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !438, file: !439, line: 38, baseType: !399, size: 32, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !438, file: !439, line: 39, baseType: !399, size: 32, offset: 352)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !438, file: !439, line: 40, baseType: !321, size: 32, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !438, file: !439, line: 41, baseType: !329, size: 32, offset: 416)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !438, file: !439, line: 42, baseType: !417, size: 64, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !438, file: !439, line: 43, baseType: !421, size: 128, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !438, file: !439, line: 44, baseType: !421, size: 128, offset: 640)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !438, file: !439, line: 45, baseType: !421, size: 128, offset: 768)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !438, file: !439, line: 46, baseType: !421, size: 128, offset: 896)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !438, file: !439, line: 47, baseType: !39, size: 64, offset: 1024)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !438, file: !439, line: 48, baseType: !39, size: 64, offset: 1088)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !339, file: !247, line: 1883, baseType: !461, size: 64, offset: 960)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!200, !276, !169, !215}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !339, file: !247, line: 1884, baseType: !465, size: 64, offset: 1024)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!6, !315, !468, !39, !39}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !247, line: 50, flags: DIFlagFwdDecl)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !339, file: !247, line: 1886, baseType: !471, size: 64, offset: 1088)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!6, !315, !474, !6}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !339, file: !247, line: 1887, baseType: !476, size: 64, offset: 1152)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!6, !315, !276, !245, !76, !210}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !339, file: !247, line: 1890, baseType: !391, size: 64, offset: 1216)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !339, file: !247, line: 1891, baseType: !481, size: 64, offset: 1280)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!6, !315, !366, !6}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !316, file: !247, line: 623, baseType: !485, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !247, line: 1416, size: 9472, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !543, !2331, !2419, !2502, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2518, !2522, !2523, !2526, !2527, !2530, !2531, !2532, !2573, !2600, !2601, !2602, !2603, !2604, !2605, !2608, !2610, !2617, !2618, !2620, !2621, !2622, !2681, !2682, !2697, !2698, !2699, !2700, !2701, !2704, !2705, !2706, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !486, file: !247, line: 1417, baseType: !13, size: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !486, file: !247, line: 1418, baseType: !399, size: 32, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !486, file: !247, line: 1419, baseType: !97, size: 8, offset: 160)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !486, file: !247, line: 1420, baseType: !50, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !486, file: !247, line: 1421, baseType: !417, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !486, file: !247, line: 1422, baseType: !494, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !247, line: 2228, size: 576, elements: !496)
!496 = !{!497, !498, !499, !506, !510, !514, !518, !522, !523, !533, !536, !537, !538, !540, !541, !542}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !495, file: !247, line: 2229, baseType: !46, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !495, file: !247, line: 2230, baseType: !6, size: 32, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !495, file: !247, line: 2238, baseType: !500, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!6, !503}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !505, line: 28, flags: DIFlagFwdDecl)
!505 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!506 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !495, file: !247, line: 2239, baseType: !507, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!509 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !247, line: 70, flags: DIFlagFwdDecl)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !495, file: !247, line: 2240, baseType: !511, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!276, !494, !6, !46, !75}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !495, file: !247, line: 2242, baseType: !515, size: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !485}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !495, file: !247, line: 2243, baseType: !519, size: 64, offset: 384)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !521, line: 76, flags: DIFlagFwdDecl)
!521 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!522 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !495, file: !247, line: 2244, baseType: !494, size: 64, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !495, file: !247, line: 2245, baseType: !524, size: 64, offset: 512)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !14, line: 182, size: 64, elements: !525)
!525 = !{!526}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !524, file: !14, line: 183, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !14, line: 186, size: 128, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !528, file: !14, line: 187, baseType: !527, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !528, file: !14, line: 187, baseType: !532, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !495, file: !247, line: 2247, baseType: !534, offset: 576)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !535, line: 187, elements: !142)
!535 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!536 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !495, file: !247, line: 2248, baseType: !534, offset: 576)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !495, file: !247, line: 2249, baseType: !534, offset: 576)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !495, file: !247, line: 2250, baseType: !539, offset: 576)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, elements: !170)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !495, file: !247, line: 2252, baseType: !534, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !495, file: !247, line: 2253, baseType: !534, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !495, file: !247, line: 2254, baseType: !534, offset: 576)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !486, file: !247, line: 1423, baseType: !544, size: 64, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !247, line: 1935, size: 1472, elements: !547)
!547 = !{!548, !552, !556, !557, !561, !568, !572, !573, !574, !578, !582, !583, !584, !585, !591, !596, !597, !604, !605, !606, !607, !2315, !2330}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !546, file: !247, line: 1936, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!315, !485}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !546, file: !247, line: 1937, baseType: !553, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !315}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !546, file: !247, line: 1938, baseType: !553, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !546, file: !247, line: 1940, baseType: !558, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !315, !6}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !546, file: !247, line: 1941, baseType: !562, size: 64, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!6, !315, !565}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !567, line: 40, flags: DIFlagFwdDecl)
!567 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!568 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !546, file: !247, line: 1942, baseType: !569, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!6, !315}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !546, file: !247, line: 1943, baseType: !553, size: 64, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !546, file: !247, line: 1944, baseType: !515, size: 64, offset: 448)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !546, file: !247, line: 1945, baseType: !575, size: 64, offset: 512)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!6, !485, !6}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !546, file: !247, line: 1946, baseType: !579, size: 64, offset: 576)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!6, !485}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !546, file: !247, line: 1947, baseType: !579, size: 64, offset: 640)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !546, file: !247, line: 1948, baseType: !579, size: 64, offset: 704)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !546, file: !247, line: 1949, baseType: !579, size: 64, offset: 768)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !546, file: !247, line: 1950, baseType: !586, size: 64, offset: 832)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!6, !276, !589}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !247, line: 57, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !546, file: !247, line: 1951, baseType: !592, size: 64, offset: 896)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!6, !485, !595, !169}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !546, file: !247, line: 1952, baseType: !515, size: 64, offset: 960)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !546, file: !247, line: 1954, baseType: !598, size: 64, offset: 1024)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!6, !601, !276}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !603, line: 539, flags: DIFlagFwdDecl)
!603 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!604 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !546, file: !247, line: 1955, baseType: !598, size: 64, offset: 1088)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !546, file: !247, line: 1956, baseType: !598, size: 64, offset: 1152)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !546, file: !247, line: 1957, baseType: !598, size: 64, offset: 1216)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !546, file: !247, line: 1963, baseType: !608, size: 64, offset: 1280)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!6, !485, !611, !634}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !613, line: 68, size: 512, align: 128, elements: !614)
!613 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!614 = !{!615, !616, !2307, !2314}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !613, line: 69, baseType: !50, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, scope: !612, file: !613, line: 77, baseType: !617, size: 320, offset: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !612, file: !613, line: 77, size: 320, elements: !618)
!618 = !{!619, !814, !819, !847, !855, !861, !2231, !2306}
!619 = !DIDerivedType(tag: DW_TAG_member, scope: !617, file: !613, line: 78, baseType: !620, size: 320)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !617, file: !613, line: 78, size: 320, elements: !621)
!621 = !{!622, !623, !812, !813}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !620, file: !613, line: 84, baseType: !13, size: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !620, file: !613, line: 86, baseType: !624, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !247, line: 451, size: 1216, align: 64, elements: !626)
!626 = !{!627, !628, !636, !637, !642, !657, !673, !674, !675, !676, !805, !806, !809, !810, !811}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !625, file: !247, line: 452, baseType: !315, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !625, file: !247, line: 453, baseType: !629, size: 128, offset: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !630, line: 292, size: 128, elements: !631)
!630 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!631 = !{!632, !633, !635}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !629, file: !630, line: 293, baseType: !128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !629, file: !630, line: 295, baseType: !634, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !14, line: 148, baseType: !76)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !629, file: !630, line: 296, baseType: !75, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !625, file: !247, line: 454, baseType: !634, size: 32, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !625, file: !247, line: 455, baseType: !638, size: 32, offset: 224)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !14, line: 168, baseType: !639)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 166, size: 32, elements: !640)
!640 = !{!641}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !639, file: !14, line: 167, baseType: !6, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !625, file: !247, line: 460, baseType: !643, size: 128, offset: 256)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !644, line: 125, size: 128, elements: !645)
!644 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!645 = !{!646, !656}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !643, file: !644, line: 126, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !644, line: 31, size: 64, elements: !648)
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !647, file: !644, line: 32, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !644, line: 24, size: 192, align: 64, elements: !652)
!652 = !{!653, !654, !655}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !651, file: !644, line: 25, baseType: !50, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !651, file: !644, line: 26, baseType: !650, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !651, file: !644, line: 27, baseType: !650, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !643, file: !644, line: 127, baseType: !650, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !625, file: !247, line: 461, baseType: !658, size: 256, offset: 384)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !659, line: 35, size: 256, elements: !660)
!659 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!660 = !{!661, !669, !670, !672}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !658, file: !659, line: 36, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !663, line: 13, baseType: !664)
!663 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !14, line: 175, baseType: !665)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 173, size: 64, elements: !666)
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !665, file: !14, line: 174, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !40, line: 22, baseType: !426)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !658, file: !659, line: 42, baseType: !662, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !658, file: !659, line: 46, baseType: !671, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !129, line: 29, baseType: !136)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !658, file: !659, line: 47, baseType: !13, size: 128, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !625, file: !247, line: 462, baseType: !50, size: 64, offset: 640)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !625, file: !247, line: 463, baseType: !50, size: 64, offset: 704)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !625, file: !247, line: 464, baseType: !50, size: 64, offset: 768)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !625, file: !247, line: 465, baseType: !677, size: 64, offset: 832)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !679)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !247, line: 367, size: 1408, elements: !680)
!680 = !{!681, !685, !689, !693, !697, !701, !707, !713, !717, !722, !726, !730, !734, !762, !773, !779, !780, !781, !785, !790, !794, !801}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !679, file: !247, line: 368, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!6, !611, !565}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !679, file: !247, line: 369, baseType: !686, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!6, !245, !611}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !679, file: !247, line: 372, baseType: !690, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!6, !624, !565}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !679, file: !247, line: 375, baseType: !694, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!6, !611}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !679, file: !247, line: 381, baseType: !698, size: 64, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!6, !245, !624, !17, !76}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !679, file: !247, line: 383, baseType: !702, size: 64, offset: 320)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !705}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !247, line: 290, flags: DIFlagFwdDecl)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !679, file: !247, line: 385, baseType: !708, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!6, !245, !624, !417, !76, !76, !711, !712}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !679, file: !247, line: 388, baseType: !714, size: 64, offset: 448)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!6, !245, !624, !417, !76, !76, !611, !75}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !679, file: !247, line: 393, baseType: !718, size: 64, offset: 512)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!721, !624, !721}
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !14, line: 125, baseType: !39)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !679, file: !247, line: 394, baseType: !723, size: 64, offset: 576)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !611, !76, !76}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !679, file: !247, line: 395, baseType: !727, size: 64, offset: 640)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!6, !611, !634}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !679, file: !247, line: 396, baseType: !731, size: 64, offset: 704)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !611}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !679, file: !247, line: 397, baseType: !735, size: 64, offset: 768)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!200, !738, !760}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !247, line: 320, size: 384, elements: !740)
!740 = !{!741, !742, !743, !747, !748, !749, !752, !753}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !739, file: !247, line: 321, baseType: !245, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !739, file: !247, line: 326, baseType: !417, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !739, file: !247, line: 327, baseType: !744, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{null, !738, !204, !204}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !739, file: !247, line: 328, baseType: !75, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !739, file: !247, line: 329, baseType: !6, size: 32, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !739, file: !247, line: 330, baseType: !750, size: 16, offset: 288)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !40, line: 19, baseType: !751)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !42, line: 24, baseType: !106)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !739, file: !247, line: 331, baseType: !750, size: 16, offset: 304)
!753 = !DIDerivedType(tag: DW_TAG_member, scope: !739, file: !247, line: 332, baseType: !754, size: 64, offset: 320)
!754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !739, file: !247, line: 332, size: 64, elements: !755)
!755 = !{!756, !757}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !754, file: !247, line: 333, baseType: !76, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !754, file: !247, line: 334, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !247, line: 334, flags: DIFlagFwdDecl)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !247, line: 64, flags: DIFlagFwdDecl)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !679, file: !247, line: 402, baseType: !763, size: 64, offset: 832)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!6, !624, !611, !611, !766}
!766 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !767, line: 15, baseType: !76, size: 32, elements: !768)
!767 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!768 = !{!769, !770, !771, !772}
!769 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!770 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!771 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!772 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !679, file: !247, line: 404, baseType: !774, size: 64, offset: 896)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!376, !611, !777}
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !778, line: 305, baseType: !76)
!778 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!779 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !679, file: !247, line: 405, baseType: !731, size: 64, offset: 960)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !679, file: !247, line: 406, baseType: !694, size: 64, offset: 1024)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !679, file: !247, line: 407, baseType: !782, size: 64, offset: 1088)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!6, !611, !50, !50}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !679, file: !247, line: 409, baseType: !786, size: 64, offset: 1152)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !611, !789, !789}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !679, file: !247, line: 410, baseType: !791, size: 64, offset: 1216)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!6, !624, !611}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !679, file: !247, line: 413, baseType: !795, size: 64, offset: 1280)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!6, !798, !245, !800}
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !247, line: 61, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !679, file: !247, line: 415, baseType: !802, size: 64, offset: 1344)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !245}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !625, file: !247, line: 466, baseType: !50, size: 64, offset: 896)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !625, file: !247, line: 467, baseType: !807, size: 32, offset: 960)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !808, line: 8, baseType: !82)
!808 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!809 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !625, file: !247, line: 468, baseType: !128, offset: 992)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !625, file: !247, line: 469, baseType: !13, size: 128, offset: 1024)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !625, file: !247, line: 470, baseType: !75, size: 64, offset: 1152)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !620, file: !613, line: 87, baseType: !50, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !620, file: !613, line: 94, baseType: !50, size: 64, offset: 256)
!814 = !DIDerivedType(tag: DW_TAG_member, scope: !617, file: !613, line: 96, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !617, file: !613, line: 96, size: 64, elements: !816)
!816 = !{!817}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !815, file: !613, line: 101, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !14, line: 143, baseType: !39)
!819 = !DIDerivedType(tag: DW_TAG_member, scope: !617, file: !613, line: 103, baseType: !820, size: 320)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !617, file: !613, line: 103, size: 320, elements: !821)
!821 = !{!822, !832, !835, !836}
!822 = !DIDerivedType(tag: DW_TAG_member, scope: !820, file: !613, line: 104, baseType: !823, size: 128)
!823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !820, file: !613, line: 104, size: 128, elements: !824)
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !823, file: !613, line: 105, baseType: !13, size: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, scope: !823, file: !613, line: 106, baseType: !827, size: 128)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !823, file: !613, line: 106, size: 128, elements: !828)
!828 = !{!829, !830, !831}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !827, file: !613, line: 107, baseType: !611, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !827, file: !613, line: 109, baseType: !6, size: 32, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !827, file: !613, line: 110, baseType: !6, size: 32, offset: 96)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !820, file: !613, line: 117, baseType: !833, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !613, line: 117, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !820, file: !613, line: 119, baseType: !75, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, scope: !820, file: !613, line: 120, baseType: !837, size: 64, offset: 256)
!837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !820, file: !613, line: 120, size: 64, elements: !838)
!838 = !{!839, !840, !841}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !837, file: !613, line: 121, baseType: !75, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !837, file: !613, line: 122, baseType: !50, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, scope: !837, file: !613, line: 123, baseType: !842, size: 32)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !837, file: !613, line: 123, size: 32, elements: !843)
!843 = !{!844, !845, !846}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !842, file: !613, line: 124, baseType: !76, size: 16, flags: DIFlagBitField, extraData: i64 0)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !842, file: !613, line: 125, baseType: !76, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !842, file: !613, line: 126, baseType: !76, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!847 = !DIDerivedType(tag: DW_TAG_member, scope: !617, file: !613, line: 130, baseType: !848, size: 192)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !617, file: !613, line: 130, size: 192, elements: !849)
!849 = !{!850, !851, !852, !853, !854}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !848, file: !613, line: 131, baseType: !50, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !848, file: !613, line: 134, baseType: !97, size: 8, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !848, file: !613, line: 135, baseType: !97, size: 8, offset: 72)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !848, file: !613, line: 136, baseType: !638, size: 32, offset: 96)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !848, file: !613, line: 137, baseType: !76, size: 32, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, scope: !617, file: !613, line: 139, baseType: !856, size: 256)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !617, file: !613, line: 139, size: 256, elements: !857)
!857 = !{!858, !859, !860}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !856, file: !613, line: 140, baseType: !50, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !856, file: !613, line: 141, baseType: !638, size: 32, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !856, file: !613, line: 143, baseType: !13, size: 128, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, scope: !617, file: !613, line: 145, baseType: !862, size: 256)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !617, file: !613, line: 145, size: 256, elements: !863)
!863 = !{!864, !865, !867, !868, !2230}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !862, file: !613, line: 146, baseType: !50, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !862, file: !613, line: 147, baseType: !866, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !603, line: 509, baseType: !611)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !862, file: !613, line: 148, baseType: !50, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !613, line: 149, baseType: !869, size: 64, offset: 192)
!869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !862, file: !613, line: 149, size: 64, elements: !870)
!870 = !{!871, !2229}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !869, file: !613, line: 150, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !613, line: 388, size: 7296, elements: !874)
!874 = !{!875, !2225}
!875 = !DIDerivedType(tag: DW_TAG_member, scope: !873, file: !613, line: 389, baseType: !876, size: 7296)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !873, file: !613, line: 389, size: 7296, elements: !877)
!877 = !{!878, !1001, !1002, !1003, !1007, !1008, !1009, !1010, !1011, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1052, !1058, !1061, !1091, !1092, !2209, !2210, !2213, !2214, !2215, !2218, !2219, !2220, !2223, !2224}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !876, file: !613, line: 390, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !613, line: 305, size: 1472, elements: !881)
!881 = !{!882, !883, !884, !885, !886, !887, !888, !889, !896, !897, !902, !903, !906, !995, !996, !997, !998, !999}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !880, file: !613, line: 308, baseType: !50, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !880, file: !613, line: 309, baseType: !50, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !880, file: !613, line: 313, baseType: !879, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !880, file: !613, line: 313, baseType: !879, size: 64, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !880, file: !613, line: 315, baseType: !651, size: 192, align: 64, offset: 256)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !880, file: !613, line: 323, baseType: !50, size: 64, offset: 448)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !880, file: !613, line: 327, baseType: !872, size: 64, offset: 512)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !880, file: !613, line: 333, baseType: !890, size: 64, offset: 576)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !603, line: 284, baseType: !891)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !603, line: 284, size: 64, elements: !892)
!892 = !{!893}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !891, file: !603, line: 284, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !895, line: 19, baseType: !50)
!895 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!896 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !880, file: !613, line: 334, baseType: !50, size: 64, offset: 640)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !880, file: !613, line: 343, baseType: !898, size: 256, offset: 704)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !880, file: !613, line: 340, size: 256, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !898, file: !613, line: 341, baseType: !651, size: 192, align: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !898, file: !613, line: 342, baseType: !50, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !880, file: !613, line: 351, baseType: !13, size: 128, offset: 960)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !880, file: !613, line: 353, baseType: !904, size: 64, offset: 1088)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !613, line: 353, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !880, file: !613, line: 356, baseType: !907, size: 64, offset: 1152)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !909)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !567, line: 557, size: 832, elements: !910)
!910 = !{!911, !915, !916, !920, !924, !964, !973, !977, !981, !982, !983, !987, !991}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !909, file: !567, line: 558, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{null, !879}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !909, file: !567, line: 559, baseType: !912, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !909, file: !567, line: 560, baseType: !917, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!6, !879, !50}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !909, file: !567, line: 561, baseType: !921, size: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!6, !879}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !909, file: !567, line: 562, baseType: !925, size: 64, offset: 256)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !613, line: 682, baseType: !76)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !567, line: 508, size: 768, elements: !931)
!931 = !{!932, !933, !934, !935, !936, !937, !944, !951, !957, !958, !959, !961, !963}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !930, file: !567, line: 509, baseType: !879, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !930, file: !567, line: 510, baseType: !76, size: 32, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !930, file: !567, line: 511, baseType: !634, size: 32, offset: 96)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !930, file: !567, line: 512, baseType: !50, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !930, file: !567, line: 513, baseType: !50, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !930, file: !567, line: 514, baseType: !938, size: 64, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !603, line: 385, baseType: !940)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !603, line: 385, size: 64, elements: !941)
!941 = !{!942}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !940, file: !603, line: 385, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !895, line: 15, baseType: !50)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !930, file: !567, line: 516, baseType: !945, size: 64, offset: 320)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !603, line: 359, baseType: !947)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !603, line: 359, size: 64, elements: !948)
!948 = !{!949}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !947, file: !603, line: 359, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !895, line: 16, baseType: !50)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !930, file: !567, line: 519, baseType: !952, size: 64, offset: 384)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !895, line: 21, baseType: !953)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !895, line: 21, size: 64, elements: !954)
!954 = !{!955}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !953, file: !895, line: 21, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !895, line: 14, baseType: !50)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !930, file: !567, line: 521, baseType: !611, size: 64, offset: 448)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !930, file: !567, line: 522, baseType: !611, size: 64, offset: 512)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !930, file: !567, line: 528, baseType: !960, size: 64, offset: 576)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !930, file: !567, line: 532, baseType: !962, size: 64, offset: 640)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !930, file: !567, line: 536, baseType: !866, size: 64, offset: 704)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !909, file: !567, line: 563, baseType: !965, size: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!928, !929, !968}
!968 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !567, line: 546, baseType: !76, size: 32, elements: !969)
!969 = !{!970, !971, !972}
!970 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!971 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!972 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !909, file: !567, line: 565, baseType: !974, size: 64, offset: 384)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{null, !929, !50, !50}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !909, file: !567, line: 567, baseType: !978, size: 64, offset: 448)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!50, !879}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !909, file: !567, line: 571, baseType: !925, size: 64, offset: 512)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !909, file: !567, line: 574, baseType: !925, size: 64, offset: 576)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !909, file: !567, line: 579, baseType: !984, size: 64, offset: 640)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!6, !879, !50, !75, !6, !6}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !909, file: !567, line: 585, baseType: !988, size: 64, offset: 704)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!46, !879}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !909, file: !567, line: 615, baseType: !992, size: 64, offset: 768)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!611, !879, !50}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !880, file: !613, line: 359, baseType: !50, size: 64, offset: 1216)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !880, file: !613, line: 361, baseType: !245, size: 64, offset: 1280)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !880, file: !613, line: 362, baseType: !75, size: 64, offset: 1344)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !880, file: !613, line: 365, baseType: !662, size: 64, offset: 1408)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !880, file: !613, line: 373, baseType: !1000, offset: 1472)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !613, line: 296, elements: !142)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !876, file: !613, line: 391, baseType: !647, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !876, file: !613, line: 392, baseType: !39, size: 64, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !876, file: !613, line: 394, baseType: !1004, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!50, !245, !50, !50, !50, !50}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !876, file: !613, line: 398, baseType: !50, size: 64, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !876, file: !613, line: 399, baseType: !50, size: 64, offset: 320)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !876, file: !613, line: 405, baseType: !50, size: 64, offset: 384)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !876, file: !613, line: 406, baseType: !50, size: 64, offset: 448)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !876, file: !613, line: 407, baseType: !1012, size: 64, offset: 512)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !603, line: 286, baseType: !1014)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !603, line: 286, size: 64, elements: !1015)
!1015 = !{!1016}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1014, file: !603, line: 286, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !895, line: 18, baseType: !50)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !876, file: !613, line: 416, baseType: !638, size: 32, offset: 576)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !876, file: !613, line: 428, baseType: !638, size: 32, offset: 608)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !876, file: !613, line: 437, baseType: !638, size: 32, offset: 640)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !876, file: !613, line: 447, baseType: !638, size: 32, offset: 672)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !876, file: !613, line: 450, baseType: !662, size: 64, offset: 704)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !876, file: !613, line: 452, baseType: !6, size: 32, offset: 768)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !876, file: !613, line: 454, baseType: !128, offset: 800)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !876, file: !613, line: 457, baseType: !658, size: 256, offset: 832)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !876, file: !613, line: 459, baseType: !13, size: 128, offset: 1088)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !876, file: !613, line: 466, baseType: !50, size: 64, offset: 1216)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !876, file: !613, line: 467, baseType: !50, size: 64, offset: 1280)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !876, file: !613, line: 469, baseType: !50, size: 64, offset: 1344)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !876, file: !613, line: 470, baseType: !50, size: 64, offset: 1408)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !876, file: !613, line: 471, baseType: !664, size: 64, offset: 1472)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !876, file: !613, line: 472, baseType: !50, size: 64, offset: 1536)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !876, file: !613, line: 473, baseType: !50, size: 64, offset: 1600)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !876, file: !613, line: 474, baseType: !50, size: 64, offset: 1664)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !876, file: !613, line: 475, baseType: !50, size: 64, offset: 1728)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !876, file: !613, line: 477, baseType: !128, offset: 1792)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !876, file: !613, line: 478, baseType: !50, size: 64, offset: 1792)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !876, file: !613, line: 478, baseType: !50, size: 64, offset: 1856)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !876, file: !613, line: 478, baseType: !50, size: 64, offset: 1920)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !876, file: !613, line: 478, baseType: !50, size: 64, offset: 1984)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !876, file: !613, line: 479, baseType: !50, size: 64, offset: 2048)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !876, file: !613, line: 479, baseType: !50, size: 64, offset: 2112)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !876, file: !613, line: 479, baseType: !50, size: 64, offset: 2176)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !876, file: !613, line: 480, baseType: !50, size: 64, offset: 2240)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !876, file: !613, line: 480, baseType: !50, size: 64, offset: 2304)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !876, file: !613, line: 480, baseType: !50, size: 64, offset: 2368)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !876, file: !613, line: 480, baseType: !50, size: 64, offset: 2432)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !876, file: !613, line: 482, baseType: !1049, size: 2816, offset: 2496)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 2816, elements: !1050)
!1050 = !{!1051}
!1051 = !DISubrange(count: 44)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !876, file: !613, line: 488, baseType: !1053, size: 256, offset: 5312)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1054, line: 60, size: 256, elements: !1055)
!1054 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1055 = !{!1056}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1053, file: !1054, line: 61, baseType: !1057, size: 256)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !662, size: 256, elements: !55)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !876, file: !613, line: 490, baseType: !1059, size: 64, offset: 5568)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !613, line: 490, flags: DIFlagFwdDecl)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !876, file: !613, line: 493, baseType: !1062, size: 896, offset: 5632)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1063, line: 53, baseType: !1064)
!1063 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1063, line: 13, size: 896, elements: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1072, !1073, !1080, !1081, !1085, !1086, !1087}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1064, file: !1063, line: 18, baseType: !39, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1064, file: !1063, line: 28, baseType: !664, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1064, file: !1063, line: 31, baseType: !658, size: 256, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1064, file: !1063, line: 32, baseType: !1070, size: 64, offset: 384)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1063, line: 32, flags: DIFlagFwdDecl)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1064, file: !1063, line: 37, baseType: !106, size: 16, offset: 448)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1064, file: !1063, line: 40, baseType: !1074, size: 192, offset: 512)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1075, line: 53, size: 192, elements: !1076)
!1075 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1076 = !{!1077, !1078, !1079}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1074, file: !1075, line: 54, baseType: !662, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1074, file: !1075, line: 55, baseType: !128, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1074, file: !1075, line: 59, baseType: !13, size: 128, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1064, file: !1063, line: 41, baseType: !75, size: 64, offset: 704)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1064, file: !1063, line: 42, baseType: !1082, size: 64, offset: 768)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1084)
!1084 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1063, line: 42, flags: DIFlagFwdDecl)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1064, file: !1063, line: 44, baseType: !638, size: 32, offset: 832)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1064, file: !1063, line: 50, baseType: !750, size: 16, offset: 864)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1064, file: !1063, line: 51, baseType: !1088, size: 16, offset: 880)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !40, line: 18, baseType: !1089)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !42, line: 23, baseType: !1090)
!1090 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !876, file: !613, line: 495, baseType: !50, size: 64, offset: 6528)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !876, file: !613, line: 497, baseType: !1093, size: 64, offset: 6592)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !613, line: 381, size: 384, elements: !1095)
!1095 = !{!1096, !1097, !2208}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1094, file: !613, line: 382, baseType: !638, size: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1094, file: !613, line: 383, baseType: !1098, size: 128, offset: 64)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !613, line: 376, size: 128, elements: !1099)
!1099 = !{!1100, !2206}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1098, file: !613, line: 377, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1103, line: 640, size: 48640, elements: !1104)
!1103 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1104 = !{!1105, !1111, !1113, !1114, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1131, !1149, !1160, !1250, !1251, !1252, !1263, !1264, !1266, !1267, !1268, !1269, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1353, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1392, !1394, !1395, !1396, !1408, !1409, !1410, !1411, !1412, !1413, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1437, !1442, !1626, !1627, !1628, !1629, !1633, !1636, !1639, !1642, !1645, !1648, !1749, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1795, !1796, !1797, !1798, !1799, !1804, !1805, !1806, !1809, !1810, !1813, !1816, !1819, !1822, !1865, !1868, !1869, !1948, !1949, !1952, !1953, !1956, !1957, !1958, !1962, !1963, !1964, !1977, !1978, !1979, !1989, !1994, !1997, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1102, file: !1103, line: 646, baseType: !1106, size: 128)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1107, line: 56, size: 128, elements: !1108)
!1107 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1108 = !{!1109, !1110}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1106, file: !1107, line: 57, baseType: !50, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1106, file: !1107, line: 58, baseType: !82, size: 32, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1102, file: !1103, line: 649, baseType: !1112, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !204)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1102, file: !1103, line: 657, baseType: !75, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1102, file: !1103, line: 658, baseType: !1115, size: 32, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1116, line: 113, baseType: !1117)
!1116 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1116, line: 111, size: 32, elements: !1118)
!1118 = !{!1119}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1117, file: !1116, line: 112, baseType: !638, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1102, file: !1103, line: 660, baseType: !76, size: 32, offset: 288)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1102, file: !1103, line: 661, baseType: !76, size: 32, offset: 320)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1102, file: !1103, line: 684, baseType: !6, size: 32, offset: 352)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1102, file: !1103, line: 686, baseType: !6, size: 32, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1102, file: !1103, line: 687, baseType: !6, size: 32, offset: 416)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1102, file: !1103, line: 688, baseType: !6, size: 32, offset: 448)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1102, file: !1103, line: 689, baseType: !76, size: 32, offset: 480)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1102, file: !1103, line: 691, baseType: !1128, size: 64, offset: 512)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1130)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1103, line: 691, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1102, file: !1103, line: 692, baseType: !1132, size: 832, offset: 576)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1103, line: 451, size: 832, elements: !1133)
!1133 = !{!1134, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1132, file: !1103, line: 453, baseType: !1135, size: 128)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1103, line: 325, size: 128, elements: !1136)
!1136 = !{!1137, !1138}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1135, file: !1103, line: 326, baseType: !50, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1135, file: !1103, line: 327, baseType: !82, size: 32, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1132, file: !1103, line: 454, baseType: !651, size: 192, align: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1132, file: !1103, line: 455, baseType: !13, size: 128, offset: 320)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1132, file: !1103, line: 456, baseType: !76, size: 32, offset: 448)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1132, file: !1103, line: 458, baseType: !39, size: 64, offset: 512)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1132, file: !1103, line: 459, baseType: !39, size: 64, offset: 576)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1132, file: !1103, line: 460, baseType: !39, size: 64, offset: 640)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1132, file: !1103, line: 461, baseType: !39, size: 64, offset: 704)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1132, file: !1103, line: 463, baseType: !39, size: 64, offset: 768)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1132, file: !1103, line: 465, baseType: !1148, offset: 832)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1103, line: 415, elements: !142)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1102, file: !1103, line: 693, baseType: !1150, size: 384, offset: 1408)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1103, line: 489, size: 384, elements: !1151)
!1151 = !{!1152, !1153, !1154, !1155, !1156, !1157, !1158}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1150, file: !1103, line: 490, baseType: !13, size: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1150, file: !1103, line: 491, baseType: !50, size: 64, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1150, file: !1103, line: 492, baseType: !50, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1150, file: !1103, line: 493, baseType: !76, size: 32, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1150, file: !1103, line: 494, baseType: !106, size: 16, offset: 288)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1150, file: !1103, line: 495, baseType: !106, size: 16, offset: 304)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1150, file: !1103, line: 497, baseType: !1159, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1102, file: !1103, line: 697, baseType: !1161, size: 1792, offset: 1792)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1103, line: 507, size: 1792, elements: !1162)
!1162 = !{!1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1247, !1248}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1161, file: !1103, line: 508, baseType: !651, size: 192, align: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1161, file: !1103, line: 515, baseType: !39, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1161, file: !1103, line: 516, baseType: !39, size: 64, offset: 256)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1161, file: !1103, line: 517, baseType: !39, size: 64, offset: 320)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1161, file: !1103, line: 518, baseType: !39, size: 64, offset: 384)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1161, file: !1103, line: 519, baseType: !39, size: 64, offset: 448)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1161, file: !1103, line: 526, baseType: !668, size: 64, offset: 512)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1161, file: !1103, line: 527, baseType: !39, size: 64, offset: 576)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1161, file: !1103, line: 528, baseType: !76, size: 32, offset: 640)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1161, file: !1103, line: 554, baseType: !76, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1161, file: !1103, line: 555, baseType: !76, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1161, file: !1103, line: 556, baseType: !76, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1161, file: !1103, line: 557, baseType: !76, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1161, file: !1103, line: 563, baseType: !1177, size: 512, offset: 704)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !1178, line: 118, size: 512, elements: !1179)
!1178 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!1179 = !{!1180, !1188, !1189, !1198, !1241, !1244, !1245, !1246}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1177, file: !1178, line: 119, baseType: !1181, size: 256)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1182, line: 9, size: 256, elements: !1183)
!1182 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1183 = !{!1184, !1185}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1181, file: !1182, line: 10, baseType: !651, size: 192, align: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1181, file: !1182, line: 11, baseType: !1186, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1187, line: 29, baseType: !668)
!1187 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1177, file: !1178, line: 120, baseType: !1186, size: 64, offset: 256)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1177, file: !1178, line: 121, baseType: !1190, size: 64, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!1193, !1197}
!1193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !1178, line: 65, baseType: !76, size: 32, elements: !1194)
!1194 = !{!1195, !1196}
!1195 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!1196 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1177, file: !1178, line: 122, baseType: !1199, size: 64, offset: 384)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !1178, line: 159, size: 512, align: 512, elements: !1201)
!1201 = !{!1202, !1222, !1223, !1226, !1231, !1232, !1236, !1240}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1200, file: !1178, line: 160, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !1178, line: 214, size: 4608, align: 512, elements: !1205)
!1205 = !{!1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1204, file: !1178, line: 215, baseType: !671)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1204, file: !1178, line: 216, baseType: !76, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1204, file: !1178, line: 217, baseType: !76, size: 32, offset: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1204, file: !1178, line: 218, baseType: !76, size: 32, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1204, file: !1178, line: 219, baseType: !76, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1204, file: !1178, line: 220, baseType: !76, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1204, file: !1178, line: 221, baseType: !76, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1204, file: !1178, line: 222, baseType: !76, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1204, file: !1178, line: 233, baseType: !1186, size: 64, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1204, file: !1178, line: 234, baseType: !1197, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1204, file: !1178, line: 235, baseType: !1186, size: 64, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1204, file: !1178, line: 236, baseType: !1197, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1204, file: !1178, line: 237, baseType: !1219, size: 4096, offset: 512)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1200, size: 4096, elements: !1220)
!1220 = !{!1221}
!1221 = !DISubrange(count: 8)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1200, file: !1178, line: 161, baseType: !76, size: 32, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1200, file: !1178, line: 162, baseType: !1224, size: 32, offset: 96)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !14, line: 27, baseType: !1225)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !202, line: 96, baseType: !6)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1200, file: !1178, line: 163, baseType: !1227, size: 32, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !282, line: 276, baseType: !1228)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !282, line: 276, size: 32, elements: !1229)
!1229 = !{!1230}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1228, file: !282, line: 276, baseType: !286, size: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1200, file: !1178, line: 164, baseType: !1197, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1200, file: !1178, line: 165, baseType: !1233, size: 128, offset: 256)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1182, line: 14, size: 128, elements: !1234)
!1234 = !{!1235}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1233, file: !1182, line: 15, baseType: !643, size: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1200, file: !1178, line: 166, baseType: !1237, size: 64, offset: 384)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!1186}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1200, file: !1178, line: 167, baseType: !1186, size: 64, offset: 448)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1177, file: !1178, line: 123, baseType: !1242, size: 8, offset: 448)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !40, line: 17, baseType: !1243)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !42, line: 21, baseType: !97)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1177, file: !1178, line: 124, baseType: !1242, size: 8, offset: 456)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1177, file: !1178, line: 125, baseType: !1242, size: 8, offset: 464)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1177, file: !1178, line: 126, baseType: !1242, size: 8, offset: 472)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1161, file: !1103, line: 572, baseType: !1177, size: 512, offset: 1216)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1161, file: !1103, line: 580, baseType: !1249, size: 64, offset: 1728)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1102, file: !1103, line: 721, baseType: !76, size: 32, offset: 3584)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1102, file: !1103, line: 722, baseType: !6, size: 32, offset: 3616)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1102, file: !1103, line: 723, baseType: !1253, size: 64, offset: 3648)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1255)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1256, line: 17, baseType: !1257)
!1256 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1256, line: 17, size: 64, elements: !1258)
!1258 = !{!1259}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1257, file: !1256, line: 17, baseType: !1260, size: 64)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 64, elements: !1261)
!1261 = !{!1262}
!1262 = !DISubrange(count: 1)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1102, file: !1103, line: 724, baseType: !1255, size: 64, offset: 3712)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1102, file: !1103, line: 749, baseType: !1265, offset: 3776)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1103, line: 290, elements: !142)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1102, file: !1103, line: 751, baseType: !13, size: 128, offset: 3776)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1102, file: !1103, line: 757, baseType: !872, size: 64, offset: 3904)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1102, file: !1103, line: 758, baseType: !872, size: 64, offset: 3968)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1102, file: !1103, line: 761, baseType: !1270, size: 320, offset: 4032)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1054, line: 34, size: 320, elements: !1271)
!1271 = !{!1272, !1273}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1270, file: !1054, line: 35, baseType: !39, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1270, file: !1054, line: 36, baseType: !1274, size: 256, offset: 64)
!1274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !879, size: 256, elements: !55)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1102, file: !1103, line: 766, baseType: !6, size: 32, offset: 4352)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1102, file: !1103, line: 767, baseType: !6, size: 32, offset: 4384)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1102, file: !1103, line: 768, baseType: !6, size: 32, offset: 4416)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1102, file: !1103, line: 770, baseType: !6, size: 32, offset: 4448)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1102, file: !1103, line: 772, baseType: !50, size: 64, offset: 4480)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1102, file: !1103, line: 775, baseType: !76, size: 32, offset: 4544)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1102, file: !1103, line: 778, baseType: !76, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1102, file: !1103, line: 779, baseType: !76, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1102, file: !1103, line: 780, baseType: !76, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1102, file: !1103, line: 803, baseType: !76, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1102, file: !1103, line: 806, baseType: !76, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1102, file: !1103, line: 807, baseType: !76, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1102, file: !1103, line: 809, baseType: !76, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1102, file: !1103, line: 815, baseType: !76, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1102, file: !1103, line: 831, baseType: !50, size: 64, offset: 4672)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1102, file: !1103, line: 833, baseType: !1291, size: 384, offset: 4736)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !1292, line: 25, size: 384, elements: !1293)
!1292 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!1293 = !{!1294, !1299}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1291, file: !1292, line: 26, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!204, !1298}
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, scope: !1291, file: !1292, line: 27, baseType: !1300, size: 320, offset: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1291, file: !1292, line: 27, size: 320, elements: !1301)
!1301 = !{!1302, !1311, !1343}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1300, file: !1292, line: 36, baseType: !1303, size: 320)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1300, file: !1292, line: 29, size: 320, elements: !1304)
!1304 = !{!1305, !1306, !1307, !1308, !1309, !1310}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1303, file: !1292, line: 30, baseType: !81, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1303, file: !1292, line: 31, baseType: !82, size: 32, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1303, file: !1292, line: 32, baseType: !82, size: 32, offset: 96)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1303, file: !1292, line: 33, baseType: !82, size: 32, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1303, file: !1292, line: 34, baseType: !39, size: 64, offset: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1303, file: !1292, line: 35, baseType: !81, size: 64, offset: 256)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1300, file: !1292, line: 46, baseType: !1312, size: 192)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1300, file: !1292, line: 38, size: 192, elements: !1313)
!1313 = !{!1314, !1315, !1321, !1342}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1312, file: !1292, line: 39, baseType: !1224, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1312, file: !1292, line: 40, baseType: !1316, size: 32, offset: 32)
!1316 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !1292, line: 16, baseType: !76, size: 32, elements: !1317)
!1317 = !{!1318, !1319, !1320}
!1318 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!1319 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!1320 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!1321 = !DIDerivedType(tag: DW_TAG_member, scope: !1312, file: !1292, line: 41, baseType: !1322, size: 64, offset: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1312, file: !1292, line: 41, size: 64, elements: !1323)
!1323 = !{!1324, !1332}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1322, file: !1292, line: 42, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1327, line: 7, size: 128, elements: !1328)
!1327 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1328 = !{!1329, !1331}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1326, file: !1327, line: 8, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !202, line: 93, baseType: !419)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1326, file: !1327, line: 9, baseType: !419, size: 64, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1322, file: !1292, line: 43, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1335, line: 7, size: 64, elements: !1336)
!1335 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1336 = !{!1337, !1341}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1334, file: !1335, line: 8, baseType: !1338, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1335, line: 5, baseType: !1339)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !40, line: 20, baseType: !1340)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !42, line: 26, baseType: !6)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1334, file: !1335, line: 9, baseType: !1339, size: 32, offset: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1312, file: !1292, line: 45, baseType: !39, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1300, file: !1292, line: 54, baseType: !1344, size: 256)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1300, file: !1292, line: 48, size: 256, elements: !1345)
!1345 = !{!1346, !1349, !1350, !1351, !1352}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1344, file: !1292, line: 49, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1292, line: 14, flags: DIFlagFwdDecl)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1344, file: !1292, line: 50, baseType: !6, size: 32, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1344, file: !1292, line: 51, baseType: !6, size: 32, offset: 96)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1344, file: !1292, line: 52, baseType: !50, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1344, file: !1292, line: 53, baseType: !50, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1102, file: !1103, line: 835, baseType: !1354, size: 32, offset: 5120)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !14, line: 22, baseType: !1355)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !202, line: 28, baseType: !6)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1102, file: !1103, line: 836, baseType: !1354, size: 32, offset: 5152)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1102, file: !1103, line: 840, baseType: !50, size: 64, offset: 5184)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1102, file: !1103, line: 849, baseType: !1101, size: 64, offset: 5248)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1102, file: !1103, line: 852, baseType: !1101, size: 64, offset: 5312)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1102, file: !1103, line: 857, baseType: !13, size: 128, offset: 5376)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1102, file: !1103, line: 858, baseType: !13, size: 128, offset: 5504)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1102, file: !1103, line: 859, baseType: !1101, size: 64, offset: 5632)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1102, file: !1103, line: 867, baseType: !13, size: 128, offset: 5696)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1102, file: !1103, line: 868, baseType: !13, size: 128, offset: 5824)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1102, file: !1103, line: 871, baseType: !1366, size: 64, offset: 5952)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1368, line: 59, size: 768, elements: !1369)
!1368 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!1369 = !{!1370, !1371, !1372, !1373, !1375, !1376, !1383, !1384}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1367, file: !1368, line: 61, baseType: !1115, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1367, file: !1368, line: 62, baseType: !76, size: 32, offset: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1367, file: !1368, line: 63, baseType: !128, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1367, file: !1368, line: 65, baseType: !1374, size: 256, offset: 64)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 256, elements: !55)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1367, file: !1368, line: 66, baseType: !524, size: 64, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1367, file: !1368, line: 68, baseType: !1377, size: 128, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1378, line: 40, baseType: !1379)
!1378 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1378, line: 36, size: 128, elements: !1380)
!1380 = !{!1381, !1382}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1379, file: !1378, line: 37, baseType: !128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1379, file: !1378, line: 38, baseType: !13, size: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1367, file: !1368, line: 69, baseType: !259, size: 128, align: 64, offset: 512)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1367, file: !1368, line: 70, baseType: !1385, size: 128, offset: 640)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1386, size: 128, elements: !1261)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1368, line: 54, size: 128, elements: !1387)
!1387 = !{!1388, !1389}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1386, file: !1368, line: 55, baseType: !6, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1386, file: !1368, line: 56, baseType: !1390, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1368, line: 56, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1102, file: !1103, line: 872, baseType: !1393, size: 512, offset: 6016)
!1393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 512, elements: !55)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1102, file: !1103, line: 873, baseType: !13, size: 128, offset: 6528)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1102, file: !1103, line: 874, baseType: !13, size: 128, offset: 6656)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1102, file: !1103, line: 876, baseType: !1397, size: 64, offset: 6784)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1399, line: 26, size: 192, elements: !1400)
!1399 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1398, file: !1399, line: 27, baseType: !76, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1398, file: !1399, line: 28, baseType: !1403, size: 128, offset: 64)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1404, line: 43, size: 128, elements: !1405)
!1404 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1405 = !{!1406, !1407}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1403, file: !1404, line: 44, baseType: !671)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1403, file: !1404, line: 45, baseType: !13, size: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1102, file: !1103, line: 879, baseType: !595, size: 64, offset: 6848)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1102, file: !1103, line: 882, baseType: !595, size: 64, offset: 6912)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1102, file: !1103, line: 884, baseType: !39, size: 64, offset: 6976)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1102, file: !1103, line: 885, baseType: !39, size: 64, offset: 7040)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1102, file: !1103, line: 890, baseType: !39, size: 64, offset: 7104)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1102, file: !1103, line: 891, baseType: !1414, size: 128, offset: 7168)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1103, line: 242, size: 128, elements: !1415)
!1415 = !{!1416, !1417, !1418}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1414, file: !1103, line: 244, baseType: !39, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1414, file: !1103, line: 245, baseType: !39, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1414, file: !1103, line: 246, baseType: !671, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1102, file: !1103, line: 900, baseType: !50, size: 64, offset: 7296)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1102, file: !1103, line: 901, baseType: !50, size: 64, offset: 7360)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1102, file: !1103, line: 904, baseType: !39, size: 64, offset: 7424)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1102, file: !1103, line: 907, baseType: !39, size: 64, offset: 7488)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1102, file: !1103, line: 910, baseType: !50, size: 64, offset: 7552)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1102, file: !1103, line: 911, baseType: !50, size: 64, offset: 7616)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1102, file: !1103, line: 914, baseType: !1426, size: 640, offset: 7680)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1427, line: 123, size: 640, elements: !1428)
!1427 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1428 = !{!1429, !1435, !1436}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1426, file: !1427, line: 124, baseType: !1430, size: 576)
!1430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1431, size: 576, elements: !170)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1427, line: 108, size: 192, elements: !1432)
!1432 = !{!1433, !1434}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1431, file: !1427, line: 109, baseType: !39, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1431, file: !1427, line: 110, baseType: !1233, size: 128, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1426, file: !1427, line: 125, baseType: !76, size: 32, offset: 576)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1426, file: !1427, line: 126, baseType: !76, size: 32, offset: 608)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1102, file: !1103, line: 917, baseType: !1438, size: 192, offset: 8320)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1427, line: 134, size: 192, elements: !1439)
!1439 = !{!1440, !1441}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1438, file: !1427, line: 135, baseType: !259, size: 128, align: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1438, file: !1427, line: 136, baseType: !76, size: 32, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1102, file: !1103, line: 923, baseType: !1443, size: 64, offset: 8512)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1445)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1446, line: 111, size: 1280, elements: !1447)
!1446 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1447 = !{!1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1467, !1468, !1469, !1470, !1471, !1472, !1579, !1580, !1581, !1582, !1608, !1611, !1621}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1445, file: !1446, line: 112, baseType: !638, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1445, file: !1446, line: 120, baseType: !321, size: 32, offset: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1445, file: !1446, line: 121, baseType: !329, size: 32, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1445, file: !1446, line: 122, baseType: !321, size: 32, offset: 96)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1445, file: !1446, line: 123, baseType: !329, size: 32, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1445, file: !1446, line: 124, baseType: !321, size: 32, offset: 160)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1445, file: !1446, line: 125, baseType: !329, size: 32, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1445, file: !1446, line: 126, baseType: !321, size: 32, offset: 224)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1445, file: !1446, line: 127, baseType: !329, size: 32, offset: 256)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1445, file: !1446, line: 128, baseType: !76, size: 32, offset: 288)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1445, file: !1446, line: 129, baseType: !1459, size: 64, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1460, line: 26, baseType: !1461)
!1460 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1460, line: 24, size: 64, elements: !1462)
!1462 = !{!1463}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1461, file: !1460, line: 25, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 64, elements: !1465)
!1465 = !{!1466}
!1466 = !DISubrange(count: 2)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1445, file: !1446, line: 130, baseType: !1459, size: 64, offset: 384)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1445, file: !1446, line: 131, baseType: !1459, size: 64, offset: 448)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1445, file: !1446, line: 132, baseType: !1459, size: 64, offset: 512)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1445, file: !1446, line: 133, baseType: !1459, size: 64, offset: 576)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1445, file: !1446, line: 135, baseType: !97, size: 8, offset: 640)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1445, file: !1446, line: 137, baseType: !1473, size: 64, offset: 704)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1475, line: 189, size: 1664, elements: !1476)
!1475 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1476 = !{!1477, !1478, !1481, !1486, !1487, !1490, !1491, !1496, !1497, !1498, !1499, !1501, !1502, !1503, !1504, !1505, !1543, !1564}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1474, file: !1475, line: 190, baseType: !1115, size: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1474, file: !1475, line: 191, baseType: !1479, size: 32, offset: 32)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1475, line: 28, baseType: !1480)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !14, line: 98, baseType: !1339)
!1481 = !DIDerivedType(tag: DW_TAG_member, scope: !1474, file: !1475, line: 192, baseType: !1482, size: 192, offset: 64)
!1482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1474, file: !1475, line: 192, size: 192, elements: !1483)
!1483 = !{!1484, !1485}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1482, file: !1475, line: 193, baseType: !13, size: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1482, file: !1475, line: 194, baseType: !651, size: 192, align: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1474, file: !1475, line: 199, baseType: !658, size: 256, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1474, file: !1475, line: 200, baseType: !1488, size: 64, offset: 512)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1475, line: 200, flags: DIFlagFwdDecl)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1474, file: !1475, line: 201, baseType: !75, size: 64, offset: 576)
!1491 = !DIDerivedType(tag: DW_TAG_member, scope: !1474, file: !1475, line: 202, baseType: !1492, size: 64, offset: 640)
!1492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1474, file: !1475, line: 202, size: 64, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1492, file: !1475, line: 203, baseType: !425, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1492, file: !1475, line: 204, baseType: !425, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1474, file: !1475, line: 206, baseType: !425, size: 64, offset: 704)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1474, file: !1475, line: 207, baseType: !321, size: 32, offset: 768)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1474, file: !1475, line: 208, baseType: !329, size: 32, offset: 800)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1474, file: !1475, line: 209, baseType: !1500, size: 32, offset: 832)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1475, line: 31, baseType: !445)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1474, file: !1475, line: 210, baseType: !106, size: 16, offset: 864)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1474, file: !1475, line: 211, baseType: !106, size: 16, offset: 880)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1474, file: !1475, line: 215, baseType: !1090, size: 16, offset: 896)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1474, file: !1475, line: 222, baseType: !50, size: 64, offset: 960)
!1505 = !DIDerivedType(tag: DW_TAG_member, scope: !1474, file: !1475, line: 239, baseType: !1506, size: 320, offset: 1024)
!1506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1474, file: !1475, line: 239, size: 320, elements: !1507)
!1507 = !{!1508, !1535}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1506, file: !1475, line: 240, baseType: !1509, size: 320)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1475, line: 108, size: 320, elements: !1510)
!1510 = !{!1511, !1512, !1524, !1527, !1534}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1509, file: !1475, line: 110, baseType: !50, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, scope: !1509, file: !1475, line: 111, baseType: !1513, size: 64, offset: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1509, file: !1475, line: 111, size: 64, elements: !1514)
!1514 = !{!1515, !1523}
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1513, file: !1475, line: 112, baseType: !1516, size: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1513, file: !1475, line: 112, size: 64, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1516, file: !1475, line: 114, baseType: !750, size: 16)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1516, file: !1475, line: 115, baseType: !1520, size: 48, offset: 16)
!1520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 48, elements: !1521)
!1521 = !{!1522}
!1522 = !DISubrange(count: 6)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1513, file: !1475, line: 121, baseType: !50, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1509, file: !1475, line: 123, baseType: !1525, size: 64, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1475, line: 96, flags: DIFlagFwdDecl)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1509, file: !1475, line: 124, baseType: !1528, size: 64, offset: 192)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1475, line: 102, size: 192, elements: !1530)
!1530 = !{!1531, !1532, !1533}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1529, file: !1475, line: 103, baseType: !259, size: 128, align: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1529, file: !1475, line: 104, baseType: !1115, size: 32, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1529, file: !1475, line: 105, baseType: !376, size: 8, offset: 160)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1509, file: !1475, line: 125, baseType: !46, size: 64, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_member, scope: !1506, file: !1475, line: 241, baseType: !1536, size: 320)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1506, file: !1475, line: 241, size: 320, elements: !1537)
!1537 = !{!1538, !1539, !1540, !1541, !1542}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1536, file: !1475, line: 242, baseType: !50, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1536, file: !1475, line: 243, baseType: !50, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1536, file: !1475, line: 244, baseType: !1525, size: 64, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1536, file: !1475, line: 245, baseType: !1528, size: 64, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1536, file: !1475, line: 246, baseType: !169, size: 64, offset: 256)
!1543 = !DIDerivedType(tag: DW_TAG_member, scope: !1474, file: !1475, line: 254, baseType: !1544, size: 256, offset: 1344)
!1544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1474, file: !1475, line: 254, size: 256, elements: !1545)
!1545 = !{!1546, !1552}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1544, file: !1475, line: 255, baseType: !1547, size: 256)
!1547 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1475, line: 128, size: 256, elements: !1548)
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1547, file: !1475, line: 129, baseType: !75, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1547, file: !1475, line: 130, baseType: !1551, size: 256)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 256, elements: !55)
!1552 = !DIDerivedType(tag: DW_TAG_member, scope: !1544, file: !1475, line: 256, baseType: !1553, size: 256)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1544, file: !1475, line: 256, size: 256, elements: !1554)
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1553, file: !1475, line: 258, baseType: !13, size: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1553, file: !1475, line: 259, baseType: !1557, size: 128, offset: 128)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1558, line: 22, size: 128, elements: !1559)
!1558 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1559 = !{!1560, !1563}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1557, file: !1558, line: 23, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1558, line: 23, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1557, file: !1558, line: 24, baseType: !50, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1474, file: !1475, line: 274, baseType: !1565, size: 64, offset: 1600)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1475, line: 170, size: 192, elements: !1567)
!1567 = !{!1568, !1577, !1578}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1566, file: !1475, line: 171, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1475, line: 165, baseType: !1570)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!6, !1473, !1573, !1575, !1473}
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1526)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1547)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1566, file: !1475, line: 172, baseType: !1473, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1566, file: !1475, line: 173, baseType: !1525, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1445, file: !1446, line: 138, baseType: !1473, size: 64, offset: 768)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1445, file: !1446, line: 139, baseType: !1473, size: 64, offset: 832)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1445, file: !1446, line: 140, baseType: !1473, size: 64, offset: 896)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1445, file: !1446, line: 145, baseType: !1583, size: 64, offset: 960)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1585, line: 13, size: 896, elements: !1586)
!1585 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1586 = !{!1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1584, file: !1585, line: 14, baseType: !1115, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1584, file: !1585, line: 15, baseType: !638, size: 32, offset: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1584, file: !1585, line: 16, baseType: !638, size: 32, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1584, file: !1585, line: 21, baseType: !662, size: 64, offset: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1584, file: !1585, line: 27, baseType: !50, size: 64, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1584, file: !1585, line: 28, baseType: !50, size: 64, offset: 256)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1584, file: !1585, line: 29, baseType: !662, size: 64, offset: 320)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1584, file: !1585, line: 32, baseType: !528, size: 128, offset: 384)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1584, file: !1585, line: 33, baseType: !321, size: 32, offset: 512)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1584, file: !1585, line: 37, baseType: !662, size: 64, offset: 576)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1584, file: !1585, line: 44, baseType: !1598, size: 256, offset: 640)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1599, line: 15, size: 256, elements: !1600)
!1599 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1600 = !{!1601, !1602, !1603, !1604, !1605, !1606, !1607}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1598, file: !1599, line: 16, baseType: !671)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1598, file: !1599, line: 18, baseType: !6, size: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1598, file: !1599, line: 19, baseType: !6, size: 32, offset: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1598, file: !1599, line: 20, baseType: !6, size: 32, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1598, file: !1599, line: 21, baseType: !6, size: 32, offset: 96)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1598, file: !1599, line: 22, baseType: !50, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1598, file: !1599, line: 23, baseType: !50, size: 64, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1445, file: !1446, line: 146, baseType: !1609, size: 64, offset: 1024)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !613, line: 516, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1445, file: !1446, line: 147, baseType: !1612, size: 64, offset: 1088)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1446, line: 25, size: 64, elements: !1614)
!1614 = !{!1615, !1616, !1617}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1613, file: !1446, line: 26, baseType: !638, size: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1613, file: !1446, line: 27, baseType: !6, size: 32, offset: 32)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1613, file: !1446, line: 28, baseType: !1618, offset: 64)
!1618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, elements: !1619)
!1619 = !{!1620}
!1620 = !DISubrange(count: 0)
!1621 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !1446, line: 149, baseType: !1622, size: 128, offset: 1152)
!1622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1445, file: !1446, line: 149, size: 128, elements: !1623)
!1623 = !{!1624, !1625}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1622, file: !1446, line: 150, baseType: !6, size: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1622, file: !1446, line: 151, baseType: !259, size: 128, align: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1102, file: !1103, line: 926, baseType: !1443, size: 64, offset: 8576)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1102, file: !1103, line: 929, baseType: !1443, size: 64, offset: 8640)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1102, file: !1103, line: 933, baseType: !1473, size: 64, offset: 8704)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1102, file: !1103, line: 943, baseType: !1630, size: 128, offset: 8768)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 128, elements: !1631)
!1631 = !{!1632}
!1632 = !DISubrange(count: 16)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1102, file: !1103, line: 945, baseType: !1634, size: 64, offset: 8896)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1103, line: 49, flags: DIFlagFwdDecl)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1102, file: !1103, line: 956, baseType: !1637, size: 64, offset: 8960)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1103, line: 45, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1102, file: !1103, line: 959, baseType: !1640, size: 64, offset: 9024)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1103, line: 959, flags: DIFlagFwdDecl)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1102, file: !1103, line: 962, baseType: !1643, size: 64, offset: 9088)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1103, line: 66, flags: DIFlagFwdDecl)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1102, file: !1103, line: 966, baseType: !1646, size: 64, offset: 9152)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1103, line: 50, flags: DIFlagFwdDecl)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1102, file: !1103, line: 969, baseType: !1649, size: 64, offset: 9216)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1651, line: 82, size: 7296, elements: !1652)
!1651 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1652 = !{!1653, !1654, !1655, !1656, !1657, !1658, !1659, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1688, !1697, !1698, !1700, !1701, !1702, !1705, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1735, !1736, !1743, !1744, !1745, !1746, !1747, !1748}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1650, file: !1651, line: 83, baseType: !1115, size: 32)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1650, file: !1651, line: 84, baseType: !638, size: 32, offset: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1650, file: !1651, line: 85, baseType: !6, size: 32, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1650, file: !1651, line: 86, baseType: !13, size: 128, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1650, file: !1651, line: 88, baseType: !1377, size: 128, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1650, file: !1651, line: 91, baseType: !1101, size: 64, offset: 384)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1650, file: !1651, line: 94, baseType: !1660, size: 192, offset: 448)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1661, line: 30, size: 192, elements: !1662)
!1661 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1660, file: !1661, line: 31, baseType: !13, size: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1660, file: !1661, line: 32, baseType: !1665, size: 64, offset: 128)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1666, line: 25, baseType: !1667)
!1666 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1666, line: 23, size: 64, elements: !1668)
!1668 = !{!1669}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1667, file: !1666, line: 24, baseType: !1260, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1650, file: !1651, line: 97, baseType: !524, size: 64, offset: 640)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1650, file: !1651, line: 100, baseType: !6, size: 32, offset: 704)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1650, file: !1651, line: 106, baseType: !6, size: 32, offset: 736)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1650, file: !1651, line: 107, baseType: !1101, size: 64, offset: 768)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1650, file: !1651, line: 110, baseType: !6, size: 32, offset: 832)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1650, file: !1651, line: 111, baseType: !76, size: 32, offset: 864)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1650, file: !1651, line: 122, baseType: !76, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1650, file: !1651, line: 123, baseType: !76, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1650, file: !1651, line: 128, baseType: !6, size: 32, offset: 928)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1650, file: !1651, line: 129, baseType: !13, size: 128, offset: 960)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1650, file: !1651, line: 132, baseType: !1177, size: 512, offset: 1088)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1650, file: !1651, line: 133, baseType: !1186, size: 64, offset: 1600)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1650, file: !1651, line: 140, baseType: !1683, size: 256, offset: 1664)
!1683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1684, size: 256, elements: !1465)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1651, line: 38, size: 128, elements: !1685)
!1685 = !{!1686, !1687}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1684, file: !1651, line: 39, baseType: !39, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1684, file: !1651, line: 40, baseType: !39, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1650, file: !1651, line: 146, baseType: !1689, size: 192, offset: 1920)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1651, line: 66, size: 192, elements: !1690)
!1690 = !{!1691}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1689, file: !1651, line: 67, baseType: !1692, size: 192)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1651, line: 47, size: 192, elements: !1693)
!1693 = !{!1694, !1695, !1696}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1692, file: !1651, line: 48, baseType: !664, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1692, file: !1651, line: 49, baseType: !664, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1692, file: !1651, line: 50, baseType: !664, size: 64, offset: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1650, file: !1651, line: 150, baseType: !1426, size: 640, offset: 2112)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1650, file: !1651, line: 153, baseType: !1699, size: 256, offset: 2752)
!1699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1366, size: 256, elements: !55)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1650, file: !1651, line: 159, baseType: !1366, size: 64, offset: 3008)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1650, file: !1651, line: 162, baseType: !6, size: 32, offset: 3072)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1650, file: !1651, line: 164, baseType: !1703, size: 64, offset: 3136)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1651, line: 164, flags: DIFlagFwdDecl)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1650, file: !1651, line: 175, baseType: !1706, size: 32, offset: 3200)
!1706 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !282, line: 805, baseType: !1707)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !282, line: 798, size: 32, elements: !1708)
!1708 = !{!1709, !1710}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1707, file: !282, line: 803, baseType: !281, size: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1707, file: !282, line: 804, baseType: !128, offset: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1650, file: !1651, line: 176, baseType: !39, size: 64, offset: 3264)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1650, file: !1651, line: 176, baseType: !39, size: 64, offset: 3328)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1650, file: !1651, line: 176, baseType: !39, size: 64, offset: 3392)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1650, file: !1651, line: 176, baseType: !39, size: 64, offset: 3456)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1650, file: !1651, line: 177, baseType: !39, size: 64, offset: 3520)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1650, file: !1651, line: 178, baseType: !39, size: 64, offset: 3584)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1650, file: !1651, line: 179, baseType: !1414, size: 128, offset: 3648)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1650, file: !1651, line: 180, baseType: !50, size: 64, offset: 3776)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1650, file: !1651, line: 180, baseType: !50, size: 64, offset: 3840)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1650, file: !1651, line: 180, baseType: !50, size: 64, offset: 3904)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1650, file: !1651, line: 180, baseType: !50, size: 64, offset: 3968)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1650, file: !1651, line: 181, baseType: !50, size: 64, offset: 4032)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1650, file: !1651, line: 181, baseType: !50, size: 64, offset: 4096)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1650, file: !1651, line: 181, baseType: !50, size: 64, offset: 4160)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1650, file: !1651, line: 181, baseType: !50, size: 64, offset: 4224)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1650, file: !1651, line: 182, baseType: !50, size: 64, offset: 4288)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1650, file: !1651, line: 182, baseType: !50, size: 64, offset: 4352)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1650, file: !1651, line: 182, baseType: !50, size: 64, offset: 4416)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1650, file: !1651, line: 182, baseType: !50, size: 64, offset: 4480)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1650, file: !1651, line: 183, baseType: !50, size: 64, offset: 4544)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1650, file: !1651, line: 183, baseType: !50, size: 64, offset: 4608)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1650, file: !1651, line: 184, baseType: !1733, offset: 4672)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1734, line: 12, elements: !142)
!1734 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1650, file: !1651, line: 192, baseType: !43, size: 64, offset: 4672)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1650, file: !1651, line: 203, baseType: !1737, size: 2048, offset: 4736)
!1737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1738, size: 2048, elements: !1631)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1739, line: 43, size: 128, elements: !1740)
!1739 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1740 = !{!1741, !1742}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1738, file: !1739, line: 44, baseType: !217, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1738, file: !1739, line: 45, baseType: !217, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1650, file: !1651, line: 220, baseType: !376, size: 8, offset: 6784)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1650, file: !1651, line: 221, baseType: !1090, size: 16, offset: 6800)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1650, file: !1651, line: 222, baseType: !1090, size: 16, offset: 6816)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1650, file: !1651, line: 224, baseType: !872, size: 64, offset: 6848)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1650, file: !1651, line: 227, baseType: !1074, size: 192, offset: 6912)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1650, file: !1651, line: 233, baseType: !1074, size: 192, offset: 7104)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1102, file: !1103, line: 970, baseType: !1750, size: 64, offset: 9280)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1651, line: 20, size: 16576, elements: !1752)
!1752 = !{!1753, !1754, !1755, !1756}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1751, file: !1651, line: 21, baseType: !128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1751, file: !1651, line: 22, baseType: !1115, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1751, file: !1651, line: 23, baseType: !1377, size: 128, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1751, file: !1651, line: 24, baseType: !1757, size: 16384, offset: 192)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1758, size: 16384, elements: !174)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1661, line: 49, size: 256, elements: !1759)
!1759 = !{!1760}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1758, file: !1661, line: 50, baseType: !1761, size: 256)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1661, line: 35, size: 256, elements: !1762)
!1762 = !{!1763, !1770, !1771, !1777}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1761, file: !1661, line: 37, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1765, line: 19, baseType: !1766)
!1765 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1765, line: 18, baseType: !1768)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{null, !6}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1761, file: !1661, line: 38, baseType: !50, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1761, file: !1661, line: 44, baseType: !1772, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1765, line: 22, baseType: !1773)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1765, line: 21, baseType: !1775)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{null}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1761, file: !1661, line: 46, baseType: !1665, size: 64, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1102, file: !1103, line: 971, baseType: !1665, size: 64, offset: 9344)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1102, file: !1103, line: 972, baseType: !1665, size: 64, offset: 9408)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1102, file: !1103, line: 974, baseType: !1665, size: 64, offset: 9472)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1102, file: !1103, line: 975, baseType: !1660, size: 192, offset: 9536)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1102, file: !1103, line: 976, baseType: !50, size: 64, offset: 9728)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1102, file: !1103, line: 977, baseType: !215, size: 64, offset: 9792)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1102, file: !1103, line: 978, baseType: !76, size: 32, offset: 9856)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1102, file: !1103, line: 980, baseType: !262, size: 64, offset: 9920)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1102, file: !1103, line: 989, baseType: !1787, size: 128, offset: 9984)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1788, line: 35, size: 128, elements: !1789)
!1788 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1789 = !{!1790, !1791, !1792}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1787, file: !1788, line: 36, baseType: !6, size: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1787, file: !1788, line: 37, baseType: !638, size: 32, offset: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1787, file: !1788, line: 38, baseType: !1793, size: 64, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1788, line: 23, flags: DIFlagFwdDecl)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1102, file: !1103, line: 992, baseType: !39, size: 64, offset: 10112)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1102, file: !1103, line: 993, baseType: !39, size: 64, offset: 10176)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1102, file: !1103, line: 996, baseType: !128, offset: 10240)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1102, file: !1103, line: 999, baseType: !671, offset: 10240)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1102, file: !1103, line: 1001, baseType: !1800, size: 64, offset: 10240)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1103, line: 636, size: 64, elements: !1801)
!1801 = !{!1802}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1800, file: !1103, line: 637, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1102, file: !1103, line: 1005, baseType: !643, size: 128, offset: 10304)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1102, file: !1103, line: 1007, baseType: !1101, size: 64, offset: 10432)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1102, file: !1103, line: 1009, baseType: !1807, size: 64, offset: 10496)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1103, line: 1009, flags: DIFlagFwdDecl)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1102, file: !1103, line: 1043, baseType: !75, size: 64, offset: 10560)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1102, file: !1103, line: 1046, baseType: !1811, size: 64, offset: 10624)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1103, line: 41, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1102, file: !1103, line: 1050, baseType: !1814, size: 64, offset: 10688)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1103, line: 42, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1102, file: !1103, line: 1054, baseType: !1817, size: 64, offset: 10752)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1103, line: 55, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1102, file: !1103, line: 1056, baseType: !1820, size: 64, offset: 10816)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1103, line: 40, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1102, file: !1103, line: 1058, baseType: !1823, size: 64, offset: 10880)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1825, line: 99, size: 704, elements: !1826)
!1825 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1826 = !{!1827, !1828, !1829, !1830, !1831, !1832, !1833, !1852, !1853}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1824, file: !1825, line: 100, baseType: !662, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1824, file: !1825, line: 101, baseType: !638, size: 32, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1824, file: !1825, line: 102, baseType: !638, size: 32, offset: 96)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1824, file: !1825, line: 105, baseType: !128, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1824, file: !1825, line: 107, baseType: !106, size: 16, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1824, file: !1825, line: 109, baseType: !629, size: 128, offset: 192)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1824, file: !1825, line: 110, baseType: !1834, size: 64, offset: 320)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1825, line: 73, size: 448, elements: !1836)
!1836 = !{!1837, !1840, !1841, !1846, !1851}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1835, file: !1825, line: 74, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1825, line: 74, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1835, file: !1825, line: 75, baseType: !1823, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1835, file: !1825, line: 83, baseType: !1842, size: 128, offset: 128)
!1842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1835, file: !1825, line: 83, size: 128, elements: !1843)
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1842, file: !1825, line: 84, baseType: !13, size: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1842, file: !1825, line: 85, baseType: !833, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, scope: !1835, file: !1825, line: 87, baseType: !1847, size: 128, offset: 256)
!1847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1835, file: !1825, line: 87, size: 128, elements: !1848)
!1848 = !{!1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1847, file: !1825, line: 88, baseType: !528, size: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1847, file: !1825, line: 89, baseType: !259, size: 128, align: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1835, file: !1825, line: 92, baseType: !76, size: 32, offset: 384)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1824, file: !1825, line: 111, baseType: !524, size: 64, offset: 384)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1824, file: !1825, line: 113, baseType: !1854, size: 256, offset: 448)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1855, line: 102, size: 256, elements: !1856)
!1855 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1856 = !{!1857, !1858, !1859}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1854, file: !1855, line: 103, baseType: !662, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1854, file: !1855, line: 104, baseType: !13, size: 128, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1854, file: !1855, line: 105, baseType: !1860, size: 64, offset: 192)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1855, line: 21, baseType: !1861)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !1864}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1102, file: !1103, line: 1061, baseType: !1866, size: 64, offset: 10944)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1103, line: 43, flags: DIFlagFwdDecl)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1102, file: !1103, line: 1064, baseType: !50, size: 64, offset: 11008)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1102, file: !1103, line: 1065, baseType: !1870, size: 64, offset: 11072)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1661, line: 14, baseType: !1872)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1661, line: 12, size: 384, elements: !1873)
!1873 = !{!1874}
!1874 = !DIDerivedType(tag: DW_TAG_member, scope: !1872, file: !1661, line: 13, baseType: !1875, size: 384)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1872, file: !1661, line: 13, size: 384, elements: !1876)
!1876 = !{!1877, !1878, !1879, !1880}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1875, file: !1661, line: 13, baseType: !6, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1875, file: !1661, line: 13, baseType: !6, size: 32, offset: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1875, file: !1661, line: 13, baseType: !6, size: 32, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1875, file: !1661, line: 13, baseType: !1881, size: 256, offset: 128)
!1881 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1882, line: 32, size: 256, elements: !1883)
!1882 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1883 = !{!1884, !1889, !1902, !1908, !1917, !1937, !1942}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1881, file: !1882, line: 37, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1881, file: !1882, line: 34, size: 64, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1885, file: !1882, line: 35, baseType: !1355, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1885, file: !1882, line: 36, baseType: !327, size: 32, offset: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1881, file: !1882, line: 45, baseType: !1890, size: 192)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1881, file: !1882, line: 40, size: 192, elements: !1891)
!1891 = !{!1892, !1894, !1895, !1901}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1890, file: !1882, line: 41, baseType: !1893, size: 32)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !202, line: 95, baseType: !6)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1890, file: !1882, line: 42, baseType: !6, size: 32, offset: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1890, file: !1882, line: 43, baseType: !1896, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1882, line: 11, baseType: !1897)
!1897 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1882, line: 8, size: 64, elements: !1898)
!1898 = !{!1899, !1900}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1897, file: !1882, line: 9, baseType: !6, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1897, file: !1882, line: 10, baseType: !75, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1890, file: !1882, line: 44, baseType: !6, size: 32, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1881, file: !1882, line: 52, baseType: !1903, size: 128)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1881, file: !1882, line: 48, size: 128, elements: !1904)
!1904 = !{!1905, !1906, !1907}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1903, file: !1882, line: 49, baseType: !1355, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1903, file: !1882, line: 50, baseType: !327, size: 32, offset: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1903, file: !1882, line: 51, baseType: !1896, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1881, file: !1882, line: 61, baseType: !1909, size: 256)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1881, file: !1882, line: 55, size: 256, elements: !1910)
!1910 = !{!1911, !1912, !1913, !1914, !1916}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1909, file: !1882, line: 56, baseType: !1355, size: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1909, file: !1882, line: 57, baseType: !327, size: 32, offset: 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1909, file: !1882, line: 58, baseType: !6, size: 32, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1909, file: !1882, line: 59, baseType: !1915, size: 64, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !202, line: 94, baseType: !203)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1909, file: !1882, line: 60, baseType: !1915, size: 64, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1881, file: !1882, line: 95, baseType: !1918, size: 256)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1881, file: !1882, line: 64, size: 256, elements: !1919)
!1919 = !{!1920, !1921}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1918, file: !1882, line: 65, baseType: !75, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, scope: !1918, file: !1882, line: 77, baseType: !1922, size: 192, offset: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1918, file: !1882, line: 77, size: 192, elements: !1923)
!1923 = !{!1924, !1925, !1932}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1922, file: !1882, line: 82, baseType: !1090, size: 16)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1922, file: !1882, line: 88, baseType: !1926, size: 192)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1922, file: !1882, line: 84, size: 192, elements: !1927)
!1927 = !{!1928, !1930, !1931}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1926, file: !1882, line: 85, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 64, elements: !1220)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1926, file: !1882, line: 86, baseType: !75, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1926, file: !1882, line: 87, baseType: !75, size: 64, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1922, file: !1882, line: 93, baseType: !1933, size: 96)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1922, file: !1882, line: 90, size: 96, elements: !1934)
!1934 = !{!1935, !1936}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1933, file: !1882, line: 91, baseType: !1929, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1933, file: !1882, line: 92, baseType: !83, size: 32, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1881, file: !1882, line: 101, baseType: !1938, size: 128)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1881, file: !1882, line: 98, size: 128, elements: !1939)
!1939 = !{!1940, !1941}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1938, file: !1882, line: 99, baseType: !204, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1938, file: !1882, line: 100, baseType: !6, size: 32, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1881, file: !1882, line: 108, baseType: !1943, size: 128)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1881, file: !1882, line: 104, size: 128, elements: !1944)
!1944 = !{!1945, !1946, !1947}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1943, file: !1882, line: 105, baseType: !75, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1943, file: !1882, line: 106, baseType: !6, size: 32, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1943, file: !1882, line: 107, baseType: !76, size: 32, offset: 96)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1102, file: !1103, line: 1067, baseType: !1733, offset: 11136)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1102, file: !1103, line: 1099, baseType: !1950, size: 64, offset: 11136)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1103, line: 56, flags: DIFlagFwdDecl)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1102, file: !1103, line: 1103, baseType: !13, size: 128, offset: 11200)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1102, file: !1103, line: 1104, baseType: !1954, size: 64, offset: 11328)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1103, line: 46, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1102, file: !1103, line: 1105, baseType: !1074, size: 192, offset: 11392)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1102, file: !1103, line: 1106, baseType: !76, size: 32, offset: 11584)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1102, file: !1103, line: 1109, baseType: !1959, size: 128, offset: 11648)
!1959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1960, size: 128, elements: !1465)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1103, line: 51, flags: DIFlagFwdDecl)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1102, file: !1103, line: 1110, baseType: !1074, size: 192, offset: 11776)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1102, file: !1103, line: 1111, baseType: !13, size: 128, offset: 11968)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1102, file: !1103, line: 1173, baseType: !1965, size: 64, offset: 12096)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1967, line: 62, size: 256, align: 256, elements: !1968)
!1967 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1968 = !{!1969, !1970, !1971, !1976}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1966, file: !1967, line: 75, baseType: !83, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1966, file: !1967, line: 90, baseType: !83, size: 32, offset: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1966, file: !1967, line: 124, baseType: !1972, size: 64, offset: 64)
!1972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1966, file: !1967, line: 109, size: 64, elements: !1973)
!1973 = !{!1974, !1975}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1972, file: !1967, line: 110, baseType: !41, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1972, file: !1967, line: 112, baseType: !41, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1966, file: !1967, line: 144, baseType: !83, size: 32, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1102, file: !1103, line: 1174, baseType: !82, size: 32, offset: 12160)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1102, file: !1103, line: 1179, baseType: !50, size: 64, offset: 12224)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1102, file: !1103, line: 1182, baseType: !1980, size: 128, offset: 12288)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1054, line: 76, size: 128, elements: !1981)
!1981 = !{!1982, !1987, !1988}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1980, file: !1054, line: 85, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1984, line: 7, size: 64, elements: !1985)
!1984 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1985 = !{!1986}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1983, file: !1984, line: 12, baseType: !1257, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1980, file: !1054, line: 88, baseType: !376, size: 8, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1980, file: !1054, line: 95, baseType: !376, size: 8, offset: 72)
!1989 = !DIDerivedType(tag: DW_TAG_member, scope: !1102, file: !1103, line: 1184, baseType: !1990, size: 128, offset: 12416)
!1990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1102, file: !1103, line: 1184, size: 128, elements: !1991)
!1991 = !{!1992, !1993}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1990, file: !1103, line: 1185, baseType: !1115, size: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1990, file: !1103, line: 1186, baseType: !259, size: 128, align: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1102, file: !1103, line: 1190, baseType: !1995, size: 64, offset: 12544)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1103, line: 53, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1102, file: !1103, line: 1192, baseType: !1998, size: 128, offset: 12608)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1054, line: 64, size: 128, elements: !1999)
!1999 = !{!2000, !2001, !2002}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1998, file: !1054, line: 65, baseType: !611, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1998, file: !1054, line: 67, baseType: !83, size: 32, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1998, file: !1054, line: 68, baseType: !83, size: 32, offset: 96)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1102, file: !1103, line: 1206, baseType: !6, size: 32, offset: 12736)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1102, file: !1103, line: 1207, baseType: !6, size: 32, offset: 12768)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1102, file: !1103, line: 1209, baseType: !50, size: 64, offset: 12800)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1102, file: !1103, line: 1219, baseType: !39, size: 64, offset: 12864)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1102, file: !1103, line: 1220, baseType: !39, size: 64, offset: 12928)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1102, file: !1103, line: 1317, baseType: !6, size: 32, offset: 12992)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1102, file: !1103, line: 1319, baseType: !1101, size: 64, offset: 13056)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1102, file: !1103, line: 1322, baseType: !2011, size: 64, offset: 13120)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2013, line: 56, size: 512, elements: !2014)
!2013 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2014 = !{!2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2012, file: !2013, line: 57, baseType: !2011, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2012, file: !2013, line: 58, baseType: !75, size: 64, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2012, file: !2013, line: 59, baseType: !50, size: 64, offset: 128)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2012, file: !2013, line: 60, baseType: !50, size: 64, offset: 192)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2012, file: !2013, line: 61, baseType: !711, size: 64, offset: 256)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2012, file: !2013, line: 62, baseType: !76, size: 32, offset: 320)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2012, file: !2013, line: 63, baseType: !38, size: 64, offset: 384)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2012, file: !2013, line: 64, baseType: !2023, size: 64, offset: 448)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1102, file: !1103, line: 1326, baseType: !1115, size: 32, offset: 13184)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1102, file: !1103, line: 1342, baseType: !75, size: 64, offset: 13248)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1102, file: !1103, line: 1343, baseType: !41, size: 64, offset: 13312)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1102, file: !1103, line: 1344, baseType: !39, size: 64, offset: 13376)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1102, file: !1103, line: 1345, baseType: !41, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1102, file: !1103, line: 1346, baseType: !41, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1102, file: !1103, line: 1347, baseType: !41, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1102, file: !1103, line: 1348, baseType: !259, size: 128, align: 64, offset: 13504)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1102, file: !1103, line: 1358, baseType: !2034, size: 34816, offset: 13824)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2035, line: 485, size: 34816, elements: !2036)
!2035 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2036 = !{!2037, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2066, !2067, !2068, !2069, !2070, !2071, !2074, !2075, !2076}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2034, file: !2035, line: 487, baseType: !2038, size: 192)
!2038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2039, size: 192, elements: !170)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2040, line: 16, size: 64, elements: !2041)
!2040 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2041 = !{!2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2039, file: !2040, line: 17, baseType: !750, size: 16)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2039, file: !2040, line: 18, baseType: !750, size: 16, offset: 16)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2039, file: !2040, line: 19, baseType: !750, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2039, file: !2040, line: 19, baseType: !750, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2039, file: !2040, line: 19, baseType: !750, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2039, file: !2040, line: 19, baseType: !750, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2039, file: !2040, line: 19, baseType: !750, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2039, file: !2040, line: 20, baseType: !750, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2039, file: !2040, line: 20, baseType: !750, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2039, file: !2040, line: 20, baseType: !750, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2039, file: !2040, line: 20, baseType: !750, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2039, file: !2040, line: 20, baseType: !750, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2039, file: !2040, line: 20, baseType: !750, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2034, file: !2035, line: 491, baseType: !50, size: 64, offset: 192)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2034, file: !2035, line: 495, baseType: !106, size: 16, offset: 256)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2034, file: !2035, line: 496, baseType: !106, size: 16, offset: 272)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2034, file: !2035, line: 497, baseType: !106, size: 16, offset: 288)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2034, file: !2035, line: 498, baseType: !106, size: 16, offset: 304)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2034, file: !2035, line: 502, baseType: !50, size: 64, offset: 320)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2034, file: !2035, line: 503, baseType: !50, size: 64, offset: 384)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2034, file: !2035, line: 514, baseType: !2063, size: 256, offset: 448)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2064, size: 256, elements: !55)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2035, line: 483, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2034, file: !2035, line: 516, baseType: !50, size: 64, offset: 704)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2034, file: !2035, line: 518, baseType: !50, size: 64, offset: 768)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2034, file: !2035, line: 520, baseType: !50, size: 64, offset: 832)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2034, file: !2035, line: 521, baseType: !50, size: 64, offset: 896)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2034, file: !2035, line: 522, baseType: !50, size: 64, offset: 960)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2034, file: !2035, line: 528, baseType: !2072, size: 64, offset: 1024)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2035, line: 10, flags: DIFlagFwdDecl)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2034, file: !2035, line: 535, baseType: !50, size: 64, offset: 1088)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2034, file: !2035, line: 537, baseType: !76, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2034, file: !2035, line: 540, baseType: !2077, size: 33280, offset: 1536)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2078, line: 317, size: 33280, elements: !2079)
!2078 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2079 = !{!2080, !2081, !2082}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2077, file: !2078, line: 330, baseType: !76, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2077, file: !2078, line: 337, baseType: !50, size: 64, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2077, file: !2078, line: 348, baseType: !2083, size: 32768, offset: 512)
!2083 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2078, line: 304, size: 32768, elements: !2084)
!2084 = !{!2085, !2100, !2139, !2189, !2202}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2083, file: !2078, line: 305, baseType: !2086, size: 896)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2078, line: 12, size: 896, elements: !2087)
!2087 = !{!2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2099}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2086, file: !2078, line: 13, baseType: !82, size: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2086, file: !2078, line: 14, baseType: !82, size: 32, offset: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2086, file: !2078, line: 15, baseType: !82, size: 32, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2086, file: !2078, line: 16, baseType: !82, size: 32, offset: 96)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2086, file: !2078, line: 17, baseType: !82, size: 32, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2086, file: !2078, line: 18, baseType: !82, size: 32, offset: 160)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2086, file: !2078, line: 19, baseType: !82, size: 32, offset: 192)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2086, file: !2078, line: 22, baseType: !2096, size: 640, offset: 224)
!2096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 640, elements: !2097)
!2097 = !{!2098}
!2098 = !DISubrange(count: 20)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2086, file: !2078, line: 25, baseType: !82, size: 32, offset: 864)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2083, file: !2078, line: 306, baseType: !2101, size: 4096, align: 128)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2078, line: 34, size: 4096, align: 128, elements: !2102)
!2102 = !{!2103, !2104, !2105, !2106, !2107, !2122, !2123, !2124, !2128, !2130, !2134}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2101, file: !2078, line: 35, baseType: !750, size: 16)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2101, file: !2078, line: 36, baseType: !750, size: 16, offset: 16)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2101, file: !2078, line: 37, baseType: !750, size: 16, offset: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2101, file: !2078, line: 38, baseType: !750, size: 16, offset: 48)
!2107 = !DIDerivedType(tag: DW_TAG_member, scope: !2101, file: !2078, line: 39, baseType: !2108, size: 128, offset: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2101, file: !2078, line: 39, size: 128, elements: !2109)
!2109 = !{!2110, !2115}
!2110 = !DIDerivedType(tag: DW_TAG_member, scope: !2108, file: !2078, line: 40, baseType: !2111, size: 128)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2108, file: !2078, line: 40, size: 128, elements: !2112)
!2112 = !{!2113, !2114}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2111, file: !2078, line: 41, baseType: !39, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2111, file: !2078, line: 42, baseType: !39, size: 64, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, scope: !2108, file: !2078, line: 44, baseType: !2116, size: 128)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2108, file: !2078, line: 44, size: 128, elements: !2117)
!2117 = !{!2118, !2119, !2120, !2121}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2116, file: !2078, line: 45, baseType: !82, size: 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2116, file: !2078, line: 46, baseType: !82, size: 32, offset: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2116, file: !2078, line: 47, baseType: !82, size: 32, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2116, file: !2078, line: 48, baseType: !82, size: 32, offset: 96)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2101, file: !2078, line: 51, baseType: !82, size: 32, offset: 192)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2101, file: !2078, line: 52, baseType: !82, size: 32, offset: 224)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2101, file: !2078, line: 55, baseType: !2125, size: 1024, offset: 256)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 1024, elements: !2126)
!2126 = !{!2127}
!2127 = !DISubrange(count: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2101, file: !2078, line: 58, baseType: !2129, size: 2048, offset: 1280)
!2129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 2048, elements: !174)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2101, file: !2078, line: 60, baseType: !2131, size: 384, offset: 3328)
!2131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 384, elements: !2132)
!2132 = !{!2133}
!2133 = !DISubrange(count: 12)
!2134 = !DIDerivedType(tag: DW_TAG_member, scope: !2101, file: !2078, line: 62, baseType: !2135, size: 384, offset: 3712)
!2135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2101, file: !2078, line: 62, size: 384, elements: !2136)
!2136 = !{!2137, !2138}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2135, file: !2078, line: 63, baseType: !2131, size: 384)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2135, file: !2078, line: 64, baseType: !2131, size: 384)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2083, file: !2078, line: 307, baseType: !2140, size: 1088)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2078, line: 79, size: 1088, elements: !2141)
!2141 = !{!2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2188}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2140, file: !2078, line: 80, baseType: !82, size: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2140, file: !2078, line: 81, baseType: !82, size: 32, offset: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2140, file: !2078, line: 82, baseType: !82, size: 32, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2140, file: !2078, line: 83, baseType: !82, size: 32, offset: 96)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2140, file: !2078, line: 84, baseType: !82, size: 32, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2140, file: !2078, line: 85, baseType: !82, size: 32, offset: 160)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2140, file: !2078, line: 86, baseType: !82, size: 32, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2140, file: !2078, line: 88, baseType: !2096, size: 640, offset: 224)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2140, file: !2078, line: 89, baseType: !1242, size: 8, offset: 864)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2140, file: !2078, line: 90, baseType: !1242, size: 8, offset: 872)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2140, file: !2078, line: 91, baseType: !1242, size: 8, offset: 880)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2140, file: !2078, line: 92, baseType: !1242, size: 8, offset: 888)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2140, file: !2078, line: 93, baseType: !1242, size: 8, offset: 896)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2140, file: !2078, line: 94, baseType: !1242, size: 8, offset: 904)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2140, file: !2078, line: 95, baseType: !2157, size: 64, offset: 960)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2159, line: 11, size: 128, elements: !2160)
!2159 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2160 = !{!2161, !2162}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2158, file: !2159, line: 12, baseType: !204, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2158, file: !2159, line: 13, baseType: !2163, size: 64, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2165, line: 56, size: 1344, elements: !2166)
!2165 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2166 = !{!2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2164, file: !2165, line: 61, baseType: !50, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2164, file: !2165, line: 62, baseType: !50, size: 64, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2164, file: !2165, line: 63, baseType: !50, size: 64, offset: 128)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2164, file: !2165, line: 64, baseType: !50, size: 64, offset: 192)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2164, file: !2165, line: 65, baseType: !50, size: 64, offset: 256)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2164, file: !2165, line: 66, baseType: !50, size: 64, offset: 320)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2164, file: !2165, line: 68, baseType: !50, size: 64, offset: 384)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2164, file: !2165, line: 69, baseType: !50, size: 64, offset: 448)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2164, file: !2165, line: 70, baseType: !50, size: 64, offset: 512)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2164, file: !2165, line: 71, baseType: !50, size: 64, offset: 576)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2164, file: !2165, line: 72, baseType: !50, size: 64, offset: 640)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2164, file: !2165, line: 73, baseType: !50, size: 64, offset: 704)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2164, file: !2165, line: 74, baseType: !50, size: 64, offset: 768)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2164, file: !2165, line: 75, baseType: !50, size: 64, offset: 832)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2164, file: !2165, line: 76, baseType: !50, size: 64, offset: 896)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2164, file: !2165, line: 81, baseType: !50, size: 64, offset: 960)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2164, file: !2165, line: 83, baseType: !50, size: 64, offset: 1024)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2164, file: !2165, line: 84, baseType: !50, size: 64, offset: 1088)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2164, file: !2165, line: 85, baseType: !50, size: 64, offset: 1152)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2164, file: !2165, line: 86, baseType: !50, size: 64, offset: 1216)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2164, file: !2165, line: 87, baseType: !50, size: 64, offset: 1280)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2140, file: !2078, line: 96, baseType: !82, size: 32, offset: 1024)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2083, file: !2078, line: 308, baseType: !2190, size: 4608, align: 512)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2078, line: 289, size: 4608, align: 512, elements: !2191)
!2191 = !{!2192, !2193, !2200}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2190, file: !2078, line: 290, baseType: !2101, size: 4096, align: 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2190, file: !2078, line: 291, baseType: !2194, size: 512, offset: 4096)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2078, line: 268, size: 512, elements: !2195)
!2195 = !{!2196, !2197, !2198}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2194, file: !2078, line: 269, baseType: !39, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2194, file: !2078, line: 270, baseType: !39, size: 64, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2194, file: !2078, line: 271, baseType: !2199, size: 384, offset: 128)
!2199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 384, elements: !1521)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2190, file: !2078, line: 292, baseType: !2201, offset: 4608)
!2201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1242, elements: !1619)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2083, file: !2078, line: 309, baseType: !2203, size: 32768)
!2203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1242, size: 32768, elements: !2204)
!2204 = !{!2205}
!2205 = !DISubrange(count: 4096)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1098, file: !613, line: 378, baseType: !2207, size: 64, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1094, file: !613, line: 384, baseType: !1398, size: 192, offset: 192)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !876, file: !613, line: 500, baseType: !128, offset: 6656)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !876, file: !613, line: 501, baseType: !2211, size: 64, offset: 6656)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !613, line: 387, flags: DIFlagFwdDecl)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !876, file: !613, line: 516, baseType: !1609, size: 64, offset: 6720)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !876, file: !613, line: 519, baseType: !245, size: 64, offset: 6784)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !876, file: !613, line: 521, baseType: !2216, size: 64, offset: 6848)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !613, line: 521, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !876, file: !613, line: 545, baseType: !638, size: 32, offset: 6912)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !876, file: !613, line: 548, baseType: !376, size: 8, offset: 6944)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !876, file: !613, line: 550, baseType: !2221, offset: 6952)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2222, line: 142, elements: !142)
!2222 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !876, file: !613, line: 554, baseType: !1854, size: 256, offset: 6976)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !876, file: !613, line: 557, baseType: !82, size: 32, offset: 7232)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !873, file: !613, line: 565, baseType: !2226, offset: 7296)
!2226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, elements: !2227)
!2227 = !{!2228}
!2228 = !DISubrange(count: -1)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !869, file: !613, line: 151, baseType: !638, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !862, file: !613, line: 156, baseType: !128, offset: 256)
!2231 = !DIDerivedType(tag: DW_TAG_member, scope: !617, file: !613, line: 159, baseType: !2232, size: 128)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !617, file: !613, line: 159, size: 128, elements: !2233)
!2233 = !{!2234, !2305}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2232, file: !613, line: 161, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !2237, line: 110, size: 1152, elements: !2238)
!2237 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!2238 = !{!2239, !2249, !2270, !2271, !2272, !2279, !2280, !2292, !2293, !2294}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2236, file: !2237, line: 111, baseType: !2240, size: 384)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !2237, line: 19, size: 384, elements: !2241)
!2241 = !{!2242, !2244, !2245, !2246, !2247, !2248}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2240, file: !2237, line: 20, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2240, file: !2237, line: 21, baseType: !2243, size: 64, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2240, file: !2237, line: 22, baseType: !2243, size: 64, offset: 128)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2240, file: !2237, line: 23, baseType: !50, size: 64, offset: 192)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2240, file: !2237, line: 24, baseType: !50, size: 64, offset: 256)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2240, file: !2237, line: 25, baseType: !50, size: 64, offset: 320)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2236, file: !2237, line: 112, baseType: !2250, size: 64, offset: 384)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2252, line: 105, size: 128, elements: !2253)
!2252 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2253 = !{!2254, !2255}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2251, file: !2252, line: 110, baseType: !50, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2251, file: !2252, line: 118, baseType: !2256, size: 64, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2252, line: 95, size: 448, elements: !2258)
!2258 = !{!2259, !2260, !2265, !2266, !2267, !2268, !2269}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2257, file: !2252, line: 96, baseType: !662, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2257, file: !2252, line: 97, baseType: !2261, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2252, line: 60, baseType: !2263)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{null, !2250}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2257, file: !2252, line: 98, baseType: !2261, size: 64, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2257, file: !2252, line: 99, baseType: !376, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2257, file: !2252, line: 100, baseType: !376, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2257, file: !2252, line: 101, baseType: !259, size: 128, align: 64, offset: 256)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2257, file: !2252, line: 102, baseType: !2250, size: 64, offset: 384)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2236, file: !2237, line: 113, baseType: !2251, size: 128, offset: 448)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2236, file: !2237, line: 114, baseType: !1398, size: 192, offset: 576)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2236, file: !2237, line: 115, baseType: !2273, size: 32, offset: 768)
!2273 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !2237, line: 59, baseType: !76, size: 32, elements: !2274)
!2274 = !{!2275, !2276, !2277, !2278}
!2275 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!2276 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!2277 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!2278 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2236, file: !2237, line: 116, baseType: !76, size: 32, offset: 800)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2236, file: !2237, line: 117, baseType: !2281, size: 64, offset: 832)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2283)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !2237, line: 67, size: 256, elements: !2284)
!2284 = !{!2285, !2286, !2290, !2291}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2283, file: !2237, line: 73, baseType: !731, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2283, file: !2237, line: 78, baseType: !2287, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{null, !2235}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2283, file: !2237, line: 83, baseType: !2287, size: 64, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2283, file: !2237, line: 89, baseType: !925, size: 64, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2236, file: !2237, line: 118, baseType: !75, size: 64, offset: 896)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2236, file: !2237, line: 119, baseType: !6, size: 32, offset: 960)
!2294 = !DIDerivedType(tag: DW_TAG_member, scope: !2236, file: !2237, line: 120, baseType: !2295, size: 128, offset: 1024)
!2295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2236, file: !2237, line: 120, size: 128, elements: !2296)
!2296 = !{!2297, !2303}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2295, file: !2237, line: 121, baseType: !2298, size: 128)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2299, line: 6, size: 128, elements: !2300)
!2299 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2300 = !{!2301, !2302}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2298, file: !2299, line: 7, baseType: !39, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2298, file: !2299, line: 8, baseType: !39, size: 64, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2295, file: !2237, line: 122, baseType: !2304)
!2304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2298, elements: !1619)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2232, file: !613, line: 162, baseType: !75, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !617, file: !613, line: 176, baseType: !259, size: 128, align: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, scope: !612, file: !613, line: 179, baseType: !2308, size: 32, offset: 384)
!2308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !612, file: !613, line: 179, size: 32, elements: !2309)
!2309 = !{!2310, !2311, !2312, !2313}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2308, file: !613, line: 184, baseType: !638, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2308, file: !613, line: 192, baseType: !76, size: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2308, file: !613, line: 194, baseType: !76, size: 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2308, file: !613, line: 195, baseType: !6, size: 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !612, file: !613, line: 199, baseType: !638, size: 32, offset: 416)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !546, file: !247, line: 1964, baseType: !2316, size: 64, offset: 1344)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!204, !485, !2319}
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2321, line: 12, size: 256, elements: !2322)
!2321 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2322 = !{!2323, !2324, !2325, !2326, !2327}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2320, file: !2321, line: 13, baseType: !634, size: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2320, file: !2321, line: 16, baseType: !6, size: 32, offset: 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2320, file: !2321, line: 23, baseType: !50, size: 64, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2320, file: !2321, line: 30, baseType: !50, size: 64, offset: 128)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2320, file: !2321, line: 33, baseType: !2328, size: 64, offset: 192)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !613, line: 27, flags: DIFlagFwdDecl)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !546, file: !247, line: 1966, baseType: !2316, size: 64, offset: 1408)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !486, file: !247, line: 1424, baseType: !2332, size: 64, offset: 448)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2334)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !2335, line: 322, size: 704, elements: !2336)
!2335 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!2336 = !{!2337, !2388, !2392, !2396, !2397, !2398, !2399, !2400, !2405, !2410, !2414}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2334, file: !2335, line: 323, baseType: !2338, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!6, !2341}
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !2335, line: 294, size: 1600, elements: !2343)
!2343 = !{!2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2373, !2374, !2375}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2342, file: !2335, line: 295, baseType: !528, size: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2342, file: !2335, line: 296, baseType: !13, size: 128, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2342, file: !2335, line: 297, baseType: !13, size: 128, offset: 256)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2342, file: !2335, line: 298, baseType: !13, size: 128, offset: 384)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2342, file: !2335, line: 299, baseType: !1074, size: 192, offset: 512)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2342, file: !2335, line: 300, baseType: !128, offset: 704)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2342, file: !2335, line: 301, baseType: !638, size: 32, offset: 704)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2342, file: !2335, line: 302, baseType: !485, size: 64, offset: 768)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2342, file: !2335, line: 303, baseType: !2353, size: 64, offset: 832)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !2335, line: 68, size: 64, elements: !2354)
!2354 = !{!2355, !2367}
!2355 = !DIDerivedType(tag: DW_TAG_member, scope: !2353, file: !2335, line: 69, baseType: !2356, size: 32)
!2356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2353, file: !2335, line: 69, size: 32, elements: !2357)
!2357 = !{!2358, !2359, !2360}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2356, file: !2335, line: 70, baseType: !321, size: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2356, file: !2335, line: 71, baseType: !329, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2356, file: !2335, line: 72, baseType: !2361, size: 32)
!2361 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2362, line: 24, baseType: !2363)
!2362 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2362, line: 22, size: 32, elements: !2364)
!2364 = !{!2365}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2363, file: !2362, line: 23, baseType: !2366, size: 32)
!2366 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2362, line: 20, baseType: !327)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2353, file: !2335, line: 74, baseType: !2368, size: 32, offset: 32)
!2368 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !2335, line: 54, baseType: !76, size: 32, elements: !2369)
!2369 = !{!2370, !2371, !2372}
!2370 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!2371 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!2372 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2342, file: !2335, line: 304, baseType: !417, size: 64, offset: 896)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2342, file: !2335, line: 305, baseType: !50, size: 64, offset: 960)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2342, file: !2335, line: 306, baseType: !2376, size: 576, offset: 1024)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !2335, line: 205, size: 576, elements: !2377)
!2377 = !{!2378, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2376, file: !2335, line: 206, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !2335, line: 66, baseType: !419)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2376, file: !2335, line: 207, baseType: !2379, size: 64, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2376, file: !2335, line: 208, baseType: !2379, size: 64, offset: 128)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2376, file: !2335, line: 209, baseType: !2379, size: 64, offset: 192)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2376, file: !2335, line: 210, baseType: !2379, size: 64, offset: 256)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2376, file: !2335, line: 211, baseType: !2379, size: 64, offset: 320)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2376, file: !2335, line: 212, baseType: !2379, size: 64, offset: 384)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2376, file: !2335, line: 213, baseType: !425, size: 64, offset: 448)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2376, file: !2335, line: 214, baseType: !425, size: 64, offset: 512)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2334, file: !2335, line: 324, baseType: !2389, size: 64, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!2341, !485, !6}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2334, file: !2335, line: 325, baseType: !2393, size: 64, offset: 128)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{null, !2341}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2334, file: !2335, line: 326, baseType: !2338, size: 64, offset: 192)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2334, file: !2335, line: 327, baseType: !2338, size: 64, offset: 256)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2334, file: !2335, line: 328, baseType: !2338, size: 64, offset: 320)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2334, file: !2335, line: 329, baseType: !575, size: 64, offset: 384)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2334, file: !2335, line: 332, baseType: !2401, size: 64, offset: 448)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!2404, !315}
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2334, file: !2335, line: 333, baseType: !2406, size: 64, offset: 512)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!6, !315, !2409}
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2334, file: !2335, line: 335, baseType: !2411, size: 64, offset: 576)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!6, !315, !2404}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2334, file: !2335, line: 337, baseType: !2415, size: 64, offset: 640)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!6, !485, !2418}
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !486, file: !247, line: 1425, baseType: !2420, size: 64, offset: 512)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2422)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !2335, line: 428, size: 704, elements: !2423)
!2423 = !{!2424, !2428, !2429, !2433, !2434, !2435, !2450, !2473, !2477, !2478, !2501}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2422, file: !2335, line: 429, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!6, !485, !6, !6, !435}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2422, file: !2335, line: 430, baseType: !575, size: 64, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2422, file: !2335, line: 431, baseType: !2430, size: 64, offset: 128)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!6, !485, !76}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2422, file: !2335, line: 432, baseType: !2430, size: 64, offset: 192)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2422, file: !2335, line: 433, baseType: !575, size: 64, offset: 256)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2422, file: !2335, line: 434, baseType: !2436, size: 64, offset: 320)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!6, !485, !6, !2439}
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !2335, line: 415, size: 256, elements: !2441)
!2441 = !{!2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2440, file: !2335, line: 416, baseType: !6, size: 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2440, file: !2335, line: 417, baseType: !76, size: 32, offset: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2440, file: !2335, line: 418, baseType: !76, size: 32, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2440, file: !2335, line: 420, baseType: !76, size: 32, offset: 96)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2440, file: !2335, line: 421, baseType: !76, size: 32, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2440, file: !2335, line: 422, baseType: !76, size: 32, offset: 160)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2440, file: !2335, line: 423, baseType: !76, size: 32, offset: 192)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2440, file: !2335, line: 424, baseType: !76, size: 32, offset: 224)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2422, file: !2335, line: 435, baseType: !2451, size: 64, offset: 384)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!6, !485, !2353, !2454}
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !2335, line: 343, size: 960, elements: !2456)
!2456 = !{!2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2455, file: !2335, line: 344, baseType: !6, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2455, file: !2335, line: 345, baseType: !39, size: 64, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2455, file: !2335, line: 346, baseType: !39, size: 64, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2455, file: !2335, line: 347, baseType: !39, size: 64, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2455, file: !2335, line: 348, baseType: !39, size: 64, offset: 256)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2455, file: !2335, line: 349, baseType: !39, size: 64, offset: 320)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2455, file: !2335, line: 350, baseType: !39, size: 64, offset: 384)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2455, file: !2335, line: 351, baseType: !668, size: 64, offset: 448)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2455, file: !2335, line: 353, baseType: !668, size: 64, offset: 512)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2455, file: !2335, line: 354, baseType: !6, size: 32, offset: 576)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2455, file: !2335, line: 355, baseType: !6, size: 32, offset: 608)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2455, file: !2335, line: 356, baseType: !39, size: 64, offset: 640)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2455, file: !2335, line: 357, baseType: !39, size: 64, offset: 704)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2455, file: !2335, line: 358, baseType: !39, size: 64, offset: 768)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2455, file: !2335, line: 359, baseType: !668, size: 64, offset: 832)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2455, file: !2335, line: 360, baseType: !6, size: 32, offset: 896)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2422, file: !2335, line: 436, baseType: !2474, size: 64, offset: 448)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!6, !485, !2418, !2454}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2422, file: !2335, line: 438, baseType: !2451, size: 64, offset: 512)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2422, file: !2335, line: 439, baseType: !2479, size: 64, offset: 576)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!6, !485, !2482}
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !2335, line: 409, size: 1408, elements: !2484)
!2484 = !{!2485, !2486}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2483, file: !2335, line: 410, baseType: !76, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2483, file: !2335, line: 411, baseType: !2487, size: 1344, offset: 64)
!2487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2488, size: 1344, elements: !170)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !2335, line: 395, size: 448, elements: !2489)
!2489 = !{!2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2500}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2488, file: !2335, line: 396, baseType: !76, size: 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2488, file: !2335, line: 397, baseType: !76, size: 32, offset: 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2488, file: !2335, line: 399, baseType: !76, size: 32, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2488, file: !2335, line: 400, baseType: !76, size: 32, offset: 96)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2488, file: !2335, line: 401, baseType: !76, size: 32, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2488, file: !2335, line: 402, baseType: !76, size: 32, offset: 160)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2488, file: !2335, line: 403, baseType: !76, size: 32, offset: 192)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2488, file: !2335, line: 404, baseType: !43, size: 64, offset: 256)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2488, file: !2335, line: 405, baseType: !2499, size: 64, offset: 320)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !14, line: 126, baseType: !39)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2488, file: !2335, line: 406, baseType: !2499, size: 64, offset: 384)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2422, file: !2335, line: 440, baseType: !2430, size: 64, offset: 640)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !486, file: !247, line: 1426, baseType: !2503, size: 64, offset: 576)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2505)
!2505 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !247, line: 49, flags: DIFlagFwdDecl)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !486, file: !247, line: 1427, baseType: !50, size: 64, offset: 640)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !486, file: !247, line: 1428, baseType: !50, size: 64, offset: 704)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !486, file: !247, line: 1429, baseType: !50, size: 64, offset: 768)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !486, file: !247, line: 1430, baseType: !276, size: 64, offset: 832)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !486, file: !247, line: 1431, baseType: !658, size: 256, offset: 896)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !486, file: !247, line: 1432, baseType: !6, size: 32, offset: 1152)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !486, file: !247, line: 1433, baseType: !638, size: 32, offset: 1184)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !486, file: !247, line: 1437, baseType: !2514, size: 64, offset: 1216)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2517)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !247, line: 1437, flags: DIFlagFwdDecl)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !486, file: !247, line: 1449, baseType: !2519, size: 64, offset: 1280)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !292, line: 34, size: 64, elements: !2520)
!2520 = !{!2521}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2519, file: !292, line: 35, baseType: !295, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !486, file: !247, line: 1450, baseType: !13, size: 128, offset: 1344)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !486, file: !247, line: 1451, baseType: !2524, size: 64, offset: 1472)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !247, line: 699, flags: DIFlagFwdDecl)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !486, file: !247, line: 1452, baseType: !1820, size: 64, offset: 1536)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !486, file: !247, line: 1453, baseType: !2528, size: 64, offset: 1600)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !247, line: 1453, flags: DIFlagFwdDecl)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !486, file: !247, line: 1454, baseType: !528, size: 128, offset: 1664)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !486, file: !247, line: 1455, baseType: !76, size: 32, offset: 1792)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !486, file: !247, line: 1456, baseType: !2533, size: 2432, offset: 1856)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !2335, line: 518, size: 2432, elements: !2534)
!2534 = !{!2535, !2536, !2537, !2539, !2571}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2533, file: !2335, line: 519, baseType: !76, size: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2533, file: !2335, line: 520, baseType: !658, size: 256, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2533, file: !2335, line: 521, baseType: !2538, size: 192, offset: 320)
!2538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 192, elements: !170)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2533, file: !2335, line: 522, baseType: !2540, size: 1728, offset: 512)
!2540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2541, size: 1728, elements: !170)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !2335, line: 222, size: 576, elements: !2542)
!2542 = !{!2543, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2541, file: !2335, line: 223, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !2335, line: 443, size: 256, elements: !2546)
!2546 = !{!2547, !2548, !2561, !2562}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2545, file: !2335, line: 444, baseType: !6, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2545, file: !2335, line: 445, baseType: !2549, size: 64, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2551)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !2335, line: 310, size: 512, elements: !2552)
!2552 = !{!2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2551, file: !2335, line: 311, baseType: !575, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2551, file: !2335, line: 312, baseType: !575, size: 64, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2551, file: !2335, line: 313, baseType: !575, size: 64, offset: 128)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2551, file: !2335, line: 314, baseType: !575, size: 64, offset: 192)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2551, file: !2335, line: 315, baseType: !2338, size: 64, offset: 256)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2551, file: !2335, line: 316, baseType: !2338, size: 64, offset: 320)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2551, file: !2335, line: 317, baseType: !2338, size: 64, offset: 384)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2551, file: !2335, line: 318, baseType: !2415, size: 64, offset: 448)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2545, file: !2335, line: 446, baseType: !519, size: 64, offset: 128)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2545, file: !2335, line: 447, baseType: !2544, size: 64, offset: 192)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2541, file: !2335, line: 224, baseType: !6, size: 32, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2541, file: !2335, line: 226, baseType: !13, size: 128, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2541, file: !2335, line: 227, baseType: !50, size: 64, offset: 256)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2541, file: !2335, line: 228, baseType: !76, size: 32, offset: 320)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2541, file: !2335, line: 229, baseType: !76, size: 32, offset: 352)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2541, file: !2335, line: 230, baseType: !2379, size: 64, offset: 384)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2541, file: !2335, line: 231, baseType: !2379, size: 64, offset: 448)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2541, file: !2335, line: 232, baseType: !75, size: 64, offset: 512)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2533, file: !2335, line: 523, baseType: !2572, size: 192, offset: 2240)
!2572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2549, size: 192, elements: !170)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !486, file: !247, line: 1458, baseType: !2574, size: 2112, offset: 4288)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !247, line: 1410, size: 2112, elements: !2575)
!2575 = !{!2576, !2577, !2578}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2574, file: !247, line: 1411, baseType: !6, size: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2574, file: !247, line: 1412, baseType: !1377, size: 128, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2574, file: !247, line: 1413, baseType: !2579, size: 1920, offset: 192)
!2579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2580, size: 1920, elements: !170)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2581, line: 12, size: 640, elements: !2582)
!2581 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2582 = !{!2583, !2591, !2593, !2598, !2599}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2580, file: !2581, line: 13, baseType: !2584, size: 320)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2585, line: 17, size: 320, elements: !2586)
!2585 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2586 = !{!2587, !2588, !2589, !2590}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2584, file: !2585, line: 18, baseType: !6, size: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2584, file: !2585, line: 19, baseType: !6, size: 32, offset: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2584, file: !2585, line: 20, baseType: !1377, size: 128, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2584, file: !2585, line: 22, baseType: !259, size: 128, align: 64, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2580, file: !2581, line: 14, baseType: !2592, size: 64, offset: 320)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2580, file: !2581, line: 15, baseType: !2594, size: 64, offset: 384)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2595, line: 16, size: 64, elements: !2596)
!2595 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2596 = !{!2597}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2594, file: !2595, line: 17, baseType: !1101, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2580, file: !2581, line: 16, baseType: !1377, size: 128, offset: 448)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2580, file: !2581, line: 17, baseType: !638, size: 32, offset: 576)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !486, file: !247, line: 1465, baseType: !75, size: 64, offset: 6400)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !486, file: !247, line: 1468, baseType: !82, size: 32, offset: 6464)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !486, file: !247, line: 1470, baseType: !425, size: 64, offset: 6528)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !486, file: !247, line: 1471, baseType: !425, size: 64, offset: 6592)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !486, file: !247, line: 1473, baseType: !83, size: 32, offset: 6656)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !486, file: !247, line: 1474, baseType: !2606, size: 64, offset: 6720)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !247, line: 603, flags: DIFlagFwdDecl)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !486, file: !247, line: 1477, baseType: !2609, size: 256, offset: 6784)
!2609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 256, elements: !2126)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !486, file: !247, line: 1478, baseType: !2611, size: 128, offset: 7040)
!2611 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2612, line: 18, baseType: !2613)
!2612 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2612, line: 16, size: 128, elements: !2614)
!2614 = !{!2615}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2613, file: !2612, line: 17, baseType: !2616, size: 128)
!2616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1243, size: 128, elements: !1631)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !486, file: !247, line: 1480, baseType: !76, size: 32, offset: 7168)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !486, file: !247, line: 1481, baseType: !2619, size: 32, offset: 7200)
!2619 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !14, line: 150, baseType: !76)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !486, file: !247, line: 1487, baseType: !1074, size: 192, offset: 7232)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !486, file: !247, line: 1493, baseType: !46, size: 64, offset: 7424)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !486, file: !247, line: 1495, baseType: !2623, size: 64, offset: 7488)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2625)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !274, line: 135, size: 1024, align: 512, elements: !2626)
!2626 = !{!2627, !2631, !2632, !2639, !2645, !2649, !2653, !2657, !2658, !2662, !2666, !2671, !2675}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2625, file: !274, line: 136, baseType: !2628, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!6, !276, !76}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2625, file: !274, line: 137, baseType: !2628, size: 64, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2625, file: !274, line: 138, baseType: !2633, size: 64, offset: 128)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!6, !2636, !2638}
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2625, file: !274, line: 139, baseType: !2640, size: 64, offset: 192)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!6, !2636, !76, !46, !2643}
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2625, file: !274, line: 141, baseType: !2646, size: 64, offset: 256)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!6, !2636}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2625, file: !274, line: 142, baseType: !2650, size: 64, offset: 320)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!6, !276}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2625, file: !274, line: 143, baseType: !2654, size: 64, offset: 384)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{null, !276}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2625, file: !274, line: 144, baseType: !2654, size: 64, offset: 448)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2625, file: !274, line: 145, baseType: !2659, size: 64, offset: 512)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{null, !276, !315}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2625, file: !274, line: 146, baseType: !2663, size: 64, offset: 576)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!169, !276, !169, !6}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2625, file: !274, line: 147, baseType: !2667, size: 64, offset: 640)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!272, !2670}
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2625, file: !274, line: 148, baseType: !2672, size: 64, offset: 704)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!6, !435, !376}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2625, file: !274, line: 149, baseType: !2676, size: 64, offset: 768)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!276, !276, !2679}
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !486, file: !247, line: 1500, baseType: !6, size: 32, offset: 7552)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !486, file: !247, line: 1502, baseType: !2683, size: 448, offset: 7616)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2321, line: 60, size: 448, elements: !2684)
!2684 = !{!2685, !2690, !2691, !2692, !2693, !2694, !2695}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2683, file: !2321, line: 61, baseType: !2686, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!50, !2689, !2319}
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2683, file: !2321, line: 63, baseType: !2686, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2683, file: !2321, line: 66, baseType: !204, size: 64, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2683, file: !2321, line: 67, baseType: !6, size: 32, offset: 192)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2683, file: !2321, line: 68, baseType: !76, size: 32, offset: 224)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2683, file: !2321, line: 71, baseType: !13, size: 128, offset: 256)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2683, file: !2321, line: 77, baseType: !2696, size: 64, offset: 384)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !486, file: !247, line: 1505, baseType: !662, size: 64, offset: 8064)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !486, file: !247, line: 1508, baseType: !662, size: 64, offset: 8128)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !486, file: !247, line: 1511, baseType: !6, size: 32, offset: 8192)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !486, file: !247, line: 1514, baseType: !807, size: 32, offset: 8224)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !486, file: !247, line: 1517, baseType: !2702, size: 64, offset: 8256)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1855, line: 18, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !486, file: !247, line: 1518, baseType: !524, size: 64, offset: 8320)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !486, file: !247, line: 1525, baseType: !1609, size: 64, offset: 8384)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !486, file: !247, line: 1532, baseType: !2707, size: 64, offset: 8448)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2708, line: 52, size: 64, elements: !2709)
!2708 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2709 = !{!2710}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2707, file: !2708, line: 53, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2708, line: 40, size: 256, elements: !2713)
!2713 = !{!2714, !2715, !2720}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2712, file: !2708, line: 42, baseType: !128)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2712, file: !2708, line: 44, baseType: !2716, size: 192)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2708, line: 28, size: 192, elements: !2717)
!2717 = !{!2718, !2719}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2716, file: !2708, line: 29, baseType: !13, size: 128)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2716, file: !2708, line: 31, baseType: !204, size: 64, offset: 128)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2712, file: !2708, line: 49, baseType: !204, size: 64, offset: 192)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !486, file: !247, line: 1533, baseType: !2707, size: 64, offset: 8512)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !486, file: !247, line: 1534, baseType: !259, size: 128, align: 64, offset: 8576)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !486, file: !247, line: 1535, baseType: !1854, size: 256, offset: 8704)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !486, file: !247, line: 1537, baseType: !1074, size: 192, offset: 8960)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !486, file: !247, line: 1542, baseType: !6, size: 32, offset: 9152)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !486, file: !247, line: 1545, baseType: !128, offset: 9184)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !486, file: !247, line: 1546, baseType: !13, size: 128, offset: 9216)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !486, file: !247, line: 1548, baseType: !128, offset: 9344)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !486, file: !247, line: 1549, baseType: !13, size: 128, offset: 9344)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !316, file: !247, line: 624, baseType: !624, size: 64, offset: 256)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !316, file: !247, line: 631, baseType: !50, size: 64, offset: 320)
!2732 = !DIDerivedType(tag: DW_TAG_member, scope: !316, file: !247, line: 639, baseType: !2733, size: 32, offset: 384)
!2733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !316, file: !247, line: 639, size: 32, elements: !2734)
!2734 = !{!2735, !2737}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2733, file: !247, line: 640, baseType: !2736, size: 32)
!2736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2733, file: !247, line: 641, baseType: !76, size: 32)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !316, file: !247, line: 643, baseType: !399, size: 32, offset: 416)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !316, file: !247, line: 644, baseType: !417, size: 64, offset: 448)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !316, file: !247, line: 645, baseType: !421, size: 128, offset: 512)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !316, file: !247, line: 646, baseType: !421, size: 128, offset: 640)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !316, file: !247, line: 647, baseType: !421, size: 128, offset: 768)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !316, file: !247, line: 648, baseType: !128, offset: 896)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !316, file: !247, line: 649, baseType: !106, size: 16, offset: 896)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !316, file: !247, line: 650, baseType: !1242, size: 8, offset: 912)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !316, file: !247, line: 651, baseType: !1242, size: 8, offset: 920)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !316, file: !247, line: 652, baseType: !2499, size: 64, offset: 960)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !316, file: !247, line: 659, baseType: !50, size: 64, offset: 1024)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !316, file: !247, line: 660, baseType: !658, size: 256, offset: 1088)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !316, file: !247, line: 662, baseType: !50, size: 64, offset: 1344)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !316, file: !247, line: 663, baseType: !50, size: 64, offset: 1408)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !316, file: !247, line: 665, baseType: !528, size: 128, offset: 1472)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !316, file: !247, line: 666, baseType: !13, size: 128, offset: 1600)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !316, file: !247, line: 675, baseType: !13, size: 128, offset: 1728)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !316, file: !247, line: 676, baseType: !13, size: 128, offset: 1856)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !316, file: !247, line: 677, baseType: !13, size: 128, offset: 1984)
!2757 = !DIDerivedType(tag: DW_TAG_member, scope: !316, file: !247, line: 678, baseType: !2758, size: 128, offset: 2112)
!2758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !316, file: !247, line: 678, size: 128, elements: !2759)
!2759 = !{!2760, !2761}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2758, file: !247, line: 679, baseType: !524, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2758, file: !247, line: 680, baseType: !259, size: 128, align: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !316, file: !247, line: 682, baseType: !664, size: 64, offset: 2240)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !316, file: !247, line: 683, baseType: !664, size: 64, offset: 2304)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !316, file: !247, line: 684, baseType: !638, size: 32, offset: 2368)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !316, file: !247, line: 685, baseType: !638, size: 32, offset: 2400)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !316, file: !247, line: 686, baseType: !638, size: 32, offset: 2432)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !316, file: !247, line: 688, baseType: !638, size: 32, offset: 2464)
!2768 = !DIDerivedType(tag: DW_TAG_member, scope: !316, file: !247, line: 690, baseType: !2769, size: 64, offset: 2496)
!2769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !316, file: !247, line: 690, size: 64, elements: !2770)
!2770 = !{!2771, !2994}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2769, file: !247, line: 691, baseType: !2772, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2774)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !247, line: 1822, size: 2048, elements: !2775)
!2775 = !{!2776, !2777, !2781, !2786, !2790, !2791, !2792, !2796, !2809, !2810, !2818, !2822, !2823, !2827, !2828, !2832, !2837, !2838, !2842, !2846, !2954, !2958, !2959, !2963, !2964, !2968, !2972, !2977, !2981, !2985, !2989, !2993}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2774, file: !247, line: 1823, baseType: !519, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2774, file: !247, line: 1824, baseType: !2778, size: 64, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!417, !245, !417, !6}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2774, file: !247, line: 1825, baseType: !2782, size: 64, offset: 128)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!200, !245, !169, !215, !2785}
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2774, file: !247, line: 1826, baseType: !2787, size: 64, offset: 192)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!200, !245, !46, !215, !2785}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2774, file: !247, line: 1827, baseType: !735, size: 64, offset: 256)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2774, file: !247, line: 1828, baseType: !735, size: 64, offset: 320)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2774, file: !247, line: 1829, baseType: !2793, size: 64, offset: 384)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!6, !738, !376}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2774, file: !247, line: 1830, baseType: !2797, size: 64, offset: 448)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!6, !245, !2800}
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !247, line: 1776, size: 128, elements: !2802)
!2802 = !{!2803, !2808}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2801, file: !247, line: 1777, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !247, line: 1773, baseType: !2805)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!6, !2800, !46, !6, !417, !39, !76}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2801, file: !247, line: 1778, baseType: !417, size: 64, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2774, file: !247, line: 1831, baseType: !2797, size: 64, offset: 512)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2774, file: !247, line: 1832, baseType: !2811, size: 64, offset: 576)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!2814, !245, !2816}
!2814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2815, line: 52, baseType: !76)
!2815 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !505, line: 27, flags: DIFlagFwdDecl)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2774, file: !247, line: 1833, baseType: !2819, size: 64, offset: 640)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!204, !245, !76, !50}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2774, file: !247, line: 1834, baseType: !2819, size: 64, offset: 704)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2774, file: !247, line: 1835, baseType: !2824, size: 64, offset: 768)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!6, !245, !879}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2774, file: !247, line: 1836, baseType: !50, size: 64, offset: 832)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2774, file: !247, line: 1837, baseType: !2829, size: 64, offset: 896)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!6, !315, !245}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2774, file: !247, line: 1838, baseType: !2833, size: 64, offset: 960)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!6, !245, !2836}
!2836 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !247, line: 1007, baseType: !75)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2774, file: !247, line: 1839, baseType: !2829, size: 64, offset: 1024)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2774, file: !247, line: 1840, baseType: !2839, size: 64, offset: 1088)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!6, !245, !417, !417, !6}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2774, file: !247, line: 1841, baseType: !2843, size: 64, offset: 1152)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!6, !6, !245, !6}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2774, file: !247, line: 1842, baseType: !2847, size: 64, offset: 1216)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!6, !245, !6, !2850}
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !247, line: 1062, size: 1664, elements: !2852)
!2852 = !{!2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2884, !2885, !2886, !2899, !2930}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2851, file: !247, line: 1063, baseType: !2850, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2851, file: !247, line: 1064, baseType: !13, size: 128, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2851, file: !247, line: 1065, baseType: !528, size: 128, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2851, file: !247, line: 1066, baseType: !13, size: 128, offset: 320)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2851, file: !247, line: 1069, baseType: !13, size: 128, offset: 448)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2851, file: !247, line: 1072, baseType: !2836, size: 64, offset: 576)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2851, file: !247, line: 1073, baseType: !76, size: 32, offset: 640)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2851, file: !247, line: 1074, baseType: !97, size: 8, offset: 672)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2851, file: !247, line: 1075, baseType: !76, size: 32, offset: 704)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2851, file: !247, line: 1076, baseType: !6, size: 32, offset: 736)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2851, file: !247, line: 1077, baseType: !1377, size: 128, offset: 768)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2851, file: !247, line: 1078, baseType: !245, size: 64, offset: 896)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2851, file: !247, line: 1079, baseType: !417, size: 64, offset: 960)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2851, file: !247, line: 1080, baseType: !417, size: 64, offset: 1024)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2851, file: !247, line: 1082, baseType: !2868, size: 64, offset: 1088)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !247, line: 1314, size: 320, elements: !2870)
!2870 = !{!2871, !2879, !2880, !2881, !2882, !2883}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2869, file: !247, line: 1315, baseType: !2872)
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2873, line: 20, baseType: !2874)
!2873 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2873, line: 11, elements: !2875)
!2875 = !{!2876}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2874, file: !2873, line: 12, baseType: !2877)
!2877 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !140, line: 33, baseType: !2878)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !140, line: 31, elements: !142)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2869, file: !247, line: 1316, baseType: !6, size: 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2869, file: !247, line: 1317, baseType: !6, size: 32, offset: 32)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2869, file: !247, line: 1318, baseType: !2868, size: 64, offset: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2869, file: !247, line: 1319, baseType: !245, size: 64, offset: 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2869, file: !247, line: 1320, baseType: !259, size: 128, align: 64, offset: 192)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2851, file: !247, line: 1084, baseType: !50, size: 64, offset: 1152)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2851, file: !247, line: 1085, baseType: !50, size: 64, offset: 1216)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2851, file: !247, line: 1087, baseType: !2887, size: 64, offset: 1280)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2889)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !247, line: 1011, size: 128, elements: !2890)
!2890 = !{!2891, !2895}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2889, file: !247, line: 1012, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{null, !2850, !2850}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2889, file: !247, line: 1013, baseType: !2896, size: 64, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{null, !2850}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2851, file: !247, line: 1088, baseType: !2900, size: 64, offset: 1344)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2902)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !247, line: 1016, size: 512, elements: !2903)
!2903 = !{!2904, !2908, !2912, !2913, !2917, !2921, !2925, !2929}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2902, file: !247, line: 1017, baseType: !2905, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!2836, !2836}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2902, file: !247, line: 1018, baseType: !2909, size: 64, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{null, !2836}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2902, file: !247, line: 1019, baseType: !2896, size: 64, offset: 128)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2902, file: !247, line: 1020, baseType: !2914, size: 64, offset: 192)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!6, !2850, !6}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2902, file: !247, line: 1021, baseType: !2918, size: 64, offset: 256)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!376, !2850}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2902, file: !247, line: 1022, baseType: !2922, size: 64, offset: 320)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!6, !2850, !6, !17}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2902, file: !247, line: 1023, baseType: !2926, size: 64, offset: 384)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{null, !2850, !712}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2902, file: !247, line: 1024, baseType: !2918, size: 64, offset: 448)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2851, file: !247, line: 1097, baseType: !2931, size: 256, offset: 1408)
!2931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2851, file: !247, line: 1089, size: 256, elements: !2932)
!2932 = !{!2933, !2942, !2948}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2931, file: !247, line: 1090, baseType: !2934, size: 256)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2935, line: 10, size: 256, elements: !2936)
!2935 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2936 = !{!2937, !2938, !2941}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2934, file: !2935, line: 11, baseType: !82, size: 32)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2934, file: !2935, line: 12, baseType: !2939, size: 64, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2935, line: 5, flags: DIFlagFwdDecl)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2934, file: !2935, line: 13, baseType: !13, size: 128, offset: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2931, file: !247, line: 1091, baseType: !2943, size: 64)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2935, line: 17, size: 64, elements: !2944)
!2944 = !{!2945}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2943, file: !2935, line: 18, baseType: !2946, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2935, line: 16, flags: DIFlagFwdDecl)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2931, file: !247, line: 1096, baseType: !2949, size: 192)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2931, file: !247, line: 1092, size: 192, elements: !2950)
!2950 = !{!2951, !2952, !2953}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2949, file: !247, line: 1093, baseType: !13, size: 128)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2949, file: !247, line: 1094, baseType: !6, size: 32, offset: 128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2949, file: !247, line: 1095, baseType: !76, size: 32, offset: 160)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2774, file: !247, line: 1843, baseType: !2955, size: 64, offset: 1280)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!200, !245, !611, !6, !215, !2785, !6}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2774, file: !247, line: 1844, baseType: !1004, size: 64, offset: 1344)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2774, file: !247, line: 1845, baseType: !2960, size: 64, offset: 1408)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!6, !6}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2774, file: !247, line: 1846, baseType: !2847, size: 64, offset: 1472)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2774, file: !247, line: 1847, baseType: !2965, size: 64, offset: 1536)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!200, !1995, !245, !2785, !215, !76}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2774, file: !247, line: 1848, baseType: !2969, size: 64, offset: 1600)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!200, !245, !2785, !1995, !215, !76}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2774, file: !247, line: 1849, baseType: !2973, size: 64, offset: 1664)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!6, !245, !204, !2976, !712}
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2774, file: !247, line: 1850, baseType: !2978, size: 64, offset: 1728)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!204, !245, !6, !417, !417}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2774, file: !247, line: 1852, baseType: !2982, size: 64, offset: 1792)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !601, !245}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2774, file: !247, line: 1856, baseType: !2986, size: 64, offset: 1856)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!200, !245, !417, !245, !417, !215, !76}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2774, file: !247, line: 1858, baseType: !2990, size: 64, offset: 1920)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!417, !245, !417, !245, !417, !417, !76}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2774, file: !247, line: 1861, baseType: !2839, size: 64, offset: 1984)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2769, file: !247, line: 692, baseType: !553, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !316, file: !247, line: 694, baseType: !2996, size: 64, offset: 2560)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !247, line: 1100, size: 384, elements: !2998)
!2998 = !{!2999, !3000, !3001, !3002}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2997, file: !247, line: 1101, baseType: !128)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2997, file: !247, line: 1102, baseType: !13, size: 128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2997, file: !247, line: 1103, baseType: !13, size: 128, offset: 128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2997, file: !247, line: 1104, baseType: !13, size: 128, offset: 256)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !316, file: !247, line: 695, baseType: !625, size: 1216, align: 64, offset: 2624)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !316, file: !247, line: 696, baseType: !13, size: 128, offset: 3840)
!3005 = !DIDerivedType(tag: DW_TAG_member, scope: !316, file: !247, line: 697, baseType: !3006, size: 64, offset: 3968)
!3006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !316, file: !247, line: 697, size: 64, elements: !3007)
!3007 = !{!3008, !3009, !3010, !3013, !3014}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3006, file: !247, line: 698, baseType: !1995, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3006, file: !247, line: 699, baseType: !2524, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3006, file: !247, line: 700, baseType: !3011, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !247, line: 700, flags: DIFlagFwdDecl)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3006, file: !247, line: 701, baseType: !169, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3006, file: !247, line: 702, baseType: !76, size: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !316, file: !247, line: 705, baseType: !83, size: 32, offset: 4032)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !316, file: !247, line: 708, baseType: !83, size: 32, offset: 4064)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !316, file: !247, line: 709, baseType: !2606, size: 64, offset: 4096)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !316, file: !247, line: 720, baseType: !75, size: 64, offset: 4160)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !277, file: !274, line: 98, baseType: !3020, size: 256, offset: 448)
!3020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 256, elements: !2126)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !277, file: !274, line: 101, baseType: !3022, size: 32, offset: 704)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3023, line: 25, size: 32, elements: !3024)
!3023 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3024 = !{!3025}
!3025 = !DIDerivedType(tag: DW_TAG_member, scope: !3022, file: !3023, line: 26, baseType: !3026, size: 32)
!3026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3022, file: !3023, line: 26, size: 32, elements: !3027)
!3027 = !{!3028}
!3028 = !DIDerivedType(tag: DW_TAG_member, scope: !3026, file: !3023, line: 30, baseType: !3029, size: 32)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3026, file: !3023, line: 30, size: 32, elements: !3030)
!3030 = !{!3031, !3032}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3029, file: !3023, line: 31, baseType: !128)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3029, file: !3023, line: 32, baseType: !6, size: 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !277, file: !274, line: 102, baseType: !2623, size: 64, offset: 768)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !277, file: !274, line: 103, baseType: !485, size: 64, offset: 832)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !277, file: !274, line: 104, baseType: !50, size: 64, offset: 896)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !277, file: !274, line: 105, baseType: !75, size: 64, offset: 960)
!3037 = !DIDerivedType(tag: DW_TAG_member, scope: !277, file: !274, line: 107, baseType: !3038, size: 128, offset: 1024)
!3038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !277, file: !274, line: 107, size: 128, elements: !3039)
!3039 = !{!3040, !3041}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3038, file: !274, line: 108, baseType: !13, size: 128)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3038, file: !274, line: 109, baseType: !3042, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !277, file: !274, line: 111, baseType: !13, size: 128, offset: 1152)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !277, file: !274, line: 112, baseType: !13, size: 128, offset: 1280)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !277, file: !274, line: 120, baseType: !3046, size: 128, offset: 1408)
!3046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !277, file: !274, line: 116, size: 128, elements: !3047)
!3047 = !{!3048, !3049, !3050}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3046, file: !274, line: 117, baseType: !528, size: 128)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3046, file: !274, line: 118, baseType: !291, size: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3046, file: !274, line: 119, baseType: !259, size: 128, align: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !246, file: !247, line: 922, baseType: !315, size: 64, offset: 256)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !246, file: !247, line: 923, baseType: !2772, size: 64, offset: 320)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !246, file: !247, line: 929, baseType: !128, offset: 384)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !246, file: !247, line: 930, baseType: !3055, size: 32, offset: 384)
!3055 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !247, line: 296, baseType: !76, size: 32, elements: !3056)
!3056 = !{!3057, !3058, !3059, !3060, !3061, !3062}
!3057 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!3058 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!3059 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!3060 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!3061 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!3062 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !246, file: !247, line: 931, baseType: !662, size: 64, offset: 448)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !246, file: !247, line: 932, baseType: !76, size: 32, offset: 512)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !246, file: !247, line: 933, baseType: !2619, size: 32, offset: 544)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !246, file: !247, line: 934, baseType: !1074, size: 192, offset: 576)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !246, file: !247, line: 935, baseType: !417, size: 64, offset: 768)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !246, file: !247, line: 936, baseType: !3069, size: 192, offset: 832)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !247, line: 885, size: 192, elements: !3070)
!3070 = !{!3071, !3072, !3073, !3081, !3082, !3083}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3069, file: !247, line: 886, baseType: !2872)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3069, file: !247, line: 887, baseType: !1366, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3069, file: !247, line: 888, baseType: !3074, size: 32, offset: 64)
!3074 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !1368, line: 9, baseType: !76, size: 32, elements: !3075)
!3075 = !{!3076, !3077, !3078, !3079, !3080}
!3076 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!3077 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!3078 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!3079 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!3080 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3069, file: !247, line: 889, baseType: !321, size: 32, offset: 96)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3069, file: !247, line: 889, baseType: !321, size: 32, offset: 128)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3069, file: !247, line: 890, baseType: !6, size: 32, offset: 160)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !246, file: !247, line: 937, baseType: !1443, size: 64, offset: 1024)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !246, file: !247, line: 938, baseType: !3086, size: 256, offset: 1088)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !247, line: 896, size: 256, elements: !3087)
!3087 = !{!3088, !3089, !3090, !3091, !3092, !3093}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3086, file: !247, line: 897, baseType: !50, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3086, file: !247, line: 898, baseType: !76, size: 32, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3086, file: !247, line: 899, baseType: !76, size: 32, offset: 96)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3086, file: !247, line: 902, baseType: !76, size: 32, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3086, file: !247, line: 903, baseType: !76, size: 32, offset: 160)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3086, file: !247, line: 904, baseType: !417, size: 64, offset: 192)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !246, file: !247, line: 940, baseType: !39, size: 64, offset: 1344)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !246, file: !247, line: 945, baseType: !75, size: 64, offset: 1408)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !246, file: !247, line: 949, baseType: !13, size: 128, offset: 1472)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !246, file: !247, line: 950, baseType: !13, size: 128, offset: 1600)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !246, file: !247, line: 952, baseType: !624, size: 64, offset: 1728)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !246, file: !247, line: 953, baseType: !807, size: 32, offset: 1792)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !246, file: !247, line: 954, baseType: !807, size: 32, offset: 1824)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !236, file: !194, line: 174, baseType: !242, size: 64, offset: 320)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !236, file: !194, line: 176, baseType: !3103, size: 64, offset: 384)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!6, !245, !121, !235, !879}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !224, file: !194, line: 90, baseType: !219, size: 64, offset: 192)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !224, file: !194, line: 91, baseType: !3108, size: 64, offset: 256)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !184, file: !116, line: 143, baseType: !3110, size: 64, offset: 256)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!3113, !121}
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3115)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !3116, line: 39, size: 384, elements: !3117)
!3116 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!3117 = !{!3118, !3124, !3128, !3132, !3138, !3142}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3115, file: !3116, line: 40, baseType: !3119, size: 32)
!3119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !3116, line: 26, baseType: !76, size: 32, elements: !3120)
!3120 = !{!3121, !3122, !3123}
!3121 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!3122 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!3123 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3115, file: !3116, line: 41, baseType: !3125, size: 64, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!376}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3115, file: !3116, line: 42, baseType: !3129, size: 64, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!75}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3115, file: !3116, line: 43, baseType: !3133, size: 64, offset: 192)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!2023, !3136}
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !3116, line: 19, flags: DIFlagFwdDecl)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3115, file: !3116, line: 44, baseType: !3139, size: 64, offset: 256)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!2023}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3115, file: !3116, line: 45, baseType: !354, size: 64, offset: 320)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !184, file: !116, line: 144, baseType: !3144, size: 64, offset: 320)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!2023, !121}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !184, file: !116, line: 145, baseType: !3148, size: 64, offset: 384)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{null, !121, !3151, !3152}
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !115, file: !116, line: 70, baseType: !3154, size: 64, offset: 384)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !505, line: 123, size: 1024, elements: !3156)
!3156 = !{!3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3285, !3286, !3287, !3288, !3289}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3155, file: !505, line: 124, baseType: !638, size: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3155, file: !505, line: 125, baseType: !638, size: 32, offset: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3155, file: !505, line: 135, baseType: !3154, size: 64, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3155, file: !505, line: 136, baseType: !46, size: 64, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3155, file: !505, line: 138, baseType: !651, size: 192, align: 64, offset: 192)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3155, file: !505, line: 140, baseType: !2023, size: 64, offset: 384)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3155, file: !505, line: 141, baseType: !76, size: 32, offset: 448)
!3164 = !DIDerivedType(tag: DW_TAG_member, scope: !3155, file: !505, line: 142, baseType: !3165, size: 256, offset: 512)
!3165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3155, file: !505, line: 142, size: 256, elements: !3166)
!3166 = !{!3167, !3213, !3217}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3165, file: !505, line: 143, baseType: !3168, size: 192)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !505, line: 91, size: 192, elements: !3169)
!3169 = !{!3170, !3171, !3172}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3168, file: !505, line: 92, baseType: !50, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3168, file: !505, line: 94, baseType: !647, size: 64, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3168, file: !505, line: 100, baseType: !3173, size: 64, offset: 128)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !505, line: 180, size: 704, elements: !3175)
!3175 = !{!3176, !3177, !3178, !3185, !3186, !3187, !3211, !3212}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3174, file: !505, line: 182, baseType: !3154, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3174, file: !505, line: 183, baseType: !76, size: 32, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3174, file: !505, line: 186, baseType: !3179, size: 192, offset: 128)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3180, line: 19, size: 192, elements: !3181)
!3180 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3181 = !{!3182, !3183, !3184}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3179, file: !3180, line: 20, baseType: !629, size: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3179, file: !3180, line: 21, baseType: !76, size: 32, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3179, file: !3180, line: 22, baseType: !76, size: 32, offset: 160)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3174, file: !505, line: 187, baseType: !82, size: 32, offset: 320)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3174, file: !505, line: 188, baseType: !82, size: 32, offset: 352)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3174, file: !505, line: 189, baseType: !3188, size: 64, offset: 384)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !505, line: 168, size: 320, elements: !3190)
!3190 = !{!3191, !3195, !3199, !3203, !3207}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3189, file: !505, line: 169, baseType: !3192, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!6, !601, !3173}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3189, file: !505, line: 171, baseType: !3196, size: 64, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!6, !3154, !46, !210}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3189, file: !505, line: 173, baseType: !3200, size: 64, offset: 128)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!6, !3154}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3189, file: !505, line: 174, baseType: !3204, size: 64, offset: 192)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!6, !3154, !3154, !46}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3189, file: !505, line: 176, baseType: !3208, size: 64, offset: 256)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!6, !601, !3154, !3173}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3174, file: !505, line: 192, baseType: !13, size: 128, offset: 448)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3174, file: !505, line: 194, baseType: !1377, size: 128, offset: 576)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3165, file: !505, line: 144, baseType: !3214, size: 64)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !505, line: 103, size: 64, elements: !3215)
!3215 = !{!3216}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3214, file: !505, line: 104, baseType: !3154, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3165, file: !505, line: 145, baseType: !3218, size: 256)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !505, line: 107, size: 256, elements: !3219)
!3219 = !{!3220, !3280, !3283, !3284}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3218, file: !505, line: 108, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3223)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !505, line: 217, size: 768, elements: !3224)
!3224 = !{!3225, !3245, !3249, !3253, !3257, !3261, !3265, !3269, !3270, !3271, !3272, !3276}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3223, file: !505, line: 222, baseType: !3226, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!6, !3229}
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !505, line: 197, size: 1088, elements: !3231)
!3231 = !{!3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3230, file: !505, line: 199, baseType: !3154, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3230, file: !505, line: 200, baseType: !245, size: 64, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3230, file: !505, line: 201, baseType: !601, size: 64, offset: 128)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3230, file: !505, line: 202, baseType: !75, size: 64, offset: 192)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3230, file: !505, line: 205, baseType: !1074, size: 192, offset: 256)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3230, file: !505, line: 206, baseType: !1074, size: 192, offset: 448)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3230, file: !505, line: 207, baseType: !6, size: 32, offset: 640)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3230, file: !505, line: 208, baseType: !13, size: 128, offset: 704)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3230, file: !505, line: 209, baseType: !169, size: 64, offset: 832)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3230, file: !505, line: 211, baseType: !215, size: 64, offset: 896)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3230, file: !505, line: 212, baseType: !376, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3230, file: !505, line: 213, baseType: !376, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3230, file: !505, line: 214, baseType: !907, size: 64, offset: 1024)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3223, file: !505, line: 223, baseType: !3246, size: 64, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{null, !3229}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3223, file: !505, line: 236, baseType: !3250, size: 64, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!6, !601, !75}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3223, file: !505, line: 238, baseType: !3254, size: 64, offset: 192)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!75, !601, !2785}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3223, file: !505, line: 239, baseType: !3258, size: 64, offset: 256)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!75, !601, !75, !2785}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3223, file: !505, line: 240, baseType: !3262, size: 64, offset: 320)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{null, !601, !75}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3223, file: !505, line: 242, baseType: !3266, size: 64, offset: 384)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!200, !3229, !169, !215, !417}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3223, file: !505, line: 252, baseType: !215, size: 64, offset: 448)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3223, file: !505, line: 259, baseType: !376, size: 8, offset: 512)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3223, file: !505, line: 260, baseType: !3266, size: 64, offset: 576)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3223, file: !505, line: 263, baseType: !3273, size: 64, offset: 640)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!2814, !3229, !2816}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3223, file: !505, line: 266, baseType: !3277, size: 64, offset: 704)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!6, !3229, !879}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3218, file: !505, line: 109, baseType: !3281, size: 64, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !505, line: 31, flags: DIFlagFwdDecl)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3218, file: !505, line: 110, baseType: !417, size: 64, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3218, file: !505, line: 111, baseType: !3154, size: 64, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3155, file: !505, line: 148, baseType: !75, size: 64, offset: 768)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3155, file: !505, line: 154, baseType: !39, size: 64, offset: 832)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3155, file: !505, line: 156, baseType: !106, size: 16, offset: 896)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3155, file: !505, line: 157, baseType: !210, size: 16, offset: 912)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3155, file: !505, line: 158, baseType: !3290, size: 64, offset: 960)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !505, line: 32, flags: DIFlagFwdDecl)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !115, file: !116, line: 71, baseType: !3293, size: 32, offset: 448)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3294, line: 19, size: 32, elements: !3295)
!3294 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3295 = !{!3296}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3293, file: !3294, line: 20, baseType: !1115, size: 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !115, file: !116, line: 75, baseType: !76, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !115, file: !116, line: 76, baseType: !76, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !115, file: !116, line: 77, baseType: !76, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !115, file: !116, line: 78, baseType: !76, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !115, file: !116, line: 79, baseType: !76, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !111, file: !112, line: 463, baseType: !110, size: 64, offset: 512)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !111, file: !112, line: 465, baseType: !3304, size: 64, offset: 576)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !112, line: 36, flags: DIFlagFwdDecl)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !111, file: !112, line: 467, baseType: !46, size: 64, offset: 640)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !112, line: 468, baseType: !3308, size: 64, offset: 704)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3310)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !112, line: 87, size: 384, elements: !3311)
!3311 = !{!3312, !3313, !3314, !3318, !3323, !3327}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3310, file: !112, line: 88, baseType: !46, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3310, file: !112, line: 89, baseType: !221, size: 64, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3310, file: !112, line: 90, baseType: !3315, size: 64, offset: 128)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!6, !110, !164}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3310, file: !112, line: 91, baseType: !3319, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!169, !110, !3322, !3151, !3152}
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3310, file: !112, line: 93, baseType: !3324, size: 64, offset: 256)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{null, !110}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3310, file: !112, line: 95, baseType: !3328, size: 64, offset: 320)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3330)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !3331, line: 278, size: 1472, elements: !3332)
!3331 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!3332 = !{!3333, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3330, file: !3331, line: 279, baseType: !3334, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!6, !110}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3330, file: !3331, line: 280, baseType: !3324, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3330, file: !3331, line: 281, baseType: !3334, size: 64, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3330, file: !3331, line: 282, baseType: !3334, size: 64, offset: 192)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3330, file: !3331, line: 283, baseType: !3334, size: 64, offset: 256)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3330, file: !3331, line: 284, baseType: !3334, size: 64, offset: 320)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3330, file: !3331, line: 285, baseType: !3334, size: 64, offset: 384)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3330, file: !3331, line: 286, baseType: !3334, size: 64, offset: 448)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3330, file: !3331, line: 287, baseType: !3334, size: 64, offset: 512)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3330, file: !3331, line: 288, baseType: !3334, size: 64, offset: 576)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3330, file: !3331, line: 289, baseType: !3334, size: 64, offset: 640)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3330, file: !3331, line: 290, baseType: !3334, size: 64, offset: 704)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3330, file: !3331, line: 291, baseType: !3334, size: 64, offset: 768)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3330, file: !3331, line: 292, baseType: !3334, size: 64, offset: 832)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3330, file: !3331, line: 293, baseType: !3334, size: 64, offset: 896)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3330, file: !3331, line: 294, baseType: !3334, size: 64, offset: 960)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3330, file: !3331, line: 295, baseType: !3334, size: 64, offset: 1024)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3330, file: !3331, line: 296, baseType: !3334, size: 64, offset: 1088)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3330, file: !3331, line: 297, baseType: !3334, size: 64, offset: 1152)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3330, file: !3331, line: 298, baseType: !3334, size: 64, offset: 1216)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3330, file: !3331, line: 299, baseType: !3334, size: 64, offset: 1280)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3330, file: !3331, line: 300, baseType: !3334, size: 64, offset: 1344)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3330, file: !3331, line: 301, baseType: !3334, size: 64, offset: 1408)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !111, file: !112, line: 470, baseType: !3360, size: 64, offset: 768)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3362, line: 82, size: 1408, elements: !3363)
!3362 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3363 = !{!3364, !3365, !3366, !3367, !3368, !3369, !3370, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3451, !3454, !3455}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3361, file: !3362, line: 83, baseType: !46, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3361, file: !3362, line: 84, baseType: !46, size: 64, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3361, file: !3362, line: 85, baseType: !110, size: 64, offset: 128)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3361, file: !3362, line: 86, baseType: !221, size: 64, offset: 192)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3361, file: !3362, line: 87, baseType: !221, size: 64, offset: 256)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3361, file: !3362, line: 88, baseType: !221, size: 64, offset: 320)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3361, file: !3362, line: 90, baseType: !3371, size: 64, offset: 384)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!6, !110, !3374}
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !3376, line: 95, size: 1152, elements: !3377)
!3376 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!3377 = !{!3378, !3379, !3380, !3381, !3382, !3383, !3389, !3402, !3415, !3416, !3417, !3418, !3419, !3427, !3428, !3429, !3430, !3431, !3432}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3375, file: !3376, line: 96, baseType: !46, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3375, file: !3376, line: 97, baseType: !3360, size: 64, offset: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3375, file: !3376, line: 99, baseType: !519, size: 64, offset: 128)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3375, file: !3376, line: 100, baseType: !46, size: 64, offset: 192)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3375, file: !3376, line: 102, baseType: !376, size: 8, offset: 256)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3375, file: !3376, line: 103, baseType: !3384, size: 32, offset: 288)
!3384 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !3376, line: 44, baseType: !76, size: 32, elements: !3385)
!3385 = !{!3386, !3387, !3388}
!3386 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!3387 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!3388 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3375, file: !3376, line: 105, baseType: !3390, size: 64, offset: 320)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3392)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3393, line: 262, size: 1600, elements: !3394)
!3393 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3394 = !{!3395, !3396, !3397, !3401}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3392, file: !3393, line: 263, baseType: !2609, size: 256)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3392, file: !3393, line: 264, baseType: !2609, size: 256, offset: 256)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3392, file: !3393, line: 265, baseType: !3398, size: 1024, offset: 512)
!3398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1024, elements: !3399)
!3399 = !{!3400}
!3400 = !DISubrange(count: 128)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3392, file: !3393, line: 266, baseType: !2023, size: 64, offset: 1536)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3375, file: !3376, line: 106, baseType: !3403, size: 64, offset: 384)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3405)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3393, line: 210, size: 256, elements: !3406)
!3406 = !{!3407, !3411, !3413, !3414}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3405, file: !3393, line: 211, baseType: !3408, size: 72)
!3408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1243, size: 72, elements: !3409)
!3409 = !{!3410}
!3410 = !DISubrange(count: 9)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3405, file: !3393, line: 212, baseType: !3412, size: 64, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3393, line: 14, baseType: !50)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3405, file: !3393, line: 213, baseType: !83, size: 32, offset: 192)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3405, file: !3393, line: 214, baseType: !83, size: 32, offset: 224)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3375, file: !3376, line: 108, baseType: !3334, size: 64, offset: 448)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3375, file: !3376, line: 109, baseType: !3324, size: 64, offset: 512)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3375, file: !3376, line: 110, baseType: !3334, size: 64, offset: 576)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3375, file: !3376, line: 111, baseType: !3324, size: 64, offset: 640)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3375, file: !3376, line: 112, baseType: !3420, size: 64, offset: 704)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!6, !110, !3423}
!3423 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !3331, line: 52, baseType: !3424)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !3331, line: 50, size: 32, elements: !3425)
!3425 = !{!3426}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3424, file: !3331, line: 51, baseType: !6, size: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3375, file: !3376, line: 113, baseType: !3334, size: 64, offset: 768)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3375, file: !3376, line: 114, baseType: !221, size: 64, offset: 832)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3375, file: !3376, line: 115, baseType: !221, size: 64, offset: 896)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3375, file: !3376, line: 117, baseType: !3328, size: 64, offset: 960)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3375, file: !3376, line: 118, baseType: !3324, size: 64, offset: 1024)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3375, file: !3376, line: 120, baseType: !3433, size: 64, offset: 1088)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !3376, line: 120, flags: DIFlagFwdDecl)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3361, file: !3362, line: 91, baseType: !3315, size: 64, offset: 448)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3361, file: !3362, line: 92, baseType: !3334, size: 64, offset: 512)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3361, file: !3362, line: 93, baseType: !3324, size: 64, offset: 576)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3361, file: !3362, line: 94, baseType: !3334, size: 64, offset: 640)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3361, file: !3362, line: 95, baseType: !3324, size: 64, offset: 704)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3361, file: !3362, line: 97, baseType: !3334, size: 64, offset: 768)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3361, file: !3362, line: 98, baseType: !3334, size: 64, offset: 832)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3361, file: !3362, line: 100, baseType: !3420, size: 64, offset: 896)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3361, file: !3362, line: 101, baseType: !3334, size: 64, offset: 960)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3361, file: !3362, line: 103, baseType: !3334, size: 64, offset: 1024)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3361, file: !3362, line: 105, baseType: !3334, size: 64, offset: 1088)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3361, file: !3362, line: 107, baseType: !3328, size: 64, offset: 1152)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3361, file: !3362, line: 109, baseType: !3448, size: 64, offset: 1216)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3450)
!3450 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3362, line: 109, flags: DIFlagFwdDecl)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3361, file: !3362, line: 111, baseType: !3452, size: 64, offset: 1280)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3362, line: 111, flags: DIFlagFwdDecl)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3361, file: !3362, line: 112, baseType: !534, offset: 1344)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3361, file: !3362, line: 114, baseType: !376, size: 8, offset: 1344)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !111, file: !112, line: 471, baseType: !3374, size: 64, offset: 832)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !111, file: !112, line: 473, baseType: !75, size: 64, offset: 896)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !111, file: !112, line: 475, baseType: !75, size: 64, offset: 960)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !111, file: !112, line: 480, baseType: !1074, size: 192, offset: 1024)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !111, file: !112, line: 484, baseType: !3461, size: 576, offset: 1216)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !112, line: 361, size: 576, elements: !3462)
!3462 = !{!3463, !3464, !3465, !3466, !3467, !3468}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3461, file: !112, line: 362, baseType: !13, size: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3461, file: !112, line: 363, baseType: !13, size: 128, offset: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3461, file: !112, line: 364, baseType: !13, size: 128, offset: 256)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3461, file: !112, line: 365, baseType: !13, size: 128, offset: 384)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3461, file: !112, line: 366, baseType: !376, size: 8, offset: 512)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3461, file: !112, line: 367, baseType: !3469, size: 32, offset: 544)
!3469 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !112, line: 343, baseType: !76, size: 32, elements: !3470)
!3470 = !{!3471, !3472, !3473, !3474}
!3471 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!3472 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!3473 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!3474 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !111, file: !112, line: 485, baseType: !3476, size: 2304, offset: 1792)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !3331, line: 565, size: 2304, elements: !3477)
!3477 = !{!3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3563, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3586, !3590}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3476, file: !3331, line: 566, baseType: !3423, size: 32)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3476, file: !3331, line: 567, baseType: !76, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3476, file: !3331, line: 568, baseType: !76, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3476, file: !3331, line: 569, baseType: !376, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3476, file: !3331, line: 570, baseType: !376, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3476, file: !3331, line: 571, baseType: !376, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3476, file: !3331, line: 572, baseType: !376, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3476, file: !3331, line: 573, baseType: !376, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3476, file: !3331, line: 574, baseType: !376, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3476, file: !3331, line: 575, baseType: !376, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3476, file: !3331, line: 576, baseType: !376, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3476, file: !3331, line: 577, baseType: !82, size: 32, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3476, file: !3331, line: 578, baseType: !128, offset: 96)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3476, file: !3331, line: 580, baseType: !13, size: 128, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3476, file: !3331, line: 581, baseType: !1398, size: 192, offset: 256)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3476, file: !3331, line: 582, baseType: !3494, size: 64, offset: 448)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3496, line: 43, size: 1472, elements: !3497)
!3496 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3497 = !{!3498, !3499, !3500, !3501, !3502, !3505, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3495, file: !3496, line: 44, baseType: !46, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3495, file: !3496, line: 45, baseType: !6, size: 32, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3495, file: !3496, line: 46, baseType: !13, size: 128, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3495, file: !3496, line: 47, baseType: !128, offset: 256)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3495, file: !3496, line: 48, baseType: !3503, size: 64, offset: 256)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !3331, line: 533, flags: DIFlagFwdDecl)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3495, file: !3496, line: 49, baseType: !3506, size: 320, offset: 320)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3507, line: 11, size: 320, elements: !3508)
!3507 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3508 = !{!3509, !3510, !3511, !3516}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3506, file: !3507, line: 16, baseType: !528, size: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3506, file: !3507, line: 17, baseType: !50, size: 64, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3506, file: !3507, line: 18, baseType: !3512, size: 64, offset: 192)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{null, !3515}
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3506, file: !3507, line: 19, baseType: !82, size: 32, offset: 256)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3495, file: !3496, line: 50, baseType: !50, size: 64, offset: 640)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3495, file: !3496, line: 51, baseType: !1186, size: 64, offset: 704)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3495, file: !3496, line: 52, baseType: !1186, size: 64, offset: 768)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3495, file: !3496, line: 53, baseType: !1186, size: 64, offset: 832)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3495, file: !3496, line: 54, baseType: !1186, size: 64, offset: 896)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3495, file: !3496, line: 55, baseType: !1186, size: 64, offset: 960)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3495, file: !3496, line: 56, baseType: !50, size: 64, offset: 1024)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3495, file: !3496, line: 57, baseType: !50, size: 64, offset: 1088)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3495, file: !3496, line: 58, baseType: !50, size: 64, offset: 1152)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3495, file: !3496, line: 59, baseType: !50, size: 64, offset: 1216)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3495, file: !3496, line: 60, baseType: !50, size: 64, offset: 1280)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3495, file: !3496, line: 61, baseType: !110, size: 64, offset: 1344)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3495, file: !3496, line: 62, baseType: !376, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3495, file: !3496, line: 63, baseType: !376, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3476, file: !3331, line: 583, baseType: !376, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3476, file: !3331, line: 584, baseType: !376, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3476, file: !3331, line: 585, baseType: !376, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3476, file: !3331, line: 586, baseType: !76, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3476, file: !3331, line: 587, baseType: !76, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3476, file: !3331, line: 592, baseType: !1177, size: 512, offset: 576)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3476, file: !3331, line: 593, baseType: !39, size: 64, offset: 1088)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3476, file: !3331, line: 594, baseType: !1854, size: 256, offset: 1152)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3476, file: !3331, line: 595, baseType: !1377, size: 128, offset: 1408)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3476, file: !3331, line: 596, baseType: !3503, size: 64, offset: 1536)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3476, file: !3331, line: 597, baseType: !638, size: 32, offset: 1600)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3476, file: !3331, line: 598, baseType: !638, size: 32, offset: 1632)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3476, file: !3331, line: 599, baseType: !76, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3476, file: !3331, line: 600, baseType: !76, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3476, file: !3331, line: 601, baseType: !76, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3476, file: !3331, line: 602, baseType: !76, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3476, file: !3331, line: 603, baseType: !76, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3476, file: !3331, line: 604, baseType: !376, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3476, file: !3331, line: 605, baseType: !76, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3476, file: !3331, line: 606, baseType: !76, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3476, file: !3331, line: 607, baseType: !76, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3476, file: !3331, line: 608, baseType: !76, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3476, file: !3331, line: 609, baseType: !76, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3476, file: !3331, line: 610, baseType: !76, size: 32, offset: 1696)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3476, file: !3331, line: 611, baseType: !3556, size: 32, offset: 1728)
!3556 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !3331, line: 524, baseType: !76, size: 32, elements: !3557)
!3557 = !{!3558, !3559, !3560, !3561, !3562}
!3558 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!3559 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!3560 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!3561 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!3562 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3476, file: !3331, line: 612, baseType: !3564, size: 32, offset: 1760)
!3564 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !3331, line: 502, baseType: !76, size: 32, elements: !3565)
!3565 = !{!3566, !3567, !3568, !3569}
!3566 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!3567 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!3568 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!3569 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3476, file: !3331, line: 613, baseType: !6, size: 32, offset: 1792)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3476, file: !3331, line: 614, baseType: !6, size: 32, offset: 1824)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3476, file: !3331, line: 615, baseType: !39, size: 64, offset: 1856)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3476, file: !3331, line: 616, baseType: !39, size: 64, offset: 1920)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3476, file: !3331, line: 617, baseType: !39, size: 64, offset: 1984)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3476, file: !3331, line: 618, baseType: !39, size: 64, offset: 2048)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3476, file: !3331, line: 620, baseType: !3577, size: 64, offset: 2112)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !3331, line: 536, size: 256, elements: !3579)
!3579 = !{!3580, !3581, !3582, !3583}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3578, file: !3331, line: 537, baseType: !128)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3578, file: !3331, line: 538, baseType: !76, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3578, file: !3331, line: 540, baseType: !13, size: 128, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3578, file: !3331, line: 543, baseType: !3584, size: 64, offset: 192)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !3331, line: 534, flags: DIFlagFwdDecl)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3476, file: !3331, line: 621, baseType: !3587, size: 64, offset: 2176)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{null, !110, !1339}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3476, file: !3331, line: 622, baseType: !3591, size: 64, offset: 2240)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !3331, line: 622, flags: DIFlagFwdDecl)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !111, file: !112, line: 486, baseType: !3594, size: 64, offset: 4096)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !3331, line: 642, size: 1792, elements: !3596)
!3596 = !{!3597, !3598, !3599, !3603, !3604, !3605}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3595, file: !3331, line: 643, baseType: !3330, size: 1472)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3595, file: !3331, line: 644, baseType: !3334, size: 64, offset: 1472)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3595, file: !3331, line: 645, baseType: !3600, size: 64, offset: 1536)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{null, !110, !376}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3595, file: !3331, line: 646, baseType: !3334, size: 64, offset: 1600)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3595, file: !3331, line: 647, baseType: !3324, size: 64, offset: 1664)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3595, file: !3331, line: 648, baseType: !3324, size: 64, offset: 1728)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !111, file: !112, line: 493, baseType: !3607, size: 64, offset: 4160)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3609, line: 162, size: 1088, elements: !3610)
!3609 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!3610 = !{!3611, !3612, !3613, !3904, !3905, !3906, !3907, !3908, !3909, !4046, !4047, !4048, !4049, !4050, !4051, !4052}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3608, file: !3609, line: 163, baseType: !13, size: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3608, file: !3609, line: 164, baseType: !46, size: 64, offset: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3608, file: !3609, line: 165, baseType: !3614, size: 64, offset: 192)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3616)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !3609, line: 105, size: 640, elements: !3617)
!3617 = !{!3618, !3749, !3760, !3765, !3769, !3776, !3780, !3784, !3896, !3900}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3616, file: !3609, line: 106, baseType: !3619, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!6, !3607, !3622, !3736}
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3624, line: 51, size: 1344, elements: !3625)
!3624 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3625 = !{!3626, !3627, !3629, !3630, !3720, !3729, !3730, !3731, !3732, !3733, !3734, !3735}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3623, file: !3624, line: 52, baseType: !46, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3623, file: !3624, line: 53, baseType: !3628, size: 32, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3624, line: 28, baseType: !82)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3623, file: !3624, line: 54, baseType: !46, size: 64, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3623, file: !3624, line: 55, baseType: !3631, size: 192, offset: 192)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3632, line: 17, size: 192, elements: !3633)
!3632 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3633 = !{!3634, !3636, !3719}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3631, file: !3632, line: 18, baseType: !3635, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3631, file: !3632, line: 19, baseType: !3637, size: 64, offset: 64)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3639)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3632, line: 110, size: 1152, elements: !3640)
!3640 = !{!3641, !3645, !3649, !3655, !3661, !3665, !3669, !3674, !3678, !3679, !3683, !3687, !3691, !3702, !3703, !3704, !3705, !3715}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3639, file: !3632, line: 111, baseType: !3642, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!3635, !3635}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3639, file: !3632, line: 112, baseType: !3646, size: 64, offset: 64)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{null, !3635}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3639, file: !3632, line: 113, baseType: !3650, size: 64, offset: 128)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!376, !3653}
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3631)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3639, file: !3632, line: 114, baseType: !3656, size: 64, offset: 192)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!2023, !3653, !3659}
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3639, file: !3632, line: 116, baseType: !3662, size: 64, offset: 256)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!376, !3653, !46}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3639, file: !3632, line: 118, baseType: !3666, size: 64, offset: 320)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!6, !3653, !46, !76, !75, !215}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3639, file: !3632, line: 123, baseType: !3670, size: 64, offset: 384)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!6, !3653, !46, !3673, !215}
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3639, file: !3632, line: 126, baseType: !3675, size: 64, offset: 448)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!46, !3653}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3639, file: !3632, line: 127, baseType: !3675, size: 64, offset: 512)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3639, file: !3632, line: 128, baseType: !3680, size: 64, offset: 576)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!3635, !3653}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3639, file: !3632, line: 130, baseType: !3684, size: 64, offset: 640)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!3635, !3653, !3635}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3639, file: !3632, line: 133, baseType: !3688, size: 64, offset: 704)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!3635, !3653, !46}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3639, file: !3632, line: 135, baseType: !3692, size: 64, offset: 768)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!6, !3653, !46, !46, !76, !76, !3695}
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3632, line: 43, size: 640, elements: !3697)
!3697 = !{!3698, !3699, !3700}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3696, file: !3632, line: 44, baseType: !3635, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3696, file: !3632, line: 45, baseType: !76, size: 32, offset: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3696, file: !3632, line: 46, baseType: !3701, size: 512, offset: 128)
!3701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 512, elements: !1220)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3639, file: !3632, line: 140, baseType: !3684, size: 64, offset: 832)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3639, file: !3632, line: 143, baseType: !3680, size: 64, offset: 896)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3639, file: !3632, line: 145, baseType: !3642, size: 64, offset: 960)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3639, file: !3632, line: 146, baseType: !3706, size: 64, offset: 1024)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!6, !3653, !3709}
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3632, line: 29, size: 128, elements: !3711)
!3711 = !{!3712, !3713, !3714}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3710, file: !3632, line: 30, baseType: !76, size: 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3710, file: !3632, line: 31, baseType: !76, size: 32, offset: 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3710, file: !3632, line: 32, baseType: !3653, size: 64, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3639, file: !3632, line: 148, baseType: !3716, size: 64, offset: 1088)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!6, !3653, !110}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3631, file: !3632, line: 20, baseType: !110, size: 64, offset: 128)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3623, file: !3624, line: 57, baseType: !3721, size: 64, offset: 384)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3624, line: 31, size: 704, elements: !3723)
!3723 = !{!3724, !3725, !3726, !3727, !3728}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3722, file: !3624, line: 32, baseType: !169, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3722, file: !3624, line: 33, baseType: !6, size: 32, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3722, file: !3624, line: 34, baseType: !75, size: 64, offset: 128)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3722, file: !3624, line: 35, baseType: !3721, size: 64, offset: 192)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3722, file: !3624, line: 43, baseType: !236, size: 448, offset: 256)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3623, file: !3624, line: 58, baseType: !3721, size: 64, offset: 448)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3623, file: !3624, line: 59, baseType: !3622, size: 64, offset: 512)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3623, file: !3624, line: 60, baseType: !3622, size: 64, offset: 576)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3623, file: !3624, line: 61, baseType: !3622, size: 64, offset: 640)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3623, file: !3624, line: 63, baseType: !115, size: 512, offset: 704)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3623, file: !3624, line: 65, baseType: !50, size: 64, offset: 1216)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3623, file: !3624, line: 66, baseType: !75, size: 64, offset: 1280)
!3736 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !3609, line: 76, baseType: !76, size: 32, elements: !3737)
!3737 = !{!3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748}
!3738 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!3739 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!3740 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!3741 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!3742 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!3743 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!3744 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!3745 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!3746 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!3747 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!3748 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3616, file: !3609, line: 108, baseType: !3750, size: 64, offset: 64)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!6, !3607, !3753, !3736}
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !3609, line: 63, size: 640, elements: !3755)
!3755 = !{!3756, !3757, !3758}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3754, file: !3609, line: 64, baseType: !3635, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3754, file: !3609, line: 65, baseType: !6, size: 32, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3754, file: !3609, line: 66, baseType: !3759, size: 512, offset: 96)
!3759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 512, elements: !1631)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3616, file: !3609, line: 110, baseType: !3761, size: 64, offset: 128)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!6, !3607, !76, !3764}
!3764 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !14, line: 164, baseType: !50)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3616, file: !3609, line: 111, baseType: !3766, size: 64, offset: 192)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{null, !3607, !76}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3616, file: !3609, line: 112, baseType: !3770, size: 64, offset: 256)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!6, !3607, !3622, !3773, !76, !3775, !2592}
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3616, file: !3609, line: 117, baseType: !3777, size: 64, offset: 320)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!6, !3607, !76, !76, !75}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3616, file: !3609, line: 119, baseType: !3781, size: 64, offset: 384)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{null, !3607, !76, !76}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3616, file: !3609, line: 121, baseType: !3785, size: 64, offset: 448)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!6, !3607, !3788, !376}
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3790, line: 175, size: 448, elements: !3791)
!3790 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/lizy2001/genbc/linux")
!3791 = !{!3792, !3793, !3794, !3795, !3807, !3893, !3894, !3895}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3789, file: !3790, line: 176, baseType: !82, size: 32)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3789, file: !3790, line: 177, baseType: !76, size: 32, offset: 32)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !3789, file: !3790, line: 178, baseType: !50, size: 64, offset: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !3789, file: !3790, line: 179, baseType: !3796, size: 64, offset: 128)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !3790, line: 145, size: 256, elements: !3798)
!3798 = !{!3799, !3800, !3801, !3804}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !3797, file: !3790, line: 146, baseType: !76, size: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !3797, file: !3790, line: 150, baseType: !75, size: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !3797, file: !3790, line: 151, baseType: !3802, size: 64, offset: 128)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !3790, line: 127, flags: DIFlagFwdDecl)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3797, file: !3790, line: 152, baseType: !3805, size: 64, offset: 192)
!3805 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1256, line: 756, baseType: !3806)
!3806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1257, size: 64, elements: !1261)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !3789, file: !3790, line: 180, baseType: !3808, size: 64, offset: 192)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !3790, line: 503, size: 2304, elements: !3810)
!3810 = !{!3811, !3812, !3813, !3817, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3834, !3838, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3855, !3856, !3857, !3863, !3864, !3874, !3878, !3882, !3886, !3890, !3891, !3892}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !3809, file: !3790, line: 504, baseType: !110, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3809, file: !3790, line: 505, baseType: !46, size: 64, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !3809, file: !3790, line: 506, baseType: !3814, size: 64, offset: 128)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!76, !3788}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !3809, file: !3790, line: 507, baseType: !3818, size: 64, offset: 192)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{null, !3788}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !3809, file: !3790, line: 508, baseType: !3818, size: 64, offset: 256)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !3809, file: !3790, line: 509, baseType: !3818, size: 64, offset: 320)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !3809, file: !3790, line: 511, baseType: !3818, size: 64, offset: 384)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !3809, file: !3790, line: 512, baseType: !3818, size: 64, offset: 448)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !3809, file: !3790, line: 513, baseType: !3818, size: 64, offset: 512)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !3809, file: !3790, line: 514, baseType: !3818, size: 64, offset: 576)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !3809, file: !3790, line: 515, baseType: !3818, size: 64, offset: 640)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !3809, file: !3790, line: 517, baseType: !3829, size: 64, offset: 704)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!6, !3788, !3832, !376}
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1257)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !3809, file: !3790, line: 518, baseType: !3835, size: 64, offset: 768)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!6, !3788}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !3809, file: !3790, line: 519, baseType: !3839, size: 64, offset: 832)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!6, !3788, !76}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !3809, file: !3790, line: 520, baseType: !3839, size: 64, offset: 896)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !3809, file: !3790, line: 522, baseType: !3818, size: 64, offset: 960)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !3809, file: !3790, line: 523, baseType: !3818, size: 64, offset: 1024)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !3809, file: !3790, line: 525, baseType: !3818, size: 64, offset: 1088)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !3809, file: !3790, line: 526, baseType: !3818, size: 64, offset: 1152)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !3809, file: !3790, line: 528, baseType: !3818, size: 64, offset: 1216)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !3809, file: !3790, line: 529, baseType: !3818, size: 64, offset: 1280)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !3809, file: !3790, line: 530, baseType: !3818, size: 64, offset: 1344)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !3809, file: !3790, line: 532, baseType: !3818, size: 64, offset: 1408)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !3809, file: !3790, line: 534, baseType: !3852, size: 64, offset: 1472)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{null, !3788, !601}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !3809, file: !3790, line: 535, baseType: !3835, size: 64, offset: 1536)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !3809, file: !3790, line: 536, baseType: !3818, size: 64, offset: 1600)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !3809, file: !3790, line: 538, baseType: !3858, size: 64, offset: 1664)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{null, !3788, !3861}
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !3790, line: 29, flags: DIFlagFwdDecl)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !3809, file: !3790, line: 539, baseType: !3858, size: 64, offset: 1728)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !3809, file: !3790, line: 541, baseType: !3865, size: 64, offset: 1792)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!6, !3788, !3868, !789}
!3868 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !95, line: 478, baseType: !76, size: 32, elements: !3869)
!3869 = !{!3870, !3871, !3872, !3873}
!3870 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0, isUnsigned: true)
!3871 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1, isUnsigned: true)
!3872 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2, isUnsigned: true)
!3873 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3, isUnsigned: true)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !3809, file: !3790, line: 542, baseType: !3875, size: 64, offset: 1856)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!6, !3788, !3868, !376}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !3809, file: !3790, line: 544, baseType: !3879, size: 64, offset: 1920)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!6, !3788, !75}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !3809, file: !3790, line: 546, baseType: !3883, size: 64, offset: 1984)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{null, !3788, !76}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !3809, file: !3790, line: 547, baseType: !3887, size: 64, offset: 2048)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{null, !3788, !3832}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !3809, file: !3790, line: 549, baseType: !3835, size: 64, offset: 2112)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !3809, file: !3790, line: 550, baseType: !3818, size: 64, offset: 2176)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3809, file: !3790, line: 552, baseType: !50, size: 64, offset: 2240)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3789, file: !3790, line: 181, baseType: !3607, size: 64, offset: 256)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !3789, file: !3790, line: 183, baseType: !3788, size: 64, offset: 320)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !3789, file: !3790, line: 185, baseType: !75, size: 64, offset: 384)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3616, file: !3609, line: 122, baseType: !3897, size: 64, offset: 512)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{null, !3607, !3788}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3616, file: !3609, line: 123, baseType: !3901, size: 64, offset: 576)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!6, !3607, !3753, !3775, !2592}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3608, file: !3609, line: 166, baseType: !75, size: 64, offset: 256)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3608, file: !3609, line: 167, baseType: !76, size: 32, offset: 320)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3608, file: !3609, line: 168, baseType: !76, size: 32, offset: 352)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3608, file: !3609, line: 171, baseType: !3635, size: 64, offset: 384)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3608, file: !3609, line: 172, baseType: !3736, size: 32, offset: 448)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3608, file: !3609, line: 173, baseType: !3910, size: 64, offset: 512)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !3790, line: 1101, size: 192, elements: !3912)
!3912 = !{!3913, !3914, !3915, !3916, !3917, !3925}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !3911, file: !3790, line: 1102, baseType: !76, size: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !3911, file: !3790, line: 1103, baseType: !76, size: 32, offset: 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !3911, file: !3790, line: 1104, baseType: !76, size: 32, offset: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !3911, file: !3790, line: 1105, baseType: !76, size: 32, offset: 96)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !3911, file: !3790, line: 1106, baseType: !3918, size: 32, offset: 128)
!3918 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !3790, line: 1084, baseType: !76, size: 32, elements: !3919)
!3919 = !{!3920, !3921, !3922, !3923, !3924}
!3920 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1, isUnsigned: true)
!3921 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2, isUnsigned: true)
!3922 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4, isUnsigned: true)
!3923 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8, isUnsigned: true)
!3924 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16, isUnsigned: true)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3911, file: !3790, line: 1107, baseType: !3926, offset: 192)
!3926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3927, elements: !2227)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !3790, line: 1051, size: 960, elements: !3929)
!3929 = !{!3930, !3931, !3932, !3936, !3940, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3928, file: !3790, line: 1052, baseType: !671)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !3928, file: !3790, line: 1053, baseType: !75, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !3928, file: !3790, line: 1054, baseType: !3933, size: 64, offset: 64)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!82, !75}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !3928, file: !3790, line: 1055, baseType: !3937, size: 64, offset: 128)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{null, !82, !75}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3928, file: !3790, line: 1056, baseType: !3941, size: 64, offset: 192)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{null, !3927}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3928, file: !3790, line: 1057, baseType: !3941, size: 64, offset: 256)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !3928, file: !3790, line: 1058, baseType: !76, size: 32, offset: 320)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !3928, file: !3790, line: 1059, baseType: !76, size: 32, offset: 352)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !3928, file: !3790, line: 1060, baseType: !82, size: 32, offset: 384)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !3928, file: !3790, line: 1061, baseType: !82, size: 32, offset: 416)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !3928, file: !3790, line: 1062, baseType: !82, size: 32, offset: 448)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !3928, file: !3790, line: 1063, baseType: !82, size: 32, offset: 480)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !3928, file: !3790, line: 1064, baseType: !82, size: 32, offset: 512)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !3928, file: !3790, line: 1065, baseType: !76, size: 32, offset: 544)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3928, file: !3790, line: 1066, baseType: !75, size: 64, offset: 576)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !3928, file: !3790, line: 1067, baseType: !50, size: 64, offset: 640)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3928, file: !3790, line: 1068, baseType: !50, size: 64, offset: 704)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3928, file: !3790, line: 1069, baseType: !3607, size: 64, offset: 768)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3928, file: !3790, line: 1070, baseType: !13, size: 128, offset: 832)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !3928, file: !3790, line: 1071, baseType: !3959, offset: 960)
!3959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3960, elements: !2227)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !3790, line: 1009, size: 2944, elements: !3961)
!3961 = !{!3962, !3963, !3973, !4043, !4044, !4045}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !3960, file: !3790, line: 1010, baseType: !3809, size: 2304)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3960, file: !3790, line: 1011, baseType: !3964, size: 448, offset: 2304)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !3790, line: 986, size: 448, elements: !3965)
!3965 = !{!3966, !3967, !3968, !3969, !3970, !3971, !3972}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !3964, file: !3790, line: 987, baseType: !50, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !3964, file: !3790, line: 988, baseType: !50, size: 64, offset: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3964, file: !3790, line: 989, baseType: !50, size: 64, offset: 128)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !3964, file: !3790, line: 990, baseType: !50, size: 64, offset: 192)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !3964, file: !3790, line: 991, baseType: !50, size: 64, offset: 256)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3964, file: !3790, line: 992, baseType: !50, size: 64, offset: 320)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !3964, file: !3790, line: 993, baseType: !50, size: 64, offset: 384)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3960, file: !3790, line: 1012, baseType: !3974, size: 64, offset: 2752)
!3974 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !3975, line: 12, baseType: !3976)
!3975 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{null, !3979}
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !3981, line: 55, size: 2880, elements: !3982)
!3981 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!3982 = !{!3983, !3984, !3985, !3986, !3987, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !3980, file: !3981, line: 56, baseType: !3797, size: 256)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !3980, file: !3981, line: 57, baseType: !3789, size: 448, offset: 256)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !3980, file: !3981, line: 58, baseType: !2592, size: 64, offset: 704)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !3980, file: !3981, line: 59, baseType: !3974, size: 64, offset: 768)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3980, file: !3981, line: 60, baseType: !3988, size: 64, offset: 832)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !95, line: 110, size: 768, elements: !3990)
!3990 = !{!3991, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3989, file: !95, line: 111, baseType: !3992, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !95, line: 92, baseType: !3993)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!3996, !6, !75}
!3996 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !3997, line: 17, baseType: !3998)
!3997 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!3998 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !3997, line: 11, baseType: !76, size: 32, elements: !3999)
!3999 = !{!4000, !4001, !4002}
!4000 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!4001 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!4002 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !3989, file: !95, line: 112, baseType: !75, size: 64, offset: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !3989, file: !95, line: 113, baseType: !75, size: 64, offset: 128)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3989, file: !95, line: 114, baseType: !3988, size: 64, offset: 192)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !3989, file: !95, line: 115, baseType: !3992, size: 64, offset: 256)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3989, file: !95, line: 116, baseType: !1101, size: 64, offset: 320)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3989, file: !95, line: 117, baseType: !3988, size: 64, offset: 384)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3989, file: !95, line: 118, baseType: !76, size: 32, offset: 448)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3989, file: !95, line: 119, baseType: !76, size: 32, offset: 480)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !3989, file: !95, line: 120, baseType: !50, size: 64, offset: 512)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !3989, file: !95, line: 121, baseType: !50, size: 64, offset: 576)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3989, file: !95, line: 122, baseType: !46, size: 64, offset: 640)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3989, file: !95, line: 123, baseType: !93, size: 64, offset: 704)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !3980, file: !3981, line: 61, baseType: !76, size: 32, offset: 896)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !3980, file: !3981, line: 62, baseType: !76, size: 32, offset: 928)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3980, file: !3981, line: 63, baseType: !76, size: 32, offset: 960)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !3980, file: !3981, line: 64, baseType: !76, size: 32, offset: 992)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !3980, file: !3981, line: 65, baseType: !76, size: 32, offset: 1024)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !3980, file: !3981, line: 66, baseType: !76, size: 32, offset: 1056)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !3980, file: !3981, line: 67, baseType: !50, size: 64, offset: 1088)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !3980, file: !3981, line: 68, baseType: !76, size: 32, offset: 1152)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !3980, file: !3981, line: 69, baseType: !638, size: 32, offset: 1184)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !3980, file: !3981, line: 70, baseType: !6, size: 32, offset: 1216)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3980, file: !3981, line: 71, baseType: !671, offset: 1248)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !3980, file: !3981, line: 72, baseType: !4027, size: 64, offset: 1280)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !3980, file: !3981, line: 73, baseType: !3832, size: 64, offset: 1344)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !3980, file: !3981, line: 81, baseType: !50, size: 64, offset: 1408)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !3980, file: !3981, line: 82, baseType: !638, size: 32, offset: 1472)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !3980, file: !3981, line: 83, baseType: !1377, size: 128, offset: 1536)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !3980, file: !3981, line: 85, baseType: !76, size: 32, offset: 1664)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !3980, file: !3981, line: 86, baseType: !76, size: 32, offset: 1696)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !3980, file: !3981, line: 87, baseType: !76, size: 32, offset: 1728)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !3980, file: !3981, line: 88, baseType: !76, size: 32, offset: 1760)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3980, file: !3981, line: 91, baseType: !93, size: 64, offset: 1792)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3980, file: !3981, line: 98, baseType: !259, size: 128, align: 64, offset: 1856)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3980, file: !3981, line: 99, baseType: !115, size: 512, offset: 1984)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !3980, file: !3981, line: 101, baseType: !1074, size: 192, offset: 2496)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !3980, file: !3981, line: 102, baseType: !6, size: 32, offset: 2688)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3980, file: !3981, line: 103, baseType: !519, size: 64, offset: 2752)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3980, file: !3981, line: 104, baseType: !46, size: 64, offset: 2816)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3960, file: !3790, line: 1013, baseType: !82, size: 32, offset: 2816)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !3960, file: !3790, line: 1014, baseType: !82, size: 32, offset: 2848)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !3960, file: !3790, line: 1015, baseType: !81, size: 64, offset: 2880)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3608, file: !3609, line: 175, baseType: !3607, size: 64, offset: 576)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3608, file: !3609, line: 182, baseType: !3764, size: 64, offset: 640)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3608, file: !3609, line: 183, baseType: !76, size: 32, offset: 704)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3608, file: !3609, line: 184, baseType: !76, size: 32, offset: 736)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3608, file: !3609, line: 185, baseType: !629, size: 128, offset: 768)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3608, file: !3609, line: 186, baseType: !1074, size: 192, offset: 896)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3608, file: !3609, line: 187, baseType: !4053, offset: 1088)
!4053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, elements: !2227)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !111, file: !112, line: 499, baseType: !13, size: 128, offset: 4224)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !111, file: !112, line: 502, baseType: !4056, size: 64, offset: 4352)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4058)
!4058 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !112, line: 502, flags: DIFlagFwdDecl)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !111, file: !112, line: 504, baseType: !4060, size: 64, offset: 4416)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !111, file: !112, line: 505, baseType: !39, size: 64, offset: 4480)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !111, file: !112, line: 510, baseType: !39, size: 64, offset: 4544)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !111, file: !112, line: 511, baseType: !4064, size: 64, offset: 4608)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4066)
!4066 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !112, line: 511, flags: DIFlagFwdDecl)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !111, file: !112, line: 513, baseType: !4068, size: 64, offset: 4672)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !112, line: 288, size: 128, elements: !4070)
!4070 = !{!4071, !4072}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4069, file: !112, line: 293, baseType: !76, size: 32)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4069, file: !112, line: 294, baseType: !50, size: 64, offset: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !111, file: !112, line: 515, baseType: !13, size: 128, offset: 4736)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !111, file: !112, line: 526, baseType: !4075, offset: 4864)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4076, line: 5, elements: !142)
!4076 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !111, file: !112, line: 528, baseType: !3622, size: 64, offset: 4864)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !111, file: !112, line: 529, baseType: !3635, size: 64, offset: 4928)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !111, file: !112, line: 534, baseType: !399, size: 32, offset: 4992)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !111, file: !112, line: 535, baseType: !82, size: 32, offset: 5024)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !111, file: !112, line: 537, baseType: !128, offset: 5056)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !111, file: !112, line: 538, baseType: !13, size: 128, offset: 5056)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !111, file: !112, line: 540, baseType: !4084, size: 64, offset: 5184)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4086, line: 54, size: 960, elements: !4087)
!4086 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4087 = !{!4088, !4089, !4090, !4091, !4092, !4093, !4094, !4098, !4102, !4103, !4104, !4105, !4109, !4113, !4114}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4085, file: !4086, line: 55, baseType: !46, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4085, file: !4086, line: 56, baseType: !519, size: 64, offset: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4085, file: !4086, line: 58, baseType: !221, size: 64, offset: 128)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4085, file: !4086, line: 59, baseType: !221, size: 64, offset: 192)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4085, file: !4086, line: 60, baseType: !121, size: 64, offset: 256)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4085, file: !4086, line: 62, baseType: !3315, size: 64, offset: 320)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4085, file: !4086, line: 63, baseType: !4095, size: 64, offset: 384)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!169, !110, !3322}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4085, file: !4086, line: 65, baseType: !4099, size: 64, offset: 448)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{null, !4084}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4085, file: !4086, line: 66, baseType: !3324, size: 64, offset: 512)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4085, file: !4086, line: 68, baseType: !3334, size: 64, offset: 576)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4085, file: !4086, line: 70, baseType: !3113, size: 64, offset: 640)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4085, file: !4086, line: 71, baseType: !4106, size: 64, offset: 704)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!2023, !110}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4085, file: !4086, line: 73, baseType: !4110, size: 64, offset: 768)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{null, !110, !3151, !3152}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4085, file: !4086, line: 75, baseType: !3328, size: 64, offset: 832)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4085, file: !4086, line: 77, baseType: !3452, size: 64, offset: 896)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !111, file: !112, line: 541, baseType: !221, size: 64, offset: 5248)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !111, file: !112, line: 543, baseType: !3324, size: 64, offset: 5312)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !111, file: !112, line: 544, baseType: !4118, size: 64, offset: 5376)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !112, line: 45, flags: DIFlagFwdDecl)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !111, file: !112, line: 545, baseType: !4121, size: 64, offset: 5440)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !112, line: 47, flags: DIFlagFwdDecl)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !111, file: !112, line: 547, baseType: !376, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !111, file: !112, line: 548, baseType: !376, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !111, file: !112, line: 549, baseType: !376, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !111, file: !112, line: 550, baseType: !376, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !21, file: !10, line: 635, baseType: !111, size: 5568, offset: 2304)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !21, file: !10, line: 636, baseType: !235, size: 64, offset: 7872)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !21, file: !10, line: 637, baseType: !235, size: 64, offset: 7936)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !21, file: !10, line: 638, baseType: !76, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !9, file: !10, line: 312, baseType: !20, size: 64, offset: 192)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !9, file: !10, line: 314, baseType: !75, size: 64, offset: 256)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !9, file: !10, line: 315, baseType: !93, size: 64, offset: 320)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !9, file: !10, line: 316, baseType: !4135, size: 64, offset: 384)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !10, line: 69, size: 832, elements: !4137)
!4137 = !{!4138, !4139, !4140, !4143, !4144}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4136, file: !10, line: 70, baseType: !20, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4136, file: !10, line: 71, baseType: !13, size: 128, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4136, file: !10, line: 72, baseType: !4141, size: 64, offset: 192)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !10, line: 72, flags: DIFlagFwdDecl)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4136, file: !10, line: 73, baseType: !97, size: 8, offset: 256)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4136, file: !10, line: 74, baseType: !115, size: 512, offset: 320)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !9, file: !10, line: 318, baseType: !76, size: 32, offset: 448)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !9, file: !10, line: 319, baseType: !106, size: 16, offset: 480)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !9, file: !10, line: 320, baseType: !106, size: 16, offset: 496)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !9, file: !10, line: 321, baseType: !106, size: 16, offset: 512)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !9, file: !10, line: 322, baseType: !106, size: 16, offset: 528)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !9, file: !10, line: 323, baseType: !76, size: 32, offset: 544)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !9, file: !10, line: 324, baseType: !1242, size: 8, offset: 576)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !9, file: !10, line: 325, baseType: !1242, size: 8, offset: 584)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !9, file: !10, line: 330, baseType: !1242, size: 8, offset: 592)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !9, file: !10, line: 331, baseType: !1242, size: 8, offset: 600)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !9, file: !10, line: 332, baseType: !1242, size: 8, offset: 608)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !9, file: !10, line: 333, baseType: !1242, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !9, file: !10, line: 334, baseType: !1242, size: 8, offset: 624)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !9, file: !10, line: 335, baseType: !1242, size: 8, offset: 632)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !9, file: !10, line: 336, baseType: !750, size: 16, offset: 640)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !9, file: !10, line: 337, baseType: !3775, size: 64, offset: 704)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !9, file: !10, line: 339, baseType: !4162, size: 64, offset: 768)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !10, line: 858, size: 2048, elements: !4164)
!4164 = !{!4165, !4166, !4167, !4179, !4183, !4187, !4191, !4195, !4196, !4200, !4219, !4220, !4221}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4163, file: !10, line: 859, baseType: !13, size: 128)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4163, file: !10, line: 860, baseType: !46, size: 64, offset: 128)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4163, file: !10, line: 861, baseType: !4168, size: 64, offset: 192)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4170)
!4170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3393, line: 38, size: 256, elements: !4171)
!4171 = !{!4172, !4173, !4174, !4175, !4176, !4177, !4178}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4170, file: !3393, line: 39, baseType: !83, size: 32)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4170, file: !3393, line: 39, baseType: !83, size: 32, offset: 32)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4170, file: !3393, line: 40, baseType: !83, size: 32, offset: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4170, file: !3393, line: 40, baseType: !83, size: 32, offset: 96)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4170, file: !3393, line: 41, baseType: !83, size: 32, offset: 128)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4170, file: !3393, line: 41, baseType: !83, size: 32, offset: 160)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4170, file: !3393, line: 42, baseType: !3412, size: 64, offset: 192)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4163, file: !10, line: 862, baseType: !4180, size: 64, offset: 256)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!6, !28, !4168}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4163, file: !10, line: 863, baseType: !4184, size: 64, offset: 320)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{null, !28}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4163, file: !10, line: 864, baseType: !4188, size: 64, offset: 384)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!6, !28, !3423}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4163, file: !10, line: 865, baseType: !4192, size: 64, offset: 448)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!6, !28}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4163, file: !10, line: 866, baseType: !4184, size: 64, offset: 512)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4163, file: !10, line: 867, baseType: !4197, size: 64, offset: 576)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!6, !28, !6}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4163, file: !10, line: 868, baseType: !4201, size: 64, offset: 640)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4203)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !10, line: 795, size: 384, elements: !4204)
!4204 = !{!4205, !4211, !4215, !4216, !4217, !4218}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4203, file: !10, line: 797, baseType: !4206, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!4209, !28, !4210}
!4209 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !10, line: 772, baseType: !76)
!4210 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !10, line: 180, baseType: !76)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4203, file: !10, line: 801, baseType: !4212, size: 64, offset: 64)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!4209, !28}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4203, file: !10, line: 804, baseType: !4212, size: 64, offset: 128)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4203, file: !10, line: 807, baseType: !4184, size: 64, offset: 192)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4203, file: !10, line: 808, baseType: !4184, size: 64, offset: 256)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4203, file: !10, line: 811, baseType: !4184, size: 64, offset: 320)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4163, file: !10, line: 869, baseType: !221, size: 64, offset: 704)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4163, file: !10, line: 870, baseType: !3375, size: 1152, offset: 768)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4163, file: !10, line: 871, baseType: !4222, size: 128, offset: 1920)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !10, line: 759, size: 128, elements: !4223)
!4223 = !{!4224, !4225}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4222, file: !10, line: 760, baseType: !128)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4222, file: !10, line: 761, baseType: !13, size: 128)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !9, file: !10, line: 340, baseType: !39, size: 64, offset: 832)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !9, file: !10, line: 346, baseType: !4069, size: 128, offset: 896)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !9, file: !10, line: 348, baseType: !4229, size: 32, offset: 1024)
!4229 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !10, line: 155, baseType: !6)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !9, file: !10, line: 351, baseType: !76, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !9, file: !10, line: 352, baseType: !1242, size: 8, offset: 1064)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !9, file: !10, line: 353, baseType: !76, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !9, file: !10, line: 355, baseType: !76, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !9, file: !10, line: 356, baseType: !76, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !9, file: !10, line: 357, baseType: !76, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !9, file: !10, line: 358, baseType: !76, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !9, file: !10, line: 359, baseType: !76, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !9, file: !10, line: 360, baseType: !76, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !9, file: !10, line: 361, baseType: !76, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !9, file: !10, line: 362, baseType: !76, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !9, file: !10, line: 364, baseType: !76, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !9, file: !10, line: 365, baseType: !76, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !9, file: !10, line: 369, baseType: !76, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !9, file: !10, line: 370, baseType: !76, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !9, file: !10, line: 371, baseType: !76, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !9, file: !10, line: 374, baseType: !76, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !9, file: !10, line: 376, baseType: !76, size: 32, offset: 1120)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !9, file: !10, line: 377, baseType: !76, size: 32, offset: 1152)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !9, file: !10, line: 380, baseType: !4250, size: 64, offset: 1216)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !10, line: 303, flags: DIFlagFwdDecl)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !9, file: !10, line: 381, baseType: !76, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !9, file: !10, line: 383, baseType: !6, size: 32, offset: 1312)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !9, file: !10, line: 385, baseType: !76, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !9, file: !10, line: 387, baseType: !4210, size: 32, offset: 1376)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !9, file: !10, line: 388, baseType: !111, size: 5568, offset: 1408)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !9, file: !10, line: 390, baseType: !6, size: 32, offset: 6976)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !9, file: !10, line: 396, baseType: !76, size: 32, offset: 7008)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !9, file: !10, line: 397, baseType: !4260, size: 8704, offset: 7040)
!4260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 8704, elements: !4261)
!4261 = !{!4262}
!4262 = !DISubrange(count: 17)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !9, file: !10, line: 399, baseType: !376, size: 8, offset: 15744)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !9, file: !10, line: 401, baseType: !76, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !9, file: !10, line: 402, baseType: !76, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !9, file: !10, line: 403, baseType: !76, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !9, file: !10, line: 404, baseType: !76, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !9, file: !10, line: 405, baseType: !76, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !9, file: !10, line: 407, baseType: !76, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !9, file: !10, line: 408, baseType: !76, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !9, file: !10, line: 409, baseType: !76, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !9, file: !10, line: 410, baseType: !76, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !9, file: !10, line: 411, baseType: !76, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !9, file: !10, line: 412, baseType: !76, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !9, file: !10, line: 413, baseType: !76, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !9, file: !10, line: 414, baseType: !76, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !9, file: !10, line: 415, baseType: !76, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !9, file: !10, line: 416, baseType: !76, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !9, file: !10, line: 417, baseType: !76, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !9, file: !10, line: 418, baseType: !76, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !9, file: !10, line: 419, baseType: !76, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !9, file: !10, line: 420, baseType: !76, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !9, file: !10, line: 421, baseType: !76, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !9, file: !10, line: 422, baseType: !76, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !9, file: !10, line: 423, baseType: !76, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !9, file: !10, line: 424, baseType: !76, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !9, file: !10, line: 425, baseType: !76, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !9, file: !10, line: 426, baseType: !76, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !9, file: !10, line: 427, baseType: !76, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !9, file: !10, line: 435, baseType: !76, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !9, file: !10, line: 441, baseType: !76, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !9, file: !10, line: 442, baseType: !76, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !9, file: !10, line: 443, baseType: !76, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !9, file: !10, line: 444, baseType: !76, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !9, file: !10, line: 445, baseType: !76, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !9, file: !10, line: 446, baseType: !76, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !9, file: !10, line: 447, baseType: !76, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !9, file: !10, line: 448, baseType: !76, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !9, file: !10, line: 449, baseType: !76, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !9, file: !10, line: 450, baseType: !4301, size: 16, offset: 15792)
!4301 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !10, line: 206, baseType: !106)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !9, file: !10, line: 451, baseType: !638, size: 32, offset: 15808)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !9, file: !10, line: 453, baseType: !3759, size: 512, offset: 15840)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !9, file: !10, line: 454, baseType: !524, size: 64, offset: 16384)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !9, file: !10, line: 455, baseType: !235, size: 64, offset: 16448)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !9, file: !10, line: 456, baseType: !6, size: 32, offset: 16512)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !9, file: !10, line: 457, baseType: !4308, size: 1088, offset: 16576)
!4308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 1088, elements: !4261)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !9, file: !10, line: 458, baseType: !4308, size: 1088, offset: 17664)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !9, file: !10, line: 469, baseType: !221, size: 64, offset: 18752)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !9, file: !10, line: 471, baseType: !4312, size: 64, offset: 18816)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !10, line: 304, flags: DIFlagFwdDecl)
!4314 = !DIDerivedType(tag: DW_TAG_member, scope: !9, file: !10, line: 478, baseType: !4315, size: 64, offset: 18880)
!4315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !9, file: !10, line: 478, size: 64, elements: !4316)
!4316 = !{!4317, !4345}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4315, file: !10, line: 479, baseType: !4318, size: 64)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4320, line: 323, size: 1024, elements: !4321)
!4320 = !DIFile(filename: "drivers/pci/pci.h", directory: "/home/lizy2001/genbc/linux")
!4321 = !{!4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4344}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4319, file: !4320, line: 324, baseType: !6, size: 32)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !4319, file: !4320, line: 325, baseType: !6, size: 32, offset: 32)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4319, file: !4320, line: 326, baseType: !82, size: 32, offset: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4319, file: !4320, line: 327, baseType: !750, size: 16, offset: 96)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "total_VFs", scope: !4319, file: !4320, line: 328, baseType: !750, size: 16, offset: 112)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "initial_VFs", scope: !4319, file: !4320, line: 329, baseType: !750, size: 16, offset: 128)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "num_VFs", scope: !4319, file: !4320, line: 330, baseType: !750, size: 16, offset: 144)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4319, file: !4320, line: 331, baseType: !750, size: 16, offset: 160)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !4319, file: !4320, line: 332, baseType: !750, size: 16, offset: 176)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "vf_device", scope: !4319, file: !4320, line: 333, baseType: !750, size: 16, offset: 192)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "pgsz", scope: !4319, file: !4320, line: 334, baseType: !82, size: 32, offset: 224)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4319, file: !4320, line: 335, baseType: !1242, size: 8, offset: 256)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "max_VF_buses", scope: !4319, file: !4320, line: 336, baseType: !1242, size: 8, offset: 264)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "driver_max_VFs", scope: !4319, file: !4320, line: 337, baseType: !750, size: 16, offset: 272)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4319, file: !4320, line: 338, baseType: !28, size: 64, offset: 320)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4319, file: !4320, line: 339, baseType: !28, size: 64, offset: 384)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4319, file: !4320, line: 340, baseType: !82, size: 32, offset: 448)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4319, file: !4320, line: 341, baseType: !1242, size: 8, offset: 480)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4319, file: !4320, line: 342, baseType: !750, size: 16, offset: 496)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4319, file: !4320, line: 343, baseType: !750, size: 16, offset: 512)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "barsz", scope: !4319, file: !4320, line: 344, baseType: !4343, size: 384, offset: 576)
!4343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 384, elements: !1521)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !4319, file: !4320, line: 345, baseType: !376, size: 8, offset: 960)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4315, file: !10, line: 480, baseType: !28, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !9, file: !10, line: 482, baseType: !750, size: 16, offset: 18944)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !9, file: !10, line: 483, baseType: !1242, size: 8, offset: 18960)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !9, file: !10, line: 497, baseType: !750, size: 16, offset: 18976)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !9, file: !10, line: 498, baseType: !38, size: 64, offset: 19008)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !9, file: !10, line: 499, baseType: !215, size: 64, offset: 19072)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !9, file: !10, line: 500, baseType: !169, size: 64, offset: 19136)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !9, file: !10, line: 502, baseType: !50, size: 64, offset: 19200)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_phandle_args", file: !3624, line: 74, size: 640, elements: !4355)
!4355 = !{!4356, !4357, !4358}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !4354, file: !3624, line: 75, baseType: !3622, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "args_count", scope: !4354, file: !3624, line: 76, baseType: !6, size: 32, offset: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4354, file: !3624, line: 77, baseType: !4359, size: 512, offset: 96)
!4359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 512, elements: !1631)
!4360 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4361, retainedTypes: !4376, globals: !4388, splitDebugInlining: false, nameTableKind: None)
!4361 = !{!766, !968, !1193, !1316, !2273, !2368, !3055, !3074, !3119, !3384, !3469, !3556, !3564, !3736, !3868, !3918, !3998, !4362, !4367}
!4362 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4363, line: 10, baseType: !76, size: 32, elements: !4364)
!4363 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!4364 = !{!4365, !4366}
!4365 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!4366 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!4367 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 946, baseType: !76, size: 32, elements: !4368)
!4368 = !{!4369, !4370, !4371, !4372, !4373, !4374, !4375}
!4369 = !DIEnumerator(name: "PCI_REASSIGN_ALL_RSRC", value: 1, isUnsigned: true)
!4370 = !DIEnumerator(name: "PCI_REASSIGN_ALL_BUS", value: 2, isUnsigned: true)
!4371 = !DIEnumerator(name: "PCI_PROBE_ONLY", value: 4, isUnsigned: true)
!4372 = !DIEnumerator(name: "PCI_CAN_SKIP_ISA_ALIGN", value: 8, isUnsigned: true)
!4373 = !DIEnumerator(name: "PCI_ENABLE_PROC_DOMAINS", value: 16, isUnsigned: true)
!4374 = !DIEnumerator(name: "PCI_COMPAT_DOMAIN_0", value: 32, isUnsigned: true)
!4375 = !DIEnumerator(name: "PCI_SCAN_ALL_PCIE_DEVS", value: 64, isUnsigned: true)
!4376 = !{!75, !6, !750, !4377, !83, !4378, !4386, !37, !39, !634}
!4377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !2815, line: 32, baseType: !83)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource_entry", file: !4380, line: 23, size: 768, elements: !4381)
!4380 = !DIFile(filename: "./include/linux/resource_ext.h", directory: "/home/lizy2001/genbc/linux")
!4381 = !{!4382, !4383, !4384, !4385}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4379, file: !4380, line: 24, baseType: !13, size: 128)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !4379, file: !4380, line: 25, baseType: !32, size: 64, offset: 128)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4379, file: !4380, line: 26, baseType: !37, size: 64, offset: 192)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "__res", scope: !4379, file: !4380, line: 27, baseType: !33, size: 512, offset: 256)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!4388 = !{!0}
!4389 = !{i32 7, !"Dwarf Version", i32 4}
!4390 = !{i32 2, !"Debug Info Version", i32 3}
!4391 = !{i32 1, !"wchar_size", i32 2}
!4392 = !{i32 1, !"Code Model", i32 2}
!4393 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4394 = distinct !DISubprogram(name: "pci_set_of_node", scope: !3, file: !3, line: 19, type: !4185, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4395 = !DILocalVariable(name: "dev", arg: 1, scope: !4394, file: !3, line: 19, type: !28)
!4396 = !DILocation(line: 19, column: 38, scope: !4394)
!4397 = !DILocation(line: 21, column: 7, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 21, column: 6)
!4399 = !DILocation(line: 21, column: 12, scope: !4398)
!4400 = !DILocation(line: 21, column: 17, scope: !4398)
!4401 = !DILocation(line: 21, column: 21, scope: !4398)
!4402 = !DILocation(line: 21, column: 6, scope: !4394)
!4403 = !DILocation(line: 22, column: 3, scope: !4398)
!4404 = !DILocation(line: 23, column: 46, scope: !4394)
!4405 = !DILocation(line: 23, column: 51, scope: !4394)
!4406 = !DILocation(line: 23, column: 56, scope: !4394)
!4407 = !DILocation(line: 23, column: 60, scope: !4394)
!4408 = !DILocation(line: 24, column: 11, scope: !4394)
!4409 = !DILocation(line: 24, column: 16, scope: !4394)
!4410 = !DILocation(line: 23, column: 21, scope: !4394)
!4411 = !DILocation(line: 23, column: 2, scope: !4394)
!4412 = !DILocation(line: 23, column: 7, scope: !4394)
!4413 = !DILocation(line: 23, column: 11, scope: !4394)
!4414 = !DILocation(line: 23, column: 19, scope: !4394)
!4415 = !DILocation(line: 25, column: 6, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 25, column: 6)
!4417 = !DILocation(line: 25, column: 11, scope: !4416)
!4418 = !DILocation(line: 25, column: 15, scope: !4416)
!4419 = !DILocation(line: 25, column: 6, scope: !4394)
!4420 = !DILocation(line: 26, column: 22, scope: !4416)
!4421 = !DILocation(line: 26, column: 27, scope: !4416)
!4422 = !DILocation(line: 26, column: 31, scope: !4416)
!4423 = !DILocation(line: 26, column: 40, scope: !4416)
!4424 = !DILocation(line: 26, column: 3, scope: !4416)
!4425 = !DILocation(line: 26, column: 8, scope: !4416)
!4426 = !DILocation(line: 26, column: 12, scope: !4416)
!4427 = !DILocation(line: 26, column: 19, scope: !4416)
!4428 = !DILocation(line: 27, column: 1, scope: !4394)
!4429 = distinct !DISubprogram(name: "of_pci_find_child_device", scope: !3, file: !3, line: 118, type: !4430, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!3622, !3622, !76}
!4432 = !DILocalVariable(name: "parent", arg: 1, scope: !4429, file: !3, line: 118, type: !3622)
!4433 = !DILocation(line: 118, column: 66, scope: !4429)
!4434 = !DILocalVariable(name: "devfn", arg: 2, scope: !4429, file: !3, line: 119, type: !76)
!4435 = !DILocation(line: 119, column: 24, scope: !4429)
!4436 = !DILocalVariable(name: "node", scope: !4429, file: !3, line: 121, type: !3622)
!4437 = !DILocation(line: 121, column: 22, scope: !4429)
!4438 = !DILocalVariable(name: "node2", scope: !4429, file: !3, line: 121, type: !3622)
!4439 = !DILocation(line: 121, column: 29, scope: !4429)
!4440 = !DILocation(line: 123, column: 2, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 123, column: 2)
!4442 = !DILocation(line: 123, column: 2, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 123, column: 2)
!4444 = !DILocation(line: 124, column: 28, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 124, column: 7)
!4446 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 123, column: 39)
!4447 = !DILocation(line: 124, column: 34, scope: !4445)
!4448 = !DILocation(line: 124, column: 7, scope: !4445)
!4449 = !DILocation(line: 124, column: 7, scope: !4446)
!4450 = !DILocation(line: 125, column: 11, scope: !4445)
!4451 = !DILocation(line: 125, column: 4, scope: !4445)
!4452 = !DILocation(line: 131, column: 23, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 131, column: 7)
!4454 = !DILocation(line: 131, column: 7, scope: !4453)
!4455 = !DILocation(line: 131, column: 7, scope: !4446)
!4456 = !DILocation(line: 132, column: 4, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 132, column: 4)
!4458 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 131, column: 50)
!4459 = !DILocation(line: 132, column: 4, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4457, file: !3, line: 132, column: 4)
!4461 = !DILocation(line: 133, column: 30, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 133, column: 9)
!4463 = distinct !DILexicalBlock(scope: !4460, file: !3, line: 132, column: 40)
!4464 = !DILocation(line: 133, column: 37, scope: !4462)
!4465 = !DILocation(line: 133, column: 9, scope: !4462)
!4466 = !DILocation(line: 133, column: 9, scope: !4463)
!4467 = !DILocation(line: 134, column: 18, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 133, column: 45)
!4469 = !DILocation(line: 134, column: 6, scope: !4468)
!4470 = !DILocation(line: 135, column: 13, scope: !4468)
!4471 = !DILocation(line: 135, column: 6, scope: !4468)
!4472 = !DILocation(line: 137, column: 4, scope: !4463)
!4473 = distinct !{!4473, !4456, !4474}
!4474 = !DILocation(line: 137, column: 4, scope: !4457)
!4475 = !DILocation(line: 138, column: 3, scope: !4458)
!4476 = !DILocation(line: 139, column: 2, scope: !4446)
!4477 = distinct !{!4477, !4440, !4478}
!4478 = !DILocation(line: 139, column: 2, scope: !4441)
!4479 = !DILocation(line: 140, column: 2, scope: !4429)
!4480 = !DILocation(line: 141, column: 1, scope: !4429)
!4481 = distinct !DISubprogram(name: "pci_release_of_node", scope: !3, file: !3, line: 29, type: !4185, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4482 = !DILocalVariable(name: "dev", arg: 1, scope: !4481, file: !3, line: 29, type: !28)
!4483 = !DILocation(line: 29, column: 42, scope: !4481)
!4484 = !DILocation(line: 31, column: 14, scope: !4481)
!4485 = !DILocation(line: 31, column: 19, scope: !4481)
!4486 = !DILocation(line: 31, column: 23, scope: !4481)
!4487 = !DILocation(line: 31, column: 2, scope: !4481)
!4488 = !DILocation(line: 32, column: 2, scope: !4481)
!4489 = !DILocation(line: 32, column: 7, scope: !4481)
!4490 = !DILocation(line: 32, column: 11, scope: !4481)
!4491 = !DILocation(line: 32, column: 19, scope: !4481)
!4492 = !DILocation(line: 33, column: 2, scope: !4481)
!4493 = !DILocation(line: 33, column: 7, scope: !4481)
!4494 = !DILocation(line: 33, column: 11, scope: !4481)
!4495 = !DILocation(line: 33, column: 18, scope: !4481)
!4496 = !DILocation(line: 34, column: 1, scope: !4481)
!4497 = distinct !DISubprogram(name: "of_node_put", scope: !3624, file: !3624, line: 129, type: !4498, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{null, !3622}
!4500 = !DILocalVariable(name: "node", arg: 1, scope: !4497, file: !3624, line: 129, type: !3622)
!4501 = !DILocation(line: 129, column: 52, scope: !4497)
!4502 = !DILocation(line: 129, column: 60, scope: !4497)
!4503 = distinct !DISubprogram(name: "pci_set_bus_of_node", scope: !3, file: !3, line: 36, type: !69, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4504 = !DILocalVariable(name: "bus", arg: 1, scope: !4503, file: !3, line: 36, type: !20)
!4505 = !DILocation(line: 36, column: 42, scope: !4503)
!4506 = !DILocalVariable(name: "node", scope: !4503, file: !3, line: 38, type: !3622)
!4507 = !DILocation(line: 38, column: 22, scope: !4503)
!4508 = !DILocation(line: 40, column: 6, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4503, file: !3, line: 40, column: 6)
!4510 = !DILocation(line: 40, column: 11, scope: !4509)
!4511 = !DILocation(line: 40, column: 16, scope: !4509)
!4512 = !DILocation(line: 40, column: 6, scope: !4503)
!4513 = !DILocation(line: 41, column: 34, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 40, column: 25)
!4515 = !DILocation(line: 41, column: 10, scope: !4514)
!4516 = !DILocation(line: 41, column: 8, scope: !4514)
!4517 = !DILocation(line: 42, column: 2, scope: !4514)
!4518 = !DILocation(line: 43, column: 22, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 42, column: 9)
!4520 = !DILocation(line: 43, column: 27, scope: !4519)
!4521 = !DILocation(line: 43, column: 33, scope: !4519)
!4522 = !DILocation(line: 43, column: 37, scope: !4519)
!4523 = !DILocation(line: 43, column: 10, scope: !4519)
!4524 = !DILocation(line: 43, column: 8, scope: !4519)
!4525 = !DILocation(line: 44, column: 7, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 44, column: 7)
!4527 = !DILocation(line: 44, column: 12, scope: !4526)
!4528 = !DILocation(line: 44, column: 37, scope: !4526)
!4529 = !DILocation(line: 44, column: 15, scope: !4526)
!4530 = !DILocation(line: 44, column: 7, scope: !4519)
!4531 = !DILocation(line: 45, column: 4, scope: !4526)
!4532 = !DILocation(line: 45, column: 9, scope: !4526)
!4533 = !DILocation(line: 45, column: 15, scope: !4526)
!4534 = !DILocation(line: 45, column: 31, scope: !4526)
!4535 = !DILocation(line: 48, column: 21, scope: !4503)
!4536 = !DILocation(line: 48, column: 2, scope: !4503)
!4537 = !DILocation(line: 48, column: 7, scope: !4503)
!4538 = !DILocation(line: 48, column: 11, scope: !4503)
!4539 = !DILocation(line: 48, column: 19, scope: !4503)
!4540 = !DILocation(line: 50, column: 6, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4503, file: !3, line: 50, column: 6)
!4542 = !DILocation(line: 50, column: 11, scope: !4541)
!4543 = !DILocation(line: 50, column: 15, scope: !4541)
!4544 = !DILocation(line: 50, column: 6, scope: !4503)
!4545 = !DILocation(line: 51, column: 22, scope: !4541)
!4546 = !DILocation(line: 51, column: 27, scope: !4541)
!4547 = !DILocation(line: 51, column: 31, scope: !4541)
!4548 = !DILocation(line: 51, column: 40, scope: !4541)
!4549 = !DILocation(line: 51, column: 3, scope: !4541)
!4550 = !DILocation(line: 51, column: 8, scope: !4541)
!4551 = !DILocation(line: 51, column: 12, scope: !4541)
!4552 = !DILocation(line: 51, column: 19, scope: !4541)
!4553 = !DILocation(line: 52, column: 1, scope: !4503)
!4554 = distinct !DISubprogram(name: "pcibios_get_phb_of_node", scope: !3, file: !3, line: 61, type: !4555, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!3622, !20}
!4557 = !DILocalVariable(name: "bus", arg: 1, scope: !4554, file: !3, line: 61, type: !20)
!4558 = !DILocation(line: 61, column: 69, scope: !4554)
!4559 = !DILocalVariable(name: "__ret_warn_on", scope: !4560, file: !3, line: 64, type: !6)
!4560 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 64, column: 6)
!4561 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 64, column: 6)
!4562 = !DILocation(line: 64, column: 6, scope: !4560)
!4563 = !DILocation(line: 64, column: 6, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4560, file: !3, line: 64, column: 6)
!4565 = !DILocation(line: 64, column: 6, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 64, column: 6)
!4567 = !DILocation(line: 64, column: 6, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 64, column: 6)
!4569 = !DILocation(line: 64, column: 6, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 64, column: 6)
!4571 = !{i32 -2141635162, i32 -2141635133, i32 -2141635087, i32 -2141635029, i32 -2141634975, i32 -2141634921, i32 -2141634866, i32 -2141634835}
!4572 = !DILocation(line: 64, column: 6, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 64, column: 6)
!4574 = !{i32 -2141634438, i32 -2141634431, i32 -2141634379, i32 -2141634348, i32 -2141634318}
!4575 = !DILocation(line: 64, column: 6, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 64, column: 6)
!4577 = !DILocation(line: 64, column: 6, scope: !4561)
!4578 = !DILocation(line: 64, column: 6, scope: !4554)
!4579 = !DILocation(line: 65, column: 3, scope: !4561)
!4580 = !DILocation(line: 72, column: 6, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 72, column: 6)
!4582 = !DILocation(line: 72, column: 11, scope: !4581)
!4583 = !DILocation(line: 72, column: 19, scope: !4581)
!4584 = !DILocation(line: 72, column: 6, scope: !4554)
!4585 = !DILocation(line: 73, column: 22, scope: !4581)
!4586 = !DILocation(line: 73, column: 27, scope: !4581)
!4587 = !DILocation(line: 73, column: 35, scope: !4581)
!4588 = !DILocation(line: 73, column: 10, scope: !4581)
!4589 = !DILocation(line: 73, column: 3, scope: !4581)
!4590 = !DILocation(line: 74, column: 6, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 74, column: 6)
!4592 = !DILocation(line: 74, column: 11, scope: !4591)
!4593 = !DILocation(line: 74, column: 19, scope: !4591)
!4594 = !DILocation(line: 74, column: 26, scope: !4591)
!4595 = !DILocation(line: 74, column: 29, scope: !4591)
!4596 = !DILocation(line: 74, column: 34, scope: !4591)
!4597 = !DILocation(line: 74, column: 42, scope: !4591)
!4598 = !DILocation(line: 74, column: 50, scope: !4591)
!4599 = !DILocation(line: 74, column: 6, scope: !4554)
!4600 = !DILocation(line: 75, column: 22, scope: !4591)
!4601 = !DILocation(line: 75, column: 27, scope: !4591)
!4602 = !DILocation(line: 75, column: 35, scope: !4591)
!4603 = !DILocation(line: 75, column: 43, scope: !4591)
!4604 = !DILocation(line: 75, column: 10, scope: !4591)
!4605 = !DILocation(line: 75, column: 3, scope: !4591)
!4606 = !DILocation(line: 76, column: 2, scope: !4554)
!4607 = !DILocation(line: 77, column: 1, scope: !4554)
!4608 = distinct !DISubprogram(name: "of_node_get", scope: !3624, file: !3624, line: 125, type: !4609, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!3622, !3622}
!4611 = !DILocalVariable(name: "node", arg: 1, scope: !4608, file: !3624, line: 125, type: !3622)
!4612 = !DILocation(line: 125, column: 67, scope: !4608)
!4613 = !DILocation(line: 127, column: 9, scope: !4608)
!4614 = !DILocation(line: 127, column: 2, scope: !4608)
!4615 = distinct !DISubprogram(name: "of_property_read_bool", scope: !3624, file: !3624, line: 1192, type: !4616, scopeLine: 1194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!376, !4618, !46}
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3623)
!4620 = !DILocalVariable(name: "np", arg: 1, scope: !4615, file: !3624, line: 1192, type: !4618)
!4621 = !DILocation(line: 1192, column: 68, scope: !4615)
!4622 = !DILocalVariable(name: "propname", arg: 2, scope: !4615, file: !3624, line: 1193, type: !46)
!4623 = !DILocation(line: 1193, column: 19, scope: !4615)
!4624 = !DILocalVariable(name: "prop", scope: !4615, file: !3624, line: 1195, type: !3721)
!4625 = !DILocation(line: 1195, column: 19, scope: !4615)
!4626 = !DILocation(line: 1195, column: 43, scope: !4615)
!4627 = !DILocation(line: 1195, column: 47, scope: !4615)
!4628 = !DILocation(line: 1195, column: 26, scope: !4615)
!4629 = !DILocation(line: 1197, column: 9, scope: !4615)
!4630 = !DILocation(line: 1197, column: 2, scope: !4615)
!4631 = distinct !DISubprogram(name: "pci_release_bus_of_node", scope: !3, file: !3, line: 54, type: !69, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4632 = !DILocalVariable(name: "bus", arg: 1, scope: !4631, file: !3, line: 54, type: !20)
!4633 = !DILocation(line: 54, column: 46, scope: !4631)
!4634 = !DILocation(line: 56, column: 14, scope: !4631)
!4635 = !DILocation(line: 56, column: 19, scope: !4631)
!4636 = !DILocation(line: 56, column: 23, scope: !4631)
!4637 = !DILocation(line: 56, column: 2, scope: !4631)
!4638 = !DILocation(line: 57, column: 2, scope: !4631)
!4639 = !DILocation(line: 57, column: 7, scope: !4631)
!4640 = !DILocation(line: 57, column: 11, scope: !4631)
!4641 = !DILocation(line: 57, column: 19, scope: !4631)
!4642 = !DILocation(line: 58, column: 2, scope: !4631)
!4643 = !DILocation(line: 58, column: 7, scope: !4631)
!4644 = !DILocation(line: 58, column: 11, scope: !4631)
!4645 = !DILocation(line: 58, column: 18, scope: !4631)
!4646 = !DILocation(line: 59, column: 1, scope: !4631)
!4647 = distinct !DISubprogram(name: "pci_host_bridge_of_msi_domain", scope: !3, file: !3, line: 79, type: !4648, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!3607, !20}
!4650 = !DILocalVariable(name: "bus", arg: 1, scope: !4647, file: !3, line: 79, type: !20)
!4651 = !DILocation(line: 79, column: 66, scope: !4647)
!4652 = !DILocalVariable(name: "d", scope: !4647, file: !3, line: 82, type: !3607)
!4653 = !DILocation(line: 82, column: 21, scope: !4647)
!4654 = !DILocation(line: 84, column: 7, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4647, file: !3, line: 84, column: 6)
!4656 = !DILocation(line: 84, column: 12, scope: !4655)
!4657 = !DILocation(line: 84, column: 16, scope: !4655)
!4658 = !DILocation(line: 84, column: 6, scope: !4647)
!4659 = !DILocation(line: 85, column: 3, scope: !4655)
!4660 = !DILocation(line: 88, column: 25, scope: !4647)
!4661 = !DILocation(line: 88, column: 30, scope: !4647)
!4662 = !DILocation(line: 88, column: 35, scope: !4647)
!4663 = !DILocation(line: 88, column: 40, scope: !4647)
!4664 = !DILocation(line: 88, column: 44, scope: !4647)
!4665 = !DILocation(line: 88, column: 6, scope: !4647)
!4666 = !DILocation(line: 88, column: 4, scope: !4647)
!4667 = !DILocation(line: 89, column: 6, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4647, file: !3, line: 89, column: 6)
!4669 = !DILocation(line: 89, column: 6, scope: !4647)
!4670 = !DILocation(line: 90, column: 10, scope: !4668)
!4671 = !DILocation(line: 90, column: 3, scope: !4668)
!4672 = !DILocation(line: 96, column: 29, scope: !4647)
!4673 = !DILocation(line: 96, column: 34, scope: !4647)
!4674 = !DILocation(line: 96, column: 38, scope: !4647)
!4675 = !DILocation(line: 96, column: 6, scope: !4647)
!4676 = !DILocation(line: 96, column: 4, scope: !4647)
!4677 = !DILocation(line: 97, column: 6, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4647, file: !3, line: 97, column: 6)
!4679 = !DILocation(line: 97, column: 6, scope: !4647)
!4680 = !DILocation(line: 98, column: 10, scope: !4678)
!4681 = !DILocation(line: 98, column: 3, scope: !4678)
!4682 = !DILocation(line: 100, column: 23, scope: !4647)
!4683 = !DILocation(line: 100, column: 28, scope: !4647)
!4684 = !DILocation(line: 100, column: 32, scope: !4647)
!4685 = !DILocation(line: 100, column: 9, scope: !4647)
!4686 = !DILocation(line: 100, column: 2, scope: !4647)
!4687 = !DILocation(line: 104, column: 1, scope: !4647)
!4688 = distinct !DISubprogram(name: "irq_find_matching_host", scope: !3609, file: !3609, line: 309, type: !4689, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!3607, !3622, !3736}
!4691 = !DILocalVariable(name: "node", arg: 1, scope: !4688, file: !3609, line: 309, type: !3622)
!4692 = !DILocation(line: 309, column: 77, scope: !4688)
!4693 = !DILocalVariable(name: "bus_token", arg: 2, scope: !4688, file: !3609, line: 310, type: !3736)
!4694 = !DILocation(line: 310, column: 34, scope: !4688)
!4695 = !DILocation(line: 312, column: 52, scope: !4688)
!4696 = !DILocation(line: 312, column: 34, scope: !4688)
!4697 = !DILocation(line: 312, column: 59, scope: !4688)
!4698 = !DILocation(line: 312, column: 9, scope: !4688)
!4699 = !DILocation(line: 312, column: 2, scope: !4688)
!4700 = distinct !DISubprogram(name: "irq_find_host", scope: !3609, file: !3609, line: 315, type: !4701, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!3607, !3622}
!4703 = !DILocalVariable(name: "node", arg: 1, scope: !4700, file: !3609, line: 315, type: !3622)
!4704 = !DILocation(line: 315, column: 68, scope: !4700)
!4705 = !DILocalVariable(name: "d", scope: !4700, file: !3609, line: 317, type: !3607)
!4706 = !DILocation(line: 317, column: 21, scope: !4700)
!4707 = !DILocation(line: 319, column: 29, scope: !4700)
!4708 = !DILocation(line: 319, column: 6, scope: !4700)
!4709 = !DILocation(line: 319, column: 4, scope: !4700)
!4710 = !DILocation(line: 320, column: 7, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4700, file: !3609, line: 320, column: 6)
!4712 = !DILocation(line: 320, column: 6, scope: !4700)
!4713 = !DILocation(line: 321, column: 30, scope: !4711)
!4714 = !DILocation(line: 321, column: 7, scope: !4711)
!4715 = !DILocation(line: 321, column: 5, scope: !4711)
!4716 = !DILocation(line: 321, column: 3, scope: !4711)
!4717 = !DILocation(line: 323, column: 9, scope: !4700)
!4718 = !DILocation(line: 323, column: 2, scope: !4700)
!4719 = distinct !DISubprogram(name: "__of_pci_pci_compare", scope: !3, file: !3, line: 106, type: !4720, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!6, !3622, !76}
!4722 = !DILocalVariable(name: "node", arg: 1, scope: !4719, file: !3, line: 106, type: !3622)
!4723 = !DILocation(line: 106, column: 60, scope: !4719)
!4724 = !DILocalVariable(name: "data", arg: 2, scope: !4719, file: !3, line: 107, type: !76)
!4725 = !DILocation(line: 107, column: 25, scope: !4719)
!4726 = !DILocalVariable(name: "devfn", scope: !4719, file: !3, line: 109, type: !6)
!4727 = !DILocation(line: 109, column: 6, scope: !4719)
!4728 = !DILocation(line: 111, column: 27, scope: !4719)
!4729 = !DILocation(line: 111, column: 10, scope: !4719)
!4730 = !DILocation(line: 111, column: 8, scope: !4719)
!4731 = !DILocation(line: 112, column: 6, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 112, column: 6)
!4733 = !DILocation(line: 112, column: 12, scope: !4732)
!4734 = !DILocation(line: 112, column: 6, scope: !4719)
!4735 = !DILocation(line: 113, column: 3, scope: !4732)
!4736 = !DILocation(line: 115, column: 9, scope: !4719)
!4737 = !DILocation(line: 115, column: 18, scope: !4719)
!4738 = !DILocation(line: 115, column: 15, scope: !4719)
!4739 = !DILocation(line: 115, column: 2, scope: !4719)
!4740 = !DILocation(line: 116, column: 1, scope: !4719)
!4741 = distinct !DISubprogram(name: "of_pci_get_devfn", scope: !3, file: !3, line: 153, type: !4742, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!6, !3622}
!4744 = !DILocalVariable(name: "np", arg: 1, scope: !4741, file: !3, line: 153, type: !3622)
!4745 = !DILocation(line: 153, column: 42, scope: !4741)
!4746 = !DILocalVariable(name: "reg", scope: !4741, file: !3, line: 155, type: !4747)
!4747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 160, elements: !4748)
!4748 = !{!4749}
!4749 = !DISubrange(count: 5)
!4750 = !DILocation(line: 155, column: 6, scope: !4741)
!4751 = !DILocalVariable(name: "error", scope: !4741, file: !3, line: 156, type: !6)
!4752 = !DILocation(line: 156, column: 6, scope: !4741)
!4753 = !DILocation(line: 158, column: 37, scope: !4741)
!4754 = !DILocation(line: 158, column: 48, scope: !4741)
!4755 = !DILocation(line: 158, column: 10, scope: !4741)
!4756 = !DILocation(line: 158, column: 8, scope: !4741)
!4757 = !DILocation(line: 159, column: 6, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 159, column: 6)
!4759 = !DILocation(line: 159, column: 6, scope: !4741)
!4760 = !DILocation(line: 160, column: 10, scope: !4758)
!4761 = !DILocation(line: 160, column: 3, scope: !4758)
!4762 = !DILocation(line: 162, column: 10, scope: !4741)
!4763 = !DILocation(line: 162, column: 17, scope: !4741)
!4764 = !DILocation(line: 162, column: 23, scope: !4741)
!4765 = !DILocation(line: 162, column: 2, scope: !4741)
!4766 = !DILocation(line: 163, column: 1, scope: !4741)
!4767 = distinct !DISubprogram(name: "of_property_read_u32_array", scope: !3624, file: !3624, line: 494, type: !4768, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4768 = !DISubroutineType(types: !4769)
!4769 = !{!6, !4618, !46, !81, !215}
!4770 = !DILocalVariable(name: "np", arg: 1, scope: !4767, file: !3624, line: 494, type: !4618)
!4771 = !DILocation(line: 494, column: 72, scope: !4767)
!4772 = !DILocalVariable(name: "propname", arg: 2, scope: !4767, file: !3624, line: 495, type: !46)
!4773 = !DILocation(line: 495, column: 23, scope: !4767)
!4774 = !DILocalVariable(name: "out_values", arg: 3, scope: !4767, file: !3624, line: 496, type: !81)
!4775 = !DILocation(line: 496, column: 16, scope: !4767)
!4776 = !DILocalVariable(name: "sz", arg: 4, scope: !4767, file: !3624, line: 496, type: !215)
!4777 = !DILocation(line: 496, column: 35, scope: !4767)
!4778 = !DILocalVariable(name: "ret", scope: !4767, file: !3624, line: 498, type: !6)
!4779 = !DILocation(line: 498, column: 6, scope: !4767)
!4780 = !DILocation(line: 498, column: 48, scope: !4767)
!4781 = !DILocation(line: 498, column: 52, scope: !4767)
!4782 = !DILocation(line: 498, column: 62, scope: !4767)
!4783 = !DILocation(line: 499, column: 13, scope: !4767)
!4784 = !DILocation(line: 498, column: 12, scope: !4767)
!4785 = !DILocation(line: 500, column: 6, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4767, file: !3624, line: 500, column: 6)
!4787 = !DILocation(line: 500, column: 10, scope: !4786)
!4788 = !DILocation(line: 500, column: 6, scope: !4767)
!4789 = !DILocation(line: 501, column: 3, scope: !4786)
!4790 = !DILocation(line: 503, column: 10, scope: !4786)
!4791 = !DILocation(line: 503, column: 3, scope: !4786)
!4792 = !DILocation(line: 504, column: 1, scope: !4767)
!4793 = distinct !DISubprogram(name: "of_pci_parse_bus_range", scope: !3, file: !3, line: 173, type: !4794, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{!6, !3622, !32}
!4796 = !DILocalVariable(name: "node", arg: 1, scope: !4793, file: !3, line: 173, type: !3622)
!4797 = !DILocation(line: 173, column: 48, scope: !4793)
!4798 = !DILocalVariable(name: "res", arg: 2, scope: !4793, file: !3, line: 173, type: !32)
!4799 = !DILocation(line: 173, column: 71, scope: !4793)
!4800 = !DILocalVariable(name: "bus_range", scope: !4793, file: !3, line: 175, type: !4801)
!4801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 64, elements: !1465)
!4802 = !DILocation(line: 175, column: 6, scope: !4793)
!4803 = !DILocalVariable(name: "error", scope: !4793, file: !3, line: 176, type: !6)
!4804 = !DILocation(line: 176, column: 6, scope: !4793)
!4805 = !DILocation(line: 178, column: 37, scope: !4793)
!4806 = !DILocation(line: 178, column: 56, scope: !4793)
!4807 = !DILocation(line: 178, column: 10, scope: !4793)
!4808 = !DILocation(line: 178, column: 8, scope: !4793)
!4809 = !DILocation(line: 180, column: 6, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 180, column: 6)
!4811 = !DILocation(line: 180, column: 6, scope: !4793)
!4812 = !DILocation(line: 181, column: 10, scope: !4810)
!4813 = !DILocation(line: 181, column: 3, scope: !4810)
!4814 = !DILocation(line: 183, column: 14, scope: !4793)
!4815 = !DILocation(line: 183, column: 20, scope: !4793)
!4816 = !DILocation(line: 183, column: 2, scope: !4793)
!4817 = !DILocation(line: 183, column: 7, scope: !4793)
!4818 = !DILocation(line: 183, column: 12, scope: !4793)
!4819 = !DILocation(line: 184, column: 15, scope: !4793)
!4820 = !DILocation(line: 184, column: 2, scope: !4793)
!4821 = !DILocation(line: 184, column: 7, scope: !4793)
!4822 = !DILocation(line: 184, column: 13, scope: !4793)
!4823 = !DILocation(line: 185, column: 13, scope: !4793)
!4824 = !DILocation(line: 185, column: 2, scope: !4793)
!4825 = !DILocation(line: 185, column: 7, scope: !4793)
!4826 = !DILocation(line: 185, column: 11, scope: !4793)
!4827 = !DILocation(line: 186, column: 2, scope: !4793)
!4828 = !DILocation(line: 186, column: 7, scope: !4793)
!4829 = !DILocation(line: 186, column: 13, scope: !4793)
!4830 = !DILocation(line: 188, column: 2, scope: !4793)
!4831 = !DILocation(line: 189, column: 1, scope: !4793)
!4832 = distinct !DISubprogram(name: "of_get_pci_domain_nr", scope: !3, file: !3, line: 201, type: !4742, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4833 = !DILocalVariable(name: "node", arg: 1, scope: !4832, file: !3, line: 201, type: !3622)
!4834 = !DILocation(line: 201, column: 46, scope: !4832)
!4835 = !DILocalVariable(name: "domain", scope: !4832, file: !3, line: 203, type: !82)
!4836 = !DILocation(line: 203, column: 6, scope: !4832)
!4837 = !DILocalVariable(name: "error", scope: !4832, file: !3, line: 204, type: !6)
!4838 = !DILocation(line: 204, column: 6, scope: !4832)
!4839 = !DILocation(line: 206, column: 31, scope: !4832)
!4840 = !DILocation(line: 206, column: 10, scope: !4832)
!4841 = !DILocation(line: 206, column: 8, scope: !4832)
!4842 = !DILocation(line: 207, column: 6, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4832, file: !3, line: 207, column: 6)
!4844 = !DILocation(line: 207, column: 6, scope: !4832)
!4845 = !DILocation(line: 208, column: 10, scope: !4843)
!4846 = !DILocation(line: 208, column: 3, scope: !4843)
!4847 = !DILocation(line: 210, column: 14, scope: !4832)
!4848 = !DILocation(line: 210, column: 9, scope: !4832)
!4849 = !DILocation(line: 210, column: 2, scope: !4832)
!4850 = !DILocation(line: 211, column: 1, scope: !4832)
!4851 = distinct !DISubprogram(name: "of_property_read_u32", scope: !3624, file: !3624, line: 1214, type: !4852, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!6, !4618, !46, !81}
!4854 = !DILocalVariable(name: "np", arg: 1, scope: !4851, file: !3624, line: 1214, type: !4618)
!4855 = !DILocation(line: 1214, column: 66, scope: !4851)
!4856 = !DILocalVariable(name: "propname", arg: 2, scope: !4851, file: !3624, line: 1215, type: !46)
!4857 = !DILocation(line: 1215, column: 24, scope: !4851)
!4858 = !DILocalVariable(name: "out_value", arg: 3, scope: !4851, file: !3624, line: 1216, type: !81)
!4859 = !DILocation(line: 1216, column: 17, scope: !4851)
!4860 = !DILocation(line: 1218, column: 36, scope: !4851)
!4861 = !DILocation(line: 1218, column: 40, scope: !4851)
!4862 = !DILocation(line: 1218, column: 50, scope: !4851)
!4863 = !DILocation(line: 1218, column: 9, scope: !4851)
!4864 = !DILocation(line: 1218, column: 2, scope: !4851)
!4865 = distinct !DISubprogram(name: "of_pci_check_probe_only", scope: !3, file: !3, line: 218, type: !1775, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4866 = !DILocalVariable(name: "val", scope: !4865, file: !3, line: 220, type: !82)
!4867 = !DILocation(line: 220, column: 6, scope: !4865)
!4868 = !DILocalVariable(name: "ret", scope: !4865, file: !3, line: 221, type: !6)
!4869 = !DILocation(line: 221, column: 6, scope: !4865)
!4870 = !DILocation(line: 223, column: 29, scope: !4865)
!4871 = !DILocation(line: 223, column: 8, scope: !4865)
!4872 = !DILocation(line: 223, column: 6, scope: !4865)
!4873 = !DILocation(line: 224, column: 6, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 224, column: 6)
!4875 = !DILocation(line: 224, column: 6, scope: !4865)
!4876 = !DILocation(line: 225, column: 7, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 225, column: 7)
!4878 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 224, column: 11)
!4879 = !DILocation(line: 225, column: 11, scope: !4877)
!4880 = !DILocation(line: 225, column: 23, scope: !4877)
!4881 = !DILocation(line: 225, column: 26, scope: !4877)
!4882 = !DILocation(line: 225, column: 30, scope: !4877)
!4883 = !DILocation(line: 225, column: 7, scope: !4878)
!4884 = !DILocation(line: 226, column: 4, scope: !4877)
!4885 = !DILocation(line: 227, column: 3, scope: !4878)
!4886 = !DILocation(line: 230, column: 6, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 230, column: 6)
!4888 = !DILocation(line: 230, column: 6, scope: !4865)
!4889 = !DILocation(line: 231, column: 3, scope: !4887)
!4890 = !DILocation(line: 233, column: 3, scope: !4887)
!4891 = !DILocation(line: 235, column: 2, scope: !4865)
!4892 = !DILocation(line: 236, column: 1, scope: !4865)
!4893 = distinct !DISubprogram(name: "pci_add_flags", scope: !10, file: !10, line: 967, type: !1768, scopeLine: 967, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4894 = !DILocalVariable(name: "flags", arg: 1, scope: !4893, file: !10, line: 967, type: !6)
!4895 = !DILocation(line: 967, column: 38, scope: !4893)
!4896 = !DILocation(line: 967, column: 60, scope: !4893)
!4897 = !DILocation(line: 967, column: 57, scope: !4893)
!4898 = !DILocation(line: 967, column: 67, scope: !4893)
!4899 = distinct !DISubprogram(name: "pci_clear_flags", scope: !10, file: !10, line: 968, type: !1768, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4900 = !DILocalVariable(name: "flags", arg: 1, scope: !4899, file: !10, line: 968, type: !6)
!4901 = !DILocation(line: 968, column: 40, scope: !4899)
!4902 = !DILocation(line: 968, column: 63, scope: !4899)
!4903 = !DILocation(line: 968, column: 62, scope: !4899)
!4904 = !DILocation(line: 968, column: 59, scope: !4899)
!4905 = !DILocation(line: 968, column: 70, scope: !4899)
!4906 = distinct !DISubprogram(name: "of_irq_parse_and_map_pci", scope: !3, file: !3, line: 512, type: !4907, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!6, !7, !1242, !1242}
!4909 = !DILocalVariable(name: "dev", arg: 1, scope: !4906, file: !3, line: 512, type: !7)
!4910 = !DILocation(line: 512, column: 52, scope: !4906)
!4911 = !DILocalVariable(name: "slot", arg: 2, scope: !4906, file: !3, line: 512, type: !1242)
!4912 = !DILocation(line: 512, column: 60, scope: !4906)
!4913 = !DILocalVariable(name: "pin", arg: 3, scope: !4906, file: !3, line: 512, type: !1242)
!4914 = !DILocation(line: 512, column: 69, scope: !4906)
!4915 = !DILocalVariable(name: "oirq", scope: !4906, file: !3, line: 514, type: !4354)
!4916 = !DILocation(line: 514, column: 25, scope: !4906)
!4917 = !DILocalVariable(name: "ret", scope: !4906, file: !3, line: 515, type: !6)
!4918 = !DILocation(line: 515, column: 6, scope: !4906)
!4919 = !DILocation(line: 517, column: 25, scope: !4906)
!4920 = !DILocation(line: 517, column: 8, scope: !4906)
!4921 = !DILocation(line: 517, column: 6, scope: !4906)
!4922 = !DILocation(line: 518, column: 6, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 518, column: 6)
!4924 = !DILocation(line: 518, column: 6, scope: !4906)
!4925 = !DILocation(line: 519, column: 3, scope: !4923)
!4926 = !DILocation(line: 521, column: 9, scope: !4906)
!4927 = !DILocation(line: 521, column: 2, scope: !4906)
!4928 = !DILocation(line: 522, column: 1, scope: !4906)
!4929 = !DILocalVariable(name: "pdev", arg: 1, scope: !2, file: !3, line: 407, type: !7)
!4930 = !DILocation(line: 407, column: 51, scope: !2)
!4931 = !DILocalVariable(name: "out_irq", arg: 2, scope: !2, file: !3, line: 407, type: !4353)
!4932 = !DILocation(line: 407, column: 81, scope: !2)
!4933 = !DILocalVariable(name: "dn", scope: !2, file: !3, line: 409, type: !3622)
!4934 = !DILocation(line: 409, column: 22, scope: !2)
!4935 = !DILocalVariable(name: "ppnode", scope: !2, file: !3, line: 409, type: !3622)
!4936 = !DILocation(line: 409, column: 27, scope: !2)
!4937 = !DILocalVariable(name: "ppdev", scope: !2, file: !3, line: 410, type: !28)
!4938 = !DILocation(line: 410, column: 18, scope: !2)
!4939 = !DILocalVariable(name: "laddr", scope: !2, file: !3, line: 411, type: !4940)
!4940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4377, size: 96, elements: !170)
!4941 = !DILocation(line: 411, column: 9, scope: !2)
!4942 = !DILocalVariable(name: "pin", scope: !2, file: !3, line: 412, type: !1242)
!4943 = !DILocation(line: 412, column: 5, scope: !2)
!4944 = !DILocalVariable(name: "rc", scope: !2, file: !3, line: 413, type: !6)
!4945 = !DILocation(line: 413, column: 6, scope: !2)
!4946 = !DILocation(line: 419, column: 29, scope: !2)
!4947 = !DILocation(line: 419, column: 7, scope: !2)
!4948 = !DILocation(line: 419, column: 5, scope: !2)
!4949 = !DILocation(line: 420, column: 6, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !2, file: !3, line: 420, column: 6)
!4951 = !DILocation(line: 420, column: 6, scope: !2)
!4952 = !DILocation(line: 421, column: 25, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4950, file: !3, line: 420, column: 10)
!4954 = !DILocation(line: 421, column: 32, scope: !4953)
!4955 = !DILocation(line: 421, column: 8, scope: !4953)
!4956 = !DILocation(line: 421, column: 6, scope: !4953)
!4957 = !DILocation(line: 422, column: 8, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 422, column: 7)
!4959 = !DILocation(line: 422, column: 7, scope: !4953)
!4960 = !DILocation(line: 423, column: 11, scope: !4958)
!4961 = !DILocation(line: 423, column: 4, scope: !4958)
!4962 = !DILocation(line: 424, column: 2, scope: !4953)
!4963 = !DILocation(line: 431, column: 28, scope: !2)
!4964 = !DILocation(line: 431, column: 7, scope: !2)
!4965 = !DILocation(line: 431, column: 5, scope: !2)
!4966 = !DILocation(line: 432, column: 6, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !2, file: !3, line: 432, column: 6)
!4968 = !DILocation(line: 432, column: 9, scope: !4967)
!4969 = !DILocation(line: 432, column: 6, scope: !2)
!4970 = !DILocation(line: 433, column: 3, scope: !4967)
!4971 = !DILocation(line: 435, column: 6, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !2, file: !3, line: 435, column: 6)
!4973 = !DILocation(line: 435, column: 10, scope: !4972)
!4974 = !DILocation(line: 435, column: 6, scope: !2)
!4975 = !DILocation(line: 436, column: 3, scope: !4972)
!4976 = !DILocation(line: 439, column: 2, scope: !2)
!4977 = !DILocation(line: 441, column: 11, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4979, file: !3, line: 439, column: 11)
!4979 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 439, column: 2)
!4980 = distinct !DILexicalBlock(scope: !2, file: !3, line: 439, column: 2)
!4981 = !DILocation(line: 441, column: 17, scope: !4978)
!4982 = !DILocation(line: 441, column: 22, scope: !4978)
!4983 = !DILocation(line: 441, column: 9, scope: !4978)
!4984 = !DILocation(line: 444, column: 7, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4978, file: !3, line: 444, column: 7)
!4986 = !DILocation(line: 444, column: 13, scope: !4985)
!4987 = !DILocation(line: 444, column: 7, scope: !4978)
!4988 = !DILocation(line: 445, column: 32, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4985, file: !3, line: 444, column: 22)
!4990 = !DILocation(line: 445, column: 38, scope: !4989)
!4991 = !DILocation(line: 445, column: 13, scope: !4989)
!4992 = !DILocation(line: 445, column: 11, scope: !4989)
!4993 = !DILocation(line: 448, column: 8, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 448, column: 8)
!4995 = !DILocation(line: 448, column: 15, scope: !4994)
!4996 = !DILocation(line: 448, column: 8, scope: !4989)
!4997 = !DILocation(line: 449, column: 8, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4994, file: !3, line: 448, column: 24)
!4999 = !DILocation(line: 450, column: 5, scope: !4998)
!5000 = !DILocation(line: 452, column: 3, scope: !4989)
!5001 = !DILocation(line: 454, column: 35, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4985, file: !3, line: 452, column: 10)
!5003 = !DILocation(line: 454, column: 13, scope: !5002)
!5004 = !DILocation(line: 454, column: 11, scope: !5002)
!5005 = !DILocation(line: 469, column: 7, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4978, file: !3, line: 469, column: 7)
!5007 = !DILocation(line: 469, column: 7, scope: !4978)
!5008 = !DILocation(line: 470, column: 4, scope: !5006)
!5009 = !DILocation(line: 476, column: 35, scope: !4978)
!5010 = !DILocation(line: 476, column: 41, scope: !4978)
!5011 = !DILocation(line: 476, column: 9, scope: !4978)
!5012 = !DILocation(line: 476, column: 7, scope: !4978)
!5013 = !DILocation(line: 477, column: 10, scope: !4978)
!5014 = !DILocation(line: 477, column: 8, scope: !4978)
!5015 = !DILocation(line: 439, column: 2, scope: !4979)
!5016 = distinct !{!5016, !5017, !5018}
!5017 = !DILocation(line: 439, column: 2, scope: !4980)
!5018 = !DILocation(line: 478, column: 2, scope: !4980)
!5019 = !DILocation(line: 480, column: 16, scope: !2)
!5020 = !DILocation(line: 480, column: 2, scope: !2)
!5021 = !DILocation(line: 480, column: 11, scope: !2)
!5022 = !DILocation(line: 480, column: 14, scope: !2)
!5023 = !DILocation(line: 481, column: 2, scope: !2)
!5024 = !DILocation(line: 481, column: 11, scope: !2)
!5025 = !DILocation(line: 481, column: 22, scope: !2)
!5026 = !DILocation(line: 482, column: 21, scope: !2)
!5027 = !DILocation(line: 482, column: 2, scope: !2)
!5028 = !DILocation(line: 482, column: 11, scope: !2)
!5029 = !DILocation(line: 482, column: 19, scope: !2)
!5030 = !DILocation(line: 483, column: 13, scope: !2)
!5031 = !DILocation(line: 483, column: 2, scope: !2)
!5032 = !DILocation(line: 483, column: 11, scope: !2)
!5033 = !DILocation(line: 484, column: 13, scope: !2)
!5034 = !DILocation(line: 484, column: 22, scope: !2)
!5035 = !DILocation(line: 484, column: 2, scope: !2)
!5036 = !DILocation(line: 484, column: 11, scope: !2)
!5037 = !DILocation(line: 485, column: 24, scope: !2)
!5038 = !DILocation(line: 485, column: 31, scope: !2)
!5039 = !DILocation(line: 485, column: 7, scope: !2)
!5040 = !DILocation(line: 485, column: 5, scope: !2)
!5041 = !DILocation(line: 486, column: 6, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !2, file: !3, line: 486, column: 6)
!5043 = !DILocation(line: 486, column: 6, scope: !2)
!5044 = !DILocation(line: 487, column: 3, scope: !5042)
!5045 = !DILocation(line: 488, column: 2, scope: !2)
!5046 = !DILabel(scope: !2, name: "err", file: !3, line: 489)
!5047 = !DILocation(line: 489, column: 1, scope: !2)
!5048 = !DILocation(line: 490, column: 6, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !2, file: !3, line: 490, column: 6)
!5050 = !DILocation(line: 490, column: 9, scope: !5049)
!5051 = !DILocation(line: 490, column: 6, scope: !2)
!5052 = !DILocation(line: 491, column: 3, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 490, column: 21)
!5054 = !DILocalVariable(name: "__ret_print_once", scope: !5055, file: !3, line: 494, type: !376)
!5055 = distinct !DILexicalBlock(scope: !5053, file: !3, line: 494, column: 3)
!5056 = !DILocation(line: 494, column: 3, scope: !5055)
!5057 = !DILocation(line: 494, column: 3, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 494, column: 3)
!5059 = !DILocation(line: 494, column: 3, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5058, file: !3, line: 494, column: 3)
!5061 = !DILocation(line: 496, column: 2, scope: !5053)
!5062 = !DILocation(line: 497, column: 3, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 496, column: 9)
!5064 = !DILocation(line: 499, column: 9, scope: !2)
!5065 = !DILocation(line: 499, column: 2, scope: !2)
!5066 = !DILocation(line: 500, column: 1, scope: !2)
!5067 = distinct !DISubprogram(name: "devm_of_pci_bridge_init", scope: !3, file: !3, line: 569, type: !5068, scopeLine: 570, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!5068 = !DISubroutineType(types: !5069)
!5069 = !{!6, !110, !5070}
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_host_bridge", file: !10, line: 524, size: 6656, elements: !5072)
!5072 = !{!5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5086, !5088, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5110}
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5071, file: !10, line: 525, baseType: !111, size: 5568)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5071, file: !10, line: 526, baseType: !20, size: 64, offset: 5568)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5071, file: !10, line: 527, baseType: !60, size: 64, offset: 5632)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "child_ops", scope: !5071, file: !10, line: 528, baseType: !60, size: 64, offset: 5696)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !5071, file: !10, line: 529, baseType: !75, size: 64, offset: 5760)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "busnr", scope: !5071, file: !10, line: 530, baseType: !6, size: 32, offset: 5824)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "windows", scope: !5071, file: !10, line: 531, baseType: !13, size: 128, offset: 5888)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ranges", scope: !5071, file: !10, line: 532, baseType: !13, size: 128, offset: 6016)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "swizzle_irq", scope: !5071, file: !10, line: 533, baseType: !5082, size: 64, offset: 6144)
!5082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5083, size: 64)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!1242, !28, !5085}
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "map_irq", scope: !5071, file: !10, line: 534, baseType: !5087, size: 64, offset: 6208)
!5087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "release_fn", scope: !5071, file: !10, line: 535, baseType: !5089, size: 64, offset: 6272)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{null, !5070}
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "release_data", scope: !5071, file: !10, line: 536, baseType: !75, size: 64, offset: 6336)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !5071, file: !10, line: 537, baseType: !89, size: 64, offset: 6400)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_reset_delay", scope: !5071, file: !10, line: 538, baseType: !76, size: 1, offset: 6464, flags: DIFlagBitField, extraData: i64 6464)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "no_ext_tags", scope: !5071, file: !10, line: 539, baseType: !76, size: 1, offset: 6465, flags: DIFlagBitField, extraData: i64 6464)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "native_aer", scope: !5071, file: !10, line: 540, baseType: !76, size: 1, offset: 6466, flags: DIFlagBitField, extraData: i64 6464)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "native_pcie_hotplug", scope: !5071, file: !10, line: 541, baseType: !76, size: 1, offset: 6467, flags: DIFlagBitField, extraData: i64 6464)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "native_shpc_hotplug", scope: !5071, file: !10, line: 542, baseType: !76, size: 1, offset: 6468, flags: DIFlagBitField, extraData: i64 6464)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "native_pme", scope: !5071, file: !10, line: 543, baseType: !76, size: 1, offset: 6469, flags: DIFlagBitField, extraData: i64 6464)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "native_ltr", scope: !5071, file: !10, line: 544, baseType: !76, size: 1, offset: 6470, flags: DIFlagBitField, extraData: i64 6464)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "native_dpc", scope: !5071, file: !10, line: 545, baseType: !76, size: 1, offset: 6471, flags: DIFlagBitField, extraData: i64 6464)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_config", scope: !5071, file: !10, line: 546, baseType: !76, size: 1, offset: 6472, flags: DIFlagBitField, extraData: i64 6464)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "size_windows", scope: !5071, file: !10, line: 547, baseType: !76, size: 1, offset: 6473, flags: DIFlagBitField, extraData: i64 6464)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "align_resource", scope: !5071, file: !10, line: 550, baseType: !5105, size: 64, offset: 6528)
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DISubroutineType(types: !5107)
!5107 = !{!37, !28, !5108, !37, !37, !37}
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5071, file: !10, line: 555, baseType: !2226, align: 512, offset: 6656)
!5111 = !DILocalVariable(name: "dev", arg: 1, scope: !5067, file: !3, line: 569, type: !110)
!5112 = !DILocation(line: 569, column: 44, scope: !5067)
!5113 = !DILocalVariable(name: "bridge", arg: 2, scope: !5067, file: !3, line: 569, type: !5070)
!5114 = !DILocation(line: 569, column: 73, scope: !5067)
!5115 = !DILocation(line: 571, column: 7, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 571, column: 6)
!5117 = !DILocation(line: 571, column: 12, scope: !5116)
!5118 = !DILocation(line: 571, column: 6, scope: !5067)
!5119 = !DILocation(line: 572, column: 3, scope: !5116)
!5120 = !DILocation(line: 574, column: 2, scope: !5067)
!5121 = !DILocation(line: 574, column: 10, scope: !5067)
!5122 = !DILocation(line: 574, column: 22, scope: !5067)
!5123 = !DILocation(line: 575, column: 2, scope: !5067)
!5124 = !DILocation(line: 575, column: 10, scope: !5067)
!5125 = !DILocation(line: 575, column: 18, scope: !5067)
!5126 = !DILocation(line: 577, column: 41, scope: !5067)
!5127 = !DILocation(line: 577, column: 46, scope: !5067)
!5128 = !DILocation(line: 577, column: 9, scope: !5067)
!5129 = !DILocation(line: 577, column: 2, scope: !5067)
!5130 = !DILocation(line: 578, column: 1, scope: !5067)
!5131 = distinct !DISubprogram(name: "pci_parse_request_of_pci_ranges", scope: !3, file: !3, line: 526, type: !5068, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!5132 = !DILocalVariable(name: "dev", arg: 1, scope: !5131, file: !3, line: 526, type: !110)
!5133 = !DILocation(line: 526, column: 59, scope: !5131)
!5134 = !DILocalVariable(name: "bridge", arg: 2, scope: !5131, file: !3, line: 527, type: !5070)
!5135 = !DILocation(line: 527, column: 33, scope: !5131)
!5136 = !DILocalVariable(name: "err", scope: !5131, file: !3, line: 529, type: !6)
!5137 = !DILocation(line: 529, column: 6, scope: !5131)
!5138 = !DILocalVariable(name: "res_valid", scope: !5131, file: !3, line: 529, type: !6)
!5139 = !DILocation(line: 529, column: 11, scope: !5131)
!5140 = !DILocalVariable(name: "iobase", scope: !5131, file: !3, line: 530, type: !37)
!5141 = !DILocation(line: 530, column: 18, scope: !5131)
!5142 = !DILocalVariable(name: "win", scope: !5131, file: !3, line: 531, type: !4378)
!5143 = !DILocation(line: 531, column: 25, scope: !5131)
!5144 = !DILocalVariable(name: "tmp", scope: !5131, file: !3, line: 531, type: !4378)
!5145 = !DILocation(line: 531, column: 31, scope: !5131)
!5146 = !DILocation(line: 533, column: 18, scope: !5131)
!5147 = !DILocation(line: 533, column: 26, scope: !5131)
!5148 = !DILocation(line: 533, column: 2, scope: !5131)
!5149 = !DILocation(line: 534, column: 18, scope: !5131)
!5150 = !DILocation(line: 534, column: 26, scope: !5131)
!5151 = !DILocation(line: 534, column: 2, scope: !5131)
!5152 = !DILocation(line: 536, column: 46, scope: !5131)
!5153 = !DILocation(line: 536, column: 61, scope: !5131)
!5154 = !DILocation(line: 536, column: 69, scope: !5131)
!5155 = !DILocation(line: 537, column: 12, scope: !5131)
!5156 = !DILocation(line: 537, column: 20, scope: !5131)
!5157 = !DILocation(line: 536, column: 8, scope: !5131)
!5158 = !DILocation(line: 536, column: 6, scope: !5131)
!5159 = !DILocation(line: 538, column: 6, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 538, column: 6)
!5161 = !DILocation(line: 538, column: 6, scope: !5131)
!5162 = !DILocation(line: 539, column: 10, scope: !5160)
!5163 = !DILocation(line: 539, column: 3, scope: !5160)
!5164 = !DILocation(line: 541, column: 39, scope: !5131)
!5165 = !DILocation(line: 541, column: 45, scope: !5131)
!5166 = !DILocation(line: 541, column: 53, scope: !5131)
!5167 = !DILocation(line: 541, column: 8, scope: !5131)
!5168 = !DILocation(line: 541, column: 6, scope: !5131)
!5169 = !DILocation(line: 542, column: 6, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 542, column: 6)
!5171 = !DILocation(line: 542, column: 6, scope: !5131)
!5172 = !DILocation(line: 543, column: 10, scope: !5170)
!5173 = !DILocation(line: 543, column: 3, scope: !5170)
!5174 = !DILocalVariable(name: "__mptr", scope: !5175, file: !3, line: 545, type: !75)
!5175 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 545, column: 2)
!5176 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 545, column: 2)
!5177 = !DILocation(line: 545, column: 2, scope: !5175)
!5178 = !DILocation(line: 545, column: 2, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 545, column: 2)
!5180 = !DILocation(line: 545, column: 2, scope: !5176)
!5181 = !DILocalVariable(name: "__mptr", scope: !5182, file: !3, line: 545, type: !75)
!5182 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 545, column: 2)
!5183 = !DILocation(line: 545, column: 2, scope: !5182)
!5184 = !DILocation(line: 545, column: 2, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 545, column: 2)
!5186 = !DILocation(line: 545, column: 2, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 545, column: 2)
!5188 = !DILocalVariable(name: "res", scope: !5189, file: !3, line: 546, type: !32)
!5189 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 545, column: 64)
!5190 = !DILocation(line: 546, column: 20, scope: !5189)
!5191 = !DILocation(line: 546, column: 26, scope: !5189)
!5192 = !DILocation(line: 546, column: 31, scope: !5189)
!5193 = !DILocation(line: 548, column: 25, scope: !5189)
!5194 = !DILocation(line: 548, column: 11, scope: !5189)
!5195 = !DILocation(line: 548, column: 3, scope: !5189)
!5196 = !DILocation(line: 550, column: 33, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5189, file: !3, line: 548, column: 31)
!5198 = !DILocation(line: 550, column: 38, scope: !5197)
!5199 = !DILocation(line: 550, column: 43, scope: !5197)
!5200 = !DILocation(line: 550, column: 10, scope: !5197)
!5201 = !DILocation(line: 550, column: 8, scope: !5197)
!5202 = !DILocation(line: 551, column: 8, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 551, column: 8)
!5204 = !DILocation(line: 551, column: 8, scope: !5197)
!5205 = !DILocation(line: 552, column: 5, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5203, file: !3, line: 551, column: 13)
!5207 = !DILocation(line: 554, column: 33, scope: !5206)
!5208 = !DILocation(line: 554, column: 5, scope: !5206)
!5209 = !DILocation(line: 555, column: 4, scope: !5206)
!5210 = !DILocation(line: 556, column: 4, scope: !5197)
!5211 = !DILocation(line: 558, column: 19, scope: !5197)
!5212 = !DILocation(line: 558, column: 24, scope: !5197)
!5213 = !DILocation(line: 558, column: 30, scope: !5197)
!5214 = !DILocation(line: 558, column: 17, scope: !5197)
!5215 = !DILocation(line: 558, column: 14, scope: !5197)
!5216 = !DILocation(line: 559, column: 4, scope: !5197)
!5217 = !DILocation(line: 561, column: 2, scope: !5189)
!5218 = !DILocalVariable(name: "__mptr", scope: !5219, file: !3, line: 545, type: !75)
!5219 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 545, column: 2)
!5220 = !DILocation(line: 545, column: 2, scope: !5219)
!5221 = !DILocation(line: 545, column: 2, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 545, column: 2)
!5223 = distinct !{!5223, !5180, !5224}
!5224 = !DILocation(line: 561, column: 2, scope: !5176)
!5225 = !DILocation(line: 563, column: 7, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 563, column: 6)
!5227 = !DILocation(line: 563, column: 6, scope: !5131)
!5228 = !DILocation(line: 564, column: 3, scope: !5226)
!5229 = !DILocation(line: 566, column: 2, scope: !5131)
!5230 = !DILocation(line: 567, column: 1, scope: !5131)
!5231 = distinct !DISubprogram(name: "of_pci_get_max_link_speed", scope: !3, file: !3, line: 591, type: !4742, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!5232 = !DILocalVariable(name: "node", arg: 1, scope: !5231, file: !3, line: 591, type: !3622)
!5233 = !DILocation(line: 591, column: 51, scope: !5231)
!5234 = !DILocalVariable(name: "max_link_speed", scope: !5231, file: !3, line: 593, type: !82)
!5235 = !DILocation(line: 593, column: 6, scope: !5231)
!5236 = !DILocation(line: 595, column: 27, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5231, file: !3, line: 595, column: 6)
!5238 = !DILocation(line: 595, column: 6, scope: !5237)
!5239 = !DILocation(line: 595, column: 68, scope: !5237)
!5240 = !DILocation(line: 596, column: 6, scope: !5237)
!5241 = !DILocation(line: 596, column: 21, scope: !5237)
!5242 = !DILocation(line: 596, column: 26, scope: !5237)
!5243 = !DILocation(line: 596, column: 29, scope: !5237)
!5244 = !DILocation(line: 596, column: 44, scope: !5237)
!5245 = !DILocation(line: 595, column: 6, scope: !5231)
!5246 = !DILocation(line: 597, column: 3, scope: !5237)
!5247 = !DILocation(line: 599, column: 9, scope: !5231)
!5248 = !DILocation(line: 599, column: 2, scope: !5231)
!5249 = !DILocation(line: 600, column: 1, scope: !5231)
!5250 = distinct !DISubprogram(name: "irq_find_matching_fwnode", scope: !3609, file: !3609, line: 299, type: !5251, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!5251 = !DISubroutineType(types: !5252)
!5252 = !{!3607, !3635, !3736}
!5253 = !DILocalVariable(name: "fwnode", arg: 1, scope: !5250, file: !3609, line: 299, type: !3635)
!5254 = !DILocation(line: 299, column: 67, scope: !5250)
!5255 = !DILocalVariable(name: "bus_token", arg: 2, scope: !5250, file: !3609, line: 300, type: !3736)
!5256 = !DILocation(line: 300, column: 36, scope: !5250)
!5257 = !DILocalVariable(name: "fwspec", scope: !5250, file: !3609, line: 302, type: !3754)
!5258 = !DILocation(line: 302, column: 20, scope: !5250)
!5259 = !DILocation(line: 302, column: 29, scope: !5250)
!5260 = !DILocation(line: 303, column: 13, scope: !5250)
!5261 = !DILocation(line: 306, column: 43, scope: !5250)
!5262 = !DILocation(line: 306, column: 9, scope: !5250)
!5263 = !DILocation(line: 306, column: 2, scope: !5250)
!5264 = distinct !DISubprogram(name: "of_node_to_fwnode", scope: !3609, file: !3609, line: 283, type: !5265, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!5265 = !DISubroutineType(types: !5266)
!5266 = !{!3635, !3622}
!5267 = !DILocalVariable(name: "node", arg: 1, scope: !5264, file: !3609, line: 283, type: !3622)
!5268 = !DILocation(line: 283, column: 75, scope: !5264)
!5269 = !DILocation(line: 285, column: 9, scope: !5264)
!5270 = !DILocation(line: 285, column: 17, scope: !5264)
!5271 = !DILocation(line: 285, column: 23, scope: !5264)
!5272 = !DILocation(line: 285, column: 2, scope: !5264)
!5273 = distinct !DISubprogram(name: "pci_device_to_OF_node", scope: !10, file: !10, line: 2314, type: !5274, scopeLine: 2315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!5274 = !DISubroutineType(types: !5275)
!5275 = !{!3622, !7}
!5276 = !DILocalVariable(name: "pdev", arg: 1, scope: !5273, file: !10, line: 2314, type: !7)
!5277 = !DILocation(line: 2314, column: 45, scope: !5273)
!5278 = !DILocation(line: 2316, column: 9, scope: !5273)
!5279 = !DILocation(line: 2316, column: 16, scope: !5273)
!5280 = !DILocation(line: 2316, column: 22, scope: !5273)
!5281 = !DILocation(line: 2316, column: 26, scope: !5273)
!5282 = !DILocation(line: 2316, column: 2, scope: !5273)
!5283 = distinct !DISubprogram(name: "pci_bus_to_OF_node", scope: !10, file: !10, line: 2319, type: !4555, scopeLine: 2320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!5284 = !DILocalVariable(name: "bus", arg: 1, scope: !5283, file: !10, line: 2319, type: !20)
!5285 = !DILocation(line: 2319, column: 70, scope: !5283)
!5286 = !DILocation(line: 2321, column: 9, scope: !5283)
!5287 = !DILocation(line: 2321, column: 15, scope: !5283)
!5288 = !DILocation(line: 2321, column: 20, scope: !5283)
!5289 = !DILocation(line: 2321, column: 24, scope: !5283)
!5290 = !DILocation(line: 2321, column: 2, scope: !5283)
!5291 = distinct !DISubprogram(name: "__fswab32", scope: !5292, file: !5292, line: 57, type: !5293, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!5292 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!5293 = !DISubroutineType(types: !5294)
!5294 = !{!83, !83}
!5295 = !DILocalVariable(name: "val", arg: 1, scope: !5291, file: !5292, line: 57, type: !83)
!5296 = !DILocation(line: 57, column: 57, scope: !5291)
!5297 = !DILocation(line: 60, column: 23, scope: !5291)
!5298 = !DILocation(line: 60, column: 9, scope: !5291)
!5299 = !DILocation(line: 60, column: 2, scope: !5291)
!5300 = distinct !DISubprogram(name: "__arch_swab32", scope: !5301, file: !5301, line: 8, type: !5293, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!5301 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!5302 = !DILocalVariable(name: "val", arg: 1, scope: !5300, file: !5301, line: 8, type: !83)
!5303 = !DILocation(line: 8, column: 61, scope: !5300)
!5304 = !DILocation(line: 10, column: 38, scope: !5300)
!5305 = !DILocation(line: 10, column: 2, scope: !5300)
!5306 = !{i32 387032}
!5307 = !DILocation(line: 11, column: 9, scope: !5300)
!5308 = !DILocation(line: 11, column: 2, scope: !5300)
!5309 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5310, file: !5310, line: 33, type: !5311, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!5310 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5311 = !DISubroutineType(types: !5312)
!5312 = !{null, !17}
!5313 = !DILocalVariable(name: "list", arg: 1, scope: !5309, file: !5310, line: 33, type: !17)
!5314 = !DILocation(line: 33, column: 53, scope: !5309)
!5315 = !DILocation(line: 35, column: 2, scope: !5309)
!5316 = !DILocation(line: 35, column: 2, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5309, file: !5310, line: 35, column: 2)
!5318 = !DILocation(line: 35, column: 2, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5317, file: !5310, line: 35, column: 2)
!5320 = !DILocation(line: 35, column: 2, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5317, file: !5310, line: 35, column: 2)
!5322 = !DILocation(line: 36, column: 15, scope: !5309)
!5323 = !DILocation(line: 36, column: 2, scope: !5309)
!5324 = !DILocation(line: 36, column: 8, scope: !5309)
!5325 = !DILocation(line: 36, column: 13, scope: !5309)
!5326 = !DILocation(line: 37, column: 1, scope: !5309)
!5327 = distinct !DISubprogram(name: "devm_of_pci_get_host_bridge_resources", scope: !3, file: !3, line: 259, type: !5328, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!5328 = !DISubroutineType(types: !5329)
!5329 = !{!6, !110, !97, !97, !17, !17, !5330}
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!5331 = !DILocalVariable(name: "dev", arg: 1, scope: !5327, file: !3, line: 259, type: !110)
!5332 = !DILocation(line: 259, column: 65, scope: !5327)
!5333 = !DILocalVariable(name: "busno", arg: 2, scope: !5327, file: !3, line: 260, type: !97)
!5334 = !DILocation(line: 260, column: 18, scope: !5327)
!5335 = !DILocalVariable(name: "bus_max", arg: 3, scope: !5327, file: !3, line: 260, type: !97)
!5336 = !DILocation(line: 260, column: 39, scope: !5327)
!5337 = !DILocalVariable(name: "resources", arg: 4, scope: !5327, file: !3, line: 261, type: !17)
!5338 = !DILocation(line: 261, column: 22, scope: !5327)
!5339 = !DILocalVariable(name: "ib_resources", arg: 5, scope: !5327, file: !3, line: 262, type: !17)
!5340 = !DILocation(line: 262, column: 22, scope: !5327)
!5341 = !DILocalVariable(name: "io_base", arg: 6, scope: !5327, file: !3, line: 263, type: !5330)
!5342 = !DILocation(line: 263, column: 21, scope: !5327)
!5343 = !DILocalVariable(name: "dev_node", scope: !5327, file: !3, line: 265, type: !3622)
!5344 = !DILocation(line: 265, column: 22, scope: !5327)
!5345 = !DILocation(line: 265, column: 33, scope: !5327)
!5346 = !DILocation(line: 265, column: 38, scope: !5327)
!5347 = !DILocalVariable(name: "res", scope: !5327, file: !3, line: 266, type: !32)
!5348 = !DILocation(line: 266, column: 19, scope: !5327)
!5349 = !DILocalVariable(name: "tmp_res", scope: !5327, file: !3, line: 266, type: !33)
!5350 = !DILocation(line: 266, column: 24, scope: !5327)
!5351 = !DILocalVariable(name: "bus_range", scope: !5327, file: !3, line: 267, type: !32)
!5352 = !DILocation(line: 267, column: 19, scope: !5327)
!5353 = !DILocalVariable(name: "range", scope: !5327, file: !3, line: 268, type: !5354)
!5354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_pci_range", file: !5355, line: 23, size: 256, elements: !5356)
!5355 = !DIFile(filename: "./include/linux/of_address.h", directory: "/home/lizy2001/genbc/linux")
!5356 = !{!5357, !5362, !5363, !5364}
!5357 = !DIDerivedType(tag: DW_TAG_member, scope: !5354, file: !5355, line: 24, baseType: !5358, size: 64)
!5358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5354, file: !5355, line: 24, size: 64, elements: !5359)
!5359 = !{!5360, !5361}
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "pci_addr", scope: !5358, file: !5355, line: 25, baseType: !39, size: 64)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "bus_addr", scope: !5358, file: !5355, line: 26, baseType: !39, size: 64)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_addr", scope: !5354, file: !5355, line: 28, baseType: !39, size: 64, offset: 64)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5354, file: !5355, line: 29, baseType: !39, size: 64, offset: 128)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5354, file: !5355, line: 30, baseType: !82, size: 32, offset: 192)
!5365 = !DILocation(line: 268, column: 22, scope: !5327)
!5366 = !DILocalVariable(name: "parser", scope: !5327, file: !3, line: 269, type: !5367)
!5367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_pci_range_parser", file: !5355, line: 11, size: 384, elements: !5368)
!5368 = !{!5369, !5370, !5373, !5376, !5377, !5378, !5379, !5380}
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5367, file: !5355, line: 12, baseType: !3622, size: 64)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5367, file: !5355, line: 13, baseType: !5371, size: 64, offset: 64)
!5371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5372, size: 64)
!5372 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_bus", file: !5355, line: 9, flags: DIFlagFwdDecl)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !5367, file: !5355, line: 14, baseType: !5374, size: 64, offset: 128)
!5374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5375, size: 64)
!5375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4377)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5367, file: !5355, line: 15, baseType: !5374, size: 64, offset: 192)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "na", scope: !5367, file: !5355, line: 16, baseType: !6, size: 32, offset: 256)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5367, file: !5355, line: 17, baseType: !6, size: 32, offset: 288)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "pna", scope: !5367, file: !5355, line: 18, baseType: !6, size: 32, offset: 320)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5367, file: !5355, line: 19, baseType: !376, size: 8, offset: 352)
!5381 = !DILocation(line: 269, column: 29, scope: !5327)
!5382 = !DILocalVariable(name: "range_type", scope: !5327, file: !3, line: 270, type: !46)
!5383 = !DILocation(line: 270, column: 14, scope: !5327)
!5384 = !DILocalVariable(name: "err", scope: !5327, file: !3, line: 271, type: !6)
!5385 = !DILocation(line: 271, column: 6, scope: !5327)
!5386 = !DILocation(line: 273, column: 6, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 273, column: 6)
!5388 = !DILocation(line: 273, column: 6, scope: !5327)
!5389 = !DILocation(line: 274, column: 4, scope: !5387)
!5390 = !DILocation(line: 274, column: 12, scope: !5387)
!5391 = !DILocation(line: 274, column: 3, scope: !5387)
!5392 = !DILocation(line: 276, column: 27, scope: !5327)
!5393 = !DILocation(line: 276, column: 14, scope: !5327)
!5394 = !DILocation(line: 276, column: 12, scope: !5327)
!5395 = !DILocation(line: 277, column: 7, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 277, column: 6)
!5397 = !DILocation(line: 277, column: 6, scope: !5327)
!5398 = !DILocation(line: 278, column: 3, scope: !5396)
!5399 = !DILocation(line: 280, column: 2, scope: !5327)
!5400 = !DILocation(line: 282, column: 31, scope: !5327)
!5401 = !DILocation(line: 282, column: 41, scope: !5327)
!5402 = !DILocation(line: 282, column: 8, scope: !5327)
!5403 = !DILocation(line: 282, column: 6, scope: !5327)
!5404 = !DILocation(line: 283, column: 6, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 283, column: 6)
!5406 = !DILocation(line: 283, column: 6, scope: !5327)
!5407 = !DILocation(line: 284, column: 22, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5405, file: !3, line: 283, column: 11)
!5409 = !DILocation(line: 284, column: 3, scope: !5408)
!5410 = !DILocation(line: 284, column: 14, scope: !5408)
!5411 = !DILocation(line: 284, column: 20, scope: !5408)
!5412 = !DILocation(line: 285, column: 20, scope: !5408)
!5413 = !DILocation(line: 285, column: 3, scope: !5408)
!5414 = !DILocation(line: 285, column: 14, scope: !5408)
!5415 = !DILocation(line: 285, column: 18, scope: !5408)
!5416 = !DILocation(line: 286, column: 3, scope: !5408)
!5417 = !DILocation(line: 286, column: 14, scope: !5408)
!5418 = !DILocation(line: 286, column: 20, scope: !5408)
!5419 = !DILocation(line: 287, column: 3, scope: !5408)
!5420 = !DILocation(line: 289, column: 2, scope: !5408)
!5421 = !DILocation(line: 290, column: 7, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5423, file: !3, line: 290, column: 7)
!5423 = distinct !DILexicalBlock(scope: !5405, file: !3, line: 289, column: 9)
!5424 = !DILocation(line: 290, column: 18, scope: !5422)
!5425 = !DILocation(line: 290, column: 24, scope: !5422)
!5426 = !DILocation(line: 290, column: 35, scope: !5422)
!5427 = !DILocation(line: 290, column: 43, scope: !5422)
!5428 = !DILocation(line: 290, column: 41, scope: !5422)
!5429 = !DILocation(line: 290, column: 22, scope: !5422)
!5430 = !DILocation(line: 290, column: 7, scope: !5423)
!5431 = !DILocation(line: 291, column: 21, scope: !5422)
!5432 = !DILocation(line: 291, column: 32, scope: !5422)
!5433 = !DILocation(line: 291, column: 40, scope: !5422)
!5434 = !DILocation(line: 291, column: 38, scope: !5422)
!5435 = !DILocation(line: 291, column: 4, scope: !5422)
!5436 = !DILocation(line: 291, column: 15, scope: !5422)
!5437 = !DILocation(line: 291, column: 19, scope: !5422)
!5438 = !DILocation(line: 293, column: 19, scope: !5327)
!5439 = !DILocation(line: 293, column: 30, scope: !5327)
!5440 = !DILocation(line: 293, column: 2, scope: !5327)
!5441 = !DILocation(line: 296, column: 42, scope: !5327)
!5442 = !DILocation(line: 296, column: 8, scope: !5327)
!5443 = !DILocation(line: 296, column: 6, scope: !5327)
!5444 = !DILocation(line: 297, column: 6, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 297, column: 6)
!5446 = !DILocation(line: 297, column: 6, scope: !5327)
!5447 = !DILocation(line: 298, column: 3, scope: !5445)
!5448 = !DILocation(line: 301, column: 2, scope: !5327)
!5449 = !DILocation(line: 301, column: 2, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 301, column: 2)
!5451 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 301, column: 2)
!5452 = !DILocation(line: 301, column: 2, scope: !5451)
!5453 = !DILocation(line: 303, column: 14, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5455, file: !3, line: 303, column: 7)
!5455 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 301, column: 41)
!5456 = !DILocation(line: 303, column: 20, scope: !5454)
!5457 = !DILocation(line: 303, column: 44, scope: !5454)
!5458 = !DILocation(line: 303, column: 7, scope: !5455)
!5459 = !DILocation(line: 304, column: 15, scope: !5454)
!5460 = !DILocation(line: 304, column: 4, scope: !5454)
!5461 = !DILocation(line: 305, column: 19, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5454, file: !3, line: 305, column: 12)
!5463 = !DILocation(line: 305, column: 25, scope: !5462)
!5464 = !DILocation(line: 305, column: 49, scope: !5462)
!5465 = !DILocation(line: 305, column: 12, scope: !5454)
!5466 = !DILocation(line: 306, column: 15, scope: !5462)
!5467 = !DILocation(line: 306, column: 4, scope: !5462)
!5468 = !DILocation(line: 308, column: 15, scope: !5462)
!5469 = !DILocation(line: 309, column: 3, scope: !5455)
!5470 = !DILocation(line: 317, column: 13, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5455, file: !3, line: 317, column: 7)
!5472 = !DILocation(line: 317, column: 22, scope: !5471)
!5473 = !DILocation(line: 317, column: 37, scope: !5471)
!5474 = !DILocation(line: 317, column: 46, scope: !5471)
!5475 = !DILocation(line: 317, column: 51, scope: !5471)
!5476 = !DILocation(line: 317, column: 7, scope: !5455)
!5477 = !DILocation(line: 318, column: 4, scope: !5471)
!5478 = distinct !{!5478, !5452, !5479}
!5479 = !DILocation(line: 344, column: 2, scope: !5451)
!5480 = !DILocation(line: 320, column: 42, scope: !5455)
!5481 = !DILocation(line: 320, column: 9, scope: !5455)
!5482 = !DILocation(line: 320, column: 7, scope: !5455)
!5483 = !DILocation(line: 321, column: 7, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5455, file: !3, line: 321, column: 7)
!5485 = !DILocation(line: 321, column: 7, scope: !5455)
!5486 = !DILocation(line: 322, column: 4, scope: !5484)
!5487 = !DILocation(line: 324, column: 22, scope: !5455)
!5488 = !DILocation(line: 324, column: 27, scope: !5455)
!5489 = !DILocation(line: 324, column: 9, scope: !5455)
!5490 = !DILocation(line: 324, column: 7, scope: !5455)
!5491 = !DILocation(line: 325, column: 8, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5455, file: !3, line: 325, column: 7)
!5493 = !DILocation(line: 325, column: 7, scope: !5455)
!5494 = !DILocation(line: 326, column: 8, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5492, file: !3, line: 325, column: 13)
!5496 = !DILocation(line: 327, column: 4, scope: !5495)
!5497 = !DILocation(line: 330, column: 21, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5455, file: !3, line: 330, column: 7)
!5499 = !DILocation(line: 330, column: 7, scope: !5498)
!5500 = !DILocation(line: 330, column: 26, scope: !5498)
!5501 = !DILocation(line: 330, column: 7, scope: !5455)
!5502 = !DILocation(line: 331, column: 9, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 331, column: 8)
!5504 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 330, column: 44)
!5505 = !DILocation(line: 331, column: 8, scope: !5504)
!5506 = !DILocation(line: 332, column: 5, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 331, column: 18)
!5508 = !DILocation(line: 334, column: 9, scope: !5507)
!5509 = !DILocation(line: 335, column: 5, scope: !5507)
!5510 = !DILocation(line: 337, column: 9, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 337, column: 8)
!5512 = !DILocation(line: 337, column: 8, scope: !5511)
!5513 = !DILocation(line: 337, column: 17, scope: !5511)
!5514 = !DILocation(line: 337, column: 8, scope: !5504)
!5515 = !DILocation(line: 338, column: 5, scope: !5511)
!5516 = !DILocation(line: 340, column: 21, scope: !5504)
!5517 = !DILocation(line: 340, column: 5, scope: !5504)
!5518 = !DILocation(line: 340, column: 13, scope: !5504)
!5519 = !DILocation(line: 341, column: 3, scope: !5504)
!5520 = !DILocation(line: 343, column: 27, scope: !5455)
!5521 = !DILocation(line: 343, column: 38, scope: !5455)
!5522 = !DILocation(line: 343, column: 43, scope: !5455)
!5523 = !DILocation(line: 343, column: 48, scope: !5455)
!5524 = !DILocation(line: 343, column: 62, scope: !5455)
!5525 = !DILocation(line: 343, column: 54, scope: !5455)
!5526 = !DILocation(line: 343, column: 3, scope: !5455)
!5527 = !DILocation(line: 347, column: 7, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 347, column: 6)
!5529 = !DILocation(line: 347, column: 6, scope: !5327)
!5530 = !DILocation(line: 348, column: 3, scope: !5528)
!5531 = !DILocation(line: 349, column: 46, scope: !5327)
!5532 = !DILocation(line: 349, column: 8, scope: !5327)
!5533 = !DILocation(line: 349, column: 6, scope: !5327)
!5534 = !DILocation(line: 350, column: 6, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 350, column: 6)
!5536 = !DILocation(line: 350, column: 6, scope: !5327)
!5537 = !DILocation(line: 351, column: 3, scope: !5535)
!5538 = !DILocation(line: 354, column: 2, scope: !5327)
!5539 = !DILocation(line: 354, column: 2, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 354, column: 2)
!5541 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 354, column: 2)
!5542 = !DILocation(line: 354, column: 2, scope: !5541)
!5543 = !DILocalVariable(name: "entry", scope: !5544, file: !3, line: 355, type: !4378)
!5544 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 354, column: 41)
!5545 = !DILocation(line: 355, column: 26, scope: !5544)
!5546 = !DILocation(line: 360, column: 15, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5544, file: !3, line: 360, column: 7)
!5548 = !DILocation(line: 360, column: 21, scope: !5547)
!5549 = !DILocation(line: 360, column: 45, scope: !5547)
!5550 = !DILocation(line: 360, column: 64, scope: !5547)
!5551 = !DILocation(line: 361, column: 13, scope: !5547)
!5552 = !DILocation(line: 361, column: 22, scope: !5547)
!5553 = !DILocation(line: 361, column: 37, scope: !5547)
!5554 = !DILocation(line: 361, column: 46, scope: !5547)
!5555 = !DILocation(line: 361, column: 51, scope: !5547)
!5556 = !DILocation(line: 360, column: 7, scope: !5544)
!5557 = !DILocation(line: 362, column: 4, scope: !5547)
!5558 = distinct !{!5558, !5542, !5559}
!5559 = !DILocation(line: 386, column: 2, scope: !5541)
!5560 = !DILocation(line: 364, column: 3, scope: !5544)
!5561 = !DILocation(line: 369, column: 42, scope: !5544)
!5562 = !DILocation(line: 369, column: 9, scope: !5544)
!5563 = !DILocation(line: 369, column: 7, scope: !5544)
!5564 = !DILocation(line: 370, column: 7, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5544, file: !3, line: 370, column: 7)
!5566 = !DILocation(line: 370, column: 7, scope: !5544)
!5567 = !DILocation(line: 371, column: 4, scope: !5565)
!5568 = !DILocation(line: 373, column: 22, scope: !5544)
!5569 = !DILocation(line: 373, column: 27, scope: !5544)
!5570 = !DILocation(line: 373, column: 9, scope: !5544)
!5571 = !DILocation(line: 373, column: 7, scope: !5544)
!5572 = !DILocation(line: 374, column: 8, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5544, file: !3, line: 374, column: 7)
!5574 = !DILocation(line: 374, column: 7, scope: !5544)
!5575 = !DILocation(line: 375, column: 8, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 374, column: 13)
!5577 = !DILocation(line: 376, column: 4, scope: !5576)
!5578 = !DILocalVariable(name: "__mptr", scope: !5579, file: !3, line: 380, type: !75)
!5579 = distinct !DILexicalBlock(scope: !5580, file: !3, line: 380, column: 3)
!5580 = distinct !DILexicalBlock(scope: !5544, file: !3, line: 380, column: 3)
!5581 = !DILocation(line: 380, column: 3, scope: !5579)
!5582 = !DILocation(line: 380, column: 3, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5579, file: !3, line: 380, column: 3)
!5584 = !DILocation(line: 380, column: 3, scope: !5580)
!5585 = !DILocation(line: 380, column: 3, scope: !5586)
!5586 = distinct !DILexicalBlock(scope: !5580, file: !3, line: 380, column: 3)
!5587 = !DILocation(line: 381, column: 8, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5586, file: !3, line: 381, column: 8)
!5589 = !DILocation(line: 381, column: 15, scope: !5588)
!5590 = !DILocation(line: 381, column: 20, scope: !5588)
!5591 = !DILocation(line: 381, column: 28, scope: !5588)
!5592 = !DILocation(line: 381, column: 33, scope: !5588)
!5593 = !DILocation(line: 381, column: 26, scope: !5588)
!5594 = !DILocation(line: 381, column: 8, scope: !5586)
!5595 = !DILocation(line: 382, column: 5, scope: !5588)
!5596 = !DILocalVariable(name: "__mptr", scope: !5597, file: !3, line: 380, type: !75)
!5597 = distinct !DILexicalBlock(scope: !5586, file: !3, line: 380, column: 3)
!5598 = !DILocation(line: 380, column: 3, scope: !5597)
!5599 = !DILocation(line: 380, column: 3, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 380, column: 3)
!5601 = distinct !{!5601, !5584, !5602}
!5602 = !DILocation(line: 382, column: 5, scope: !5580)
!5603 = !DILocation(line: 384, column: 28, scope: !5544)
!5604 = !DILocation(line: 384, column: 35, scope: !5544)
!5605 = !DILocation(line: 384, column: 41, scope: !5544)
!5606 = !DILocation(line: 385, column: 6, scope: !5544)
!5607 = !DILocation(line: 385, column: 11, scope: !5544)
!5608 = !DILocation(line: 385, column: 25, scope: !5544)
!5609 = !DILocation(line: 385, column: 17, scope: !5544)
!5610 = !DILocation(line: 384, column: 3, scope: !5544)
!5611 = !DILocation(line: 388, column: 2, scope: !5327)
!5612 = !DILabel(scope: !5327, name: "failed", file: !3, line: 390)
!5613 = !DILocation(line: 390, column: 1, scope: !5327)
!5614 = !DILocation(line: 391, column: 25, scope: !5327)
!5615 = !DILocation(line: 391, column: 2, scope: !5327)
!5616 = !DILocation(line: 392, column: 9, scope: !5327)
!5617 = !DILocation(line: 392, column: 2, scope: !5327)
!5618 = !DILocation(line: 393, column: 1, scope: !5327)
!5619 = distinct !DISubprogram(name: "resource_type", scope: !34, file: !34, line: 214, type: !5620, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!5620 = !DISubroutineType(types: !5621)
!5621 = !{!50, !5108}
!5622 = !DILocalVariable(name: "res", arg: 1, scope: !5619, file: !34, line: 214, type: !5108)
!5623 = !DILocation(line: 214, column: 66, scope: !5619)
!5624 = !DILocation(line: 216, column: 9, scope: !5619)
!5625 = !DILocation(line: 216, column: 14, scope: !5619)
!5626 = !DILocation(line: 216, column: 20, scope: !5619)
!5627 = !DILocation(line: 216, column: 2, scope: !5619)
!5628 = distinct !DISubprogram(name: "resource_list_destroy_entry", scope: !4380, file: !4380, line: 57, type: !5629, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!5629 = !DISubroutineType(types: !5630)
!5630 = !{null, !4378}
!5631 = !DILocalVariable(name: "entry", arg: 1, scope: !5628, file: !4380, line: 57, type: !4378)
!5632 = !DILocation(line: 57, column: 52, scope: !5628)
!5633 = !DILocation(line: 59, column: 20, scope: !5628)
!5634 = !DILocation(line: 59, column: 2, scope: !5628)
!5635 = !DILocation(line: 60, column: 27, scope: !5628)
!5636 = !DILocation(line: 60, column: 2, scope: !5628)
!5637 = !DILocation(line: 61, column: 1, scope: !5628)
!5638 = distinct !DISubprogram(name: "devm_kzalloc", scope: !112, file: !112, line: 215, type: !5639, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!5639 = !DISubroutineType(types: !5640)
!5640 = !{!75, !110, !215, !634}
!5641 = !DILocalVariable(name: "dev", arg: 1, scope: !5638, file: !112, line: 215, type: !110)
!5642 = !DILocation(line: 215, column: 49, scope: !5638)
!5643 = !DILocalVariable(name: "size", arg: 2, scope: !5638, file: !112, line: 215, type: !215)
!5644 = !DILocation(line: 215, column: 61, scope: !5638)
!5645 = !DILocalVariable(name: "gfp", arg: 3, scope: !5638, file: !112, line: 215, type: !634)
!5646 = !DILocation(line: 215, column: 73, scope: !5638)
!5647 = !DILocation(line: 217, column: 22, scope: !5638)
!5648 = !DILocation(line: 217, column: 27, scope: !5638)
!5649 = !DILocation(line: 217, column: 33, scope: !5638)
!5650 = !DILocation(line: 217, column: 37, scope: !5638)
!5651 = !DILocation(line: 217, column: 9, scope: !5638)
!5652 = !DILocation(line: 217, column: 2, scope: !5638)
!5653 = distinct !DISubprogram(name: "resource_list_del", scope: !4380, file: !4380, line: 46, type: !5629, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!5654 = !DILocalVariable(name: "entry", arg: 1, scope: !5653, file: !4380, line: 46, type: !4378)
!5655 = !DILocation(line: 46, column: 61, scope: !5653)
!5656 = !DILocation(line: 48, column: 12, scope: !5653)
!5657 = !DILocation(line: 48, column: 19, scope: !5653)
!5658 = !DILocation(line: 48, column: 2, scope: !5653)
!5659 = !DILocation(line: 49, column: 1, scope: !5653)
!5660 = distinct !DISubprogram(name: "resource_list_free_entry", scope: !4380, file: !4380, line: 51, type: !5629, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!5661 = !DILocalVariable(name: "entry", arg: 1, scope: !5660, file: !4380, line: 51, type: !4378)
!5662 = !DILocation(line: 51, column: 68, scope: !5660)
!5663 = !DILocation(line: 53, column: 8, scope: !5660)
!5664 = !DILocation(line: 53, column: 2, scope: !5660)
!5665 = !DILocation(line: 54, column: 1, scope: !5660)
!5666 = distinct !DISubprogram(name: "list_del", scope: !5310, file: !5310, line: 144, type: !5311, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!5667 = !DILocalVariable(name: "entry", arg: 1, scope: !5666, file: !5310, line: 144, type: !17)
!5668 = !DILocation(line: 144, column: 47, scope: !5666)
!5669 = !DILocation(line: 146, column: 19, scope: !5666)
!5670 = !DILocation(line: 146, column: 2, scope: !5666)
!5671 = !DILocation(line: 147, column: 2, scope: !5666)
!5672 = !DILocation(line: 147, column: 9, scope: !5666)
!5673 = !DILocation(line: 147, column: 14, scope: !5666)
!5674 = !DILocation(line: 148, column: 2, scope: !5666)
!5675 = !DILocation(line: 148, column: 9, scope: !5666)
!5676 = !DILocation(line: 148, column: 14, scope: !5666)
!5677 = !DILocation(line: 149, column: 1, scope: !5666)
!5678 = distinct !DISubprogram(name: "__list_del_entry", scope: !5310, file: !5310, line: 130, type: !5311, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!5679 = !DILocalVariable(name: "entry", arg: 1, scope: !5678, file: !5310, line: 130, type: !17)
!5680 = !DILocation(line: 130, column: 55, scope: !5678)
!5681 = !DILocation(line: 132, column: 30, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5678, file: !5310, line: 132, column: 6)
!5683 = !DILocation(line: 132, column: 7, scope: !5682)
!5684 = !DILocation(line: 132, column: 6, scope: !5678)
!5685 = !DILocation(line: 133, column: 3, scope: !5682)
!5686 = !DILocation(line: 135, column: 13, scope: !5678)
!5687 = !DILocation(line: 135, column: 20, scope: !5678)
!5688 = !DILocation(line: 135, column: 26, scope: !5678)
!5689 = !DILocation(line: 135, column: 33, scope: !5678)
!5690 = !DILocation(line: 135, column: 2, scope: !5678)
!5691 = !DILocation(line: 136, column: 1, scope: !5678)
!5692 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5310, file: !5310, line: 51, type: !5693, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!5693 = !DISubroutineType(types: !5694)
!5694 = !{!376, !17}
!5695 = !DILocalVariable(name: "entry", arg: 1, scope: !5692, file: !5310, line: 51, type: !17)
!5696 = !DILocation(line: 51, column: 61, scope: !5692)
!5697 = !DILocation(line: 53, column: 2, scope: !5692)
!5698 = distinct !DISubprogram(name: "__list_del", scope: !5310, file: !5310, line: 110, type: !5699, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4360, retainedNodes: !142)
!5699 = !DISubroutineType(types: !5700)
!5700 = !{null, !17, !17}
!5701 = !DILocalVariable(name: "prev", arg: 1, scope: !5698, file: !5310, line: 110, type: !17)
!5702 = !DILocation(line: 110, column: 50, scope: !5698)
!5703 = !DILocalVariable(name: "next", arg: 2, scope: !5698, file: !5310, line: 110, type: !17)
!5704 = !DILocation(line: 110, column: 75, scope: !5698)
!5705 = !DILocation(line: 112, column: 15, scope: !5698)
!5706 = !DILocation(line: 112, column: 2, scope: !5698)
!5707 = !DILocation(line: 112, column: 8, scope: !5698)
!5708 = !DILocation(line: 112, column: 13, scope: !5698)
!5709 = !DILocation(line: 113, column: 2, scope: !5698)
!5710 = !DILocation(line: 113, column: 2, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5698, file: !5310, line: 113, column: 2)
!5712 = !DILocation(line: 113, column: 2, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5711, file: !5310, line: 113, column: 2)
!5714 = !DILocation(line: 113, column: 2, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5711, file: !5310, line: 113, column: 2)
!5716 = !DILocation(line: 114, column: 1, scope: !5698)
