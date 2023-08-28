; ModuleID = '../bcout/drivers/input/mouse/bcm5974.llvm.bc'
source_filename = "drivers/input/mouse/bcm5974.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_bcm5974_driver_init6:\09\09\09"
module asm ".long\09bcm5974_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.usb_driver = type { i8*, i32 (%struct.usb_interface*, %struct.usb_device_id*)*, void (%struct.usb_interface*)*, i32 (%struct.usb_interface*, i32, i8*)*, i32 (%struct.usb_interface*, i32)*, i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)*, %struct.usb_device_id*, %struct.attribute_group**, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_interface = type { %struct.usb_host_interface*, %struct.usb_host_interface*, i32, %struct.usb_interface_assoc_descriptor*, i32, i32, i8, %struct.device, %struct.device*, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, i8*, %struct.usb_host_endpoint*, i8* }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, i8*, %struct.ep_device*, i8*, i32, i32, i32, [4 x i8] }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.ep_device = type opaque
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
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
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.64 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.page = type { i64, %union.anon.2, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
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
%struct.vm_struct = type opaque
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
%struct.hlist_head = type { %struct.hlist_node* }
%struct.user_namespace = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.seq_file = type opaque
%struct.vm_operations_struct = type opaque
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
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
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i64 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.bcm5974_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bcm5974_param, %struct.bcm5974_param, %struct.bcm5974_param, %struct.bcm5974_param, %struct.bcm5974_param }
%struct.bcm5974_param = type { i32, i32, i32 }
%struct.kmem_cache = type opaque
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, %struct.usb_tt*, i32, [2 x i32], [4 x i8], %struct.usb_device*, %struct.usb_bus*, %struct.usb_host_endpoint, %struct.device, %struct.usb_device_descriptor, [6 x i8], %struct.usb_host_bos*, %struct.usb_host_config*, %struct.usb_host_config*, [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*], i8**, i16, i8, i8, i8, i16, i8, i32, [4 x i8], i8*, i8*, i8*, %struct.list_head, i32, i32, %struct.atomic_t, [4 x i8], i64, i64, i8, [7 x i8], %struct.wusb_dev*, i32, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, i8 }>
%struct.usb_tt = type opaque
%struct.usb_bus = type { %struct.device*, %struct.device*, i32, i8*, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, %struct.usb_device*, %struct.usb_bus*, i32, i32, i32, i32 }
%struct.usb_devmap = type { [2 x i64] }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_host_bos = type { %struct.usb_bos_descriptor*, %struct.usb_ext_cap_descriptor*, %struct.usb_ss_cap_descriptor*, %struct.usb_ssp_cap_descriptor*, %struct.usb_ss_container_id_descriptor*, %struct.usb_ptm_cap_descriptor* }
%struct.usb_bos_descriptor = type <{ i8, i8, i16, i8 }>
%struct.usb_ext_cap_descriptor = type <{ i8, i8, i8, i32 }>
%struct.usb_ss_cap_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16 }
%struct.usb_ssp_cap_descriptor = type { i8, i8, i8, i8, i32, i16, i16, [1 x i32] }
%struct.usb_ss_container_id_descriptor = type { i8, i8, i8, i8, [16 x i8] }
%struct.usb_ptm_cap_descriptor = type { i8, i8, i8 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, i8*, [16 x %struct.usb_interface_assoc_descriptor*], [32 x %struct.usb_interface*], [32 x %struct.usb_interface_cache*], i8*, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.wusb_dev = type opaque
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.bcm5974 = type { [64 x i8], %struct.usb_device*, %struct.usb_interface*, %struct.input_dev*, %struct.bcm5974_config, %struct.mutex, i32, %struct.urb*, %struct.bt_data*, %struct.urb*, i8*, [16 x %struct.tp_finger*], [16 x %struct.input_mt_pos], [16 x i32] }
%struct.input_dev = type { i8*, i8*, i8*, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, i8*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, %struct.ff_device*, %struct.input_dev_poller*, i32, %struct.timer_list, [2 x i32], %struct.input_mt*, %struct.input_absinfo*, [12 x i64], [1 x i64], [1 x i64], [1 x i64], i32 (%struct.input_dev*)*, void (%struct.input_dev*)*, i32 (%struct.input_dev*, %struct.file*)*, i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_handle*, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, %struct.input_value*, i8, [3 x i64] }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.ff_device = type { i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32, i32)*, void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)*, void (%struct.ff_device*)*, i8*, [2 x i64], %struct.mutex, i32, %struct.ff_effect*, [0 x %struct.file*] }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.65 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.65 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, i16* }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.input_dev_poller = type opaque
%struct.input_mt = type { i32, i32, i32, i32, i32, i32*, [0 x %struct.input_mt_slot] }
%struct.input_mt_slot = type { [14 x i32], i32, i32 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_handle = type { i8*, i32, i8*, %struct.input_dev*, %struct.input_handler*, %struct.list_head, %struct.list_head }
%struct.input_handler = type { i8*, void (%struct.input_handle*, i32, i32, i32)*, void (%struct.input_handle*, %struct.input_value*, i32)*, i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handler*, %struct.input_dev*)*, i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)*, void (%struct.input_handle*)*, void (%struct.input_handle*)*, i8, i32, i8*, %struct.input_device_id*, %struct.list_head, %struct.list_head }
%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
%struct.input_value = type { i16, i16, i32 }
%struct.bt_data = type { i8, i8, i8, i8 }
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.scatterlist = type opaque
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.tp_finger = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], i16, i16 }
%struct.input_mt_pos = type { i16, i16 }

@__UNIQUE_ID_author212 = internal constant [30 x i8] c"bcm5974.author=Henrik Rydberg\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description213 = internal constant [56 x i8] c"bcm5974.description=Apple USB BCM5974 multitouch driver\00", section ".modinfo", align 1, !dbg !3837
@__UNIQUE_ID_file214 = internal constant [41 x i8] c"bcm5974.file=drivers/input/mouse/bcm5974\00", section ".modinfo", align 1, !dbg !3842
@__UNIQUE_ID_license215 = internal constant [20 x i8] c"bcm5974.license=GPL\00", section ".modinfo", align 1, !dbg !3847
@__param_str_debug = internal constant [14 x i8] c"bcm5974.debug\00", align 1, !dbg !3919
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 1, align 4, !dbg !3924
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !3850
@__UNIQUE_ID_debugtype216 = internal constant [27 x i8] c"bcm5974.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !3902
@__UNIQUE_ID_debug217 = internal constant [45 x i8] c"bcm5974.parm=debug:Activate debugging output\00", section ".modinfo", align 1, !dbg !3907
@__UNIQUE_ID___addressable_bcm5974_driver_init226 = internal global i8* bitcast (i32 ()* @bcm5974_driver_init to i8*), section ".discard.addressable", align 8, !dbg !3912
@bcm5974_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @bcm5974_probe, void (%struct.usb_interface*)* @bcm5974_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* @bcm5974_suspend, i32 (%struct.usb_interface*)* @bcm5974_resume, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([40 x %struct.usb_device_id], [40 x %struct.usb_device_id]* @bcm5974_table, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 2 }, align 8, !dbg !3926
@__exitcall_bcm5974_driver_exit = internal global void ()* @bcm5974_driver_exit, section ".exitcall.exit", align 8, !dbg !3914
@.str = private unnamed_addr constant [8 x i8] c"bcm5974\00", align 1
@bcm5974_table = internal constant [40 x %struct.usb_device_id] [%struct.usb_device_id { i16 643, i16 1452, i16 547, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 548, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 549, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 560, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 561, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 562, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 566, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 567, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 568, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 575, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 576, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 577, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 578, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 579, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 580, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 581, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 582, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 583, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 585, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 586, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 587, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 588, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 589, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 590, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 594, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 595, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 596, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 610, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 611, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 612, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 601, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 602, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 603, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 657, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 658, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 626, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 627, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 628, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 2, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !4025
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@bcm5974_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3987
@.str.2 = private unnamed_addr constant [15 x i8] c"&dev->pm_mutex\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@bcm5974_config_table = internal constant [14 x %struct.bcm5974_config] [%struct.bcm5974_config { i32 547, i32 548, i32 549, i32 0, i32 132, i32 4, i32 129, i32 0, i32 26, i32 474, i32 0, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 256 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4824, i32 5342 }, %struct.bcm5974_param { i32 250, i32 -172, i32 5820 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 560, i32 561, i32 562, i32 0, i32 132, i32 4, i32 129, i32 0, i32 26, i32 474, i32 0, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 256 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4824, i32 4824 }, %struct.bcm5974_param { i32 250, i32 -172, i32 4290 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 566, i32 567, i32 568, i32 1, i32 132, i32 4, i32 129, i32 1, i32 30, i32 478, i32 15, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4460, i32 5166 }, %struct.bcm5974_param { i32 250, i32 -75, i32 6700 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 575, i32 576, i32 577, i32 1, i32 132, i32 4, i32 129, i32 1, i32 30, i32 478, i32 15, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4620, i32 5140 }, %struct.bcm5974_param { i32 250, i32 -150, i32 6600 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 578, i32 579, i32 580, i32 1, i32 132, i32 4, i32 129, i32 1, i32 30, i32 478, i32 15, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4616, i32 5112 }, %struct.bcm5974_param { i32 250, i32 -142, i32 5234 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 581, i32 582, i32 583, i32 1, i32 132, i32 4, i32 129, i32 1, i32 30, i32 478, i32 15, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4415, i32 5050 }, %struct.bcm5974_param { i32 250, i32 -55, i32 6680 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 588, i32 589, i32 590, i32 1, i32 132, i32 4, i32 129, i32 1, i32 30, i32 478, i32 15, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4620, i32 5140 }, %struct.bcm5974_param { i32 250, i32 -150, i32 6600 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 594, i32 595, i32 596, i32 1, i32 132, i32 4, i32 129, i32 1, i32 30, i32 478, i32 15, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4750, i32 5280 }, %struct.bcm5974_param { i32 250, i32 -150, i32 6730 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 585, i32 586, i32 587, i32 1, i32 132, i32 4, i32 129, i32 1, i32 30, i32 478, i32 15, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4620, i32 5140 }, %struct.bcm5974_param { i32 250, i32 -150, i32 6600 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 610, i32 611, i32 612, i32 1, i32 132, i32 4, i32 129, i32 1, i32 30, i32 478, i32 15, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4750, i32 5280 }, %struct.bcm5974_param { i32 250, i32 -150, i32 6730 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 601, i32 602, i32 603, i32 1, i32 132, i32 4, i32 129, i32 1, i32 30, i32 478, i32 15, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4750, i32 5280 }, %struct.bcm5974_param { i32 250, i32 -150, i32 6730 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 656, i32 657, i32 658, i32 1, i32 0, i32 4, i32 131, i32 2, i32 38, i32 486, i32 23, i32 28, i32 0, i32 8, i32 768, i32 0, i32 0, i32 1, i32 8, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4620, i32 5140 }, %struct.bcm5974_param { i32 250, i32 -150, i32 6600 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config { i32 626, i32 627, i32 628, i32 1, i32 0, i32 4, i32 131, i32 3, i32 46, i32 526, i32 31, i32 30, i32 2, i32 2, i32 770, i32 2, i32 1, i32 1, i32 0, %struct.bcm5974_param { i32 45, i32 0, i32 300 }, %struct.bcm5974_param { i32 25, i32 0, i32 2048 }, %struct.bcm5974_param { i32 250, i32 -4828, i32 5345 }, %struct.bcm5974_param { i32 250, i32 -203, i32 6803 }, %struct.bcm5974_param { i32 10, i32 -16384, i32 16384 } }, %struct.bcm5974_config zeroinitializer], align 16, !dbg !3990
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"\017bcm5974: bad button package, length: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"button urb failed: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"\017bcm5974: button data: %x %x %x %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"\017bcm5974: bad trackpad package, length: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"trackpad urb failed: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"\017bcm5974: mode switch failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"could not read from device\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"could not write to device\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"\017bcm5974: switched to %s mode.\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"wellspring\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@llvm.used = appending global [10 x i8*] [i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__UNIQUE_ID_author212, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__UNIQUE_ID_description213, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__UNIQUE_ID_file214, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license215, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_debugtype216, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_debug217, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_bcm5974_driver_init226 to i8*), i8* bitcast (void ()* @bcm5974_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_bcm5974_driver_exit to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm5974_driver_init() #0 section ".init.text" !dbg !4038 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @bcm5974_driver, %struct.module* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #9, !dbg !4041
  ret i32 %call, !dbg !4041
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @bcm5974_driver_exit() #0 section ".exit.text" !dbg !4042 {
entry:
  call void @usb_deregister(%struct.usb_driver* @bcm5974_driver) #9, !dbg !4043
  ret void, !dbg !4043
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm5974_probe(%struct.usb_interface* %iface, %struct.usb_device_id* %id) #2 !dbg !3989 {
entry:
  %retval = alloca i32, align 4
  %iface.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %udev = alloca %struct.usb_device*, align 8
  %cfg = alloca %struct.bcm5974_config*, align 8
  %dev = alloca %struct.bcm5974*, align 8
  %input_dev = alloca %struct.input_dev*, align 8
  %error = alloca i32, align 4
  store %struct.usb_interface* %iface, %struct.usb_interface** %iface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %iface.addr, metadata !4044, metadata !DIExpression()), !dbg !4045
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !4046, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !4048, metadata !DIExpression()), !dbg !4049
  %0 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !4050
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %0) #9, !dbg !4051
  store %struct.usb_device* %call, %struct.usb_device** %udev, align 8, !dbg !4049
  call void @llvm.dbg.declare(metadata %struct.bcm5974_config** %cfg, metadata !4052, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.declare(metadata %struct.bcm5974** %dev, metadata !4055, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input_dev, metadata !4434, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4436, metadata !DIExpression()), !dbg !4437
  store i32 -12, i32* %error, align 4, !dbg !4437
  %1 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4438
  %call1 = call %struct.bcm5974_config* @bcm5974_get_config(%struct.usb_device* %1) #9, !dbg !4439
  store %struct.bcm5974_config* %call1, %struct.bcm5974_config** %cfg, align 8, !dbg !4440
  %call2 = call i8* @kzalloc(i64 544, i32 3264) #9, !dbg !4441
  %2 = bitcast i8* %call2 to %struct.bcm5974*, !dbg !4441
  store %struct.bcm5974* %2, %struct.bcm5974** %dev, align 8, !dbg !4442
  %call3 = call %struct.input_dev* @input_allocate_device() #9, !dbg !4443
  store %struct.input_dev* %call3, %struct.input_dev** %input_dev, align 8, !dbg !4444
  %3 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4445
  %tobool = icmp ne %struct.bcm5974* %3, null, !dbg !4445
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4447

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4448
  %tobool4 = icmp ne %struct.input_dev* %4, null, !dbg !4448
  br i1 %tobool4, label %if.end, label %if.then, !dbg !4449

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !4450
  %dev5 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %5, i32 0, i32 7, !dbg !4450
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #10, !dbg !4450
  br label %err_free_devs, !dbg !4452

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4453
  %7 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4454
  %udev6 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %7, i32 0, i32 1, !dbg !4455
  store %struct.usb_device* %6, %struct.usb_device** %udev6, align 8, !dbg !4456
  %8 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !4457
  %9 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4458
  %intf = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %9, i32 0, i32 2, !dbg !4459
  store %struct.usb_interface* %8, %struct.usb_interface** %intf, align 8, !dbg !4460
  %10 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4461
  %11 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4462
  %input = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %11, i32 0, i32 3, !dbg !4463
  store %struct.input_dev* %10, %struct.input_dev** %input, align 8, !dbg !4464
  %12 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4465
  %cfg7 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %12, i32 0, i32 4, !dbg !4466
  %13 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg, align 8, !dbg !4467
  %14 = bitcast %struct.bcm5974_config* %cfg7 to i8*, !dbg !4468
  %15 = bitcast %struct.bcm5974_config* %13 to i8*, !dbg !4468
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 4 %15, i64 136, i1 false), !dbg !4468
  br label %do.body, !dbg !4469

do.body:                                          ; preds = %if.end
  %16 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4470
  %pm_mutex = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %16, i32 0, i32 5, !dbg !4470
  call void @__mutex_init(%struct.mutex* %pm_mutex, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* @bcm5974_probe.__key) #9, !dbg !4470
  br label %do.end, !dbg !4470

do.end:                                           ; preds = %do.body
  %17 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg, align 8, !dbg !4472
  %tp_type = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %17, i32 0, i32 7, !dbg !4474
  %18 = load i32, i32* %tp_type, align 4, !dbg !4474
  %cmp = icmp eq i32 %18, 0, !dbg !4475
  br i1 %cmp, label %if.then8, label %if.end14, !dbg !4476

if.then8:                                         ; preds = %do.end
  %call9 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #9, !dbg !4477
  %19 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4479
  %bt_urb = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %19, i32 0, i32 7, !dbg !4480
  store %struct.urb* %call9, %struct.urb** %bt_urb, align 8, !dbg !4481
  %20 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4482
  %bt_urb10 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %20, i32 0, i32 7, !dbg !4484
  %21 = load %struct.urb*, %struct.urb** %bt_urb10, align 8, !dbg !4484
  %tobool11 = icmp ne %struct.urb* %21, null, !dbg !4482
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !4485

if.then12:                                        ; preds = %if.then8
  br label %err_free_devs, !dbg !4486

if.end13:                                         ; preds = %if.then8
  br label %if.end14, !dbg !4487

if.end14:                                         ; preds = %if.end13, %do.end
  %call15 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #9, !dbg !4488
  %22 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4489
  %tp_urb = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %22, i32 0, i32 9, !dbg !4490
  store %struct.urb* %call15, %struct.urb** %tp_urb, align 8, !dbg !4491
  %23 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4492
  %tp_urb16 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %23, i32 0, i32 9, !dbg !4494
  %24 = load %struct.urb*, %struct.urb** %tp_urb16, align 8, !dbg !4494
  %tobool17 = icmp ne %struct.urb* %24, null, !dbg !4492
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !4495

if.then18:                                        ; preds = %if.end14
  br label %err_free_bt_urb, !dbg !4496

if.end19:                                         ; preds = %if.end14
  %25 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4497
  %bt_urb20 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %25, i32 0, i32 7, !dbg !4499
  %26 = load %struct.urb*, %struct.urb** %bt_urb20, align 8, !dbg !4499
  %tobool21 = icmp ne %struct.urb* %26, null, !dbg !4497
  br i1 %tobool21, label %if.then22, label %if.end31, !dbg !4500

if.then22:                                        ; preds = %if.end19
  %27 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4501
  %udev23 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %27, i32 0, i32 1, !dbg !4503
  %28 = load %struct.usb_device*, %struct.usb_device** %udev23, align 8, !dbg !4503
  %29 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4504
  %cfg24 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %29, i32 0, i32 4, !dbg !4505
  %bt_datalen = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %cfg24, i32 0, i32 5, !dbg !4506
  %30 = load i32, i32* %bt_datalen, align 4, !dbg !4506
  %conv = sext i32 %30 to i64, !dbg !4504
  %31 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4507
  %bt_urb25 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %31, i32 0, i32 7, !dbg !4508
  %32 = load %struct.urb*, %struct.urb** %bt_urb25, align 8, !dbg !4508
  %transfer_dma = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 15, !dbg !4509
  %call26 = call i8* @usb_alloc_coherent(%struct.usb_device* %28, i64 %conv, i32 3264, i64* %transfer_dma) #9, !dbg !4510
  %33 = bitcast i8* %call26 to %struct.bt_data*, !dbg !4510
  %34 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4511
  %bt_data = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %34, i32 0, i32 8, !dbg !4512
  store %struct.bt_data* %33, %struct.bt_data** %bt_data, align 8, !dbg !4513
  %35 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4514
  %bt_data27 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %35, i32 0, i32 8, !dbg !4516
  %36 = load %struct.bt_data*, %struct.bt_data** %bt_data27, align 8, !dbg !4516
  %tobool28 = icmp ne %struct.bt_data* %36, null, !dbg !4514
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !4517

if.then29:                                        ; preds = %if.then22
  br label %err_free_urb, !dbg !4518

if.end30:                                         ; preds = %if.then22
  br label %if.end31, !dbg !4519

if.end31:                                         ; preds = %if.end30, %if.end19
  %37 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4520
  %udev32 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %37, i32 0, i32 1, !dbg !4521
  %38 = load %struct.usb_device*, %struct.usb_device** %udev32, align 8, !dbg !4521
  %39 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4522
  %cfg33 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %39, i32 0, i32 4, !dbg !4523
  %tp_datalen = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %cfg33, i32 0, i32 9, !dbg !4524
  %40 = load i32, i32* %tp_datalen, align 4, !dbg !4524
  %conv34 = sext i32 %40 to i64, !dbg !4522
  %41 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4525
  %tp_urb35 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %41, i32 0, i32 9, !dbg !4526
  %42 = load %struct.urb*, %struct.urb** %tp_urb35, align 8, !dbg !4526
  %transfer_dma36 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 15, !dbg !4527
  %call37 = call i8* @usb_alloc_coherent(%struct.usb_device* %38, i64 %conv34, i32 3264, i64* %transfer_dma36) #9, !dbg !4528
  %43 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4529
  %tp_data = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %43, i32 0, i32 10, !dbg !4530
  store i8* %call37, i8** %tp_data, align 8, !dbg !4531
  %44 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4532
  %tp_data38 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %44, i32 0, i32 10, !dbg !4534
  %45 = load i8*, i8** %tp_data38, align 8, !dbg !4534
  %tobool39 = icmp ne i8* %45, null, !dbg !4532
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !4535

if.then40:                                        ; preds = %if.end31
  br label %err_free_bt_buffer, !dbg !4536

if.end41:                                         ; preds = %if.end31
  %46 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4537
  %bt_urb42 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %46, i32 0, i32 7, !dbg !4539
  %47 = load %struct.urb*, %struct.urb** %bt_urb42, align 8, !dbg !4539
  %tobool43 = icmp ne %struct.urb* %47, null, !dbg !4537
  br i1 %tobool43, label %if.then44, label %if.end51, !dbg !4540

if.then44:                                        ; preds = %if.end41
  %48 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4541
  %bt_urb45 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %48, i32 0, i32 7, !dbg !4542
  %49 = load %struct.urb*, %struct.urb** %bt_urb45, align 8, !dbg !4542
  %50 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4543
  %51 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4544
  %52 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg, align 8, !dbg !4544
  %bt_ep = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %52, i32 0, i32 4, !dbg !4544
  %53 = load i32, i32* %bt_ep, align 4, !dbg !4544
  %call46 = call i32 @__create_pipe(%struct.usb_device* %51, i32 %53) #9, !dbg !4544
  %or = or i32 1073741824, %call46, !dbg !4544
  %or47 = or i32 %or, 128, !dbg !4544
  %54 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4545
  %bt_data48 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %54, i32 0, i32 8, !dbg !4546
  %55 = load %struct.bt_data*, %struct.bt_data** %bt_data48, align 8, !dbg !4546
  %56 = bitcast %struct.bt_data* %55 to i8*, !dbg !4545
  %57 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4547
  %cfg49 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %57, i32 0, i32 4, !dbg !4548
  %bt_datalen50 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %cfg49, i32 0, i32 5, !dbg !4549
  %58 = load i32, i32* %bt_datalen50, align 4, !dbg !4549
  %59 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4550
  %60 = bitcast %struct.bcm5974* %59 to i8*, !dbg !4550
  call void @usb_fill_int_urb(%struct.urb* %49, %struct.usb_device* %50, i32 %or47, i8* %56, i32 %58, void (%struct.urb*)* @bcm5974_irq_button, i8* %60, i32 1) #9, !dbg !4551
  br label %if.end51, !dbg !4551

if.end51:                                         ; preds = %if.then44, %if.end41
  %61 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4552
  %tp_urb52 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %61, i32 0, i32 9, !dbg !4553
  %62 = load %struct.urb*, %struct.urb** %tp_urb52, align 8, !dbg !4553
  %63 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4554
  %64 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4555
  %65 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg, align 8, !dbg !4555
  %tp_ep = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %65, i32 0, i32 6, !dbg !4555
  %66 = load i32, i32* %tp_ep, align 4, !dbg !4555
  %call53 = call i32 @__create_pipe(%struct.usb_device* %64, i32 %66) #9, !dbg !4555
  %or54 = or i32 1073741824, %call53, !dbg !4555
  %or55 = or i32 %or54, 128, !dbg !4555
  %67 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4556
  %tp_data56 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %67, i32 0, i32 10, !dbg !4557
  %68 = load i8*, i8** %tp_data56, align 8, !dbg !4557
  %69 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4558
  %cfg57 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %69, i32 0, i32 4, !dbg !4559
  %tp_datalen58 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %cfg57, i32 0, i32 9, !dbg !4560
  %70 = load i32, i32* %tp_datalen58, align 4, !dbg !4560
  %71 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4561
  %72 = bitcast %struct.bcm5974* %71 to i8*, !dbg !4561
  call void @usb_fill_int_urb(%struct.urb* %62, %struct.usb_device* %63, i32 %or55, i8* %68, i32 %70, void (%struct.urb*)* @bcm5974_irq_trackpad, i8* %72, i32 1) #9, !dbg !4562
  %73 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4563
  %74 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4564
  %phys = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %74, i32 0, i32 0, !dbg !4565
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %phys, i64 0, i64 0, !dbg !4564
  %call59 = call i32 @usb_make_path(%struct.usb_device* %73, i8* %arraydecay, i64 64) #9, !dbg !4566
  %75 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4567
  %phys60 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %75, i32 0, i32 0, !dbg !4568
  %arraydecay61 = getelementptr inbounds [64 x i8], [64 x i8]* %phys60, i64 0, i64 0, !dbg !4567
  %call62 = call i64 @strlcat(i8* %arraydecay61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 64) #9, !dbg !4569
  %76 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4570
  %name = getelementptr inbounds %struct.input_dev, %struct.input_dev* %76, i32 0, i32 0, !dbg !4571
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %name, align 8, !dbg !4572
  %77 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4573
  %phys63 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %77, i32 0, i32 0, !dbg !4574
  %arraydecay64 = getelementptr inbounds [64 x i8], [64 x i8]* %phys63, i64 0, i64 0, !dbg !4573
  %78 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4575
  %phys65 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %78, i32 0, i32 1, !dbg !4576
  store i8* %arraydecay64, i8** %phys65, align 8, !dbg !4577
  %79 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4578
  %udev66 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %79, i32 0, i32 1, !dbg !4579
  %80 = load %struct.usb_device*, %struct.usb_device** %udev66, align 8, !dbg !4579
  %81 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4580
  %id67 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %81, i32 0, i32 3, !dbg !4581
  call void @usb_to_input_id(%struct.usb_device* %80, %struct.input_id* %id67) #9, !dbg !4582
  %82 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg, align 8, !dbg !4583
  %caps = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %82, i32 0, i32 3, !dbg !4584
  %83 = load i32, i32* %caps, align 4, !dbg !4584
  %conv68 = trunc i32 %83 to i16, !dbg !4583
  %84 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4585
  %id69 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %84, i32 0, i32 3, !dbg !4586
  %version = getelementptr inbounds %struct.input_id, %struct.input_id* %id69, i32 0, i32 3, !dbg !4587
  store i16 %conv68, i16* %version, align 2, !dbg !4588
  %85 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !4589
  %dev70 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %85, i32 0, i32 7, !dbg !4590
  %86 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4591
  %dev71 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %86, i32 0, i32 40, !dbg !4592
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev71, i32 0, i32 1, !dbg !4593
  store %struct.device* %dev70, %struct.device** %parent, align 8, !dbg !4594
  %87 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4595
  %88 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4596
  %89 = bitcast %struct.bcm5974* %88 to i8*, !dbg !4596
  call void @input_set_drvdata(%struct.input_dev* %87, i8* %89) #9, !dbg !4597
  %90 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4598
  %open = getelementptr inbounds %struct.input_dev, %struct.input_dev* %90, i32 0, i32 31, !dbg !4599
  store i32 (%struct.input_dev*)* @bcm5974_open, i32 (%struct.input_dev*)** %open, align 8, !dbg !4600
  %91 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4601
  %close = getelementptr inbounds %struct.input_dev, %struct.input_dev* %91, i32 0, i32 32, !dbg !4602
  store void (%struct.input_dev*)* @bcm5974_close, void (%struct.input_dev*)** %close, align 8, !dbg !4603
  %92 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4604
  %93 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg, align 8, !dbg !4605
  call void @setup_events_to_report(%struct.input_dev* %92, %struct.bcm5974_config* %93) #9, !dbg !4606
  %94 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4607
  %input72 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %94, i32 0, i32 3, !dbg !4608
  %95 = load %struct.input_dev*, %struct.input_dev** %input72, align 8, !dbg !4608
  %call73 = call i32 @input_register_device(%struct.input_dev* %95) #9, !dbg !4609
  store i32 %call73, i32* %error, align 4, !dbg !4610
  %96 = load i32, i32* %error, align 4, !dbg !4611
  %tobool74 = icmp ne i32 %96, 0, !dbg !4611
  br i1 %tobool74, label %if.then75, label %if.end76, !dbg !4613

if.then75:                                        ; preds = %if.end51
  br label %err_free_buffer, !dbg !4614

if.end76:                                         ; preds = %if.end51
  %97 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !4615
  %98 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4616
  %99 = bitcast %struct.bcm5974* %98 to i8*, !dbg !4616
  call void @usb_set_intfdata(%struct.usb_interface* %97, i8* %99) #9, !dbg !4617
  store i32 0, i32* %retval, align 4, !dbg !4618
  br label %return, !dbg !4618

err_free_buffer:                                  ; preds = %if.then75
  call void @llvm.dbg.label(metadata !4619), !dbg !4620
  %100 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4621
  %udev77 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %100, i32 0, i32 1, !dbg !4622
  %101 = load %struct.usb_device*, %struct.usb_device** %udev77, align 8, !dbg !4622
  %102 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4623
  %cfg78 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %102, i32 0, i32 4, !dbg !4624
  %tp_datalen79 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %cfg78, i32 0, i32 9, !dbg !4625
  %103 = load i32, i32* %tp_datalen79, align 4, !dbg !4625
  %conv80 = sext i32 %103 to i64, !dbg !4623
  %104 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4626
  %tp_data81 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %104, i32 0, i32 10, !dbg !4627
  %105 = load i8*, i8** %tp_data81, align 8, !dbg !4627
  %106 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4628
  %tp_urb82 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %106, i32 0, i32 9, !dbg !4629
  %107 = load %struct.urb*, %struct.urb** %tp_urb82, align 8, !dbg !4629
  %transfer_dma83 = getelementptr inbounds %struct.urb, %struct.urb* %107, i32 0, i32 15, !dbg !4630
  %108 = load i64, i64* %transfer_dma83, align 8, !dbg !4630
  call void @usb_free_coherent(%struct.usb_device* %101, i64 %conv80, i8* %105, i64 %108) #9, !dbg !4631
  br label %err_free_bt_buffer, !dbg !4631

err_free_bt_buffer:                               ; preds = %err_free_buffer, %if.then40
  call void @llvm.dbg.label(metadata !4632), !dbg !4633
  %109 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4634
  %bt_urb84 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %109, i32 0, i32 7, !dbg !4636
  %110 = load %struct.urb*, %struct.urb** %bt_urb84, align 8, !dbg !4636
  %tobool85 = icmp ne %struct.urb* %110, null, !dbg !4634
  br i1 %tobool85, label %if.then86, label %if.end94, !dbg !4637

if.then86:                                        ; preds = %err_free_bt_buffer
  %111 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4638
  %udev87 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %111, i32 0, i32 1, !dbg !4639
  %112 = load %struct.usb_device*, %struct.usb_device** %udev87, align 8, !dbg !4639
  %113 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4640
  %cfg88 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %113, i32 0, i32 4, !dbg !4641
  %bt_datalen89 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %cfg88, i32 0, i32 5, !dbg !4642
  %114 = load i32, i32* %bt_datalen89, align 4, !dbg !4642
  %conv90 = sext i32 %114 to i64, !dbg !4640
  %115 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4643
  %bt_data91 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %115, i32 0, i32 8, !dbg !4644
  %116 = load %struct.bt_data*, %struct.bt_data** %bt_data91, align 8, !dbg !4644
  %117 = bitcast %struct.bt_data* %116 to i8*, !dbg !4643
  %118 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4645
  %bt_urb92 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %118, i32 0, i32 7, !dbg !4646
  %119 = load %struct.urb*, %struct.urb** %bt_urb92, align 8, !dbg !4646
  %transfer_dma93 = getelementptr inbounds %struct.urb, %struct.urb* %119, i32 0, i32 15, !dbg !4647
  %120 = load i64, i64* %transfer_dma93, align 8, !dbg !4647
  call void @usb_free_coherent(%struct.usb_device* %112, i64 %conv90, i8* %117, i64 %120) #9, !dbg !4648
  br label %if.end94, !dbg !4648

if.end94:                                         ; preds = %if.then86, %err_free_bt_buffer
  br label %err_free_urb, !dbg !4636

err_free_urb:                                     ; preds = %if.end94, %if.then29
  call void @llvm.dbg.label(metadata !4649), !dbg !4650
  %121 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4651
  %tp_urb95 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %121, i32 0, i32 9, !dbg !4652
  %122 = load %struct.urb*, %struct.urb** %tp_urb95, align 8, !dbg !4652
  call void @usb_free_urb(%struct.urb* %122) #9, !dbg !4653
  br label %err_free_bt_urb, !dbg !4653

err_free_bt_urb:                                  ; preds = %err_free_urb, %if.then18
  call void @llvm.dbg.label(metadata !4654), !dbg !4655
  %123 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4656
  %bt_urb96 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %123, i32 0, i32 7, !dbg !4657
  %124 = load %struct.urb*, %struct.urb** %bt_urb96, align 8, !dbg !4657
  call void @usb_free_urb(%struct.urb* %124) #9, !dbg !4658
  br label %err_free_devs, !dbg !4658

err_free_devs:                                    ; preds = %err_free_bt_urb, %if.then12, %if.then
  call void @llvm.dbg.label(metadata !4659), !dbg !4660
  %125 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !4661
  call void @usb_set_intfdata(%struct.usb_interface* %125, i8* null) #9, !dbg !4662
  %126 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4663
  call void @input_free_device(%struct.input_dev* %126) #9, !dbg !4664
  %127 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4665
  %128 = bitcast %struct.bcm5974* %127 to i8*, !dbg !4665
  call void @kfree(i8* %128) #9, !dbg !4666
  %129 = load i32, i32* %error, align 4, !dbg !4667
  store i32 %129, i32* %retval, align 4, !dbg !4668
  br label %return, !dbg !4668

return:                                           ; preds = %err_free_devs, %if.end76
  %130 = load i32, i32* %retval, align 4, !dbg !4669
  ret i32 %130, !dbg !4669
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bcm5974_disconnect(%struct.usb_interface* %iface) #2 !dbg !4670 {
entry:
  %iface.addr = alloca %struct.usb_interface*, align 8
  %dev = alloca %struct.bcm5974*, align 8
  store %struct.usb_interface* %iface, %struct.usb_interface** %iface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %iface.addr, metadata !4671, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.declare(metadata %struct.bcm5974** %dev, metadata !4673, metadata !DIExpression()), !dbg !4674
  %0 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !4675
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !4676
  %1 = bitcast i8* %call to %struct.bcm5974*, !dbg !4676
  store %struct.bcm5974* %1, %struct.bcm5974** %dev, align 8, !dbg !4674
  %2 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !4677
  call void @usb_set_intfdata(%struct.usb_interface* %2, i8* null) #9, !dbg !4678
  %3 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4679
  %input = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %3, i32 0, i32 3, !dbg !4680
  %4 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4680
  call void @input_unregister_device(%struct.input_dev* %4) #9, !dbg !4681
  %5 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4682
  %udev = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %5, i32 0, i32 1, !dbg !4683
  %6 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4683
  %7 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4684
  %cfg = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %7, i32 0, i32 4, !dbg !4685
  %tp_datalen = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %cfg, i32 0, i32 9, !dbg !4686
  %8 = load i32, i32* %tp_datalen, align 4, !dbg !4686
  %conv = sext i32 %8 to i64, !dbg !4684
  %9 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4687
  %tp_data = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %9, i32 0, i32 10, !dbg !4688
  %10 = load i8*, i8** %tp_data, align 8, !dbg !4688
  %11 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4689
  %tp_urb = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %11, i32 0, i32 9, !dbg !4690
  %12 = load %struct.urb*, %struct.urb** %tp_urb, align 8, !dbg !4690
  %transfer_dma = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 15, !dbg !4691
  %13 = load i64, i64* %transfer_dma, align 8, !dbg !4691
  call void @usb_free_coherent(%struct.usb_device* %6, i64 %conv, i8* %10, i64 %13) #9, !dbg !4692
  %14 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4693
  %bt_urb = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %14, i32 0, i32 7, !dbg !4695
  %15 = load %struct.urb*, %struct.urb** %bt_urb, align 8, !dbg !4695
  %tobool = icmp ne %struct.urb* %15, null, !dbg !4693
  br i1 %tobool, label %if.then, label %if.end, !dbg !4696

if.then:                                          ; preds = %entry
  %16 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4697
  %udev1 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %16, i32 0, i32 1, !dbg !4698
  %17 = load %struct.usb_device*, %struct.usb_device** %udev1, align 8, !dbg !4698
  %18 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4699
  %cfg2 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %18, i32 0, i32 4, !dbg !4700
  %bt_datalen = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %cfg2, i32 0, i32 5, !dbg !4701
  %19 = load i32, i32* %bt_datalen, align 4, !dbg !4701
  %conv3 = sext i32 %19 to i64, !dbg !4699
  %20 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4702
  %bt_data = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %20, i32 0, i32 8, !dbg !4703
  %21 = load %struct.bt_data*, %struct.bt_data** %bt_data, align 8, !dbg !4703
  %22 = bitcast %struct.bt_data* %21 to i8*, !dbg !4702
  %23 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4704
  %bt_urb4 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %23, i32 0, i32 7, !dbg !4705
  %24 = load %struct.urb*, %struct.urb** %bt_urb4, align 8, !dbg !4705
  %transfer_dma5 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 15, !dbg !4706
  %25 = load i64, i64* %transfer_dma5, align 8, !dbg !4706
  call void @usb_free_coherent(%struct.usb_device* %17, i64 %conv3, i8* %22, i64 %25) #9, !dbg !4707
  br label %if.end, !dbg !4707

if.end:                                           ; preds = %if.then, %entry
  %26 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4708
  %tp_urb6 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %26, i32 0, i32 9, !dbg !4709
  %27 = load %struct.urb*, %struct.urb** %tp_urb6, align 8, !dbg !4709
  call void @usb_free_urb(%struct.urb* %27) #9, !dbg !4710
  %28 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4711
  %bt_urb7 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %28, i32 0, i32 7, !dbg !4712
  %29 = load %struct.urb*, %struct.urb** %bt_urb7, align 8, !dbg !4712
  call void @usb_free_urb(%struct.urb* %29) #9, !dbg !4713
  %30 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4714
  %31 = bitcast %struct.bcm5974* %30 to i8*, !dbg !4714
  call void @kfree(i8* %31) #9, !dbg !4715
  ret void, !dbg !4716
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm5974_suspend(%struct.usb_interface* %iface, i32 %message.coerce) #2 !dbg !4717 {
entry:
  %message = alloca %struct.pm_message, align 4
  %iface.addr = alloca %struct.usb_interface*, align 8
  %dev = alloca %struct.bcm5974*, align 8
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %message, i32 0, i32 0
  store i32 %message.coerce, i32* %coerce.dive, align 4
  store %struct.usb_interface* %iface, %struct.usb_interface** %iface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %iface.addr, metadata !4718, metadata !DIExpression()), !dbg !4719
  call void @llvm.dbg.declare(metadata %struct.pm_message* %message, metadata !4720, metadata !DIExpression()), !dbg !4721
  call void @llvm.dbg.declare(metadata %struct.bcm5974** %dev, metadata !4722, metadata !DIExpression()), !dbg !4723
  %0 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !4724
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !4725
  %1 = bitcast i8* %call to %struct.bcm5974*, !dbg !4725
  store %struct.bcm5974* %1, %struct.bcm5974** %dev, align 8, !dbg !4723
  %2 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4726
  %pm_mutex = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %2, i32 0, i32 5, !dbg !4727
  call void @mutex_lock(%struct.mutex* %pm_mutex) #9, !dbg !4728
  %3 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4729
  %opened = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %3, i32 0, i32 6, !dbg !4731
  %4 = load i32, i32* %opened, align 8, !dbg !4731
  %tobool = icmp ne i32 %4, 0, !dbg !4729
  br i1 %tobool, label %if.then, label %if.end, !dbg !4732

if.then:                                          ; preds = %entry
  %5 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4733
  call void @bcm5974_pause_traffic(%struct.bcm5974* %5) #9, !dbg !4734
  br label %if.end, !dbg !4734

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4735
  %pm_mutex1 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %6, i32 0, i32 5, !dbg !4736
  call void @mutex_unlock(%struct.mutex* %pm_mutex1) #9, !dbg !4737
  ret i32 0, !dbg !4738
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm5974_resume(%struct.usb_interface* %iface) #2 !dbg !4739 {
entry:
  %iface.addr = alloca %struct.usb_interface*, align 8
  %dev = alloca %struct.bcm5974*, align 8
  %error = alloca i32, align 4
  store %struct.usb_interface* %iface, %struct.usb_interface** %iface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %iface.addr, metadata !4740, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.declare(metadata %struct.bcm5974** %dev, metadata !4742, metadata !DIExpression()), !dbg !4743
  %0 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !4744
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !4745
  %1 = bitcast i8* %call to %struct.bcm5974*, !dbg !4745
  store %struct.bcm5974* %1, %struct.bcm5974** %dev, align 8, !dbg !4743
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4746, metadata !DIExpression()), !dbg !4747
  store i32 0, i32* %error, align 4, !dbg !4747
  %2 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4748
  %pm_mutex = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %2, i32 0, i32 5, !dbg !4749
  call void @mutex_lock(%struct.mutex* %pm_mutex) #9, !dbg !4750
  %3 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4751
  %opened = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %3, i32 0, i32 6, !dbg !4753
  %4 = load i32, i32* %opened, align 8, !dbg !4753
  %tobool = icmp ne i32 %4, 0, !dbg !4751
  br i1 %tobool, label %if.then, label %if.end, !dbg !4754

if.then:                                          ; preds = %entry
  %5 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4755
  %call1 = call i32 @bcm5974_start_traffic(%struct.bcm5974* %5) #9, !dbg !4756
  store i32 %call1, i32* %error, align 4, !dbg !4757
  br label %if.end, !dbg !4758

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !4759
  %pm_mutex2 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %6, i32 0, i32 5, !dbg !4760
  call void @mutex_unlock(%struct.mutex* %pm_mutex2) #9, !dbg !4761
  %7 = load i32, i32* %error, align 4, !dbg !4762
  ret i32 %7, !dbg !4763
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %intf) #2 !dbg !4764 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4767, metadata !DIExpression()), !dbg !4768
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4769, metadata !DIExpression()), !dbg !4771
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4771
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !4771
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !4771
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4771
  %2 = bitcast %struct.device* %1 to i8*, !dbg !4771
  store i8* %2, i8** %__mptr, align 8, !dbg !4771
  br label %do.body, !dbg !4771

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4772

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4771
  %add.ptr = getelementptr i8, i8* %3, i64 -160, !dbg !4771
  %4 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !4771
  store %struct.usb_device* %4, %struct.usb_device** %tmp, align 8, !dbg !4772
  %5 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !4771
  ret %struct.usb_device* %5, !dbg !4774
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.bcm5974_config* @bcm5974_get_config(%struct.usb_device* %udev) #2 !dbg !4775 {
entry:
  %retval = alloca %struct.bcm5974_config*, align 8
  %udev.addr = alloca %struct.usb_device*, align 8
  %id = alloca i16, align 2
  %cfg = alloca %struct.bcm5974_config*, align 8
  store %struct.usb_device* %udev, %struct.usb_device** %udev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev.addr, metadata !4778, metadata !DIExpression()), !dbg !4779
  call void @llvm.dbg.declare(metadata i16* %id, metadata !4780, metadata !DIExpression()), !dbg !4781
  %0 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4782
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 15, !dbg !4782
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 8, !dbg !4782
  %1 = load i16, i16* %idProduct, align 2, !dbg !4782
  store i16 %1, i16* %id, align 2, !dbg !4781
  call void @llvm.dbg.declare(metadata %struct.bcm5974_config** %cfg, metadata !4783, metadata !DIExpression()), !dbg !4784
  store %struct.bcm5974_config* getelementptr inbounds ([14 x %struct.bcm5974_config], [14 x %struct.bcm5974_config]* @bcm5974_config_table, i64 0, i64 0), %struct.bcm5974_config** %cfg, align 8, !dbg !4785
  br label %for.cond, !dbg !4787

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg, align 8, !dbg !4788
  %ansi = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %2, i32 0, i32 0, !dbg !4790
  %3 = load i32, i32* %ansi, align 4, !dbg !4790
  %tobool = icmp ne i32 %3, 0, !dbg !4791
  br i1 %tobool, label %for.body, label %for.end, !dbg !4791

for.body:                                         ; preds = %for.cond
  %4 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg, align 8, !dbg !4792
  %ansi1 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %4, i32 0, i32 0, !dbg !4794
  %5 = load i32, i32* %ansi1, align 4, !dbg !4794
  %6 = load i16, i16* %id, align 2, !dbg !4795
  %conv = zext i16 %6 to i32, !dbg !4795
  %cmp = icmp eq i32 %5, %conv, !dbg !4796
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4797

lor.lhs.false:                                    ; preds = %for.body
  %7 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg, align 8, !dbg !4798
  %iso = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %7, i32 0, i32 1, !dbg !4799
  %8 = load i32, i32* %iso, align 4, !dbg !4799
  %9 = load i16, i16* %id, align 2, !dbg !4800
  %conv3 = zext i16 %9 to i32, !dbg !4800
  %cmp4 = icmp eq i32 %8, %conv3, !dbg !4801
  br i1 %cmp4, label %if.then, label %lor.lhs.false6, !dbg !4802

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %10 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg, align 8, !dbg !4803
  %jis = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %10, i32 0, i32 2, !dbg !4804
  %11 = load i32, i32* %jis, align 4, !dbg !4804
  %12 = load i16, i16* %id, align 2, !dbg !4805
  %conv7 = zext i16 %12 to i32, !dbg !4805
  %cmp8 = icmp eq i32 %11, %conv7, !dbg !4806
  br i1 %cmp8, label %if.then, label %if.end, !dbg !4807

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false, %for.body
  %13 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg, align 8, !dbg !4808
  store %struct.bcm5974_config* %13, %struct.bcm5974_config** %retval, align 8, !dbg !4809
  br label %return, !dbg !4809

if.end:                                           ; preds = %lor.lhs.false6
  br label %for.inc, !dbg !4805

for.inc:                                          ; preds = %if.end
  %14 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg, align 8, !dbg !4810
  %incdec.ptr = getelementptr %struct.bcm5974_config, %struct.bcm5974_config* %14, i32 1, !dbg !4810
  store %struct.bcm5974_config* %incdec.ptr, %struct.bcm5974_config** %cfg, align 8, !dbg !4810
  br label %for.cond, !dbg !4811, !llvm.loop !4812

for.end:                                          ; preds = %for.cond
  store %struct.bcm5974_config* getelementptr inbounds ([14 x %struct.bcm5974_config], [14 x %struct.bcm5974_config]* @bcm5974_config_table, i64 0, i64 0), %struct.bcm5974_config** %retval, align 8, !dbg !4814
  br label %return, !dbg !4814

return:                                           ; preds = %for.end, %if.then
  %15 = load %struct.bcm5974_config*, %struct.bcm5974_config** %retval, align 8, !dbg !4815
  ret %struct.bcm5974_config* %15, !dbg !4815
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4816 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4819, metadata !DIExpression()), !dbg !4823
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4829, metadata !DIExpression()), !dbg !4830
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4831, metadata !DIExpression()), !dbg !4832
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4833, metadata !DIExpression()), !dbg !4834
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4835, metadata !DIExpression()), !dbg !4839
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4841, metadata !DIExpression()), !dbg !4845
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4847, metadata !DIExpression()), !dbg !4851
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4856, metadata !DIExpression()), !dbg !4857
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4858, metadata !DIExpression()), !dbg !4859
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4860, metadata !DIExpression()), !dbg !4861
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4862, metadata !DIExpression()), !dbg !4863
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4864, metadata !DIExpression()), !dbg !4865
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4866, metadata !DIExpression()), !dbg !4867
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4868, metadata !DIExpression()), !dbg !4869
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4870, metadata !DIExpression()), !dbg !4871
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4872, metadata !DIExpression()), !dbg !4873
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4874, metadata !DIExpression()), !dbg !4875
  %0 = load i64, i64* %size.addr, align 8, !dbg !4876
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4877
  %or = or i32 %1, 256, !dbg !4878
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4879
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !4880
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4881

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4882
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4883
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4884

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4885
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4886
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4887
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !4888
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4865
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4889
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4890
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4891
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4892
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4893
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4894
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !4895
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4895
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4895
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4895
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !4895
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4896
  br label %kmalloc.exit, !dbg !4896

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4897
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4898
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4898
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4900

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4901
  br label %kmalloc_index.exit.i, !dbg !4901

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4902
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4904
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4905

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4906
  br label %kmalloc_index.exit.i, !dbg !4906

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4907
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4909
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4910

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4911
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4912
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4913

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4914
  br label %kmalloc_index.exit.i, !dbg !4914

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4915
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4917
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4918

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4919
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4920
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4921

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4922
  br label %kmalloc_index.exit.i, !dbg !4922

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4923
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4925
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4926

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4927
  br label %kmalloc_index.exit.i, !dbg !4927

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4928
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4930
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4931

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4932
  br label %kmalloc_index.exit.i, !dbg !4932

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4933
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4935
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4936

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4937
  br label %kmalloc_index.exit.i, !dbg !4937

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4938
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4940
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4941

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4942
  br label %kmalloc_index.exit.i, !dbg !4942

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4943
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4945
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4946

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4947
  br label %kmalloc_index.exit.i, !dbg !4947

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4948
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4950
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4951

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4952
  br label %kmalloc_index.exit.i, !dbg !4952

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4953
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4955
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4956

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4957
  br label %kmalloc_index.exit.i, !dbg !4957

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4958
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4960
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4961

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4962
  br label %kmalloc_index.exit.i, !dbg !4962

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4963
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4965
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4966

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4967
  br label %kmalloc_index.exit.i, !dbg !4967

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4968
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4970
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4971

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4972
  br label %kmalloc_index.exit.i, !dbg !4972

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4973
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4975
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4976

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4977
  br label %kmalloc_index.exit.i, !dbg !4977

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4978
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4980
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4981

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4982
  br label %kmalloc_index.exit.i, !dbg !4982

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4983
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4985
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4986

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4987
  br label %kmalloc_index.exit.i, !dbg !4987

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4988
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4990
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4991

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4992
  br label %kmalloc_index.exit.i, !dbg !4992

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4993
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4995
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4996

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4997
  br label %kmalloc_index.exit.i, !dbg !4997

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4998
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5000
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5001

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5002
  br label %kmalloc_index.exit.i, !dbg !5002

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5003
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5005
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5006

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5007
  br label %kmalloc_index.exit.i, !dbg !5007

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5008
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5010
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5011

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5012
  br label %kmalloc_index.exit.i, !dbg !5012

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5013
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5015
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5016

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5017
  br label %kmalloc_index.exit.i, !dbg !5017

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5018
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5020
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5021

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5022
  br label %kmalloc_index.exit.i, !dbg !5022

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5023
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5025
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5026

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5027
  br label %kmalloc_index.exit.i, !dbg !5027

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5028
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5030
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5031

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5032
  br label %kmalloc_index.exit.i, !dbg !5032

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5033
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5035
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5036

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5037
  br label %kmalloc_index.exit.i, !dbg !5037

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5038
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5040
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5041

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5042
  br label %kmalloc_index.exit.i, !dbg !5042

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5043, !srcloc !5046
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #11, !dbg !5047, !srcloc !5050
  unreachable, !dbg !5051

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5052
  store i32 %45, i32* %index.i, align 4, !dbg !5053
  %46 = load i32, i32* %index.i, align 4, !dbg !5054
  %tobool.i = icmp ne i32 %46, 0, !dbg !5054
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5056

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5057
  br label %kmalloc.exit, !dbg !5057

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5058
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5059
  %and.i.i = and i32 %48, 17, !dbg !5059
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5059
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5059
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5059
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5059
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5061

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5062
  br label %kmalloc_type.exit.i, !dbg !5062

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5063
  %and2.i.i = and i32 %49, 1, !dbg !5064
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5063
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5063
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5063
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5065
  br label %kmalloc_type.exit.i, !dbg !5065

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5066
  %idxprom.i = zext i32 %51 to i64, !dbg !5067
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5067
  %52 = load i32, i32* %index.i, align 4, !dbg !5068
  %idxprom6.i = zext i32 %52 to i64, !dbg !5067
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5067
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5067
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5069
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5070
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5071
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5072
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !5073
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5073
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5073
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5073
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5073
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4834
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5074
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5075
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5076
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5077
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !5078
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5079
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5080
  store i8* %62, i8** %retval.i, align 8, !dbg !5081
  br label %kmalloc.exit, !dbg !5081

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5082
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5083
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !5084
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5084
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5084
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5084
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5084
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5085
  br label %kmalloc.exit, !dbg !5085

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5086
  ret i8* %65, !dbg !5087
}

; Function Attrs: noredzone
declare dso_local %struct.input_dev* @input_allocate_device() #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noredzone
declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

; Function Attrs: noredzone
declare dso_local i8* @usb_alloc_coherent(%struct.usb_device*, i64, i32, i64*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_int_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context, i32 %interval) #2 !dbg !5088 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %dev.addr = alloca %struct.usb_device*, align 8
  %pipe.addr = alloca i32, align 4
  %transfer_buffer.addr = alloca i8*, align 8
  %buffer_length.addr = alloca i32, align 4
  %complete_fn.addr = alloca void (%struct.urb*)*, align 8
  %context.addr = alloca i8*, align 8
  %interval.addr = alloca i32, align 4
  %__UNIQUE_ID___x207 = alloca i32, align 4
  %__UNIQUE_ID___x205 = alloca i32, align 4
  %__UNIQUE_ID___y206 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___y208 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5091, metadata !DIExpression()), !dbg !5092
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5093, metadata !DIExpression()), !dbg !5094
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !5095, metadata !DIExpression()), !dbg !5096
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !5097, metadata !DIExpression()), !dbg !5098
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !5099, metadata !DIExpression()), !dbg !5100
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !5101, metadata !DIExpression()), !dbg !5102
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !5103, metadata !DIExpression()), !dbg !5104
  store i32 %interval, i32* %interval.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %interval.addr, metadata !5105, metadata !DIExpression()), !dbg !5106
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5107
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5108
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !5109
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !5110
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !5111
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5112
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !5113
  store i32 %2, i32* %pipe2, align 8, !dbg !5114
  %4 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !5115
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5116
  %transfer_buffer3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 14, !dbg !5117
  store i8* %4, i8** %transfer_buffer3, align 8, !dbg !5118
  %6 = load i32, i32* %buffer_length.addr, align 4, !dbg !5119
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5120
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 19, !dbg !5121
  store i32 %6, i32* %transfer_buffer_length, align 8, !dbg !5122
  %8 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !5123
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5124
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 28, !dbg !5125
  store void (%struct.urb*)* %8, void (%struct.urb*)** %complete, align 8, !dbg !5126
  %10 = load i8*, i8** %context.addr, align 8, !dbg !5127
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5128
  %context4 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 27, !dbg !5129
  store i8* %10, i8** %context4, align 8, !dbg !5130
  %12 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5131
  %speed = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 4, !dbg !5133
  %13 = load i32, i32* %speed, align 4, !dbg !5133
  %cmp = icmp eq i32 %13, 3, !dbg !5134
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5135

lor.lhs.false:                                    ; preds = %entry
  %14 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5136
  %speed5 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 4, !dbg !5137
  %15 = load i32, i32* %speed5, align 4, !dbg !5137
  %cmp6 = icmp uge i32 %15, 5, !dbg !5138
  br i1 %cmp6, label %if.then, label %if.else, !dbg !5139

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x207, metadata !5140, metadata !DIExpression()), !dbg !5143
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x205, metadata !5144, metadata !DIExpression()), !dbg !5146
  %16 = load i32, i32* %interval.addr, align 4, !dbg !5146
  store i32 %16, i32* %__UNIQUE_ID___x205, align 4, !dbg !5146
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y206, metadata !5147, metadata !DIExpression()), !dbg !5146
  store i32 1, i32* %__UNIQUE_ID___y206, align 4, !dbg !5146
  %17 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !5146
  %18 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !5146
  %cmp7 = icmp sgt i32 %17, %18, !dbg !5146
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !5146

cond.true:                                        ; preds = %if.then
  %19 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !5146
  br label %cond.end, !dbg !5146

cond.false:                                       ; preds = %if.then
  %20 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !5146
  br label %cond.end, !dbg !5146

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !5146
  store i32 %cond, i32* %tmp, align 4, !dbg !5146
  %21 = load i32, i32* %tmp, align 4, !dbg !5146
  store i32 %21, i32* %__UNIQUE_ID___x207, align 4, !dbg !5143
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y208, metadata !5148, metadata !DIExpression()), !dbg !5143
  store i32 16, i32* %__UNIQUE_ID___y208, align 4, !dbg !5143
  %22 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !5143
  %23 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !5143
  %cmp9 = icmp slt i32 %22, %23, !dbg !5143
  br i1 %cmp9, label %cond.true10, label %cond.false11, !dbg !5143

cond.true10:                                      ; preds = %cond.end
  %24 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !5143
  br label %cond.end12, !dbg !5143

cond.false11:                                     ; preds = %cond.end
  %25 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !5143
  br label %cond.end12, !dbg !5143

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %24, %cond.true10 ], [ %25, %cond.false11 ], !dbg !5143
  store i32 %cond13, i32* %tmp8, align 4, !dbg !5143
  %26 = load i32, i32* %tmp8, align 4, !dbg !5143
  store i32 %26, i32* %interval.addr, align 4, !dbg !5149
  %27 = load i32, i32* %interval.addr, align 4, !dbg !5150
  %sub = sub i32 %27, 1, !dbg !5151
  %shl = shl i32 1, %sub, !dbg !5152
  %28 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5153
  %interval14 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 25, !dbg !5154
  store i32 %shl, i32* %interval14, align 8, !dbg !5155
  br label %if.end, !dbg !5156

if.else:                                          ; preds = %lor.lhs.false
  %29 = load i32, i32* %interval.addr, align 4, !dbg !5157
  %30 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5159
  %interval15 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 25, !dbg !5160
  store i32 %29, i32* %interval15, align 8, !dbg !5161
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end12
  %31 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5162
  %start_frame = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 23, !dbg !5163
  store i32 -1, i32* %start_frame, align 8, !dbg !5164
  ret void, !dbg !5165
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !5166 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5169, metadata !DIExpression()), !dbg !5170
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !5171, metadata !DIExpression()), !dbg !5172
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5173
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !5174
  %1 = load i32, i32* %devnum, align 8, !dbg !5174
  %shl = shl i32 %1, 8, !dbg !5175
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !5176
  %shl1 = shl i32 %2, 15, !dbg !5177
  %or = or i32 %shl, %shl1, !dbg !5178
  ret i32 %or, !dbg !5179
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bcm5974_irq_button(%struct.urb* %urb) #2 !dbg !5180 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %dev = alloca %struct.bcm5974*, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %error = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5181, metadata !DIExpression()), !dbg !5182
  call void @llvm.dbg.declare(metadata %struct.bcm5974** %dev, metadata !5183, metadata !DIExpression()), !dbg !5184
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5185
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !5186
  %1 = load i8*, i8** %context, align 8, !dbg !5186
  %2 = bitcast i8* %1 to %struct.bcm5974*, !dbg !5185
  store %struct.bcm5974* %2, %struct.bcm5974** %dev, align 8, !dbg !5184
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !5187, metadata !DIExpression()), !dbg !5188
  %3 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5189
  %intf1 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %3, i32 0, i32 2, !dbg !5190
  %4 = load %struct.usb_interface*, %struct.usb_interface** %intf1, align 8, !dbg !5190
  store %struct.usb_interface* %4, %struct.usb_interface** %intf, align 8, !dbg !5188
  call void @llvm.dbg.declare(metadata i32* %error, metadata !5191, metadata !DIExpression()), !dbg !5192
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5193
  %status = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 12, !dbg !5194
  %6 = load i32, i32* %status, align 8, !dbg !5194
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 -75, label %sw.bb2
    i32 -104, label %sw.bb2
    i32 -2, label %sw.bb2
    i32 -108, label %sw.bb2
  ], !dbg !5195

sw.bb:                                            ; preds = %entry
  br label %sw.epilog, !dbg !5196

sw.bb2:                                           ; preds = %entry, %entry, %entry, %entry
  br label %if.end13, !dbg !5198

sw.default:                                       ; preds = %entry
  br label %exit, !dbg !5199

sw.epilog:                                        ; preds = %sw.bb
  %7 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5200
  %8 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5202
  %bt_urb = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %8, i32 0, i32 7, !dbg !5203
  %9 = load %struct.urb*, %struct.urb** %bt_urb, align 8, !dbg !5203
  %actual_length = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 20, !dbg !5204
  %10 = load i32, i32* %actual_length, align 4, !dbg !5204
  %call = call i32 @report_bt_state(%struct.bcm5974* %7, i32 %10) #9, !dbg !5205
  %tobool = icmp ne i32 %call, 0, !dbg !5205
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5206

if.then:                                          ; preds = %sw.epilog
  %11 = load i32, i32* @debug, align 4, !dbg !5207
  %cmp = icmp sge i32 %11, 1, !dbg !5207
  br i1 %cmp, label %if.then3, label %if.end, !dbg !5210

if.then3:                                         ; preds = %if.then
  %12 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5207
  %bt_urb4 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %12, i32 0, i32 7, !dbg !5207
  %13 = load %struct.urb*, %struct.urb** %bt_urb4, align 8, !dbg !5207
  %actual_length5 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 20, !dbg !5207
  %14 = load i32, i32* %actual_length5, align 4, !dbg !5207
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %14) #10, !dbg !5207
  br label %if.end, !dbg !5207

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end7, !dbg !5210

if.end7:                                          ; preds = %if.end, %sw.epilog
  br label %exit, !dbg !5211

exit:                                             ; preds = %if.end7, %sw.default
  call void @llvm.dbg.label(metadata !5212), !dbg !5213
  %15 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5214
  %bt_urb8 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %15, i32 0, i32 7, !dbg !5215
  %16 = load %struct.urb*, %struct.urb** %bt_urb8, align 8, !dbg !5215
  %call9 = call i32 @usb_submit_urb(%struct.urb* %16, i32 2592) #9, !dbg !5216
  store i32 %call9, i32* %error, align 4, !dbg !5217
  %17 = load i32, i32* %error, align 4, !dbg !5218
  %tobool10 = icmp ne i32 %17, 0, !dbg !5218
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !5220

if.then11:                                        ; preds = %exit
  %18 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5221
  %dev12 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %18, i32 0, i32 7, !dbg !5221
  %19 = load i32, i32* %error, align 4, !dbg !5221
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %19) #10, !dbg !5221
  br label %if.end13, !dbg !5221

if.end13:                                         ; preds = %sw.bb2, %if.then11, %exit
  ret void, !dbg !5222
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bcm5974_irq_trackpad(%struct.urb* %urb) #2 !dbg !5223 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %dev = alloca %struct.bcm5974*, align 8
  %intf = alloca %struct.usb_interface*, align 8
  %error = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5224, metadata !DIExpression()), !dbg !5225
  call void @llvm.dbg.declare(metadata %struct.bcm5974** %dev, metadata !5226, metadata !DIExpression()), !dbg !5227
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5228
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !5229
  %1 = load i8*, i8** %context, align 8, !dbg !5229
  %2 = bitcast i8* %1 to %struct.bcm5974*, !dbg !5228
  store %struct.bcm5974* %2, %struct.bcm5974** %dev, align 8, !dbg !5227
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf, metadata !5230, metadata !DIExpression()), !dbg !5231
  %3 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5232
  %intf1 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %3, i32 0, i32 2, !dbg !5233
  %4 = load %struct.usb_interface*, %struct.usb_interface** %intf1, align 8, !dbg !5233
  store %struct.usb_interface* %4, %struct.usb_interface** %intf, align 8, !dbg !5231
  call void @llvm.dbg.declare(metadata i32* %error, metadata !5234, metadata !DIExpression()), !dbg !5235
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5236
  %status = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 12, !dbg !5237
  %6 = load i32, i32* %status, align 8, !dbg !5237
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 -75, label %sw.bb2
    i32 -104, label %sw.bb2
    i32 -2, label %sw.bb2
    i32 -108, label %sw.bb2
  ], !dbg !5238

sw.bb:                                            ; preds = %entry
  br label %sw.epilog, !dbg !5239

sw.bb2:                                           ; preds = %entry, %entry, %entry, %entry
  br label %if.end18, !dbg !5241

sw.default:                                       ; preds = %entry
  br label %exit, !dbg !5242

sw.epilog:                                        ; preds = %sw.bb
  %7 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5243
  %tp_urb = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %7, i32 0, i32 9, !dbg !5245
  %8 = load %struct.urb*, %struct.urb** %tp_urb, align 8, !dbg !5245
  %actual_length = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 20, !dbg !5246
  %9 = load i32, i32* %actual_length, align 4, !dbg !5246
  %cmp = icmp eq i32 %9, 2, !dbg !5247
  br i1 %cmp, label %if.then, label %if.end, !dbg !5248

if.then:                                          ; preds = %sw.epilog
  br label %exit, !dbg !5249

if.end:                                           ; preds = %sw.epilog
  %10 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5250
  %11 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5252
  %tp_urb3 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %11, i32 0, i32 9, !dbg !5253
  %12 = load %struct.urb*, %struct.urb** %tp_urb3, align 8, !dbg !5253
  %actual_length4 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 20, !dbg !5254
  %13 = load i32, i32* %actual_length4, align 4, !dbg !5254
  %call = call i32 @report_tp_state(%struct.bcm5974* %10, i32 %13) #9, !dbg !5255
  %tobool = icmp ne i32 %call, 0, !dbg !5255
  br i1 %tobool, label %if.then5, label %if.end12, !dbg !5256

if.then5:                                         ; preds = %if.end
  %14 = load i32, i32* @debug, align 4, !dbg !5257
  %cmp6 = icmp sge i32 %14, 1, !dbg !5257
  br i1 %cmp6, label %if.then7, label %if.end11, !dbg !5260

if.then7:                                         ; preds = %if.then5
  %15 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5257
  %tp_urb8 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %15, i32 0, i32 9, !dbg !5257
  %16 = load %struct.urb*, %struct.urb** %tp_urb8, align 8, !dbg !5257
  %actual_length9 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 20, !dbg !5257
  %17 = load i32, i32* %actual_length9, align 4, !dbg !5257
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %17) #10, !dbg !5257
  br label %if.end11, !dbg !5257

if.end11:                                         ; preds = %if.then7, %if.then5
  br label %if.end12, !dbg !5260

if.end12:                                         ; preds = %if.end11, %if.end
  br label %exit, !dbg !5261

exit:                                             ; preds = %if.end12, %if.then, %sw.default
  call void @llvm.dbg.label(metadata !5262), !dbg !5263
  %18 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5264
  %tp_urb13 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %18, i32 0, i32 9, !dbg !5265
  %19 = load %struct.urb*, %struct.urb** %tp_urb13, align 8, !dbg !5265
  %call14 = call i32 @usb_submit_urb(%struct.urb* %19, i32 2592) #9, !dbg !5266
  store i32 %call14, i32* %error, align 4, !dbg !5267
  %20 = load i32, i32* %error, align 4, !dbg !5268
  %tobool15 = icmp ne i32 %20, 0, !dbg !5268
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !5270

if.then16:                                        ; preds = %exit
  %21 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5271
  %dev17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 7, !dbg !5271
  %22 = load i32, i32* %error, align 4, !dbg !5271
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %22) #10, !dbg !5271
  br label %if.end18, !dbg !5271

if.end18:                                         ; preds = %sw.bb2, %if.then16, %exit
  ret void, !dbg !5272
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_make_path(%struct.usb_device* %dev, i8* %buf, i64 %size) #2 !dbg !5273 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %actual = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5276, metadata !DIExpression()), !dbg !5277
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5278, metadata !DIExpression()), !dbg !5279
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5280, metadata !DIExpression()), !dbg !5281
  call void @llvm.dbg.declare(metadata i32* %actual, metadata !5282, metadata !DIExpression()), !dbg !5283
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !5284
  %1 = load i64, i64* %size.addr, align 8, !dbg !5285
  %2 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5286
  %bus = getelementptr inbounds %struct.usb_device, %struct.usb_device* %2, i32 0, i32 12, !dbg !5287
  %3 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !5287
  %bus_name = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %3, i32 0, i32 3, !dbg !5288
  %4 = load i8*, i8** %bus_name, align 8, !dbg !5288
  %5 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5289
  %devpath = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 1, !dbg !5290
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %devpath, i64 0, i64 0, !dbg !5289
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %4, i8* %arraydecay) #9, !dbg !5291
  store i32 %call, i32* %actual, align 4, !dbg !5292
  %6 = load i32, i32* %actual, align 4, !dbg !5293
  %7 = load i64, i64* %size.addr, align 8, !dbg !5294
  %conv = trunc i64 %7 to i32, !dbg !5295
  %cmp = icmp sge i32 %6, %conv, !dbg !5296
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5297

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5297

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %actual, align 4, !dbg !5298
  br label %cond.end, !dbg !5297

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %8, %cond.false ], !dbg !5297
  ret i32 %cond, !dbg !5299
}

; Function Attrs: noredzone
declare dso_local i64 @strlcat(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_to_input_id(%struct.usb_device* %dev, %struct.input_id* %id) #2 !dbg !5300 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %id.addr = alloca %struct.input_id*, align 8
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5307, metadata !DIExpression()), !dbg !5308
  store %struct.input_id* %id, %struct.input_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_id** %id.addr, metadata !5309, metadata !DIExpression()), !dbg !5310
  %0 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5311
  %bustype = getelementptr inbounds %struct.input_id, %struct.input_id* %0, i32 0, i32 0, !dbg !5312
  store i16 3, i16* %bustype, align 2, !dbg !5313
  %1 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5314
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %1, i32 0, i32 15, !dbg !5314
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor, i32 0, i32 7, !dbg !5314
  %2 = load i16, i16* %idVendor, align 8, !dbg !5314
  %3 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5315
  %vendor = getelementptr inbounds %struct.input_id, %struct.input_id* %3, i32 0, i32 1, !dbg !5316
  store i16 %2, i16* %vendor, align 2, !dbg !5317
  %4 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5318
  %descriptor1 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %4, i32 0, i32 15, !dbg !5318
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor1, i32 0, i32 8, !dbg !5318
  %5 = load i16, i16* %idProduct, align 2, !dbg !5318
  %6 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5319
  %product = getelementptr inbounds %struct.input_id, %struct.input_id* %6, i32 0, i32 2, !dbg !5320
  store i16 %5, i16* %product, align 2, !dbg !5321
  %7 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5322
  %descriptor2 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 15, !dbg !5322
  %bcdDevice = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor2, i32 0, i32 9, !dbg !5322
  %8 = load i16, i16* %bcdDevice, align 4, !dbg !5322
  %9 = load %struct.input_id*, %struct.input_id** %id.addr, align 8, !dbg !5323
  %version = getelementptr inbounds %struct.input_id, %struct.input_id* %9, i32 0, i32 3, !dbg !5324
  store i16 %8, i16* %version, align 2, !dbg !5325
  ret void, !dbg !5326
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_set_drvdata(%struct.input_dev* %dev, i8* %data) #2 !dbg !5327 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5330, metadata !DIExpression()), !dbg !5331
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5332, metadata !DIExpression()), !dbg !5333
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5334
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 40, !dbg !5335
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5336
  call void @dev_set_drvdata(%struct.device* %dev1, i8* %1) #9, !dbg !5337
  ret void, !dbg !5338
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm5974_open(%struct.input_dev* %input) #2 !dbg !5339 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca %struct.input_dev*, align 8
  %dev = alloca %struct.bcm5974*, align 8
  %error = alloca i32, align 4
  store %struct.input_dev* %input, %struct.input_dev** %input.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input.addr, metadata !5340, metadata !DIExpression()), !dbg !5341
  call void @llvm.dbg.declare(metadata %struct.bcm5974** %dev, metadata !5342, metadata !DIExpression()), !dbg !5343
  %0 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !5344
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #9, !dbg !5345
  %1 = bitcast i8* %call to %struct.bcm5974*, !dbg !5345
  store %struct.bcm5974* %1, %struct.bcm5974** %dev, align 8, !dbg !5343
  call void @llvm.dbg.declare(metadata i32* %error, metadata !5346, metadata !DIExpression()), !dbg !5347
  %2 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5348
  %intf = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %2, i32 0, i32 2, !dbg !5349
  %3 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5349
  %call1 = call i32 @usb_autopm_get_interface(%struct.usb_interface* %3) #9, !dbg !5350
  store i32 %call1, i32* %error, align 4, !dbg !5351
  %4 = load i32, i32* %error, align 4, !dbg !5352
  %tobool = icmp ne i32 %4, 0, !dbg !5352
  br i1 %tobool, label %if.then, label %if.end, !dbg !5354

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %error, align 4, !dbg !5355
  store i32 %5, i32* %retval, align 4, !dbg !5356
  br label %return, !dbg !5356

if.end:                                           ; preds = %entry
  %6 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5357
  %pm_mutex = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %6, i32 0, i32 5, !dbg !5358
  call void @mutex_lock(%struct.mutex* %pm_mutex) #9, !dbg !5359
  %7 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5360
  %call2 = call i32 @bcm5974_start_traffic(%struct.bcm5974* %7) #9, !dbg !5361
  store i32 %call2, i32* %error, align 4, !dbg !5362
  %8 = load i32, i32* %error, align 4, !dbg !5363
  %tobool3 = icmp ne i32 %8, 0, !dbg !5363
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5365

if.then4:                                         ; preds = %if.end
  %9 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5366
  %opened = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %9, i32 0, i32 6, !dbg !5367
  store i32 1, i32* %opened, align 8, !dbg !5368
  br label %if.end5, !dbg !5366

if.end5:                                          ; preds = %if.then4, %if.end
  %10 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5369
  %pm_mutex6 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %10, i32 0, i32 5, !dbg !5370
  call void @mutex_unlock(%struct.mutex* %pm_mutex6) #9, !dbg !5371
  %11 = load i32, i32* %error, align 4, !dbg !5372
  %tobool7 = icmp ne i32 %11, 0, !dbg !5372
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !5374

if.then8:                                         ; preds = %if.end5
  %12 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5375
  %intf9 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %12, i32 0, i32 2, !dbg !5376
  %13 = load %struct.usb_interface*, %struct.usb_interface** %intf9, align 8, !dbg !5376
  call void @usb_autopm_put_interface(%struct.usb_interface* %13) #9, !dbg !5377
  br label %if.end10, !dbg !5377

if.end10:                                         ; preds = %if.then8, %if.end5
  %14 = load i32, i32* %error, align 4, !dbg !5378
  store i32 %14, i32* %retval, align 4, !dbg !5379
  br label %return, !dbg !5379

return:                                           ; preds = %if.end10, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !5380
  ret i32 %15, !dbg !5380
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bcm5974_close(%struct.input_dev* %input) #2 !dbg !5381 {
entry:
  %input.addr = alloca %struct.input_dev*, align 8
  %dev = alloca %struct.bcm5974*, align 8
  store %struct.input_dev* %input, %struct.input_dev** %input.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input.addr, metadata !5382, metadata !DIExpression()), !dbg !5383
  call void @llvm.dbg.declare(metadata %struct.bcm5974** %dev, metadata !5384, metadata !DIExpression()), !dbg !5385
  %0 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !5386
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #9, !dbg !5387
  %1 = bitcast i8* %call to %struct.bcm5974*, !dbg !5387
  store %struct.bcm5974* %1, %struct.bcm5974** %dev, align 8, !dbg !5385
  %2 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5388
  %pm_mutex = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %2, i32 0, i32 5, !dbg !5389
  call void @mutex_lock(%struct.mutex* %pm_mutex) #9, !dbg !5390
  %3 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5391
  call void @bcm5974_pause_traffic(%struct.bcm5974* %3) #9, !dbg !5392
  %4 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5393
  %opened = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %4, i32 0, i32 6, !dbg !5394
  store i32 0, i32* %opened, align 8, !dbg !5395
  %5 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5396
  %pm_mutex1 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %5, i32 0, i32 5, !dbg !5397
  call void @mutex_unlock(%struct.mutex* %pm_mutex1) #9, !dbg !5398
  %6 = load %struct.bcm5974*, %struct.bcm5974** %dev, align 8, !dbg !5399
  %intf = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %6, i32 0, i32 2, !dbg !5400
  %7 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !5400
  call void @usb_autopm_put_interface(%struct.usb_interface* %7) #9, !dbg !5401
  ret void, !dbg !5402
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @setup_events_to_report(%struct.input_dev* %input_dev, %struct.bcm5974_config* %cfg) #2 !dbg !5403 {
entry:
  %input_dev.addr = alloca %struct.input_dev*, align 8
  %cfg.addr = alloca %struct.bcm5974_config*, align 8
  store %struct.input_dev* %input_dev, %struct.input_dev** %input_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input_dev.addr, metadata !5406, metadata !DIExpression()), !dbg !5407
  store %struct.bcm5974_config* %cfg, %struct.bcm5974_config** %cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm5974_config** %cfg.addr, metadata !5408, metadata !DIExpression()), !dbg !5409
  %0 = load %struct.input_dev*, %struct.input_dev** %input_dev.addr, align 8, !dbg !5410
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 5, !dbg !5411
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !5410
  call void @__set_bit(i64 3, i64* %arraydecay) #9, !dbg !5412
  %1 = load %struct.input_dev*, %struct.input_dev** %input_dev.addr, align 8, !dbg !5413
  call void @input_set_abs_params(%struct.input_dev* %1, i32 24, i32 0, i32 256, i32 5, i32 0) #9, !dbg !5414
  %2 = load %struct.input_dev*, %struct.input_dev** %input_dev.addr, align 8, !dbg !5415
  call void @input_set_abs_params(%struct.input_dev* %2, i32 28, i32 0, i32 16, i32 0, i32 0) #9, !dbg !5416
  %3 = load %struct.input_dev*, %struct.input_dev** %input_dev.addr, align 8, !dbg !5417
  %4 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg.addr, align 8, !dbg !5418
  %w = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %4, i32 0, i32 20, !dbg !5419
  call void @set_abs(%struct.input_dev* %3, i32 48, %struct.bcm5974_param* %w) #9, !dbg !5420
  %5 = load %struct.input_dev*, %struct.input_dev** %input_dev.addr, align 8, !dbg !5421
  %6 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg.addr, align 8, !dbg !5422
  %w1 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %6, i32 0, i32 20, !dbg !5423
  call void @set_abs(%struct.input_dev* %5, i32 49, %struct.bcm5974_param* %w1) #9, !dbg !5424
  %7 = load %struct.input_dev*, %struct.input_dev** %input_dev.addr, align 8, !dbg !5425
  %8 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg.addr, align 8, !dbg !5426
  %w2 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %8, i32 0, i32 20, !dbg !5427
  call void @set_abs(%struct.input_dev* %7, i32 50, %struct.bcm5974_param* %w2) #9, !dbg !5428
  %9 = load %struct.input_dev*, %struct.input_dev** %input_dev.addr, align 8, !dbg !5429
  %10 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg.addr, align 8, !dbg !5430
  %w3 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %10, i32 0, i32 20, !dbg !5431
  call void @set_abs(%struct.input_dev* %9, i32 51, %struct.bcm5974_param* %w3) #9, !dbg !5432
  %11 = load %struct.input_dev*, %struct.input_dev** %input_dev.addr, align 8, !dbg !5433
  %12 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg.addr, align 8, !dbg !5434
  %o = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %12, i32 0, i32 23, !dbg !5435
  call void @set_abs(%struct.input_dev* %11, i32 52, %struct.bcm5974_param* %o) #9, !dbg !5436
  %13 = load %struct.input_dev*, %struct.input_dev** %input_dev.addr, align 8, !dbg !5437
  %14 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg.addr, align 8, !dbg !5438
  %x = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %14, i32 0, i32 21, !dbg !5439
  call void @set_abs(%struct.input_dev* %13, i32 53, %struct.bcm5974_param* %x) #9, !dbg !5440
  %15 = load %struct.input_dev*, %struct.input_dev** %input_dev.addr, align 8, !dbg !5441
  %16 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg.addr, align 8, !dbg !5442
  %y = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %16, i32 0, i32 22, !dbg !5443
  call void @set_abs(%struct.input_dev* %15, i32 54, %struct.bcm5974_param* %y) #9, !dbg !5444
  %17 = load %struct.input_dev*, %struct.input_dev** %input_dev.addr, align 8, !dbg !5445
  %evbit4 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 5, !dbg !5446
  %arraydecay5 = getelementptr inbounds [1 x i64], [1 x i64]* %evbit4, i64 0, i64 0, !dbg !5445
  call void @__set_bit(i64 1, i64* %arraydecay5) #9, !dbg !5447
  %18 = load %struct.input_dev*, %struct.input_dev** %input_dev.addr, align 8, !dbg !5448
  %keybit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %18, i32 0, i32 6, !dbg !5449
  %arraydecay6 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit, i64 0, i64 0, !dbg !5448
  call void @__set_bit(i64 272, i64* %arraydecay6) #9, !dbg !5450
  %19 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg.addr, align 8, !dbg !5451
  %caps = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %19, i32 0, i32 3, !dbg !5453
  %20 = load i32, i32* %caps, align 4, !dbg !5453
  %and = and i32 %20, 1, !dbg !5454
  %tobool = icmp ne i32 %and, 0, !dbg !5454
  br i1 %tobool, label %if.then, label %if.end, !dbg !5455

if.then:                                          ; preds = %entry
  %21 = load %struct.input_dev*, %struct.input_dev** %input_dev.addr, align 8, !dbg !5456
  %propbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 4, !dbg !5457
  %arraydecay7 = getelementptr inbounds [1 x i64], [1 x i64]* %propbit, i64 0, i64 0, !dbg !5456
  call void @__set_bit(i64 2, i64* %arraydecay7) #9, !dbg !5458
  br label %if.end, !dbg !5458

if.end:                                           ; preds = %if.then, %entry
  %22 = load %struct.input_dev*, %struct.input_dev** %input_dev.addr, align 8, !dbg !5459
  %call = call i32 @input_mt_init_slots(%struct.input_dev* %22, i32 16, i32 13) #9, !dbg !5460
  ret void, !dbg !5461
}

; Function Attrs: noredzone
declare dso_local i32 @input_register_device(%struct.input_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !5462 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5465, metadata !DIExpression()), !dbg !5466
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5467, metadata !DIExpression()), !dbg !5468
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5469
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5470
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5471
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !5472
  ret void, !dbg !5473
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @usb_free_coherent(%struct.usb_device*, i64, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @input_free_device(%struct.input_dev*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !5474 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5478, metadata !DIExpression()), !dbg !5483
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5485, metadata !DIExpression()), !dbg !5486
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5487, metadata !DIExpression()), !dbg !5488
  %0 = load i64, i64* %size.addr, align 8, !dbg !5489
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5491
  br i1 %1, label %if.then, label %if.end447, !dbg !5492

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5493
  %tobool = icmp ne i64 %2, 0, !dbg !5493
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5496

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5497
  br label %return, !dbg !5497

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5498
  %cmp = icmp ult i64 %3, 4096, !dbg !5500
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5501

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5502
  br label %return, !dbg !5502

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub = sub i64 %4, 1, !dbg !5503
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5503
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5503

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub4 = sub i64 %6, 1, !dbg !5503
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5503
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5503

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub6 = sub i64 %8, 1, !dbg !5503
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5503
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5503

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5503

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub9 = sub i64 %9, 1, !dbg !5503
  %and = and i64 %sub9, -9223372036854775808, !dbg !5503
  %tobool10 = icmp ne i64 %and, 0, !dbg !5503
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5503

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5503

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub13 = sub i64 %10, 1, !dbg !5503
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5503
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5503
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5503

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5503

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub18 = sub i64 %11, 1, !dbg !5503
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5503
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5503
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5503

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5503

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub23 = sub i64 %12, 1, !dbg !5503
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5503
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5503
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5503

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5503

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub28 = sub i64 %13, 1, !dbg !5503
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5503
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5503
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5503

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5503

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub33 = sub i64 %14, 1, !dbg !5503
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5503
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5503
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5503

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5503

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub38 = sub i64 %15, 1, !dbg !5503
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5503
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5503
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5503

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5503

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub43 = sub i64 %16, 1, !dbg !5503
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5503
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5503
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5503

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5503

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub48 = sub i64 %17, 1, !dbg !5503
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5503
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5503
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5503

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5503

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub53 = sub i64 %18, 1, !dbg !5503
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5503
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5503
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5503

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5503

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub58 = sub i64 %19, 1, !dbg !5503
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5503
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5503
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5503

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5503

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub63 = sub i64 %20, 1, !dbg !5503
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5503
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5503
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5503

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5503

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub68 = sub i64 %21, 1, !dbg !5503
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5503
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5503
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5503

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5503

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub73 = sub i64 %22, 1, !dbg !5503
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5503
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5503
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5503

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5503

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub78 = sub i64 %23, 1, !dbg !5503
  %and79 = and i64 %sub78, 562949953421312, !dbg !5503
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5503
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5503

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5503

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub83 = sub i64 %24, 1, !dbg !5503
  %and84 = and i64 %sub83, 281474976710656, !dbg !5503
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5503
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5503

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5503

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub88 = sub i64 %25, 1, !dbg !5503
  %and89 = and i64 %sub88, 140737488355328, !dbg !5503
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5503
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5503

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5503

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub93 = sub i64 %26, 1, !dbg !5503
  %and94 = and i64 %sub93, 70368744177664, !dbg !5503
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5503
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5503

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5503

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub98 = sub i64 %27, 1, !dbg !5503
  %and99 = and i64 %sub98, 35184372088832, !dbg !5503
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5503
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5503

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5503

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub103 = sub i64 %28, 1, !dbg !5503
  %and104 = and i64 %sub103, 17592186044416, !dbg !5503
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5503
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5503

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5503

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub108 = sub i64 %29, 1, !dbg !5503
  %and109 = and i64 %sub108, 8796093022208, !dbg !5503
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5503
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5503

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5503

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub113 = sub i64 %30, 1, !dbg !5503
  %and114 = and i64 %sub113, 4398046511104, !dbg !5503
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5503
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5503

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5503

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub118 = sub i64 %31, 1, !dbg !5503
  %and119 = and i64 %sub118, 2199023255552, !dbg !5503
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5503
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5503

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5503

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub123 = sub i64 %32, 1, !dbg !5503
  %and124 = and i64 %sub123, 1099511627776, !dbg !5503
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5503
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5503

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5503

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub128 = sub i64 %33, 1, !dbg !5503
  %and129 = and i64 %sub128, 549755813888, !dbg !5503
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5503
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5503

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5503

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub133 = sub i64 %34, 1, !dbg !5503
  %and134 = and i64 %sub133, 274877906944, !dbg !5503
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5503
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5503

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5503

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub138 = sub i64 %35, 1, !dbg !5503
  %and139 = and i64 %sub138, 137438953472, !dbg !5503
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5503
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5503

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5503

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub143 = sub i64 %36, 1, !dbg !5503
  %and144 = and i64 %sub143, 68719476736, !dbg !5503
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5503
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5503

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5503

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub148 = sub i64 %37, 1, !dbg !5503
  %and149 = and i64 %sub148, 34359738368, !dbg !5503
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5503
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5503

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5503

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub153 = sub i64 %38, 1, !dbg !5503
  %and154 = and i64 %sub153, 17179869184, !dbg !5503
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5503
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5503

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5503

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub158 = sub i64 %39, 1, !dbg !5503
  %and159 = and i64 %sub158, 8589934592, !dbg !5503
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5503
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5503

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5503

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub163 = sub i64 %40, 1, !dbg !5503
  %and164 = and i64 %sub163, 4294967296, !dbg !5503
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5503
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5503

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5503

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub168 = sub i64 %41, 1, !dbg !5503
  %and169 = and i64 %sub168, 2147483648, !dbg !5503
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5503
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5503

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5503

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub173 = sub i64 %42, 1, !dbg !5503
  %and174 = and i64 %sub173, 1073741824, !dbg !5503
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5503
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5503

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5503

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub178 = sub i64 %43, 1, !dbg !5503
  %and179 = and i64 %sub178, 536870912, !dbg !5503
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5503
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5503

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5503

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub183 = sub i64 %44, 1, !dbg !5503
  %and184 = and i64 %sub183, 268435456, !dbg !5503
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5503
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5503

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5503

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub188 = sub i64 %45, 1, !dbg !5503
  %and189 = and i64 %sub188, 134217728, !dbg !5503
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5503
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5503

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5503

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub193 = sub i64 %46, 1, !dbg !5503
  %and194 = and i64 %sub193, 67108864, !dbg !5503
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5503
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5503

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5503

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub198 = sub i64 %47, 1, !dbg !5503
  %and199 = and i64 %sub198, 33554432, !dbg !5503
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5503
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5503

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5503

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub203 = sub i64 %48, 1, !dbg !5503
  %and204 = and i64 %sub203, 16777216, !dbg !5503
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5503
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5503

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5503

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub208 = sub i64 %49, 1, !dbg !5503
  %and209 = and i64 %sub208, 8388608, !dbg !5503
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5503
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5503

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5503

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub213 = sub i64 %50, 1, !dbg !5503
  %and214 = and i64 %sub213, 4194304, !dbg !5503
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5503
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5503

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5503

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub218 = sub i64 %51, 1, !dbg !5503
  %and219 = and i64 %sub218, 2097152, !dbg !5503
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5503
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5503

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5503

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub223 = sub i64 %52, 1, !dbg !5503
  %and224 = and i64 %sub223, 1048576, !dbg !5503
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5503
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5503

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5503

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub228 = sub i64 %53, 1, !dbg !5503
  %and229 = and i64 %sub228, 524288, !dbg !5503
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5503
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5503

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5503

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub233 = sub i64 %54, 1, !dbg !5503
  %and234 = and i64 %sub233, 262144, !dbg !5503
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5503
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5503

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5503

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub238 = sub i64 %55, 1, !dbg !5503
  %and239 = and i64 %sub238, 131072, !dbg !5503
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5503
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5503

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5503

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub243 = sub i64 %56, 1, !dbg !5503
  %and244 = and i64 %sub243, 65536, !dbg !5503
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5503
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5503

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5503

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub248 = sub i64 %57, 1, !dbg !5503
  %and249 = and i64 %sub248, 32768, !dbg !5503
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5503
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5503

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5503

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub253 = sub i64 %58, 1, !dbg !5503
  %and254 = and i64 %sub253, 16384, !dbg !5503
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5503
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5503

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5503

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub258 = sub i64 %59, 1, !dbg !5503
  %and259 = and i64 %sub258, 8192, !dbg !5503
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5503
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5503

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5503

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub263 = sub i64 %60, 1, !dbg !5503
  %and264 = and i64 %sub263, 4096, !dbg !5503
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5503
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5503

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5503

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub268 = sub i64 %61, 1, !dbg !5503
  %and269 = and i64 %sub268, 2048, !dbg !5503
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5503
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5503

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5503

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub273 = sub i64 %62, 1, !dbg !5503
  %and274 = and i64 %sub273, 1024, !dbg !5503
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5503
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5503

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5503

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub278 = sub i64 %63, 1, !dbg !5503
  %and279 = and i64 %sub278, 512, !dbg !5503
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5503
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5503

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5503

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub283 = sub i64 %64, 1, !dbg !5503
  %and284 = and i64 %sub283, 256, !dbg !5503
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5503
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5503

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5503

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub288 = sub i64 %65, 1, !dbg !5503
  %and289 = and i64 %sub288, 128, !dbg !5503
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5503
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5503

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5503

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub293 = sub i64 %66, 1, !dbg !5503
  %and294 = and i64 %sub293, 64, !dbg !5503
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5503
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5503

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5503

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub298 = sub i64 %67, 1, !dbg !5503
  %and299 = and i64 %sub298, 32, !dbg !5503
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5503
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5503

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5503

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub303 = sub i64 %68, 1, !dbg !5503
  %and304 = and i64 %sub303, 16, !dbg !5503
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5503
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5503

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5503

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub308 = sub i64 %69, 1, !dbg !5503
  %and309 = and i64 %sub308, 8, !dbg !5503
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5503
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5503

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5503

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub313 = sub i64 %70, 1, !dbg !5503
  %and314 = and i64 %sub313, 4, !dbg !5503
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5503
  %71 = zext i1 %tobool315 to i64, !dbg !5503
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5503
  br label %cond.end, !dbg !5503

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5503
  br label %cond.end317, !dbg !5503

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5503
  br label %cond.end319, !dbg !5503

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5503
  br label %cond.end321, !dbg !5503

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5503
  br label %cond.end323, !dbg !5503

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5503
  br label %cond.end325, !dbg !5503

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5503
  br label %cond.end327, !dbg !5503

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5503
  br label %cond.end329, !dbg !5503

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5503
  br label %cond.end331, !dbg !5503

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5503
  br label %cond.end333, !dbg !5503

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5503
  br label %cond.end335, !dbg !5503

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5503
  br label %cond.end337, !dbg !5503

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5503
  br label %cond.end339, !dbg !5503

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5503
  br label %cond.end341, !dbg !5503

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5503
  br label %cond.end343, !dbg !5503

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5503
  br label %cond.end345, !dbg !5503

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5503
  br label %cond.end347, !dbg !5503

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5503
  br label %cond.end349, !dbg !5503

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5503
  br label %cond.end351, !dbg !5503

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5503
  br label %cond.end353, !dbg !5503

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5503
  br label %cond.end355, !dbg !5503

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5503
  br label %cond.end357, !dbg !5503

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5503
  br label %cond.end359, !dbg !5503

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5503
  br label %cond.end361, !dbg !5503

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5503
  br label %cond.end363, !dbg !5503

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5503
  br label %cond.end365, !dbg !5503

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5503
  br label %cond.end367, !dbg !5503

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5503
  br label %cond.end369, !dbg !5503

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5503
  br label %cond.end371, !dbg !5503

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5503
  br label %cond.end373, !dbg !5503

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5503
  br label %cond.end375, !dbg !5503

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5503
  br label %cond.end377, !dbg !5503

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5503
  br label %cond.end379, !dbg !5503

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5503
  br label %cond.end381, !dbg !5503

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5503
  br label %cond.end383, !dbg !5503

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5503
  br label %cond.end385, !dbg !5503

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5503
  br label %cond.end387, !dbg !5503

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5503
  br label %cond.end389, !dbg !5503

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5503
  br label %cond.end391, !dbg !5503

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5503
  br label %cond.end393, !dbg !5503

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5503
  br label %cond.end395, !dbg !5503

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5503
  br label %cond.end397, !dbg !5503

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5503
  br label %cond.end399, !dbg !5503

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5503
  br label %cond.end401, !dbg !5503

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5503
  br label %cond.end403, !dbg !5503

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5503
  br label %cond.end405, !dbg !5503

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5503
  br label %cond.end407, !dbg !5503

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5503
  br label %cond.end409, !dbg !5503

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5503
  br label %cond.end411, !dbg !5503

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5503
  br label %cond.end413, !dbg !5503

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5503
  br label %cond.end415, !dbg !5503

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5503
  br label %cond.end417, !dbg !5503

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5503
  br label %cond.end419, !dbg !5503

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5503
  br label %cond.end421, !dbg !5503

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5503
  br label %cond.end423, !dbg !5503

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5503
  br label %cond.end425, !dbg !5503

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5503
  br label %cond.end427, !dbg !5503

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5503
  br label %cond.end429, !dbg !5503

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5503
  br label %cond.end431, !dbg !5503

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5503
  br label %cond.end433, !dbg !5503

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5503
  br label %cond.end435, !dbg !5503

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5503
  br label %cond.end437, !dbg !5503

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5503
  br label %cond.end440, !dbg !5503

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5503

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5503
  br label %cond.end444, !dbg !5503

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5503
  %sub443 = sub i64 %72, 1, !dbg !5503
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5503
  br label %cond.end444, !dbg !5503

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5503
  %sub446 = sub i32 %cond445, 12, !dbg !5504
  %add = add i32 %sub446, 1, !dbg !5505
  store i32 %add, i32* %retval, align 4, !dbg !5506
  br label %return, !dbg !5506

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5507
  %dec = add i64 %73, -1, !dbg !5507
  store i64 %dec, i64* %size.addr, align 8, !dbg !5507
  %74 = load i64, i64* %size.addr, align 8, !dbg !5508
  %shr = lshr i64 %74, 12, !dbg !5508
  store i64 %shr, i64* %size.addr, align 8, !dbg !5508
  %75 = load i64, i64* %size.addr, align 8, !dbg !5509
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5486
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5510
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5511
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5510, !srcloc !5512
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5510
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5513
  %add.i = add i32 %79, 1, !dbg !5514
  store i32 %add.i, i32* %retval, align 4, !dbg !5515
  br label %return, !dbg !5515

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5516
  ret i32 %80, !dbg !5516
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !5517 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5478, metadata !DIExpression()), !dbg !5521
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5485, metadata !DIExpression()), !dbg !5523
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5524, metadata !DIExpression()), !dbg !5525
  %0 = load i64, i64* %n.addr, align 8, !dbg !5526
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5523
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5527
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5528
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5527, !srcloc !5512
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5527
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5529
  %add.i = add i32 %4, 1, !dbg !5530
  %sub = sub i32 %add.i, 1, !dbg !5531
  ret i32 %sub, !dbg !5532
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5533 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5536, metadata !DIExpression()), !dbg !5537
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5538, metadata !DIExpression()), !dbg !5539
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5540, metadata !DIExpression()), !dbg !5541
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5542, metadata !DIExpression()), !dbg !5543
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5544
  ret i8* %0, !dbg !5545
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @report_bt_state(%struct.bcm5974* %dev, i32 %size) #2 !dbg !5546 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.bcm5974*, align 8
  %size.addr = alloca i32, align 4
  store %struct.bcm5974* %dev, %struct.bcm5974** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm5974** %dev.addr, metadata !5549, metadata !DIExpression()), !dbg !5550
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5551, metadata !DIExpression()), !dbg !5552
  %0 = load i32, i32* %size.addr, align 4, !dbg !5553
  %conv = sext i32 %0 to i64, !dbg !5553
  %cmp = icmp ne i64 %conv, 4, !dbg !5555
  br i1 %cmp, label %if.then, label %if.end, !dbg !5556

if.then:                                          ; preds = %entry
  store i32 -5, i32* %retval, align 4, !dbg !5557
  br label %return, !dbg !5557

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @debug, align 4, !dbg !5558
  %cmp2 = icmp sge i32 %1, 7, !dbg !5558
  br i1 %cmp2, label %if.then4, label %if.end12, !dbg !5561

if.then4:                                         ; preds = %if.end
  %2 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5558
  %bt_data = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %2, i32 0, i32 8, !dbg !5558
  %3 = load %struct.bt_data*, %struct.bt_data** %bt_data, align 8, !dbg !5558
  %unknown1 = getelementptr inbounds %struct.bt_data, %struct.bt_data* %3, i32 0, i32 0, !dbg !5558
  %4 = load i8, i8* %unknown1, align 1, !dbg !5558
  %conv5 = zext i8 %4 to i32, !dbg !5558
  %5 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5558
  %bt_data6 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %5, i32 0, i32 8, !dbg !5558
  %6 = load %struct.bt_data*, %struct.bt_data** %bt_data6, align 8, !dbg !5558
  %button = getelementptr inbounds %struct.bt_data, %struct.bt_data* %6, i32 0, i32 1, !dbg !5558
  %7 = load i8, i8* %button, align 1, !dbg !5558
  %conv7 = zext i8 %7 to i32, !dbg !5558
  %8 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5558
  %bt_data8 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %8, i32 0, i32 8, !dbg !5558
  %9 = load %struct.bt_data*, %struct.bt_data** %bt_data8, align 8, !dbg !5558
  %rel_x = getelementptr inbounds %struct.bt_data, %struct.bt_data* %9, i32 0, i32 2, !dbg !5558
  %10 = load i8, i8* %rel_x, align 1, !dbg !5558
  %conv9 = zext i8 %10 to i32, !dbg !5558
  %11 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5558
  %bt_data10 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %11, i32 0, i32 8, !dbg !5558
  %12 = load %struct.bt_data*, %struct.bt_data** %bt_data10, align 8, !dbg !5558
  %rel_y = getelementptr inbounds %struct.bt_data, %struct.bt_data* %12, i32 0, i32 3, !dbg !5558
  %13 = load i8, i8* %rel_y, align 1, !dbg !5558
  %conv11 = zext i8 %13 to i32, !dbg !5558
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %conv5, i32 %conv7, i32 %conv9, i32 %conv11) #10, !dbg !5558
  br label %if.end12, !dbg !5558

if.end12:                                         ; preds = %if.then4, %if.end
  %14 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5562
  %input = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %14, i32 0, i32 3, !dbg !5563
  %15 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5563
  %16 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5564
  %bt_data13 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %16, i32 0, i32 8, !dbg !5565
  %17 = load %struct.bt_data*, %struct.bt_data** %bt_data13, align 8, !dbg !5565
  %button14 = getelementptr inbounds %struct.bt_data, %struct.bt_data* %17, i32 0, i32 1, !dbg !5566
  %18 = load i8, i8* %button14, align 1, !dbg !5566
  %conv15 = zext i8 %18 to i32, !dbg !5564
  call void @input_report_key(%struct.input_dev* %15, i32 272, i32 %conv15) #9, !dbg !5567
  %19 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5568
  %input16 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %19, i32 0, i32 3, !dbg !5569
  %20 = load %struct.input_dev*, %struct.input_dev** %input16, align 8, !dbg !5569
  call void @input_sync(%struct.input_dev* %20) #9, !dbg !5570
  store i32 0, i32* %retval, align 4, !dbg !5571
  br label %return, !dbg !5571

return:                                           ; preds = %if.end12, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !5572
  ret i32 %21, !dbg !5572
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_key(%struct.input_dev* %dev, i32 %code, i32 %value) #2 !dbg !5573 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5576, metadata !DIExpression()), !dbg !5577
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !5578, metadata !DIExpression()), !dbg !5579
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5580, metadata !DIExpression()), !dbg !5581
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5582
  %1 = load i32, i32* %code.addr, align 4, !dbg !5583
  %2 = load i32, i32* %value.addr, align 4, !dbg !5584
  %tobool = icmp ne i32 %2, 0, !dbg !5585
  %lnot = xor i1 %tobool, true, !dbg !5585
  %lnot1 = xor i1 %lnot, true, !dbg !5586
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5586
  call void @input_event(%struct.input_dev* %0, i32 1, i32 %1, i32 %lnot.ext) #9, !dbg !5587
  ret void, !dbg !5588
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_sync(%struct.input_dev* %dev) #2 !dbg !5589 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5590, metadata !DIExpression()), !dbg !5591
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5592
  call void @input_event(%struct.input_dev* %0, i32 0, i32 0, i32 0) #9, !dbg !5593
  ret void, !dbg !5594
}

; Function Attrs: noredzone
declare dso_local void @input_event(%struct.input_dev*, i32, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @report_tp_state(%struct.bcm5974* %dev, i32 %size) #2 !dbg !5595 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.bcm5974*, align 8
  %size.addr = alloca i32, align 4
  %c = alloca %struct.bcm5974_config*, align 8
  %f = alloca %struct.tp_finger*, align 8
  %input = alloca %struct.input_dev*, align 8
  %raw_n = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %ibt = alloca i32, align 4
  store %struct.bcm5974* %dev, %struct.bcm5974** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm5974** %dev.addr, metadata !5596, metadata !DIExpression()), !dbg !5597
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5598, metadata !DIExpression()), !dbg !5599
  call void @llvm.dbg.declare(metadata %struct.bcm5974_config** %c, metadata !5600, metadata !DIExpression()), !dbg !5601
  %0 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5602
  %cfg = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %0, i32 0, i32 4, !dbg !5603
  store %struct.bcm5974_config* %cfg, %struct.bcm5974_config** %c, align 8, !dbg !5601
  call void @llvm.dbg.declare(metadata %struct.tp_finger** %f, metadata !5604, metadata !DIExpression()), !dbg !5605
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input, metadata !5606, metadata !DIExpression()), !dbg !5607
  %1 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5608
  %input1 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %1, i32 0, i32 3, !dbg !5609
  %2 = load %struct.input_dev*, %struct.input_dev** %input1, align 8, !dbg !5609
  store %struct.input_dev* %2, %struct.input_dev** %input, align 8, !dbg !5607
  call void @llvm.dbg.declare(metadata i32* %raw_n, metadata !5610, metadata !DIExpression()), !dbg !5611
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5612, metadata !DIExpression()), !dbg !5613
  call void @llvm.dbg.declare(metadata i32* %n, metadata !5614, metadata !DIExpression()), !dbg !5615
  store i32 0, i32* %n, align 4, !dbg !5615
  %3 = load i32, i32* %size.addr, align 4, !dbg !5616
  %4 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !5618
  %tp_header = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %4, i32 0, i32 8, !dbg !5619
  %5 = load i32, i32* %tp_header, align 4, !dbg !5619
  %cmp = icmp slt i32 %3, %5, !dbg !5620
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5621

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %size.addr, align 4, !dbg !5622
  %7 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !5623
  %tp_header2 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %7, i32 0, i32 8, !dbg !5624
  %8 = load i32, i32* %tp_header2, align 4, !dbg !5624
  %sub = sub i32 %6, %8, !dbg !5625
  %9 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !5626
  %tp_fsize = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %9, i32 0, i32 11, !dbg !5627
  %10 = load i32, i32* %tp_fsize, align 4, !dbg !5627
  %rem = srem i32 %sub, %10, !dbg !5628
  %cmp3 = icmp ne i32 %rem, 0, !dbg !5629
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5630

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -5, i32* %retval, align 4, !dbg !5631
  br label %return, !dbg !5631

if.end:                                           ; preds = %lor.lhs.false
  %11 = load i32, i32* %size.addr, align 4, !dbg !5632
  %12 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !5633
  %tp_header4 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %12, i32 0, i32 8, !dbg !5634
  %13 = load i32, i32* %tp_header4, align 4, !dbg !5634
  %sub5 = sub i32 %11, %13, !dbg !5635
  %14 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !5636
  %tp_fsize6 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %14, i32 0, i32 11, !dbg !5637
  %15 = load i32, i32* %tp_fsize6, align 4, !dbg !5637
  %div = sdiv i32 %sub5, %15, !dbg !5638
  store i32 %div, i32* %raw_n, align 4, !dbg !5639
  store i32 0, i32* %i, align 4, !dbg !5640
  br label %for.cond, !dbg !5642

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32, i32* %i, align 4, !dbg !5643
  %17 = load i32, i32* %raw_n, align 4, !dbg !5645
  %cmp7 = icmp slt i32 %16, %17, !dbg !5646
  br i1 %cmp7, label %for.body, label %for.end, !dbg !5647

for.body:                                         ; preds = %for.cond
  %18 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5648
  %19 = load i32, i32* %i, align 4, !dbg !5650
  %call = call %struct.tp_finger* @get_tp_finger(%struct.bcm5974* %18, i32 %19) #9, !dbg !5651
  store %struct.tp_finger* %call, %struct.tp_finger** %f, align 8, !dbg !5652
  %20 = load %struct.tp_finger*, %struct.tp_finger** %f, align 8, !dbg !5653
  %touch_major = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %20, i32 0, i32 8, !dbg !5655
  %21 = load i16, i16* %touch_major, align 2, !dbg !5655
  %call8 = call i32 @raw2int(i16 zeroext %21) #9, !dbg !5656
  %cmp9 = icmp eq i32 %call8, 0, !dbg !5657
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5658

if.then10:                                        ; preds = %for.body
  br label %for.inc, !dbg !5659

if.end11:                                         ; preds = %for.body
  %22 = load %struct.tp_finger*, %struct.tp_finger** %f, align 8, !dbg !5660
  %abs_x = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %22, i32 0, i32 1, !dbg !5661
  %23 = load i16, i16* %abs_x, align 2, !dbg !5661
  %call12 = call i32 @raw2int(i16 zeroext %23) #9, !dbg !5662
  %conv = trunc i32 %call12 to i16, !dbg !5662
  %24 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5663
  %pos = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %24, i32 0, i32 12, !dbg !5664
  %25 = load i32, i32* %n, align 4, !dbg !5665
  %idxprom = sext i32 %25 to i64, !dbg !5663
  %arrayidx = getelementptr [16 x %struct.input_mt_pos], [16 x %struct.input_mt_pos]* %pos, i64 0, i64 %idxprom, !dbg !5663
  %x = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %arrayidx, i32 0, i32 0, !dbg !5666
  store i16 %conv, i16* %x, align 4, !dbg !5667
  %26 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !5668
  %y = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %26, i32 0, i32 22, !dbg !5669
  %min = getelementptr inbounds %struct.bcm5974_param, %struct.bcm5974_param* %y, i32 0, i32 1, !dbg !5670
  %27 = load i32, i32* %min, align 4, !dbg !5670
  %28 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !5671
  %y13 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %28, i32 0, i32 22, !dbg !5672
  %max = getelementptr inbounds %struct.bcm5974_param, %struct.bcm5974_param* %y13, i32 0, i32 2, !dbg !5673
  %29 = load i32, i32* %max, align 4, !dbg !5673
  %add = add i32 %27, %29, !dbg !5674
  %30 = load %struct.tp_finger*, %struct.tp_finger** %f, align 8, !dbg !5675
  %abs_y = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %30, i32 0, i32 2, !dbg !5676
  %31 = load i16, i16* %abs_y, align 2, !dbg !5676
  %call14 = call i32 @raw2int(i16 zeroext %31) #9, !dbg !5677
  %sub15 = sub i32 %add, %call14, !dbg !5678
  %conv16 = trunc i32 %sub15 to i16, !dbg !5668
  %32 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5679
  %pos17 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %32, i32 0, i32 12, !dbg !5680
  %33 = load i32, i32* %n, align 4, !dbg !5681
  %idxprom18 = sext i32 %33 to i64, !dbg !5679
  %arrayidx19 = getelementptr [16 x %struct.input_mt_pos], [16 x %struct.input_mt_pos]* %pos17, i64 0, i64 %idxprom18, !dbg !5679
  %y20 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %arrayidx19, i32 0, i32 1, !dbg !5682
  store i16 %conv16, i16* %y20, align 2, !dbg !5683
  %34 = load %struct.tp_finger*, %struct.tp_finger** %f, align 8, !dbg !5684
  %35 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5685
  %index = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %35, i32 0, i32 11, !dbg !5686
  %36 = load i32, i32* %n, align 4, !dbg !5687
  %inc = add i32 %36, 1, !dbg !5687
  store i32 %inc, i32* %n, align 4, !dbg !5687
  %idxprom21 = sext i32 %36 to i64, !dbg !5685
  %arrayidx22 = getelementptr [16 x %struct.tp_finger*], [16 x %struct.tp_finger*]* %index, i64 0, i64 %idxprom21, !dbg !5685
  store %struct.tp_finger* %34, %struct.tp_finger** %arrayidx22, align 8, !dbg !5688
  br label %for.inc, !dbg !5689

for.inc:                                          ; preds = %if.end11, %if.then10
  %37 = load i32, i32* %i, align 4, !dbg !5690
  %inc23 = add i32 %37, 1, !dbg !5690
  store i32 %inc23, i32* %i, align 4, !dbg !5690
  br label %for.cond, !dbg !5691, !llvm.loop !5692

for.end:                                          ; preds = %for.cond
  %38 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5694
  %39 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5695
  %slots = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %39, i32 0, i32 13, !dbg !5696
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %slots, i64 0, i64 0, !dbg !5695
  %40 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5697
  %pos24 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %40, i32 0, i32 12, !dbg !5698
  %arraydecay25 = getelementptr inbounds [16 x %struct.input_mt_pos], [16 x %struct.input_mt_pos]* %pos24, i64 0, i64 0, !dbg !5697
  %41 = load i32, i32* %n, align 4, !dbg !5699
  %call26 = call i32 @input_mt_assign_slots(%struct.input_dev* %38, i32* %arraydecay, %struct.input_mt_pos* %arraydecay25, i32 %41, i32 0) #9, !dbg !5700
  store i32 0, i32* %i, align 4, !dbg !5701
  br label %for.cond27, !dbg !5703

for.cond27:                                       ; preds = %for.inc40, %for.end
  %42 = load i32, i32* %i, align 4, !dbg !5704
  %43 = load i32, i32* %n, align 4, !dbg !5706
  %cmp28 = icmp slt i32 %42, %43, !dbg !5707
  br i1 %cmp28, label %for.body30, label %for.end42, !dbg !5708

for.body30:                                       ; preds = %for.cond27
  %44 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5709
  %45 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5710
  %slots31 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %45, i32 0, i32 13, !dbg !5711
  %46 = load i32, i32* %i, align 4, !dbg !5712
  %idxprom32 = sext i32 %46 to i64, !dbg !5710
  %arrayidx33 = getelementptr [16 x i32], [16 x i32]* %slots31, i64 0, i64 %idxprom32, !dbg !5710
  %47 = load i32, i32* %arrayidx33, align 4, !dbg !5710
  %48 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5713
  %pos34 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %48, i32 0, i32 12, !dbg !5714
  %49 = load i32, i32* %i, align 4, !dbg !5715
  %idxprom35 = sext i32 %49 to i64, !dbg !5713
  %arrayidx36 = getelementptr [16 x %struct.input_mt_pos], [16 x %struct.input_mt_pos]* %pos34, i64 0, i64 %idxprom35, !dbg !5713
  %50 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5716
  %index37 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %50, i32 0, i32 11, !dbg !5717
  %51 = load i32, i32* %i, align 4, !dbg !5718
  %idxprom38 = sext i32 %51 to i64, !dbg !5716
  %arrayidx39 = getelementptr [16 x %struct.tp_finger*], [16 x %struct.tp_finger*]* %index37, i64 0, i64 %idxprom38, !dbg !5716
  %52 = load %struct.tp_finger*, %struct.tp_finger** %arrayidx39, align 8, !dbg !5716
  call void @report_finger_data(%struct.input_dev* %44, i32 %47, %struct.input_mt_pos* %arrayidx36, %struct.tp_finger* %52) #9, !dbg !5719
  br label %for.inc40, !dbg !5719

for.inc40:                                        ; preds = %for.body30
  %53 = load i32, i32* %i, align 4, !dbg !5720
  %inc41 = add i32 %53, 1, !dbg !5720
  store i32 %inc41, i32* %i, align 4, !dbg !5720
  br label %for.cond27, !dbg !5721, !llvm.loop !5722

for.end42:                                        ; preds = %for.cond27
  %54 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5724
  call void @input_mt_sync_frame(%struct.input_dev* %54) #9, !dbg !5725
  %55 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5726
  %56 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !5727
  %57 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5728
  %call43 = call %struct.tp_finger* @get_tp_finger(%struct.bcm5974* %57, i32 0) #9, !dbg !5729
  %58 = load i32, i32* %raw_n, align 4, !dbg !5730
  call void @report_synaptics_data(%struct.input_dev* %55, %struct.bcm5974_config* %56, %struct.tp_finger* %call43, i32 %58) #9, !dbg !5731
  %59 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !5732
  %caps = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %59, i32 0, i32 3, !dbg !5734
  %60 = load i32, i32* %caps, align 4, !dbg !5734
  %and = and i32 %60, 1, !dbg !5735
  %tobool = icmp ne i32 %and, 0, !dbg !5735
  br i1 %tobool, label %if.then44, label %if.end49, !dbg !5736

if.then44:                                        ; preds = %for.end42
  call void @llvm.dbg.declare(metadata i32* %ibt, metadata !5737, metadata !DIExpression()), !dbg !5739
  %61 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5740
  %tp_data = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %61, i32 0, i32 10, !dbg !5741
  %62 = load i8*, i8** %tp_data, align 8, !dbg !5741
  %63 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !5742
  %tp_button = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %63, i32 0, i32 10, !dbg !5743
  %64 = load i32, i32* %tp_button, align 4, !dbg !5743
  %idxprom45 = sext i32 %64 to i64, !dbg !5740
  %arrayidx46 = getelementptr i8, i8* %62, i64 %idxprom45, !dbg !5740
  %65 = load i8, i8* %arrayidx46, align 1, !dbg !5740
  %conv47 = zext i8 %65 to i16, !dbg !5740
  %call48 = call i32 @raw2int(i16 zeroext %conv47) #9, !dbg !5744
  store i32 %call48, i32* %ibt, align 4, !dbg !5739
  %66 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5745
  %67 = load i32, i32* %ibt, align 4, !dbg !5746
  call void @input_report_key(%struct.input_dev* %66, i32 272, i32 %67) #9, !dbg !5747
  br label %if.end49, !dbg !5748

if.end49:                                         ; preds = %if.then44, %for.end42
  %68 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5749
  call void @input_sync(%struct.input_dev* %68) #9, !dbg !5750
  store i32 0, i32* %retval, align 4, !dbg !5751
  br label %return, !dbg !5751

return:                                           ; preds = %if.end49, %if.then
  %69 = load i32, i32* %retval, align 4, !dbg !5752
  ret i32 %69, !dbg !5752
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.tp_finger* @get_tp_finger(%struct.bcm5974* %dev, i32 %i) #2 !dbg !5753 {
entry:
  %dev.addr = alloca %struct.bcm5974*, align 8
  %i.addr = alloca i32, align 4
  %c = alloca %struct.bcm5974_config*, align 8
  %f_base = alloca i8*, align 8
  store %struct.bcm5974* %dev, %struct.bcm5974** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm5974** %dev.addr, metadata !5758, metadata !DIExpression()), !dbg !5759
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5760, metadata !DIExpression()), !dbg !5761
  call void @llvm.dbg.declare(metadata %struct.bcm5974_config** %c, metadata !5762, metadata !DIExpression()), !dbg !5763
  %0 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5764
  %cfg = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %0, i32 0, i32 4, !dbg !5765
  store %struct.bcm5974_config* %cfg, %struct.bcm5974_config** %c, align 8, !dbg !5763
  call void @llvm.dbg.declare(metadata i8** %f_base, metadata !5766, metadata !DIExpression()), !dbg !5767
  %1 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5768
  %tp_data = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %1, i32 0, i32 10, !dbg !5769
  %2 = load i8*, i8** %tp_data, align 8, !dbg !5769
  %3 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !5770
  %tp_header = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %3, i32 0, i32 8, !dbg !5771
  %4 = load i32, i32* %tp_header, align 4, !dbg !5771
  %idx.ext = sext i32 %4 to i64, !dbg !5772
  %add.ptr = getelementptr i8, i8* %2, i64 %idx.ext, !dbg !5772
  %5 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !5773
  %tp_delta = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %5, i32 0, i32 12, !dbg !5774
  %6 = load i32, i32* %tp_delta, align 4, !dbg !5774
  %idx.ext1 = sext i32 %6 to i64, !dbg !5775
  %add.ptr2 = getelementptr i8, i8* %add.ptr, i64 %idx.ext1, !dbg !5775
  store i8* %add.ptr2, i8** %f_base, align 8, !dbg !5767
  %7 = load i8*, i8** %f_base, align 8, !dbg !5776
  %8 = load i32, i32* %i.addr, align 4, !dbg !5777
  %9 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !5778
  %tp_fsize = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %9, i32 0, i32 11, !dbg !5779
  %10 = load i32, i32* %tp_fsize, align 4, !dbg !5779
  %mul = mul i32 %8, %10, !dbg !5780
  %idx.ext3 = sext i32 %mul to i64, !dbg !5781
  %add.ptr4 = getelementptr i8, i8* %7, i64 %idx.ext3, !dbg !5781
  %11 = bitcast i8* %add.ptr4 to %struct.tp_finger*, !dbg !5782
  ret %struct.tp_finger* %11, !dbg !5783
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @raw2int(i16 zeroext %x) #2 !dbg !5784 {
entry:
  %x.addr = alloca i16, align 2
  store i16 %x, i16* %x.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %x.addr, metadata !5787, metadata !DIExpression()), !dbg !5788
  %0 = load i16, i16* %x.addr, align 2, !dbg !5789
  %conv = sext i16 %0 to i32, !dbg !5790
  ret i32 %conv, !dbg !5791
}

; Function Attrs: noredzone
declare dso_local i32 @input_mt_assign_slots(%struct.input_dev*, i32*, %struct.input_mt_pos*, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @report_finger_data(%struct.input_dev* %input, i32 %slot, %struct.input_mt_pos* %pos, %struct.tp_finger* %f) #2 !dbg !5792 {
entry:
  %input.addr = alloca %struct.input_dev*, align 8
  %slot.addr = alloca i32, align 4
  %pos.addr = alloca %struct.input_mt_pos*, align 8
  %f.addr = alloca %struct.tp_finger*, align 8
  store %struct.input_dev* %input, %struct.input_dev** %input.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input.addr, metadata !5797, metadata !DIExpression()), !dbg !5798
  store i32 %slot, i32* %slot.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %slot.addr, metadata !5799, metadata !DIExpression()), !dbg !5800
  store %struct.input_mt_pos* %pos, %struct.input_mt_pos** %pos.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_mt_pos** %pos.addr, metadata !5801, metadata !DIExpression()), !dbg !5802
  store %struct.tp_finger* %f, %struct.tp_finger** %f.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tp_finger** %f.addr, metadata !5803, metadata !DIExpression()), !dbg !5804
  %0 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !5805
  %1 = load i32, i32* %slot.addr, align 4, !dbg !5806
  call void @input_mt_slot(%struct.input_dev* %0, i32 %1) #9, !dbg !5807
  %2 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !5808
  %call = call zeroext i1 @input_mt_report_slot_state(%struct.input_dev* %2, i32 0, i1 zeroext true) #9, !dbg !5809
  %3 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !5810
  %4 = load %struct.tp_finger*, %struct.tp_finger** %f.addr, align 8, !dbg !5811
  %touch_major = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %4, i32 0, i32 8, !dbg !5812
  %5 = load i16, i16* %touch_major, align 2, !dbg !5812
  %call1 = call i32 @raw2int(i16 zeroext %5) #9, !dbg !5813
  %shl = shl i32 %call1, 1, !dbg !5814
  call void @input_report_abs(%struct.input_dev* %3, i32 48, i32 %shl) #9, !dbg !5815
  %6 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !5816
  %7 = load %struct.tp_finger*, %struct.tp_finger** %f.addr, align 8, !dbg !5817
  %touch_minor = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %7, i32 0, i32 9, !dbg !5818
  %8 = load i16, i16* %touch_minor, align 2, !dbg !5818
  %call2 = call i32 @raw2int(i16 zeroext %8) #9, !dbg !5819
  %shl3 = shl i32 %call2, 1, !dbg !5820
  call void @input_report_abs(%struct.input_dev* %6, i32 49, i32 %shl3) #9, !dbg !5821
  %9 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !5822
  %10 = load %struct.tp_finger*, %struct.tp_finger** %f.addr, align 8, !dbg !5823
  %tool_major = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %10, i32 0, i32 5, !dbg !5824
  %11 = load i16, i16* %tool_major, align 2, !dbg !5824
  %call4 = call i32 @raw2int(i16 zeroext %11) #9, !dbg !5825
  %shl5 = shl i32 %call4, 1, !dbg !5826
  call void @input_report_abs(%struct.input_dev* %9, i32 50, i32 %shl5) #9, !dbg !5827
  %12 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !5828
  %13 = load %struct.tp_finger*, %struct.tp_finger** %f.addr, align 8, !dbg !5829
  %tool_minor = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %13, i32 0, i32 6, !dbg !5830
  %14 = load i16, i16* %tool_minor, align 2, !dbg !5830
  %call6 = call i32 @raw2int(i16 zeroext %14) #9, !dbg !5831
  %shl7 = shl i32 %call6, 1, !dbg !5832
  call void @input_report_abs(%struct.input_dev* %12, i32 51, i32 %shl7) #9, !dbg !5833
  %15 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !5834
  %16 = load %struct.tp_finger*, %struct.tp_finger** %f.addr, align 8, !dbg !5835
  %orientation = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %16, i32 0, i32 7, !dbg !5836
  %17 = load i16, i16* %orientation, align 2, !dbg !5836
  %call8 = call i32 @raw2int(i16 zeroext %17) #9, !dbg !5837
  %sub = sub i32 16384, %call8, !dbg !5838
  call void @input_report_abs(%struct.input_dev* %15, i32 52, i32 %sub) #9, !dbg !5839
  %18 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !5840
  %19 = load %struct.input_mt_pos*, %struct.input_mt_pos** %pos.addr, align 8, !dbg !5841
  %x = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %19, i32 0, i32 0, !dbg !5842
  %20 = load i16, i16* %x, align 2, !dbg !5842
  %conv = sext i16 %20 to i32, !dbg !5841
  call void @input_report_abs(%struct.input_dev* %18, i32 53, i32 %conv) #9, !dbg !5843
  %21 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !5844
  %22 = load %struct.input_mt_pos*, %struct.input_mt_pos** %pos.addr, align 8, !dbg !5845
  %y = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %22, i32 0, i32 1, !dbg !5846
  %23 = load i16, i16* %y, align 2, !dbg !5846
  %conv9 = sext i16 %23 to i32, !dbg !5845
  call void @input_report_abs(%struct.input_dev* %21, i32 54, i32 %conv9) #9, !dbg !5847
  ret void, !dbg !5848
}

; Function Attrs: noredzone
declare dso_local void @input_mt_sync_frame(%struct.input_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @report_synaptics_data(%struct.input_dev* %input, %struct.bcm5974_config* %cfg, %struct.tp_finger* %f, i32 %raw_n) #2 !dbg !5849 {
entry:
  %input.addr = alloca %struct.input_dev*, align 8
  %cfg.addr = alloca %struct.bcm5974_config*, align 8
  %f.addr = alloca %struct.tp_finger*, align 8
  %raw_n.addr = alloca i32, align 4
  %abs_p = alloca i32, align 4
  %abs_w = alloca i32, align 4
  %p = alloca i32, align 4
  %w = alloca i32, align 4
  %__UNIQUE_ID___x220 = alloca i32, align 4
  %__UNIQUE_ID___x218 = alloca i32, align 4
  %__UNIQUE_ID___y219 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___y221 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %__UNIQUE_ID___x224 = alloca i32, align 4
  %__UNIQUE_ID___x222 = alloca i32, align 4
  %__UNIQUE_ID___y223 = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  %__UNIQUE_ID___y225 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  store %struct.input_dev* %input, %struct.input_dev** %input.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input.addr, metadata !5852, metadata !DIExpression()), !dbg !5853
  store %struct.bcm5974_config* %cfg, %struct.bcm5974_config** %cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm5974_config** %cfg.addr, metadata !5854, metadata !DIExpression()), !dbg !5855
  store %struct.tp_finger* %f, %struct.tp_finger** %f.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tp_finger** %f.addr, metadata !5856, metadata !DIExpression()), !dbg !5857
  store i32 %raw_n, i32* %raw_n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %raw_n.addr, metadata !5858, metadata !DIExpression()), !dbg !5859
  call void @llvm.dbg.declare(metadata i32* %abs_p, metadata !5860, metadata !DIExpression()), !dbg !5861
  store i32 0, i32* %abs_p, align 4, !dbg !5861
  call void @llvm.dbg.declare(metadata i32* %abs_w, metadata !5862, metadata !DIExpression()), !dbg !5863
  store i32 0, i32* %abs_w, align 4, !dbg !5863
  %0 = load i32, i32* %raw_n.addr, align 4, !dbg !5864
  %tobool = icmp ne i32 %0, 0, !dbg !5864
  br i1 %tobool, label %if.then, label %if.end29, !dbg !5866

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %p, metadata !5867, metadata !DIExpression()), !dbg !5869
  %1 = load %struct.tp_finger*, %struct.tp_finger** %f.addr, align 8, !dbg !5870
  %touch_major = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %1, i32 0, i32 8, !dbg !5871
  %2 = load i16, i16* %touch_major, align 2, !dbg !5871
  %call = call i32 @raw2int(i16 zeroext %2) #9, !dbg !5872
  store i32 %call, i32* %p, align 4, !dbg !5869
  call void @llvm.dbg.declare(metadata i32* %w, metadata !5873, metadata !DIExpression()), !dbg !5874
  %3 = load %struct.tp_finger*, %struct.tp_finger** %f.addr, align 8, !dbg !5875
  %tool_major = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %3, i32 0, i32 5, !dbg !5876
  %4 = load i16, i16* %tool_major, align 2, !dbg !5876
  %call1 = call i32 @raw2int(i16 zeroext %4) #9, !dbg !5877
  store i32 %call1, i32* %w, align 4, !dbg !5874
  %5 = load i32, i32* %p, align 4, !dbg !5878
  %cmp = icmp sgt i32 %5, 0, !dbg !5880
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5881

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct.tp_finger*, %struct.tp_finger** %f.addr, align 8, !dbg !5882
  %origin = getelementptr inbounds %struct.tp_finger, %struct.tp_finger* %6, i32 0, i32 0, !dbg !5883
  %7 = load i16, i16* %origin, align 2, !dbg !5883
  %call2 = call i32 @raw2int(i16 zeroext %7) #9, !dbg !5884
  %tobool3 = icmp ne i32 %call2, 0, !dbg !5884
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !5885

if.then4:                                         ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x220, metadata !5886, metadata !DIExpression()), !dbg !5889
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x218, metadata !5890, metadata !DIExpression()), !dbg !5892
  %8 = load i32, i32* %p, align 4, !dbg !5892
  %mul = mul i32 256, %8, !dbg !5892
  %9 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg.addr, align 8, !dbg !5892
  %p5 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %9, i32 0, i32 19, !dbg !5892
  %max = getelementptr inbounds %struct.bcm5974_param, %struct.bcm5974_param* %p5, i32 0, i32 2, !dbg !5892
  %10 = load i32, i32* %max, align 4, !dbg !5892
  %div = sdiv i32 %mul, %10, !dbg !5892
  store i32 %div, i32* %__UNIQUE_ID___x218, align 4, !dbg !5892
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y219, metadata !5893, metadata !DIExpression()), !dbg !5892
  store i32 0, i32* %__UNIQUE_ID___y219, align 4, !dbg !5892
  %11 = load i32, i32* %__UNIQUE_ID___x218, align 4, !dbg !5892
  %12 = load i32, i32* %__UNIQUE_ID___y219, align 4, !dbg !5892
  %cmp6 = icmp sgt i32 %11, %12, !dbg !5892
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !5892

cond.true:                                        ; preds = %if.then4
  %13 = load i32, i32* %__UNIQUE_ID___x218, align 4, !dbg !5892
  br label %cond.end, !dbg !5892

cond.false:                                       ; preds = %if.then4
  %14 = load i32, i32* %__UNIQUE_ID___y219, align 4, !dbg !5892
  br label %cond.end, !dbg !5892

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !5892
  store i32 %cond, i32* %tmp, align 4, !dbg !5892
  %15 = load i32, i32* %tmp, align 4, !dbg !5892
  store i32 %15, i32* %__UNIQUE_ID___x220, align 4, !dbg !5889
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y221, metadata !5894, metadata !DIExpression()), !dbg !5889
  store i32 255, i32* %__UNIQUE_ID___y221, align 4, !dbg !5889
  %16 = load i32, i32* %__UNIQUE_ID___x220, align 4, !dbg !5889
  %17 = load i32, i32* %__UNIQUE_ID___y221, align 4, !dbg !5889
  %cmp8 = icmp slt i32 %16, %17, !dbg !5889
  br i1 %cmp8, label %cond.true9, label %cond.false10, !dbg !5889

cond.true9:                                       ; preds = %cond.end
  %18 = load i32, i32* %__UNIQUE_ID___x220, align 4, !dbg !5889
  br label %cond.end11, !dbg !5889

cond.false10:                                     ; preds = %cond.end
  %19 = load i32, i32* %__UNIQUE_ID___y221, align 4, !dbg !5889
  br label %cond.end11, !dbg !5889

cond.end11:                                       ; preds = %cond.false10, %cond.true9
  %cond12 = phi i32 [ %18, %cond.true9 ], [ %19, %cond.false10 ], !dbg !5889
  store i32 %cond12, i32* %tmp7, align 4, !dbg !5889
  %20 = load i32, i32* %tmp7, align 4, !dbg !5889
  store i32 %20, i32* %abs_p, align 4, !dbg !5895
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x224, metadata !5896, metadata !DIExpression()), !dbg !5898
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x222, metadata !5899, metadata !DIExpression()), !dbg !5901
  %21 = load i32, i32* %w, align 4, !dbg !5901
  %mul13 = mul i32 16, %21, !dbg !5901
  %22 = load %struct.bcm5974_config*, %struct.bcm5974_config** %cfg.addr, align 8, !dbg !5901
  %w14 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %22, i32 0, i32 20, !dbg !5901
  %max15 = getelementptr inbounds %struct.bcm5974_param, %struct.bcm5974_param* %w14, i32 0, i32 2, !dbg !5901
  %23 = load i32, i32* %max15, align 4, !dbg !5901
  %div16 = sdiv i32 %mul13, %23, !dbg !5901
  store i32 %div16, i32* %__UNIQUE_ID___x222, align 4, !dbg !5901
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y223, metadata !5902, metadata !DIExpression()), !dbg !5901
  store i32 0, i32* %__UNIQUE_ID___y223, align 4, !dbg !5901
  %24 = load i32, i32* %__UNIQUE_ID___x222, align 4, !dbg !5901
  %25 = load i32, i32* %__UNIQUE_ID___y223, align 4, !dbg !5901
  %cmp18 = icmp sgt i32 %24, %25, !dbg !5901
  br i1 %cmp18, label %cond.true19, label %cond.false20, !dbg !5901

cond.true19:                                      ; preds = %cond.end11
  %26 = load i32, i32* %__UNIQUE_ID___x222, align 4, !dbg !5901
  br label %cond.end21, !dbg !5901

cond.false20:                                     ; preds = %cond.end11
  %27 = load i32, i32* %__UNIQUE_ID___y223, align 4, !dbg !5901
  br label %cond.end21, !dbg !5901

cond.end21:                                       ; preds = %cond.false20, %cond.true19
  %cond22 = phi i32 [ %26, %cond.true19 ], [ %27, %cond.false20 ], !dbg !5901
  store i32 %cond22, i32* %tmp17, align 4, !dbg !5901
  %28 = load i32, i32* %tmp17, align 4, !dbg !5901
  store i32 %28, i32* %__UNIQUE_ID___x224, align 4, !dbg !5898
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y225, metadata !5903, metadata !DIExpression()), !dbg !5898
  store i32 15, i32* %__UNIQUE_ID___y225, align 4, !dbg !5898
  %29 = load i32, i32* %__UNIQUE_ID___x224, align 4, !dbg !5898
  %30 = load i32, i32* %__UNIQUE_ID___y225, align 4, !dbg !5898
  %cmp24 = icmp slt i32 %29, %30, !dbg !5898
  br i1 %cmp24, label %cond.true25, label %cond.false26, !dbg !5898

cond.true25:                                      ; preds = %cond.end21
  %31 = load i32, i32* %__UNIQUE_ID___x224, align 4, !dbg !5898
  br label %cond.end27, !dbg !5898

cond.false26:                                     ; preds = %cond.end21
  %32 = load i32, i32* %__UNIQUE_ID___y225, align 4, !dbg !5898
  br label %cond.end27, !dbg !5898

cond.end27:                                       ; preds = %cond.false26, %cond.true25
  %cond28 = phi i32 [ %31, %cond.true25 ], [ %32, %cond.false26 ], !dbg !5898
  store i32 %cond28, i32* %tmp23, align 4, !dbg !5898
  %33 = load i32, i32* %tmp23, align 4, !dbg !5898
  store i32 %33, i32* %abs_w, align 4, !dbg !5904
  br label %if.end, !dbg !5905

if.end:                                           ; preds = %cond.end27, %land.lhs.true, %if.then
  br label %if.end29, !dbg !5906

if.end29:                                         ; preds = %if.end, %entry
  %34 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !5907
  %35 = load i32, i32* %abs_p, align 4, !dbg !5908
  call void @input_report_abs(%struct.input_dev* %34, i32 24, i32 %35) #9, !dbg !5909
  %36 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !5910
  %37 = load i32, i32* %abs_w, align 4, !dbg !5911
  call void @input_report_abs(%struct.input_dev* %36, i32 28, i32 %37) #9, !dbg !5912
  ret void, !dbg !5913
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_mt_slot(%struct.input_dev* %dev, i32 %slot) #2 !dbg !5914 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %slot.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5917, metadata !DIExpression()), !dbg !5918
  store i32 %slot, i32* %slot.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %slot.addr, metadata !5919, metadata !DIExpression()), !dbg !5920
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5921
  %1 = load i32, i32* %slot.addr, align 4, !dbg !5922
  call void @input_event(%struct.input_dev* %0, i32 3, i32 47, i32 %1) #9, !dbg !5923
  ret void, !dbg !5924
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @input_mt_report_slot_state(%struct.input_dev*, i32, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_abs(%struct.input_dev* %dev, i32 %code, i32 %value) #2 !dbg !5925 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5926, metadata !DIExpression()), !dbg !5927
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !5928, metadata !DIExpression()), !dbg !5929
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5930, metadata !DIExpression()), !dbg !5931
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5932
  %1 = load i32, i32* %code.addr, align 4, !dbg !5933
  %2 = load i32, i32* %value.addr, align 4, !dbg !5934
  call void @input_event(%struct.input_dev* %0, i32 3, i32 %1, i32 %2) #9, !dbg !5935
  ret void, !dbg !5936
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !5937 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5940, metadata !DIExpression()), !dbg !5941
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5942, metadata !DIExpression()), !dbg !5943
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5944
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5945
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5946
  store i8* %0, i8** %driver_data, align 8, !dbg !5947
  ret void, !dbg !5948
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @input_get_drvdata(%struct.input_dev* %dev) #2 !dbg !5949 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5952, metadata !DIExpression()), !dbg !5953
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5954
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 40, !dbg !5955
  %call = call i8* @dev_get_drvdata(%struct.device* %dev1) #9, !dbg !5956
  ret i8* %call, !dbg !5957
}

; Function Attrs: noredzone
declare dso_local i32 @usb_autopm_get_interface(%struct.usb_interface*) #1

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm5974_start_traffic(%struct.bcm5974* %dev) #2 !dbg !5958 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.bcm5974*, align 8
  %error = alloca i32, align 4
  store %struct.bcm5974* %dev, %struct.bcm5974** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm5974** %dev.addr, metadata !5961, metadata !DIExpression()), !dbg !5962
  call void @llvm.dbg.declare(metadata i32* %error, metadata !5963, metadata !DIExpression()), !dbg !5964
  %0 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5965
  %call = call i32 @bcm5974_wellspring_mode(%struct.bcm5974* %0, i1 zeroext true) #9, !dbg !5966
  store i32 %call, i32* %error, align 4, !dbg !5967
  %1 = load i32, i32* %error, align 4, !dbg !5968
  %tobool = icmp ne i32 %1, 0, !dbg !5968
  br i1 %tobool, label %if.then, label %if.end3, !dbg !5970

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @debug, align 4, !dbg !5971
  %cmp = icmp sge i32 %2, 1, !dbg !5971
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5975

if.then1:                                         ; preds = %if.then
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !5971
  br label %if.end, !dbg !5971

if.end:                                           ; preds = %if.then1, %if.then
  br label %err_out, !dbg !5976

if.end3:                                          ; preds = %entry
  %3 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5977
  %bt_urb = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %3, i32 0, i32 7, !dbg !5979
  %4 = load %struct.urb*, %struct.urb** %bt_urb, align 8, !dbg !5979
  %tobool4 = icmp ne %struct.urb* %4, null, !dbg !5977
  br i1 %tobool4, label %if.then5, label %if.end11, !dbg !5980

if.then5:                                         ; preds = %if.end3
  %5 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5981
  %bt_urb6 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %5, i32 0, i32 7, !dbg !5983
  %6 = load %struct.urb*, %struct.urb** %bt_urb6, align 8, !dbg !5983
  %call7 = call i32 @usb_submit_urb(%struct.urb* %6, i32 3264) #9, !dbg !5984
  store i32 %call7, i32* %error, align 4, !dbg !5985
  %7 = load i32, i32* %error, align 4, !dbg !5986
  %tobool8 = icmp ne i32 %7, 0, !dbg !5986
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5988

if.then9:                                         ; preds = %if.then5
  br label %err_reset_mode, !dbg !5989

if.end10:                                         ; preds = %if.then5
  br label %if.end11, !dbg !5990

if.end11:                                         ; preds = %if.end10, %if.end3
  %8 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !5991
  %tp_urb = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %8, i32 0, i32 9, !dbg !5992
  %9 = load %struct.urb*, %struct.urb** %tp_urb, align 8, !dbg !5992
  %call12 = call i32 @usb_submit_urb(%struct.urb* %9, i32 3264) #9, !dbg !5993
  store i32 %call12, i32* %error, align 4, !dbg !5994
  %10 = load i32, i32* %error, align 4, !dbg !5995
  %tobool13 = icmp ne i32 %10, 0, !dbg !5995
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5997

if.then14:                                        ; preds = %if.end11
  br label %err_kill_bt, !dbg !5998

if.end15:                                         ; preds = %if.end11
  store i32 0, i32* %retval, align 4, !dbg !5999
  br label %return, !dbg !5999

err_kill_bt:                                      ; preds = %if.then14
  call void @llvm.dbg.label(metadata !6000), !dbg !6001
  %11 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !6002
  %bt_urb16 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %11, i32 0, i32 7, !dbg !6003
  %12 = load %struct.urb*, %struct.urb** %bt_urb16, align 8, !dbg !6003
  call void @usb_kill_urb(%struct.urb* %12) #9, !dbg !6004
  br label %err_reset_mode, !dbg !6004

err_reset_mode:                                   ; preds = %err_kill_bt, %if.then9
  call void @llvm.dbg.label(metadata !6005), !dbg !6006
  %13 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !6007
  %call17 = call i32 @bcm5974_wellspring_mode(%struct.bcm5974* %13, i1 zeroext false) #9, !dbg !6008
  br label %err_out, !dbg !6008

err_out:                                          ; preds = %err_reset_mode, %if.end
  call void @llvm.dbg.label(metadata !6009), !dbg !6010
  %14 = load i32, i32* %error, align 4, !dbg !6011
  store i32 %14, i32* %retval, align 4, !dbg !6012
  br label %return, !dbg !6012

return:                                           ; preds = %err_out, %if.end15
  %15 = load i32, i32* %retval, align 4, !dbg !6013
  ret i32 %15, !dbg !6013
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local void @usb_autopm_put_interface(%struct.usb_interface*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !6014 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6019, metadata !DIExpression()), !dbg !6020
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6021
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6022
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6022
  ret i8* %1, !dbg !6023
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm5974_wellspring_mode(%struct.bcm5974* %dev, i1 zeroext %on) #2 !dbg !6024 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4819, metadata !DIExpression()), !dbg !6027
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4829, metadata !DIExpression()), !dbg !6030
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4831, metadata !DIExpression()), !dbg !6031
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4833, metadata !DIExpression()), !dbg !6032
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4835, metadata !DIExpression()), !dbg !6033
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4841, metadata !DIExpression()), !dbg !6035
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4847, metadata !DIExpression()), !dbg !6037
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4856, metadata !DIExpression()), !dbg !6040
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4858, metadata !DIExpression()), !dbg !6041
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4860, metadata !DIExpression()), !dbg !6042
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4862, metadata !DIExpression()), !dbg !6043
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4864, metadata !DIExpression()), !dbg !6044
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4866, metadata !DIExpression()), !dbg !6045
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4868, metadata !DIExpression()), !dbg !6046
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4870, metadata !DIExpression()), !dbg !6047
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.bcm5974*, align 8
  %on.addr = alloca i8, align 1
  %c = alloca %struct.bcm5974_config*, align 8
  %retval1 = alloca i32, align 4
  %size = alloca i32, align 4
  %data = alloca i8*, align 8
  store %struct.bcm5974* %dev, %struct.bcm5974** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm5974** %dev.addr, metadata !6048, metadata !DIExpression()), !dbg !6049
  %frombool = zext i1 %on to i8
  store i8 %frombool, i8* %on.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %on.addr, metadata !6050, metadata !DIExpression()), !dbg !6051
  call void @llvm.dbg.declare(metadata %struct.bcm5974_config** %c, metadata !6052, metadata !DIExpression()), !dbg !6053
  %0 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !6054
  %cfg = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %0, i32 0, i32 4, !dbg !6055
  store %struct.bcm5974_config* %cfg, %struct.bcm5974_config** %c, align 8, !dbg !6053
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !6056, metadata !DIExpression()), !dbg !6057
  store i32 0, i32* %retval1, align 4, !dbg !6057
  call void @llvm.dbg.declare(metadata i32* %size, metadata !6058, metadata !DIExpression()), !dbg !6059
  call void @llvm.dbg.declare(metadata i8** %data, metadata !6060, metadata !DIExpression()), !dbg !6061
  %1 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !6062
  %tp_type = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %1, i32 0, i32 7, !dbg !6064
  %2 = load i32, i32* %tp_type, align 4, !dbg !6064
  %cmp = icmp eq i32 %2, 2, !dbg !6065
  br i1 %cmp, label %if.then, label %if.end, !dbg !6066

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6067
  br label %return, !dbg !6067

if.end:                                           ; preds = %entry
  %3 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !6068
  %um_size = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %3, i32 0, i32 13, !dbg !6069
  %4 = load i32, i32* %um_size, align 4, !dbg !6069
  %conv = sext i32 %4 to i64, !dbg !6068
  store i64 %conv, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !6070
  %6 = call i1 @llvm.is.constant.i64(i64 %5) #11, !dbg !6071
  br i1 %6, label %if.then.i, label %if.end9.i, !dbg !6072

if.then.i:                                        ; preds = %if.end
  %7 = load i64, i64* %size.addr.i, align 8, !dbg !6073
  %cmp.i = icmp ugt i64 %7, 8192, !dbg !6074
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6075

if.then1.i:                                       ; preds = %if.then.i
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !6076
  %9 = load i32, i32* %flags.addr.i, align 4, !dbg !6077
  store i64 %8, i64* %size.addr.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i, align 4
  %10 = load i64, i64* %size.addr.i.i, align 8, !dbg !6078
  %call.i.i = call i32 @get_order(i64 %10) #12, !dbg !6079
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !6044
  %11 = load i64, i64* %size.addr.i.i, align 8, !dbg !6080
  %12 = load i32, i32* %flags.addr.i.i, align 4, !dbg !6081
  %13 = load i32, i32* %order.i.i, align 4, !dbg !6082
  store i64 %11, i64* %size.addr.i.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i.i, align 4
  store i32 %13, i32* %order.addr.i.i.i, align 4
  %14 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !6083
  %15 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !6084
  %16 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !6085
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %14, i32 %15, i32 %16) #13, !dbg !6086
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !6086
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !6086
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !6086
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !6086
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !6087
  br label %kmalloc.exit, !dbg !6087

if.end.i:                                         ; preds = %if.then.i
  %17 = load i64, i64* %size.addr.i, align 8, !dbg !6088
  store i64 %17, i64* %size.addr.i11.i, align 8
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6089
  %tobool.i.i = icmp ne i64 %18, 0, !dbg !6089
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !6090

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !6091
  br label %kmalloc_index.exit.i, !dbg !6091

if.end.i.i:                                       ; preds = %if.end.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6092
  %cmp.i.i = icmp ule i64 %19, 8, !dbg !6093
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !6094

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6095
  br label %kmalloc_index.exit.i, !dbg !6095

if.end2.i.i:                                      ; preds = %if.end.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6096
  %cmp3.i.i = icmp ugt i64 %20, 64, !dbg !6097
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !6098

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6099
  %cmp4.i.i = icmp ule i64 %21, 96, !dbg !6100
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6101

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6102
  br label %kmalloc_index.exit.i, !dbg !6102

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6103
  %cmp7.i.i = icmp ugt i64 %22, 128, !dbg !6104
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6105

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6106
  %cmp9.i.i = icmp ule i64 %23, 192, !dbg !6107
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6108

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6109
  br label %kmalloc_index.exit.i, !dbg !6109

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6110
  %cmp12.i.i = icmp ule i64 %24, 8, !dbg !6111
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6112

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6113
  br label %kmalloc_index.exit.i, !dbg !6113

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6114
  %cmp15.i.i = icmp ule i64 %25, 16, !dbg !6115
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6116

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6117
  br label %kmalloc_index.exit.i, !dbg !6117

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6118
  %cmp18.i.i = icmp ule i64 %26, 32, !dbg !6119
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6120

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6121
  br label %kmalloc_index.exit.i, !dbg !6121

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6122
  %cmp21.i.i = icmp ule i64 %27, 64, !dbg !6123
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6124

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6125
  br label %kmalloc_index.exit.i, !dbg !6125

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6126
  %cmp24.i.i = icmp ule i64 %28, 128, !dbg !6127
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6128

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6129
  br label %kmalloc_index.exit.i, !dbg !6129

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6130
  %cmp27.i.i = icmp ule i64 %29, 256, !dbg !6131
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6132

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6133
  br label %kmalloc_index.exit.i, !dbg !6133

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6134
  %cmp30.i.i = icmp ule i64 %30, 512, !dbg !6135
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6136

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6137
  br label %kmalloc_index.exit.i, !dbg !6137

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6138
  %cmp33.i.i = icmp ule i64 %31, 1024, !dbg !6139
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6140

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6141
  br label %kmalloc_index.exit.i, !dbg !6141

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6142
  %cmp36.i.i = icmp ule i64 %32, 2048, !dbg !6143
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6144

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6145
  br label %kmalloc_index.exit.i, !dbg !6145

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6146
  %cmp39.i.i = icmp ule i64 %33, 4096, !dbg !6147
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6148

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6149
  br label %kmalloc_index.exit.i, !dbg !6149

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6150
  %cmp42.i.i = icmp ule i64 %34, 8192, !dbg !6151
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6152

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6153
  br label %kmalloc_index.exit.i, !dbg !6153

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6154
  %cmp45.i.i = icmp ule i64 %35, 16384, !dbg !6155
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6156

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6157
  br label %kmalloc_index.exit.i, !dbg !6157

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6158
  %cmp48.i.i = icmp ule i64 %36, 32768, !dbg !6159
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6160

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6161
  br label %kmalloc_index.exit.i, !dbg !6161

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6162
  %cmp51.i.i = icmp ule i64 %37, 65536, !dbg !6163
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6164

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6165
  br label %kmalloc_index.exit.i, !dbg !6165

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6166
  %cmp54.i.i = icmp ule i64 %38, 131072, !dbg !6167
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6168

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6169
  br label %kmalloc_index.exit.i, !dbg !6169

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6170
  %cmp57.i.i = icmp ule i64 %39, 262144, !dbg !6171
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6172

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6173
  br label %kmalloc_index.exit.i, !dbg !6173

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6174
  %cmp60.i.i = icmp ule i64 %40, 524288, !dbg !6175
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6176

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6177
  br label %kmalloc_index.exit.i, !dbg !6177

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6178
  %cmp63.i.i = icmp ule i64 %41, 1048576, !dbg !6179
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6180

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6181
  br label %kmalloc_index.exit.i, !dbg !6181

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6182
  %cmp66.i.i = icmp ule i64 %42, 2097152, !dbg !6183
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6184

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6185
  br label %kmalloc_index.exit.i, !dbg !6185

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6186
  %cmp69.i.i = icmp ule i64 %43, 4194304, !dbg !6187
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6188

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6189
  br label %kmalloc_index.exit.i, !dbg !6189

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6190
  %cmp72.i.i = icmp ule i64 %44, 8388608, !dbg !6191
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6192

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6193
  br label %kmalloc_index.exit.i, !dbg !6193

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6194
  %cmp75.i.i = icmp ule i64 %45, 16777216, !dbg !6195
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6196

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6197
  br label %kmalloc_index.exit.i, !dbg !6197

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6198
  %cmp78.i.i = icmp ule i64 %46, 33554432, !dbg !6199
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6200

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6201
  br label %kmalloc_index.exit.i, !dbg !6201

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6202
  %cmp81.i.i = icmp ule i64 %47, 67108864, !dbg !6203
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6204

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6205
  br label %kmalloc_index.exit.i, !dbg !6205

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !6206, !srcloc !5046
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #11, !dbg !6207, !srcloc !5050
  unreachable, !dbg !6208

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %48 = load i32, i32* %retval.i.i, align 4, !dbg !6209
  store i32 %48, i32* %index.i, align 4, !dbg !6210
  %49 = load i32, i32* %index.i, align 4, !dbg !6211
  %tobool.i = icmp ne i32 %49, 0, !dbg !6211
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6212

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6213
  br label %kmalloc.exit, !dbg !6213

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %50 = load i32, i32* %flags.addr.i, align 4, !dbg !6214
  store i32 %50, i32* %flags.addr.i13.i, align 4
  %51 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6215
  %and.i.i = and i32 %51, 17, !dbg !6215
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6215
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6215
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6215
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6215
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6216

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6217
  br label %kmalloc_type.exit.i, !dbg !6217

if.end.i16.i:                                     ; preds = %if.end4.i
  %52 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6218
  %and2.i.i = and i32 %52, 1, !dbg !6219
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6218
  %53 = zext i1 %tobool3.i.i to i64, !dbg !6218
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6218
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6220
  br label %kmalloc_type.exit.i, !dbg !6220

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %54 = load i32, i32* %retval.i12.i, align 4, !dbg !6221
  %idxprom.i = zext i32 %54 to i64, !dbg !6222
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6222
  %55 = load i32, i32* %index.i, align 4, !dbg !6223
  %idxprom6.i = zext i32 %55 to i64, !dbg !6222
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6222
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6222
  %57 = load i32, i32* %flags.addr.i, align 4, !dbg !6224
  %58 = load i64, i64* %size.addr.i, align 8, !dbg !6225
  store %struct.kmem_cache* %56, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %57, i32* %flags.addr.i17.i, align 4
  store i64 %58, i64* %size.addr.i18.i, align 8
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6226
  %60 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6227
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %59, i32 %60) #13, !dbg !6228
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6228
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6228
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6228
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !6228
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !6032
  %61 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6229
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !6230
  %63 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6231
  %64 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6232
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %61, i8* %62, i64 %63, i32 %64) #13, !dbg !6233
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6234
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !6235
  store i8* %65, i8** %retval.i, align 8, !dbg !6236
  br label %kmalloc.exit, !dbg !6236

if.end9.i:                                        ; preds = %if.end
  %66 = load i64, i64* %size.addr.i, align 8, !dbg !6237
  %67 = load i32, i32* %flags.addr.i, align 4, !dbg !6238
  %call10.i = call noalias i8* @__kmalloc(i64 %66, i32 %67) #13, !dbg !6239
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6239
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6239
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6239
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !6239
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6240
  br label %kmalloc.exit, !dbg !6240

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %68 = load i8*, i8** %retval.i, align 8, !dbg !6241
  store i8* %68, i8** %data, align 8, !dbg !6242
  %69 = load i8*, i8** %data, align 8, !dbg !6243
  %tobool = icmp ne i8* %69, null, !dbg !6243
  br i1 %tobool, label %if.end4, label %if.then2, !dbg !6245

if.then2:                                         ; preds = %kmalloc.exit
  %70 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !6246
  %intf = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %70, i32 0, i32 2, !dbg !6246
  %71 = load %struct.usb_interface*, %struct.usb_interface** %intf, align 8, !dbg !6246
  %dev3 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %71, i32 0, i32 7, !dbg !6246
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)) #10, !dbg !6246
  store i32 -12, i32* %retval1, align 4, !dbg !6248
  br label %out, !dbg !6249

if.end4:                                          ; preds = %kmalloc.exit
  %72 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !6250
  %udev = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %72, i32 0, i32 1, !dbg !6251
  %73 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !6251
  %74 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !6252
  %udev5 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %74, i32 0, i32 1, !dbg !6252
  %75 = load %struct.usb_device*, %struct.usb_device** %udev5, align 8, !dbg !6252
  %call6 = call i32 @__create_pipe(%struct.usb_device* %75, i32 0) #9, !dbg !6252
  %or = or i32 -2147483648, %call6, !dbg !6252
  %or7 = or i32 %or, 128, !dbg !6252
  %76 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !6253
  %um_req_val = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %76, i32 0, i32 14, !dbg !6254
  %77 = load i32, i32* %um_req_val, align 4, !dbg !6254
  %conv8 = trunc i32 %77 to i16, !dbg !6253
  %78 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !6255
  %um_req_idx = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %78, i32 0, i32 15, !dbg !6256
  %79 = load i32, i32* %um_req_idx, align 4, !dbg !6256
  %conv9 = trunc i32 %79 to i16, !dbg !6255
  %80 = load i8*, i8** %data, align 8, !dbg !6257
  %81 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !6258
  %um_size10 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %81, i32 0, i32 13, !dbg !6259
  %82 = load i32, i32* %um_size10, align 4, !dbg !6259
  %conv11 = trunc i32 %82 to i16, !dbg !6258
  %call12 = call i32 @usb_control_msg(%struct.usb_device* %73, i32 %or7, i8 zeroext 1, i8 zeroext -95, i16 zeroext %conv8, i16 zeroext %conv9, i8* %80, i16 zeroext %conv11, i32 5000) #9, !dbg !6260
  store i32 %call12, i32* %size, align 4, !dbg !6261
  %83 = load i32, i32* %size, align 4, !dbg !6262
  %84 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !6264
  %um_size13 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %84, i32 0, i32 13, !dbg !6265
  %85 = load i32, i32* %um_size13, align 4, !dbg !6265
  %cmp14 = icmp ne i32 %83, %85, !dbg !6266
  br i1 %cmp14, label %if.then16, label %if.end19, !dbg !6267

if.then16:                                        ; preds = %if.end4
  %86 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !6268
  %intf17 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %86, i32 0, i32 2, !dbg !6268
  %87 = load %struct.usb_interface*, %struct.usb_interface** %intf17, align 8, !dbg !6268
  %dev18 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %87, i32 0, i32 7, !dbg !6268
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !6268
  store i32 -5, i32* %retval1, align 4, !dbg !6270
  br label %out, !dbg !6271

if.end19:                                         ; preds = %if.end4
  %88 = load i8, i8* %on.addr, align 1, !dbg !6272
  %tobool20 = trunc i8 %88 to i1, !dbg !6272
  br i1 %tobool20, label %cond.true, label %cond.false, !dbg !6272

cond.true:                                        ; preds = %if.end19
  %89 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !6273
  %um_switch_on = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %89, i32 0, i32 17, !dbg !6274
  %90 = load i32, i32* %um_switch_on, align 4, !dbg !6274
  br label %cond.end, !dbg !6272

cond.false:                                       ; preds = %if.end19
  %91 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !6275
  %um_switch_off = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %91, i32 0, i32 18, !dbg !6276
  %92 = load i32, i32* %um_switch_off, align 4, !dbg !6276
  br label %cond.end, !dbg !6272

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %90, %cond.true ], [ %92, %cond.false ], !dbg !6272
  %conv22 = trunc i32 %cond to i8, !dbg !6272
  %93 = load i8*, i8** %data, align 8, !dbg !6277
  %94 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !6278
  %um_switch_idx = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %94, i32 0, i32 16, !dbg !6279
  %95 = load i32, i32* %um_switch_idx, align 4, !dbg !6279
  %idxprom = sext i32 %95 to i64, !dbg !6277
  %arrayidx = getelementptr i8, i8* %93, i64 %idxprom, !dbg !6277
  store i8 %conv22, i8* %arrayidx, align 1, !dbg !6280
  %96 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !6281
  %udev23 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %96, i32 0, i32 1, !dbg !6282
  %97 = load %struct.usb_device*, %struct.usb_device** %udev23, align 8, !dbg !6282
  %98 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !6283
  %udev24 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %98, i32 0, i32 1, !dbg !6283
  %99 = load %struct.usb_device*, %struct.usb_device** %udev24, align 8, !dbg !6283
  %call25 = call i32 @__create_pipe(%struct.usb_device* %99, i32 0) #9, !dbg !6283
  %or26 = or i32 -2147483648, %call25, !dbg !6283
  %100 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !6284
  %um_req_val27 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %100, i32 0, i32 14, !dbg !6285
  %101 = load i32, i32* %um_req_val27, align 4, !dbg !6285
  %conv28 = trunc i32 %101 to i16, !dbg !6284
  %102 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !6286
  %um_req_idx29 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %102, i32 0, i32 15, !dbg !6287
  %103 = load i32, i32* %um_req_idx29, align 4, !dbg !6287
  %conv30 = trunc i32 %103 to i16, !dbg !6286
  %104 = load i8*, i8** %data, align 8, !dbg !6288
  %105 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !6289
  %um_size31 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %105, i32 0, i32 13, !dbg !6290
  %106 = load i32, i32* %um_size31, align 4, !dbg !6290
  %conv32 = trunc i32 %106 to i16, !dbg !6289
  %call33 = call i32 @usb_control_msg(%struct.usb_device* %97, i32 %or26, i8 zeroext 9, i8 zeroext 33, i16 zeroext %conv28, i16 zeroext %conv30, i8* %104, i16 zeroext %conv32, i32 5000) #9, !dbg !6291
  store i32 %call33, i32* %size, align 4, !dbg !6292
  %107 = load i32, i32* %size, align 4, !dbg !6293
  %108 = load %struct.bcm5974_config*, %struct.bcm5974_config** %c, align 8, !dbg !6295
  %um_size34 = getelementptr inbounds %struct.bcm5974_config, %struct.bcm5974_config* %108, i32 0, i32 13, !dbg !6296
  %109 = load i32, i32* %um_size34, align 4, !dbg !6296
  %cmp35 = icmp ne i32 %107, %109, !dbg !6297
  br i1 %cmp35, label %if.then37, label %if.end40, !dbg !6298

if.then37:                                        ; preds = %cond.end
  %110 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !6299
  %intf38 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %110, i32 0, i32 2, !dbg !6299
  %111 = load %struct.usb_interface*, %struct.usb_interface** %intf38, align 8, !dbg !6299
  %dev39 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %111, i32 0, i32 7, !dbg !6299
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !6299
  store i32 -5, i32* %retval1, align 4, !dbg !6301
  br label %out, !dbg !6302

if.end40:                                         ; preds = %cond.end
  %112 = load i32, i32* @debug, align 4, !dbg !6303
  %cmp41 = icmp sge i32 %112, 2, !dbg !6303
  br i1 %cmp41, label %if.then43, label %if.end48, !dbg !6306

if.then43:                                        ; preds = %if.end40
  %113 = load i8, i8* %on.addr, align 1, !dbg !6303
  %tobool44 = trunc i8 %113 to i1, !dbg !6303
  %114 = zext i1 %tobool44 to i64, !dbg !6303
  %cond46 = select i1 %tobool44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), !dbg !6303
  %call47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i8* %cond46) #10, !dbg !6303
  br label %if.end48, !dbg !6303

if.end48:                                         ; preds = %if.then43, %if.end40
  br label %out, !dbg !6306

out:                                              ; preds = %if.end48, %if.then37, %if.then16, %if.then2
  call void @llvm.dbg.label(metadata !6307), !dbg !6308
  %115 = load i8*, i8** %data, align 8, !dbg !6309
  call void @kfree(i8* %115) #9, !dbg !6310
  %116 = load i32, i32* %retval1, align 4, !dbg !6311
  store i32 %116, i32* %retval, align 4, !dbg !6312
  br label %return, !dbg !6312

return:                                           ; preds = %out, %if.then
  %117 = load i32, i32* %retval, align 4, !dbg !6313
  ret i32 %117, !dbg !6313
}

; Function Attrs: noredzone
declare dso_local void @usb_kill_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i8 zeroext, i8 zeroext, i16 zeroext, i16 zeroext, i8*, i16 zeroext, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bcm5974_pause_traffic(%struct.bcm5974* %dev) #2 !dbg !6314 {
entry:
  %dev.addr = alloca %struct.bcm5974*, align 8
  store %struct.bcm5974* %dev, %struct.bcm5974** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm5974** %dev.addr, metadata !6317, metadata !DIExpression()), !dbg !6318
  %0 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !6319
  %tp_urb = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %0, i32 0, i32 9, !dbg !6320
  %1 = load %struct.urb*, %struct.urb** %tp_urb, align 8, !dbg !6320
  call void @usb_kill_urb(%struct.urb* %1) #9, !dbg !6321
  %2 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !6322
  %bt_urb = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %2, i32 0, i32 7, !dbg !6323
  %3 = load %struct.urb*, %struct.urb** %bt_urb, align 8, !dbg !6323
  call void @usb_kill_urb(%struct.urb* %3) #9, !dbg !6324
  %4 = load %struct.bcm5974*, %struct.bcm5974** %dev.addr, align 8, !dbg !6325
  %call = call i32 @bcm5974_wellspring_mode(%struct.bcm5974* %4, i1 zeroext false) #9, !dbg !6326
  ret void, !dbg !6327
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__set_bit(i64 %nr, i64* %addr) #2 !dbg !6328 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6334, metadata !DIExpression()), !dbg !6336
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6338, metadata !DIExpression()), !dbg !6339
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !6340, metadata !DIExpression()), !dbg !6348
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6350, metadata !DIExpression()), !dbg !6351
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6352, metadata !DIExpression()), !dbg !6353
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6354, metadata !DIExpression()), !dbg !6355
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6356
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6357
  %div = sdiv i64 %1, 64, !dbg !6357
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6358
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6356
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6359
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6360
  %conv.i = trunc i64 %4 to i32, !dbg !6360
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #13, !dbg !6361
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6362
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6362
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #13, !dbg !6362
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6363
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !6364
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !6365
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !6366
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #11, !dbg !6367, !srcloc !6368
  ret void, !dbg !6369
}

; Function Attrs: noredzone
declare dso_local void @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_abs(%struct.input_dev* %input, i32 %code, %struct.bcm5974_param* %p) #2 !dbg !6370 {
entry:
  %input.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %p.addr = alloca %struct.bcm5974_param*, align 8
  %fuzz = alloca i32, align 4
  store %struct.input_dev* %input, %struct.input_dev** %input.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input.addr, metadata !6375, metadata !DIExpression()), !dbg !6376
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !6377, metadata !DIExpression()), !dbg !6378
  store %struct.bcm5974_param* %p, %struct.bcm5974_param** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm5974_param** %p.addr, metadata !6379, metadata !DIExpression()), !dbg !6380
  call void @llvm.dbg.declare(metadata i32* %fuzz, metadata !6381, metadata !DIExpression()), !dbg !6382
  %0 = load %struct.bcm5974_param*, %struct.bcm5974_param** %p.addr, align 8, !dbg !6383
  %snratio = getelementptr inbounds %struct.bcm5974_param, %struct.bcm5974_param* %0, i32 0, i32 0, !dbg !6384
  %1 = load i32, i32* %snratio, align 4, !dbg !6384
  %tobool = icmp ne i32 %1, 0, !dbg !6383
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6383

cond.true:                                        ; preds = %entry
  %2 = load %struct.bcm5974_param*, %struct.bcm5974_param** %p.addr, align 8, !dbg !6385
  %max = getelementptr inbounds %struct.bcm5974_param, %struct.bcm5974_param* %2, i32 0, i32 2, !dbg !6386
  %3 = load i32, i32* %max, align 4, !dbg !6386
  %4 = load %struct.bcm5974_param*, %struct.bcm5974_param** %p.addr, align 8, !dbg !6387
  %min = getelementptr inbounds %struct.bcm5974_param, %struct.bcm5974_param* %4, i32 0, i32 1, !dbg !6388
  %5 = load i32, i32* %min, align 4, !dbg !6388
  %sub = sub i32 %3, %5, !dbg !6389
  %6 = load %struct.bcm5974_param*, %struct.bcm5974_param** %p.addr, align 8, !dbg !6390
  %snratio1 = getelementptr inbounds %struct.bcm5974_param, %struct.bcm5974_param* %6, i32 0, i32 0, !dbg !6391
  %7 = load i32, i32* %snratio1, align 4, !dbg !6391
  %div = sdiv i32 %sub, %7, !dbg !6392
  br label %cond.end, !dbg !6383

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6383

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ 0, %cond.false ], !dbg !6383
  store i32 %cond, i32* %fuzz, align 4, !dbg !6382
  %8 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !6393
  %9 = load i32, i32* %code.addr, align 4, !dbg !6394
  %10 = load %struct.bcm5974_param*, %struct.bcm5974_param** %p.addr, align 8, !dbg !6395
  %min2 = getelementptr inbounds %struct.bcm5974_param, %struct.bcm5974_param* %10, i32 0, i32 1, !dbg !6396
  %11 = load i32, i32* %min2, align 4, !dbg !6396
  %12 = load %struct.bcm5974_param*, %struct.bcm5974_param** %p.addr, align 8, !dbg !6397
  %max3 = getelementptr inbounds %struct.bcm5974_param, %struct.bcm5974_param* %12, i32 0, i32 2, !dbg !6398
  %13 = load i32, i32* %max3, align 4, !dbg !6398
  %14 = load i32, i32* %fuzz, align 4, !dbg !6399
  call void @input_set_abs_params(%struct.input_dev* %8, i32 %9, i32 %11, i32 %13, i32 %14, i32 0) #9, !dbg !6400
  ret void, !dbg !6401
}

; Function Attrs: noredzone
declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !6402 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6406, metadata !DIExpression()), !dbg !6407
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6408, metadata !DIExpression()), !dbg !6409
  ret i1 true, !dbg !6410
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !6411 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6415, metadata !DIExpression()), !dbg !6416
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6417, metadata !DIExpression()), !dbg !6418
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6419, metadata !DIExpression()), !dbg !6420
  ret void, !dbg !6421
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_get_intfdata(%struct.usb_interface* %intf) #2 !dbg !6422 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !6425, metadata !DIExpression()), !dbg !6426
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !6427
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !6428
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !6429
  ret i8* %call, !dbg !6430
}

; Function Attrs: noredzone
declare dso_local void @input_unregister_device(%struct.input_dev*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { nounwind }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4033, !4034, !4035, !4036}
!llvm.ident = !{!4037}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author212", scope: !2, file: !3, line: 155, type: !4030, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !131, globals: !3836, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/mouse/bcm5974.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !20, !25, !31, !37, !46, !54, !60, !66, !73, !81, !87, !99, !108, !113, !119, !126}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !6, line: 96, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !14, line: 15, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !21, line: 65, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!22 = !{!23, !24}
!23 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !26, line: 16, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!27 = !{!28, !29, !30}
!28 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!30 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !32, line: 54, baseType: !7, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!33 = !{!34, !35, !36}
!34 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!35 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!36 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !38, line: 296, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !41, !42, !43, !44, !45}
!40 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!43 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!44 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!45 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !47, line: 9, baseType: !7, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!48 = !{!49, !50, !51, !52, !53}
!49 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!50 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!51 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!52 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!53 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !55, line: 26, baseType: !7, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!56 = !{!57, !58, !59}
!57 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!58 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!59 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !61, line: 44, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !64, !65}
!63 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
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
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !88, line: 1156, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98}
!90 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!91 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!92 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!93 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!94 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!95 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!96 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!97 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!98 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !88, line: 1146, baseType: !7, size: 32, elements: !100)
!100 = !{!101, !102, !103, !104, !105, !106, !107}
!101 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!105 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!106 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!107 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_removable", file: !6, line: 476, baseType: !7, size: 32, elements: !109)
!109 = !{!110, !111, !112}
!110 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE_UNKNOWN", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "USB_DEVICE_FIXED", value: 2, isUnsigned: true)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tp_type", file: !3, line: 175, baseType: !7, size: 32, elements: !114)
!114 = !{!115, !116, !117, !118}
!115 = !DIEnumerator(name: "TYPE1", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "TYPE2", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "TYPE3", value: 2, isUnsigned: true)
!118 = !DIEnumerator(name: "TYPE4", value: 3, isUnsigned: true)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !120, line: 305, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!121 = !{!122, !123, !124, !125}
!122 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!123 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!124 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!125 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !127, line: 10, baseType: !7, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!128 = !{!129, !130}
!129 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!130 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!131 = !{!132, !135, !137, !138, !818, !3569, !142, !3817, !1083, !3835}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !134, line: 76, flags: DIFlagFwdDecl)
!134 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !136, line: 148, baseType: !7)
!136 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !6, line: 631, size: 10624, elements: !140)
!140 = !{!141, !143, !148, !153, !154, !155, !156, !157, !160, !161, !165, !166, !3558, !3599, !3600, !3617, !3678, !3760, !3761, !3763, !3764, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3799, !3800, !3801, !3806, !3813, !3814, !3815, !3816}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !139, file: !6, line: 632, baseType: !142, size: 32)
!142 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !139, file: !6, line: 633, baseType: !144, size: 128, offset: 32)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 128, elements: !146)
!145 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!146 = !{!147}
!147 = !DISubrange(count: 16)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !139, file: !6, line: 634, baseType: !149, size: 32, offset: 160)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !150, line: 21, baseType: !151)
!150 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !152, line: 27, baseType: !7)
!152 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!153 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !139, file: !6, line: 635, baseType: !87, size: 32, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !139, file: !6, line: 636, baseType: !99, size: 32, offset: 224)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !139, file: !6, line: 637, baseType: !7, size: 32, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !139, file: !6, line: 638, baseType: !7, size: 32, offset: 288)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !139, file: !6, line: 640, baseType: !158, size: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !6, line: 474, flags: DIFlagFwdDecl)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !139, file: !6, line: 641, baseType: !142, size: 32, offset: 384)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !139, file: !6, line: 643, baseType: !162, size: 64, offset: 416)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 2)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !139, file: !6, line: 645, baseType: !138, size: 64, offset: 512)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !139, file: !6, line: 646, baseType: !167, size: 64, offset: 576)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !6, line: 424, size: 960, elements: !169)
!169 = !{!170, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3552, !3553, !3554, !3555, !3556, !3557}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !168, file: !6, line: 425, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !67, line: 461, size: 5568, elements: !173)
!173 = !{!174, !3176, !3177, !3180, !3181, !3232, !3323, !3324, !3325, !3326, !3327, !3336, !3441, !3454, !3457, !3458, !3462, !3464, !3465, !3466, !3470, !3476, !3477, !3480, !3484, !3487, !3488, !3489, !3490, !3491, !3523, !3524, !3525, !3528, !3531, !3532, !3533, !3534}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !172, file: !67, line: 462, baseType: !175, size: 512)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !176, line: 64, size: 512, elements: !177)
!176 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!177 = !{!178, !181, !187, !189, !249, !3027, !3166, !3171, !3172, !3173, !3174, !3175}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !175, file: !176, line: 65, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !175, file: !176, line: 66, baseType: !182, size: 128, offset: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !136, line: 178, size: 128, elements: !183)
!183 = !{!184, !186}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !136, line: 179, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !182, file: !136, line: 179, baseType: !185, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !175, file: !176, line: 67, baseType: !188, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !175, file: !176, line: 68, baseType: !190, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !176, line: 192, size: 704, elements: !192)
!192 = !{!193, !194, !210, !211}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !191, file: !176, line: 193, baseType: !182, size: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !191, file: !176, line: 194, baseType: !195, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !196, line: 83, baseType: !197)
!196 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !196, line: 71, elements: !198)
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !196, line: 72, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !197, file: !196, line: 72, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !200, file: !196, line: 73, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !196, line: 20, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !203, file: !196, line: 21, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !207, line: 25, baseType: !208)
!207 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !207, line: 25, elements: !209)
!209 = !{}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !191, file: !176, line: 195, baseType: !175, size: 512, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !191, file: !176, line: 196, baseType: !212, size: 64, offset: 640)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !176, line: 156, size: 192, elements: !215)
!215 = !{!216, !221, !226}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !214, file: !176, line: 157, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!142, !190, !188}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !176, line: 158, baseType: !222, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!179, !190, !188}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !214, file: !176, line: 159, baseType: !227, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!142, !190, !188, !231}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !176, line: 148, size: 20736, elements: !233)
!233 = !{!234, !239, !243, !244, !248}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !232, file: !176, line: 149, baseType: !235, size: 192)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 192, elements: !237)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!237 = !{!238}
!238 = !DISubrange(count: 3)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !232, file: !176, line: 150, baseType: !240, size: 4096, offset: 192)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 4096, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !232, file: !176, line: 151, baseType: !142, size: 32, offset: 4288)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !232, file: !176, line: 152, baseType: !245, size: 16384, offset: 4320)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 16384, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 2048)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !232, file: !176, line: 153, baseType: !142, size: 32, offset: 20704)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !175, file: !176, line: 69, baseType: !250, size: 64, offset: 320)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !176, line: 138, size: 448, elements: !252)
!252 = !{!253, !257, !287, !289, !2987, !3017, !3021}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !251, file: !176, line: 139, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !188}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !251, file: !176, line: 140, baseType: !258, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !261, line: 230, size: 128, elements: !262)
!261 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!262 = !{!263, !279}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !260, file: !261, line: 231, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!267, !188, !272, !236}
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !136, line: 60, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !269, line: 73, baseType: !270)
!269 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !269, line: 15, baseType: !271)
!271 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !261, line: 30, size: 128, elements: !274)
!274 = !{!275, !276}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !273, file: !261, line: 31, baseType: !179, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !273, file: !261, line: 32, baseType: !277, size: 16, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !136, line: 19, baseType: !278)
!278 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !260, file: !261, line: 232, baseType: !280, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!267, !188, !272, !179, !283}
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !136, line: 55, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !269, line: 72, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !269, line: 16, baseType: !286)
!286 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !251, file: !176, line: 141, baseType: !288, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !251, file: !176, line: 142, baseType: !290, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !261, line: 84, size: 320, elements: !294)
!294 = !{!295, !296, !300, !2984, !2985}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !293, file: !261, line: 85, baseType: !179, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !293, file: !261, line: 86, baseType: !297, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!277, !188, !272, !142}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !293, file: !261, line: 88, baseType: !301, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!277, !188, !304, !142}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !261, line: 168, size: 448, elements: !306)
!306 = !{!307, !308, !309, !310, !2979, !2980}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !305, file: !261, line: 169, baseType: !273, size: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !305, file: !261, line: 170, baseType: !283, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !305, file: !261, line: 171, baseType: !137, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !305, file: !261, line: 172, baseType: !311, size: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!267, !314, !188, !304, !236, !489, !283}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !38, line: 916, size: 1856, align: 32, elements: !316)
!316 = !{!317, !335, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2962, !2963, !2972, !2973, !2974, !2975, !2976, !2977, !2978}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !315, file: !38, line: 920, baseType: !318, size: 128)
!318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !315, file: !38, line: 917, size: 128, elements: !319)
!319 = !{!320, !326}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !318, file: !38, line: 918, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !322, line: 58, size: 64, elements: !323)
!322 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!323 = !{!324}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !321, file: !322, line: 59, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !318, file: !38, line: 919, baseType: !327, size: 128, align: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !136, line: 216, size: 128, align: 64, elements: !328)
!328 = !{!329, !331}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !136, line: 217, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !327, file: !136, line: 218, baseType: !332, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !330}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !315, file: !38, line: 921, baseType: !336, size: 128, offset: 128)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !337, line: 8, size: 128, elements: !338)
!337 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!338 = !{!339, !343}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !336, file: !337, line: 9, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !342, line: 18, flags: DIFlagFwdDecl)
!342 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!343 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !336, file: !337, line: 10, baseType: !344, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !342, line: 89, size: 1536, elements: !346)
!346 = !{!347, !348, !358, !366, !367, !386, !2912, !2914, !2926, !2927, !2928, !2929, !2930, !2936, !2937, !2938}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !345, file: !342, line: 91, baseType: !7, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !345, file: !342, line: 92, baseType: !349, size: 32, offset: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !350, line: 277, baseType: !351)
!350 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !350, line: 277, size: 32, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !351, file: !350, line: 277, baseType: !354, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !350, line: 70, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !350, line: 65, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !355, file: !350, line: 66, baseType: !7, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !345, file: !342, line: 93, baseType: !359, size: 128, offset: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !360, line: 38, size: 128, elements: !361)
!360 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!361 = !{!362, !364}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !359, file: !360, line: 39, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !359, file: !360, line: 39, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !345, file: !342, line: 94, baseType: !344, size: 64, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !345, file: !342, line: 95, baseType: !368, size: 128, offset: 256)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !342, line: 47, size: 128, elements: !369)
!369 = !{!370, !382}
!370 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !342, line: 48, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !342, line: 48, size: 64, elements: !372)
!372 = !{!373, !378}
!373 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !342, line: 49, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !371, file: !342, line: 49, size: 64, elements: !375)
!375 = !{!376, !377}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !374, file: !342, line: 50, baseType: !149, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !374, file: !342, line: 50, baseType: !149, size: 32, offset: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !371, file: !342, line: 52, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !150, line: 23, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !152, line: 31, baseType: !381)
!381 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !368, file: !342, line: 54, baseType: !383, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!385 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !345, file: !342, line: 96, baseType: !387, size: 64, offset: 384)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !38, line: 610, size: 4224, elements: !389)
!389 = !{!390, !391, !392, !400, !407, !408, !556, !2623, !2624, !2625, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2888, !2896, !2897, !2898, !2908, !2909, !2910, !2911}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !388, file: !38, line: 611, baseType: !277, size: 16)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !388, file: !38, line: 612, baseType: !278, size: 16, offset: 16)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !388, file: !38, line: 613, baseType: !393, size: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !394, line: 23, baseType: !395)
!394 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 21, size: 32, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !395, file: !394, line: 22, baseType: !398, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !136, line: 32, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !269, line: 49, baseType: !7)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !388, file: !38, line: 614, baseType: !401, size: 32, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !394, line: 28, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 26, size: 32, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !402, file: !394, line: 27, baseType: !405, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !136, line: 33, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !269, line: 50, baseType: !7)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !388, file: !38, line: 615, baseType: !7, size: 32, offset: 96)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !388, file: !38, line: 622, baseType: !409, size: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !38, line: 1864, size: 1536, align: 512, elements: !412)
!412 = !{!413, !417, !430, !434, !440, !444, !450, !454, !458, !462, !466, !467, !473, !477, !503, !532, !536, !542, !547, !551, !552}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !411, file: !38, line: 1865, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!344, !387, !344, !7}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !411, file: !38, line: 1866, baseType: !418, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!179, !344, !387, !421}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !423, line: 10, size: 128, elements: !424)
!423 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!424 = !{!425, !429}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !422, file: !423, line: 11, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !137}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !422, file: !423, line: 12, baseType: !137, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !411, file: !38, line: 1867, baseType: !431, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!142, !387, !142}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !411, file: !38, line: 1868, baseType: !435, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!438, !387, !142}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !38, line: 581, flags: DIFlagFwdDecl)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !411, file: !38, line: 1870, baseType: !441, size: 64, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!142, !344, !236, !142}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !411, file: !38, line: 1872, baseType: !445, size: 64, offset: 320)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!142, !387, !344, !277, !448}
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !136, line: 30, baseType: !449)
!449 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !411, file: !38, line: 1873, baseType: !451, size: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!142, !344, !387, !344}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !411, file: !38, line: 1874, baseType: !455, size: 64, offset: 448)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!142, !387, !344}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !411, file: !38, line: 1875, baseType: !459, size: 64, offset: 512)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!142, !387, !344, !179}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !411, file: !38, line: 1876, baseType: !463, size: 64, offset: 576)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!142, !387, !344, !277}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !411, file: !38, line: 1877, baseType: !455, size: 64, offset: 640)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !411, file: !38, line: 1878, baseType: !468, size: 64, offset: 704)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!142, !387, !344, !277, !471}
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !136, line: 16, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !136, line: 13, baseType: !149)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !411, file: !38, line: 1879, baseType: !474, size: 64, offset: 768)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!142, !387, !344, !387, !344, !7}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !411, file: !38, line: 1881, baseType: !478, size: 64, offset: 832)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!142, !344, !481}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !38, line: 219, size: 640, elements: !483)
!483 = !{!484, !485, !486, !487, !488, !492, !500, !501, !502}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !482, file: !38, line: 220, baseType: !7, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !482, file: !38, line: 221, baseType: !277, size: 16, offset: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !482, file: !38, line: 222, baseType: !393, size: 32, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !482, file: !38, line: 223, baseType: !401, size: 32, offset: 96)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !482, file: !38, line: 224, baseType: !489, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !136, line: 46, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !269, line: 88, baseType: !491)
!491 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !482, file: !38, line: 225, baseType: !493, size: 128, offset: 192)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !494, line: 13, size: 128, elements: !495)
!494 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!495 = !{!496, !499}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !493, file: !494, line: 14, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !494, line: 8, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !152, line: 30, baseType: !491)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !493, file: !494, line: 15, baseType: !271, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !482, file: !38, line: 226, baseType: !493, size: 128, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !482, file: !38, line: 227, baseType: !493, size: 128, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !482, file: !38, line: 234, baseType: !314, size: 64, offset: 576)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !411, file: !38, line: 1882, baseType: !504, size: 64, offset: 896)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!142, !507, !509, !149, !7}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !511, line: 22, size: 1152, elements: !512)
!511 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!512 = !{!513, !514, !515, !516, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !510, file: !511, line: 23, baseType: !149, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !510, file: !511, line: 24, baseType: !277, size: 16, offset: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !510, file: !511, line: 25, baseType: !7, size: 32, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !510, file: !511, line: 26, baseType: !517, size: 32, offset: 96)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !136, line: 104, baseType: !149)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !510, file: !511, line: 27, baseType: !379, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !510, file: !511, line: 28, baseType: !379, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !510, file: !511, line: 37, baseType: !379, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !510, file: !511, line: 38, baseType: !471, size: 32, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !510, file: !511, line: 39, baseType: !471, size: 32, offset: 352)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !510, file: !511, line: 40, baseType: !393, size: 32, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !510, file: !511, line: 41, baseType: !401, size: 32, offset: 416)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !510, file: !511, line: 42, baseType: !489, size: 64, offset: 448)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !510, file: !511, line: 43, baseType: !493, size: 128, offset: 512)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !510, file: !511, line: 44, baseType: !493, size: 128, offset: 640)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !510, file: !511, line: 45, baseType: !493, size: 128, offset: 768)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !510, file: !511, line: 46, baseType: !493, size: 128, offset: 896)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !510, file: !511, line: 47, baseType: !379, size: 64, offset: 1024)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !510, file: !511, line: 48, baseType: !379, size: 64, offset: 1088)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !411, file: !38, line: 1883, baseType: !533, size: 64, offset: 960)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!267, !344, !236, !283}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !411, file: !38, line: 1884, baseType: !537, size: 64, offset: 1024)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!142, !387, !540, !379, !379}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !38, line: 50, flags: DIFlagFwdDecl)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !411, file: !38, line: 1886, baseType: !543, size: 64, offset: 1088)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!142, !387, !546, !142}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !411, file: !38, line: 1887, baseType: !548, size: 64, offset: 1152)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!142, !387, !344, !314, !7, !277}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !411, file: !38, line: 1890, baseType: !463, size: 64, offset: 1216)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !411, file: !38, line: 1891, baseType: !553, size: 64, offset: 1280)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!142, !387, !438, !142}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !388, file: !38, line: 623, baseType: !557, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !38, line: 1416, size: 9472, elements: !559)
!559 = !{!560, !561, !562, !563, !564, !565, !612, !2230, !2312, !2395, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2411, !2415, !2416, !2419, !2420, !2423, !2424, !2425, !2466, !2493, !2494, !2495, !2496, !2497, !2498, !2501, !2503, !2510, !2511, !2513, !2514, !2515, !2574, !2575, !2590, !2591, !2592, !2593, !2594, !2597, !2598, !2599, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !558, file: !38, line: 1417, baseType: !182, size: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !558, file: !38, line: 1418, baseType: !471, size: 32, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !558, file: !38, line: 1419, baseType: !385, size: 8, offset: 160)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !558, file: !38, line: 1420, baseType: !286, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !558, file: !38, line: 1421, baseType: !489, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !558, file: !38, line: 1422, baseType: !566, size: 64, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !38, line: 2228, size: 576, elements: !568)
!568 = !{!569, !570, !571, !578, !582, !586, !590, !591, !592, !602, !605, !606, !607, !609, !610, !611}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !567, file: !38, line: 2229, baseType: !179, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !567, file: !38, line: 2230, baseType: !142, size: 32, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !567, file: !38, line: 2238, baseType: !572, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!142, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !577, line: 28, flags: DIFlagFwdDecl)
!577 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!578 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !567, file: !38, line: 2239, baseType: !579, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !581)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !38, line: 70, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !567, file: !38, line: 2240, baseType: !583, size: 64, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!344, !566, !142, !179, !137}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !567, file: !38, line: 2242, baseType: !587, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !557}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !567, file: !38, line: 2243, baseType: !132, size: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !567, file: !38, line: 2244, baseType: !566, size: 64, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !567, file: !38, line: 2245, baseType: !593, size: 64, offset: 512)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !136, line: 182, size: 64, elements: !594)
!594 = !{!595}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !593, file: !136, line: 183, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !136, line: 186, size: 128, elements: !598)
!598 = !{!599, !600}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !597, file: !136, line: 187, baseType: !596, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !597, file: !136, line: 187, baseType: !601, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !567, file: !38, line: 2247, baseType: !603, offset: 576)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !604, line: 187, elements: !209)
!604 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !567, file: !38, line: 2248, baseType: !603, offset: 576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !567, file: !38, line: 2249, baseType: !603, offset: 576)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !567, file: !38, line: 2250, baseType: !608, offset: 576)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, elements: !237)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !567, file: !38, line: 2252, baseType: !603, offset: 576)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !567, file: !38, line: 2253, baseType: !603, offset: 576)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !567, file: !38, line: 2254, baseType: !603, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !558, file: !38, line: 1423, baseType: !613, size: 64, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !38, line: 1935, size: 1472, elements: !616)
!616 = !{!617, !621, !625, !626, !630, !636, !640, !641, !642, !646, !650, !651, !652, !653, !659, !664, !665, !672, !673, !674, !675, !2214, !2229}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !615, file: !38, line: 1936, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!387, !557}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !615, file: !38, line: 1937, baseType: !622, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !387}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !615, file: !38, line: 1938, baseType: !622, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !615, file: !38, line: 1940, baseType: !627, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !387, !142}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !615, file: !38, line: 1941, baseType: !631, size: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!142, !387, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !38, line: 289, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !615, file: !38, line: 1942, baseType: !637, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!142, !387}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !615, file: !38, line: 1943, baseType: !622, size: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !615, file: !38, line: 1944, baseType: !587, size: 64, offset: 448)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !615, file: !38, line: 1945, baseType: !643, size: 64, offset: 512)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!142, !557, !142}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !615, file: !38, line: 1946, baseType: !647, size: 64, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!142, !557}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !615, file: !38, line: 1947, baseType: !647, size: 64, offset: 640)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !615, file: !38, line: 1948, baseType: !647, size: 64, offset: 704)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !615, file: !38, line: 1949, baseType: !647, size: 64, offset: 768)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !615, file: !38, line: 1950, baseType: !654, size: 64, offset: 832)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!142, !344, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !38, line: 57, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !615, file: !38, line: 1951, baseType: !660, size: 64, offset: 896)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!142, !557, !663, !236}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !615, file: !38, line: 1952, baseType: !587, size: 64, offset: 960)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !615, file: !38, line: 1954, baseType: !666, size: 64, offset: 1024)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!142, !669, !344}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !671, line: 539, flags: DIFlagFwdDecl)
!671 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!672 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !615, file: !38, line: 1955, baseType: !666, size: 64, offset: 1088)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !615, file: !38, line: 1956, baseType: !666, size: 64, offset: 1152)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !615, file: !38, line: 1957, baseType: !666, size: 64, offset: 1216)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !615, file: !38, line: 1963, baseType: !676, size: 64, offset: 1280)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!142, !557, !679, !135}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !681, line: 68, size: 512, align: 128, elements: !682)
!681 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!682 = !{!683, !684, !2206, !2213}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !681, line: 69, baseType: !286, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, scope: !680, file: !681, line: 77, baseType: !685, size: 320, offset: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !680, file: !681, line: 77, size: 320, elements: !686)
!686 = !{!687, !874, !879, !907, !915, !921, !2198, !2205}
!687 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !681, line: 78, baseType: !688, size: 320)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !685, file: !681, line: 78, size: 320, elements: !689)
!689 = !{!690, !691, !872, !873}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !688, file: !681, line: 84, baseType: !182, size: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !688, file: !681, line: 86, baseType: !692, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !38, line: 451, size: 1216, align: 64, elements: !694)
!694 = !{!695, !696, !703, !704, !709, !724, !740, !741, !742, !743, !865, !866, !869, !870, !871}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !693, file: !38, line: 452, baseType: !387, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !693, file: !38, line: 453, baseType: !697, size: 128, offset: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !698, line: 292, size: 128, elements: !699)
!698 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!699 = !{!700, !701, !702}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !697, file: !698, line: 293, baseType: !195)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !697, file: !698, line: 295, baseType: !135, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !697, file: !698, line: 296, baseType: !137, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !693, file: !38, line: 454, baseType: !135, size: 32, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !693, file: !38, line: 455, baseType: !705, size: 32, offset: 224)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !136, line: 168, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 166, size: 32, elements: !707)
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !706, file: !136, line: 167, baseType: !142, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !693, file: !38, line: 460, baseType: !710, size: 128, offset: 256)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !711, line: 125, size: 128, elements: !712)
!711 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!712 = !{!713, !723}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !710, file: !711, line: 126, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !711, line: 31, size: 64, elements: !715)
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !714, file: !711, line: 32, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !711, line: 24, size: 192, align: 64, elements: !719)
!719 = !{!720, !721, !722}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !718, file: !711, line: 25, baseType: !286, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !718, file: !711, line: 26, baseType: !717, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !718, file: !711, line: 27, baseType: !717, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !710, file: !711, line: 127, baseType: !717, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !693, file: !38, line: 461, baseType: !725, size: 256, offset: 384)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !726, line: 35, size: 256, elements: !727)
!726 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!727 = !{!728, !736, !737, !739}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !725, file: !726, line: 36, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !730, line: 13, baseType: !731)
!730 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !136, line: 175, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 173, size: 64, elements: !733)
!733 = !{!734}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !732, file: !136, line: 174, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !150, line: 22, baseType: !498)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !725, file: !726, line: 42, baseType: !729, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !725, file: !726, line: 46, baseType: !738, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !196, line: 29, baseType: !203)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !725, file: !726, line: 47, baseType: !182, size: 128, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !693, file: !38, line: 462, baseType: !286, size: 64, offset: 640)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !693, file: !38, line: 463, baseType: !286, size: 64, offset: 704)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !693, file: !38, line: 464, baseType: !286, size: 64, offset: 768)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !693, file: !38, line: 465, baseType: !744, size: 64, offset: 832)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !38, line: 367, size: 1408, elements: !747)
!747 = !{!748, !752, !756, !760, !764, !768, !774, !780, !784, !789, !793, !797, !801, !829, !833, !839, !840, !841, !845, !850, !854, !861}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !746, file: !38, line: 368, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!142, !679, !634}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !746, file: !38, line: 369, baseType: !753, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!142, !314, !679}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !746, file: !38, line: 372, baseType: !757, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!142, !692, !634}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !746, file: !38, line: 375, baseType: !761, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!142, !679}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !746, file: !38, line: 381, baseType: !765, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!142, !314, !692, !185, !7}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !746, file: !38, line: 383, baseType: !769, size: 64, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !772}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !38, line: 290, flags: DIFlagFwdDecl)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !746, file: !38, line: 385, baseType: !775, size: 64, offset: 384)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!142, !314, !692, !489, !7, !7, !778, !779}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !746, file: !38, line: 388, baseType: !781, size: 64, offset: 448)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!142, !314, !692, !489, !7, !7, !679, !137}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !746, file: !38, line: 393, baseType: !785, size: 64, offset: 512)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!788, !692, !788}
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !136, line: 125, baseType: !379)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !746, file: !38, line: 394, baseType: !790, size: 64, offset: 576)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !679, !7, !7}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !746, file: !38, line: 395, baseType: !794, size: 64, offset: 640)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!142, !679, !135}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !746, file: !38, line: 396, baseType: !798, size: 64, offset: 704)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !679}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !746, file: !38, line: 397, baseType: !802, size: 64, offset: 768)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!267, !805, !827}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !38, line: 320, size: 384, elements: !807)
!807 = !{!808, !809, !810, !814, !815, !816, !819, !820}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !806, file: !38, line: 321, baseType: !314, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !806, file: !38, line: 326, baseType: !489, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !806, file: !38, line: 327, baseType: !811, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !805, !271, !271}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !806, file: !38, line: 328, baseType: !137, size: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !806, file: !38, line: 329, baseType: !142, size: 32, offset: 256)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !806, file: !38, line: 330, baseType: !817, size: 16, offset: 288)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !150, line: 19, baseType: !818)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !152, line: 24, baseType: !278)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !806, file: !38, line: 331, baseType: !817, size: 16, offset: 304)
!820 = !DIDerivedType(tag: DW_TAG_member, scope: !806, file: !38, line: 332, baseType: !821, size: 64, offset: 320)
!821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !806, file: !38, line: 332, size: 64, elements: !822)
!822 = !{!823, !824}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !821, file: !38, line: 333, baseType: !7, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !821, file: !38, line: 334, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !38, line: 334, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !38, line: 64, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !746, file: !38, line: 402, baseType: !830, size: 64, offset: 832)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!142, !692, !679, !679, !13}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !746, file: !38, line: 404, baseType: !834, size: 64, offset: 896)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!448, !679, !837}
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !838, line: 305, baseType: !7)
!838 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!839 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !746, file: !38, line: 405, baseType: !798, size: 64, offset: 960)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !746, file: !38, line: 406, baseType: !761, size: 64, offset: 1024)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !746, file: !38, line: 407, baseType: !842, size: 64, offset: 1088)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!142, !679, !286, !286}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !746, file: !38, line: 409, baseType: !846, size: 64, offset: 1152)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !679, !849, !849}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !746, file: !38, line: 410, baseType: !851, size: 64, offset: 1216)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!142, !692, !679}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !746, file: !38, line: 413, baseType: !855, size: 64, offset: 1280)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!142, !858, !314, !860}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !38, line: 61, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !746, file: !38, line: 415, baseType: !862, size: 64, offset: 1344)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !314}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !693, file: !38, line: 466, baseType: !286, size: 64, offset: 896)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !693, file: !38, line: 467, baseType: !867, size: 32, offset: 960)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !868, line: 8, baseType: !149)
!868 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!869 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !693, file: !38, line: 468, baseType: !195, offset: 992)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !693, file: !38, line: 469, baseType: !182, size: 128, offset: 1024)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !693, file: !38, line: 470, baseType: !137, size: 64, offset: 1152)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !688, file: !681, line: 87, baseType: !286, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !688, file: !681, line: 94, baseType: !286, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !681, line: 96, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !685, file: !681, line: 96, size: 64, elements: !876)
!876 = !{!877}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !875, file: !681, line: 101, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !136, line: 143, baseType: !379)
!879 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !681, line: 103, baseType: !880, size: 320)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !685, file: !681, line: 103, size: 320, elements: !881)
!881 = !{!882, !892, !895, !896}
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !681, line: 104, baseType: !883, size: 128)
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !681, line: 104, size: 128, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !883, file: !681, line: 105, baseType: !182, size: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !883, file: !681, line: 106, baseType: !887, size: 128)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !681, line: 106, size: 128, elements: !888)
!888 = !{!889, !890, !891}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !887, file: !681, line: 107, baseType: !679, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !887, file: !681, line: 109, baseType: !142, size: 32, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !887, file: !681, line: 110, baseType: !142, size: 32, offset: 96)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !880, file: !681, line: 117, baseType: !893, size: 64, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !681, line: 117, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !880, file: !681, line: 119, baseType: !137, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !681, line: 120, baseType: !897, size: 64, offset: 256)
!897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !681, line: 120, size: 64, elements: !898)
!898 = !{!899, !900, !901}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !897, file: !681, line: 121, baseType: !137, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !897, file: !681, line: 122, baseType: !286, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !897, file: !681, line: 123, baseType: !902, size: 32)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !897, file: !681, line: 123, size: 32, elements: !903)
!903 = !{!904, !905, !906}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !902, file: !681, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !902, file: !681, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !902, file: !681, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !681, line: 130, baseType: !908, size: 192)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !685, file: !681, line: 130, size: 192, elements: !909)
!909 = !{!910, !911, !912, !913, !914}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !908, file: !681, line: 131, baseType: !286, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !908, file: !681, line: 134, baseType: !385, size: 8, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !908, file: !681, line: 135, baseType: !385, size: 8, offset: 72)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !908, file: !681, line: 136, baseType: !705, size: 32, offset: 96)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !908, file: !681, line: 137, baseType: !7, size: 32, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !681, line: 139, baseType: !916, size: 256)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !685, file: !681, line: 139, size: 256, elements: !917)
!917 = !{!918, !919, !920}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !916, file: !681, line: 140, baseType: !286, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !916, file: !681, line: 141, baseType: !705, size: 32, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !916, file: !681, line: 143, baseType: !182, size: 128, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !681, line: 145, baseType: !922, size: 256)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !685, file: !681, line: 145, size: 256, elements: !923)
!923 = !{!924, !925, !927, !928, !2197}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !922, file: !681, line: 146, baseType: !286, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !922, file: !681, line: 147, baseType: !926, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !671, line: 509, baseType: !679)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !922, file: !681, line: 148, baseType: !286, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !681, line: 149, baseType: !929, size: 64, offset: 192)
!929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !922, file: !681, line: 149, size: 64, elements: !930)
!930 = !{!931, !2196}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !929, file: !681, line: 150, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !681, line: 388, size: 7296, elements: !934)
!934 = !{!935, !2192}
!935 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !681, line: 389, baseType: !936, size: 7296)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !933, file: !681, line: 389, size: 7296, elements: !937)
!937 = !{!938, !976, !977, !978, !982, !983, !984, !985, !986, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1027, !1035, !1038, !1084, !1085, !2176, !2177, !2180, !2181, !2182, !2185, !2186, !2187, !2190, !2191}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !936, file: !681, line: 390, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !681, line: 305, size: 1472, elements: !941)
!941 = !{!942, !943, !944, !945, !946, !947, !948, !949, !956, !957, !962, !963, !966, !970, !971, !972, !973, !974}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !940, file: !681, line: 308, baseType: !286, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !940, file: !681, line: 309, baseType: !286, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !940, file: !681, line: 313, baseType: !939, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !940, file: !681, line: 313, baseType: !939, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !940, file: !681, line: 315, baseType: !718, size: 192, align: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !940, file: !681, line: 323, baseType: !286, size: 64, offset: 448)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !940, file: !681, line: 327, baseType: !932, size: 64, offset: 512)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !940, file: !681, line: 333, baseType: !950, size: 64, offset: 576)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !671, line: 284, baseType: !951)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !671, line: 284, size: 64, elements: !952)
!952 = !{!953}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !951, file: !671, line: 284, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !955, line: 19, baseType: !286)
!955 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!956 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !940, file: !681, line: 334, baseType: !286, size: 64, offset: 640)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !940, file: !681, line: 343, baseType: !958, size: 256, offset: 704)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !681, line: 340, size: 256, elements: !959)
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !958, file: !681, line: 341, baseType: !718, size: 192, align: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !958, file: !681, line: 342, baseType: !286, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !940, file: !681, line: 351, baseType: !182, size: 128, offset: 960)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !940, file: !681, line: 353, baseType: !964, size: 64, offset: 1088)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !681, line: 353, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !940, file: !681, line: 356, baseType: !967, size: 64, offset: 1152)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !969)
!969 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !681, line: 356, flags: DIFlagFwdDecl)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !940, file: !681, line: 359, baseType: !286, size: 64, offset: 1216)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !940, file: !681, line: 361, baseType: !314, size: 64, offset: 1280)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !940, file: !681, line: 362, baseType: !137, size: 64, offset: 1344)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !940, file: !681, line: 365, baseType: !729, size: 64, offset: 1408)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !940, file: !681, line: 373, baseType: !975, offset: 1472)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !681, line: 296, elements: !209)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !936, file: !681, line: 391, baseType: !714, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !936, file: !681, line: 392, baseType: !379, size: 64, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !936, file: !681, line: 394, baseType: !979, size: 64, offset: 192)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!286, !314, !286, !286, !286, !286}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !936, file: !681, line: 398, baseType: !286, size: 64, offset: 256)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !936, file: !681, line: 399, baseType: !286, size: 64, offset: 320)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !936, file: !681, line: 405, baseType: !286, size: 64, offset: 384)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !936, file: !681, line: 406, baseType: !286, size: 64, offset: 448)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !936, file: !681, line: 407, baseType: !987, size: 64, offset: 512)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !671, line: 286, baseType: !989)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !671, line: 286, size: 64, elements: !990)
!990 = !{!991}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !989, file: !671, line: 286, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !955, line: 18, baseType: !286)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !936, file: !681, line: 416, baseType: !705, size: 32, offset: 576)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !936, file: !681, line: 428, baseType: !705, size: 32, offset: 608)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !936, file: !681, line: 437, baseType: !705, size: 32, offset: 640)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !936, file: !681, line: 447, baseType: !705, size: 32, offset: 672)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !936, file: !681, line: 450, baseType: !729, size: 64, offset: 704)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !936, file: !681, line: 452, baseType: !142, size: 32, offset: 768)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !936, file: !681, line: 454, baseType: !195, offset: 800)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !936, file: !681, line: 457, baseType: !725, size: 256, offset: 832)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !936, file: !681, line: 459, baseType: !182, size: 128, offset: 1088)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !936, file: !681, line: 466, baseType: !286, size: 64, offset: 1216)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !936, file: !681, line: 467, baseType: !286, size: 64, offset: 1280)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !936, file: !681, line: 469, baseType: !286, size: 64, offset: 1344)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !936, file: !681, line: 470, baseType: !286, size: 64, offset: 1408)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !936, file: !681, line: 471, baseType: !731, size: 64, offset: 1472)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !936, file: !681, line: 472, baseType: !286, size: 64, offset: 1536)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !936, file: !681, line: 473, baseType: !286, size: 64, offset: 1600)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !936, file: !681, line: 474, baseType: !286, size: 64, offset: 1664)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !936, file: !681, line: 475, baseType: !286, size: 64, offset: 1728)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !936, file: !681, line: 477, baseType: !195, offset: 1792)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !936, file: !681, line: 478, baseType: !286, size: 64, offset: 1792)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !936, file: !681, line: 478, baseType: !286, size: 64, offset: 1856)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !936, file: !681, line: 478, baseType: !286, size: 64, offset: 1920)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !936, file: !681, line: 478, baseType: !286, size: 64, offset: 1984)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !936, file: !681, line: 479, baseType: !286, size: 64, offset: 2048)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !936, file: !681, line: 479, baseType: !286, size: 64, offset: 2112)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !936, file: !681, line: 479, baseType: !286, size: 64, offset: 2176)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !936, file: !681, line: 480, baseType: !286, size: 64, offset: 2240)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !936, file: !681, line: 480, baseType: !286, size: 64, offset: 2304)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !936, file: !681, line: 480, baseType: !286, size: 64, offset: 2368)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !936, file: !681, line: 480, baseType: !286, size: 64, offset: 2432)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !936, file: !681, line: 482, baseType: !1024, size: 2816, offset: 2496)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 2816, elements: !1025)
!1025 = !{!1026}
!1026 = !DISubrange(count: 44)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !936, file: !681, line: 488, baseType: !1028, size: 256, offset: 5312)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1029, line: 60, size: 256, elements: !1030)
!1029 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1030 = !{!1031}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1028, file: !1029, line: 61, baseType: !1032, size: 256)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, size: 256, elements: !1033)
!1033 = !{!1034}
!1034 = !DISubrange(count: 4)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !936, file: !681, line: 490, baseType: !1036, size: 64, offset: 5568)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !681, line: 490, flags: DIFlagFwdDecl)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !936, file: !681, line: 493, baseType: !1039, size: 896, offset: 5632)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1040, line: 53, baseType: !1041)
!1040 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1040, line: 13, size: 896, elements: !1042)
!1042 = !{!1043, !1044, !1045, !1046, !1049, !1050, !1057, !1058, !1078, !1079, !1080}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1041, file: !1040, line: 18, baseType: !379, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1041, file: !1040, line: 28, baseType: !731, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1041, file: !1040, line: 31, baseType: !725, size: 256, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1041, file: !1040, line: 32, baseType: !1047, size: 64, offset: 384)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1040, line: 32, flags: DIFlagFwdDecl)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1041, file: !1040, line: 37, baseType: !278, size: 16, offset: 448)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1041, file: !1040, line: 40, baseType: !1051, size: 192, offset: 512)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1052, line: 53, size: 192, elements: !1053)
!1052 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1053 = !{!1054, !1055, !1056}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1051, file: !1052, line: 54, baseType: !729, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1051, file: !1052, line: 55, baseType: !195, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1051, file: !1052, line: 59, baseType: !182, size: 128, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1041, file: !1040, line: 41, baseType: !137, size: 64, offset: 704)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1041, file: !1040, line: 42, baseType: !1059, size: 64, offset: 768)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1061)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1062, line: 13, size: 896, elements: !1063)
!1062 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1063 = !{!1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1061, file: !1062, line: 14, baseType: !137, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1061, file: !1062, line: 15, baseType: !286, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1061, file: !1062, line: 17, baseType: !286, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1061, file: !1062, line: 17, baseType: !286, size: 64, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1061, file: !1062, line: 19, baseType: !271, size: 64, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1061, file: !1062, line: 21, baseType: !271, size: 64, offset: 320)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1061, file: !1062, line: 22, baseType: !271, size: 64, offset: 384)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1061, file: !1062, line: 23, baseType: !271, size: 64, offset: 448)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1061, file: !1062, line: 24, baseType: !271, size: 64, offset: 512)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1061, file: !1062, line: 25, baseType: !271, size: 64, offset: 576)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1061, file: !1062, line: 26, baseType: !271, size: 64, offset: 640)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1061, file: !1062, line: 27, baseType: !271, size: 64, offset: 704)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1061, file: !1062, line: 28, baseType: !271, size: 64, offset: 768)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1061, file: !1062, line: 29, baseType: !271, size: 64, offset: 832)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1041, file: !1040, line: 44, baseType: !705, size: 32, offset: 832)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1041, file: !1040, line: 50, baseType: !817, size: 16, offset: 864)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1041, file: !1040, line: 51, baseType: !1081, size: 16, offset: 880)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !150, line: 18, baseType: !1082)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !152, line: 23, baseType: !1083)
!1083 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !936, file: !681, line: 495, baseType: !286, size: 64, offset: 6528)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !936, file: !681, line: 497, baseType: !1086, size: 64, offset: 6592)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !681, line: 381, size: 384, elements: !1088)
!1088 = !{!1089, !1090, !2175}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1087, file: !681, line: 382, baseType: !705, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1087, file: !681, line: 383, baseType: !1091, size: 128, offset: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !681, line: 376, size: 128, elements: !1092)
!1092 = !{!1093, !2173}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1091, file: !681, line: 377, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1096, line: 640, size: 48640, elements: !1097)
!1096 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1097 = !{!1098, !1104, !1106, !1107, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1124, !1142, !1153, !1238, !1239, !1240, !1251, !1252, !1254, !1255, !1256, !1257, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1336, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1374, !1376, !1377, !1378, !1390, !1391, !1392, !1393, !1394, !1395, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1419, !1424, !1606, !1607, !1608, !1609, !1610, !1613, !1616, !1619, !1622, !1626, !1727, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1773, !1774, !1775, !1776, !1777, !1782, !1783, !1784, !1787, !1788, !1791, !1794, !1797, !1800, !1843, !1846, !1847, !1926, !1927, !1930, !1931, !1934, !1935, !1936, !1940, !1941, !1942, !1955, !1956, !1957, !1967, !1972, !1975, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1095, file: !1096, line: 646, baseType: !1099, size: 128)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1100, line: 56, size: 128, elements: !1101)
!1100 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1101 = !{!1102, !1103}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1099, file: !1100, line: 57, baseType: !286, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1099, file: !1100, line: 58, baseType: !149, size: 32, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1095, file: !1096, line: 649, baseType: !1105, size: 64, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !271)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1095, file: !1096, line: 657, baseType: !137, size: 64, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1095, file: !1096, line: 658, baseType: !1108, size: 32, offset: 256)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1109, line: 113, baseType: !1110)
!1109 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1109, line: 111, size: 32, elements: !1111)
!1111 = !{!1112}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1110, file: !1109, line: 112, baseType: !705, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1095, file: !1096, line: 660, baseType: !7, size: 32, offset: 288)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1095, file: !1096, line: 661, baseType: !7, size: 32, offset: 320)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1095, file: !1096, line: 684, baseType: !142, size: 32, offset: 352)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1095, file: !1096, line: 686, baseType: !142, size: 32, offset: 384)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1095, file: !1096, line: 687, baseType: !142, size: 32, offset: 416)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1095, file: !1096, line: 688, baseType: !142, size: 32, offset: 448)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1095, file: !1096, line: 689, baseType: !7, size: 32, offset: 480)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1095, file: !1096, line: 691, baseType: !1121, size: 64, offset: 512)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1123)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1096, line: 691, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1095, file: !1096, line: 692, baseType: !1125, size: 832, offset: 576)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1096, line: 451, size: 832, elements: !1126)
!1126 = !{!1127, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1125, file: !1096, line: 453, baseType: !1128, size: 128)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1096, line: 325, size: 128, elements: !1129)
!1129 = !{!1130, !1131}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1128, file: !1096, line: 326, baseType: !286, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1128, file: !1096, line: 327, baseType: !149, size: 32, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1125, file: !1096, line: 454, baseType: !718, size: 192, align: 64, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1125, file: !1096, line: 455, baseType: !182, size: 128, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1125, file: !1096, line: 456, baseType: !7, size: 32, offset: 448)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1125, file: !1096, line: 458, baseType: !379, size: 64, offset: 512)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1125, file: !1096, line: 459, baseType: !379, size: 64, offset: 576)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1125, file: !1096, line: 460, baseType: !379, size: 64, offset: 640)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1125, file: !1096, line: 461, baseType: !379, size: 64, offset: 704)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1125, file: !1096, line: 463, baseType: !379, size: 64, offset: 768)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1125, file: !1096, line: 465, baseType: !1141, offset: 832)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1096, line: 415, elements: !209)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1095, file: !1096, line: 693, baseType: !1143, size: 384, offset: 1408)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1096, line: 489, size: 384, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1148, !1149, !1150, !1151}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1143, file: !1096, line: 490, baseType: !182, size: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1143, file: !1096, line: 491, baseType: !286, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1143, file: !1096, line: 492, baseType: !286, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1143, file: !1096, line: 493, baseType: !7, size: 32, offset: 256)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1143, file: !1096, line: 494, baseType: !278, size: 16, offset: 288)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1143, file: !1096, line: 495, baseType: !278, size: 16, offset: 304)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1143, file: !1096, line: 497, baseType: !1152, size: 64, offset: 320)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1095, file: !1096, line: 697, baseType: !1154, size: 1792, offset: 1792)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1096, line: 507, size: 1792, elements: !1155)
!1155 = !{!1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1235, !1236}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1154, file: !1096, line: 508, baseType: !718, size: 192, align: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1154, file: !1096, line: 515, baseType: !379, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1154, file: !1096, line: 516, baseType: !379, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1154, file: !1096, line: 517, baseType: !379, size: 64, offset: 320)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1154, file: !1096, line: 518, baseType: !379, size: 64, offset: 384)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1154, file: !1096, line: 519, baseType: !379, size: 64, offset: 448)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1154, file: !1096, line: 526, baseType: !735, size: 64, offset: 512)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1154, file: !1096, line: 527, baseType: !379, size: 64, offset: 576)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1154, file: !1096, line: 528, baseType: !7, size: 32, offset: 640)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1154, file: !1096, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1154, file: !1096, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1154, file: !1096, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1154, file: !1096, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1154, file: !1096, line: 563, baseType: !1170, size: 512, offset: 704)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !21, line: 118, size: 512, elements: !1171)
!1171 = !{!1172, !1180, !1181, !1186, !1229, !1232, !1233, !1234}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1170, file: !21, line: 119, baseType: !1173, size: 256)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1174, line: 9, size: 256, elements: !1175)
!1174 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1175 = !{!1176, !1177}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1173, file: !1174, line: 10, baseType: !718, size: 192, align: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1173, file: !1174, line: 11, baseType: !1178, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1179, line: 29, baseType: !735)
!1179 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1170, file: !21, line: 120, baseType: !1178, size: 64, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1170, file: !21, line: 121, baseType: !1182, size: 64, offset: 320)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!20, !1185}
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1170, file: !21, line: 122, baseType: !1187, size: 64, offset: 384)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !21, line: 159, size: 512, align: 512, elements: !1189)
!1189 = !{!1190, !1210, !1211, !1214, !1219, !1220, !1224, !1228}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1188, file: !21, line: 160, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !21, line: 214, size: 4608, align: 512, elements: !1193)
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1192, file: !21, line: 215, baseType: !738)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1192, file: !21, line: 216, baseType: !7, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1192, file: !21, line: 217, baseType: !7, size: 32, offset: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1192, file: !21, line: 218, baseType: !7, size: 32, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1192, file: !21, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1192, file: !21, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1192, file: !21, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1192, file: !21, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1192, file: !21, line: 233, baseType: !1178, size: 64, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1192, file: !21, line: 234, baseType: !1185, size: 64, offset: 192)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1192, file: !21, line: 235, baseType: !1178, size: 64, offset: 256)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1192, file: !21, line: 236, baseType: !1185, size: 64, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1192, file: !21, line: 237, baseType: !1207, size: 4096, offset: 512)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1188, size: 4096, elements: !1208)
!1208 = !{!1209}
!1209 = !DISubrange(count: 8)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1188, file: !21, line: 161, baseType: !7, size: 32, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1188, file: !21, line: 162, baseType: !1212, size: 32, offset: 96)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !136, line: 27, baseType: !1213)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !269, line: 96, baseType: !142)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1188, file: !21, line: 163, baseType: !1215, size: 32, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !350, line: 276, baseType: !1216)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !350, line: 276, size: 32, elements: !1217)
!1217 = !{!1218}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1216, file: !350, line: 276, baseType: !354, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1188, file: !21, line: 164, baseType: !1185, size: 64, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1188, file: !21, line: 165, baseType: !1221, size: 128, offset: 256)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1174, line: 14, size: 128, elements: !1222)
!1222 = !{!1223}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1221, file: !1174, line: 15, baseType: !710, size: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1188, file: !21, line: 166, baseType: !1225, size: 64, offset: 384)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!1178}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1188, file: !21, line: 167, baseType: !1178, size: 64, offset: 448)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1170, file: !21, line: 123, baseType: !1230, size: 8, offset: 448)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !150, line: 17, baseType: !1231)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !152, line: 21, baseType: !385)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1170, file: !21, line: 124, baseType: !1230, size: 8, offset: 456)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1170, file: !21, line: 125, baseType: !1230, size: 8, offset: 464)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1170, file: !21, line: 126, baseType: !1230, size: 8, offset: 472)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1154, file: !1096, line: 572, baseType: !1170, size: 512, offset: 1216)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1154, file: !1096, line: 580, baseType: !1237, size: 64, offset: 1728)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1095, file: !1096, line: 721, baseType: !7, size: 32, offset: 3584)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1095, file: !1096, line: 722, baseType: !142, size: 32, offset: 3616)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1095, file: !1096, line: 723, baseType: !1241, size: 64, offset: 3648)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1243)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1244, line: 17, baseType: !1245)
!1244 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1244, line: 17, size: 64, elements: !1246)
!1246 = !{!1247}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1245, file: !1244, line: 17, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 64, elements: !1249)
!1249 = !{!1250}
!1250 = !DISubrange(count: 1)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1095, file: !1096, line: 724, baseType: !1243, size: 64, offset: 3712)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1095, file: !1096, line: 749, baseType: !1253, offset: 3776)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1096, line: 290, elements: !209)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1095, file: !1096, line: 751, baseType: !182, size: 128, offset: 3776)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1095, file: !1096, line: 757, baseType: !932, size: 64, offset: 3904)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1095, file: !1096, line: 758, baseType: !932, size: 64, offset: 3968)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1095, file: !1096, line: 761, baseType: !1258, size: 320, offset: 4032)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1029, line: 34, size: 320, elements: !1259)
!1259 = !{!1260, !1261}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1258, file: !1029, line: 35, baseType: !379, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1258, file: !1029, line: 36, baseType: !1262, size: 256, offset: 64)
!1262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !939, size: 256, elements: !1033)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1095, file: !1096, line: 766, baseType: !142, size: 32, offset: 4352)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1095, file: !1096, line: 767, baseType: !142, size: 32, offset: 4384)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1095, file: !1096, line: 768, baseType: !142, size: 32, offset: 4416)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1095, file: !1096, line: 770, baseType: !142, size: 32, offset: 4448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1095, file: !1096, line: 772, baseType: !286, size: 64, offset: 4480)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1095, file: !1096, line: 775, baseType: !7, size: 32, offset: 4544)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1095, file: !1096, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1095, file: !1096, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1095, file: !1096, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1095, file: !1096, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1095, file: !1096, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1095, file: !1096, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1095, file: !1096, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1095, file: !1096, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1095, file: !1096, line: 831, baseType: !286, size: 64, offset: 4672)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1095, file: !1096, line: 833, baseType: !1279, size: 384, offset: 4736)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !26, line: 25, size: 384, elements: !1280)
!1280 = !{!1281, !1286}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1279, file: !26, line: 26, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!271, !1285}
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, scope: !1279, file: !26, line: 27, baseType: !1287, size: 320, offset: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1279, file: !26, line: 27, size: 320, elements: !1288)
!1288 = !{!1289, !1299, !1326}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1287, file: !26, line: 36, baseType: !1290, size: 320)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1287, file: !26, line: 29, size: 320, elements: !1291)
!1291 = !{!1292, !1294, !1295, !1296, !1297, !1298}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1290, file: !26, line: 30, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1290, file: !26, line: 31, baseType: !149, size: 32, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1290, file: !26, line: 32, baseType: !149, size: 32, offset: 96)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1290, file: !26, line: 33, baseType: !149, size: 32, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1290, file: !26, line: 34, baseType: !379, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1290, file: !26, line: 35, baseType: !1293, size: 64, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1287, file: !26, line: 46, baseType: !1300, size: 192)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1287, file: !26, line: 38, size: 192, elements: !1301)
!1301 = !{!1302, !1303, !1304, !1325}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1300, file: !26, line: 39, baseType: !1212, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1300, file: !26, line: 40, baseType: !25, size: 32, offset: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, scope: !1300, file: !26, line: 41, baseType: !1305, size: 64, offset: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1300, file: !26, line: 41, size: 64, elements: !1306)
!1306 = !{!1307, !1315}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1305, file: !26, line: 42, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1310, line: 7, size: 128, elements: !1311)
!1310 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1311 = !{!1312, !1314}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1309, file: !1310, line: 8, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !269, line: 93, baseType: !491)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1309, file: !1310, line: 9, baseType: !491, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1305, file: !26, line: 43, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1318, line: 7, size: 64, elements: !1319)
!1318 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1319 = !{!1320, !1324}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1317, file: !1318, line: 8, baseType: !1321, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1318, line: 5, baseType: !1322)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !150, line: 20, baseType: !1323)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !152, line: 26, baseType: !142)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1317, file: !1318, line: 9, baseType: !1322, size: 32, offset: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1300, file: !26, line: 45, baseType: !379, size: 64, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1287, file: !26, line: 54, baseType: !1327, size: 256)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1287, file: !26, line: 48, size: 256, elements: !1328)
!1328 = !{!1329, !1332, !1333, !1334, !1335}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1327, file: !26, line: 49, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !26, line: 14, flags: DIFlagFwdDecl)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1327, file: !26, line: 50, baseType: !142, size: 32, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1327, file: !26, line: 51, baseType: !142, size: 32, offset: 96)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1327, file: !26, line: 52, baseType: !286, size: 64, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1327, file: !26, line: 53, baseType: !286, size: 64, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1095, file: !1096, line: 835, baseType: !1337, size: 32, offset: 5120)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !136, line: 22, baseType: !1338)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !269, line: 28, baseType: !142)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1095, file: !1096, line: 836, baseType: !1337, size: 32, offset: 5152)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1095, file: !1096, line: 840, baseType: !286, size: 64, offset: 5184)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1095, file: !1096, line: 849, baseType: !1094, size: 64, offset: 5248)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1095, file: !1096, line: 852, baseType: !1094, size: 64, offset: 5312)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1095, file: !1096, line: 857, baseType: !182, size: 128, offset: 5376)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1095, file: !1096, line: 858, baseType: !182, size: 128, offset: 5504)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1095, file: !1096, line: 859, baseType: !1094, size: 64, offset: 5632)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1095, file: !1096, line: 867, baseType: !182, size: 128, offset: 5696)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1095, file: !1096, line: 868, baseType: !182, size: 128, offset: 5824)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1095, file: !1096, line: 871, baseType: !1349, size: 64, offset: 5952)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !47, line: 59, size: 768, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1355, !1357, !1358, !1365, !1366}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1350, file: !47, line: 61, baseType: !1108, size: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1350, file: !47, line: 62, baseType: !7, size: 32, offset: 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1350, file: !47, line: 63, baseType: !195, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1350, file: !47, line: 65, baseType: !1356, size: 256, offset: 64)
!1356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !593, size: 256, elements: !1033)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1350, file: !47, line: 66, baseType: !593, size: 64, offset: 320)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1350, file: !47, line: 68, baseType: !1359, size: 128, offset: 384)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1360, line: 40, baseType: !1361)
!1360 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1360, line: 36, size: 128, elements: !1362)
!1362 = !{!1363, !1364}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1361, file: !1360, line: 37, baseType: !195)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1361, file: !1360, line: 38, baseType: !182, size: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1350, file: !47, line: 69, baseType: !327, size: 128, align: 64, offset: 512)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1350, file: !47, line: 70, baseType: !1367, size: 128, offset: 640)
!1367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1368, size: 128, elements: !1249)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !47, line: 54, size: 128, elements: !1369)
!1369 = !{!1370, !1371}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1368, file: !47, line: 55, baseType: !142, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1368, file: !47, line: 56, baseType: !1372, size: 64, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !47, line: 56, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1095, file: !1096, line: 872, baseType: !1375, size: 512, offset: 6016)
!1375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, size: 512, elements: !1033)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1095, file: !1096, line: 873, baseType: !182, size: 128, offset: 6528)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1095, file: !1096, line: 874, baseType: !182, size: 128, offset: 6656)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1095, file: !1096, line: 876, baseType: !1379, size: 64, offset: 6784)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1381, line: 26, size: 192, elements: !1382)
!1381 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1382 = !{!1383, !1384}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1380, file: !1381, line: 27, baseType: !7, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1380, file: !1381, line: 28, baseType: !1385, size: 128, offset: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1386, line: 43, size: 128, elements: !1387)
!1386 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1387 = !{!1388, !1389}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1385, file: !1386, line: 44, baseType: !738)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1385, file: !1386, line: 45, baseType: !182, size: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1095, file: !1096, line: 879, baseType: !663, size: 64, offset: 6848)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1095, file: !1096, line: 882, baseType: !663, size: 64, offset: 6912)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1095, file: !1096, line: 884, baseType: !379, size: 64, offset: 6976)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1095, file: !1096, line: 885, baseType: !379, size: 64, offset: 7040)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1095, file: !1096, line: 890, baseType: !379, size: 64, offset: 7104)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1095, file: !1096, line: 891, baseType: !1396, size: 128, offset: 7168)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1096, line: 242, size: 128, elements: !1397)
!1397 = !{!1398, !1399, !1400}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1396, file: !1096, line: 244, baseType: !379, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1396, file: !1096, line: 245, baseType: !379, size: 64, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1396, file: !1096, line: 246, baseType: !738, offset: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1095, file: !1096, line: 900, baseType: !286, size: 64, offset: 7296)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1095, file: !1096, line: 901, baseType: !286, size: 64, offset: 7360)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1095, file: !1096, line: 904, baseType: !379, size: 64, offset: 7424)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1095, file: !1096, line: 907, baseType: !379, size: 64, offset: 7488)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1095, file: !1096, line: 910, baseType: !286, size: 64, offset: 7552)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1095, file: !1096, line: 911, baseType: !286, size: 64, offset: 7616)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1095, file: !1096, line: 914, baseType: !1408, size: 640, offset: 7680)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1409, line: 123, size: 640, elements: !1410)
!1409 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1410 = !{!1411, !1417, !1418}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1408, file: !1409, line: 124, baseType: !1412, size: 576)
!1412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1413, size: 576, elements: !237)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1409, line: 108, size: 192, elements: !1414)
!1414 = !{!1415, !1416}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1413, file: !1409, line: 109, baseType: !379, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1413, file: !1409, line: 110, baseType: !1221, size: 128, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1408, file: !1409, line: 125, baseType: !7, size: 32, offset: 576)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1408, file: !1409, line: 126, baseType: !7, size: 32, offset: 608)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1095, file: !1096, line: 917, baseType: !1420, size: 192, offset: 8320)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1409, line: 134, size: 192, elements: !1421)
!1421 = !{!1422, !1423}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1420, file: !1409, line: 135, baseType: !327, size: 128, align: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1420, file: !1409, line: 136, baseType: !7, size: 32, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1095, file: !1096, line: 923, baseType: !1425, size: 64, offset: 8512)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1427)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1428, line: 111, size: 1280, elements: !1429)
!1428 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1429 = !{!1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1447, !1448, !1449, !1450, !1451, !1452, !1559, !1560, !1561, !1562, !1588, !1591, !1601}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1427, file: !1428, line: 112, baseType: !705, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1427, file: !1428, line: 120, baseType: !393, size: 32, offset: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1427, file: !1428, line: 121, baseType: !401, size: 32, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1427, file: !1428, line: 122, baseType: !393, size: 32, offset: 96)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1427, file: !1428, line: 123, baseType: !401, size: 32, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1427, file: !1428, line: 124, baseType: !393, size: 32, offset: 160)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1427, file: !1428, line: 125, baseType: !401, size: 32, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1427, file: !1428, line: 126, baseType: !393, size: 32, offset: 224)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1427, file: !1428, line: 127, baseType: !401, size: 32, offset: 256)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1427, file: !1428, line: 128, baseType: !7, size: 32, offset: 288)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1427, file: !1428, line: 129, baseType: !1441, size: 64, offset: 320)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1442, line: 26, baseType: !1443)
!1442 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1442, line: 24, size: 64, elements: !1444)
!1444 = !{!1445}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1443, file: !1442, line: 25, baseType: !1446, size: 64)
!1446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 64, elements: !163)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1427, file: !1428, line: 130, baseType: !1441, size: 64, offset: 384)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1427, file: !1428, line: 131, baseType: !1441, size: 64, offset: 448)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1427, file: !1428, line: 132, baseType: !1441, size: 64, offset: 512)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1427, file: !1428, line: 133, baseType: !1441, size: 64, offset: 576)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1427, file: !1428, line: 135, baseType: !385, size: 8, offset: 640)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1427, file: !1428, line: 137, baseType: !1453, size: 64, offset: 704)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1455, line: 189, size: 1664, elements: !1456)
!1455 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1456 = !{!1457, !1458, !1461, !1466, !1467, !1470, !1471, !1476, !1477, !1478, !1479, !1481, !1482, !1483, !1484, !1485, !1523, !1544}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1454, file: !1455, line: 190, baseType: !1108, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1454, file: !1455, line: 191, baseType: !1459, size: 32, offset: 32)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1455, line: 28, baseType: !1460)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !136, line: 98, baseType: !1322)
!1461 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !1455, line: 192, baseType: !1462, size: 192, offset: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !1455, line: 192, size: 192, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1462, file: !1455, line: 193, baseType: !182, size: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1462, file: !1455, line: 194, baseType: !718, size: 192, align: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1454, file: !1455, line: 199, baseType: !725, size: 256, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1454, file: !1455, line: 200, baseType: !1468, size: 64, offset: 512)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1455, line: 200, flags: DIFlagFwdDecl)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1454, file: !1455, line: 201, baseType: !137, size: 64, offset: 576)
!1471 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !1455, line: 202, baseType: !1472, size: 64, offset: 640)
!1472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !1455, line: 202, size: 64, elements: !1473)
!1473 = !{!1474, !1475}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1472, file: !1455, line: 203, baseType: !497, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1472, file: !1455, line: 204, baseType: !497, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1454, file: !1455, line: 206, baseType: !497, size: 64, offset: 704)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1454, file: !1455, line: 207, baseType: !393, size: 32, offset: 768)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1454, file: !1455, line: 208, baseType: !401, size: 32, offset: 800)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1454, file: !1455, line: 209, baseType: !1480, size: 32, offset: 832)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1455, line: 31, baseType: !517)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1454, file: !1455, line: 210, baseType: !278, size: 16, offset: 864)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1454, file: !1455, line: 211, baseType: !278, size: 16, offset: 880)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1454, file: !1455, line: 215, baseType: !1083, size: 16, offset: 896)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1454, file: !1455, line: 222, baseType: !286, size: 64, offset: 960)
!1485 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !1455, line: 239, baseType: !1486, size: 320, offset: 1024)
!1486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !1455, line: 239, size: 320, elements: !1487)
!1487 = !{!1488, !1515}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1486, file: !1455, line: 240, baseType: !1489, size: 320)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1455, line: 108, size: 320, elements: !1490)
!1490 = !{!1491, !1492, !1504, !1507, !1514}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1489, file: !1455, line: 110, baseType: !286, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, scope: !1489, file: !1455, line: 111, baseType: !1493, size: 64, offset: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1489, file: !1455, line: 111, size: 64, elements: !1494)
!1494 = !{!1495, !1503}
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !1455, line: 112, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1493, file: !1455, line: 112, size: 64, elements: !1497)
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1496, file: !1455, line: 114, baseType: !817, size: 16)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1496, file: !1455, line: 115, baseType: !1500, size: 48, offset: 16)
!1500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 48, elements: !1501)
!1501 = !{!1502}
!1502 = !DISubrange(count: 6)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1493, file: !1455, line: 121, baseType: !286, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1489, file: !1455, line: 123, baseType: !1505, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1455, line: 96, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1489, file: !1455, line: 124, baseType: !1508, size: 64, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1455, line: 102, size: 192, elements: !1510)
!1510 = !{!1511, !1512, !1513}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1509, file: !1455, line: 103, baseType: !327, size: 128, align: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1509, file: !1455, line: 104, baseType: !1108, size: 32, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1509, file: !1455, line: 105, baseType: !448, size: 8, offset: 160)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1489, file: !1455, line: 125, baseType: !179, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1486, file: !1455, line: 241, baseType: !1516, size: 320)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1486, file: !1455, line: 241, size: 320, elements: !1517)
!1517 = !{!1518, !1519, !1520, !1521, !1522}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1516, file: !1455, line: 242, baseType: !286, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1516, file: !1455, line: 243, baseType: !286, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1516, file: !1455, line: 244, baseType: !1505, size: 64, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1516, file: !1455, line: 245, baseType: !1508, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1516, file: !1455, line: 246, baseType: !236, size: 64, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !1455, line: 254, baseType: !1524, size: 256, offset: 1344)
!1524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !1455, line: 254, size: 256, elements: !1525)
!1525 = !{!1526, !1532}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1524, file: !1455, line: 255, baseType: !1527, size: 256)
!1527 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1455, line: 128, size: 256, elements: !1528)
!1528 = !{!1529, !1530}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1527, file: !1455, line: 129, baseType: !137, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1527, file: !1455, line: 130, baseType: !1531, size: 256)
!1531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 256, elements: !1033)
!1532 = !DIDerivedType(tag: DW_TAG_member, scope: !1524, file: !1455, line: 256, baseType: !1533, size: 256)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1524, file: !1455, line: 256, size: 256, elements: !1534)
!1534 = !{!1535, !1536}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1533, file: !1455, line: 258, baseType: !182, size: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1533, file: !1455, line: 259, baseType: !1537, size: 128, offset: 128)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1538, line: 22, size: 128, elements: !1539)
!1538 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1539 = !{!1540, !1543}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1537, file: !1538, line: 23, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1538, line: 23, flags: DIFlagFwdDecl)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1537, file: !1538, line: 24, baseType: !286, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1454, file: !1455, line: 274, baseType: !1545, size: 64, offset: 1600)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1455, line: 170, size: 192, elements: !1547)
!1547 = !{!1548, !1557, !1558}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1546, file: !1455, line: 171, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1455, line: 165, baseType: !1550)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!142, !1453, !1553, !1555, !1453}
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1506)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1527)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1546, file: !1455, line: 172, baseType: !1453, size: 64, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1546, file: !1455, line: 173, baseType: !1505, size: 64, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1427, file: !1428, line: 138, baseType: !1453, size: 64, offset: 768)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1427, file: !1428, line: 139, baseType: !1453, size: 64, offset: 832)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1427, file: !1428, line: 140, baseType: !1453, size: 64, offset: 896)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1427, file: !1428, line: 145, baseType: !1563, size: 64, offset: 960)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1565, line: 13, size: 896, elements: !1566)
!1565 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1566 = !{!1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1564, file: !1565, line: 14, baseType: !1108, size: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1564, file: !1565, line: 15, baseType: !705, size: 32, offset: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1564, file: !1565, line: 16, baseType: !705, size: 32, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1564, file: !1565, line: 21, baseType: !729, size: 64, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1564, file: !1565, line: 27, baseType: !286, size: 64, offset: 192)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1564, file: !1565, line: 28, baseType: !286, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1564, file: !1565, line: 29, baseType: !729, size: 64, offset: 320)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1564, file: !1565, line: 32, baseType: !597, size: 128, offset: 384)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1564, file: !1565, line: 33, baseType: !393, size: 32, offset: 512)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1564, file: !1565, line: 37, baseType: !729, size: 64, offset: 576)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1564, file: !1565, line: 44, baseType: !1578, size: 256, offset: 640)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1579, line: 15, size: 256, elements: !1580)
!1579 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1580 = !{!1581, !1582, !1583, !1584, !1585, !1586, !1587}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1578, file: !1579, line: 16, baseType: !738)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1578, file: !1579, line: 18, baseType: !142, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1578, file: !1579, line: 19, baseType: !142, size: 32, offset: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1578, file: !1579, line: 20, baseType: !142, size: 32, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1578, file: !1579, line: 21, baseType: !142, size: 32, offset: 96)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1578, file: !1579, line: 22, baseType: !286, size: 64, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1578, file: !1579, line: 23, baseType: !286, size: 64, offset: 192)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1427, file: !1428, line: 146, baseType: !1589, size: 64, offset: 1024)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !681, line: 516, flags: DIFlagFwdDecl)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1427, file: !1428, line: 147, baseType: !1592, size: 64, offset: 1088)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1428, line: 25, size: 64, elements: !1594)
!1594 = !{!1595, !1596, !1597}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1593, file: !1428, line: 26, baseType: !705, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1593, file: !1428, line: 27, baseType: !142, size: 32, offset: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1593, file: !1428, line: 28, baseType: !1598, offset: 64)
!1598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, elements: !1599)
!1599 = !{!1600}
!1600 = !DISubrange(count: 0)
!1601 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !1428, line: 149, baseType: !1602, size: 128, offset: 1152)
!1602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1427, file: !1428, line: 149, size: 128, elements: !1603)
!1603 = !{!1604, !1605}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1602, file: !1428, line: 150, baseType: !142, size: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1602, file: !1428, line: 151, baseType: !327, size: 128, align: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1095, file: !1096, line: 926, baseType: !1425, size: 64, offset: 8576)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1095, file: !1096, line: 929, baseType: !1425, size: 64, offset: 8640)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1095, file: !1096, line: 933, baseType: !1453, size: 64, offset: 8704)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1095, file: !1096, line: 943, baseType: !144, size: 128, offset: 8768)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1095, file: !1096, line: 945, baseType: !1611, size: 64, offset: 8896)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1096, line: 49, flags: DIFlagFwdDecl)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1095, file: !1096, line: 956, baseType: !1614, size: 64, offset: 8960)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1096, line: 45, flags: DIFlagFwdDecl)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1095, file: !1096, line: 959, baseType: !1617, size: 64, offset: 9024)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1096, line: 959, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1095, file: !1096, line: 962, baseType: !1620, size: 64, offset: 9088)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1096, line: 66, flags: DIFlagFwdDecl)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1095, file: !1096, line: 966, baseType: !1623, size: 64, offset: 9152)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1625, line: 35, flags: DIFlagFwdDecl)
!1625 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1095, file: !1096, line: 969, baseType: !1627, size: 64, offset: 9216)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1629, line: 82, size: 7296, elements: !1630)
!1629 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1630 = !{!1631, !1632, !1633, !1634, !1635, !1636, !1637, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1666, !1675, !1676, !1678, !1679, !1680, !1683, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1713, !1714, !1721, !1722, !1723, !1724, !1725, !1726}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1628, file: !1629, line: 83, baseType: !1108, size: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1628, file: !1629, line: 84, baseType: !705, size: 32, offset: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1628, file: !1629, line: 85, baseType: !142, size: 32, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1628, file: !1629, line: 86, baseType: !182, size: 128, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1628, file: !1629, line: 88, baseType: !1359, size: 128, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1628, file: !1629, line: 91, baseType: !1094, size: 64, offset: 384)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1628, file: !1629, line: 94, baseType: !1638, size: 192, offset: 448)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1639, line: 30, size: 192, elements: !1640)
!1639 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1640 = !{!1641, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1638, file: !1639, line: 31, baseType: !182, size: 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1638, file: !1639, line: 32, baseType: !1643, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1644, line: 25, baseType: !1645)
!1644 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1644, line: 23, size: 64, elements: !1646)
!1646 = !{!1647}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1645, file: !1644, line: 24, baseType: !1248, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1628, file: !1629, line: 97, baseType: !593, size: 64, offset: 640)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1628, file: !1629, line: 100, baseType: !142, size: 32, offset: 704)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1628, file: !1629, line: 106, baseType: !142, size: 32, offset: 736)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1628, file: !1629, line: 107, baseType: !1094, size: 64, offset: 768)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1628, file: !1629, line: 110, baseType: !142, size: 32, offset: 832)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1628, file: !1629, line: 111, baseType: !7, size: 32, offset: 864)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1628, file: !1629, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1628, file: !1629, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1628, file: !1629, line: 128, baseType: !142, size: 32, offset: 928)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1628, file: !1629, line: 129, baseType: !182, size: 128, offset: 960)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1628, file: !1629, line: 132, baseType: !1170, size: 512, offset: 1088)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1628, file: !1629, line: 133, baseType: !1178, size: 64, offset: 1600)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1628, file: !1629, line: 140, baseType: !1661, size: 256, offset: 1664)
!1661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1662, size: 256, elements: !163)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1629, line: 38, size: 128, elements: !1663)
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1662, file: !1629, line: 39, baseType: !379, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1662, file: !1629, line: 40, baseType: !379, size: 64, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1628, file: !1629, line: 146, baseType: !1667, size: 192, offset: 1920)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1629, line: 66, size: 192, elements: !1668)
!1668 = !{!1669}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1667, file: !1629, line: 67, baseType: !1670, size: 192)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1629, line: 47, size: 192, elements: !1671)
!1671 = !{!1672, !1673, !1674}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1670, file: !1629, line: 48, baseType: !731, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1670, file: !1629, line: 49, baseType: !731, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1670, file: !1629, line: 50, baseType: !731, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1628, file: !1629, line: 150, baseType: !1408, size: 640, offset: 2112)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1628, file: !1629, line: 153, baseType: !1677, size: 256, offset: 2752)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1349, size: 256, elements: !1033)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1628, file: !1629, line: 159, baseType: !1349, size: 64, offset: 3008)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1628, file: !1629, line: 162, baseType: !142, size: 32, offset: 3072)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1628, file: !1629, line: 164, baseType: !1681, size: 64, offset: 3136)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1629, line: 164, flags: DIFlagFwdDecl)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1628, file: !1629, line: 175, baseType: !1684, size: 32, offset: 3200)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !350, line: 805, baseType: !1685)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 798, size: 32, elements: !1686)
!1686 = !{!1687, !1688}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1685, file: !350, line: 803, baseType: !349, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1685, file: !350, line: 804, baseType: !195, offset: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1628, file: !1629, line: 176, baseType: !379, size: 64, offset: 3264)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1628, file: !1629, line: 176, baseType: !379, size: 64, offset: 3328)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1628, file: !1629, line: 176, baseType: !379, size: 64, offset: 3392)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1628, file: !1629, line: 176, baseType: !379, size: 64, offset: 3456)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1628, file: !1629, line: 177, baseType: !379, size: 64, offset: 3520)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1628, file: !1629, line: 178, baseType: !379, size: 64, offset: 3584)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1628, file: !1629, line: 179, baseType: !1396, size: 128, offset: 3648)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1628, file: !1629, line: 180, baseType: !286, size: 64, offset: 3776)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1628, file: !1629, line: 180, baseType: !286, size: 64, offset: 3840)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1628, file: !1629, line: 180, baseType: !286, size: 64, offset: 3904)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1628, file: !1629, line: 180, baseType: !286, size: 64, offset: 3968)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1628, file: !1629, line: 181, baseType: !286, size: 64, offset: 4032)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1628, file: !1629, line: 181, baseType: !286, size: 64, offset: 4096)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1628, file: !1629, line: 181, baseType: !286, size: 64, offset: 4160)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1628, file: !1629, line: 181, baseType: !286, size: 64, offset: 4224)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1628, file: !1629, line: 182, baseType: !286, size: 64, offset: 4288)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1628, file: !1629, line: 182, baseType: !286, size: 64, offset: 4352)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1628, file: !1629, line: 182, baseType: !286, size: 64, offset: 4416)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1628, file: !1629, line: 182, baseType: !286, size: 64, offset: 4480)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1628, file: !1629, line: 183, baseType: !286, size: 64, offset: 4544)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1628, file: !1629, line: 183, baseType: !286, size: 64, offset: 4608)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1628, file: !1629, line: 184, baseType: !1711, offset: 4672)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1712, line: 12, elements: !209)
!1712 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1628, file: !1629, line: 192, baseType: !381, size: 64, offset: 4672)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1628, file: !1629, line: 203, baseType: !1715, size: 2048, offset: 4736)
!1715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1716, size: 2048, elements: !146)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1717, line: 43, size: 128, elements: !1718)
!1717 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1718 = !{!1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1716, file: !1717, line: 44, baseType: !285, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1716, file: !1717, line: 45, baseType: !285, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1628, file: !1629, line: 220, baseType: !448, size: 8, offset: 6784)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1628, file: !1629, line: 221, baseType: !1083, size: 16, offset: 6800)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1628, file: !1629, line: 222, baseType: !1083, size: 16, offset: 6816)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1628, file: !1629, line: 224, baseType: !932, size: 64, offset: 6848)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1628, file: !1629, line: 227, baseType: !1051, size: 192, offset: 6912)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1628, file: !1629, line: 233, baseType: !1051, size: 192, offset: 7104)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1095, file: !1096, line: 970, baseType: !1728, size: 64, offset: 9280)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1629, line: 20, size: 16576, elements: !1730)
!1730 = !{!1731, !1732, !1733, !1734}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1729, file: !1629, line: 21, baseType: !195)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1729, file: !1629, line: 22, baseType: !1108, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1729, file: !1629, line: 23, baseType: !1359, size: 128, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1729, file: !1629, line: 24, baseType: !1735, size: 16384, offset: 192)
!1735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1736, size: 16384, elements: !241)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1639, line: 49, size: 256, elements: !1737)
!1737 = !{!1738}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1736, file: !1639, line: 50, baseType: !1739, size: 256)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1639, line: 35, size: 256, elements: !1740)
!1740 = !{!1741, !1748, !1749, !1755}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1739, file: !1639, line: 37, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1743, line: 19, baseType: !1744)
!1743 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1743, line: 18, baseType: !1746)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{null, !142}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1739, file: !1639, line: 38, baseType: !286, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1739, file: !1639, line: 44, baseType: !1750, size: 64, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1743, line: 22, baseType: !1751)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1743, line: 21, baseType: !1753)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{null}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1739, file: !1639, line: 46, baseType: !1643, size: 64, offset: 192)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1095, file: !1096, line: 971, baseType: !1643, size: 64, offset: 9344)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1095, file: !1096, line: 972, baseType: !1643, size: 64, offset: 9408)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1095, file: !1096, line: 974, baseType: !1643, size: 64, offset: 9472)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1095, file: !1096, line: 975, baseType: !1638, size: 192, offset: 9536)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1095, file: !1096, line: 976, baseType: !286, size: 64, offset: 9728)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1095, file: !1096, line: 977, baseType: !283, size: 64, offset: 9792)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1095, file: !1096, line: 978, baseType: !7, size: 32, offset: 9856)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1095, file: !1096, line: 980, baseType: !330, size: 64, offset: 9920)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1095, file: !1096, line: 989, baseType: !1765, size: 128, offset: 9984)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1766, line: 35, size: 128, elements: !1767)
!1766 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1767 = !{!1768, !1769, !1770}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1765, file: !1766, line: 36, baseType: !142, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1765, file: !1766, line: 37, baseType: !705, size: 32, offset: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1765, file: !1766, line: 38, baseType: !1771, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1766, line: 23, flags: DIFlagFwdDecl)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1095, file: !1096, line: 992, baseType: !379, size: 64, offset: 10112)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1095, file: !1096, line: 993, baseType: !379, size: 64, offset: 10176)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1095, file: !1096, line: 996, baseType: !195, offset: 10240)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1095, file: !1096, line: 999, baseType: !738, offset: 10240)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1095, file: !1096, line: 1001, baseType: !1778, size: 64, offset: 10240)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1096, line: 636, size: 64, elements: !1779)
!1779 = !{!1780}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1778, file: !1096, line: 637, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1095, file: !1096, line: 1005, baseType: !710, size: 128, offset: 10304)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1095, file: !1096, line: 1007, baseType: !1094, size: 64, offset: 10432)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1095, file: !1096, line: 1009, baseType: !1785, size: 64, offset: 10496)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1096, line: 1009, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1095, file: !1096, line: 1043, baseType: !137, size: 64, offset: 10560)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1095, file: !1096, line: 1046, baseType: !1789, size: 64, offset: 10624)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1096, line: 41, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1095, file: !1096, line: 1050, baseType: !1792, size: 64, offset: 10688)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1096, line: 42, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1095, file: !1096, line: 1054, baseType: !1795, size: 64, offset: 10752)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1096, line: 55, flags: DIFlagFwdDecl)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1095, file: !1096, line: 1056, baseType: !1798, size: 64, offset: 10816)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1096, line: 40, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1095, file: !1096, line: 1058, baseType: !1801, size: 64, offset: 10880)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1803, line: 99, size: 704, elements: !1804)
!1803 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1811, !1830, !1831}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1802, file: !1803, line: 100, baseType: !729, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1802, file: !1803, line: 101, baseType: !705, size: 32, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1802, file: !1803, line: 102, baseType: !705, size: 32, offset: 96)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1802, file: !1803, line: 105, baseType: !195, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1802, file: !1803, line: 107, baseType: !278, size: 16, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1802, file: !1803, line: 109, baseType: !697, size: 128, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1802, file: !1803, line: 110, baseType: !1812, size: 64, offset: 320)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1803, line: 73, size: 448, elements: !1814)
!1814 = !{!1815, !1818, !1819, !1824, !1829}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1813, file: !1803, line: 74, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1803, line: 74, flags: DIFlagFwdDecl)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1813, file: !1803, line: 75, baseType: !1801, size: 64, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !1803, line: 83, baseType: !1820, size: 128, offset: 128)
!1820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !1803, line: 83, size: 128, elements: !1821)
!1821 = !{!1822, !1823}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1820, file: !1803, line: 84, baseType: !182, size: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1820, file: !1803, line: 85, baseType: !893, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !1803, line: 87, baseType: !1825, size: 128, offset: 256)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !1803, line: 87, size: 128, elements: !1826)
!1826 = !{!1827, !1828}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1825, file: !1803, line: 88, baseType: !597, size: 128)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1825, file: !1803, line: 89, baseType: !327, size: 128, align: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1813, file: !1803, line: 92, baseType: !7, size: 32, offset: 384)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1802, file: !1803, line: 111, baseType: !593, size: 64, offset: 384)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1802, file: !1803, line: 113, baseType: !1832, size: 256, offset: 448)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1833, line: 102, size: 256, elements: !1834)
!1833 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1834 = !{!1835, !1836, !1837}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1832, file: !1833, line: 103, baseType: !729, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1832, file: !1833, line: 104, baseType: !182, size: 128, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1832, file: !1833, line: 105, baseType: !1838, size: 64, offset: 192)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1833, line: 21, baseType: !1839)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{null, !1842}
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1095, file: !1096, line: 1061, baseType: !1844, size: 64, offset: 10944)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1096, line: 43, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1095, file: !1096, line: 1064, baseType: !286, size: 64, offset: 11008)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1095, file: !1096, line: 1065, baseType: !1848, size: 64, offset: 11072)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1639, line: 14, baseType: !1850)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1639, line: 12, size: 384, elements: !1851)
!1851 = !{!1852}
!1852 = !DIDerivedType(tag: DW_TAG_member, scope: !1850, file: !1639, line: 13, baseType: !1853, size: 384)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1639, line: 13, size: 384, elements: !1854)
!1854 = !{!1855, !1856, !1857, !1858}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1853, file: !1639, line: 13, baseType: !142, size: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1853, file: !1639, line: 13, baseType: !142, size: 32, offset: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1853, file: !1639, line: 13, baseType: !142, size: 32, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1853, file: !1639, line: 13, baseType: !1859, size: 256, offset: 128)
!1859 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1860, line: 32, size: 256, elements: !1861)
!1860 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1861 = !{!1862, !1867, !1880, !1886, !1895, !1915, !1920}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1859, file: !1860, line: 37, baseType: !1863, size: 64)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1860, line: 34, size: 64, elements: !1864)
!1864 = !{!1865, !1866}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1863, file: !1860, line: 35, baseType: !1338, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1863, file: !1860, line: 36, baseType: !399, size: 32, offset: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1859, file: !1860, line: 45, baseType: !1868, size: 192)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1860, line: 40, size: 192, elements: !1869)
!1869 = !{!1870, !1872, !1873, !1879}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1868, file: !1860, line: 41, baseType: !1871, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !269, line: 95, baseType: !142)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1868, file: !1860, line: 42, baseType: !142, size: 32, offset: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1868, file: !1860, line: 43, baseType: !1874, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1860, line: 11, baseType: !1875)
!1875 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1860, line: 8, size: 64, elements: !1876)
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1875, file: !1860, line: 9, baseType: !142, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1875, file: !1860, line: 10, baseType: !137, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1868, file: !1860, line: 44, baseType: !142, size: 32, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1859, file: !1860, line: 52, baseType: !1881, size: 128)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1860, line: 48, size: 128, elements: !1882)
!1882 = !{!1883, !1884, !1885}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1881, file: !1860, line: 49, baseType: !1338, size: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1881, file: !1860, line: 50, baseType: !399, size: 32, offset: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1881, file: !1860, line: 51, baseType: !1874, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1859, file: !1860, line: 61, baseType: !1887, size: 256)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1860, line: 55, size: 256, elements: !1888)
!1888 = !{!1889, !1890, !1891, !1892, !1894}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1887, file: !1860, line: 56, baseType: !1338, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1887, file: !1860, line: 57, baseType: !399, size: 32, offset: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1887, file: !1860, line: 58, baseType: !142, size: 32, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1887, file: !1860, line: 59, baseType: !1893, size: 64, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !269, line: 94, baseType: !270)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1887, file: !1860, line: 60, baseType: !1893, size: 64, offset: 192)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1859, file: !1860, line: 95, baseType: !1896, size: 256)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1860, line: 64, size: 256, elements: !1897)
!1897 = !{!1898, !1899}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1896, file: !1860, line: 65, baseType: !137, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, scope: !1896, file: !1860, line: 77, baseType: !1900, size: 192, offset: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1896, file: !1860, line: 77, size: 192, elements: !1901)
!1901 = !{!1902, !1903, !1910}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1900, file: !1860, line: 82, baseType: !1083, size: 16)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1900, file: !1860, line: 88, baseType: !1904, size: 192)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1900, file: !1860, line: 84, size: 192, elements: !1905)
!1905 = !{!1906, !1908, !1909}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1904, file: !1860, line: 85, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 64, elements: !1208)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1904, file: !1860, line: 86, baseType: !137, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1904, file: !1860, line: 87, baseType: !137, size: 64, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1900, file: !1860, line: 93, baseType: !1911, size: 96)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1900, file: !1860, line: 90, size: 96, elements: !1912)
!1912 = !{!1913, !1914}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1911, file: !1860, line: 91, baseType: !1907, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1911, file: !1860, line: 92, baseType: !151, size: 32, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1859, file: !1860, line: 101, baseType: !1916, size: 128)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1860, line: 98, size: 128, elements: !1917)
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1916, file: !1860, line: 99, baseType: !271, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1916, file: !1860, line: 100, baseType: !142, size: 32, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1859, file: !1860, line: 108, baseType: !1921, size: 128)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1859, file: !1860, line: 104, size: 128, elements: !1922)
!1922 = !{!1923, !1924, !1925}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1921, file: !1860, line: 105, baseType: !137, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1921, file: !1860, line: 106, baseType: !142, size: 32, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1921, file: !1860, line: 107, baseType: !7, size: 32, offset: 96)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1095, file: !1096, line: 1067, baseType: !1711, offset: 11136)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1095, file: !1096, line: 1099, baseType: !1928, size: 64, offset: 11136)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1096, line: 56, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1095, file: !1096, line: 1103, baseType: !182, size: 128, offset: 11200)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1095, file: !1096, line: 1104, baseType: !1932, size: 64, offset: 11328)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1096, line: 46, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1095, file: !1096, line: 1105, baseType: !1051, size: 192, offset: 11392)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1095, file: !1096, line: 1106, baseType: !7, size: 32, offset: 11584)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1095, file: !1096, line: 1109, baseType: !1937, size: 128, offset: 11648)
!1937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1938, size: 128, elements: !163)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1096, line: 51, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1095, file: !1096, line: 1110, baseType: !1051, size: 192, offset: 11776)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1095, file: !1096, line: 1111, baseType: !182, size: 128, offset: 11968)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1095, file: !1096, line: 1173, baseType: !1943, size: 64, offset: 12096)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1945, line: 62, size: 256, align: 256, elements: !1946)
!1945 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1946 = !{!1947, !1948, !1949, !1954}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1944, file: !1945, line: 75, baseType: !151, size: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1944, file: !1945, line: 90, baseType: !151, size: 32, offset: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1944, file: !1945, line: 124, baseType: !1950, size: 64, offset: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1944, file: !1945, line: 109, size: 64, elements: !1951)
!1951 = !{!1952, !1953}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1950, file: !1945, line: 110, baseType: !380, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1950, file: !1945, line: 112, baseType: !380, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1944, file: !1945, line: 144, baseType: !151, size: 32, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1095, file: !1096, line: 1174, baseType: !149, size: 32, offset: 12160)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1095, file: !1096, line: 1179, baseType: !286, size: 64, offset: 12224)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1095, file: !1096, line: 1182, baseType: !1958, size: 128, offset: 12288)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1029, line: 76, size: 128, elements: !1959)
!1959 = !{!1960, !1965, !1966}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1958, file: !1029, line: 85, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1962, line: 7, size: 64, elements: !1963)
!1962 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1963 = !{!1964}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1961, file: !1962, line: 12, baseType: !1245, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1958, file: !1029, line: 88, baseType: !448, size: 8, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1958, file: !1029, line: 95, baseType: !448, size: 8, offset: 72)
!1967 = !DIDerivedType(tag: DW_TAG_member, scope: !1095, file: !1096, line: 1184, baseType: !1968, size: 128, offset: 12416)
!1968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1095, file: !1096, line: 1184, size: 128, elements: !1969)
!1969 = !{!1970, !1971}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1968, file: !1096, line: 1185, baseType: !1108, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1968, file: !1096, line: 1186, baseType: !327, size: 128, align: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1095, file: !1096, line: 1190, baseType: !1973, size: 64, offset: 12544)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1096, line: 53, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1095, file: !1096, line: 1192, baseType: !1976, size: 128, offset: 12608)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1029, line: 64, size: 128, elements: !1977)
!1977 = !{!1978, !1979, !1980}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1976, file: !1029, line: 65, baseType: !679, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1976, file: !1029, line: 67, baseType: !151, size: 32, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1976, file: !1029, line: 68, baseType: !151, size: 32, offset: 96)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1095, file: !1096, line: 1206, baseType: !142, size: 32, offset: 12736)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1095, file: !1096, line: 1207, baseType: !142, size: 32, offset: 12768)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1095, file: !1096, line: 1209, baseType: !286, size: 64, offset: 12800)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1095, file: !1096, line: 1219, baseType: !379, size: 64, offset: 12864)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1095, file: !1096, line: 1220, baseType: !379, size: 64, offset: 12928)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1095, file: !1096, line: 1317, baseType: !142, size: 32, offset: 12992)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1095, file: !1096, line: 1319, baseType: !1094, size: 64, offset: 13056)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1095, file: !1096, line: 1322, baseType: !1989, size: 64, offset: 13120)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1991, line: 9, flags: DIFlagFwdDecl)
!1991 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1095, file: !1096, line: 1326, baseType: !1108, size: 32, offset: 13184)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1095, file: !1096, line: 1342, baseType: !137, size: 64, offset: 13248)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1095, file: !1096, line: 1343, baseType: !380, size: 64, offset: 13312)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1095, file: !1096, line: 1344, baseType: !379, size: 64, offset: 13376)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1095, file: !1096, line: 1345, baseType: !380, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1095, file: !1096, line: 1346, baseType: !380, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1095, file: !1096, line: 1347, baseType: !380, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1095, file: !1096, line: 1348, baseType: !327, size: 128, align: 64, offset: 13504)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1095, file: !1096, line: 1358, baseType: !2001, size: 34816, offset: 13824)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2002, line: 485, size: 34816, elements: !2003)
!2002 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2003 = !{!2004, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2033, !2034, !2035, !2036, !2037, !2038, !2041, !2042, !2043}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2001, file: !2002, line: 487, baseType: !2005, size: 192)
!2005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2006, size: 192, elements: !237)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2007, line: 16, size: 64, elements: !2008)
!2007 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2008 = !{!2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2006, file: !2007, line: 17, baseType: !817, size: 16)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2006, file: !2007, line: 18, baseType: !817, size: 16, offset: 16)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2006, file: !2007, line: 19, baseType: !817, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2006, file: !2007, line: 19, baseType: !817, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2006, file: !2007, line: 19, baseType: !817, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2006, file: !2007, line: 19, baseType: !817, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2006, file: !2007, line: 19, baseType: !817, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2006, file: !2007, line: 20, baseType: !817, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2006, file: !2007, line: 20, baseType: !817, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2006, file: !2007, line: 20, baseType: !817, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2006, file: !2007, line: 20, baseType: !817, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2006, file: !2007, line: 20, baseType: !817, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2006, file: !2007, line: 20, baseType: !817, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2001, file: !2002, line: 491, baseType: !286, size: 64, offset: 192)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2001, file: !2002, line: 495, baseType: !278, size: 16, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2001, file: !2002, line: 496, baseType: !278, size: 16, offset: 272)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2001, file: !2002, line: 497, baseType: !278, size: 16, offset: 288)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2001, file: !2002, line: 498, baseType: !278, size: 16, offset: 304)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2001, file: !2002, line: 502, baseType: !286, size: 64, offset: 320)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2001, file: !2002, line: 503, baseType: !286, size: 64, offset: 384)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2001, file: !2002, line: 514, baseType: !2030, size: 256, offset: 448)
!2030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2031, size: 256, elements: !1033)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2002, line: 483, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2001, file: !2002, line: 516, baseType: !286, size: 64, offset: 704)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2001, file: !2002, line: 518, baseType: !286, size: 64, offset: 768)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2001, file: !2002, line: 520, baseType: !286, size: 64, offset: 832)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2001, file: !2002, line: 521, baseType: !286, size: 64, offset: 896)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2001, file: !2002, line: 522, baseType: !286, size: 64, offset: 960)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2001, file: !2002, line: 528, baseType: !2039, size: 64, offset: 1024)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2002, line: 10, flags: DIFlagFwdDecl)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2001, file: !2002, line: 535, baseType: !286, size: 64, offset: 1088)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2001, file: !2002, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2001, file: !2002, line: 540, baseType: !2044, size: 33280, offset: 1536)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2045, line: 317, size: 33280, elements: !2046)
!2045 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2046 = !{!2047, !2048, !2049}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2044, file: !2045, line: 330, baseType: !7, size: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2044, file: !2045, line: 337, baseType: !286, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2044, file: !2045, line: 348, baseType: !2050, size: 32768, offset: 512)
!2050 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2045, line: 304, size: 32768, elements: !2051)
!2051 = !{!2052, !2067, !2106, !2156, !2169}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2050, file: !2045, line: 305, baseType: !2053, size: 896)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2045, line: 12, size: 896, elements: !2054)
!2054 = !{!2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2066}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2053, file: !2045, line: 13, baseType: !149, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2053, file: !2045, line: 14, baseType: !149, size: 32, offset: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2053, file: !2045, line: 15, baseType: !149, size: 32, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2053, file: !2045, line: 16, baseType: !149, size: 32, offset: 96)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2053, file: !2045, line: 17, baseType: !149, size: 32, offset: 128)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2053, file: !2045, line: 18, baseType: !149, size: 32, offset: 160)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2053, file: !2045, line: 19, baseType: !149, size: 32, offset: 192)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2053, file: !2045, line: 22, baseType: !2063, size: 640, offset: 224)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 640, elements: !2064)
!2064 = !{!2065}
!2065 = !DISubrange(count: 20)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2053, file: !2045, line: 25, baseType: !149, size: 32, offset: 864)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2050, file: !2045, line: 306, baseType: !2068, size: 4096, align: 128)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2045, line: 34, size: 4096, align: 128, elements: !2069)
!2069 = !{!2070, !2071, !2072, !2073, !2074, !2089, !2090, !2091, !2095, !2097, !2101}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2068, file: !2045, line: 35, baseType: !817, size: 16)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2068, file: !2045, line: 36, baseType: !817, size: 16, offset: 16)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2068, file: !2045, line: 37, baseType: !817, size: 16, offset: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2068, file: !2045, line: 38, baseType: !817, size: 16, offset: 48)
!2074 = !DIDerivedType(tag: DW_TAG_member, scope: !2068, file: !2045, line: 39, baseType: !2075, size: 128, offset: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2068, file: !2045, line: 39, size: 128, elements: !2076)
!2076 = !{!2077, !2082}
!2077 = !DIDerivedType(tag: DW_TAG_member, scope: !2075, file: !2045, line: 40, baseType: !2078, size: 128)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2075, file: !2045, line: 40, size: 128, elements: !2079)
!2079 = !{!2080, !2081}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2078, file: !2045, line: 41, baseType: !379, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2078, file: !2045, line: 42, baseType: !379, size: 64, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, scope: !2075, file: !2045, line: 44, baseType: !2083, size: 128)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2075, file: !2045, line: 44, size: 128, elements: !2084)
!2084 = !{!2085, !2086, !2087, !2088}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2083, file: !2045, line: 45, baseType: !149, size: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2083, file: !2045, line: 46, baseType: !149, size: 32, offset: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2083, file: !2045, line: 47, baseType: !149, size: 32, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2083, file: !2045, line: 48, baseType: !149, size: 32, offset: 96)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2068, file: !2045, line: 51, baseType: !149, size: 32, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2068, file: !2045, line: 52, baseType: !149, size: 32, offset: 224)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2068, file: !2045, line: 55, baseType: !2092, size: 1024, offset: 256)
!2092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 1024, elements: !2093)
!2093 = !{!2094}
!2094 = !DISubrange(count: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2068, file: !2045, line: 58, baseType: !2096, size: 2048, offset: 1280)
!2096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 2048, elements: !241)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2068, file: !2045, line: 60, baseType: !2098, size: 384, offset: 3328)
!2098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 384, elements: !2099)
!2099 = !{!2100}
!2100 = !DISubrange(count: 12)
!2101 = !DIDerivedType(tag: DW_TAG_member, scope: !2068, file: !2045, line: 62, baseType: !2102, size: 384, offset: 3712)
!2102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2068, file: !2045, line: 62, size: 384, elements: !2103)
!2103 = !{!2104, !2105}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2102, file: !2045, line: 63, baseType: !2098, size: 384)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2102, file: !2045, line: 64, baseType: !2098, size: 384)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2050, file: !2045, line: 307, baseType: !2107, size: 1088)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2045, line: 79, size: 1088, elements: !2108)
!2108 = !{!2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2155}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2107, file: !2045, line: 80, baseType: !149, size: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2107, file: !2045, line: 81, baseType: !149, size: 32, offset: 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2107, file: !2045, line: 82, baseType: !149, size: 32, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2107, file: !2045, line: 83, baseType: !149, size: 32, offset: 96)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2107, file: !2045, line: 84, baseType: !149, size: 32, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2107, file: !2045, line: 85, baseType: !149, size: 32, offset: 160)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2107, file: !2045, line: 86, baseType: !149, size: 32, offset: 192)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2107, file: !2045, line: 88, baseType: !2063, size: 640, offset: 224)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2107, file: !2045, line: 89, baseType: !1230, size: 8, offset: 864)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2107, file: !2045, line: 90, baseType: !1230, size: 8, offset: 872)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2107, file: !2045, line: 91, baseType: !1230, size: 8, offset: 880)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2107, file: !2045, line: 92, baseType: !1230, size: 8, offset: 888)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2107, file: !2045, line: 93, baseType: !1230, size: 8, offset: 896)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2107, file: !2045, line: 94, baseType: !1230, size: 8, offset: 904)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2107, file: !2045, line: 95, baseType: !2124, size: 64, offset: 960)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2126, line: 11, size: 128, elements: !2127)
!2126 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2127 = !{!2128, !2129}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2125, file: !2126, line: 12, baseType: !271, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2125, file: !2126, line: 13, baseType: !2130, size: 64, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2132, line: 56, size: 1344, elements: !2133)
!2132 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2133 = !{!2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2131, file: !2132, line: 61, baseType: !286, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2131, file: !2132, line: 62, baseType: !286, size: 64, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2131, file: !2132, line: 63, baseType: !286, size: 64, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2131, file: !2132, line: 64, baseType: !286, size: 64, offset: 192)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2131, file: !2132, line: 65, baseType: !286, size: 64, offset: 256)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2131, file: !2132, line: 66, baseType: !286, size: 64, offset: 320)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2131, file: !2132, line: 68, baseType: !286, size: 64, offset: 384)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2131, file: !2132, line: 69, baseType: !286, size: 64, offset: 448)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2131, file: !2132, line: 70, baseType: !286, size: 64, offset: 512)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2131, file: !2132, line: 71, baseType: !286, size: 64, offset: 576)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2131, file: !2132, line: 72, baseType: !286, size: 64, offset: 640)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2131, file: !2132, line: 73, baseType: !286, size: 64, offset: 704)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2131, file: !2132, line: 74, baseType: !286, size: 64, offset: 768)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2131, file: !2132, line: 75, baseType: !286, size: 64, offset: 832)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2131, file: !2132, line: 76, baseType: !286, size: 64, offset: 896)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2131, file: !2132, line: 81, baseType: !286, size: 64, offset: 960)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2131, file: !2132, line: 83, baseType: !286, size: 64, offset: 1024)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2131, file: !2132, line: 84, baseType: !286, size: 64, offset: 1088)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2131, file: !2132, line: 85, baseType: !286, size: 64, offset: 1152)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2131, file: !2132, line: 86, baseType: !286, size: 64, offset: 1216)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2131, file: !2132, line: 87, baseType: !286, size: 64, offset: 1280)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2107, file: !2045, line: 96, baseType: !149, size: 32, offset: 1024)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2050, file: !2045, line: 308, baseType: !2157, size: 4608, align: 512)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2045, line: 289, size: 4608, align: 512, elements: !2158)
!2158 = !{!2159, !2160, !2167}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2157, file: !2045, line: 290, baseType: !2068, size: 4096, align: 128)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2157, file: !2045, line: 291, baseType: !2161, size: 512, offset: 4096)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2045, line: 268, size: 512, elements: !2162)
!2162 = !{!2163, !2164, !2165}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2161, file: !2045, line: 269, baseType: !379, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2161, file: !2045, line: 270, baseType: !379, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2161, file: !2045, line: 271, baseType: !2166, size: 384, offset: 128)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 384, elements: !1501)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2157, file: !2045, line: 292, baseType: !2168, offset: 4608)
!2168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1230, elements: !1599)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2050, file: !2045, line: 309, baseType: !2170, size: 32768)
!2170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1230, size: 32768, elements: !2171)
!2171 = !{!2172}
!2172 = !DISubrange(count: 4096)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1091, file: !681, line: 378, baseType: !2174, size: 64, offset: 64)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1087, file: !681, line: 384, baseType: !1380, size: 192, offset: 192)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !936, file: !681, line: 500, baseType: !195, offset: 6656)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !936, file: !681, line: 501, baseType: !2178, size: 64, offset: 6656)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !681, line: 387, flags: DIFlagFwdDecl)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !936, file: !681, line: 516, baseType: !1589, size: 64, offset: 6720)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !936, file: !681, line: 519, baseType: !314, size: 64, offset: 6784)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !936, file: !681, line: 521, baseType: !2183, size: 64, offset: 6848)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !681, line: 521, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !936, file: !681, line: 545, baseType: !705, size: 32, offset: 6912)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !936, file: !681, line: 548, baseType: !448, size: 8, offset: 6944)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !936, file: !681, line: 550, baseType: !2188, offset: 6952)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2189, line: 142, elements: !209)
!2189 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !936, file: !681, line: 554, baseType: !1832, size: 256, offset: 6976)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !936, file: !681, line: 557, baseType: !149, size: 32, offset: 7232)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !933, file: !681, line: 565, baseType: !2193, offset: 7296)
!2193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, elements: !2194)
!2194 = !{!2195}
!2195 = !DISubrange(count: -1)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !929, file: !681, line: 151, baseType: !705, size: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !922, file: !681, line: 156, baseType: !195, offset: 256)
!2198 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !681, line: 159, baseType: !2199, size: 128)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !685, file: !681, line: 159, size: 128, elements: !2200)
!2200 = !{!2201, !2204}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2199, file: !681, line: 161, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !681, line: 161, flags: DIFlagFwdDecl)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2199, file: !681, line: 162, baseType: !137, size: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !685, file: !681, line: 176, baseType: !327, size: 128, align: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, scope: !680, file: !681, line: 179, baseType: !2207, size: 32, offset: 384)
!2207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !680, file: !681, line: 179, size: 32, elements: !2208)
!2208 = !{!2209, !2210, !2211, !2212}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2207, file: !681, line: 184, baseType: !705, size: 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2207, file: !681, line: 192, baseType: !7, size: 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2207, file: !681, line: 194, baseType: !7, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2207, file: !681, line: 195, baseType: !142, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !680, file: !681, line: 199, baseType: !705, size: 32, offset: 416)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !615, file: !38, line: 1964, baseType: !2215, size: 64, offset: 1344)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!271, !557, !2218}
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2220, line: 12, size: 256, elements: !2221)
!2220 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2221 = !{!2222, !2223, !2224, !2225, !2226}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2219, file: !2220, line: 13, baseType: !135, size: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2219, file: !2220, line: 16, baseType: !142, size: 32, offset: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2219, file: !2220, line: 23, baseType: !286, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2219, file: !2220, line: 30, baseType: !286, size: 64, offset: 128)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2219, file: !2220, line: 33, baseType: !2227, size: 64, offset: 192)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !681, line: 27, flags: DIFlagFwdDecl)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !615, file: !38, line: 1966, baseType: !2215, size: 64, offset: 1408)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !558, file: !38, line: 1424, baseType: !2231, size: 64, offset: 448)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2233)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !32, line: 322, size: 704, elements: !2234)
!2234 = !{!2235, !2281, !2285, !2289, !2290, !2291, !2292, !2293, !2298, !2303, !2307}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2233, file: !32, line: 323, baseType: !2236, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!142, !2239}
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !32, line: 294, size: 1600, elements: !2241)
!2241 = !{!2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2266, !2267, !2268}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2240, file: !32, line: 295, baseType: !597, size: 128)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2240, file: !32, line: 296, baseType: !182, size: 128, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2240, file: !32, line: 297, baseType: !182, size: 128, offset: 256)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2240, file: !32, line: 298, baseType: !182, size: 128, offset: 384)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2240, file: !32, line: 299, baseType: !1051, size: 192, offset: 512)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2240, file: !32, line: 300, baseType: !195, offset: 704)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2240, file: !32, line: 301, baseType: !705, size: 32, offset: 704)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2240, file: !32, line: 302, baseType: !557, size: 64, offset: 768)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2240, file: !32, line: 303, baseType: !2251, size: 64, offset: 832)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !32, line: 68, size: 64, elements: !2252)
!2252 = !{!2253, !2265}
!2253 = !DIDerivedType(tag: DW_TAG_member, scope: !2251, file: !32, line: 69, baseType: !2254, size: 32)
!2254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2251, file: !32, line: 69, size: 32, elements: !2255)
!2255 = !{!2256, !2257, !2258}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2254, file: !32, line: 70, baseType: !393, size: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2254, file: !32, line: 71, baseType: !401, size: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2254, file: !32, line: 72, baseType: !2259, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2260, line: 24, baseType: !2261)
!2260 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2260, line: 22, size: 32, elements: !2262)
!2262 = !{!2263}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2261, file: !2260, line: 23, baseType: !2264, size: 32)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2260, line: 20, baseType: !399)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2251, file: !32, line: 74, baseType: !31, size: 32, offset: 32)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2240, file: !32, line: 304, baseType: !489, size: 64, offset: 896)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2240, file: !32, line: 305, baseType: !286, size: 64, offset: 960)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2240, file: !32, line: 306, baseType: !2269, size: 576, offset: 1024)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !32, line: 205, size: 576, elements: !2270)
!2270 = !{!2271, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2269, file: !32, line: 206, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !32, line: 66, baseType: !491)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2269, file: !32, line: 207, baseType: !2272, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2269, file: !32, line: 208, baseType: !2272, size: 64, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2269, file: !32, line: 209, baseType: !2272, size: 64, offset: 192)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2269, file: !32, line: 210, baseType: !2272, size: 64, offset: 256)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2269, file: !32, line: 211, baseType: !2272, size: 64, offset: 320)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2269, file: !32, line: 212, baseType: !2272, size: 64, offset: 384)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2269, file: !32, line: 213, baseType: !497, size: 64, offset: 448)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2269, file: !32, line: 214, baseType: !497, size: 64, offset: 512)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2233, file: !32, line: 324, baseType: !2282, size: 64, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!2239, !557, !142}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2233, file: !32, line: 325, baseType: !2286, size: 64, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{null, !2239}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2233, file: !32, line: 326, baseType: !2236, size: 64, offset: 192)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2233, file: !32, line: 327, baseType: !2236, size: 64, offset: 256)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2233, file: !32, line: 328, baseType: !2236, size: 64, offset: 320)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2233, file: !32, line: 329, baseType: !643, size: 64, offset: 384)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2233, file: !32, line: 332, baseType: !2294, size: 64, offset: 448)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!2297, !387}
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2233, file: !32, line: 333, baseType: !2299, size: 64, offset: 512)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!142, !387, !2302}
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2233, file: !32, line: 335, baseType: !2304, size: 64, offset: 576)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!142, !387, !2297}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2233, file: !32, line: 337, baseType: !2308, size: 64, offset: 640)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!142, !557, !2311}
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !558, file: !38, line: 1425, baseType: !2313, size: 64, offset: 512)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2315)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !32, line: 428, size: 704, elements: !2316)
!2316 = !{!2317, !2321, !2322, !2326, !2327, !2328, !2343, !2366, !2370, !2371, !2394}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2315, file: !32, line: 429, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!142, !557, !142, !142, !507}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2315, file: !32, line: 430, baseType: !643, size: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2315, file: !32, line: 431, baseType: !2323, size: 64, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!142, !557, !7}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2315, file: !32, line: 432, baseType: !2323, size: 64, offset: 192)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2315, file: !32, line: 433, baseType: !643, size: 64, offset: 256)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2315, file: !32, line: 434, baseType: !2329, size: 64, offset: 320)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!142, !557, !142, !2332}
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !32, line: 415, size: 256, elements: !2334)
!2334 = !{!2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2333, file: !32, line: 416, baseType: !142, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2333, file: !32, line: 417, baseType: !7, size: 32, offset: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2333, file: !32, line: 418, baseType: !7, size: 32, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2333, file: !32, line: 420, baseType: !7, size: 32, offset: 96)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2333, file: !32, line: 421, baseType: !7, size: 32, offset: 128)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2333, file: !32, line: 422, baseType: !7, size: 32, offset: 160)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2333, file: !32, line: 423, baseType: !7, size: 32, offset: 192)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2333, file: !32, line: 424, baseType: !7, size: 32, offset: 224)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2315, file: !32, line: 435, baseType: !2344, size: 64, offset: 384)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!142, !557, !2251, !2347}
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !32, line: 343, size: 960, elements: !2349)
!2349 = !{!2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2348, file: !32, line: 344, baseType: !142, size: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2348, file: !32, line: 345, baseType: !379, size: 64, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2348, file: !32, line: 346, baseType: !379, size: 64, offset: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2348, file: !32, line: 347, baseType: !379, size: 64, offset: 192)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2348, file: !32, line: 348, baseType: !379, size: 64, offset: 256)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2348, file: !32, line: 349, baseType: !379, size: 64, offset: 320)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2348, file: !32, line: 350, baseType: !379, size: 64, offset: 384)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2348, file: !32, line: 351, baseType: !735, size: 64, offset: 448)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2348, file: !32, line: 353, baseType: !735, size: 64, offset: 512)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2348, file: !32, line: 354, baseType: !142, size: 32, offset: 576)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2348, file: !32, line: 355, baseType: !142, size: 32, offset: 608)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2348, file: !32, line: 356, baseType: !379, size: 64, offset: 640)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2348, file: !32, line: 357, baseType: !379, size: 64, offset: 704)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2348, file: !32, line: 358, baseType: !379, size: 64, offset: 768)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2348, file: !32, line: 359, baseType: !735, size: 64, offset: 832)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2348, file: !32, line: 360, baseType: !142, size: 32, offset: 896)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2315, file: !32, line: 436, baseType: !2367, size: 64, offset: 448)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!142, !557, !2311, !2347}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2315, file: !32, line: 438, baseType: !2344, size: 64, offset: 512)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2315, file: !32, line: 439, baseType: !2372, size: 64, offset: 576)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!142, !557, !2375}
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !32, line: 409, size: 1408, elements: !2377)
!2377 = !{!2378, !2379}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2376, file: !32, line: 410, baseType: !7, size: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2376, file: !32, line: 411, baseType: !2380, size: 1344, offset: 64)
!2380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2381, size: 1344, elements: !237)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !32, line: 395, size: 448, elements: !2382)
!2382 = !{!2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2393}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2381, file: !32, line: 396, baseType: !7, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2381, file: !32, line: 397, baseType: !7, size: 32, offset: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2381, file: !32, line: 399, baseType: !7, size: 32, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2381, file: !32, line: 400, baseType: !7, size: 32, offset: 96)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2381, file: !32, line: 401, baseType: !7, size: 32, offset: 128)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2381, file: !32, line: 402, baseType: !7, size: 32, offset: 160)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2381, file: !32, line: 403, baseType: !7, size: 32, offset: 192)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2381, file: !32, line: 404, baseType: !381, size: 64, offset: 256)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2381, file: !32, line: 405, baseType: !2392, size: 64, offset: 320)
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !136, line: 126, baseType: !379)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2381, file: !32, line: 406, baseType: !2392, size: 64, offset: 384)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2315, file: !32, line: 440, baseType: !2323, size: 64, offset: 640)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !558, file: !38, line: 1426, baseType: !2396, size: 64, offset: 576)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2398)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !38, line: 49, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !558, file: !38, line: 1427, baseType: !286, size: 64, offset: 640)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !558, file: !38, line: 1428, baseType: !286, size: 64, offset: 704)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !558, file: !38, line: 1429, baseType: !286, size: 64, offset: 768)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !558, file: !38, line: 1430, baseType: !344, size: 64, offset: 832)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !558, file: !38, line: 1431, baseType: !725, size: 256, offset: 896)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !558, file: !38, line: 1432, baseType: !142, size: 32, offset: 1152)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !558, file: !38, line: 1433, baseType: !705, size: 32, offset: 1184)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !558, file: !38, line: 1437, baseType: !2407, size: 64, offset: 1216)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2410)
!2410 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !38, line: 1437, flags: DIFlagFwdDecl)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !558, file: !38, line: 1449, baseType: !2412, size: 64, offset: 1280)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !360, line: 34, size: 64, elements: !2413)
!2413 = !{!2414}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2412, file: !360, line: 35, baseType: !363, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !558, file: !38, line: 1450, baseType: !182, size: 128, offset: 1344)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !558, file: !38, line: 1451, baseType: !2417, size: 64, offset: 1472)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !38, line: 699, flags: DIFlagFwdDecl)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !558, file: !38, line: 1452, baseType: !1798, size: 64, offset: 1536)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !558, file: !38, line: 1453, baseType: !2421, size: 64, offset: 1600)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !38, line: 1453, flags: DIFlagFwdDecl)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !558, file: !38, line: 1454, baseType: !597, size: 128, offset: 1664)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !558, file: !38, line: 1455, baseType: !7, size: 32, offset: 1792)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !558, file: !38, line: 1456, baseType: !2426, size: 2432, offset: 1856)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !32, line: 518, size: 2432, elements: !2427)
!2427 = !{!2428, !2429, !2430, !2432, !2464}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2426, file: !32, line: 519, baseType: !7, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2426, file: !32, line: 520, baseType: !725, size: 256, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2426, file: !32, line: 521, baseType: !2431, size: 192, offset: 320)
!2431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 192, elements: !237)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2426, file: !32, line: 522, baseType: !2433, size: 1728, offset: 512)
!2433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2434, size: 1728, elements: !237)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !32, line: 222, size: 576, elements: !2435)
!2435 = !{!2436, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2434, file: !32, line: 223, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !32, line: 443, size: 256, elements: !2439)
!2439 = !{!2440, !2441, !2454, !2455}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2438, file: !32, line: 444, baseType: !142, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2438, file: !32, line: 445, baseType: !2442, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2444)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !32, line: 310, size: 512, elements: !2445)
!2445 = !{!2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2444, file: !32, line: 311, baseType: !643, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2444, file: !32, line: 312, baseType: !643, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2444, file: !32, line: 313, baseType: !643, size: 64, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2444, file: !32, line: 314, baseType: !643, size: 64, offset: 192)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2444, file: !32, line: 315, baseType: !2236, size: 64, offset: 256)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2444, file: !32, line: 316, baseType: !2236, size: 64, offset: 320)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2444, file: !32, line: 317, baseType: !2236, size: 64, offset: 384)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2444, file: !32, line: 318, baseType: !2308, size: 64, offset: 448)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2438, file: !32, line: 446, baseType: !132, size: 64, offset: 128)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2438, file: !32, line: 447, baseType: !2437, size: 64, offset: 192)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2434, file: !32, line: 224, baseType: !142, size: 32, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2434, file: !32, line: 226, baseType: !182, size: 128, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2434, file: !32, line: 227, baseType: !286, size: 64, offset: 256)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2434, file: !32, line: 228, baseType: !7, size: 32, offset: 320)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2434, file: !32, line: 229, baseType: !7, size: 32, offset: 352)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2434, file: !32, line: 230, baseType: !2272, size: 64, offset: 384)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2434, file: !32, line: 231, baseType: !2272, size: 64, offset: 448)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2434, file: !32, line: 232, baseType: !137, size: 64, offset: 512)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2426, file: !32, line: 523, baseType: !2465, size: 192, offset: 2240)
!2465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2442, size: 192, elements: !237)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !558, file: !38, line: 1458, baseType: !2467, size: 2112, offset: 4288)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !38, line: 1410, size: 2112, elements: !2468)
!2468 = !{!2469, !2470, !2471}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2467, file: !38, line: 1411, baseType: !142, size: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2467, file: !38, line: 1412, baseType: !1359, size: 128, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2467, file: !38, line: 1413, baseType: !2472, size: 1920, offset: 192)
!2472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2473, size: 1920, elements: !237)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2474, line: 12, size: 640, elements: !2475)
!2474 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2475 = !{!2476, !2484, !2486, !2491, !2492}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2473, file: !2474, line: 13, baseType: !2477, size: 320)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2478, line: 17, size: 320, elements: !2479)
!2478 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2479 = !{!2480, !2481, !2482, !2483}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2477, file: !2478, line: 18, baseType: !142, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2477, file: !2478, line: 19, baseType: !142, size: 32, offset: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2477, file: !2478, line: 20, baseType: !1359, size: 128, offset: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2477, file: !2478, line: 22, baseType: !327, size: 128, align: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2473, file: !2474, line: 14, baseType: !2485, size: 64, offset: 320)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2473, file: !2474, line: 15, baseType: !2487, size: 64, offset: 384)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2488, line: 16, size: 64, elements: !2489)
!2488 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2489 = !{!2490}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2487, file: !2488, line: 17, baseType: !1094, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2473, file: !2474, line: 16, baseType: !1359, size: 128, offset: 448)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2473, file: !2474, line: 17, baseType: !705, size: 32, offset: 576)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !558, file: !38, line: 1465, baseType: !137, size: 64, offset: 6400)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !558, file: !38, line: 1468, baseType: !149, size: 32, offset: 6464)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !558, file: !38, line: 1470, baseType: !497, size: 64, offset: 6528)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !558, file: !38, line: 1471, baseType: !497, size: 64, offset: 6592)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !558, file: !38, line: 1473, baseType: !151, size: 32, offset: 6656)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !558, file: !38, line: 1474, baseType: !2499, size: 64, offset: 6720)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !38, line: 603, flags: DIFlagFwdDecl)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !558, file: !38, line: 1477, baseType: !2502, size: 256, offset: 6784)
!2502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 256, elements: !2093)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !558, file: !38, line: 1478, baseType: !2504, size: 128, offset: 7040)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2505, line: 18, baseType: !2506)
!2505 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2505, line: 16, size: 128, elements: !2507)
!2507 = !{!2508}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2506, file: !2505, line: 17, baseType: !2509, size: 128)
!2509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1231, size: 128, elements: !146)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !558, file: !38, line: 1480, baseType: !7, size: 32, offset: 7168)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !558, file: !38, line: 1481, baseType: !2512, size: 32, offset: 7200)
!2512 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !136, line: 150, baseType: !7)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !558, file: !38, line: 1487, baseType: !1051, size: 192, offset: 7232)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !558, file: !38, line: 1493, baseType: !179, size: 64, offset: 7424)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !558, file: !38, line: 1495, baseType: !2516, size: 64, offset: 7488)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2518)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !342, line: 135, size: 1024, align: 512, elements: !2519)
!2519 = !{!2520, !2524, !2525, !2532, !2538, !2542, !2546, !2550, !2551, !2555, !2559, !2564, !2568}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2518, file: !342, line: 136, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!142, !344, !7}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2518, file: !342, line: 137, baseType: !2521, size: 64, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2518, file: !342, line: 138, baseType: !2526, size: 64, offset: 128)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!142, !2529, !2531}
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2518, file: !342, line: 139, baseType: !2533, size: 64, offset: 192)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!142, !2529, !7, !179, !2536}
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2518, file: !342, line: 141, baseType: !2539, size: 64, offset: 256)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!142, !2529}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2518, file: !342, line: 142, baseType: !2543, size: 64, offset: 320)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!142, !344}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2518, file: !342, line: 143, baseType: !2547, size: 64, offset: 384)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{null, !344}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2518, file: !342, line: 144, baseType: !2547, size: 64, offset: 448)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2518, file: !342, line: 145, baseType: !2552, size: 64, offset: 512)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{null, !344, !387}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2518, file: !342, line: 146, baseType: !2556, size: 64, offset: 576)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!236, !344, !236, !142}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2518, file: !342, line: 147, baseType: !2560, size: 64, offset: 640)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!340, !2563}
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2518, file: !342, line: 148, baseType: !2565, size: 64, offset: 704)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!142, !507, !448}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2518, file: !342, line: 149, baseType: !2569, size: 64, offset: 768)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!344, !344, !2572}
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !558, file: !38, line: 1500, baseType: !142, size: 32, offset: 7552)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !558, file: !38, line: 1502, baseType: !2576, size: 448, offset: 7616)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2220, line: 60, size: 448, elements: !2577)
!2577 = !{!2578, !2583, !2584, !2585, !2586, !2587, !2588}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2576, file: !2220, line: 61, baseType: !2579, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!286, !2582, !2218}
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2576, file: !2220, line: 63, baseType: !2579, size: 64, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2576, file: !2220, line: 66, baseType: !271, size: 64, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2576, file: !2220, line: 67, baseType: !142, size: 32, offset: 192)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2576, file: !2220, line: 68, baseType: !7, size: 32, offset: 224)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2576, file: !2220, line: 71, baseType: !182, size: 128, offset: 256)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2576, file: !2220, line: 77, baseType: !2589, size: 64, offset: 384)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !558, file: !38, line: 1505, baseType: !729, size: 64, offset: 8064)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !558, file: !38, line: 1508, baseType: !729, size: 64, offset: 8128)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !558, file: !38, line: 1511, baseType: !142, size: 32, offset: 8192)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !558, file: !38, line: 1514, baseType: !867, size: 32, offset: 8224)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !558, file: !38, line: 1517, baseType: !2595, size: 64, offset: 8256)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1833, line: 18, flags: DIFlagFwdDecl)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !558, file: !38, line: 1518, baseType: !593, size: 64, offset: 8320)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !558, file: !38, line: 1525, baseType: !1589, size: 64, offset: 8384)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !558, file: !38, line: 1532, baseType: !2600, size: 64, offset: 8448)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2601, line: 52, size: 64, elements: !2602)
!2601 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2602 = !{!2603}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2600, file: !2601, line: 53, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2601, line: 40, size: 256, elements: !2606)
!2606 = !{!2607, !2608, !2613}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2605, file: !2601, line: 42, baseType: !195)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2605, file: !2601, line: 44, baseType: !2609, size: 192)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2601, line: 28, size: 192, elements: !2610)
!2610 = !{!2611, !2612}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2609, file: !2601, line: 29, baseType: !182, size: 128)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2609, file: !2601, line: 31, baseType: !271, size: 64, offset: 128)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2605, file: !2601, line: 49, baseType: !271, size: 64, offset: 192)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !558, file: !38, line: 1533, baseType: !2600, size: 64, offset: 8512)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !558, file: !38, line: 1534, baseType: !327, size: 128, align: 64, offset: 8576)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !558, file: !38, line: 1535, baseType: !1832, size: 256, offset: 8704)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !558, file: !38, line: 1537, baseType: !1051, size: 192, offset: 8960)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !558, file: !38, line: 1542, baseType: !142, size: 32, offset: 9152)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !558, file: !38, line: 1545, baseType: !195, offset: 9184)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !558, file: !38, line: 1546, baseType: !182, size: 128, offset: 9216)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !558, file: !38, line: 1548, baseType: !195, offset: 9344)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !558, file: !38, line: 1549, baseType: !182, size: 128, offset: 9344)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !388, file: !38, line: 624, baseType: !692, size: 64, offset: 256)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !388, file: !38, line: 631, baseType: !286, size: 64, offset: 320)
!2625 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !38, line: 639, baseType: !2626, size: 32, offset: 384)
!2626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !38, line: 639, size: 32, elements: !2627)
!2627 = !{!2628, !2630}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2626, file: !38, line: 640, baseType: !2629, size: 32)
!2629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2626, file: !38, line: 641, baseType: !7, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !388, file: !38, line: 643, baseType: !471, size: 32, offset: 416)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !388, file: !38, line: 644, baseType: !489, size: 64, offset: 448)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !388, file: !38, line: 645, baseType: !493, size: 128, offset: 512)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !388, file: !38, line: 646, baseType: !493, size: 128, offset: 640)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !388, file: !38, line: 647, baseType: !493, size: 128, offset: 768)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !388, file: !38, line: 648, baseType: !195, offset: 896)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !388, file: !38, line: 649, baseType: !278, size: 16, offset: 896)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !388, file: !38, line: 650, baseType: !1230, size: 8, offset: 912)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !388, file: !38, line: 651, baseType: !1230, size: 8, offset: 920)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !388, file: !38, line: 652, baseType: !2392, size: 64, offset: 960)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !388, file: !38, line: 659, baseType: !286, size: 64, offset: 1024)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !388, file: !38, line: 660, baseType: !725, size: 256, offset: 1088)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !388, file: !38, line: 662, baseType: !286, size: 64, offset: 1344)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !388, file: !38, line: 663, baseType: !286, size: 64, offset: 1408)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !388, file: !38, line: 665, baseType: !597, size: 128, offset: 1472)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !388, file: !38, line: 666, baseType: !182, size: 128, offset: 1600)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !388, file: !38, line: 675, baseType: !182, size: 128, offset: 1728)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !388, file: !38, line: 676, baseType: !182, size: 128, offset: 1856)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !388, file: !38, line: 677, baseType: !182, size: 128, offset: 1984)
!2650 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !38, line: 678, baseType: !2651, size: 128, offset: 2112)
!2651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !38, line: 678, size: 128, elements: !2652)
!2652 = !{!2653, !2654}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2651, file: !38, line: 679, baseType: !593, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2651, file: !38, line: 680, baseType: !327, size: 128, align: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !388, file: !38, line: 682, baseType: !731, size: 64, offset: 2240)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !388, file: !38, line: 683, baseType: !731, size: 64, offset: 2304)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !388, file: !38, line: 684, baseType: !705, size: 32, offset: 2368)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !388, file: !38, line: 685, baseType: !705, size: 32, offset: 2400)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !388, file: !38, line: 686, baseType: !705, size: 32, offset: 2432)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !388, file: !38, line: 688, baseType: !705, size: 32, offset: 2464)
!2661 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !38, line: 690, baseType: !2662, size: 64, offset: 2496)
!2662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !38, line: 690, size: 64, elements: !2663)
!2663 = !{!2664, !2887}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2662, file: !38, line: 691, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2667)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !38, line: 1822, size: 2048, elements: !2668)
!2668 = !{!2669, !2670, !2674, !2679, !2683, !2684, !2685, !2689, !2702, !2703, !2711, !2715, !2716, !2720, !2721, !2725, !2730, !2731, !2735, !2739, !2847, !2851, !2852, !2856, !2857, !2861, !2865, !2870, !2874, !2878, !2882, !2886}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2667, file: !38, line: 1823, baseType: !132, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2667, file: !38, line: 1824, baseType: !2671, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!489, !314, !489, !142}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2667, file: !38, line: 1825, baseType: !2675, size: 64, offset: 128)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!267, !314, !236, !283, !2678}
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2667, file: !38, line: 1826, baseType: !2680, size: 64, offset: 192)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!267, !314, !179, !283, !2678}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2667, file: !38, line: 1827, baseType: !802, size: 64, offset: 256)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2667, file: !38, line: 1828, baseType: !802, size: 64, offset: 320)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2667, file: !38, line: 1829, baseType: !2686, size: 64, offset: 384)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!142, !805, !448}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2667, file: !38, line: 1830, baseType: !2690, size: 64, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!142, !314, !2693}
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !38, line: 1776, size: 128, elements: !2695)
!2695 = !{!2696, !2701}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2694, file: !38, line: 1777, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !38, line: 1773, baseType: !2698)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!142, !2693, !179, !142, !489, !379, !7}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2694, file: !38, line: 1778, baseType: !489, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2667, file: !38, line: 1831, baseType: !2690, size: 64, offset: 512)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2667, file: !38, line: 1832, baseType: !2704, size: 64, offset: 576)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!2707, !314, !2709}
!2707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2708, line: 52, baseType: !7)
!2708 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !577, line: 27, flags: DIFlagFwdDecl)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2667, file: !38, line: 1833, baseType: !2712, size: 64, offset: 640)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!271, !314, !7, !286}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2667, file: !38, line: 1834, baseType: !2712, size: 64, offset: 704)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2667, file: !38, line: 1835, baseType: !2717, size: 64, offset: 768)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!142, !314, !939}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2667, file: !38, line: 1836, baseType: !286, size: 64, offset: 832)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2667, file: !38, line: 1837, baseType: !2722, size: 64, offset: 896)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!142, !387, !314}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2667, file: !38, line: 1838, baseType: !2726, size: 64, offset: 960)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!142, !314, !2729}
!2729 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !38, line: 1007, baseType: !137)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2667, file: !38, line: 1839, baseType: !2722, size: 64, offset: 1024)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2667, file: !38, line: 1840, baseType: !2732, size: 64, offset: 1088)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!142, !314, !489, !489, !142}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2667, file: !38, line: 1841, baseType: !2736, size: 64, offset: 1152)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!142, !142, !314, !142}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2667, file: !38, line: 1842, baseType: !2740, size: 64, offset: 1216)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!142, !314, !142, !2743}
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !38, line: 1062, size: 1664, elements: !2745)
!2745 = !{!2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2777, !2778, !2779, !2792, !2823}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2744, file: !38, line: 1063, baseType: !2743, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2744, file: !38, line: 1064, baseType: !182, size: 128, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2744, file: !38, line: 1065, baseType: !597, size: 128, offset: 192)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2744, file: !38, line: 1066, baseType: !182, size: 128, offset: 320)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2744, file: !38, line: 1069, baseType: !182, size: 128, offset: 448)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2744, file: !38, line: 1072, baseType: !2729, size: 64, offset: 576)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2744, file: !38, line: 1073, baseType: !7, size: 32, offset: 640)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2744, file: !38, line: 1074, baseType: !385, size: 8, offset: 672)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2744, file: !38, line: 1075, baseType: !7, size: 32, offset: 704)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2744, file: !38, line: 1076, baseType: !142, size: 32, offset: 736)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2744, file: !38, line: 1077, baseType: !1359, size: 128, offset: 768)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2744, file: !38, line: 1078, baseType: !314, size: 64, offset: 896)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2744, file: !38, line: 1079, baseType: !489, size: 64, offset: 960)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2744, file: !38, line: 1080, baseType: !489, size: 64, offset: 1024)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2744, file: !38, line: 1082, baseType: !2761, size: 64, offset: 1088)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !38, line: 1314, size: 320, elements: !2763)
!2763 = !{!2764, !2772, !2773, !2774, !2775, !2776}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2762, file: !38, line: 1315, baseType: !2765)
!2765 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2766, line: 20, baseType: !2767)
!2766 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2766, line: 11, elements: !2768)
!2768 = !{!2769}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2767, file: !2766, line: 12, baseType: !2770)
!2770 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !207, line: 33, baseType: !2771)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !207, line: 31, elements: !209)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2762, file: !38, line: 1316, baseType: !142, size: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2762, file: !38, line: 1317, baseType: !142, size: 32, offset: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2762, file: !38, line: 1318, baseType: !2761, size: 64, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2762, file: !38, line: 1319, baseType: !314, size: 64, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2762, file: !38, line: 1320, baseType: !327, size: 128, align: 64, offset: 192)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2744, file: !38, line: 1084, baseType: !286, size: 64, offset: 1152)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2744, file: !38, line: 1085, baseType: !286, size: 64, offset: 1216)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2744, file: !38, line: 1087, baseType: !2780, size: 64, offset: 1280)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2782)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !38, line: 1011, size: 128, elements: !2783)
!2783 = !{!2784, !2788}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2782, file: !38, line: 1012, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{null, !2743, !2743}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2782, file: !38, line: 1013, baseType: !2789, size: 64, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{null, !2743}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2744, file: !38, line: 1088, baseType: !2793, size: 64, offset: 1344)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2795)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !38, line: 1016, size: 512, elements: !2796)
!2796 = !{!2797, !2801, !2805, !2806, !2810, !2814, !2818, !2822}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2795, file: !38, line: 1017, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!2729, !2729}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2795, file: !38, line: 1018, baseType: !2802, size: 64, offset: 64)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{null, !2729}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2795, file: !38, line: 1019, baseType: !2789, size: 64, offset: 128)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2795, file: !38, line: 1020, baseType: !2807, size: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!142, !2743, !142}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2795, file: !38, line: 1021, baseType: !2811, size: 64, offset: 256)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!448, !2743}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2795, file: !38, line: 1022, baseType: !2815, size: 64, offset: 320)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!142, !2743, !142, !185}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2795, file: !38, line: 1023, baseType: !2819, size: 64, offset: 384)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{null, !2743, !779}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2795, file: !38, line: 1024, baseType: !2811, size: 64, offset: 448)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2744, file: !38, line: 1097, baseType: !2824, size: 256, offset: 1408)
!2824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2744, file: !38, line: 1089, size: 256, elements: !2825)
!2825 = !{!2826, !2835, !2841}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2824, file: !38, line: 1090, baseType: !2827, size: 256)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2828, line: 10, size: 256, elements: !2829)
!2828 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2829 = !{!2830, !2831, !2834}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2827, file: !2828, line: 11, baseType: !149, size: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2827, file: !2828, line: 12, baseType: !2832, size: 64, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2828, line: 5, flags: DIFlagFwdDecl)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2827, file: !2828, line: 13, baseType: !182, size: 128, offset: 128)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2824, file: !38, line: 1091, baseType: !2836, size: 64)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2828, line: 17, size: 64, elements: !2837)
!2837 = !{!2838}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2836, file: !2828, line: 18, baseType: !2839, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2828, line: 16, flags: DIFlagFwdDecl)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2824, file: !38, line: 1096, baseType: !2842, size: 192)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2824, file: !38, line: 1092, size: 192, elements: !2843)
!2843 = !{!2844, !2845, !2846}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2842, file: !38, line: 1093, baseType: !182, size: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2842, file: !38, line: 1094, baseType: !142, size: 32, offset: 128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2842, file: !38, line: 1095, baseType: !7, size: 32, offset: 160)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2667, file: !38, line: 1843, baseType: !2848, size: 64, offset: 1280)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!267, !314, !679, !142, !283, !2678, !142}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2667, file: !38, line: 1844, baseType: !979, size: 64, offset: 1344)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2667, file: !38, line: 1845, baseType: !2853, size: 64, offset: 1408)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!142, !142}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2667, file: !38, line: 1846, baseType: !2740, size: 64, offset: 1472)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2667, file: !38, line: 1847, baseType: !2858, size: 64, offset: 1536)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!267, !1973, !314, !2678, !283, !7}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2667, file: !38, line: 1848, baseType: !2862, size: 64, offset: 1600)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!267, !314, !2678, !1973, !283, !7}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2667, file: !38, line: 1849, baseType: !2866, size: 64, offset: 1664)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!142, !314, !271, !2869, !779}
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2667, file: !38, line: 1850, baseType: !2871, size: 64, offset: 1728)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!271, !314, !142, !489, !489}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2667, file: !38, line: 1852, baseType: !2875, size: 64, offset: 1792)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{null, !669, !314}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2667, file: !38, line: 1856, baseType: !2879, size: 64, offset: 1856)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!267, !314, !489, !314, !489, !283, !7}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2667, file: !38, line: 1858, baseType: !2883, size: 64, offset: 1920)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!489, !314, !489, !314, !489, !489, !7}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2667, file: !38, line: 1861, baseType: !2732, size: 64, offset: 1984)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2662, file: !38, line: 692, baseType: !622, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !388, file: !38, line: 694, baseType: !2889, size: 64, offset: 2560)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !38, line: 1100, size: 384, elements: !2891)
!2891 = !{!2892, !2893, !2894, !2895}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2890, file: !38, line: 1101, baseType: !195)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2890, file: !38, line: 1102, baseType: !182, size: 128)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2890, file: !38, line: 1103, baseType: !182, size: 128, offset: 128)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2890, file: !38, line: 1104, baseType: !182, size: 128, offset: 256)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !388, file: !38, line: 695, baseType: !693, size: 1216, align: 64, offset: 2624)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !388, file: !38, line: 696, baseType: !182, size: 128, offset: 3840)
!2898 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !38, line: 697, baseType: !2899, size: 64, offset: 3968)
!2899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !38, line: 697, size: 64, elements: !2900)
!2900 = !{!2901, !2902, !2903, !2906, !2907}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2899, file: !38, line: 698, baseType: !1973, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2899, file: !38, line: 699, baseType: !2417, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2899, file: !38, line: 700, baseType: !2904, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !38, line: 700, flags: DIFlagFwdDecl)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2899, file: !38, line: 701, baseType: !236, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2899, file: !38, line: 702, baseType: !7, size: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !388, file: !38, line: 705, baseType: !151, size: 32, offset: 4032)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !388, file: !38, line: 708, baseType: !151, size: 32, offset: 4064)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !388, file: !38, line: 709, baseType: !2499, size: 64, offset: 4096)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !388, file: !38, line: 720, baseType: !137, size: 64, offset: 4160)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !345, file: !342, line: 98, baseType: !2913, size: 256, offset: 448)
!2913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 256, elements: !2093)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !345, file: !342, line: 101, baseType: !2915, size: 32, offset: 704)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2916, line: 25, size: 32, elements: !2917)
!2916 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2917 = !{!2918}
!2918 = !DIDerivedType(tag: DW_TAG_member, scope: !2915, file: !2916, line: 26, baseType: !2919, size: 32)
!2919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2915, file: !2916, line: 26, size: 32, elements: !2920)
!2920 = !{!2921}
!2921 = !DIDerivedType(tag: DW_TAG_member, scope: !2919, file: !2916, line: 30, baseType: !2922, size: 32)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2919, file: !2916, line: 30, size: 32, elements: !2923)
!2923 = !{!2924, !2925}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2922, file: !2916, line: 31, baseType: !195)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2922, file: !2916, line: 32, baseType: !142, size: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !345, file: !342, line: 102, baseType: !2516, size: 64, offset: 768)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !345, file: !342, line: 103, baseType: !557, size: 64, offset: 832)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !345, file: !342, line: 104, baseType: !286, size: 64, offset: 896)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !345, file: !342, line: 105, baseType: !137, size: 64, offset: 960)
!2930 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !342, line: 107, baseType: !2931, size: 128, offset: 1024)
!2931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !342, line: 107, size: 128, elements: !2932)
!2932 = !{!2933, !2934}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2931, file: !342, line: 108, baseType: !182, size: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2931, file: !342, line: 109, baseType: !2935, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !345, file: !342, line: 111, baseType: !182, size: 128, offset: 1152)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !345, file: !342, line: 112, baseType: !182, size: 128, offset: 1280)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !345, file: !342, line: 120, baseType: !2939, size: 128, offset: 1408)
!2939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !342, line: 116, size: 128, elements: !2940)
!2940 = !{!2941, !2942, !2943}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2939, file: !342, line: 117, baseType: !597, size: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2939, file: !342, line: 118, baseType: !359, size: 128)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2939, file: !342, line: 119, baseType: !327, size: 128, align: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !315, file: !38, line: 922, baseType: !387, size: 64, offset: 256)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !315, file: !38, line: 923, baseType: !2665, size: 64, offset: 320)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !315, file: !38, line: 929, baseType: !195, offset: 384)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !315, file: !38, line: 930, baseType: !37, size: 32, offset: 384)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !315, file: !38, line: 931, baseType: !729, size: 64, offset: 448)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !315, file: !38, line: 932, baseType: !7, size: 32, offset: 512)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !315, file: !38, line: 933, baseType: !2512, size: 32, offset: 544)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !315, file: !38, line: 934, baseType: !1051, size: 192, offset: 576)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !315, file: !38, line: 935, baseType: !489, size: 64, offset: 768)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !315, file: !38, line: 936, baseType: !2954, size: 192, offset: 832)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !38, line: 885, size: 192, elements: !2955)
!2955 = !{!2956, !2957, !2958, !2959, !2960, !2961}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2954, file: !38, line: 886, baseType: !2765)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2954, file: !38, line: 887, baseType: !1349, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2954, file: !38, line: 888, baseType: !46, size: 32, offset: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2954, file: !38, line: 889, baseType: !393, size: 32, offset: 96)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2954, file: !38, line: 889, baseType: !393, size: 32, offset: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2954, file: !38, line: 890, baseType: !142, size: 32, offset: 160)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !315, file: !38, line: 937, baseType: !1425, size: 64, offset: 1024)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !315, file: !38, line: 938, baseType: !2964, size: 256, offset: 1088)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !38, line: 896, size: 256, elements: !2965)
!2965 = !{!2966, !2967, !2968, !2969, !2970, !2971}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2964, file: !38, line: 897, baseType: !286, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2964, file: !38, line: 898, baseType: !7, size: 32, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2964, file: !38, line: 899, baseType: !7, size: 32, offset: 96)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2964, file: !38, line: 902, baseType: !7, size: 32, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2964, file: !38, line: 903, baseType: !7, size: 32, offset: 160)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2964, file: !38, line: 904, baseType: !489, size: 64, offset: 192)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !315, file: !38, line: 940, baseType: !379, size: 64, offset: 1344)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !315, file: !38, line: 945, baseType: !137, size: 64, offset: 1408)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !315, file: !38, line: 949, baseType: !182, size: 128, offset: 1472)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !315, file: !38, line: 950, baseType: !182, size: 128, offset: 1600)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !315, file: !38, line: 952, baseType: !692, size: 64, offset: 1728)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !315, file: !38, line: 953, baseType: !867, size: 32, offset: 1792)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !315, file: !38, line: 954, baseType: !867, size: 32, offset: 1824)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !305, file: !261, line: 174, baseType: !311, size: 64, offset: 320)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !305, file: !261, line: 176, baseType: !2981, size: 64, offset: 384)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!142, !314, !188, !304, !939}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !293, file: !261, line: 90, baseType: !288, size: 64, offset: 192)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !293, file: !261, line: 91, baseType: !2986, size: 64, offset: 256)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !251, file: !176, line: 143, baseType: !2988, size: 64, offset: 256)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!2991, !188}
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2993)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !55, line: 39, size: 384, elements: !2994)
!2994 = !{!2995, !2996, !3000, !3004, !3012, !3016}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2993, file: !55, line: 40, baseType: !54, size: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2993, file: !55, line: 41, baseType: !2997, size: 64, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!448}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2993, file: !55, line: 42, baseType: !3001, size: 64, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!137}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2993, file: !55, line: 43, baseType: !3005, size: 64, offset: 192)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!3008, !3010}
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !55, line: 19, flags: DIFlagFwdDecl)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2993, file: !55, line: 44, baseType: !3013, size: 64, offset: 256)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!3008}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2993, file: !55, line: 45, baseType: !426, size: 64, offset: 320)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !251, file: !176, line: 144, baseType: !3018, size: 64, offset: 320)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!3008, !188}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !251, file: !176, line: 145, baseType: !3022, size: 64, offset: 384)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{null, !188, !3025, !3026}
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !175, file: !176, line: 70, baseType: !3028, size: 64, offset: 384)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !577, line: 123, size: 1024, elements: !3030)
!3030 = !{!3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3159, !3160, !3161, !3162, !3163}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3029, file: !577, line: 124, baseType: !705, size: 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3029, file: !577, line: 125, baseType: !705, size: 32, offset: 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3029, file: !577, line: 135, baseType: !3028, size: 64, offset: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3029, file: !577, line: 136, baseType: !179, size: 64, offset: 128)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3029, file: !577, line: 138, baseType: !718, size: 192, align: 64, offset: 192)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3029, file: !577, line: 140, baseType: !3008, size: 64, offset: 384)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3029, file: !577, line: 141, baseType: !7, size: 32, offset: 448)
!3038 = !DIDerivedType(tag: DW_TAG_member, scope: !3029, file: !577, line: 142, baseType: !3039, size: 256, offset: 512)
!3039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3029, file: !577, line: 142, size: 256, elements: !3040)
!3040 = !{!3041, !3087, !3091}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3039, file: !577, line: 143, baseType: !3042, size: 192)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !577, line: 91, size: 192, elements: !3043)
!3043 = !{!3044, !3045, !3046}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3042, file: !577, line: 92, baseType: !286, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3042, file: !577, line: 94, baseType: !714, size: 64, offset: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3042, file: !577, line: 100, baseType: !3047, size: 64, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !577, line: 180, size: 704, elements: !3049)
!3049 = !{!3050, !3051, !3052, !3059, !3060, !3061, !3085, !3086}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3048, file: !577, line: 182, baseType: !3028, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3048, file: !577, line: 183, baseType: !7, size: 32, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3048, file: !577, line: 186, baseType: !3053, size: 192, offset: 128)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3054, line: 19, size: 192, elements: !3055)
!3054 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3055 = !{!3056, !3057, !3058}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3053, file: !3054, line: 20, baseType: !697, size: 128)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3053, file: !3054, line: 21, baseType: !7, size: 32, offset: 128)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3053, file: !3054, line: 22, baseType: !7, size: 32, offset: 160)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3048, file: !577, line: 187, baseType: !149, size: 32, offset: 320)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3048, file: !577, line: 188, baseType: !149, size: 32, offset: 352)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3048, file: !577, line: 189, baseType: !3062, size: 64, offset: 384)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !577, line: 168, size: 320, elements: !3064)
!3064 = !{!3065, !3069, !3073, !3077, !3081}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3063, file: !577, line: 169, baseType: !3066, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!142, !669, !3047}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3063, file: !577, line: 171, baseType: !3070, size: 64, offset: 64)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!142, !3028, !179, !277}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3063, file: !577, line: 173, baseType: !3074, size: 64, offset: 128)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!142, !3028}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3063, file: !577, line: 174, baseType: !3078, size: 64, offset: 192)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!142, !3028, !3028, !179}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3063, file: !577, line: 176, baseType: !3082, size: 64, offset: 256)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!142, !669, !3028, !3047}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3048, file: !577, line: 192, baseType: !182, size: 128, offset: 448)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3048, file: !577, line: 194, baseType: !1359, size: 128, offset: 576)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3039, file: !577, line: 144, baseType: !3088, size: 64)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !577, line: 103, size: 64, elements: !3089)
!3089 = !{!3090}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3088, file: !577, line: 104, baseType: !3028, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3039, file: !577, line: 145, baseType: !3092, size: 256)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !577, line: 107, size: 256, elements: !3093)
!3093 = !{!3094, !3154, !3157, !3158}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3092, file: !577, line: 108, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3097)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !577, line: 217, size: 768, elements: !3098)
!3098 = !{!3099, !3119, !3123, !3127, !3131, !3135, !3139, !3143, !3144, !3145, !3146, !3150}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3097, file: !577, line: 222, baseType: !3100, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!142, !3103}
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !577, line: 197, size: 1088, elements: !3105)
!3105 = !{!3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3104, file: !577, line: 199, baseType: !3028, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3104, file: !577, line: 200, baseType: !314, size: 64, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3104, file: !577, line: 201, baseType: !669, size: 64, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3104, file: !577, line: 202, baseType: !137, size: 64, offset: 192)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3104, file: !577, line: 205, baseType: !1051, size: 192, offset: 256)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3104, file: !577, line: 206, baseType: !1051, size: 192, offset: 448)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3104, file: !577, line: 207, baseType: !142, size: 32, offset: 640)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3104, file: !577, line: 208, baseType: !182, size: 128, offset: 704)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3104, file: !577, line: 209, baseType: !236, size: 64, offset: 832)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3104, file: !577, line: 211, baseType: !283, size: 64, offset: 896)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3104, file: !577, line: 212, baseType: !448, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3104, file: !577, line: 213, baseType: !448, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3104, file: !577, line: 214, baseType: !967, size: 64, offset: 1024)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3097, file: !577, line: 223, baseType: !3120, size: 64, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{null, !3103}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3097, file: !577, line: 236, baseType: !3124, size: 64, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!142, !669, !137}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3097, file: !577, line: 238, baseType: !3128, size: 64, offset: 192)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!137, !669, !2678}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3097, file: !577, line: 239, baseType: !3132, size: 64, offset: 256)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!137, !669, !137, !2678}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3097, file: !577, line: 240, baseType: !3136, size: 64, offset: 320)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{null, !669, !137}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3097, file: !577, line: 242, baseType: !3140, size: 64, offset: 384)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!267, !3103, !236, !283, !489}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3097, file: !577, line: 252, baseType: !283, size: 64, offset: 448)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3097, file: !577, line: 259, baseType: !448, size: 8, offset: 512)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3097, file: !577, line: 260, baseType: !3140, size: 64, offset: 576)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3097, file: !577, line: 263, baseType: !3147, size: 64, offset: 640)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!2707, !3103, !2709}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3097, file: !577, line: 266, baseType: !3151, size: 64, offset: 704)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!142, !3103, !939}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3092, file: !577, line: 109, baseType: !3155, size: 64, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !577, line: 31, flags: DIFlagFwdDecl)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3092, file: !577, line: 110, baseType: !489, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3092, file: !577, line: 111, baseType: !3028, size: 64, offset: 192)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3029, file: !577, line: 148, baseType: !137, size: 64, offset: 768)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3029, file: !577, line: 154, baseType: !379, size: 64, offset: 832)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3029, file: !577, line: 156, baseType: !278, size: 16, offset: 896)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3029, file: !577, line: 157, baseType: !277, size: 16, offset: 912)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3029, file: !577, line: 158, baseType: !3164, size: 64, offset: 960)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !577, line: 32, flags: DIFlagFwdDecl)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !175, file: !176, line: 71, baseType: !3167, size: 32, offset: 448)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3168, line: 19, size: 32, elements: !3169)
!3168 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3169 = !{!3170}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3167, file: !3168, line: 20, baseType: !1108, size: 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !175, file: !176, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !175, file: !176, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !175, file: !176, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !175, file: !176, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !175, file: !176, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !172, file: !67, line: 463, baseType: !171, size: 64, offset: 512)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !172, file: !67, line: 465, baseType: !3178, size: 64, offset: 576)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !67, line: 36, flags: DIFlagFwdDecl)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !172, file: !67, line: 467, baseType: !179, size: 64, offset: 640)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !172, file: !67, line: 468, baseType: !3182, size: 64, offset: 704)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3184)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !67, line: 87, size: 384, elements: !3185)
!3185 = !{!3186, !3187, !3188, !3192, !3197, !3201}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3184, file: !67, line: 88, baseType: !179, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3184, file: !67, line: 89, baseType: !290, size: 64, offset: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3184, file: !67, line: 90, baseType: !3189, size: 64, offset: 128)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!142, !171, !231}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3184, file: !67, line: 91, baseType: !3193, size: 64, offset: 192)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!236, !171, !3196, !3025, !3026}
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3184, file: !67, line: 93, baseType: !3198, size: 64, offset: 256)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{null, !171}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3184, file: !67, line: 95, baseType: !3202, size: 64, offset: 320)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3204)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !74, line: 278, size: 1472, elements: !3205)
!3205 = !{!3206, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3204, file: !74, line: 279, baseType: !3207, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!142, !171}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3204, file: !74, line: 280, baseType: !3198, size: 64, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3204, file: !74, line: 281, baseType: !3207, size: 64, offset: 128)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3204, file: !74, line: 282, baseType: !3207, size: 64, offset: 192)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3204, file: !74, line: 283, baseType: !3207, size: 64, offset: 256)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3204, file: !74, line: 284, baseType: !3207, size: 64, offset: 320)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3204, file: !74, line: 285, baseType: !3207, size: 64, offset: 384)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3204, file: !74, line: 286, baseType: !3207, size: 64, offset: 448)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3204, file: !74, line: 287, baseType: !3207, size: 64, offset: 512)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3204, file: !74, line: 288, baseType: !3207, size: 64, offset: 576)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3204, file: !74, line: 289, baseType: !3207, size: 64, offset: 640)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3204, file: !74, line: 290, baseType: !3207, size: 64, offset: 704)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3204, file: !74, line: 291, baseType: !3207, size: 64, offset: 768)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3204, file: !74, line: 292, baseType: !3207, size: 64, offset: 832)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3204, file: !74, line: 293, baseType: !3207, size: 64, offset: 896)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3204, file: !74, line: 294, baseType: !3207, size: 64, offset: 960)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3204, file: !74, line: 295, baseType: !3207, size: 64, offset: 1024)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3204, file: !74, line: 296, baseType: !3207, size: 64, offset: 1088)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3204, file: !74, line: 297, baseType: !3207, size: 64, offset: 1152)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3204, file: !74, line: 298, baseType: !3207, size: 64, offset: 1216)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3204, file: !74, line: 299, baseType: !3207, size: 64, offset: 1280)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3204, file: !74, line: 300, baseType: !3207, size: 64, offset: 1344)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3204, file: !74, line: 301, baseType: !3207, size: 64, offset: 1408)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !172, file: !67, line: 470, baseType: !3233, size: 64, offset: 768)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3235, line: 82, size: 1408, elements: !3236)
!3235 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3242, !3243, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3318, !3321, !3322}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3234, file: !3235, line: 83, baseType: !179, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3234, file: !3235, line: 84, baseType: !179, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3234, file: !3235, line: 85, baseType: !171, size: 64, offset: 128)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3234, file: !3235, line: 86, baseType: !290, size: 64, offset: 192)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3234, file: !3235, line: 87, baseType: !290, size: 64, offset: 256)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3234, file: !3235, line: 88, baseType: !290, size: 64, offset: 320)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3234, file: !3235, line: 90, baseType: !3244, size: 64, offset: 384)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!142, !171, !3247}
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !61, line: 95, size: 1152, elements: !3249)
!3249 = !{!3250, !3251, !3252, !3253, !3254, !3255, !3256, !3269, !3282, !3283, !3284, !3285, !3286, !3294, !3295, !3296, !3297, !3298, !3299}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3248, file: !61, line: 96, baseType: !179, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3248, file: !61, line: 97, baseType: !3233, size: 64, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3248, file: !61, line: 99, baseType: !132, size: 64, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3248, file: !61, line: 100, baseType: !179, size: 64, offset: 192)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3248, file: !61, line: 102, baseType: !448, size: 8, offset: 256)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3248, file: !61, line: 103, baseType: !60, size: 32, offset: 288)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3248, file: !61, line: 105, baseType: !3257, size: 64, offset: 320)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3259)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3260, line: 262, size: 1600, elements: !3261)
!3260 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3261 = !{!3262, !3263, !3264, !3268}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3259, file: !3260, line: 263, baseType: !2502, size: 256)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3259, file: !3260, line: 264, baseType: !2502, size: 256, offset: 256)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3259, file: !3260, line: 265, baseType: !3265, size: 1024, offset: 512)
!3265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 1024, elements: !3266)
!3266 = !{!3267}
!3267 = !DISubrange(count: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3259, file: !3260, line: 266, baseType: !3008, size: 64, offset: 1536)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3248, file: !61, line: 106, baseType: !3270, size: 64, offset: 384)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3272)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3260, line: 210, size: 256, elements: !3273)
!3273 = !{!3274, !3278, !3280, !3281}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3272, file: !3260, line: 211, baseType: !3275, size: 72)
!3275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1231, size: 72, elements: !3276)
!3276 = !{!3277}
!3277 = !DISubrange(count: 9)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3272, file: !3260, line: 212, baseType: !3279, size: 64, offset: 128)
!3279 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3260, line: 14, baseType: !286)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3272, file: !3260, line: 213, baseType: !151, size: 32, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3272, file: !3260, line: 214, baseType: !151, size: 32, offset: 224)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3248, file: !61, line: 108, baseType: !3207, size: 64, offset: 448)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3248, file: !61, line: 109, baseType: !3198, size: 64, offset: 512)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3248, file: !61, line: 110, baseType: !3207, size: 64, offset: 576)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3248, file: !61, line: 111, baseType: !3198, size: 64, offset: 640)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3248, file: !61, line: 112, baseType: !3287, size: 64, offset: 704)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!142, !171, !3290}
!3290 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !74, line: 52, baseType: !3291)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !74, line: 50, size: 32, elements: !3292)
!3292 = !{!3293}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3291, file: !74, line: 51, baseType: !142, size: 32)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3248, file: !61, line: 113, baseType: !3207, size: 64, offset: 768)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3248, file: !61, line: 114, baseType: !290, size: 64, offset: 832)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3248, file: !61, line: 115, baseType: !290, size: 64, offset: 896)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3248, file: !61, line: 117, baseType: !3202, size: 64, offset: 960)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3248, file: !61, line: 118, baseType: !3198, size: 64, offset: 1024)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3248, file: !61, line: 120, baseType: !3300, size: 64, offset: 1088)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !61, line: 120, flags: DIFlagFwdDecl)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3234, file: !3235, line: 91, baseType: !3189, size: 64, offset: 448)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3234, file: !3235, line: 92, baseType: !3207, size: 64, offset: 512)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3234, file: !3235, line: 93, baseType: !3198, size: 64, offset: 576)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3234, file: !3235, line: 94, baseType: !3207, size: 64, offset: 640)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3234, file: !3235, line: 95, baseType: !3198, size: 64, offset: 704)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3234, file: !3235, line: 97, baseType: !3207, size: 64, offset: 768)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3234, file: !3235, line: 98, baseType: !3207, size: 64, offset: 832)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3234, file: !3235, line: 100, baseType: !3287, size: 64, offset: 896)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3234, file: !3235, line: 101, baseType: !3207, size: 64, offset: 960)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3234, file: !3235, line: 103, baseType: !3207, size: 64, offset: 1024)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3234, file: !3235, line: 105, baseType: !3207, size: 64, offset: 1088)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3234, file: !3235, line: 107, baseType: !3202, size: 64, offset: 1152)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3234, file: !3235, line: 109, baseType: !3315, size: 64, offset: 1216)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3317)
!3317 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3235, line: 109, flags: DIFlagFwdDecl)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3234, file: !3235, line: 111, baseType: !3319, size: 64, offset: 1280)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3235, line: 111, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3234, file: !3235, line: 112, baseType: !603, offset: 1344)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3234, file: !3235, line: 114, baseType: !448, size: 8, offset: 1344)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !172, file: !67, line: 471, baseType: !3247, size: 64, offset: 832)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !172, file: !67, line: 473, baseType: !137, size: 64, offset: 896)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !172, file: !67, line: 475, baseType: !137, size: 64, offset: 960)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !172, file: !67, line: 480, baseType: !1051, size: 192, offset: 1024)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !172, file: !67, line: 484, baseType: !3328, size: 576, offset: 1216)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !67, line: 361, size: 576, elements: !3329)
!3329 = !{!3330, !3331, !3332, !3333, !3334, !3335}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3328, file: !67, line: 362, baseType: !182, size: 128)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3328, file: !67, line: 363, baseType: !182, size: 128, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3328, file: !67, line: 364, baseType: !182, size: 128, offset: 256)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3328, file: !67, line: 365, baseType: !182, size: 128, offset: 384)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3328, file: !67, line: 366, baseType: !448, size: 8, offset: 512)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3328, file: !67, line: 367, baseType: !66, size: 32, offset: 544)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !172, file: !67, line: 485, baseType: !3337, size: 2304, offset: 1792)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !74, line: 565, size: 2304, elements: !3338)
!3338 = !{!3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3434, !3438}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3337, file: !74, line: 566, baseType: !3290, size: 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3337, file: !74, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3337, file: !74, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3337, file: !74, line: 569, baseType: !448, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3337, file: !74, line: 570, baseType: !448, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3337, file: !74, line: 571, baseType: !448, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3337, file: !74, line: 572, baseType: !448, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3337, file: !74, line: 573, baseType: !448, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3337, file: !74, line: 574, baseType: !448, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3337, file: !74, line: 575, baseType: !448, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3337, file: !74, line: 576, baseType: !448, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3337, file: !74, line: 577, baseType: !149, size: 32, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3337, file: !74, line: 578, baseType: !195, offset: 96)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3337, file: !74, line: 580, baseType: !182, size: 128, offset: 128)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3337, file: !74, line: 581, baseType: !1380, size: 192, offset: 256)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3337, file: !74, line: 582, baseType: !3355, size: 64, offset: 448)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3357, line: 43, size: 1472, elements: !3358)
!3357 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3358 = !{!3359, !3360, !3361, !3362, !3363, !3366, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3356, file: !3357, line: 44, baseType: !179, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3356, file: !3357, line: 45, baseType: !142, size: 32, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3356, file: !3357, line: 46, baseType: !182, size: 128, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3356, file: !3357, line: 47, baseType: !195, offset: 256)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3356, file: !3357, line: 48, baseType: !3364, size: 64, offset: 256)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !74, line: 533, flags: DIFlagFwdDecl)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3356, file: !3357, line: 49, baseType: !3367, size: 320, offset: 320)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3368, line: 11, size: 320, elements: !3369)
!3368 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3369 = !{!3370, !3371, !3372, !3377}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3367, file: !3368, line: 16, baseType: !597, size: 128)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3367, file: !3368, line: 17, baseType: !286, size: 64, offset: 128)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3367, file: !3368, line: 18, baseType: !3373, size: 64, offset: 192)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{null, !3376}
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3367, file: !3368, line: 19, baseType: !149, size: 32, offset: 256)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3356, file: !3357, line: 50, baseType: !286, size: 64, offset: 640)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3356, file: !3357, line: 51, baseType: !1178, size: 64, offset: 704)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3356, file: !3357, line: 52, baseType: !1178, size: 64, offset: 768)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3356, file: !3357, line: 53, baseType: !1178, size: 64, offset: 832)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3356, file: !3357, line: 54, baseType: !1178, size: 64, offset: 896)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3356, file: !3357, line: 55, baseType: !1178, size: 64, offset: 960)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3356, file: !3357, line: 56, baseType: !286, size: 64, offset: 1024)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3356, file: !3357, line: 57, baseType: !286, size: 64, offset: 1088)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3356, file: !3357, line: 58, baseType: !286, size: 64, offset: 1152)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3356, file: !3357, line: 59, baseType: !286, size: 64, offset: 1216)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3356, file: !3357, line: 60, baseType: !286, size: 64, offset: 1280)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3356, file: !3357, line: 61, baseType: !171, size: 64, offset: 1344)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3356, file: !3357, line: 62, baseType: !448, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3356, file: !3357, line: 63, baseType: !448, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3337, file: !74, line: 583, baseType: !448, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3337, file: !74, line: 584, baseType: !448, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3337, file: !74, line: 585, baseType: !448, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3337, file: !74, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3337, file: !74, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3337, file: !74, line: 592, baseType: !1170, size: 512, offset: 576)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3337, file: !74, line: 593, baseType: !379, size: 64, offset: 1088)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3337, file: !74, line: 594, baseType: !1832, size: 256, offset: 1152)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3337, file: !74, line: 595, baseType: !1359, size: 128, offset: 1408)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3337, file: !74, line: 596, baseType: !3364, size: 64, offset: 1536)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3337, file: !74, line: 597, baseType: !705, size: 32, offset: 1600)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3337, file: !74, line: 598, baseType: !705, size: 32, offset: 1632)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3337, file: !74, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3337, file: !74, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3337, file: !74, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3337, file: !74, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3337, file: !74, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3337, file: !74, line: 604, baseType: !448, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3337, file: !74, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3337, file: !74, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3337, file: !74, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3337, file: !74, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3337, file: !74, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3337, file: !74, line: 610, baseType: !7, size: 32, offset: 1696)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3337, file: !74, line: 611, baseType: !73, size: 32, offset: 1728)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3337, file: !74, line: 612, baseType: !81, size: 32, offset: 1760)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3337, file: !74, line: 613, baseType: !142, size: 32, offset: 1792)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3337, file: !74, line: 614, baseType: !142, size: 32, offset: 1824)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3337, file: !74, line: 615, baseType: !379, size: 64, offset: 1856)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3337, file: !74, line: 616, baseType: !379, size: 64, offset: 1920)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3337, file: !74, line: 617, baseType: !379, size: 64, offset: 1984)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3337, file: !74, line: 618, baseType: !379, size: 64, offset: 2048)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3337, file: !74, line: 620, baseType: !3425, size: 64, offset: 2112)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !74, line: 536, size: 256, elements: !3427)
!3427 = !{!3428, !3429, !3430, !3431}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3426, file: !74, line: 537, baseType: !195)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3426, file: !74, line: 538, baseType: !7, size: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3426, file: !74, line: 540, baseType: !182, size: 128, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3426, file: !74, line: 543, baseType: !3432, size: 64, offset: 192)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !74, line: 534, flags: DIFlagFwdDecl)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3337, file: !74, line: 621, baseType: !3435, size: 64, offset: 2176)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{null, !171, !1322}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3337, file: !74, line: 622, baseType: !3439, size: 64, offset: 2240)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !74, line: 622, flags: DIFlagFwdDecl)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !172, file: !67, line: 486, baseType: !3442, size: 64, offset: 4096)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !74, line: 642, size: 1792, elements: !3444)
!3444 = !{!3445, !3446, !3447, !3451, !3452, !3453}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3443, file: !74, line: 643, baseType: !3204, size: 1472)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3443, file: !74, line: 644, baseType: !3207, size: 64, offset: 1472)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3443, file: !74, line: 645, baseType: !3448, size: 64, offset: 1536)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{null, !171, !448}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3443, file: !74, line: 646, baseType: !3207, size: 64, offset: 1600)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3443, file: !74, line: 647, baseType: !3198, size: 64, offset: 1664)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3443, file: !74, line: 648, baseType: !3198, size: 64, offset: 1728)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !172, file: !67, line: 493, baseType: !3455, size: 64, offset: 4160)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !67, line: 493, flags: DIFlagFwdDecl)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !172, file: !67, line: 499, baseType: !182, size: 128, offset: 4224)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !172, file: !67, line: 502, baseType: !3459, size: 64, offset: 4352)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3461)
!3461 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !67, line: 502, flags: DIFlagFwdDecl)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !172, file: !67, line: 504, baseType: !3463, size: 64, offset: 4416)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !172, file: !67, line: 505, baseType: !379, size: 64, offset: 4480)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !172, file: !67, line: 510, baseType: !379, size: 64, offset: 4544)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !172, file: !67, line: 511, baseType: !3467, size: 64, offset: 4608)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3469)
!3469 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !67, line: 511, flags: DIFlagFwdDecl)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !172, file: !67, line: 513, baseType: !3471, size: 64, offset: 4672)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !67, line: 288, size: 128, elements: !3473)
!3473 = !{!3474, !3475}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3472, file: !67, line: 293, baseType: !7, size: 32)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3472, file: !67, line: 294, baseType: !286, size: 64, offset: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !172, file: !67, line: 515, baseType: !182, size: 128, offset: 4736)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !172, file: !67, line: 526, baseType: !3478, offset: 4864)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3479, line: 5, elements: !209)
!3479 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !172, file: !67, line: 528, baseType: !3481, size: 64, offset: 4864)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3483, line: 14, flags: DIFlagFwdDecl)
!3483 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !172, file: !67, line: 529, baseType: !3485, size: 64, offset: 4928)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3235, line: 22, flags: DIFlagFwdDecl)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !172, file: !67, line: 534, baseType: !471, size: 32, offset: 4992)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !172, file: !67, line: 535, baseType: !149, size: 32, offset: 5024)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !172, file: !67, line: 537, baseType: !195, offset: 5056)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !172, file: !67, line: 538, baseType: !182, size: 128, offset: 5056)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !172, file: !67, line: 540, baseType: !3492, size: 64, offset: 5184)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3494, line: 54, size: 960, elements: !3495)
!3494 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3495 = !{!3496, !3497, !3498, !3499, !3500, !3501, !3502, !3506, !3510, !3511, !3512, !3513, !3517, !3521, !3522}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3493, file: !3494, line: 55, baseType: !179, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3493, file: !3494, line: 56, baseType: !132, size: 64, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3493, file: !3494, line: 58, baseType: !290, size: 64, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3493, file: !3494, line: 59, baseType: !290, size: 64, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3493, file: !3494, line: 60, baseType: !188, size: 64, offset: 256)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3493, file: !3494, line: 62, baseType: !3189, size: 64, offset: 320)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3493, file: !3494, line: 63, baseType: !3503, size: 64, offset: 384)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!236, !171, !3196}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3493, file: !3494, line: 65, baseType: !3507, size: 64, offset: 448)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{null, !3492}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3493, file: !3494, line: 66, baseType: !3198, size: 64, offset: 512)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3493, file: !3494, line: 68, baseType: !3207, size: 64, offset: 576)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3493, file: !3494, line: 70, baseType: !2991, size: 64, offset: 640)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3493, file: !3494, line: 71, baseType: !3514, size: 64, offset: 704)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!3008, !171}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3493, file: !3494, line: 73, baseType: !3518, size: 64, offset: 768)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{null, !171, !3025, !3026}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3493, file: !3494, line: 75, baseType: !3202, size: 64, offset: 832)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3493, file: !3494, line: 77, baseType: !3319, size: 64, offset: 896)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !172, file: !67, line: 541, baseType: !290, size: 64, offset: 5248)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !172, file: !67, line: 543, baseType: !3198, size: 64, offset: 5312)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !172, file: !67, line: 544, baseType: !3526, size: 64, offset: 5376)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !67, line: 45, flags: DIFlagFwdDecl)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !172, file: !67, line: 545, baseType: !3529, size: 64, offset: 5440)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !67, line: 47, flags: DIFlagFwdDecl)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !172, file: !67, line: 547, baseType: !448, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !172, file: !67, line: 548, baseType: !448, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !172, file: !67, line: 549, baseType: !448, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !172, file: !67, line: 550, baseType: !448, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !168, file: !6, line: 426, baseType: !171, size: 64, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !168, file: !6, line: 427, baseType: !142, size: 32, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !168, file: !6, line: 428, baseType: !179, size: 64, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !168, file: !6, line: 429, baseType: !1230, size: 8, offset: 256)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !168, file: !6, line: 433, baseType: !1230, size: 8, offset: 264)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !168, file: !6, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !168, file: !6, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !168, file: !6, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !168, file: !6, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !168, file: !6, line: 442, baseType: !7, size: 32, offset: 288)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !168, file: !6, line: 444, baseType: !142, size: 32, offset: 320)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !168, file: !6, line: 446, baseType: !1051, size: 192, offset: 384)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !168, file: !6, line: 448, baseType: !3548, size: 128, offset: 576)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !6, line: 417, size: 128, elements: !3549)
!3549 = !{!3550}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3548, file: !6, line: 418, baseType: !3551, size: 128)
!3551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 128, elements: !163)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !168, file: !6, line: 449, baseType: !138, size: 64, offset: 704)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !168, file: !6, line: 450, baseType: !167, size: 64, offset: 768)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !168, file: !6, line: 452, baseType: !142, size: 32, offset: 832)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !168, file: !6, line: 459, baseType: !142, size: 32, offset: 864)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !168, file: !6, line: 460, baseType: !142, size: 32, offset: 896)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !168, file: !6, line: 462, baseType: !7, size: 32, offset: 928)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !139, file: !6, line: 647, baseType: !3559, size: 640, offset: 640)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !6, line: 67, size: 640, elements: !3560)
!3560 = !{!3561, !3573, !3581, !3589, !3590, !3591, !3594, !3596, !3597, !3598}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3559, file: !6, line: 68, baseType: !3562, size: 72)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !88, line: 407, size: 72, elements: !3563)
!3563 = !{!3564, !3565, !3566, !3567, !3568, !3570, !3571, !3572}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3562, file: !88, line: 408, baseType: !1231, size: 8)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3562, file: !88, line: 409, baseType: !1231, size: 8, offset: 8)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3562, file: !88, line: 411, baseType: !1231, size: 8, offset: 16)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3562, file: !88, line: 412, baseType: !1231, size: 8, offset: 24)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3562, file: !88, line: 413, baseType: !3569, size: 16, offset: 32)
!3569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2708, line: 29, baseType: !818)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3562, file: !88, line: 414, baseType: !1231, size: 8, offset: 48)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3562, file: !88, line: 418, baseType: !1231, size: 8, offset: 56)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3562, file: !88, line: 419, baseType: !1231, size: 8, offset: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3559, file: !6, line: 69, baseType: !3574, size: 48, offset: 72)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !88, line: 689, size: 48, elements: !3575)
!3575 = !{!3576, !3577, !3578, !3579, !3580}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3574, file: !88, line: 690, baseType: !1231, size: 8)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3574, file: !88, line: 691, baseType: !1231, size: 8, offset: 8)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3574, file: !88, line: 693, baseType: !1231, size: 8, offset: 16)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3574, file: !88, line: 694, baseType: !1231, size: 8, offset: 24)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3574, file: !88, line: 695, baseType: !3569, size: 16, offset: 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3559, file: !6, line: 70, baseType: !3582, size: 64, offset: 120)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !88, line: 677, size: 64, elements: !3583)
!3583 = !{!3584, !3585, !3586, !3587}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3582, file: !88, line: 678, baseType: !1231, size: 8)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3582, file: !88, line: 679, baseType: !1231, size: 8, offset: 8)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3582, file: !88, line: 680, baseType: !3569, size: 16, offset: 16)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3582, file: !88, line: 681, baseType: !3588, size: 32, offset: 32)
!3588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2708, line: 31, baseType: !151)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3559, file: !6, line: 71, baseType: !182, size: 128, offset: 192)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3559, file: !6, line: 72, baseType: !137, size: 64, offset: 320)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3559, file: !6, line: 73, baseType: !3592, size: 64, offset: 384)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !6, line: 48, flags: DIFlagFwdDecl)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3559, file: !6, line: 75, baseType: !3595, size: 64, offset: 448)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3559, file: !6, line: 76, baseType: !142, size: 32, offset: 512)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3559, file: !6, line: 77, baseType: !142, size: 32, offset: 544)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3559, file: !6, line: 78, baseType: !142, size: 32, offset: 576)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !139, file: !6, line: 649, baseType: !172, size: 5568, offset: 1280)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !139, file: !6, line: 651, baseType: !3601, size: 144, offset: 6848)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !88, line: 289, size: 144, elements: !3602)
!3602 = !{!3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3601, file: !88, line: 290, baseType: !1231, size: 8)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3601, file: !88, line: 291, baseType: !1231, size: 8, offset: 8)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3601, file: !88, line: 293, baseType: !3569, size: 16, offset: 16)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3601, file: !88, line: 294, baseType: !1231, size: 8, offset: 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3601, file: !88, line: 295, baseType: !1231, size: 8, offset: 40)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3601, file: !88, line: 296, baseType: !1231, size: 8, offset: 48)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3601, file: !88, line: 297, baseType: !1231, size: 8, offset: 56)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3601, file: !88, line: 298, baseType: !3569, size: 16, offset: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3601, file: !88, line: 299, baseType: !3569, size: 16, offset: 80)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3601, file: !88, line: 300, baseType: !3569, size: 16, offset: 96)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3601, file: !88, line: 301, baseType: !1231, size: 8, offset: 112)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3601, file: !88, line: 302, baseType: !1231, size: 8, offset: 120)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3601, file: !88, line: 303, baseType: !1231, size: 8, offset: 128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3601, file: !88, line: 304, baseType: !1231, size: 8, offset: 136)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !139, file: !6, line: 652, baseType: !3618, size: 64, offset: 7040)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !6, line: 396, size: 384, elements: !3620)
!3620 = !{!3621, !3629, !3637, !3649, !3662, !3671}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3619, file: !6, line: 397, baseType: !3622, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !88, line: 844, size: 40, elements: !3624)
!3624 = !{!3625, !3626, !3627, !3628}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3623, file: !88, line: 845, baseType: !1231, size: 8)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3623, file: !88, line: 846, baseType: !1231, size: 8, offset: 8)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3623, file: !88, line: 848, baseType: !3569, size: 16, offset: 16)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3623, file: !88, line: 849, baseType: !1231, size: 8, offset: 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3619, file: !6, line: 400, baseType: !3630, size: 64, offset: 64)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !88, line: 895, size: 56, elements: !3632)
!3632 = !{!3633, !3634, !3635, !3636}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3631, file: !88, line: 896, baseType: !1231, size: 8)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3631, file: !88, line: 897, baseType: !1231, size: 8, offset: 8)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3631, file: !88, line: 898, baseType: !1231, size: 8, offset: 16)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3631, file: !88, line: 899, baseType: !3588, size: 32, offset: 24)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3619, file: !6, line: 401, baseType: !3638, size: 64, offset: 128)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !88, line: 917, size: 80, elements: !3640)
!3640 = !{!3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3639, file: !88, line: 918, baseType: !1231, size: 8)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3639, file: !88, line: 919, baseType: !1231, size: 8, offset: 8)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3639, file: !88, line: 920, baseType: !1231, size: 8, offset: 16)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3639, file: !88, line: 921, baseType: !1231, size: 8, offset: 24)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3639, file: !88, line: 923, baseType: !3569, size: 16, offset: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3639, file: !88, line: 928, baseType: !1231, size: 8, offset: 48)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3639, file: !88, line: 929, baseType: !1231, size: 8, offset: 56)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3639, file: !88, line: 930, baseType: !3569, size: 16, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3619, file: !6, line: 402, baseType: !3650, size: 64, offset: 192)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !88, line: 955, size: 128, elements: !3652)
!3652 = !{!3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3651, file: !88, line: 956, baseType: !1231, size: 8)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3651, file: !88, line: 957, baseType: !1231, size: 8, offset: 8)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3651, file: !88, line: 958, baseType: !1231, size: 8, offset: 16)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3651, file: !88, line: 959, baseType: !1231, size: 8, offset: 24)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3651, file: !88, line: 960, baseType: !3588, size: 32, offset: 32)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3651, file: !88, line: 963, baseType: !3569, size: 16, offset: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3651, file: !88, line: 967, baseType: !3569, size: 16, offset: 80)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !3651, file: !88, line: 968, baseType: !3661, size: 32, offset: 96)
!3661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3588, size: 32, elements: !1249)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3619, file: !6, line: 403, baseType: !3663, size: 64, offset: 256)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !88, line: 940, size: 160, elements: !3665)
!3665 = !{!3666, !3667, !3668, !3669, !3670}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3664, file: !88, line: 941, baseType: !1231, size: 8)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3664, file: !88, line: 942, baseType: !1231, size: 8, offset: 8)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3664, file: !88, line: 943, baseType: !1231, size: 8, offset: 16)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3664, file: !88, line: 944, baseType: !1231, size: 8, offset: 24)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !3664, file: !88, line: 945, baseType: !2509, size: 128, offset: 32)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3619, file: !6, line: 404, baseType: !3672, size: 64, offset: 320)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !88, line: 1080, size: 24, elements: !3674)
!3674 = !{!3675, !3676, !3677}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3673, file: !88, line: 1081, baseType: !1231, size: 8)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3673, file: !88, line: 1082, baseType: !1231, size: 8, offset: 8)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3673, file: !88, line: 1083, baseType: !1231, size: 8, offset: 16)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !139, file: !6, line: 653, baseType: !3679, size: 64, offset: 7104)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !6, line: 374, size: 5440, elements: !3681)
!3681 = !{!3682, !3693, !3694, !3707, !3749, !3758, !3759}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3680, file: !6, line: 375, baseType: !3683, size: 72)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !88, line: 349, size: 72, elements: !3684)
!3684 = !{!3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3683, file: !88, line: 350, baseType: !1231, size: 8)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3683, file: !88, line: 351, baseType: !1231, size: 8, offset: 8)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3683, file: !88, line: 353, baseType: !3569, size: 16, offset: 16)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !3683, file: !88, line: 354, baseType: !1231, size: 8, offset: 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !3683, file: !88, line: 355, baseType: !1231, size: 8, offset: 40)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !3683, file: !88, line: 356, baseType: !1231, size: 8, offset: 48)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3683, file: !88, line: 357, baseType: !1231, size: 8, offset: 56)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !3683, file: !88, line: 358, baseType: !1231, size: 8, offset: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3680, file: !6, line: 377, baseType: !236, size: 64, offset: 128)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3680, file: !6, line: 381, baseType: !3695, size: 1024, offset: 192)
!3695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3696, size: 1024, elements: !146)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !88, line: 783, size: 64, elements: !3698)
!3698 = !{!3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3697, file: !88, line: 784, baseType: !1231, size: 8)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3697, file: !88, line: 785, baseType: !1231, size: 8, offset: 8)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !3697, file: !88, line: 787, baseType: !1231, size: 8, offset: 16)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !3697, file: !88, line: 788, baseType: !1231, size: 8, offset: 24)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !3697, file: !88, line: 789, baseType: !1231, size: 8, offset: 32)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !3697, file: !88, line: 790, baseType: !1231, size: 8, offset: 40)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !3697, file: !88, line: 791, baseType: !1231, size: 8, offset: 48)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !3697, file: !88, line: 792, baseType: !1231, size: 8, offset: 56)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3680, file: !6, line: 385, baseType: !3708, size: 2048, offset: 1216)
!3708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3709, size: 2048, elements: !2093)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !6, line: 232, size: 6272, elements: !3711)
!3711 = !{!3712, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3710, file: !6, line: 235, baseType: !3713, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !6, line: 82, size: 320, elements: !3715)
!3715 = !{!3716, !3728, !3729, !3730, !3732}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3714, file: !6, line: 83, baseType: !3717, size: 72)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !88, line: 389, size: 72, elements: !3718)
!3718 = !{!3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3717, file: !88, line: 390, baseType: !1231, size: 8)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3717, file: !88, line: 391, baseType: !1231, size: 8, offset: 8)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3717, file: !88, line: 393, baseType: !1231, size: 8, offset: 16)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !3717, file: !88, line: 394, baseType: !1231, size: 8, offset: 24)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !3717, file: !88, line: 395, baseType: !1231, size: 8, offset: 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3717, file: !88, line: 396, baseType: !1231, size: 8, offset: 40)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3717, file: !88, line: 397, baseType: !1231, size: 8, offset: 48)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3717, file: !88, line: 398, baseType: !1231, size: 8, offset: 56)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !3717, file: !88, line: 399, baseType: !1231, size: 8, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3714, file: !6, line: 85, baseType: !142, size: 32, offset: 96)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3714, file: !6, line: 86, baseType: !3595, size: 64, offset: 128)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !3714, file: !6, line: 91, baseType: !3731, size: 64, offset: 192)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3714, file: !6, line: 93, baseType: !236, size: 64, offset: 256)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !3710, file: !6, line: 237, baseType: !3713, size: 64, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3710, file: !6, line: 239, baseType: !7, size: 32, offset: 128)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3710, file: !6, line: 243, baseType: !3696, size: 64, offset: 192)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3710, file: !6, line: 245, baseType: !142, size: 32, offset: 256)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3710, file: !6, line: 247, baseType: !5, size: 32, offset: 288)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !3710, file: !6, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !3710, file: !6, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3710, file: !6, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !3710, file: !6, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !3710, file: !6, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !3710, file: !6, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !3710, file: !6, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !3710, file: !6, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3710, file: !6, line: 257, baseType: !172, size: 5568, offset: 384)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !3710, file: !6, line: 258, baseType: !171, size: 64, offset: 5952)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !3710, file: !6, line: 259, baseType: !1832, size: 256, offset: 6016)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !3680, file: !6, line: 389, baseType: !3750, size: 2048, offset: 3264)
!3750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3751, size: 2048, elements: !2093)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !6, line: 322, size: 64, elements: !3753)
!3753 = !{!3754, !3755, !3756}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3752, file: !6, line: 323, baseType: !7, size: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3752, file: !6, line: 324, baseType: !3167, size: 32, offset: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3752, file: !6, line: 328, baseType: !3757, offset: 64)
!3757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3714, elements: !2194)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3680, file: !6, line: 391, baseType: !3595, size: 64, offset: 5312)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3680, file: !6, line: 392, baseType: !142, size: 32, offset: 5376)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !139, file: !6, line: 655, baseType: !3679, size: 64, offset: 7168)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !139, file: !6, line: 656, baseType: !3762, size: 1024, offset: 7232)
!3762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3731, size: 1024, elements: !146)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !139, file: !6, line: 657, baseType: !3762, size: 1024, offset: 8256)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !139, file: !6, line: 659, baseType: !3765, size: 64, offset: 9280)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !139, file: !6, line: 661, baseType: !278, size: 16, offset: 9344)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !139, file: !6, line: 662, baseType: !1230, size: 8, offset: 9360)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !139, file: !6, line: 663, baseType: !1230, size: 8, offset: 9368)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !139, file: !6, line: 664, baseType: !1230, size: 8, offset: 9376)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !139, file: !6, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !139, file: !6, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !139, file: !6, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !139, file: !6, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !139, file: !6, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !139, file: !6, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !139, file: !6, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !139, file: !6, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !139, file: !6, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !139, file: !6, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !139, file: !6, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !139, file: !6, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !139, file: !6, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !139, file: !6, line: 679, baseType: !142, size: 32, offset: 9408)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !139, file: !6, line: 682, baseType: !236, size: 64, offset: 9472)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !139, file: !6, line: 683, baseType: !236, size: 64, offset: 9536)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !139, file: !6, line: 684, baseType: !236, size: 64, offset: 9600)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !139, file: !6, line: 686, baseType: !182, size: 128, offset: 9664)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !139, file: !6, line: 688, baseType: !142, size: 32, offset: 9792)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !139, file: !6, line: 690, baseType: !149, size: 32, offset: 9824)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !139, file: !6, line: 691, baseType: !705, size: 32, offset: 9856)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !139, file: !6, line: 693, baseType: !286, size: 64, offset: 9920)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !139, file: !6, line: 696, baseType: !286, size: 64, offset: 9984)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !139, file: !6, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !139, file: !6, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !139, file: !6, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !139, file: !6, line: 702, baseType: !3797, size: 64, offset: 10112)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !6, line: 28, flags: DIFlagFwdDecl)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !139, file: !6, line: 703, baseType: !142, size: 32, offset: 10176)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !139, file: !6, line: 704, baseType: !108, size: 32, offset: 10208)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !139, file: !6, line: 705, baseType: !3802, size: 64, offset: 10240)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !6, line: 502, size: 64, elements: !3803)
!3803 = !{!3804, !3805}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !3802, file: !6, line: 506, baseType: !7, size: 32)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3802, file: !6, line: 512, baseType: !142, size: 32, offset: 32)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !139, file: !6, line: 706, baseType: !3807, size: 128, offset: 10304)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !6, line: 522, size: 128, elements: !3808)
!3808 = !{!3809, !3810, !3811, !3812}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !3807, file: !6, line: 529, baseType: !7, size: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !3807, file: !6, line: 535, baseType: !7, size: 32, offset: 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !3807, file: !6, line: 545, baseType: !7, size: 32, offset: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3807, file: !6, line: 551, baseType: !142, size: 32, offset: 96)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !139, file: !6, line: 707, baseType: !3807, size: 128, offset: 10432)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !139, file: !6, line: 708, baseType: !7, size: 32, offset: 10560)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !139, file: !6, line: 710, baseType: !817, size: 16, offset: 10592)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !139, file: !6, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3819)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tp_finger", file: !3, line: 220, size: 224, align: 16, elements: !3820)
!3820 = !{!3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3833, !3834}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !3819, file: !3, line: 221, baseType: !3569, size: 16)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "abs_x", scope: !3819, file: !3, line: 222, baseType: !3569, size: 16, offset: 16)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "abs_y", scope: !3819, file: !3, line: 223, baseType: !3569, size: 16, offset: 32)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "rel_x", scope: !3819, file: !3, line: 224, baseType: !3569, size: 16, offset: 48)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "rel_y", scope: !3819, file: !3, line: 225, baseType: !3569, size: 16, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "tool_major", scope: !3819, file: !3, line: 226, baseType: !3569, size: 16, offset: 80)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "tool_minor", scope: !3819, file: !3, line: 227, baseType: !3569, size: 16, offset: 96)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !3819, file: !3, line: 228, baseType: !3569, size: 16, offset: 112)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "touch_major", scope: !3819, file: !3, line: 229, baseType: !3569, size: 16, offset: 128)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "touch_minor", scope: !3819, file: !3, line: 230, baseType: !3569, size: 16, offset: 144)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3819, file: !3, line: 231, baseType: !3832, size: 32, offset: 160)
!3832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3569, size: 32, elements: !163)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "pressure", scope: !3819, file: !3, line: 232, baseType: !3569, size: 16, offset: 192)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "multi", scope: !3819, file: !3, line: 233, baseType: !3569, size: 16, offset: 208)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!3836 = !{!0, !3837, !3842, !3847, !3850, !3902, !3907, !3912, !3914, !3919, !3924, !3926, !3987, !3990, !4025}
!3837 = !DIGlobalVariableExpression(var: !3838, expr: !DIExpression())
!3838 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description213", scope: !2, file: !3, line: 156, type: !3839, isLocal: true, isDefinition: true, align: 8)
!3839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 448, elements: !3840)
!3840 = !{!3841}
!3841 = !DISubrange(count: 56)
!3842 = !DIGlobalVariableExpression(var: !3843, expr: !DIExpression())
!3843 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file214", scope: !2, file: !3, line: 157, type: !3844, isLocal: true, isDefinition: true, align: 8)
!3844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 328, elements: !3845)
!3845 = !{!3846}
!3846 = !DISubrange(count: 41)
!3847 = !DIGlobalVariableExpression(var: !3848, expr: !DIExpression())
!3848 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license215", scope: !2, file: !3, line: 157, type: !3849, isLocal: true, isDefinition: true, align: 8)
!3849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 160, elements: !2064)
!3850 = !DIGlobalVariableExpression(var: !3851, expr: !DIExpression())
!3851 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 163, type: !3852, isLocal: true, isDefinition: true, align: 64)
!3852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3853)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3854, line: 69, size: 320, elements: !3855)
!3854 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!3855 = !{!3856, !3857, !3858, !3874, !3876, !3880, !3881}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3853, file: !3854, line: 70, baseType: !179, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3853, file: !3854, line: 71, baseType: !132, size: 64, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3853, file: !3854, line: 72, baseType: !3859, size: 64, offset: 128)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3861)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3854, line: 47, size: 256, elements: !3862)
!3862 = !{!3863, !3864, !3869, !3873}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3861, file: !3854, line: 49, baseType: !7, size: 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3861, file: !3854, line: 51, baseType: !3865, size: 64, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!142, !179, !3868}
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3861, file: !3854, line: 53, baseType: !3870, size: 64, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!142, !236, !3868}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3861, file: !3854, line: 55, baseType: !426, size: 64, offset: 192)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3853, file: !3854, line: 73, baseType: !3875, size: 16, offset: 192)
!3875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3853, file: !3854, line: 74, baseType: !3877, size: 8, offset: 208)
!3877 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !150, line: 16, baseType: !3878)
!3878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !152, line: 20, baseType: !3879)
!3879 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3853, file: !3854, line: 75, baseType: !1230, size: 8, offset: 216)
!3881 = !DIDerivedType(tag: DW_TAG_member, scope: !3853, file: !3854, line: 76, baseType: !3882, size: 64, offset: 256)
!3882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3853, file: !3854, line: 76, size: 64, elements: !3883)
!3883 = !{!3884, !3885, !3892}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3882, file: !3854, line: 77, baseType: !137, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3882, file: !3854, line: 78, baseType: !3886, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3888)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3854, line: 86, size: 128, elements: !3889)
!3889 = !{!3890, !3891}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3888, file: !3854, line: 87, baseType: !7, size: 32)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3888, file: !3854, line: 88, baseType: !236, size: 64, offset: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3882, file: !3854, line: 79, baseType: !3893, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3895)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3854, line: 92, size: 256, elements: !3896)
!3896 = !{!3897, !3898, !3899, !3900, !3901}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3895, file: !3854, line: 94, baseType: !7, size: 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3895, file: !3854, line: 95, baseType: !7, size: 32, offset: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3895, file: !3854, line: 96, baseType: !2485, size: 64, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3895, file: !3854, line: 97, baseType: !3859, size: 64, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3895, file: !3854, line: 98, baseType: !137, size: 64, offset: 192)
!3902 = !DIGlobalVariableExpression(var: !3903, expr: !DIExpression())
!3903 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype216", scope: !2, file: !3, line: 163, type: !3904, isLocal: true, isDefinition: true, align: 8)
!3904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 216, elements: !3905)
!3905 = !{!3906}
!3906 = !DISubrange(count: 27)
!3907 = !DIGlobalVariableExpression(var: !3908, expr: !DIExpression())
!3908 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug217", scope: !2, file: !3, line: 164, type: !3909, isLocal: true, isDefinition: true, align: 8)
!3909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 360, elements: !3910)
!3910 = !{!3911}
!3911 = !DISubrange(count: 45)
!3912 = !DIGlobalVariableExpression(var: !3913, expr: !DIExpression())
!3913 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_bcm5974_driver_init226", scope: !2, file: !3, line: 1028, type: !137, isLocal: true, isDefinition: true)
!3914 = !DIGlobalVariableExpression(var: !3915, expr: !DIExpression())
!3915 = distinct !DIGlobalVariable(name: "__exitcall_bcm5974_driver_exit", scope: !2, file: !3, line: 1028, type: !3916, isLocal: true, isDefinition: true)
!3916 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3917, line: 117, baseType: !3918)
!3917 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!3919 = !DIGlobalVariableExpression(var: !3920, expr: !DIExpression())
!3920 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 163, type: !3921, isLocal: true, isDefinition: true)
!3921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 112, elements: !3922)
!3922 = !{!3923}
!3923 = !DISubrange(count: 14)
!3924 = !DIGlobalVariableExpression(var: !3925, expr: !DIExpression())
!3925 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 162, type: !142, isLocal: true, isDefinition: true)
!3926 = !DIGlobalVariableExpression(var: !3927, expr: !DIExpression())
!3927 = distinct !DIGlobalVariable(name: "bcm5974_driver", scope: !2, file: !3, line: 1018, type: !3928, isLocal: true, isDefinition: true)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !6, line: 1184, size: 2112, elements: !3929)
!3929 = !{!3930, !3931, !3952, !3956, !3960, !3964, !3968, !3969, !3970, !3971, !3972, !3973, !3978, !3983, !3984, !3985, !3986}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3928, file: !6, line: 1185, baseType: !179, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3928, file: !6, line: 1187, baseType: !3932, size: 64, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!142, !3709, !3935}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3937)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3260, line: 121, size: 256, elements: !3938)
!3938 = !{!3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !3937, file: !3260, line: 123, baseType: !818, size: 16)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3937, file: !3260, line: 126, baseType: !818, size: 16, offset: 16)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3937, file: !3260, line: 127, baseType: !818, size: 16, offset: 32)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !3937, file: !3260, line: 128, baseType: !818, size: 16, offset: 48)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !3937, file: !3260, line: 129, baseType: !818, size: 16, offset: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3937, file: !3260, line: 132, baseType: !1231, size: 8, offset: 80)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3937, file: !3260, line: 133, baseType: !1231, size: 8, offset: 88)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3937, file: !3260, line: 134, baseType: !1231, size: 8, offset: 96)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3937, file: !3260, line: 137, baseType: !1231, size: 8, offset: 104)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3937, file: !3260, line: 138, baseType: !1231, size: 8, offset: 112)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3937, file: !3260, line: 139, baseType: !1231, size: 8, offset: 120)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3937, file: !3260, line: 142, baseType: !1231, size: 8, offset: 128)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3937, file: !3260, line: 145, baseType: !3279, size: 64, align: 64, offset: 192)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3928, file: !6, line: 1190, baseType: !3953, size: 64, offset: 128)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{null, !3709}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3928, file: !6, line: 1192, baseType: !3957, size: 64, offset: 192)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!142, !3709, !7, !137}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3928, file: !6, line: 1195, baseType: !3961, size: 64, offset: 256)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!142, !3709, !3290}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3928, file: !6, line: 1196, baseType: !3965, size: 64, offset: 320)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!142, !3709}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !3928, file: !6, line: 1197, baseType: !3965, size: 64, offset: 384)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !3928, file: !6, line: 1199, baseType: !3965, size: 64, offset: 448)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !3928, file: !6, line: 1200, baseType: !3965, size: 64, offset: 512)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3928, file: !6, line: 1202, baseType: !3935, size: 64, offset: 576)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3928, file: !6, line: 1203, baseType: !290, size: 64, offset: 640)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3928, file: !6, line: 1205, baseType: !3974, size: 128, offset: 704)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !6, line: 1091, size: 128, elements: !3975)
!3975 = !{!3976, !3977}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3974, file: !6, line: 1092, baseType: !195)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3974, file: !6, line: 1093, baseType: !182, size: 128)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !3928, file: !6, line: 1206, baseType: !3979, size: 1216, offset: 832)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !6, line: 1113, size: 1216, elements: !3980)
!3980 = !{!3981, !3982}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3979, file: !6, line: 1114, baseType: !3248, size: 1152)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !3979, file: !6, line: 1115, baseType: !142, size: 32, offset: 1152)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !3928, file: !6, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !3928, file: !6, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !3928, file: !6, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !3928, file: !6, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!3987 = !DIGlobalVariableExpression(var: !3988, expr: !DIExpression())
!3988 = distinct !DIGlobalVariable(name: "__key", scope: !3989, file: !3, line: 918, type: !603, isLocal: true, isDefinition: true)
!3989 = distinct !DISubprogram(name: "bcm5974_probe", scope: !3, file: !3, line: 894, type: !3933, scopeLine: 896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!3990 = !DIGlobalVariableExpression(var: !3991, expr: !DIExpression())
!3991 = distinct !DIGlobalVariable(name: "bcm5974_config_table", scope: !2, file: !3, line: 316, type: !3992, isLocal: true, isDefinition: true)
!3992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3993, size: 15232, elements: !3922)
!3993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3994)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bcm5974_config", file: !3, line: 248, size: 1088, elements: !3995)
!3995 = !{!3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4021, !4022, !4023, !4024}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "ansi", scope: !3994, file: !3, line: 249, baseType: !142, size: 32)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "iso", scope: !3994, file: !3, line: 249, baseType: !142, size: 32, offset: 32)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "jis", scope: !3994, file: !3, line: 249, baseType: !142, size: 32, offset: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !3994, file: !3, line: 250, baseType: !142, size: 32, offset: 96)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "bt_ep", scope: !3994, file: !3, line: 251, baseType: !142, size: 32, offset: 128)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "bt_datalen", scope: !3994, file: !3, line: 252, baseType: !142, size: 32, offset: 160)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "tp_ep", scope: !3994, file: !3, line: 253, baseType: !142, size: 32, offset: 192)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "tp_type", scope: !3994, file: !3, line: 254, baseType: !113, size: 32, offset: 224)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "tp_header", scope: !3994, file: !3, line: 255, baseType: !142, size: 32, offset: 256)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "tp_datalen", scope: !3994, file: !3, line: 256, baseType: !142, size: 32, offset: 288)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "tp_button", scope: !3994, file: !3, line: 257, baseType: !142, size: 32, offset: 320)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "tp_fsize", scope: !3994, file: !3, line: 258, baseType: !142, size: 32, offset: 352)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "tp_delta", scope: !3994, file: !3, line: 259, baseType: !142, size: 32, offset: 384)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "um_size", scope: !3994, file: !3, line: 260, baseType: !142, size: 32, offset: 416)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "um_req_val", scope: !3994, file: !3, line: 261, baseType: !142, size: 32, offset: 448)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "um_req_idx", scope: !3994, file: !3, line: 262, baseType: !142, size: 32, offset: 480)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "um_switch_idx", scope: !3994, file: !3, line: 263, baseType: !142, size: 32, offset: 512)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "um_switch_on", scope: !3994, file: !3, line: 264, baseType: !142, size: 32, offset: 544)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "um_switch_off", scope: !3994, file: !3, line: 265, baseType: !142, size: 32, offset: 576)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3994, file: !3, line: 266, baseType: !4016, size: 96, offset: 608)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bcm5974_param", file: !3, line: 241, size: 96, elements: !4017)
!4017 = !{!4018, !4019, !4020}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "snratio", scope: !4016, file: !3, line: 242, baseType: !142, size: 32)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !4016, file: !3, line: 243, baseType: !142, size: 32, offset: 32)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4016, file: !3, line: 244, baseType: !142, size: 32, offset: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !3994, file: !3, line: 267, baseType: !4016, size: 96, offset: 704)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3994, file: !3, line: 268, baseType: !4016, size: 96, offset: 800)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !3994, file: !3, line: 269, baseType: !4016, size: 96, offset: 896)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !3994, file: !3, line: 270, baseType: !4016, size: 96, offset: 992)
!4025 = !DIGlobalVariableExpression(var: !4026, expr: !DIExpression())
!4026 = distinct !DIGlobalVariable(name: "bcm5974_table", scope: !2, file: !3, line: 97, type: !4027, isLocal: true, isDefinition: true)
!4027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3936, size: 10240, elements: !4028)
!4028 = !{!4029}
!4029 = !DISubrange(count: 40)
!4030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 240, elements: !4031)
!4031 = !{!4032}
!4032 = !DISubrange(count: 30)
!4033 = !{i32 7, !"Dwarf Version", i32 4}
!4034 = !{i32 2, !"Debug Info Version", i32 3}
!4035 = !{i32 1, !"wchar_size", i32 2}
!4036 = !{i32 1, !"Code Model", i32 2}
!4037 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4038 = distinct !DISubprogram(name: "bcm5974_driver_init", scope: !3, file: !3, line: 1028, type: !4039, scopeLine: 1028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!142}
!4041 = !DILocation(line: 1028, column: 1, scope: !4038)
!4042 = distinct !DISubprogram(name: "bcm5974_driver_exit", scope: !3, file: !3, line: 1028, type: !1753, scopeLine: 1028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4043 = !DILocation(line: 1028, column: 1, scope: !4042)
!4044 = !DILocalVariable(name: "iface", arg: 1, scope: !3989, file: !3, line: 894, type: !3709)
!4045 = !DILocation(line: 894, column: 48, scope: !3989)
!4046 = !DILocalVariable(name: "id", arg: 2, scope: !3989, file: !3, line: 895, type: !3935)
!4047 = !DILocation(line: 895, column: 33, scope: !3989)
!4048 = !DILocalVariable(name: "udev", scope: !3989, file: !3, line: 897, type: !138)
!4049 = !DILocation(line: 897, column: 21, scope: !3989)
!4050 = !DILocation(line: 897, column: 48, scope: !3989)
!4051 = !DILocation(line: 897, column: 28, scope: !3989)
!4052 = !DILocalVariable(name: "cfg", scope: !3989, file: !3, line: 898, type: !4053)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!4054 = !DILocation(line: 898, column: 31, scope: !3989)
!4055 = !DILocalVariable(name: "dev", scope: !3989, file: !3, line: 899, type: !4056)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bcm5974", file: !3, line: 274, size: 4352, elements: !4058)
!4058 = !{!4059, !4061, !4062, !4063, !4354, !4355, !4356, !4357, !4412, !4420, !4421, !4423, !4425, !4431}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4057, file: !3, line: 275, baseType: !4060, size: 512)
!4060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 512, elements: !241)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "udev", scope: !4057, file: !3, line: 276, baseType: !138, size: 64, offset: 512)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !4057, file: !3, line: 277, baseType: !3709, size: 64, offset: 576)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !4057, file: !3, line: 278, baseType: !4064, size: 64, offset: 640)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !4066, line: 131, size: 10432, elements: !4067)
!4066 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4067 = !{!4068, !4069, !4070, !4071, !4079, !4080, !4081, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4108, !4113, !4208, !4211, !4212, !4213, !4215, !4234, !4244, !4245, !4246, !4247, !4248, !4252, !4256, !4260, !4264, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4351, !4352}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4065, file: !4066, line: 132, baseType: !179, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4065, file: !4066, line: 133, baseType: !179, size: 64, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !4065, file: !4066, line: 134, baseType: !179, size: 64, offset: 128)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4065, file: !4066, line: 135, baseType: !4072, size: 64, offset: 192)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !4073, line: 59, size: 64, elements: !4074)
!4073 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4074 = !{!4075, !4076, !4077, !4078}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4072, file: !4073, line: 60, baseType: !818, size: 16)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4072, file: !4073, line: 61, baseType: !818, size: 16, offset: 16)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4072, file: !4073, line: 62, baseType: !818, size: 16, offset: 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4072, file: !4073, line: 63, baseType: !818, size: 16, offset: 48)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4065, file: !4066, line: 137, baseType: !1248, size: 64, offset: 256)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4065, file: !4066, line: 139, baseType: !1248, size: 64, offset: 320)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4065, file: !4066, line: 140, baseType: !4082, size: 768, offset: 384)
!4082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 768, elements: !2099)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4065, file: !4066, line: 141, baseType: !1248, size: 64, offset: 1152)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4065, file: !4066, line: 142, baseType: !1248, size: 64, offset: 1216)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4065, file: !4066, line: 143, baseType: !1248, size: 64, offset: 1280)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4065, file: !4066, line: 144, baseType: !1248, size: 64, offset: 1344)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4065, file: !4066, line: 145, baseType: !1248, size: 64, offset: 1408)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4065, file: !4066, line: 146, baseType: !3551, size: 128, offset: 1472)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4065, file: !4066, line: 147, baseType: !1248, size: 64, offset: 1600)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !4065, file: !4066, line: 149, baseType: !7, size: 32, offset: 1664)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !4065, file: !4066, line: 151, baseType: !7, size: 32, offset: 1696)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !4065, file: !4066, line: 152, baseType: !7, size: 32, offset: 1728)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4065, file: !4066, line: 153, baseType: !137, size: 64, offset: 1792)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !4065, file: !4066, line: 155, baseType: !4095, size: 64, offset: 1856)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!142, !4064, !4098, !2485}
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4100)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !4073, line: 114, size: 320, elements: !4101)
!4101 = !{!4102, !4103, !4104, !4105, !4106}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4100, file: !4073, line: 116, baseType: !1231, size: 8)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4100, file: !4073, line: 117, baseType: !1231, size: 8, offset: 8)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4100, file: !4073, line: 118, baseType: !818, size: 16, offset: 16)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4100, file: !4073, line: 119, baseType: !151, size: 32, offset: 32)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4100, file: !4073, line: 120, baseType: !4107, size: 256, offset: 64)
!4107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1231, size: 256, elements: !2093)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !4065, file: !4066, line: 158, baseType: !4109, size: 64, offset: 1920)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!142, !4064, !4112}
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !4065, file: !4066, line: 161, baseType: !4114, size: 64, offset: 1984)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !4066, line: 534, size: 896, elements: !4116)
!4116 = !{!4117, !4184, !4188, !4192, !4196, !4197, !4201, !4202, !4203, !4204, !4205, !4206}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !4115, file: !4066, line: 535, baseType: !4118, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!142, !4064, !4121, !4121}
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !4073, line: 450, size: 384, elements: !4123)
!4123 = !{!4124, !4125, !4126, !4127, !4132, !4137}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4122, file: !4073, line: 451, baseType: !818, size: 16)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4122, file: !4073, line: 452, baseType: !1082, size: 16, offset: 16)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4122, file: !4073, line: 453, baseType: !818, size: 16, offset: 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !4122, file: !4073, line: 454, baseType: !4128, size: 32, offset: 48)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !4073, line: 316, size: 32, elements: !4129)
!4129 = !{!4130, !4131}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !4128, file: !4073, line: 317, baseType: !818, size: 16)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4128, file: !4073, line: 318, baseType: !818, size: 16, offset: 16)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !4122, file: !4073, line: 455, baseType: !4133, size: 32, offset: 80)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !4073, line: 306, size: 32, elements: !4134)
!4134 = !{!4135, !4136}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4133, file: !4073, line: 307, baseType: !818, size: 16)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4133, file: !4073, line: 308, baseType: !818, size: 16, offset: 16)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4122, file: !4073, line: 463, baseType: !4138, size: 256, offset: 128)
!4138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4122, file: !4073, line: 457, size: 256, elements: !4139)
!4139 = !{!4140, !4151, !4157, !4169, !4179}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4138, file: !4073, line: 458, baseType: !4141, size: 80)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !4073, line: 345, size: 80, elements: !4142)
!4142 = !{!4143, !4144}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4141, file: !4073, line: 346, baseType: !1082, size: 16)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4141, file: !4073, line: 347, baseType: !4145, size: 64, offset: 16)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !4073, line: 333, size: 64, elements: !4146)
!4146 = !{!4147, !4148, !4149, !4150}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !4145, file: !4073, line: 334, baseType: !818, size: 16)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !4145, file: !4073, line: 335, baseType: !818, size: 16, offset: 16)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !4145, file: !4073, line: 336, baseType: !818, size: 16, offset: 32)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !4145, file: !4073, line: 337, baseType: !818, size: 16, offset: 48)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !4138, file: !4073, line: 459, baseType: !4152, size: 96)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !4073, line: 356, size: 96, elements: !4153)
!4153 = !{!4154, !4155, !4156}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !4152, file: !4073, line: 357, baseType: !1082, size: 16)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !4152, file: !4073, line: 358, baseType: !1082, size: 16, offset: 16)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4152, file: !4073, line: 359, baseType: !4145, size: 64, offset: 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !4138, file: !4073, line: 460, baseType: !4158, size: 256)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !4073, line: 401, size: 256, elements: !4159)
!4159 = !{!4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !4158, file: !4073, line: 402, baseType: !818, size: 16)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4158, file: !4073, line: 403, baseType: !818, size: 16, offset: 16)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !4158, file: !4073, line: 404, baseType: !1082, size: 16, offset: 32)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4158, file: !4073, line: 405, baseType: !1082, size: 16, offset: 48)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !4158, file: !4073, line: 406, baseType: !818, size: 16, offset: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4158, file: !4073, line: 408, baseType: !4145, size: 64, offset: 80)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !4158, file: !4073, line: 410, baseType: !151, size: 32, offset: 160)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !4158, file: !4073, line: 411, baseType: !4168, size: 64, offset: 192)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4138, file: !4073, line: 461, baseType: !4170, size: 192)
!4170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4171, size: 192, elements: !163)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !4073, line: 372, size: 96, elements: !4172)
!4172 = !{!4173, !4174, !4175, !4176, !4177, !4178}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !4171, file: !4073, line: 373, baseType: !818, size: 16)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !4171, file: !4073, line: 374, baseType: !818, size: 16, offset: 16)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !4171, file: !4073, line: 376, baseType: !1082, size: 16, offset: 32)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !4171, file: !4073, line: 377, baseType: !1082, size: 16, offset: 48)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !4171, file: !4073, line: 379, baseType: !818, size: 16, offset: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !4171, file: !4073, line: 380, baseType: !1082, size: 16, offset: 80)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !4138, file: !4073, line: 462, baseType: !4180, size: 32)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !4073, line: 422, size: 32, elements: !4181)
!4181 = !{!4182, !4183}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !4180, file: !4073, line: 423, baseType: !818, size: 16)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !4180, file: !4073, line: 424, baseType: !818, size: 16, offset: 16)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !4115, file: !4066, line: 537, baseType: !4185, size: 64, offset: 64)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!142, !4064, !142}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !4115, file: !4066, line: 539, baseType: !4189, size: 64, offset: 128)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!142, !4064, !142, !142}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !4115, file: !4066, line: 540, baseType: !4193, size: 64, offset: 192)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{null, !4064, !817}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !4115, file: !4066, line: 541, baseType: !4193, size: 64, offset: 256)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4115, file: !4066, line: 543, baseType: !4198, size: 64, offset: 320)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{null, !4114}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4115, file: !4066, line: 545, baseType: !137, size: 64, offset: 384)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4115, file: !4066, line: 547, baseType: !3551, size: 128, offset: 448)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4115, file: !4066, line: 549, baseType: !1051, size: 192, offset: 576)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !4115, file: !4066, line: 551, baseType: !142, size: 32, offset: 768)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !4115, file: !4066, line: 552, baseType: !4121, size: 64, offset: 832)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !4115, file: !4066, line: 553, baseType: !4207, offset: 896)
!4207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, elements: !2194)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !4065, file: !4066, line: 163, baseType: !4209, size: 64, offset: 2048)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !4066, line: 24, flags: DIFlagFwdDecl)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !4065, file: !4066, line: 165, baseType: !7, size: 32, offset: 2112)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4065, file: !4066, line: 166, baseType: !3367, size: 320, offset: 2176)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !4065, file: !4066, line: 168, baseType: !4214, size: 64, offset: 2496)
!4214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 64, elements: !163)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !4065, file: !4066, line: 170, baseType: !4216, size: 64, offset: 2560)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !4218, line: 43, size: 256, elements: !4219)
!4218 = !DIFile(filename: "./include/linux/input/mt.h", directory: "/home/lizy2001/genbc/linux")
!4219 = !{!4220, !4221, !4222, !4223, !4224, !4225, !4226}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "trkid", scope: !4217, file: !4218, line: 44, baseType: !142, size: 32)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "num_slots", scope: !4217, file: !4218, line: 45, baseType: !142, size: 32, offset: 32)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4217, file: !4218, line: 46, baseType: !142, size: 32, offset: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4217, file: !4218, line: 47, baseType: !7, size: 32, offset: 96)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !4217, file: !4218, line: 48, baseType: !7, size: 32, offset: 128)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !4217, file: !4218, line: 49, baseType: !663, size: 64, offset: 192)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4217, file: !4218, line: 50, baseType: !4227, offset: 256)
!4227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4228, elements: !2194)
!4228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt_slot", file: !4218, line: 27, size: 512, elements: !4229)
!4229 = !{!4230, !4232, !4233}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "abs", scope: !4228, file: !4218, line: 28, baseType: !4231, size: 448)
!4231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 448, elements: !3922)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !4228, file: !4218, line: 29, baseType: !7, size: 32, offset: 448)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4228, file: !4218, line: 30, baseType: !7, size: 32, offset: 480)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !4065, file: !4066, line: 172, baseType: !4235, size: 64, offset: 2624)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !4073, line: 90, size: 192, elements: !4237)
!4237 = !{!4238, !4239, !4240, !4241, !4242, !4243}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4236, file: !4073, line: 91, baseType: !1323, size: 32)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4236, file: !4073, line: 92, baseType: !1323, size: 32, offset: 32)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4236, file: !4073, line: 93, baseType: !1323, size: 32, offset: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4236, file: !4073, line: 94, baseType: !1323, size: 32, offset: 96)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4236, file: !4073, line: 95, baseType: !1323, size: 32, offset: 128)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4236, file: !4073, line: 96, baseType: !1323, size: 32, offset: 160)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4065, file: !4066, line: 174, baseType: !4082, size: 768, offset: 2688)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !4065, file: !4066, line: 175, baseType: !1248, size: 64, offset: 3456)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !4065, file: !4066, line: 176, baseType: !1248, size: 64, offset: 3520)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !4065, file: !4066, line: 177, baseType: !1248, size: 64, offset: 3584)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4065, file: !4066, line: 179, baseType: !4249, size: 64, offset: 3648)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!142, !4064}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4065, file: !4066, line: 180, baseType: !4253, size: 64, offset: 3712)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{null, !4064}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4065, file: !4066, line: 181, baseType: !4257, size: 64, offset: 3776)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!142, !4064, !314}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4065, file: !4066, line: 182, baseType: !4261, size: 64, offset: 3840)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!142, !4064, !7, !7, !142}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !4065, file: !4066, line: 184, baseType: !4265, size: 64, offset: 3904)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !4066, line: 337, size: 576, elements: !4267)
!4267 = !{!4268, !4269, !4270, !4271, !4272, !4338, !4339}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4266, file: !4066, line: 339, baseType: !137, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4266, file: !4066, line: 341, baseType: !142, size: 32, offset: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4266, file: !4066, line: 342, baseType: !179, size: 64, offset: 128)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4266, file: !4066, line: 344, baseType: !4064, size: 64, offset: 192)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4266, file: !4066, line: 345, baseType: !4273, size: 64, offset: 256)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !4066, line: 302, size: 960, elements: !4275)
!4275 = !{!4276, !4277, !4281, !4292, !4296, !4300, !4327, !4331, !4332, !4333, !4334, !4335, !4336, !4337}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4274, file: !4066, line: 304, baseType: !137, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4274, file: !4066, line: 306, baseType: !4278, size: 64, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{null, !4265, !7, !7, !142}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4274, file: !4066, line: 307, baseType: !4282, size: 64, offset: 128)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{null, !4265, !4285, !7}
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4287)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !4066, line: 32, size: 64, elements: !4288)
!4288 = !{!4289, !4290, !4291}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4287, file: !4066, line: 33, baseType: !818, size: 16)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4287, file: !4066, line: 34, baseType: !818, size: 16, offset: 16)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4287, file: !4066, line: 35, baseType: !1323, size: 32, offset: 32)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4274, file: !4066, line: 309, baseType: !4293, size: 64, offset: 192)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!448, !4265, !7, !7, !142}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4274, file: !4066, line: 310, baseType: !4297, size: 64, offset: 256)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!448, !4273, !4064}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4274, file: !4066, line: 311, baseType: !4301, size: 64, offset: 320)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!142, !4273, !4064, !4304}
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4306)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3260, line: 342, size: 1600, elements: !4307)
!4307 = !{!4308, !4309, !4310, !4311, !4312, !4313, !4315, !4317, !4318, !4319, !4320, !4321, !4322, !4324, !4325, !4326}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4306, file: !3260, line: 344, baseType: !3279, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4306, file: !3260, line: 346, baseType: !818, size: 16, offset: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4306, file: !3260, line: 347, baseType: !818, size: 16, offset: 80)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4306, file: !3260, line: 348, baseType: !818, size: 16, offset: 96)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4306, file: !3260, line: 349, baseType: !818, size: 16, offset: 112)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4306, file: !3260, line: 351, baseType: !4314, size: 64, offset: 128)
!4314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3279, size: 64, elements: !1249)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4306, file: !3260, line: 352, baseType: !4316, size: 768, offset: 192)
!4316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3279, size: 768, elements: !2099)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4306, file: !3260, line: 353, baseType: !4314, size: 64, offset: 960)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4306, file: !3260, line: 354, baseType: !4314, size: 64, offset: 1024)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4306, file: !3260, line: 355, baseType: !4314, size: 64, offset: 1088)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4306, file: !3260, line: 356, baseType: !4314, size: 64, offset: 1152)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4306, file: !3260, line: 357, baseType: !4314, size: 64, offset: 1216)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4306, file: !3260, line: 358, baseType: !4323, size: 128, offset: 1280)
!4323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3279, size: 128, elements: !163)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4306, file: !3260, line: 359, baseType: !4314, size: 64, offset: 1408)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4306, file: !3260, line: 360, baseType: !4314, size: 64, offset: 1472)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4306, file: !3260, line: 362, baseType: !3279, size: 64, offset: 1536)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4274, file: !4066, line: 312, baseType: !4328, size: 64, offset: 384)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{null, !4265}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4274, file: !4066, line: 313, baseType: !4328, size: 64, offset: 448)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4274, file: !4066, line: 315, baseType: !448, size: 8, offset: 512)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4274, file: !4066, line: 316, baseType: !142, size: 32, offset: 544)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4274, file: !4066, line: 317, baseType: !179, size: 64, offset: 576)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4274, file: !4066, line: 319, baseType: !4304, size: 64, offset: 640)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4274, file: !4066, line: 321, baseType: !182, size: 128, offset: 704)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4274, file: !4066, line: 322, baseType: !182, size: 128, offset: 832)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4266, file: !4066, line: 347, baseType: !182, size: 128, offset: 320)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4266, file: !4066, line: 348, baseType: !182, size: 128, offset: 448)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4065, file: !4066, line: 186, baseType: !195, offset: 3968)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4065, file: !4066, line: 187, baseType: !1051, size: 192, offset: 3968)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4065, file: !4066, line: 189, baseType: !7, size: 32, offset: 4160)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !4065, file: !4066, line: 190, baseType: !448, size: 8, offset: 4192)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4065, file: !4066, line: 192, baseType: !172, size: 5568, offset: 4224)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4065, file: !4066, line: 194, baseType: !182, size: 128, offset: 9792)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4065, file: !4066, line: 195, baseType: !182, size: 128, offset: 9920)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !4065, file: !4066, line: 197, baseType: !7, size: 32, offset: 10048)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !4065, file: !4066, line: 198, baseType: !7, size: 32, offset: 10080)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !4065, file: !4066, line: 199, baseType: !4350, size: 64, offset: 10112)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !4065, file: !4066, line: 201, baseType: !448, size: 8, offset: 10176)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4065, file: !4066, line: 203, baseType: !4353, size: 192, offset: 10240)
!4353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1178, size: 192, elements: !237)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !4057, file: !3, line: 279, baseType: !3994, size: 1088, offset: 704)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "pm_mutex", scope: !4057, file: !3, line: 280, baseType: !1051, size: 192, offset: 1792)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !4057, file: !3, line: 281, baseType: !142, size: 32, offset: 1984)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "bt_urb", scope: !4057, file: !3, line: 282, baseType: !4358, size: 64, offset: 2048)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !6, line: 1561, size: 1472, elements: !4360)
!4360 = !{!4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4404}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4359, file: !6, line: 1563, baseType: !3167, size: 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !4359, file: !6, line: 1564, baseType: !142, size: 32, offset: 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4359, file: !6, line: 1565, baseType: !137, size: 64, offset: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4359, file: !6, line: 1566, baseType: !705, size: 32, offset: 128)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !4359, file: !6, line: 1567, baseType: !705, size: 32, offset: 160)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4359, file: !6, line: 1570, baseType: !182, size: 128, offset: 192)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !4359, file: !6, line: 1572, baseType: !182, size: 128, offset: 320)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !4359, file: !6, line: 1573, baseType: !4369, size: 64, offset: 448)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !6, line: 1360, size: 320, elements: !4371)
!4371 = !{!4372, !4373, !4374, !4375, !4376}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4370, file: !6, line: 1361, baseType: !182, size: 128)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4370, file: !6, line: 1362, baseType: !1359, size: 128, offset: 128)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4370, file: !6, line: 1363, baseType: !195, offset: 256)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !4370, file: !6, line: 1364, baseType: !705, size: 32, offset: 256)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !4370, file: !6, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4359, file: !6, line: 1574, baseType: !138, size: 64, offset: 512)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !4359, file: !6, line: 1575, baseType: !3731, size: 64, offset: 576)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4359, file: !6, line: 1576, baseType: !7, size: 32, offset: 640)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4359, file: !6, line: 1577, baseType: !7, size: 32, offset: 672)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4359, file: !6, line: 1578, baseType: !142, size: 32, offset: 704)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !4359, file: !6, line: 1579, baseType: !7, size: 32, offset: 736)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !4359, file: !6, line: 1580, baseType: !137, size: 64, offset: 768)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !4359, file: !6, line: 1581, baseType: !878, size: 64, offset: 832)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4359, file: !6, line: 1582, baseType: !4386, size: 64, offset: 896)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !6, line: 1582, flags: DIFlagFwdDecl)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !4359, file: !6, line: 1583, baseType: !142, size: 32, offset: 960)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !4359, file: !6, line: 1584, baseType: !142, size: 32, offset: 992)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !4359, file: !6, line: 1585, baseType: !149, size: 32, offset: 1024)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4359, file: !6, line: 1586, baseType: !149, size: 32, offset: 1056)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !4359, file: !6, line: 1587, baseType: !3595, size: 64, offset: 1088)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !4359, file: !6, line: 1588, baseType: !878, size: 64, offset: 1152)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !4359, file: !6, line: 1589, baseType: !142, size: 32, offset: 1216)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !4359, file: !6, line: 1590, baseType: !142, size: 32, offset: 1248)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4359, file: !6, line: 1591, baseType: !142, size: 32, offset: 1280)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !4359, file: !6, line: 1593, baseType: !142, size: 32, offset: 1312)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4359, file: !6, line: 1594, baseType: !137, size: 64, offset: 1344)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4359, file: !6, line: 1595, baseType: !4400, size: 64, offset: 1408)
!4400 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !6, line: 1376, baseType: !4401)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{null, !4358}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !4359, file: !6, line: 1596, baseType: !4405, offset: 1472)
!4405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4406, elements: !2194)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !6, line: 1351, size: 128, elements: !4407)
!4407 = !{!4408, !4409, !4410, !4411}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4406, file: !6, line: 1352, baseType: !7, size: 32)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4406, file: !6, line: 1353, baseType: !7, size: 32, offset: 32)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4406, file: !6, line: 1354, baseType: !7, size: 32, offset: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4406, file: !6, line: 1355, baseType: !142, size: 32, offset: 96)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "bt_data", scope: !4057, file: !3, line: 283, baseType: !4413, size: 64, offset: 2112)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bt_data", file: !3, line: 167, size: 32, elements: !4415)
!4415 = !{!4416, !4417, !4418, !4419}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "unknown1", scope: !4414, file: !3, line: 168, baseType: !1230, size: 8)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !4414, file: !3, line: 169, baseType: !1230, size: 8, offset: 8)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "rel_x", scope: !4414, file: !3, line: 170, baseType: !1230, size: 8, offset: 16)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "rel_y", scope: !4414, file: !3, line: 171, baseType: !1230, size: 8, offset: 24)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "tp_urb", scope: !4057, file: !3, line: 284, baseType: !4358, size: 64, offset: 2176)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "tp_data", scope: !4057, file: !3, line: 285, baseType: !4422, size: 64, offset: 2240)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4057, file: !3, line: 286, baseType: !4424, size: 1024, offset: 2304)
!4424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3817, size: 1024, elements: !146)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4057, file: !3, line: 287, baseType: !4426, size: 512, offset: 3328)
!4426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4427, size: 512, elements: !146)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt_pos", file: !4218, line: 119, size: 32, elements: !4428)
!4428 = !{!4429, !4430}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4427, file: !4218, line: 120, baseType: !1081, size: 16)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4427, file: !4218, line: 120, baseType: !1081, size: 16, offset: 16)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4057, file: !3, line: 288, baseType: !4432, size: 512, offset: 3840)
!4432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 512, elements: !146)
!4433 = !DILocation(line: 899, column: 18, scope: !3989)
!4434 = !DILocalVariable(name: "input_dev", scope: !3989, file: !3, line: 900, type: !4064)
!4435 = !DILocation(line: 900, column: 20, scope: !3989)
!4436 = !DILocalVariable(name: "error", scope: !3989, file: !3, line: 901, type: !142)
!4437 = !DILocation(line: 901, column: 6, scope: !3989)
!4438 = !DILocation(line: 904, column: 27, scope: !3989)
!4439 = !DILocation(line: 904, column: 8, scope: !3989)
!4440 = !DILocation(line: 904, column: 6, scope: !3989)
!4441 = !DILocation(line: 907, column: 8, scope: !3989)
!4442 = !DILocation(line: 907, column: 6, scope: !3989)
!4443 = !DILocation(line: 908, column: 14, scope: !3989)
!4444 = !DILocation(line: 908, column: 12, scope: !3989)
!4445 = !DILocation(line: 909, column: 7, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 909, column: 6)
!4447 = !DILocation(line: 909, column: 11, scope: !4446)
!4448 = !DILocation(line: 909, column: 15, scope: !4446)
!4449 = !DILocation(line: 909, column: 6, scope: !3989)
!4450 = !DILocation(line: 910, column: 3, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 909, column: 26)
!4452 = !DILocation(line: 911, column: 3, scope: !4451)
!4453 = !DILocation(line: 914, column: 14, scope: !3989)
!4454 = !DILocation(line: 914, column: 2, scope: !3989)
!4455 = !DILocation(line: 914, column: 7, scope: !3989)
!4456 = !DILocation(line: 914, column: 12, scope: !3989)
!4457 = !DILocation(line: 915, column: 14, scope: !3989)
!4458 = !DILocation(line: 915, column: 2, scope: !3989)
!4459 = !DILocation(line: 915, column: 7, scope: !3989)
!4460 = !DILocation(line: 915, column: 12, scope: !3989)
!4461 = !DILocation(line: 916, column: 15, scope: !3989)
!4462 = !DILocation(line: 916, column: 2, scope: !3989)
!4463 = !DILocation(line: 916, column: 7, scope: !3989)
!4464 = !DILocation(line: 916, column: 13, scope: !3989)
!4465 = !DILocation(line: 917, column: 2, scope: !3989)
!4466 = !DILocation(line: 917, column: 7, scope: !3989)
!4467 = !DILocation(line: 917, column: 14, scope: !3989)
!4468 = !DILocation(line: 917, column: 13, scope: !3989)
!4469 = !DILocation(line: 918, column: 2, scope: !3989)
!4470 = !DILocation(line: 918, column: 2, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 918, column: 2)
!4472 = !DILocation(line: 921, column: 6, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 921, column: 6)
!4474 = !DILocation(line: 921, column: 11, scope: !4473)
!4475 = !DILocation(line: 921, column: 19, scope: !4473)
!4476 = !DILocation(line: 921, column: 6, scope: !3989)
!4477 = !DILocation(line: 922, column: 17, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 921, column: 29)
!4479 = !DILocation(line: 922, column: 3, scope: !4478)
!4480 = !DILocation(line: 922, column: 8, scope: !4478)
!4481 = !DILocation(line: 922, column: 15, scope: !4478)
!4482 = !DILocation(line: 923, column: 8, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 923, column: 7)
!4484 = !DILocation(line: 923, column: 13, scope: !4483)
!4485 = !DILocation(line: 923, column: 7, scope: !4478)
!4486 = !DILocation(line: 924, column: 4, scope: !4483)
!4487 = !DILocation(line: 925, column: 2, scope: !4478)
!4488 = !DILocation(line: 927, column: 16, scope: !3989)
!4489 = !DILocation(line: 927, column: 2, scope: !3989)
!4490 = !DILocation(line: 927, column: 7, scope: !3989)
!4491 = !DILocation(line: 927, column: 14, scope: !3989)
!4492 = !DILocation(line: 928, column: 7, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 928, column: 6)
!4494 = !DILocation(line: 928, column: 12, scope: !4493)
!4495 = !DILocation(line: 928, column: 6, scope: !3989)
!4496 = !DILocation(line: 929, column: 3, scope: !4493)
!4497 = !DILocation(line: 931, column: 6, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 931, column: 6)
!4499 = !DILocation(line: 931, column: 11, scope: !4498)
!4500 = !DILocation(line: 931, column: 6, scope: !3989)
!4501 = !DILocation(line: 932, column: 37, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4498, file: !3, line: 931, column: 19)
!4503 = !DILocation(line: 932, column: 42, scope: !4502)
!4504 = !DILocation(line: 933, column: 8, scope: !4502)
!4505 = !DILocation(line: 933, column: 13, scope: !4502)
!4506 = !DILocation(line: 933, column: 17, scope: !4502)
!4507 = !DILocation(line: 934, column: 9, scope: !4502)
!4508 = !DILocation(line: 934, column: 14, scope: !4502)
!4509 = !DILocation(line: 934, column: 22, scope: !4502)
!4510 = !DILocation(line: 932, column: 18, scope: !4502)
!4511 = !DILocation(line: 932, column: 3, scope: !4502)
!4512 = !DILocation(line: 932, column: 8, scope: !4502)
!4513 = !DILocation(line: 932, column: 16, scope: !4502)
!4514 = !DILocation(line: 935, column: 8, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 935, column: 7)
!4516 = !DILocation(line: 935, column: 13, scope: !4515)
!4517 = !DILocation(line: 935, column: 7, scope: !4502)
!4518 = !DILocation(line: 936, column: 4, scope: !4515)
!4519 = !DILocation(line: 937, column: 2, scope: !4502)
!4520 = !DILocation(line: 939, column: 36, scope: !3989)
!4521 = !DILocation(line: 939, column: 41, scope: !3989)
!4522 = !DILocation(line: 940, column: 8, scope: !3989)
!4523 = !DILocation(line: 940, column: 13, scope: !3989)
!4524 = !DILocation(line: 940, column: 17, scope: !3989)
!4525 = !DILocation(line: 941, column: 9, scope: !3989)
!4526 = !DILocation(line: 941, column: 14, scope: !3989)
!4527 = !DILocation(line: 941, column: 22, scope: !3989)
!4528 = !DILocation(line: 939, column: 17, scope: !3989)
!4529 = !DILocation(line: 939, column: 2, scope: !3989)
!4530 = !DILocation(line: 939, column: 7, scope: !3989)
!4531 = !DILocation(line: 939, column: 15, scope: !3989)
!4532 = !DILocation(line: 942, column: 7, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 942, column: 6)
!4534 = !DILocation(line: 942, column: 12, scope: !4533)
!4535 = !DILocation(line: 942, column: 6, scope: !3989)
!4536 = !DILocation(line: 943, column: 3, scope: !4533)
!4537 = !DILocation(line: 945, column: 6, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 945, column: 6)
!4539 = !DILocation(line: 945, column: 11, scope: !4538)
!4540 = !DILocation(line: 945, column: 6, scope: !3989)
!4541 = !DILocation(line: 946, column: 20, scope: !4538)
!4542 = !DILocation(line: 946, column: 25, scope: !4538)
!4543 = !DILocation(line: 946, column: 33, scope: !4538)
!4544 = !DILocation(line: 947, column: 6, scope: !4538)
!4545 = !DILocation(line: 948, column: 6, scope: !4538)
!4546 = !DILocation(line: 948, column: 11, scope: !4538)
!4547 = !DILocation(line: 948, column: 20, scope: !4538)
!4548 = !DILocation(line: 948, column: 25, scope: !4538)
!4549 = !DILocation(line: 948, column: 29, scope: !4538)
!4550 = !DILocation(line: 949, column: 26, scope: !4538)
!4551 = !DILocation(line: 946, column: 3, scope: !4538)
!4552 = !DILocation(line: 951, column: 19, scope: !3989)
!4553 = !DILocation(line: 951, column: 24, scope: !3989)
!4554 = !DILocation(line: 951, column: 32, scope: !3989)
!4555 = !DILocation(line: 952, column: 5, scope: !3989)
!4556 = !DILocation(line: 953, column: 5, scope: !3989)
!4557 = !DILocation(line: 953, column: 10, scope: !3989)
!4558 = !DILocation(line: 953, column: 19, scope: !3989)
!4559 = !DILocation(line: 953, column: 24, scope: !3989)
!4560 = !DILocation(line: 953, column: 28, scope: !3989)
!4561 = !DILocation(line: 954, column: 27, scope: !3989)
!4562 = !DILocation(line: 951, column: 2, scope: !3989)
!4563 = !DILocation(line: 957, column: 16, scope: !3989)
!4564 = !DILocation(line: 957, column: 22, scope: !3989)
!4565 = !DILocation(line: 957, column: 27, scope: !3989)
!4566 = !DILocation(line: 957, column: 2, scope: !3989)
!4567 = !DILocation(line: 958, column: 10, scope: !3989)
!4568 = !DILocation(line: 958, column: 15, scope: !3989)
!4569 = !DILocation(line: 958, column: 2, scope: !3989)
!4570 = !DILocation(line: 960, column: 2, scope: !3989)
!4571 = !DILocation(line: 960, column: 13, scope: !3989)
!4572 = !DILocation(line: 960, column: 18, scope: !3989)
!4573 = !DILocation(line: 961, column: 20, scope: !3989)
!4574 = !DILocation(line: 961, column: 25, scope: !3989)
!4575 = !DILocation(line: 961, column: 2, scope: !3989)
!4576 = !DILocation(line: 961, column: 13, scope: !3989)
!4577 = !DILocation(line: 961, column: 18, scope: !3989)
!4578 = !DILocation(line: 962, column: 18, scope: !3989)
!4579 = !DILocation(line: 962, column: 23, scope: !3989)
!4580 = !DILocation(line: 962, column: 30, scope: !3989)
!4581 = !DILocation(line: 962, column: 41, scope: !3989)
!4582 = !DILocation(line: 962, column: 2, scope: !3989)
!4583 = !DILocation(line: 964, column: 26, scope: !3989)
!4584 = !DILocation(line: 964, column: 31, scope: !3989)
!4585 = !DILocation(line: 964, column: 2, scope: !3989)
!4586 = !DILocation(line: 964, column: 13, scope: !3989)
!4587 = !DILocation(line: 964, column: 16, scope: !3989)
!4588 = !DILocation(line: 964, column: 24, scope: !3989)
!4589 = !DILocation(line: 965, column: 27, scope: !3989)
!4590 = !DILocation(line: 965, column: 34, scope: !3989)
!4591 = !DILocation(line: 965, column: 2, scope: !3989)
!4592 = !DILocation(line: 965, column: 13, scope: !3989)
!4593 = !DILocation(line: 965, column: 17, scope: !3989)
!4594 = !DILocation(line: 965, column: 24, scope: !3989)
!4595 = !DILocation(line: 967, column: 20, scope: !3989)
!4596 = !DILocation(line: 967, column: 31, scope: !3989)
!4597 = !DILocation(line: 967, column: 2, scope: !3989)
!4598 = !DILocation(line: 969, column: 2, scope: !3989)
!4599 = !DILocation(line: 969, column: 13, scope: !3989)
!4600 = !DILocation(line: 969, column: 18, scope: !3989)
!4601 = !DILocation(line: 970, column: 2, scope: !3989)
!4602 = !DILocation(line: 970, column: 13, scope: !3989)
!4603 = !DILocation(line: 970, column: 19, scope: !3989)
!4604 = !DILocation(line: 972, column: 25, scope: !3989)
!4605 = !DILocation(line: 972, column: 36, scope: !3989)
!4606 = !DILocation(line: 972, column: 2, scope: !3989)
!4607 = !DILocation(line: 974, column: 32, scope: !3989)
!4608 = !DILocation(line: 974, column: 37, scope: !3989)
!4609 = !DILocation(line: 974, column: 10, scope: !3989)
!4610 = !DILocation(line: 974, column: 8, scope: !3989)
!4611 = !DILocation(line: 975, column: 6, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 975, column: 6)
!4613 = !DILocation(line: 975, column: 6, scope: !3989)
!4614 = !DILocation(line: 976, column: 3, scope: !4612)
!4615 = !DILocation(line: 979, column: 19, scope: !3989)
!4616 = !DILocation(line: 979, column: 26, scope: !3989)
!4617 = !DILocation(line: 979, column: 2, scope: !3989)
!4618 = !DILocation(line: 981, column: 2, scope: !3989)
!4619 = !DILabel(scope: !3989, name: "err_free_buffer", file: !3, line: 983)
!4620 = !DILocation(line: 983, column: 1, scope: !3989)
!4621 = !DILocation(line: 984, column: 20, scope: !3989)
!4622 = !DILocation(line: 984, column: 25, scope: !3989)
!4623 = !DILocation(line: 984, column: 31, scope: !3989)
!4624 = !DILocation(line: 984, column: 36, scope: !3989)
!4625 = !DILocation(line: 984, column: 40, scope: !3989)
!4626 = !DILocation(line: 985, column: 3, scope: !3989)
!4627 = !DILocation(line: 985, column: 8, scope: !3989)
!4628 = !DILocation(line: 985, column: 17, scope: !3989)
!4629 = !DILocation(line: 985, column: 22, scope: !3989)
!4630 = !DILocation(line: 985, column: 30, scope: !3989)
!4631 = !DILocation(line: 984, column: 2, scope: !3989)
!4632 = !DILabel(scope: !3989, name: "err_free_bt_buffer", file: !3, line: 986)
!4633 = !DILocation(line: 986, column: 1, scope: !3989)
!4634 = !DILocation(line: 987, column: 6, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 987, column: 6)
!4636 = !DILocation(line: 987, column: 11, scope: !4635)
!4637 = !DILocation(line: 987, column: 6, scope: !3989)
!4638 = !DILocation(line: 988, column: 21, scope: !4635)
!4639 = !DILocation(line: 988, column: 26, scope: !4635)
!4640 = !DILocation(line: 988, column: 32, scope: !4635)
!4641 = !DILocation(line: 988, column: 37, scope: !4635)
!4642 = !DILocation(line: 988, column: 41, scope: !4635)
!4643 = !DILocation(line: 989, column: 7, scope: !4635)
!4644 = !DILocation(line: 989, column: 12, scope: !4635)
!4645 = !DILocation(line: 989, column: 21, scope: !4635)
!4646 = !DILocation(line: 989, column: 26, scope: !4635)
!4647 = !DILocation(line: 989, column: 34, scope: !4635)
!4648 = !DILocation(line: 988, column: 3, scope: !4635)
!4649 = !DILabel(scope: !3989, name: "err_free_urb", file: !3, line: 990)
!4650 = !DILocation(line: 990, column: 1, scope: !3989)
!4651 = !DILocation(line: 991, column: 15, scope: !3989)
!4652 = !DILocation(line: 991, column: 20, scope: !3989)
!4653 = !DILocation(line: 991, column: 2, scope: !3989)
!4654 = !DILabel(scope: !3989, name: "err_free_bt_urb", file: !3, line: 992)
!4655 = !DILocation(line: 992, column: 1, scope: !3989)
!4656 = !DILocation(line: 993, column: 15, scope: !3989)
!4657 = !DILocation(line: 993, column: 20, scope: !3989)
!4658 = !DILocation(line: 993, column: 2, scope: !3989)
!4659 = !DILabel(scope: !3989, name: "err_free_devs", file: !3, line: 994)
!4660 = !DILocation(line: 994, column: 1, scope: !3989)
!4661 = !DILocation(line: 995, column: 19, scope: !3989)
!4662 = !DILocation(line: 995, column: 2, scope: !3989)
!4663 = !DILocation(line: 996, column: 20, scope: !3989)
!4664 = !DILocation(line: 996, column: 2, scope: !3989)
!4665 = !DILocation(line: 997, column: 8, scope: !3989)
!4666 = !DILocation(line: 997, column: 2, scope: !3989)
!4667 = !DILocation(line: 998, column: 9, scope: !3989)
!4668 = !DILocation(line: 998, column: 2, scope: !3989)
!4669 = !DILocation(line: 999, column: 1, scope: !3989)
!4670 = distinct !DISubprogram(name: "bcm5974_disconnect", scope: !3, file: !3, line: 1001, type: !3954, scopeLine: 1002, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4671 = !DILocalVariable(name: "iface", arg: 1, scope: !4670, file: !3, line: 1001, type: !3709)
!4672 = !DILocation(line: 1001, column: 54, scope: !4670)
!4673 = !DILocalVariable(name: "dev", scope: !4670, file: !3, line: 1003, type: !4056)
!4674 = !DILocation(line: 1003, column: 18, scope: !4670)
!4675 = !DILocation(line: 1003, column: 41, scope: !4670)
!4676 = !DILocation(line: 1003, column: 24, scope: !4670)
!4677 = !DILocation(line: 1005, column: 19, scope: !4670)
!4678 = !DILocation(line: 1005, column: 2, scope: !4670)
!4679 = !DILocation(line: 1007, column: 26, scope: !4670)
!4680 = !DILocation(line: 1007, column: 31, scope: !4670)
!4681 = !DILocation(line: 1007, column: 2, scope: !4670)
!4682 = !DILocation(line: 1008, column: 20, scope: !4670)
!4683 = !DILocation(line: 1008, column: 25, scope: !4670)
!4684 = !DILocation(line: 1008, column: 31, scope: !4670)
!4685 = !DILocation(line: 1008, column: 36, scope: !4670)
!4686 = !DILocation(line: 1008, column: 40, scope: !4670)
!4687 = !DILocation(line: 1009, column: 6, scope: !4670)
!4688 = !DILocation(line: 1009, column: 11, scope: !4670)
!4689 = !DILocation(line: 1009, column: 20, scope: !4670)
!4690 = !DILocation(line: 1009, column: 25, scope: !4670)
!4691 = !DILocation(line: 1009, column: 33, scope: !4670)
!4692 = !DILocation(line: 1008, column: 2, scope: !4670)
!4693 = !DILocation(line: 1010, column: 6, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 1010, column: 6)
!4695 = !DILocation(line: 1010, column: 11, scope: !4694)
!4696 = !DILocation(line: 1010, column: 6, scope: !4670)
!4697 = !DILocation(line: 1011, column: 21, scope: !4694)
!4698 = !DILocation(line: 1011, column: 26, scope: !4694)
!4699 = !DILocation(line: 1011, column: 32, scope: !4694)
!4700 = !DILocation(line: 1011, column: 37, scope: !4694)
!4701 = !DILocation(line: 1011, column: 41, scope: !4694)
!4702 = !DILocation(line: 1012, column: 7, scope: !4694)
!4703 = !DILocation(line: 1012, column: 12, scope: !4694)
!4704 = !DILocation(line: 1012, column: 21, scope: !4694)
!4705 = !DILocation(line: 1012, column: 26, scope: !4694)
!4706 = !DILocation(line: 1012, column: 34, scope: !4694)
!4707 = !DILocation(line: 1011, column: 3, scope: !4694)
!4708 = !DILocation(line: 1013, column: 15, scope: !4670)
!4709 = !DILocation(line: 1013, column: 20, scope: !4670)
!4710 = !DILocation(line: 1013, column: 2, scope: !4670)
!4711 = !DILocation(line: 1014, column: 15, scope: !4670)
!4712 = !DILocation(line: 1014, column: 20, scope: !4670)
!4713 = !DILocation(line: 1014, column: 2, scope: !4670)
!4714 = !DILocation(line: 1015, column: 8, scope: !4670)
!4715 = !DILocation(line: 1015, column: 2, scope: !4670)
!4716 = !DILocation(line: 1016, column: 1, scope: !4670)
!4717 = distinct !DISubprogram(name: "bcm5974_suspend", scope: !3, file: !3, line: 865, type: !3962, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4718 = !DILocalVariable(name: "iface", arg: 1, scope: !4717, file: !3, line: 865, type: !3709)
!4719 = !DILocation(line: 865, column: 50, scope: !4717)
!4720 = !DILocalVariable(name: "message", arg: 2, scope: !4717, file: !3, line: 865, type: !3290)
!4721 = !DILocation(line: 865, column: 70, scope: !4717)
!4722 = !DILocalVariable(name: "dev", scope: !4717, file: !3, line: 867, type: !4056)
!4723 = !DILocation(line: 867, column: 18, scope: !4717)
!4724 = !DILocation(line: 867, column: 41, scope: !4717)
!4725 = !DILocation(line: 867, column: 24, scope: !4717)
!4726 = !DILocation(line: 869, column: 14, scope: !4717)
!4727 = !DILocation(line: 869, column: 19, scope: !4717)
!4728 = !DILocation(line: 869, column: 2, scope: !4717)
!4729 = !DILocation(line: 871, column: 6, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4717, file: !3, line: 871, column: 6)
!4731 = !DILocation(line: 871, column: 11, scope: !4730)
!4732 = !DILocation(line: 871, column: 6, scope: !4717)
!4733 = !DILocation(line: 872, column: 25, scope: !4730)
!4734 = !DILocation(line: 872, column: 3, scope: !4730)
!4735 = !DILocation(line: 874, column: 16, scope: !4717)
!4736 = !DILocation(line: 874, column: 21, scope: !4717)
!4737 = !DILocation(line: 874, column: 2, scope: !4717)
!4738 = !DILocation(line: 876, column: 2, scope: !4717)
!4739 = distinct !DISubprogram(name: "bcm5974_resume", scope: !3, file: !3, line: 879, type: !3966, scopeLine: 880, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4740 = !DILocalVariable(name: "iface", arg: 1, scope: !4739, file: !3, line: 879, type: !3709)
!4741 = !DILocation(line: 879, column: 49, scope: !4739)
!4742 = !DILocalVariable(name: "dev", scope: !4739, file: !3, line: 881, type: !4056)
!4743 = !DILocation(line: 881, column: 18, scope: !4739)
!4744 = !DILocation(line: 881, column: 41, scope: !4739)
!4745 = !DILocation(line: 881, column: 24, scope: !4739)
!4746 = !DILocalVariable(name: "error", scope: !4739, file: !3, line: 882, type: !142)
!4747 = !DILocation(line: 882, column: 6, scope: !4739)
!4748 = !DILocation(line: 884, column: 14, scope: !4739)
!4749 = !DILocation(line: 884, column: 19, scope: !4739)
!4750 = !DILocation(line: 884, column: 2, scope: !4739)
!4751 = !DILocation(line: 886, column: 6, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 886, column: 6)
!4753 = !DILocation(line: 886, column: 11, scope: !4752)
!4754 = !DILocation(line: 886, column: 6, scope: !4739)
!4755 = !DILocation(line: 887, column: 33, scope: !4752)
!4756 = !DILocation(line: 887, column: 11, scope: !4752)
!4757 = !DILocation(line: 887, column: 9, scope: !4752)
!4758 = !DILocation(line: 887, column: 3, scope: !4752)
!4759 = !DILocation(line: 889, column: 16, scope: !4739)
!4760 = !DILocation(line: 889, column: 21, scope: !4739)
!4761 = !DILocation(line: 889, column: 2, scope: !4739)
!4762 = !DILocation(line: 891, column: 9, scope: !4739)
!4763 = !DILocation(line: 891, column: 2, scope: !4739)
!4764 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !6, file: !6, line: 715, type: !4765, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!138, !3709}
!4767 = !DILocalVariable(name: "intf", arg: 1, scope: !4764, file: !6, line: 715, type: !3709)
!4768 = !DILocation(line: 715, column: 76, scope: !4764)
!4769 = !DILocalVariable(name: "__mptr", scope: !4770, file: !6, line: 717, type: !137)
!4770 = distinct !DILexicalBlock(scope: !4764, file: !6, line: 717, column: 9)
!4771 = !DILocation(line: 717, column: 9, scope: !4770)
!4772 = !DILocation(line: 717, column: 9, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4770, file: !6, line: 717, column: 9)
!4774 = !DILocation(line: 717, column: 2, scope: !4764)
!4775 = distinct !DISubprogram(name: "bcm5974_get_config", scope: !3, file: !3, line: 490, type: !4776, scopeLine: 491, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{!4053, !138}
!4778 = !DILocalVariable(name: "udev", arg: 1, scope: !4775, file: !3, line: 490, type: !138)
!4779 = !DILocation(line: 490, column: 75, scope: !4775)
!4780 = !DILocalVariable(name: "id", scope: !4775, file: !3, line: 492, type: !817)
!4781 = !DILocation(line: 492, column: 6, scope: !4775)
!4782 = !DILocation(line: 492, column: 11, scope: !4775)
!4783 = !DILocalVariable(name: "cfg", scope: !4775, file: !3, line: 493, type: !4053)
!4784 = !DILocation(line: 493, column: 31, scope: !4775)
!4785 = !DILocation(line: 495, column: 11, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 495, column: 2)
!4787 = !DILocation(line: 495, column: 7, scope: !4786)
!4788 = !DILocation(line: 495, column: 35, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4786, file: !3, line: 495, column: 2)
!4790 = !DILocation(line: 495, column: 40, scope: !4789)
!4791 = !DILocation(line: 495, column: 2, scope: !4786)
!4792 = !DILocation(line: 496, column: 7, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4789, file: !3, line: 496, column: 7)
!4794 = !DILocation(line: 496, column: 12, scope: !4793)
!4795 = !DILocation(line: 496, column: 20, scope: !4793)
!4796 = !DILocation(line: 496, column: 17, scope: !4793)
!4797 = !DILocation(line: 496, column: 23, scope: !4793)
!4798 = !DILocation(line: 496, column: 26, scope: !4793)
!4799 = !DILocation(line: 496, column: 31, scope: !4793)
!4800 = !DILocation(line: 496, column: 38, scope: !4793)
!4801 = !DILocation(line: 496, column: 35, scope: !4793)
!4802 = !DILocation(line: 496, column: 41, scope: !4793)
!4803 = !DILocation(line: 496, column: 44, scope: !4793)
!4804 = !DILocation(line: 496, column: 49, scope: !4793)
!4805 = !DILocation(line: 496, column: 56, scope: !4793)
!4806 = !DILocation(line: 496, column: 53, scope: !4793)
!4807 = !DILocation(line: 496, column: 7, scope: !4789)
!4808 = !DILocation(line: 497, column: 11, scope: !4793)
!4809 = !DILocation(line: 497, column: 4, scope: !4793)
!4810 = !DILocation(line: 495, column: 46, scope: !4789)
!4811 = !DILocation(line: 495, column: 2, scope: !4789)
!4812 = distinct !{!4812, !4791, !4813}
!4813 = !DILocation(line: 497, column: 11, scope: !4786)
!4814 = !DILocation(line: 499, column: 2, scope: !4775)
!4815 = !DILocation(line: 500, column: 1, scope: !4775)
!4816 = distinct !DISubprogram(name: "kzalloc", scope: !120, file: !120, line: 662, type: !4817, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4817 = !DISubroutineType(types: !4818)
!4818 = !{!137, !283, !135}
!4819 = !DILocalVariable(name: "s", arg: 1, scope: !4820, file: !120, line: 445, type: !893)
!4820 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !120, file: !120, line: 445, type: !4821, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!137, !893, !135, !283}
!4823 = !DILocation(line: 445, column: 72, scope: !4820, inlinedAt: !4824)
!4824 = distinct !DILocation(line: 552, column: 10, scope: !4825, inlinedAt: !4828)
!4825 = distinct !DILexicalBlock(scope: !4826, file: !120, line: 540, column: 34)
!4826 = distinct !DILexicalBlock(scope: !4827, file: !120, line: 540, column: 6)
!4827 = distinct !DISubprogram(name: "kmalloc", scope: !120, file: !120, line: 538, type: !4817, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4828 = distinct !DILocation(line: 664, column: 9, scope: !4816)
!4829 = !DILocalVariable(name: "flags", arg: 2, scope: !4820, file: !120, line: 446, type: !135)
!4830 = !DILocation(line: 446, column: 9, scope: !4820, inlinedAt: !4824)
!4831 = !DILocalVariable(name: "size", arg: 3, scope: !4820, file: !120, line: 446, type: !283)
!4832 = !DILocation(line: 446, column: 23, scope: !4820, inlinedAt: !4824)
!4833 = !DILocalVariable(name: "ret", scope: !4820, file: !120, line: 448, type: !137)
!4834 = !DILocation(line: 448, column: 8, scope: !4820, inlinedAt: !4824)
!4835 = !DILocalVariable(name: "flags", arg: 1, scope: !4836, file: !120, line: 318, type: !135)
!4836 = distinct !DISubprogram(name: "kmalloc_type", scope: !120, file: !120, line: 318, type: !4837, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!119, !135}
!4839 = !DILocation(line: 318, column: 67, scope: !4836, inlinedAt: !4840)
!4840 = distinct !DILocation(line: 553, column: 20, scope: !4825, inlinedAt: !4828)
!4841 = !DILocalVariable(name: "size", arg: 1, scope: !4842, file: !120, line: 346, type: !283)
!4842 = distinct !DISubprogram(name: "kmalloc_index", scope: !120, file: !120, line: 346, type: !4843, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!7, !283}
!4845 = !DILocation(line: 346, column: 58, scope: !4842, inlinedAt: !4846)
!4846 = distinct !DILocation(line: 547, column: 11, scope: !4825, inlinedAt: !4828)
!4847 = !DILocalVariable(name: "size", arg: 1, scope: !4848, file: !120, line: 472, type: !283)
!4848 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !120, file: !120, line: 472, type: !4849, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!137, !283, !135, !7}
!4851 = !DILocation(line: 472, column: 28, scope: !4848, inlinedAt: !4852)
!4852 = distinct !DILocation(line: 481, column: 9, scope: !4853, inlinedAt: !4854)
!4853 = distinct !DISubprogram(name: "kmalloc_large", scope: !120, file: !120, line: 478, type: !4817, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!4854 = distinct !DILocation(line: 545, column: 11, scope: !4855, inlinedAt: !4828)
!4855 = distinct !DILexicalBlock(scope: !4825, file: !120, line: 544, column: 7)
!4856 = !DILocalVariable(name: "flags", arg: 2, scope: !4848, file: !120, line: 472, type: !135)
!4857 = !DILocation(line: 472, column: 40, scope: !4848, inlinedAt: !4852)
!4858 = !DILocalVariable(name: "order", arg: 3, scope: !4848, file: !120, line: 472, type: !7)
!4859 = !DILocation(line: 472, column: 60, scope: !4848, inlinedAt: !4852)
!4860 = !DILocalVariable(name: "size", arg: 1, scope: !4853, file: !120, line: 478, type: !283)
!4861 = !DILocation(line: 478, column: 51, scope: !4853, inlinedAt: !4854)
!4862 = !DILocalVariable(name: "flags", arg: 2, scope: !4853, file: !120, line: 478, type: !135)
!4863 = !DILocation(line: 478, column: 63, scope: !4853, inlinedAt: !4854)
!4864 = !DILocalVariable(name: "order", scope: !4853, file: !120, line: 480, type: !7)
!4865 = !DILocation(line: 480, column: 15, scope: !4853, inlinedAt: !4854)
!4866 = !DILocalVariable(name: "size", arg: 1, scope: !4827, file: !120, line: 538, type: !283)
!4867 = !DILocation(line: 538, column: 45, scope: !4827, inlinedAt: !4828)
!4868 = !DILocalVariable(name: "flags", arg: 2, scope: !4827, file: !120, line: 538, type: !135)
!4869 = !DILocation(line: 538, column: 57, scope: !4827, inlinedAt: !4828)
!4870 = !DILocalVariable(name: "index", scope: !4825, file: !120, line: 542, type: !7)
!4871 = !DILocation(line: 542, column: 16, scope: !4825, inlinedAt: !4828)
!4872 = !DILocalVariable(name: "size", arg: 1, scope: !4816, file: !120, line: 662, type: !283)
!4873 = !DILocation(line: 662, column: 36, scope: !4816)
!4874 = !DILocalVariable(name: "flags", arg: 2, scope: !4816, file: !120, line: 662, type: !135)
!4875 = !DILocation(line: 662, column: 48, scope: !4816)
!4876 = !DILocation(line: 664, column: 17, scope: !4816)
!4877 = !DILocation(line: 664, column: 23, scope: !4816)
!4878 = !DILocation(line: 664, column: 29, scope: !4816)
!4879 = !DILocation(line: 540, column: 27, scope: !4826, inlinedAt: !4828)
!4880 = !DILocation(line: 540, column: 6, scope: !4826, inlinedAt: !4828)
!4881 = !DILocation(line: 540, column: 6, scope: !4827, inlinedAt: !4828)
!4882 = !DILocation(line: 544, column: 7, scope: !4855, inlinedAt: !4828)
!4883 = !DILocation(line: 544, column: 12, scope: !4855, inlinedAt: !4828)
!4884 = !DILocation(line: 544, column: 7, scope: !4825, inlinedAt: !4828)
!4885 = !DILocation(line: 545, column: 25, scope: !4855, inlinedAt: !4828)
!4886 = !DILocation(line: 545, column: 31, scope: !4855, inlinedAt: !4828)
!4887 = !DILocation(line: 480, column: 33, scope: !4853, inlinedAt: !4854)
!4888 = !DILocation(line: 480, column: 23, scope: !4853, inlinedAt: !4854)
!4889 = !DILocation(line: 481, column: 29, scope: !4853, inlinedAt: !4854)
!4890 = !DILocation(line: 481, column: 35, scope: !4853, inlinedAt: !4854)
!4891 = !DILocation(line: 481, column: 42, scope: !4853, inlinedAt: !4854)
!4892 = !DILocation(line: 474, column: 23, scope: !4848, inlinedAt: !4852)
!4893 = !DILocation(line: 474, column: 29, scope: !4848, inlinedAt: !4852)
!4894 = !DILocation(line: 474, column: 36, scope: !4848, inlinedAt: !4852)
!4895 = !DILocation(line: 474, column: 9, scope: !4848, inlinedAt: !4852)
!4896 = !DILocation(line: 545, column: 4, scope: !4855, inlinedAt: !4828)
!4897 = !DILocation(line: 547, column: 25, scope: !4825, inlinedAt: !4828)
!4898 = !DILocation(line: 348, column: 7, scope: !4899, inlinedAt: !4846)
!4899 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 348, column: 6)
!4900 = !DILocation(line: 348, column: 6, scope: !4842, inlinedAt: !4846)
!4901 = !DILocation(line: 349, column: 3, scope: !4899, inlinedAt: !4846)
!4902 = !DILocation(line: 351, column: 6, scope: !4903, inlinedAt: !4846)
!4903 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 351, column: 6)
!4904 = !DILocation(line: 351, column: 11, scope: !4903, inlinedAt: !4846)
!4905 = !DILocation(line: 351, column: 6, scope: !4842, inlinedAt: !4846)
!4906 = !DILocation(line: 352, column: 3, scope: !4903, inlinedAt: !4846)
!4907 = !DILocation(line: 354, column: 32, scope: !4908, inlinedAt: !4846)
!4908 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 354, column: 6)
!4909 = !DILocation(line: 354, column: 37, scope: !4908, inlinedAt: !4846)
!4910 = !DILocation(line: 354, column: 42, scope: !4908, inlinedAt: !4846)
!4911 = !DILocation(line: 354, column: 45, scope: !4908, inlinedAt: !4846)
!4912 = !DILocation(line: 354, column: 50, scope: !4908, inlinedAt: !4846)
!4913 = !DILocation(line: 354, column: 6, scope: !4842, inlinedAt: !4846)
!4914 = !DILocation(line: 355, column: 3, scope: !4908, inlinedAt: !4846)
!4915 = !DILocation(line: 356, column: 32, scope: !4916, inlinedAt: !4846)
!4916 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 356, column: 6)
!4917 = !DILocation(line: 356, column: 37, scope: !4916, inlinedAt: !4846)
!4918 = !DILocation(line: 356, column: 43, scope: !4916, inlinedAt: !4846)
!4919 = !DILocation(line: 356, column: 46, scope: !4916, inlinedAt: !4846)
!4920 = !DILocation(line: 356, column: 51, scope: !4916, inlinedAt: !4846)
!4921 = !DILocation(line: 356, column: 6, scope: !4842, inlinedAt: !4846)
!4922 = !DILocation(line: 357, column: 3, scope: !4916, inlinedAt: !4846)
!4923 = !DILocation(line: 358, column: 6, scope: !4924, inlinedAt: !4846)
!4924 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 358, column: 6)
!4925 = !DILocation(line: 358, column: 11, scope: !4924, inlinedAt: !4846)
!4926 = !DILocation(line: 358, column: 6, scope: !4842, inlinedAt: !4846)
!4927 = !DILocation(line: 358, column: 26, scope: !4924, inlinedAt: !4846)
!4928 = !DILocation(line: 359, column: 6, scope: !4929, inlinedAt: !4846)
!4929 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 359, column: 6)
!4930 = !DILocation(line: 359, column: 11, scope: !4929, inlinedAt: !4846)
!4931 = !DILocation(line: 359, column: 6, scope: !4842, inlinedAt: !4846)
!4932 = !DILocation(line: 359, column: 26, scope: !4929, inlinedAt: !4846)
!4933 = !DILocation(line: 360, column: 6, scope: !4934, inlinedAt: !4846)
!4934 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 360, column: 6)
!4935 = !DILocation(line: 360, column: 11, scope: !4934, inlinedAt: !4846)
!4936 = !DILocation(line: 360, column: 6, scope: !4842, inlinedAt: !4846)
!4937 = !DILocation(line: 360, column: 26, scope: !4934, inlinedAt: !4846)
!4938 = !DILocation(line: 361, column: 6, scope: !4939, inlinedAt: !4846)
!4939 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 361, column: 6)
!4940 = !DILocation(line: 361, column: 11, scope: !4939, inlinedAt: !4846)
!4941 = !DILocation(line: 361, column: 6, scope: !4842, inlinedAt: !4846)
!4942 = !DILocation(line: 361, column: 26, scope: !4939, inlinedAt: !4846)
!4943 = !DILocation(line: 362, column: 6, scope: !4944, inlinedAt: !4846)
!4944 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 362, column: 6)
!4945 = !DILocation(line: 362, column: 11, scope: !4944, inlinedAt: !4846)
!4946 = !DILocation(line: 362, column: 6, scope: !4842, inlinedAt: !4846)
!4947 = !DILocation(line: 362, column: 26, scope: !4944, inlinedAt: !4846)
!4948 = !DILocation(line: 363, column: 6, scope: !4949, inlinedAt: !4846)
!4949 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 363, column: 6)
!4950 = !DILocation(line: 363, column: 11, scope: !4949, inlinedAt: !4846)
!4951 = !DILocation(line: 363, column: 6, scope: !4842, inlinedAt: !4846)
!4952 = !DILocation(line: 363, column: 26, scope: !4949, inlinedAt: !4846)
!4953 = !DILocation(line: 364, column: 6, scope: !4954, inlinedAt: !4846)
!4954 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 364, column: 6)
!4955 = !DILocation(line: 364, column: 11, scope: !4954, inlinedAt: !4846)
!4956 = !DILocation(line: 364, column: 6, scope: !4842, inlinedAt: !4846)
!4957 = !DILocation(line: 364, column: 26, scope: !4954, inlinedAt: !4846)
!4958 = !DILocation(line: 365, column: 6, scope: !4959, inlinedAt: !4846)
!4959 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 365, column: 6)
!4960 = !DILocation(line: 365, column: 11, scope: !4959, inlinedAt: !4846)
!4961 = !DILocation(line: 365, column: 6, scope: !4842, inlinedAt: !4846)
!4962 = !DILocation(line: 365, column: 26, scope: !4959, inlinedAt: !4846)
!4963 = !DILocation(line: 366, column: 6, scope: !4964, inlinedAt: !4846)
!4964 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 366, column: 6)
!4965 = !DILocation(line: 366, column: 11, scope: !4964, inlinedAt: !4846)
!4966 = !DILocation(line: 366, column: 6, scope: !4842, inlinedAt: !4846)
!4967 = !DILocation(line: 366, column: 26, scope: !4964, inlinedAt: !4846)
!4968 = !DILocation(line: 367, column: 6, scope: !4969, inlinedAt: !4846)
!4969 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 367, column: 6)
!4970 = !DILocation(line: 367, column: 11, scope: !4969, inlinedAt: !4846)
!4971 = !DILocation(line: 367, column: 6, scope: !4842, inlinedAt: !4846)
!4972 = !DILocation(line: 367, column: 26, scope: !4969, inlinedAt: !4846)
!4973 = !DILocation(line: 368, column: 6, scope: !4974, inlinedAt: !4846)
!4974 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 368, column: 6)
!4975 = !DILocation(line: 368, column: 11, scope: !4974, inlinedAt: !4846)
!4976 = !DILocation(line: 368, column: 6, scope: !4842, inlinedAt: !4846)
!4977 = !DILocation(line: 368, column: 26, scope: !4974, inlinedAt: !4846)
!4978 = !DILocation(line: 369, column: 6, scope: !4979, inlinedAt: !4846)
!4979 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 369, column: 6)
!4980 = !DILocation(line: 369, column: 11, scope: !4979, inlinedAt: !4846)
!4981 = !DILocation(line: 369, column: 6, scope: !4842, inlinedAt: !4846)
!4982 = !DILocation(line: 369, column: 26, scope: !4979, inlinedAt: !4846)
!4983 = !DILocation(line: 370, column: 6, scope: !4984, inlinedAt: !4846)
!4984 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 370, column: 6)
!4985 = !DILocation(line: 370, column: 11, scope: !4984, inlinedAt: !4846)
!4986 = !DILocation(line: 370, column: 6, scope: !4842, inlinedAt: !4846)
!4987 = !DILocation(line: 370, column: 26, scope: !4984, inlinedAt: !4846)
!4988 = !DILocation(line: 371, column: 6, scope: !4989, inlinedAt: !4846)
!4989 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 371, column: 6)
!4990 = !DILocation(line: 371, column: 11, scope: !4989, inlinedAt: !4846)
!4991 = !DILocation(line: 371, column: 6, scope: !4842, inlinedAt: !4846)
!4992 = !DILocation(line: 371, column: 26, scope: !4989, inlinedAt: !4846)
!4993 = !DILocation(line: 372, column: 6, scope: !4994, inlinedAt: !4846)
!4994 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 372, column: 6)
!4995 = !DILocation(line: 372, column: 11, scope: !4994, inlinedAt: !4846)
!4996 = !DILocation(line: 372, column: 6, scope: !4842, inlinedAt: !4846)
!4997 = !DILocation(line: 372, column: 26, scope: !4994, inlinedAt: !4846)
!4998 = !DILocation(line: 373, column: 6, scope: !4999, inlinedAt: !4846)
!4999 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 373, column: 6)
!5000 = !DILocation(line: 373, column: 11, scope: !4999, inlinedAt: !4846)
!5001 = !DILocation(line: 373, column: 6, scope: !4842, inlinedAt: !4846)
!5002 = !DILocation(line: 373, column: 26, scope: !4999, inlinedAt: !4846)
!5003 = !DILocation(line: 374, column: 6, scope: !5004, inlinedAt: !4846)
!5004 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 374, column: 6)
!5005 = !DILocation(line: 374, column: 11, scope: !5004, inlinedAt: !4846)
!5006 = !DILocation(line: 374, column: 6, scope: !4842, inlinedAt: !4846)
!5007 = !DILocation(line: 374, column: 26, scope: !5004, inlinedAt: !4846)
!5008 = !DILocation(line: 375, column: 6, scope: !5009, inlinedAt: !4846)
!5009 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 375, column: 6)
!5010 = !DILocation(line: 375, column: 11, scope: !5009, inlinedAt: !4846)
!5011 = !DILocation(line: 375, column: 6, scope: !4842, inlinedAt: !4846)
!5012 = !DILocation(line: 375, column: 27, scope: !5009, inlinedAt: !4846)
!5013 = !DILocation(line: 376, column: 6, scope: !5014, inlinedAt: !4846)
!5014 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 376, column: 6)
!5015 = !DILocation(line: 376, column: 11, scope: !5014, inlinedAt: !4846)
!5016 = !DILocation(line: 376, column: 6, scope: !4842, inlinedAt: !4846)
!5017 = !DILocation(line: 376, column: 32, scope: !5014, inlinedAt: !4846)
!5018 = !DILocation(line: 377, column: 6, scope: !5019, inlinedAt: !4846)
!5019 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 377, column: 6)
!5020 = !DILocation(line: 377, column: 11, scope: !5019, inlinedAt: !4846)
!5021 = !DILocation(line: 377, column: 6, scope: !4842, inlinedAt: !4846)
!5022 = !DILocation(line: 377, column: 32, scope: !5019, inlinedAt: !4846)
!5023 = !DILocation(line: 378, column: 6, scope: !5024, inlinedAt: !4846)
!5024 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 378, column: 6)
!5025 = !DILocation(line: 378, column: 11, scope: !5024, inlinedAt: !4846)
!5026 = !DILocation(line: 378, column: 6, scope: !4842, inlinedAt: !4846)
!5027 = !DILocation(line: 378, column: 32, scope: !5024, inlinedAt: !4846)
!5028 = !DILocation(line: 379, column: 6, scope: !5029, inlinedAt: !4846)
!5029 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 379, column: 6)
!5030 = !DILocation(line: 379, column: 11, scope: !5029, inlinedAt: !4846)
!5031 = !DILocation(line: 379, column: 6, scope: !4842, inlinedAt: !4846)
!5032 = !DILocation(line: 379, column: 33, scope: !5029, inlinedAt: !4846)
!5033 = !DILocation(line: 380, column: 6, scope: !5034, inlinedAt: !4846)
!5034 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 380, column: 6)
!5035 = !DILocation(line: 380, column: 11, scope: !5034, inlinedAt: !4846)
!5036 = !DILocation(line: 380, column: 6, scope: !4842, inlinedAt: !4846)
!5037 = !DILocation(line: 380, column: 33, scope: !5034, inlinedAt: !4846)
!5038 = !DILocation(line: 381, column: 6, scope: !5039, inlinedAt: !4846)
!5039 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 381, column: 6)
!5040 = !DILocation(line: 381, column: 11, scope: !5039, inlinedAt: !4846)
!5041 = !DILocation(line: 381, column: 6, scope: !4842, inlinedAt: !4846)
!5042 = !DILocation(line: 381, column: 33, scope: !5039, inlinedAt: !4846)
!5043 = !DILocation(line: 382, column: 2, scope: !5044, inlinedAt: !4846)
!5044 = distinct !DILexicalBlock(scope: !5045, file: !120, line: 382, column: 2)
!5045 = distinct !DILexicalBlock(scope: !4842, file: !120, line: 382, column: 2)
!5046 = !{i32 -2144623741, i32 -2144623712, i32 -2144623666, i32 -2144623608, i32 -2144623554, i32 -2144623500, i32 -2144623445, i32 -2144623414}
!5047 = !DILocation(line: 382, column: 2, scope: !5048, inlinedAt: !4846)
!5048 = distinct !DILexicalBlock(scope: !5049, file: !120, line: 382, column: 2)
!5049 = distinct !DILexicalBlock(scope: !5045, file: !120, line: 382, column: 2)
!5050 = !{i32 -2144622971, i32 -2144622964, i32 -2144622910, i32 -2144622879, i32 -2144622849}
!5051 = !DILocation(line: 382, column: 2, scope: !5049, inlinedAt: !4846)
!5052 = !DILocation(line: 386, column: 1, scope: !4842, inlinedAt: !4846)
!5053 = !DILocation(line: 547, column: 9, scope: !4825, inlinedAt: !4828)
!5054 = !DILocation(line: 549, column: 8, scope: !5055, inlinedAt: !4828)
!5055 = distinct !DILexicalBlock(scope: !4825, file: !120, line: 549, column: 7)
!5056 = !DILocation(line: 549, column: 7, scope: !4825, inlinedAt: !4828)
!5057 = !DILocation(line: 550, column: 4, scope: !5055, inlinedAt: !4828)
!5058 = !DILocation(line: 553, column: 33, scope: !4825, inlinedAt: !4828)
!5059 = !DILocation(line: 325, column: 6, scope: !5060, inlinedAt: !4840)
!5060 = distinct !DILexicalBlock(scope: !4836, file: !120, line: 325, column: 6)
!5061 = !DILocation(line: 325, column: 6, scope: !4836, inlinedAt: !4840)
!5062 = !DILocation(line: 326, column: 3, scope: !5060, inlinedAt: !4840)
!5063 = !DILocation(line: 332, column: 9, scope: !4836, inlinedAt: !4840)
!5064 = !DILocation(line: 332, column: 15, scope: !4836, inlinedAt: !4840)
!5065 = !DILocation(line: 332, column: 2, scope: !4836, inlinedAt: !4840)
!5066 = !DILocation(line: 336, column: 1, scope: !4836, inlinedAt: !4840)
!5067 = !DILocation(line: 553, column: 5, scope: !4825, inlinedAt: !4828)
!5068 = !DILocation(line: 553, column: 41, scope: !4825, inlinedAt: !4828)
!5069 = !DILocation(line: 554, column: 5, scope: !4825, inlinedAt: !4828)
!5070 = !DILocation(line: 554, column: 12, scope: !4825, inlinedAt: !4828)
!5071 = !DILocation(line: 448, column: 31, scope: !4820, inlinedAt: !4824)
!5072 = !DILocation(line: 448, column: 34, scope: !4820, inlinedAt: !4824)
!5073 = !DILocation(line: 448, column: 14, scope: !4820, inlinedAt: !4824)
!5074 = !DILocation(line: 450, column: 22, scope: !4820, inlinedAt: !4824)
!5075 = !DILocation(line: 450, column: 25, scope: !4820, inlinedAt: !4824)
!5076 = !DILocation(line: 450, column: 30, scope: !4820, inlinedAt: !4824)
!5077 = !DILocation(line: 450, column: 36, scope: !4820, inlinedAt: !4824)
!5078 = !DILocation(line: 450, column: 8, scope: !4820, inlinedAt: !4824)
!5079 = !DILocation(line: 450, column: 6, scope: !4820, inlinedAt: !4824)
!5080 = !DILocation(line: 451, column: 9, scope: !4820, inlinedAt: !4824)
!5081 = !DILocation(line: 552, column: 3, scope: !4825, inlinedAt: !4828)
!5082 = !DILocation(line: 557, column: 19, scope: !4827, inlinedAt: !4828)
!5083 = !DILocation(line: 557, column: 25, scope: !4827, inlinedAt: !4828)
!5084 = !DILocation(line: 557, column: 9, scope: !4827, inlinedAt: !4828)
!5085 = !DILocation(line: 557, column: 2, scope: !4827, inlinedAt: !4828)
!5086 = !DILocation(line: 558, column: 1, scope: !4827, inlinedAt: !4828)
!5087 = !DILocation(line: 664, column: 2, scope: !4816)
!5088 = distinct !DISubprogram(name: "usb_fill_int_urb", scope: !6, file: !6, line: 1688, type: !5089, scopeLine: 1696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5089 = !DISubroutineType(types: !5090)
!5090 = !{null, !4358, !138, !7, !137, !142, !4400, !137, !142}
!5091 = !DILocalVariable(name: "urb", arg: 1, scope: !5088, file: !6, line: 1688, type: !4358)
!5092 = !DILocation(line: 1688, column: 49, scope: !5088)
!5093 = !DILocalVariable(name: "dev", arg: 2, scope: !5088, file: !6, line: 1689, type: !138)
!5094 = !DILocation(line: 1689, column: 28, scope: !5088)
!5095 = !DILocalVariable(name: "pipe", arg: 3, scope: !5088, file: !6, line: 1690, type: !7)
!5096 = !DILocation(line: 1690, column: 22, scope: !5088)
!5097 = !DILocalVariable(name: "transfer_buffer", arg: 4, scope: !5088, file: !6, line: 1691, type: !137)
!5098 = !DILocation(line: 1691, column: 15, scope: !5088)
!5099 = !DILocalVariable(name: "buffer_length", arg: 5, scope: !5088, file: !6, line: 1692, type: !142)
!5100 = !DILocation(line: 1692, column: 13, scope: !5088)
!5101 = !DILocalVariable(name: "complete_fn", arg: 6, scope: !5088, file: !6, line: 1693, type: !4400)
!5102 = !DILocation(line: 1693, column: 24, scope: !5088)
!5103 = !DILocalVariable(name: "context", arg: 7, scope: !5088, file: !6, line: 1694, type: !137)
!5104 = !DILocation(line: 1694, column: 15, scope: !5088)
!5105 = !DILocalVariable(name: "interval", arg: 8, scope: !5088, file: !6, line: 1695, type: !142)
!5106 = !DILocation(line: 1695, column: 13, scope: !5088)
!5107 = !DILocation(line: 1697, column: 13, scope: !5088)
!5108 = !DILocation(line: 1697, column: 2, scope: !5088)
!5109 = !DILocation(line: 1697, column: 7, scope: !5088)
!5110 = !DILocation(line: 1697, column: 11, scope: !5088)
!5111 = !DILocation(line: 1698, column: 14, scope: !5088)
!5112 = !DILocation(line: 1698, column: 2, scope: !5088)
!5113 = !DILocation(line: 1698, column: 7, scope: !5088)
!5114 = !DILocation(line: 1698, column: 12, scope: !5088)
!5115 = !DILocation(line: 1699, column: 25, scope: !5088)
!5116 = !DILocation(line: 1699, column: 2, scope: !5088)
!5117 = !DILocation(line: 1699, column: 7, scope: !5088)
!5118 = !DILocation(line: 1699, column: 23, scope: !5088)
!5119 = !DILocation(line: 1700, column: 32, scope: !5088)
!5120 = !DILocation(line: 1700, column: 2, scope: !5088)
!5121 = !DILocation(line: 1700, column: 7, scope: !5088)
!5122 = !DILocation(line: 1700, column: 30, scope: !5088)
!5123 = !DILocation(line: 1701, column: 18, scope: !5088)
!5124 = !DILocation(line: 1701, column: 2, scope: !5088)
!5125 = !DILocation(line: 1701, column: 7, scope: !5088)
!5126 = !DILocation(line: 1701, column: 16, scope: !5088)
!5127 = !DILocation(line: 1702, column: 17, scope: !5088)
!5128 = !DILocation(line: 1702, column: 2, scope: !5088)
!5129 = !DILocation(line: 1702, column: 7, scope: !5088)
!5130 = !DILocation(line: 1702, column: 15, scope: !5088)
!5131 = !DILocation(line: 1704, column: 6, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5088, file: !6, line: 1704, column: 6)
!5133 = !DILocation(line: 1704, column: 11, scope: !5132)
!5134 = !DILocation(line: 1704, column: 17, scope: !5132)
!5135 = !DILocation(line: 1704, column: 35, scope: !5132)
!5136 = !DILocation(line: 1704, column: 38, scope: !5132)
!5137 = !DILocation(line: 1704, column: 43, scope: !5132)
!5138 = !DILocation(line: 1704, column: 49, scope: !5132)
!5139 = !DILocation(line: 1704, column: 6, scope: !5088)
!5140 = !DILocalVariable(name: "__UNIQUE_ID___x207", scope: !5141, file: !6, line: 1706, type: !142)
!5141 = distinct !DILexicalBlock(scope: !5142, file: !6, line: 1706, column: 14)
!5142 = distinct !DILexicalBlock(scope: !5132, file: !6, line: 1704, column: 69)
!5143 = !DILocation(line: 1706, column: 14, scope: !5141)
!5144 = !DILocalVariable(name: "__UNIQUE_ID___x205", scope: !5145, file: !6, line: 1706, type: !142)
!5145 = distinct !DILexicalBlock(scope: !5141, file: !6, line: 1706, column: 14)
!5146 = !DILocation(line: 1706, column: 14, scope: !5145)
!5147 = !DILocalVariable(name: "__UNIQUE_ID___y206", scope: !5145, file: !6, line: 1706, type: !142)
!5148 = !DILocalVariable(name: "__UNIQUE_ID___y208", scope: !5141, file: !6, line: 1706, type: !142)
!5149 = !DILocation(line: 1706, column: 12, scope: !5142)
!5150 = !DILocation(line: 1708, column: 25, scope: !5142)
!5151 = !DILocation(line: 1708, column: 34, scope: !5142)
!5152 = !DILocation(line: 1708, column: 21, scope: !5142)
!5153 = !DILocation(line: 1708, column: 3, scope: !5142)
!5154 = !DILocation(line: 1708, column: 8, scope: !5142)
!5155 = !DILocation(line: 1708, column: 17, scope: !5142)
!5156 = !DILocation(line: 1709, column: 2, scope: !5142)
!5157 = !DILocation(line: 1710, column: 19, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5132, file: !6, line: 1709, column: 9)
!5159 = !DILocation(line: 1710, column: 3, scope: !5158)
!5160 = !DILocation(line: 1710, column: 8, scope: !5158)
!5161 = !DILocation(line: 1710, column: 17, scope: !5158)
!5162 = !DILocation(line: 1713, column: 2, scope: !5088)
!5163 = !DILocation(line: 1713, column: 7, scope: !5088)
!5164 = !DILocation(line: 1713, column: 19, scope: !5088)
!5165 = !DILocation(line: 1714, column: 1, scope: !5088)
!5166 = distinct !DISubprogram(name: "__create_pipe", scope: !6, file: !6, line: 1945, type: !5167, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5167 = !DISubroutineType(types: !5168)
!5168 = !{!7, !138, !7}
!5169 = !DILocalVariable(name: "dev", arg: 1, scope: !5166, file: !6, line: 1945, type: !138)
!5170 = !DILocation(line: 1945, column: 61, scope: !5166)
!5171 = !DILocalVariable(name: "endpoint", arg: 2, scope: !5166, file: !6, line: 1946, type: !7)
!5172 = !DILocation(line: 1946, column: 16, scope: !5166)
!5173 = !DILocation(line: 1948, column: 10, scope: !5166)
!5174 = !DILocation(line: 1948, column: 15, scope: !5166)
!5175 = !DILocation(line: 1948, column: 22, scope: !5166)
!5176 = !DILocation(line: 1948, column: 31, scope: !5166)
!5177 = !DILocation(line: 1948, column: 40, scope: !5166)
!5178 = !DILocation(line: 1948, column: 28, scope: !5166)
!5179 = !DILocation(line: 1948, column: 2, scope: !5166)
!5180 = distinct !DISubprogram(name: "bcm5974_irq_button", scope: !3, file: !3, line: 699, type: !4402, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5181 = !DILocalVariable(name: "urb", arg: 1, scope: !5180, file: !3, line: 699, type: !4358)
!5182 = !DILocation(line: 699, column: 44, scope: !5180)
!5183 = !DILocalVariable(name: "dev", scope: !5180, file: !3, line: 701, type: !4056)
!5184 = !DILocation(line: 701, column: 18, scope: !5180)
!5185 = !DILocation(line: 701, column: 24, scope: !5180)
!5186 = !DILocation(line: 701, column: 29, scope: !5180)
!5187 = !DILocalVariable(name: "intf", scope: !5180, file: !3, line: 702, type: !3709)
!5188 = !DILocation(line: 702, column: 24, scope: !5180)
!5189 = !DILocation(line: 702, column: 31, scope: !5180)
!5190 = !DILocation(line: 702, column: 36, scope: !5180)
!5191 = !DILocalVariable(name: "error", scope: !5180, file: !3, line: 703, type: !142)
!5192 = !DILocation(line: 703, column: 6, scope: !5180)
!5193 = !DILocation(line: 705, column: 10, scope: !5180)
!5194 = !DILocation(line: 705, column: 15, scope: !5180)
!5195 = !DILocation(line: 705, column: 2, scope: !5180)
!5196 = !DILocation(line: 707, column: 3, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 705, column: 23)
!5198 = !DILocation(line: 714, column: 3, scope: !5197)
!5199 = !DILocation(line: 717, column: 3, scope: !5197)
!5200 = !DILocation(line: 720, column: 22, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 720, column: 6)
!5202 = !DILocation(line: 720, column: 27, scope: !5201)
!5203 = !DILocation(line: 720, column: 32, scope: !5201)
!5204 = !DILocation(line: 720, column: 40, scope: !5201)
!5205 = !DILocation(line: 720, column: 6, scope: !5201)
!5206 = !DILocation(line: 720, column: 6, scope: !5180)
!5207 = !DILocation(line: 721, column: 3, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 721, column: 3)
!5209 = distinct !DILexicalBlock(scope: !5201, file: !3, line: 721, column: 3)
!5210 = !DILocation(line: 721, column: 3, scope: !5209)
!5211 = !DILocation(line: 720, column: 53, scope: !5201)
!5212 = !DILabel(scope: !5180, name: "exit", file: !3, line: 724)
!5213 = !DILocation(line: 724, column: 1, scope: !5180)
!5214 = !DILocation(line: 725, column: 25, scope: !5180)
!5215 = !DILocation(line: 725, column: 30, scope: !5180)
!5216 = !DILocation(line: 725, column: 10, scope: !5180)
!5217 = !DILocation(line: 725, column: 8, scope: !5180)
!5218 = !DILocation(line: 726, column: 6, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 726, column: 6)
!5220 = !DILocation(line: 726, column: 6, scope: !5180)
!5221 = !DILocation(line: 727, column: 3, scope: !5219)
!5222 = !DILocation(line: 728, column: 1, scope: !5180)
!5223 = distinct !DISubprogram(name: "bcm5974_irq_trackpad", scope: !3, file: !3, line: 730, type: !4402, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5224 = !DILocalVariable(name: "urb", arg: 1, scope: !5223, file: !3, line: 730, type: !4358)
!5225 = !DILocation(line: 730, column: 46, scope: !5223)
!5226 = !DILocalVariable(name: "dev", scope: !5223, file: !3, line: 732, type: !4056)
!5227 = !DILocation(line: 732, column: 18, scope: !5223)
!5228 = !DILocation(line: 732, column: 24, scope: !5223)
!5229 = !DILocation(line: 732, column: 29, scope: !5223)
!5230 = !DILocalVariable(name: "intf", scope: !5223, file: !3, line: 733, type: !3709)
!5231 = !DILocation(line: 733, column: 24, scope: !5223)
!5232 = !DILocation(line: 733, column: 31, scope: !5223)
!5233 = !DILocation(line: 733, column: 36, scope: !5223)
!5234 = !DILocalVariable(name: "error", scope: !5223, file: !3, line: 734, type: !142)
!5235 = !DILocation(line: 734, column: 6, scope: !5223)
!5236 = !DILocation(line: 736, column: 10, scope: !5223)
!5237 = !DILocation(line: 736, column: 15, scope: !5223)
!5238 = !DILocation(line: 736, column: 2, scope: !5223)
!5239 = !DILocation(line: 738, column: 3, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 736, column: 23)
!5241 = !DILocation(line: 745, column: 3, scope: !5240)
!5242 = !DILocation(line: 748, column: 3, scope: !5240)
!5243 = !DILocation(line: 752, column: 6, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 752, column: 6)
!5245 = !DILocation(line: 752, column: 11, scope: !5244)
!5246 = !DILocation(line: 752, column: 19, scope: !5244)
!5247 = !DILocation(line: 752, column: 33, scope: !5244)
!5248 = !DILocation(line: 752, column: 6, scope: !5223)
!5249 = !DILocation(line: 753, column: 3, scope: !5244)
!5250 = !DILocation(line: 755, column: 22, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 755, column: 6)
!5252 = !DILocation(line: 755, column: 27, scope: !5251)
!5253 = !DILocation(line: 755, column: 32, scope: !5251)
!5254 = !DILocation(line: 755, column: 40, scope: !5251)
!5255 = !DILocation(line: 755, column: 6, scope: !5251)
!5256 = !DILocation(line: 755, column: 6, scope: !5223)
!5257 = !DILocation(line: 756, column: 3, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5259, file: !3, line: 756, column: 3)
!5259 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 756, column: 3)
!5260 = !DILocation(line: 756, column: 3, scope: !5259)
!5261 = !DILocation(line: 755, column: 53, scope: !5251)
!5262 = !DILabel(scope: !5223, name: "exit", file: !3, line: 759)
!5263 = !DILocation(line: 759, column: 1, scope: !5223)
!5264 = !DILocation(line: 760, column: 25, scope: !5223)
!5265 = !DILocation(line: 760, column: 30, scope: !5223)
!5266 = !DILocation(line: 760, column: 10, scope: !5223)
!5267 = !DILocation(line: 760, column: 8, scope: !5223)
!5268 = !DILocation(line: 761, column: 6, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 761, column: 6)
!5270 = !DILocation(line: 761, column: 6, scope: !5223)
!5271 = !DILocation(line: 762, column: 3, scope: !5269)
!5272 = !DILocation(line: 763, column: 1, scope: !5223)
!5273 = distinct !DISubprogram(name: "usb_make_path", scope: !6, file: !6, line: 912, type: !5274, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5274 = !DISubroutineType(types: !5275)
!5275 = !{!142, !138, !236, !283}
!5276 = !DILocalVariable(name: "dev", arg: 1, scope: !5273, file: !6, line: 912, type: !138)
!5277 = !DILocation(line: 912, column: 52, scope: !5273)
!5278 = !DILocalVariable(name: "buf", arg: 2, scope: !5273, file: !6, line: 912, type: !236)
!5279 = !DILocation(line: 912, column: 63, scope: !5273)
!5280 = !DILocalVariable(name: "size", arg: 3, scope: !5273, file: !6, line: 912, type: !283)
!5281 = !DILocation(line: 912, column: 75, scope: !5273)
!5282 = !DILocalVariable(name: "actual", scope: !5273, file: !6, line: 914, type: !142)
!5283 = !DILocation(line: 914, column: 6, scope: !5273)
!5284 = !DILocation(line: 915, column: 20, scope: !5273)
!5285 = !DILocation(line: 915, column: 25, scope: !5273)
!5286 = !DILocation(line: 915, column: 44, scope: !5273)
!5287 = !DILocation(line: 915, column: 49, scope: !5273)
!5288 = !DILocation(line: 915, column: 54, scope: !5273)
!5289 = !DILocation(line: 916, column: 6, scope: !5273)
!5290 = !DILocation(line: 916, column: 11, scope: !5273)
!5291 = !DILocation(line: 915, column: 11, scope: !5273)
!5292 = !DILocation(line: 915, column: 9, scope: !5273)
!5293 = !DILocation(line: 917, column: 10, scope: !5273)
!5294 = !DILocation(line: 917, column: 25, scope: !5273)
!5295 = !DILocation(line: 917, column: 20, scope: !5273)
!5296 = !DILocation(line: 917, column: 17, scope: !5273)
!5297 = !DILocation(line: 917, column: 9, scope: !5273)
!5298 = !DILocation(line: 917, column: 38, scope: !5273)
!5299 = !DILocation(line: 917, column: 2, scope: !5273)
!5300 = distinct !DISubprogram(name: "usb_to_input_id", scope: !5301, file: !5301, line: 18, type: !5302, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5301 = !DIFile(filename: "./include/linux/usb/input.h", directory: "/home/lizy2001/genbc/linux")
!5302 = !DISubroutineType(types: !5303)
!5303 = !{null, !5304, !5306}
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!5306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!5307 = !DILocalVariable(name: "dev", arg: 1, scope: !5300, file: !5301, line: 18, type: !5304)
!5308 = !DILocation(line: 18, column: 42, scope: !5300)
!5309 = !DILocalVariable(name: "id", arg: 2, scope: !5300, file: !5301, line: 18, type: !5306)
!5310 = !DILocation(line: 18, column: 64, scope: !5300)
!5311 = !DILocation(line: 20, column: 2, scope: !5300)
!5312 = !DILocation(line: 20, column: 6, scope: !5300)
!5313 = !DILocation(line: 20, column: 14, scope: !5300)
!5314 = !DILocation(line: 21, column: 15, scope: !5300)
!5315 = !DILocation(line: 21, column: 2, scope: !5300)
!5316 = !DILocation(line: 21, column: 6, scope: !5300)
!5317 = !DILocation(line: 21, column: 13, scope: !5300)
!5318 = !DILocation(line: 22, column: 16, scope: !5300)
!5319 = !DILocation(line: 22, column: 2, scope: !5300)
!5320 = !DILocation(line: 22, column: 6, scope: !5300)
!5321 = !DILocation(line: 22, column: 14, scope: !5300)
!5322 = !DILocation(line: 23, column: 16, scope: !5300)
!5323 = !DILocation(line: 23, column: 2, scope: !5300)
!5324 = !DILocation(line: 23, column: 6, scope: !5300)
!5325 = !DILocation(line: 23, column: 14, scope: !5300)
!5326 = !DILocation(line: 24, column: 1, scope: !5300)
!5327 = distinct !DISubprogram(name: "input_set_drvdata", scope: !4066, file: !4066, line: 371, type: !5328, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5328 = !DISubroutineType(types: !5329)
!5329 = !{null, !4064, !137}
!5330 = !DILocalVariable(name: "dev", arg: 1, scope: !5327, file: !4066, line: 371, type: !4064)
!5331 = !DILocation(line: 371, column: 56, scope: !5327)
!5332 = !DILocalVariable(name: "data", arg: 2, scope: !5327, file: !4066, line: 371, type: !137)
!5333 = !DILocation(line: 371, column: 67, scope: !5327)
!5334 = !DILocation(line: 373, column: 19, scope: !5327)
!5335 = !DILocation(line: 373, column: 24, scope: !5327)
!5336 = !DILocation(line: 373, column: 29, scope: !5327)
!5337 = !DILocation(line: 373, column: 2, scope: !5327)
!5338 = !DILocation(line: 374, column: 1, scope: !5327)
!5339 = distinct !DISubprogram(name: "bcm5974_open", scope: !3, file: !3, line: 828, type: !4250, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5340 = !DILocalVariable(name: "input", arg: 1, scope: !5339, file: !3, line: 828, type: !4064)
!5341 = !DILocation(line: 828, column: 43, scope: !5339)
!5342 = !DILocalVariable(name: "dev", scope: !5339, file: !3, line: 830, type: !4056)
!5343 = !DILocation(line: 830, column: 18, scope: !5339)
!5344 = !DILocation(line: 830, column: 42, scope: !5339)
!5345 = !DILocation(line: 830, column: 24, scope: !5339)
!5346 = !DILocalVariable(name: "error", scope: !5339, file: !3, line: 831, type: !142)
!5347 = !DILocation(line: 831, column: 6, scope: !5339)
!5348 = !DILocation(line: 833, column: 35, scope: !5339)
!5349 = !DILocation(line: 833, column: 40, scope: !5339)
!5350 = !DILocation(line: 833, column: 10, scope: !5339)
!5351 = !DILocation(line: 833, column: 8, scope: !5339)
!5352 = !DILocation(line: 834, column: 6, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 834, column: 6)
!5354 = !DILocation(line: 834, column: 6, scope: !5339)
!5355 = !DILocation(line: 835, column: 10, scope: !5353)
!5356 = !DILocation(line: 835, column: 3, scope: !5353)
!5357 = !DILocation(line: 837, column: 14, scope: !5339)
!5358 = !DILocation(line: 837, column: 19, scope: !5339)
!5359 = !DILocation(line: 837, column: 2, scope: !5339)
!5360 = !DILocation(line: 839, column: 32, scope: !5339)
!5361 = !DILocation(line: 839, column: 10, scope: !5339)
!5362 = !DILocation(line: 839, column: 8, scope: !5339)
!5363 = !DILocation(line: 840, column: 7, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 840, column: 6)
!5365 = !DILocation(line: 840, column: 6, scope: !5339)
!5366 = !DILocation(line: 841, column: 3, scope: !5364)
!5367 = !DILocation(line: 841, column: 8, scope: !5364)
!5368 = !DILocation(line: 841, column: 15, scope: !5364)
!5369 = !DILocation(line: 843, column: 16, scope: !5339)
!5370 = !DILocation(line: 843, column: 21, scope: !5339)
!5371 = !DILocation(line: 843, column: 2, scope: !5339)
!5372 = !DILocation(line: 845, column: 6, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 845, column: 6)
!5374 = !DILocation(line: 845, column: 6, scope: !5339)
!5375 = !DILocation(line: 846, column: 28, scope: !5373)
!5376 = !DILocation(line: 846, column: 33, scope: !5373)
!5377 = !DILocation(line: 846, column: 3, scope: !5373)
!5378 = !DILocation(line: 848, column: 9, scope: !5339)
!5379 = !DILocation(line: 848, column: 2, scope: !5339)
!5380 = !DILocation(line: 849, column: 1, scope: !5339)
!5381 = distinct !DISubprogram(name: "bcm5974_close", scope: !3, file: !3, line: 851, type: !4254, scopeLine: 852, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5382 = !DILocalVariable(name: "input", arg: 1, scope: !5381, file: !3, line: 851, type: !4064)
!5383 = !DILocation(line: 851, column: 45, scope: !5381)
!5384 = !DILocalVariable(name: "dev", scope: !5381, file: !3, line: 853, type: !4056)
!5385 = !DILocation(line: 853, column: 18, scope: !5381)
!5386 = !DILocation(line: 853, column: 42, scope: !5381)
!5387 = !DILocation(line: 853, column: 24, scope: !5381)
!5388 = !DILocation(line: 855, column: 14, scope: !5381)
!5389 = !DILocation(line: 855, column: 19, scope: !5381)
!5390 = !DILocation(line: 855, column: 2, scope: !5381)
!5391 = !DILocation(line: 857, column: 24, scope: !5381)
!5392 = !DILocation(line: 857, column: 2, scope: !5381)
!5393 = !DILocation(line: 858, column: 2, scope: !5381)
!5394 = !DILocation(line: 858, column: 7, scope: !5381)
!5395 = !DILocation(line: 858, column: 14, scope: !5381)
!5396 = !DILocation(line: 860, column: 16, scope: !5381)
!5397 = !DILocation(line: 860, column: 21, scope: !5381)
!5398 = !DILocation(line: 860, column: 2, scope: !5381)
!5399 = !DILocation(line: 862, column: 27, scope: !5381)
!5400 = !DILocation(line: 862, column: 32, scope: !5381)
!5401 = !DILocation(line: 862, column: 2, scope: !5381)
!5402 = !DILocation(line: 863, column: 1, scope: !5381)
!5403 = distinct !DISubprogram(name: "setup_events_to_report", scope: !3, file: !3, line: 516, type: !5404, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{null, !4064, !4053}
!5406 = !DILocalVariable(name: "input_dev", arg: 1, scope: !5403, file: !3, line: 516, type: !4064)
!5407 = !DILocation(line: 516, column: 54, scope: !5403)
!5408 = !DILocalVariable(name: "cfg", arg: 2, scope: !5403, file: !3, line: 517, type: !4053)
!5409 = !DILocation(line: 517, column: 37, scope: !5403)
!5410 = !DILocation(line: 519, column: 20, scope: !5403)
!5411 = !DILocation(line: 519, column: 31, scope: !5403)
!5412 = !DILocation(line: 519, column: 2, scope: !5403)
!5413 = !DILocation(line: 522, column: 23, scope: !5403)
!5414 = !DILocation(line: 522, column: 2, scope: !5403)
!5415 = !DILocation(line: 523, column: 23, scope: !5403)
!5416 = !DILocation(line: 523, column: 2, scope: !5403)
!5417 = !DILocation(line: 526, column: 10, scope: !5403)
!5418 = !DILocation(line: 526, column: 42, scope: !5403)
!5419 = !DILocation(line: 526, column: 47, scope: !5403)
!5420 = !DILocation(line: 526, column: 2, scope: !5403)
!5421 = !DILocation(line: 527, column: 10, scope: !5403)
!5422 = !DILocation(line: 527, column: 42, scope: !5403)
!5423 = !DILocation(line: 527, column: 47, scope: !5403)
!5424 = !DILocation(line: 527, column: 2, scope: !5403)
!5425 = !DILocation(line: 529, column: 10, scope: !5403)
!5426 = !DILocation(line: 529, column: 42, scope: !5403)
!5427 = !DILocation(line: 529, column: 47, scope: !5403)
!5428 = !DILocation(line: 529, column: 2, scope: !5403)
!5429 = !DILocation(line: 530, column: 10, scope: !5403)
!5430 = !DILocation(line: 530, column: 42, scope: !5403)
!5431 = !DILocation(line: 530, column: 47, scope: !5403)
!5432 = !DILocation(line: 530, column: 2, scope: !5403)
!5433 = !DILocation(line: 532, column: 10, scope: !5403)
!5434 = !DILocation(line: 532, column: 42, scope: !5403)
!5435 = !DILocation(line: 532, column: 47, scope: !5403)
!5436 = !DILocation(line: 532, column: 2, scope: !5403)
!5437 = !DILocation(line: 534, column: 10, scope: !5403)
!5438 = !DILocation(line: 534, column: 41, scope: !5403)
!5439 = !DILocation(line: 534, column: 46, scope: !5403)
!5440 = !DILocation(line: 534, column: 2, scope: !5403)
!5441 = !DILocation(line: 535, column: 10, scope: !5403)
!5442 = !DILocation(line: 535, column: 41, scope: !5403)
!5443 = !DILocation(line: 535, column: 46, scope: !5403)
!5444 = !DILocation(line: 535, column: 2, scope: !5403)
!5445 = !DILocation(line: 537, column: 20, scope: !5403)
!5446 = !DILocation(line: 537, column: 31, scope: !5403)
!5447 = !DILocation(line: 537, column: 2, scope: !5403)
!5448 = !DILocation(line: 538, column: 22, scope: !5403)
!5449 = !DILocation(line: 538, column: 33, scope: !5403)
!5450 = !DILocation(line: 538, column: 2, scope: !5403)
!5451 = !DILocation(line: 540, column: 6, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5403, file: !3, line: 540, column: 6)
!5453 = !DILocation(line: 540, column: 11, scope: !5452)
!5454 = !DILocation(line: 540, column: 16, scope: !5452)
!5455 = !DILocation(line: 540, column: 6, scope: !5403)
!5456 = !DILocation(line: 541, column: 35, scope: !5452)
!5457 = !DILocation(line: 541, column: 46, scope: !5452)
!5458 = !DILocation(line: 541, column: 3, scope: !5452)
!5459 = !DILocation(line: 543, column: 22, scope: !5403)
!5460 = !DILocation(line: 543, column: 2, scope: !5403)
!5461 = !DILocation(line: 545, column: 1, scope: !5403)
!5462 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !6, file: !6, line: 268, type: !5463, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5463 = !DISubroutineType(types: !5464)
!5464 = !{null, !3709, !137}
!5465 = !DILocalVariable(name: "intf", arg: 1, scope: !5462, file: !6, line: 268, type: !3709)
!5466 = !DILocation(line: 268, column: 59, scope: !5462)
!5467 = !DILocalVariable(name: "data", arg: 2, scope: !5462, file: !6, line: 268, type: !137)
!5468 = !DILocation(line: 268, column: 71, scope: !5462)
!5469 = !DILocation(line: 270, column: 19, scope: !5462)
!5470 = !DILocation(line: 270, column: 25, scope: !5462)
!5471 = !DILocation(line: 270, column: 30, scope: !5462)
!5472 = !DILocation(line: 270, column: 2, scope: !5462)
!5473 = !DILocation(line: 271, column: 1, scope: !5462)
!5474 = distinct !DISubprogram(name: "get_order", scope: !5475, file: !5475, line: 29, type: !5476, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5475 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5476 = !DISubroutineType(types: !5477)
!5477 = !{!142, !286}
!5478 = !DILocalVariable(name: "x", arg: 1, scope: !5479, file: !5480, line: 366, type: !380)
!5479 = distinct !DISubprogram(name: "fls64", scope: !5480, file: !5480, line: 366, type: !5481, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5480 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5481 = !DISubroutineType(types: !5482)
!5482 = !{!142, !380}
!5483 = !DILocation(line: 366, column: 40, scope: !5479, inlinedAt: !5484)
!5484 = distinct !DILocation(line: 46, column: 9, scope: !5474)
!5485 = !DILocalVariable(name: "bitpos", scope: !5479, file: !5480, line: 368, type: !142)
!5486 = !DILocation(line: 368, column: 6, scope: !5479, inlinedAt: !5484)
!5487 = !DILocalVariable(name: "size", arg: 1, scope: !5474, file: !5475, line: 29, type: !286)
!5488 = !DILocation(line: 29, column: 63, scope: !5474)
!5489 = !DILocation(line: 31, column: 27, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5474, file: !5475, line: 31, column: 6)
!5491 = !DILocation(line: 31, column: 6, scope: !5490)
!5492 = !DILocation(line: 31, column: 6, scope: !5474)
!5493 = !DILocation(line: 32, column: 8, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5495, file: !5475, line: 32, column: 7)
!5495 = distinct !DILexicalBlock(scope: !5490, file: !5475, line: 31, column: 34)
!5496 = !DILocation(line: 32, column: 7, scope: !5495)
!5497 = !DILocation(line: 33, column: 4, scope: !5494)
!5498 = !DILocation(line: 35, column: 7, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5495, file: !5475, line: 35, column: 7)
!5500 = !DILocation(line: 35, column: 12, scope: !5499)
!5501 = !DILocation(line: 35, column: 7, scope: !5495)
!5502 = !DILocation(line: 36, column: 4, scope: !5499)
!5503 = !DILocation(line: 38, column: 10, scope: !5495)
!5504 = !DILocation(line: 38, column: 28, scope: !5495)
!5505 = !DILocation(line: 38, column: 41, scope: !5495)
!5506 = !DILocation(line: 38, column: 3, scope: !5495)
!5507 = !DILocation(line: 41, column: 6, scope: !5474)
!5508 = !DILocation(line: 42, column: 7, scope: !5474)
!5509 = !DILocation(line: 46, column: 15, scope: !5474)
!5510 = !DILocation(line: 374, column: 2, scope: !5479, inlinedAt: !5484)
!5511 = !DILocation(line: 376, column: 14, scope: !5479, inlinedAt: !5484)
!5512 = !{i32 270517}
!5513 = !DILocation(line: 377, column: 9, scope: !5479, inlinedAt: !5484)
!5514 = !DILocation(line: 377, column: 16, scope: !5479, inlinedAt: !5484)
!5515 = !DILocation(line: 46, column: 2, scope: !5474)
!5516 = !DILocation(line: 48, column: 1, scope: !5474)
!5517 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5518, file: !5518, line: 30, type: !5519, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5518 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5519 = !DISubroutineType(types: !5520)
!5520 = !{!142, !379}
!5521 = !DILocation(line: 366, column: 40, scope: !5479, inlinedAt: !5522)
!5522 = distinct !DILocation(line: 32, column: 9, scope: !5517)
!5523 = !DILocation(line: 368, column: 6, scope: !5479, inlinedAt: !5522)
!5524 = !DILocalVariable(name: "n", arg: 1, scope: !5517, file: !5518, line: 30, type: !379)
!5525 = !DILocation(line: 30, column: 21, scope: !5517)
!5526 = !DILocation(line: 32, column: 15, scope: !5517)
!5527 = !DILocation(line: 374, column: 2, scope: !5479, inlinedAt: !5522)
!5528 = !DILocation(line: 376, column: 14, scope: !5479, inlinedAt: !5522)
!5529 = !DILocation(line: 377, column: 9, scope: !5479, inlinedAt: !5522)
!5530 = !DILocation(line: 377, column: 16, scope: !5479, inlinedAt: !5522)
!5531 = !DILocation(line: 32, column: 18, scope: !5517)
!5532 = !DILocation(line: 32, column: 2, scope: !5517)
!5533 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1991, file: !1991, line: 137, type: !5534, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5534 = !DISubroutineType(types: !5535)
!5535 = !{!137, !893, !3008, !283, !135}
!5536 = !DILocalVariable(name: "s", arg: 1, scope: !5533, file: !1991, line: 137, type: !893)
!5537 = !DILocation(line: 137, column: 54, scope: !5533)
!5538 = !DILocalVariable(name: "object", arg: 2, scope: !5533, file: !1991, line: 137, type: !3008)
!5539 = !DILocation(line: 137, column: 69, scope: !5533)
!5540 = !DILocalVariable(name: "size", arg: 3, scope: !5533, file: !1991, line: 138, type: !283)
!5541 = !DILocation(line: 138, column: 12, scope: !5533)
!5542 = !DILocalVariable(name: "flags", arg: 4, scope: !5533, file: !1991, line: 138, type: !135)
!5543 = !DILocation(line: 138, column: 24, scope: !5533)
!5544 = !DILocation(line: 140, column: 17, scope: !5533)
!5545 = !DILocation(line: 140, column: 2, scope: !5533)
!5546 = distinct !DISubprogram(name: "report_bt_state", scope: !3, file: !3, line: 548, type: !5547, scopeLine: 549, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5547 = !DISubroutineType(types: !5548)
!5548 = !{!142, !4056, !142}
!5549 = !DILocalVariable(name: "dev", arg: 1, scope: !5546, file: !3, line: 548, type: !4056)
!5550 = !DILocation(line: 548, column: 44, scope: !5546)
!5551 = !DILocalVariable(name: "size", arg: 2, scope: !5546, file: !3, line: 548, type: !142)
!5552 = !DILocation(line: 548, column: 53, scope: !5546)
!5553 = !DILocation(line: 550, column: 6, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 550, column: 6)
!5555 = !DILocation(line: 550, column: 11, scope: !5554)
!5556 = !DILocation(line: 550, column: 6, scope: !5546)
!5557 = !DILocation(line: 551, column: 3, scope: !5554)
!5558 = !DILocation(line: 553, column: 2, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5560, file: !3, line: 553, column: 2)
!5560 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 553, column: 2)
!5561 = !DILocation(line: 553, column: 2, scope: !5560)
!5562 = !DILocation(line: 558, column: 19, scope: !5546)
!5563 = !DILocation(line: 558, column: 24, scope: !5546)
!5564 = !DILocation(line: 558, column: 41, scope: !5546)
!5565 = !DILocation(line: 558, column: 46, scope: !5546)
!5566 = !DILocation(line: 558, column: 55, scope: !5546)
!5567 = !DILocation(line: 558, column: 2, scope: !5546)
!5568 = !DILocation(line: 559, column: 13, scope: !5546)
!5569 = !DILocation(line: 559, column: 18, scope: !5546)
!5570 = !DILocation(line: 559, column: 2, scope: !5546)
!5571 = !DILocation(line: 561, column: 2, scope: !5546)
!5572 = !DILocation(line: 562, column: 1, scope: !5546)
!5573 = distinct !DISubprogram(name: "input_report_key", scope: !4066, file: !4066, line: 415, type: !5574, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5574 = !DISubroutineType(types: !5575)
!5575 = !{null, !4064, !7, !142}
!5576 = !DILocalVariable(name: "dev", arg: 1, scope: !5573, file: !4066, line: 415, type: !4064)
!5577 = !DILocation(line: 415, column: 55, scope: !5573)
!5578 = !DILocalVariable(name: "code", arg: 2, scope: !5573, file: !4066, line: 415, type: !7)
!5579 = !DILocation(line: 415, column: 73, scope: !5573)
!5580 = !DILocalVariable(name: "value", arg: 3, scope: !5573, file: !4066, line: 415, type: !142)
!5581 = !DILocation(line: 415, column: 83, scope: !5573)
!5582 = !DILocation(line: 417, column: 14, scope: !5573)
!5583 = !DILocation(line: 417, column: 27, scope: !5573)
!5584 = !DILocation(line: 417, column: 35, scope: !5573)
!5585 = !DILocation(line: 417, column: 34, scope: !5573)
!5586 = !DILocation(line: 417, column: 33, scope: !5573)
!5587 = !DILocation(line: 417, column: 2, scope: !5573)
!5588 = !DILocation(line: 418, column: 1, scope: !5573)
!5589 = distinct !DISubprogram(name: "input_sync", scope: !4066, file: !4066, line: 440, type: !4254, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5590 = !DILocalVariable(name: "dev", arg: 1, scope: !5589, file: !4066, line: 440, type: !4064)
!5591 = !DILocation(line: 440, column: 49, scope: !5589)
!5592 = !DILocation(line: 442, column: 14, scope: !5589)
!5593 = !DILocation(line: 442, column: 2, scope: !5589)
!5594 = !DILocation(line: 443, column: 1, scope: !5589)
!5595 = distinct !DISubprogram(name: "report_tp_state", scope: !3, file: !3, line: 605, type: !5547, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5596 = !DILocalVariable(name: "dev", arg: 1, scope: !5595, file: !3, line: 605, type: !4056)
!5597 = !DILocation(line: 605, column: 44, scope: !5595)
!5598 = !DILocalVariable(name: "size", arg: 2, scope: !5595, file: !3, line: 605, type: !142)
!5599 = !DILocation(line: 605, column: 53, scope: !5595)
!5600 = !DILocalVariable(name: "c", scope: !5595, file: !3, line: 607, type: !4053)
!5601 = !DILocation(line: 607, column: 31, scope: !5595)
!5602 = !DILocation(line: 607, column: 36, scope: !5595)
!5603 = !DILocation(line: 607, column: 41, scope: !5595)
!5604 = !DILocalVariable(name: "f", scope: !5595, file: !3, line: 608, type: !3817)
!5605 = !DILocation(line: 608, column: 26, scope: !5595)
!5606 = !DILocalVariable(name: "input", scope: !5595, file: !3, line: 609, type: !4064)
!5607 = !DILocation(line: 609, column: 20, scope: !5595)
!5608 = !DILocation(line: 609, column: 28, scope: !5595)
!5609 = !DILocation(line: 609, column: 33, scope: !5595)
!5610 = !DILocalVariable(name: "raw_n", scope: !5595, file: !3, line: 610, type: !142)
!5611 = !DILocation(line: 610, column: 6, scope: !5595)
!5612 = !DILocalVariable(name: "i", scope: !5595, file: !3, line: 610, type: !142)
!5613 = !DILocation(line: 610, column: 13, scope: !5595)
!5614 = !DILocalVariable(name: "n", scope: !5595, file: !3, line: 610, type: !142)
!5615 = !DILocation(line: 610, column: 16, scope: !5595)
!5616 = !DILocation(line: 612, column: 6, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 612, column: 6)
!5618 = !DILocation(line: 612, column: 13, scope: !5617)
!5619 = !DILocation(line: 612, column: 16, scope: !5617)
!5620 = !DILocation(line: 612, column: 11, scope: !5617)
!5621 = !DILocation(line: 612, column: 26, scope: !5617)
!5622 = !DILocation(line: 612, column: 30, scope: !5617)
!5623 = !DILocation(line: 612, column: 37, scope: !5617)
!5624 = !DILocation(line: 612, column: 40, scope: !5617)
!5625 = !DILocation(line: 612, column: 35, scope: !5617)
!5626 = !DILocation(line: 612, column: 53, scope: !5617)
!5627 = !DILocation(line: 612, column: 56, scope: !5617)
!5628 = !DILocation(line: 612, column: 51, scope: !5617)
!5629 = !DILocation(line: 612, column: 65, scope: !5617)
!5630 = !DILocation(line: 612, column: 6, scope: !5595)
!5631 = !DILocation(line: 613, column: 3, scope: !5617)
!5632 = !DILocation(line: 615, column: 11, scope: !5595)
!5633 = !DILocation(line: 615, column: 18, scope: !5595)
!5634 = !DILocation(line: 615, column: 21, scope: !5595)
!5635 = !DILocation(line: 615, column: 16, scope: !5595)
!5636 = !DILocation(line: 615, column: 34, scope: !5595)
!5637 = !DILocation(line: 615, column: 37, scope: !5595)
!5638 = !DILocation(line: 615, column: 32, scope: !5595)
!5639 = !DILocation(line: 615, column: 8, scope: !5595)
!5640 = !DILocation(line: 617, column: 9, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 617, column: 2)
!5642 = !DILocation(line: 617, column: 7, scope: !5641)
!5643 = !DILocation(line: 617, column: 14, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5641, file: !3, line: 617, column: 2)
!5645 = !DILocation(line: 617, column: 18, scope: !5644)
!5646 = !DILocation(line: 617, column: 16, scope: !5644)
!5647 = !DILocation(line: 617, column: 2, scope: !5641)
!5648 = !DILocation(line: 618, column: 21, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5644, file: !3, line: 617, column: 30)
!5650 = !DILocation(line: 618, column: 26, scope: !5649)
!5651 = !DILocation(line: 618, column: 7, scope: !5649)
!5652 = !DILocation(line: 618, column: 5, scope: !5649)
!5653 = !DILocation(line: 619, column: 15, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5649, file: !3, line: 619, column: 7)
!5655 = !DILocation(line: 619, column: 18, scope: !5654)
!5656 = !DILocation(line: 619, column: 7, scope: !5654)
!5657 = !DILocation(line: 619, column: 31, scope: !5654)
!5658 = !DILocation(line: 619, column: 7, scope: !5649)
!5659 = !DILocation(line: 620, column: 4, scope: !5654)
!5660 = !DILocation(line: 621, column: 27, scope: !5649)
!5661 = !DILocation(line: 621, column: 30, scope: !5649)
!5662 = !DILocation(line: 621, column: 19, scope: !5649)
!5663 = !DILocation(line: 621, column: 3, scope: !5649)
!5664 = !DILocation(line: 621, column: 8, scope: !5649)
!5665 = !DILocation(line: 621, column: 12, scope: !5649)
!5666 = !DILocation(line: 621, column: 15, scope: !5649)
!5667 = !DILocation(line: 621, column: 17, scope: !5649)
!5668 = !DILocation(line: 622, column: 19, scope: !5649)
!5669 = !DILocation(line: 622, column: 22, scope: !5649)
!5670 = !DILocation(line: 622, column: 24, scope: !5649)
!5671 = !DILocation(line: 622, column: 30, scope: !5649)
!5672 = !DILocation(line: 622, column: 33, scope: !5649)
!5673 = !DILocation(line: 622, column: 35, scope: !5649)
!5674 = !DILocation(line: 622, column: 28, scope: !5649)
!5675 = !DILocation(line: 622, column: 49, scope: !5649)
!5676 = !DILocation(line: 622, column: 52, scope: !5649)
!5677 = !DILocation(line: 622, column: 41, scope: !5649)
!5678 = !DILocation(line: 622, column: 39, scope: !5649)
!5679 = !DILocation(line: 622, column: 3, scope: !5649)
!5680 = !DILocation(line: 622, column: 8, scope: !5649)
!5681 = !DILocation(line: 622, column: 12, scope: !5649)
!5682 = !DILocation(line: 622, column: 15, scope: !5649)
!5683 = !DILocation(line: 622, column: 17, scope: !5649)
!5684 = !DILocation(line: 623, column: 21, scope: !5649)
!5685 = !DILocation(line: 623, column: 3, scope: !5649)
!5686 = !DILocation(line: 623, column: 8, scope: !5649)
!5687 = !DILocation(line: 623, column: 15, scope: !5649)
!5688 = !DILocation(line: 623, column: 19, scope: !5649)
!5689 = !DILocation(line: 624, column: 2, scope: !5649)
!5690 = !DILocation(line: 617, column: 26, scope: !5644)
!5691 = !DILocation(line: 617, column: 2, scope: !5644)
!5692 = distinct !{!5692, !5647, !5693}
!5693 = !DILocation(line: 624, column: 2, scope: !5641)
!5694 = !DILocation(line: 626, column: 24, scope: !5595)
!5695 = !DILocation(line: 626, column: 31, scope: !5595)
!5696 = !DILocation(line: 626, column: 36, scope: !5595)
!5697 = !DILocation(line: 626, column: 43, scope: !5595)
!5698 = !DILocation(line: 626, column: 48, scope: !5595)
!5699 = !DILocation(line: 626, column: 53, scope: !5595)
!5700 = !DILocation(line: 626, column: 2, scope: !5595)
!5701 = !DILocation(line: 628, column: 9, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 628, column: 2)
!5703 = !DILocation(line: 628, column: 7, scope: !5702)
!5704 = !DILocation(line: 628, column: 14, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5702, file: !3, line: 628, column: 2)
!5706 = !DILocation(line: 628, column: 18, scope: !5705)
!5707 = !DILocation(line: 628, column: 16, scope: !5705)
!5708 = !DILocation(line: 628, column: 2, scope: !5702)
!5709 = !DILocation(line: 629, column: 22, scope: !5705)
!5710 = !DILocation(line: 629, column: 29, scope: !5705)
!5711 = !DILocation(line: 629, column: 34, scope: !5705)
!5712 = !DILocation(line: 629, column: 40, scope: !5705)
!5713 = !DILocation(line: 630, column: 9, scope: !5705)
!5714 = !DILocation(line: 630, column: 14, scope: !5705)
!5715 = !DILocation(line: 630, column: 18, scope: !5705)
!5716 = !DILocation(line: 630, column: 22, scope: !5705)
!5717 = !DILocation(line: 630, column: 27, scope: !5705)
!5718 = !DILocation(line: 630, column: 33, scope: !5705)
!5719 = !DILocation(line: 629, column: 3, scope: !5705)
!5720 = !DILocation(line: 628, column: 22, scope: !5705)
!5721 = !DILocation(line: 628, column: 2, scope: !5705)
!5722 = distinct !{!5722, !5708, !5723}
!5723 = !DILocation(line: 630, column: 35, scope: !5702)
!5724 = !DILocation(line: 632, column: 22, scope: !5595)
!5725 = !DILocation(line: 632, column: 2, scope: !5595)
!5726 = !DILocation(line: 634, column: 24, scope: !5595)
!5727 = !DILocation(line: 634, column: 31, scope: !5595)
!5728 = !DILocation(line: 634, column: 48, scope: !5595)
!5729 = !DILocation(line: 634, column: 34, scope: !5595)
!5730 = !DILocation(line: 634, column: 57, scope: !5595)
!5731 = !DILocation(line: 634, column: 2, scope: !5595)
!5732 = !DILocation(line: 637, column: 6, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 637, column: 6)
!5734 = !DILocation(line: 637, column: 9, scope: !5733)
!5735 = !DILocation(line: 637, column: 14, scope: !5733)
!5736 = !DILocation(line: 637, column: 6, scope: !5595)
!5737 = !DILocalVariable(name: "ibt", scope: !5738, file: !3, line: 638, type: !142)
!5738 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 637, column: 39)
!5739 = !DILocation(line: 638, column: 7, scope: !5738)
!5740 = !DILocation(line: 638, column: 21, scope: !5738)
!5741 = !DILocation(line: 638, column: 26, scope: !5738)
!5742 = !DILocation(line: 638, column: 34, scope: !5738)
!5743 = !DILocation(line: 638, column: 37, scope: !5738)
!5744 = !DILocation(line: 638, column: 13, scope: !5738)
!5745 = !DILocation(line: 639, column: 20, scope: !5738)
!5746 = !DILocation(line: 639, column: 37, scope: !5738)
!5747 = !DILocation(line: 639, column: 3, scope: !5738)
!5748 = !DILocation(line: 640, column: 2, scope: !5738)
!5749 = !DILocation(line: 642, column: 13, scope: !5595)
!5750 = !DILocation(line: 642, column: 2, scope: !5595)
!5751 = !DILocation(line: 644, column: 2, scope: !5595)
!5752 = !DILocation(line: 645, column: 1, scope: !5595)
!5753 = distinct !DISubprogram(name: "get_tp_finger", scope: !3, file: !3, line: 292, type: !5754, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5754 = !DISubroutineType(types: !5755)
!5755 = !{!3817, !5756, !142}
!5756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5757, size: 64)
!5757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4057)
!5758 = !DILocalVariable(name: "dev", arg: 1, scope: !5753, file: !3, line: 292, type: !5756)
!5759 = !DILocation(line: 292, column: 68, scope: !5753)
!5760 = !DILocalVariable(name: "i", arg: 2, scope: !5753, file: !3, line: 292, type: !142)
!5761 = !DILocation(line: 292, column: 77, scope: !5753)
!5762 = !DILocalVariable(name: "c", scope: !5753, file: !3, line: 294, type: !4053)
!5763 = !DILocation(line: 294, column: 31, scope: !5753)
!5764 = !DILocation(line: 294, column: 36, scope: !5753)
!5765 = !DILocation(line: 294, column: 41, scope: !5753)
!5766 = !DILocalVariable(name: "f_base", scope: !5753, file: !3, line: 295, type: !4422)
!5767 = !DILocation(line: 295, column: 6, scope: !5753)
!5768 = !DILocation(line: 295, column: 15, scope: !5753)
!5769 = !DILocation(line: 295, column: 20, scope: !5753)
!5770 = !DILocation(line: 295, column: 30, scope: !5753)
!5771 = !DILocation(line: 295, column: 33, scope: !5753)
!5772 = !DILocation(line: 295, column: 28, scope: !5753)
!5773 = !DILocation(line: 295, column: 45, scope: !5753)
!5774 = !DILocation(line: 295, column: 48, scope: !5753)
!5775 = !DILocation(line: 295, column: 43, scope: !5753)
!5776 = !DILocation(line: 297, column: 36, scope: !5753)
!5777 = !DILocation(line: 297, column: 45, scope: !5753)
!5778 = !DILocation(line: 297, column: 49, scope: !5753)
!5779 = !DILocation(line: 297, column: 52, scope: !5753)
!5780 = !DILocation(line: 297, column: 47, scope: !5753)
!5781 = !DILocation(line: 297, column: 43, scope: !5753)
!5782 = !DILocation(line: 297, column: 9, scope: !5753)
!5783 = !DILocation(line: 297, column: 2, scope: !5753)
!5784 = distinct !DISubprogram(name: "raw2int", scope: !3, file: !3, line: 503, type: !5785, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5785 = !DISubroutineType(types: !5786)
!5786 = !{!142, !3569}
!5787 = !DILocalVariable(name: "x", arg: 1, scope: !5784, file: !3, line: 503, type: !3569)
!5788 = !DILocation(line: 503, column: 34, scope: !5784)
!5789 = !DILocation(line: 505, column: 23, scope: !5784)
!5790 = !DILocation(line: 505, column: 9, scope: !5784)
!5791 = !DILocation(line: 505, column: 2, scope: !5784)
!5792 = distinct !DISubprogram(name: "report_finger_data", scope: !3, file: !3, line: 564, type: !5793, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5793 = !DISubroutineType(types: !5794)
!5794 = !{null, !4064, !142, !5795, !3817}
!5795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5796, size: 64)
!5796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4427)
!5797 = !DILocalVariable(name: "input", arg: 1, scope: !5792, file: !3, line: 564, type: !4064)
!5798 = !DILocation(line: 564, column: 50, scope: !5792)
!5799 = !DILocalVariable(name: "slot", arg: 2, scope: !5792, file: !3, line: 564, type: !142)
!5800 = !DILocation(line: 564, column: 61, scope: !5792)
!5801 = !DILocalVariable(name: "pos", arg: 3, scope: !5792, file: !3, line: 565, type: !5795)
!5802 = !DILocation(line: 565, column: 38, scope: !5792)
!5803 = !DILocalVariable(name: "f", arg: 4, scope: !5792, file: !3, line: 566, type: !3817)
!5804 = !DILocation(line: 566, column: 35, scope: !5792)
!5805 = !DILocation(line: 568, column: 16, scope: !5792)
!5806 = !DILocation(line: 568, column: 23, scope: !5792)
!5807 = !DILocation(line: 568, column: 2, scope: !5792)
!5808 = !DILocation(line: 569, column: 29, scope: !5792)
!5809 = !DILocation(line: 569, column: 2, scope: !5792)
!5810 = !DILocation(line: 571, column: 19, scope: !5792)
!5811 = !DILocation(line: 572, column: 13, scope: !5792)
!5812 = !DILocation(line: 572, column: 16, scope: !5792)
!5813 = !DILocation(line: 572, column: 5, scope: !5792)
!5814 = !DILocation(line: 572, column: 29, scope: !5792)
!5815 = !DILocation(line: 571, column: 2, scope: !5792)
!5816 = !DILocation(line: 573, column: 19, scope: !5792)
!5817 = !DILocation(line: 574, column: 13, scope: !5792)
!5818 = !DILocation(line: 574, column: 16, scope: !5792)
!5819 = !DILocation(line: 574, column: 5, scope: !5792)
!5820 = !DILocation(line: 574, column: 29, scope: !5792)
!5821 = !DILocation(line: 573, column: 2, scope: !5792)
!5822 = !DILocation(line: 575, column: 19, scope: !5792)
!5823 = !DILocation(line: 576, column: 13, scope: !5792)
!5824 = !DILocation(line: 576, column: 16, scope: !5792)
!5825 = !DILocation(line: 576, column: 5, scope: !5792)
!5826 = !DILocation(line: 576, column: 28, scope: !5792)
!5827 = !DILocation(line: 575, column: 2, scope: !5792)
!5828 = !DILocation(line: 577, column: 19, scope: !5792)
!5829 = !DILocation(line: 578, column: 13, scope: !5792)
!5830 = !DILocation(line: 578, column: 16, scope: !5792)
!5831 = !DILocation(line: 578, column: 5, scope: !5792)
!5832 = !DILocation(line: 578, column: 28, scope: !5792)
!5833 = !DILocation(line: 577, column: 2, scope: !5792)
!5834 = !DILocation(line: 579, column: 19, scope: !5792)
!5835 = !DILocation(line: 580, column: 38, scope: !5792)
!5836 = !DILocation(line: 580, column: 41, scope: !5792)
!5837 = !DILocation(line: 580, column: 30, scope: !5792)
!5838 = !DILocation(line: 580, column: 28, scope: !5792)
!5839 = !DILocation(line: 579, column: 2, scope: !5792)
!5840 = !DILocation(line: 581, column: 19, scope: !5792)
!5841 = !DILocation(line: 581, column: 45, scope: !5792)
!5842 = !DILocation(line: 581, column: 50, scope: !5792)
!5843 = !DILocation(line: 581, column: 2, scope: !5792)
!5844 = !DILocation(line: 582, column: 19, scope: !5792)
!5845 = !DILocation(line: 582, column: 45, scope: !5792)
!5846 = !DILocation(line: 582, column: 50, scope: !5792)
!5847 = !DILocation(line: 582, column: 2, scope: !5792)
!5848 = !DILocation(line: 583, column: 1, scope: !5792)
!5849 = distinct !DISubprogram(name: "report_synaptics_data", scope: !3, file: !3, line: 585, type: !5850, scopeLine: 588, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5850 = !DISubroutineType(types: !5851)
!5851 = !{null, !4064, !4053, !3817, !142}
!5852 = !DILocalVariable(name: "input", arg: 1, scope: !5849, file: !3, line: 585, type: !4064)
!5853 = !DILocation(line: 585, column: 53, scope: !5849)
!5854 = !DILocalVariable(name: "cfg", arg: 2, scope: !5849, file: !3, line: 586, type: !4053)
!5855 = !DILocation(line: 586, column: 36, scope: !5849)
!5856 = !DILocalVariable(name: "f", arg: 3, scope: !5849, file: !3, line: 587, type: !3817)
!5857 = !DILocation(line: 587, column: 31, scope: !5849)
!5858 = !DILocalVariable(name: "raw_n", arg: 4, scope: !5849, file: !3, line: 587, type: !142)
!5859 = !DILocation(line: 587, column: 38, scope: !5849)
!5860 = !DILocalVariable(name: "abs_p", scope: !5849, file: !3, line: 589, type: !142)
!5861 = !DILocation(line: 589, column: 6, scope: !5849)
!5862 = !DILocalVariable(name: "abs_w", scope: !5849, file: !3, line: 589, type: !142)
!5863 = !DILocation(line: 589, column: 17, scope: !5849)
!5864 = !DILocation(line: 591, column: 6, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 591, column: 6)
!5866 = !DILocation(line: 591, column: 6, scope: !5849)
!5867 = !DILocalVariable(name: "p", scope: !5868, file: !3, line: 592, type: !142)
!5868 = distinct !DILexicalBlock(scope: !5865, file: !3, line: 591, column: 13)
!5869 = !DILocation(line: 592, column: 7, scope: !5868)
!5870 = !DILocation(line: 592, column: 19, scope: !5868)
!5871 = !DILocation(line: 592, column: 22, scope: !5868)
!5872 = !DILocation(line: 592, column: 11, scope: !5868)
!5873 = !DILocalVariable(name: "w", scope: !5868, file: !3, line: 593, type: !142)
!5874 = !DILocation(line: 593, column: 7, scope: !5868)
!5875 = !DILocation(line: 593, column: 19, scope: !5868)
!5876 = !DILocation(line: 593, column: 22, scope: !5868)
!5877 = !DILocation(line: 593, column: 11, scope: !5868)
!5878 = !DILocation(line: 594, column: 7, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5868, file: !3, line: 594, column: 7)
!5880 = !DILocation(line: 594, column: 9, scope: !5879)
!5881 = !DILocation(line: 594, column: 13, scope: !5879)
!5882 = !DILocation(line: 594, column: 24, scope: !5879)
!5883 = !DILocation(line: 594, column: 27, scope: !5879)
!5884 = !DILocation(line: 594, column: 16, scope: !5879)
!5885 = !DILocation(line: 594, column: 7, scope: !5868)
!5886 = !DILocalVariable(name: "__UNIQUE_ID___x220", scope: !5887, file: !3, line: 595, type: !142)
!5887 = distinct !DILexicalBlock(scope: !5888, file: !3, line: 595, column: 12)
!5888 = distinct !DILexicalBlock(scope: !5879, file: !3, line: 594, column: 36)
!5889 = !DILocation(line: 595, column: 12, scope: !5887)
!5890 = !DILocalVariable(name: "__UNIQUE_ID___x218", scope: !5891, file: !3, line: 595, type: !142)
!5891 = distinct !DILexicalBlock(scope: !5887, file: !3, line: 595, column: 12)
!5892 = !DILocation(line: 595, column: 12, scope: !5891)
!5893 = !DILocalVariable(name: "__UNIQUE_ID___y219", scope: !5891, file: !3, line: 595, type: !142)
!5894 = !DILocalVariable(name: "__UNIQUE_ID___y221", scope: !5887, file: !3, line: 595, type: !142)
!5895 = !DILocation(line: 595, column: 10, scope: !5888)
!5896 = !DILocalVariable(name: "__UNIQUE_ID___x224", scope: !5897, file: !3, line: 596, type: !142)
!5897 = distinct !DILexicalBlock(scope: !5888, file: !3, line: 596, column: 12)
!5898 = !DILocation(line: 596, column: 12, scope: !5897)
!5899 = !DILocalVariable(name: "__UNIQUE_ID___x222", scope: !5900, file: !3, line: 596, type: !142)
!5900 = distinct !DILexicalBlock(scope: !5897, file: !3, line: 596, column: 12)
!5901 = !DILocation(line: 596, column: 12, scope: !5900)
!5902 = !DILocalVariable(name: "__UNIQUE_ID___y223", scope: !5900, file: !3, line: 596, type: !142)
!5903 = !DILocalVariable(name: "__UNIQUE_ID___y225", scope: !5897, file: !3, line: 596, type: !142)
!5904 = !DILocation(line: 596, column: 10, scope: !5888)
!5905 = !DILocation(line: 597, column: 3, scope: !5888)
!5906 = !DILocation(line: 598, column: 2, scope: !5868)
!5907 = !DILocation(line: 600, column: 19, scope: !5849)
!5908 = !DILocation(line: 600, column: 40, scope: !5849)
!5909 = !DILocation(line: 600, column: 2, scope: !5849)
!5910 = !DILocation(line: 601, column: 19, scope: !5849)
!5911 = !DILocation(line: 601, column: 42, scope: !5849)
!5912 = !DILocation(line: 601, column: 2, scope: !5849)
!5913 = !DILocation(line: 602, column: 1, scope: !5849)
!5914 = distinct !DISubprogram(name: "input_mt_slot", scope: !4218, file: !4218, line: 85, type: !5915, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5915 = !DISubroutineType(types: !5916)
!5916 = !{null, !4064, !142}
!5917 = !DILocalVariable(name: "dev", arg: 1, scope: !5914, file: !4218, line: 85, type: !4064)
!5918 = !DILocation(line: 85, column: 52, scope: !5914)
!5919 = !DILocalVariable(name: "slot", arg: 2, scope: !5914, file: !4218, line: 85, type: !142)
!5920 = !DILocation(line: 85, column: 61, scope: !5914)
!5921 = !DILocation(line: 87, column: 14, scope: !5914)
!5922 = !DILocation(line: 87, column: 40, scope: !5914)
!5923 = !DILocation(line: 87, column: 2, scope: !5914)
!5924 = !DILocation(line: 88, column: 1, scope: !5914)
!5925 = distinct !DISubprogram(name: "input_report_abs", scope: !4066, file: !4066, line: 425, type: !5574, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5926 = !DILocalVariable(name: "dev", arg: 1, scope: !5925, file: !4066, line: 425, type: !4064)
!5927 = !DILocation(line: 425, column: 55, scope: !5925)
!5928 = !DILocalVariable(name: "code", arg: 2, scope: !5925, file: !4066, line: 425, type: !7)
!5929 = !DILocation(line: 425, column: 73, scope: !5925)
!5930 = !DILocalVariable(name: "value", arg: 3, scope: !5925, file: !4066, line: 425, type: !142)
!5931 = !DILocation(line: 425, column: 83, scope: !5925)
!5932 = !DILocation(line: 427, column: 14, scope: !5925)
!5933 = !DILocation(line: 427, column: 27, scope: !5925)
!5934 = !DILocation(line: 427, column: 33, scope: !5925)
!5935 = !DILocation(line: 427, column: 2, scope: !5925)
!5936 = !DILocation(line: 428, column: 1, scope: !5925)
!5937 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !67, file: !67, line: 660, type: !5938, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5938 = !DISubroutineType(types: !5939)
!5939 = !{null, !171, !137}
!5940 = !DILocalVariable(name: "dev", arg: 1, scope: !5937, file: !67, line: 660, type: !171)
!5941 = !DILocation(line: 660, column: 51, scope: !5937)
!5942 = !DILocalVariable(name: "data", arg: 2, scope: !5937, file: !67, line: 660, type: !137)
!5943 = !DILocation(line: 660, column: 62, scope: !5937)
!5944 = !DILocation(line: 662, column: 21, scope: !5937)
!5945 = !DILocation(line: 662, column: 2, scope: !5937)
!5946 = !DILocation(line: 662, column: 7, scope: !5937)
!5947 = !DILocation(line: 662, column: 19, scope: !5937)
!5948 = !DILocation(line: 663, column: 1, scope: !5937)
!5949 = distinct !DISubprogram(name: "input_get_drvdata", scope: !4066, file: !4066, line: 366, type: !5950, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5950 = !DISubroutineType(types: !5951)
!5951 = !{!137, !4064}
!5952 = !DILocalVariable(name: "dev", arg: 1, scope: !5949, file: !4066, line: 366, type: !4064)
!5953 = !DILocation(line: 366, column: 57, scope: !5949)
!5954 = !DILocation(line: 368, column: 26, scope: !5949)
!5955 = !DILocation(line: 368, column: 31, scope: !5949)
!5956 = !DILocation(line: 368, column: 9, scope: !5949)
!5957 = !DILocation(line: 368, column: 2, scope: !5949)
!5958 = distinct !DISubprogram(name: "bcm5974_start_traffic", scope: !3, file: !3, line: 783, type: !5959, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!5959 = !DISubroutineType(types: !5960)
!5960 = !{!142, !4056}
!5961 = !DILocalVariable(name: "dev", arg: 1, scope: !5958, file: !3, line: 783, type: !4056)
!5962 = !DILocation(line: 783, column: 50, scope: !5958)
!5963 = !DILocalVariable(name: "error", scope: !5958, file: !3, line: 785, type: !142)
!5964 = !DILocation(line: 785, column: 6, scope: !5958)
!5965 = !DILocation(line: 787, column: 34, scope: !5958)
!5966 = !DILocation(line: 787, column: 10, scope: !5958)
!5967 = !DILocation(line: 787, column: 8, scope: !5958)
!5968 = !DILocation(line: 788, column: 6, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5958, file: !3, line: 788, column: 6)
!5970 = !DILocation(line: 788, column: 6, scope: !5958)
!5971 = !DILocation(line: 789, column: 3, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 789, column: 3)
!5973 = distinct !DILexicalBlock(scope: !5974, file: !3, line: 789, column: 3)
!5974 = distinct !DILexicalBlock(scope: !5969, file: !3, line: 788, column: 13)
!5975 = !DILocation(line: 789, column: 3, scope: !5973)
!5976 = !DILocation(line: 790, column: 3, scope: !5974)
!5977 = !DILocation(line: 793, column: 6, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5958, file: !3, line: 793, column: 6)
!5979 = !DILocation(line: 793, column: 11, scope: !5978)
!5980 = !DILocation(line: 793, column: 6, scope: !5958)
!5981 = !DILocation(line: 794, column: 26, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5978, file: !3, line: 793, column: 19)
!5983 = !DILocation(line: 794, column: 31, scope: !5982)
!5984 = !DILocation(line: 794, column: 11, scope: !5982)
!5985 = !DILocation(line: 794, column: 9, scope: !5982)
!5986 = !DILocation(line: 795, column: 7, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5982, file: !3, line: 795, column: 7)
!5988 = !DILocation(line: 795, column: 7, scope: !5982)
!5989 = !DILocation(line: 796, column: 4, scope: !5987)
!5990 = !DILocation(line: 797, column: 2, scope: !5982)
!5991 = !DILocation(line: 799, column: 25, scope: !5958)
!5992 = !DILocation(line: 799, column: 30, scope: !5958)
!5993 = !DILocation(line: 799, column: 10, scope: !5958)
!5994 = !DILocation(line: 799, column: 8, scope: !5958)
!5995 = !DILocation(line: 800, column: 6, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5958, file: !3, line: 800, column: 6)
!5997 = !DILocation(line: 800, column: 6, scope: !5958)
!5998 = !DILocation(line: 801, column: 3, scope: !5996)
!5999 = !DILocation(line: 803, column: 2, scope: !5958)
!6000 = !DILabel(scope: !5958, name: "err_kill_bt", file: !3, line: 805)
!6001 = !DILocation(line: 805, column: 1, scope: !5958)
!6002 = !DILocation(line: 806, column: 15, scope: !5958)
!6003 = !DILocation(line: 806, column: 20, scope: !5958)
!6004 = !DILocation(line: 806, column: 2, scope: !5958)
!6005 = !DILabel(scope: !5958, name: "err_reset_mode", file: !3, line: 807)
!6006 = !DILocation(line: 807, column: 1, scope: !5958)
!6007 = !DILocation(line: 808, column: 26, scope: !5958)
!6008 = !DILocation(line: 808, column: 2, scope: !5958)
!6009 = !DILabel(scope: !5958, name: "err_out", file: !3, line: 809)
!6010 = !DILocation(line: 809, column: 1, scope: !5958)
!6011 = !DILocation(line: 810, column: 9, scope: !5958)
!6012 = !DILocation(line: 810, column: 2, scope: !5958)
!6013 = !DILocation(line: 811, column: 1, scope: !5958)
!6014 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !67, file: !67, line: 655, type: !6015, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6015 = !DISubroutineType(types: !6016)
!6016 = !{!137, !6017}
!6017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6018, size: 64)
!6018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!6019 = !DILocalVariable(name: "dev", arg: 1, scope: !6014, file: !67, line: 655, type: !6017)
!6020 = !DILocation(line: 655, column: 58, scope: !6014)
!6021 = !DILocation(line: 657, column: 9, scope: !6014)
!6022 = !DILocation(line: 657, column: 14, scope: !6014)
!6023 = !DILocation(line: 657, column: 2, scope: !6014)
!6024 = distinct !DISubprogram(name: "bcm5974_wellspring_mode", scope: !3, file: !3, line: 647, type: !6025, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6025 = !DISubroutineType(types: !6026)
!6026 = !{!142, !4056, !448}
!6027 = !DILocation(line: 445, column: 72, scope: !4820, inlinedAt: !6028)
!6028 = distinct !DILocation(line: 552, column: 10, scope: !4825, inlinedAt: !6029)
!6029 = distinct !DILocation(line: 657, column: 9, scope: !6024)
!6030 = !DILocation(line: 446, column: 9, scope: !4820, inlinedAt: !6028)
!6031 = !DILocation(line: 446, column: 23, scope: !4820, inlinedAt: !6028)
!6032 = !DILocation(line: 448, column: 8, scope: !4820, inlinedAt: !6028)
!6033 = !DILocation(line: 318, column: 67, scope: !4836, inlinedAt: !6034)
!6034 = distinct !DILocation(line: 553, column: 20, scope: !4825, inlinedAt: !6029)
!6035 = !DILocation(line: 346, column: 58, scope: !4842, inlinedAt: !6036)
!6036 = distinct !DILocation(line: 547, column: 11, scope: !4825, inlinedAt: !6029)
!6037 = !DILocation(line: 472, column: 28, scope: !4848, inlinedAt: !6038)
!6038 = distinct !DILocation(line: 481, column: 9, scope: !4853, inlinedAt: !6039)
!6039 = distinct !DILocation(line: 545, column: 11, scope: !4855, inlinedAt: !6029)
!6040 = !DILocation(line: 472, column: 40, scope: !4848, inlinedAt: !6038)
!6041 = !DILocation(line: 472, column: 60, scope: !4848, inlinedAt: !6038)
!6042 = !DILocation(line: 478, column: 51, scope: !4853, inlinedAt: !6039)
!6043 = !DILocation(line: 478, column: 63, scope: !4853, inlinedAt: !6039)
!6044 = !DILocation(line: 480, column: 15, scope: !4853, inlinedAt: !6039)
!6045 = !DILocation(line: 538, column: 45, scope: !4827, inlinedAt: !6029)
!6046 = !DILocation(line: 538, column: 57, scope: !4827, inlinedAt: !6029)
!6047 = !DILocation(line: 542, column: 16, scope: !4825, inlinedAt: !6029)
!6048 = !DILocalVariable(name: "dev", arg: 1, scope: !6024, file: !3, line: 647, type: !4056)
!6049 = !DILocation(line: 647, column: 52, scope: !6024)
!6050 = !DILocalVariable(name: "on", arg: 2, scope: !6024, file: !3, line: 647, type: !448)
!6051 = !DILocation(line: 647, column: 62, scope: !6024)
!6052 = !DILocalVariable(name: "c", scope: !6024, file: !3, line: 649, type: !4053)
!6053 = !DILocation(line: 649, column: 31, scope: !6024)
!6054 = !DILocation(line: 649, column: 36, scope: !6024)
!6055 = !DILocation(line: 649, column: 41, scope: !6024)
!6056 = !DILocalVariable(name: "retval", scope: !6024, file: !3, line: 650, type: !142)
!6057 = !DILocation(line: 650, column: 6, scope: !6024)
!6058 = !DILocalVariable(name: "size", scope: !6024, file: !3, line: 650, type: !142)
!6059 = !DILocation(line: 650, column: 18, scope: !6024)
!6060 = !DILocalVariable(name: "data", scope: !6024, file: !3, line: 651, type: !236)
!6061 = !DILocation(line: 651, column: 8, scope: !6024)
!6062 = !DILocation(line: 654, column: 6, scope: !6063)
!6063 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 654, column: 6)
!6064 = !DILocation(line: 654, column: 9, scope: !6063)
!6065 = !DILocation(line: 654, column: 17, scope: !6063)
!6066 = !DILocation(line: 654, column: 6, scope: !6024)
!6067 = !DILocation(line: 655, column: 3, scope: !6063)
!6068 = !DILocation(line: 657, column: 17, scope: !6024)
!6069 = !DILocation(line: 657, column: 20, scope: !6024)
!6070 = !DILocation(line: 540, column: 27, scope: !4826, inlinedAt: !6029)
!6071 = !DILocation(line: 540, column: 6, scope: !4826, inlinedAt: !6029)
!6072 = !DILocation(line: 540, column: 6, scope: !4827, inlinedAt: !6029)
!6073 = !DILocation(line: 544, column: 7, scope: !4855, inlinedAt: !6029)
!6074 = !DILocation(line: 544, column: 12, scope: !4855, inlinedAt: !6029)
!6075 = !DILocation(line: 544, column: 7, scope: !4825, inlinedAt: !6029)
!6076 = !DILocation(line: 545, column: 25, scope: !4855, inlinedAt: !6029)
!6077 = !DILocation(line: 545, column: 31, scope: !4855, inlinedAt: !6029)
!6078 = !DILocation(line: 480, column: 33, scope: !4853, inlinedAt: !6039)
!6079 = !DILocation(line: 480, column: 23, scope: !4853, inlinedAt: !6039)
!6080 = !DILocation(line: 481, column: 29, scope: !4853, inlinedAt: !6039)
!6081 = !DILocation(line: 481, column: 35, scope: !4853, inlinedAt: !6039)
!6082 = !DILocation(line: 481, column: 42, scope: !4853, inlinedAt: !6039)
!6083 = !DILocation(line: 474, column: 23, scope: !4848, inlinedAt: !6038)
!6084 = !DILocation(line: 474, column: 29, scope: !4848, inlinedAt: !6038)
!6085 = !DILocation(line: 474, column: 36, scope: !4848, inlinedAt: !6038)
!6086 = !DILocation(line: 474, column: 9, scope: !4848, inlinedAt: !6038)
!6087 = !DILocation(line: 545, column: 4, scope: !4855, inlinedAt: !6029)
!6088 = !DILocation(line: 547, column: 25, scope: !4825, inlinedAt: !6029)
!6089 = !DILocation(line: 348, column: 7, scope: !4899, inlinedAt: !6036)
!6090 = !DILocation(line: 348, column: 6, scope: !4842, inlinedAt: !6036)
!6091 = !DILocation(line: 349, column: 3, scope: !4899, inlinedAt: !6036)
!6092 = !DILocation(line: 351, column: 6, scope: !4903, inlinedAt: !6036)
!6093 = !DILocation(line: 351, column: 11, scope: !4903, inlinedAt: !6036)
!6094 = !DILocation(line: 351, column: 6, scope: !4842, inlinedAt: !6036)
!6095 = !DILocation(line: 352, column: 3, scope: !4903, inlinedAt: !6036)
!6096 = !DILocation(line: 354, column: 32, scope: !4908, inlinedAt: !6036)
!6097 = !DILocation(line: 354, column: 37, scope: !4908, inlinedAt: !6036)
!6098 = !DILocation(line: 354, column: 42, scope: !4908, inlinedAt: !6036)
!6099 = !DILocation(line: 354, column: 45, scope: !4908, inlinedAt: !6036)
!6100 = !DILocation(line: 354, column: 50, scope: !4908, inlinedAt: !6036)
!6101 = !DILocation(line: 354, column: 6, scope: !4842, inlinedAt: !6036)
!6102 = !DILocation(line: 355, column: 3, scope: !4908, inlinedAt: !6036)
!6103 = !DILocation(line: 356, column: 32, scope: !4916, inlinedAt: !6036)
!6104 = !DILocation(line: 356, column: 37, scope: !4916, inlinedAt: !6036)
!6105 = !DILocation(line: 356, column: 43, scope: !4916, inlinedAt: !6036)
!6106 = !DILocation(line: 356, column: 46, scope: !4916, inlinedAt: !6036)
!6107 = !DILocation(line: 356, column: 51, scope: !4916, inlinedAt: !6036)
!6108 = !DILocation(line: 356, column: 6, scope: !4842, inlinedAt: !6036)
!6109 = !DILocation(line: 357, column: 3, scope: !4916, inlinedAt: !6036)
!6110 = !DILocation(line: 358, column: 6, scope: !4924, inlinedAt: !6036)
!6111 = !DILocation(line: 358, column: 11, scope: !4924, inlinedAt: !6036)
!6112 = !DILocation(line: 358, column: 6, scope: !4842, inlinedAt: !6036)
!6113 = !DILocation(line: 358, column: 26, scope: !4924, inlinedAt: !6036)
!6114 = !DILocation(line: 359, column: 6, scope: !4929, inlinedAt: !6036)
!6115 = !DILocation(line: 359, column: 11, scope: !4929, inlinedAt: !6036)
!6116 = !DILocation(line: 359, column: 6, scope: !4842, inlinedAt: !6036)
!6117 = !DILocation(line: 359, column: 26, scope: !4929, inlinedAt: !6036)
!6118 = !DILocation(line: 360, column: 6, scope: !4934, inlinedAt: !6036)
!6119 = !DILocation(line: 360, column: 11, scope: !4934, inlinedAt: !6036)
!6120 = !DILocation(line: 360, column: 6, scope: !4842, inlinedAt: !6036)
!6121 = !DILocation(line: 360, column: 26, scope: !4934, inlinedAt: !6036)
!6122 = !DILocation(line: 361, column: 6, scope: !4939, inlinedAt: !6036)
!6123 = !DILocation(line: 361, column: 11, scope: !4939, inlinedAt: !6036)
!6124 = !DILocation(line: 361, column: 6, scope: !4842, inlinedAt: !6036)
!6125 = !DILocation(line: 361, column: 26, scope: !4939, inlinedAt: !6036)
!6126 = !DILocation(line: 362, column: 6, scope: !4944, inlinedAt: !6036)
!6127 = !DILocation(line: 362, column: 11, scope: !4944, inlinedAt: !6036)
!6128 = !DILocation(line: 362, column: 6, scope: !4842, inlinedAt: !6036)
!6129 = !DILocation(line: 362, column: 26, scope: !4944, inlinedAt: !6036)
!6130 = !DILocation(line: 363, column: 6, scope: !4949, inlinedAt: !6036)
!6131 = !DILocation(line: 363, column: 11, scope: !4949, inlinedAt: !6036)
!6132 = !DILocation(line: 363, column: 6, scope: !4842, inlinedAt: !6036)
!6133 = !DILocation(line: 363, column: 26, scope: !4949, inlinedAt: !6036)
!6134 = !DILocation(line: 364, column: 6, scope: !4954, inlinedAt: !6036)
!6135 = !DILocation(line: 364, column: 11, scope: !4954, inlinedAt: !6036)
!6136 = !DILocation(line: 364, column: 6, scope: !4842, inlinedAt: !6036)
!6137 = !DILocation(line: 364, column: 26, scope: !4954, inlinedAt: !6036)
!6138 = !DILocation(line: 365, column: 6, scope: !4959, inlinedAt: !6036)
!6139 = !DILocation(line: 365, column: 11, scope: !4959, inlinedAt: !6036)
!6140 = !DILocation(line: 365, column: 6, scope: !4842, inlinedAt: !6036)
!6141 = !DILocation(line: 365, column: 26, scope: !4959, inlinedAt: !6036)
!6142 = !DILocation(line: 366, column: 6, scope: !4964, inlinedAt: !6036)
!6143 = !DILocation(line: 366, column: 11, scope: !4964, inlinedAt: !6036)
!6144 = !DILocation(line: 366, column: 6, scope: !4842, inlinedAt: !6036)
!6145 = !DILocation(line: 366, column: 26, scope: !4964, inlinedAt: !6036)
!6146 = !DILocation(line: 367, column: 6, scope: !4969, inlinedAt: !6036)
!6147 = !DILocation(line: 367, column: 11, scope: !4969, inlinedAt: !6036)
!6148 = !DILocation(line: 367, column: 6, scope: !4842, inlinedAt: !6036)
!6149 = !DILocation(line: 367, column: 26, scope: !4969, inlinedAt: !6036)
!6150 = !DILocation(line: 368, column: 6, scope: !4974, inlinedAt: !6036)
!6151 = !DILocation(line: 368, column: 11, scope: !4974, inlinedAt: !6036)
!6152 = !DILocation(line: 368, column: 6, scope: !4842, inlinedAt: !6036)
!6153 = !DILocation(line: 368, column: 26, scope: !4974, inlinedAt: !6036)
!6154 = !DILocation(line: 369, column: 6, scope: !4979, inlinedAt: !6036)
!6155 = !DILocation(line: 369, column: 11, scope: !4979, inlinedAt: !6036)
!6156 = !DILocation(line: 369, column: 6, scope: !4842, inlinedAt: !6036)
!6157 = !DILocation(line: 369, column: 26, scope: !4979, inlinedAt: !6036)
!6158 = !DILocation(line: 370, column: 6, scope: !4984, inlinedAt: !6036)
!6159 = !DILocation(line: 370, column: 11, scope: !4984, inlinedAt: !6036)
!6160 = !DILocation(line: 370, column: 6, scope: !4842, inlinedAt: !6036)
!6161 = !DILocation(line: 370, column: 26, scope: !4984, inlinedAt: !6036)
!6162 = !DILocation(line: 371, column: 6, scope: !4989, inlinedAt: !6036)
!6163 = !DILocation(line: 371, column: 11, scope: !4989, inlinedAt: !6036)
!6164 = !DILocation(line: 371, column: 6, scope: !4842, inlinedAt: !6036)
!6165 = !DILocation(line: 371, column: 26, scope: !4989, inlinedAt: !6036)
!6166 = !DILocation(line: 372, column: 6, scope: !4994, inlinedAt: !6036)
!6167 = !DILocation(line: 372, column: 11, scope: !4994, inlinedAt: !6036)
!6168 = !DILocation(line: 372, column: 6, scope: !4842, inlinedAt: !6036)
!6169 = !DILocation(line: 372, column: 26, scope: !4994, inlinedAt: !6036)
!6170 = !DILocation(line: 373, column: 6, scope: !4999, inlinedAt: !6036)
!6171 = !DILocation(line: 373, column: 11, scope: !4999, inlinedAt: !6036)
!6172 = !DILocation(line: 373, column: 6, scope: !4842, inlinedAt: !6036)
!6173 = !DILocation(line: 373, column: 26, scope: !4999, inlinedAt: !6036)
!6174 = !DILocation(line: 374, column: 6, scope: !5004, inlinedAt: !6036)
!6175 = !DILocation(line: 374, column: 11, scope: !5004, inlinedAt: !6036)
!6176 = !DILocation(line: 374, column: 6, scope: !4842, inlinedAt: !6036)
!6177 = !DILocation(line: 374, column: 26, scope: !5004, inlinedAt: !6036)
!6178 = !DILocation(line: 375, column: 6, scope: !5009, inlinedAt: !6036)
!6179 = !DILocation(line: 375, column: 11, scope: !5009, inlinedAt: !6036)
!6180 = !DILocation(line: 375, column: 6, scope: !4842, inlinedAt: !6036)
!6181 = !DILocation(line: 375, column: 27, scope: !5009, inlinedAt: !6036)
!6182 = !DILocation(line: 376, column: 6, scope: !5014, inlinedAt: !6036)
!6183 = !DILocation(line: 376, column: 11, scope: !5014, inlinedAt: !6036)
!6184 = !DILocation(line: 376, column: 6, scope: !4842, inlinedAt: !6036)
!6185 = !DILocation(line: 376, column: 32, scope: !5014, inlinedAt: !6036)
!6186 = !DILocation(line: 377, column: 6, scope: !5019, inlinedAt: !6036)
!6187 = !DILocation(line: 377, column: 11, scope: !5019, inlinedAt: !6036)
!6188 = !DILocation(line: 377, column: 6, scope: !4842, inlinedAt: !6036)
!6189 = !DILocation(line: 377, column: 32, scope: !5019, inlinedAt: !6036)
!6190 = !DILocation(line: 378, column: 6, scope: !5024, inlinedAt: !6036)
!6191 = !DILocation(line: 378, column: 11, scope: !5024, inlinedAt: !6036)
!6192 = !DILocation(line: 378, column: 6, scope: !4842, inlinedAt: !6036)
!6193 = !DILocation(line: 378, column: 32, scope: !5024, inlinedAt: !6036)
!6194 = !DILocation(line: 379, column: 6, scope: !5029, inlinedAt: !6036)
!6195 = !DILocation(line: 379, column: 11, scope: !5029, inlinedAt: !6036)
!6196 = !DILocation(line: 379, column: 6, scope: !4842, inlinedAt: !6036)
!6197 = !DILocation(line: 379, column: 33, scope: !5029, inlinedAt: !6036)
!6198 = !DILocation(line: 380, column: 6, scope: !5034, inlinedAt: !6036)
!6199 = !DILocation(line: 380, column: 11, scope: !5034, inlinedAt: !6036)
!6200 = !DILocation(line: 380, column: 6, scope: !4842, inlinedAt: !6036)
!6201 = !DILocation(line: 380, column: 33, scope: !5034, inlinedAt: !6036)
!6202 = !DILocation(line: 381, column: 6, scope: !5039, inlinedAt: !6036)
!6203 = !DILocation(line: 381, column: 11, scope: !5039, inlinedAt: !6036)
!6204 = !DILocation(line: 381, column: 6, scope: !4842, inlinedAt: !6036)
!6205 = !DILocation(line: 381, column: 33, scope: !5039, inlinedAt: !6036)
!6206 = !DILocation(line: 382, column: 2, scope: !5044, inlinedAt: !6036)
!6207 = !DILocation(line: 382, column: 2, scope: !5048, inlinedAt: !6036)
!6208 = !DILocation(line: 382, column: 2, scope: !5049, inlinedAt: !6036)
!6209 = !DILocation(line: 386, column: 1, scope: !4842, inlinedAt: !6036)
!6210 = !DILocation(line: 547, column: 9, scope: !4825, inlinedAt: !6029)
!6211 = !DILocation(line: 549, column: 8, scope: !5055, inlinedAt: !6029)
!6212 = !DILocation(line: 549, column: 7, scope: !4825, inlinedAt: !6029)
!6213 = !DILocation(line: 550, column: 4, scope: !5055, inlinedAt: !6029)
!6214 = !DILocation(line: 553, column: 33, scope: !4825, inlinedAt: !6029)
!6215 = !DILocation(line: 325, column: 6, scope: !5060, inlinedAt: !6034)
!6216 = !DILocation(line: 325, column: 6, scope: !4836, inlinedAt: !6034)
!6217 = !DILocation(line: 326, column: 3, scope: !5060, inlinedAt: !6034)
!6218 = !DILocation(line: 332, column: 9, scope: !4836, inlinedAt: !6034)
!6219 = !DILocation(line: 332, column: 15, scope: !4836, inlinedAt: !6034)
!6220 = !DILocation(line: 332, column: 2, scope: !4836, inlinedAt: !6034)
!6221 = !DILocation(line: 336, column: 1, scope: !4836, inlinedAt: !6034)
!6222 = !DILocation(line: 553, column: 5, scope: !4825, inlinedAt: !6029)
!6223 = !DILocation(line: 553, column: 41, scope: !4825, inlinedAt: !6029)
!6224 = !DILocation(line: 554, column: 5, scope: !4825, inlinedAt: !6029)
!6225 = !DILocation(line: 554, column: 12, scope: !4825, inlinedAt: !6029)
!6226 = !DILocation(line: 448, column: 31, scope: !4820, inlinedAt: !6028)
!6227 = !DILocation(line: 448, column: 34, scope: !4820, inlinedAt: !6028)
!6228 = !DILocation(line: 448, column: 14, scope: !4820, inlinedAt: !6028)
!6229 = !DILocation(line: 450, column: 22, scope: !4820, inlinedAt: !6028)
!6230 = !DILocation(line: 450, column: 25, scope: !4820, inlinedAt: !6028)
!6231 = !DILocation(line: 450, column: 30, scope: !4820, inlinedAt: !6028)
!6232 = !DILocation(line: 450, column: 36, scope: !4820, inlinedAt: !6028)
!6233 = !DILocation(line: 450, column: 8, scope: !4820, inlinedAt: !6028)
!6234 = !DILocation(line: 450, column: 6, scope: !4820, inlinedAt: !6028)
!6235 = !DILocation(line: 451, column: 9, scope: !4820, inlinedAt: !6028)
!6236 = !DILocation(line: 552, column: 3, scope: !4825, inlinedAt: !6029)
!6237 = !DILocation(line: 557, column: 19, scope: !4827, inlinedAt: !6029)
!6238 = !DILocation(line: 557, column: 25, scope: !4827, inlinedAt: !6029)
!6239 = !DILocation(line: 557, column: 9, scope: !4827, inlinedAt: !6029)
!6240 = !DILocation(line: 557, column: 2, scope: !4827, inlinedAt: !6029)
!6241 = !DILocation(line: 558, column: 1, scope: !4827, inlinedAt: !6029)
!6242 = !DILocation(line: 657, column: 7, scope: !6024)
!6243 = !DILocation(line: 658, column: 7, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 658, column: 6)
!6245 = !DILocation(line: 658, column: 6, scope: !6024)
!6246 = !DILocation(line: 659, column: 3, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6244, file: !3, line: 658, column: 13)
!6248 = !DILocation(line: 660, column: 10, scope: !6247)
!6249 = !DILocation(line: 661, column: 3, scope: !6247)
!6250 = !DILocation(line: 665, column: 25, scope: !6024)
!6251 = !DILocation(line: 665, column: 30, scope: !6024)
!6252 = !DILocation(line: 665, column: 36, scope: !6024)
!6253 = !DILocation(line: 668, column: 4, scope: !6024)
!6254 = !DILocation(line: 668, column: 7, scope: !6024)
!6255 = !DILocation(line: 668, column: 19, scope: !6024)
!6256 = !DILocation(line: 668, column: 22, scope: !6024)
!6257 = !DILocation(line: 668, column: 34, scope: !6024)
!6258 = !DILocation(line: 668, column: 40, scope: !6024)
!6259 = !DILocation(line: 668, column: 43, scope: !6024)
!6260 = !DILocation(line: 665, column: 9, scope: !6024)
!6261 = !DILocation(line: 665, column: 7, scope: !6024)
!6262 = !DILocation(line: 670, column: 6, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 670, column: 6)
!6264 = !DILocation(line: 670, column: 14, scope: !6263)
!6265 = !DILocation(line: 670, column: 17, scope: !6263)
!6266 = !DILocation(line: 670, column: 11, scope: !6263)
!6267 = !DILocation(line: 670, column: 6, scope: !6024)
!6268 = !DILocation(line: 671, column: 3, scope: !6269)
!6269 = distinct !DILexicalBlock(scope: !6263, file: !3, line: 670, column: 26)
!6270 = !DILocation(line: 672, column: 10, scope: !6269)
!6271 = !DILocation(line: 673, column: 3, scope: !6269)
!6272 = !DILocation(line: 677, column: 27, scope: !6024)
!6273 = !DILocation(line: 677, column: 32, scope: !6024)
!6274 = !DILocation(line: 677, column: 35, scope: !6024)
!6275 = !DILocation(line: 677, column: 50, scope: !6024)
!6276 = !DILocation(line: 677, column: 53, scope: !6024)
!6277 = !DILocation(line: 677, column: 2, scope: !6024)
!6278 = !DILocation(line: 677, column: 7, scope: !6024)
!6279 = !DILocation(line: 677, column: 10, scope: !6024)
!6280 = !DILocation(line: 677, column: 25, scope: !6024)
!6281 = !DILocation(line: 680, column: 25, scope: !6024)
!6282 = !DILocation(line: 680, column: 30, scope: !6024)
!6283 = !DILocation(line: 680, column: 36, scope: !6024)
!6284 = !DILocation(line: 683, column: 4, scope: !6024)
!6285 = !DILocation(line: 683, column: 7, scope: !6024)
!6286 = !DILocation(line: 683, column: 19, scope: !6024)
!6287 = !DILocation(line: 683, column: 22, scope: !6024)
!6288 = !DILocation(line: 683, column: 34, scope: !6024)
!6289 = !DILocation(line: 683, column: 40, scope: !6024)
!6290 = !DILocation(line: 683, column: 43, scope: !6024)
!6291 = !DILocation(line: 680, column: 9, scope: !6024)
!6292 = !DILocation(line: 680, column: 7, scope: !6024)
!6293 = !DILocation(line: 685, column: 6, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 685, column: 6)
!6295 = !DILocation(line: 685, column: 14, scope: !6294)
!6296 = !DILocation(line: 685, column: 17, scope: !6294)
!6297 = !DILocation(line: 685, column: 11, scope: !6294)
!6298 = !DILocation(line: 685, column: 6, scope: !6024)
!6299 = !DILocation(line: 686, column: 3, scope: !6300)
!6300 = distinct !DILexicalBlock(scope: !6294, file: !3, line: 685, column: 26)
!6301 = !DILocation(line: 687, column: 10, scope: !6300)
!6302 = !DILocation(line: 688, column: 3, scope: !6300)
!6303 = !DILocation(line: 691, column: 2, scope: !6304)
!6304 = distinct !DILexicalBlock(scope: !6305, file: !3, line: 691, column: 2)
!6305 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 691, column: 2)
!6306 = !DILocation(line: 691, column: 2, scope: !6305)
!6307 = !DILabel(scope: !6024, name: "out", file: !3, line: 694)
!6308 = !DILocation(line: 694, column: 2, scope: !6024)
!6309 = !DILocation(line: 695, column: 8, scope: !6024)
!6310 = !DILocation(line: 695, column: 2, scope: !6024)
!6311 = !DILocation(line: 696, column: 9, scope: !6024)
!6312 = !DILocation(line: 696, column: 2, scope: !6024)
!6313 = !DILocation(line: 697, column: 1, scope: !6024)
!6314 = distinct !DISubprogram(name: "bcm5974_pause_traffic", scope: !3, file: !3, line: 813, type: !6315, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6315 = !DISubroutineType(types: !6316)
!6316 = !{null, !4056}
!6317 = !DILocalVariable(name: "dev", arg: 1, scope: !6314, file: !3, line: 813, type: !4056)
!6318 = !DILocation(line: 813, column: 51, scope: !6314)
!6319 = !DILocation(line: 815, column: 15, scope: !6314)
!6320 = !DILocation(line: 815, column: 20, scope: !6314)
!6321 = !DILocation(line: 815, column: 2, scope: !6314)
!6322 = !DILocation(line: 816, column: 15, scope: !6314)
!6323 = !DILocation(line: 816, column: 20, scope: !6314)
!6324 = !DILocation(line: 816, column: 2, scope: !6314)
!6325 = !DILocation(line: 817, column: 26, scope: !6314)
!6326 = !DILocation(line: 817, column: 2, scope: !6314)
!6327 = !DILocation(line: 818, column: 1, scope: !6314)
!6328 = distinct !DISubprogram(name: "__set_bit", scope: !6329, file: !6329, line: 25, type: !6330, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6329 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!6330 = !DISubroutineType(types: !6331)
!6331 = !{null, !271, !6332}
!6332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6333, size: 64)
!6333 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !286)
!6334 = !DILocalVariable(name: "nr", arg: 1, scope: !6335, file: !5480, line: 66, type: !271)
!6335 = distinct !DISubprogram(name: "arch___set_bit", scope: !5480, file: !5480, line: 66, type: !6330, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6336 = !DILocation(line: 66, column: 21, scope: !6335, inlinedAt: !6337)
!6337 = distinct !DILocation(line: 28, column: 2, scope: !6328)
!6338 = !DILocalVariable(name: "addr", arg: 2, scope: !6335, file: !5480, line: 66, type: !6332)
!6339 = !DILocation(line: 66, column: 49, scope: !6335, inlinedAt: !6337)
!6340 = !DILocalVariable(name: "v", arg: 1, scope: !6341, file: !6342, line: 39, type: !6345)
!6341 = distinct !DISubprogram(name: "instrument_write", scope: !6342, file: !6342, line: 39, type: !6343, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6342 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!6343 = !DISubroutineType(types: !6344)
!6344 = !{null, !6345, !283}
!6345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6346, size: 64)
!6346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6347)
!6347 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6348 = !DILocation(line: 39, column: 67, scope: !6341, inlinedAt: !6349)
!6349 = distinct !DILocation(line: 27, column: 2, scope: !6328)
!6350 = !DILocalVariable(name: "size", arg: 2, scope: !6341, file: !6342, line: 39, type: !283)
!6351 = !DILocation(line: 39, column: 77, scope: !6341, inlinedAt: !6349)
!6352 = !DILocalVariable(name: "nr", arg: 1, scope: !6328, file: !6329, line: 25, type: !271)
!6353 = !DILocation(line: 25, column: 35, scope: !6328)
!6354 = !DILocalVariable(name: "addr", arg: 2, scope: !6328, file: !6329, line: 25, type: !6332)
!6355 = !DILocation(line: 25, column: 63, scope: !6328)
!6356 = !DILocation(line: 27, column: 19, scope: !6328)
!6357 = !DILocation(line: 27, column: 26, scope: !6328)
!6358 = !DILocation(line: 27, column: 24, scope: !6328)
!6359 = !DILocation(line: 41, column: 20, scope: !6341, inlinedAt: !6349)
!6360 = !DILocation(line: 41, column: 23, scope: !6341, inlinedAt: !6349)
!6361 = !DILocation(line: 41, column: 2, scope: !6341, inlinedAt: !6349)
!6362 = !DILocation(line: 42, column: 2, scope: !6341, inlinedAt: !6349)
!6363 = !DILocation(line: 28, column: 17, scope: !6328)
!6364 = !DILocation(line: 28, column: 21, scope: !6328)
!6365 = !DILocation(line: 68, column: 44, scope: !6335, inlinedAt: !6337)
!6366 = !DILocation(line: 68, column: 56, scope: !6335, inlinedAt: !6337)
!6367 = !DILocation(line: 68, column: 2, scope: !6335, inlinedAt: !6337)
!6368 = !{i32 -2147181068}
!6369 = !DILocation(line: 29, column: 1, scope: !6328)
!6370 = distinct !DISubprogram(name: "set_abs", scope: !3, file: !3, line: 508, type: !6371, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6371 = !DISubroutineType(types: !6372)
!6372 = !{null, !4064, !7, !6373}
!6373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6374, size: 64)
!6374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4016)
!6375 = !DILocalVariable(name: "input", arg: 1, scope: !6370, file: !3, line: 508, type: !4064)
!6376 = !DILocation(line: 508, column: 39, scope: !6370)
!6377 = !DILocalVariable(name: "code", arg: 2, scope: !6370, file: !3, line: 508, type: !7)
!6378 = !DILocation(line: 508, column: 59, scope: !6370)
!6379 = !DILocalVariable(name: "p", arg: 3, scope: !6370, file: !3, line: 509, type: !6373)
!6380 = !DILocation(line: 509, column: 35, scope: !6370)
!6381 = !DILocalVariable(name: "fuzz", scope: !6370, file: !3, line: 511, type: !142)
!6382 = !DILocation(line: 511, column: 6, scope: !6370)
!6383 = !DILocation(line: 511, column: 13, scope: !6370)
!6384 = !DILocation(line: 511, column: 16, scope: !6370)
!6385 = !DILocation(line: 511, column: 27, scope: !6370)
!6386 = !DILocation(line: 511, column: 30, scope: !6370)
!6387 = !DILocation(line: 511, column: 36, scope: !6370)
!6388 = !DILocation(line: 511, column: 39, scope: !6370)
!6389 = !DILocation(line: 511, column: 34, scope: !6370)
!6390 = !DILocation(line: 511, column: 46, scope: !6370)
!6391 = !DILocation(line: 511, column: 49, scope: !6370)
!6392 = !DILocation(line: 511, column: 44, scope: !6370)
!6393 = !DILocation(line: 512, column: 23, scope: !6370)
!6394 = !DILocation(line: 512, column: 30, scope: !6370)
!6395 = !DILocation(line: 512, column: 36, scope: !6370)
!6396 = !DILocation(line: 512, column: 39, scope: !6370)
!6397 = !DILocation(line: 512, column: 44, scope: !6370)
!6398 = !DILocation(line: 512, column: 47, scope: !6370)
!6399 = !DILocation(line: 512, column: 52, scope: !6370)
!6400 = !DILocation(line: 512, column: 2, scope: !6370)
!6401 = !DILocation(line: 513, column: 1, scope: !6370)
!6402 = distinct !DISubprogram(name: "kasan_check_write", scope: !6403, file: !6403, line: 38, type: !6404, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6403 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6404 = !DISubroutineType(types: !6405)
!6405 = !{!448, !6345, !7}
!6406 = !DILocalVariable(name: "p", arg: 1, scope: !6402, file: !6403, line: 38, type: !6345)
!6407 = !DILocation(line: 38, column: 59, scope: !6402)
!6408 = !DILocalVariable(name: "size", arg: 2, scope: !6402, file: !6403, line: 38, type: !7)
!6409 = !DILocation(line: 38, column: 75, scope: !6402)
!6410 = !DILocation(line: 40, column: 2, scope: !6402)
!6411 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6412, file: !6412, line: 178, type: !6413, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6412 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6413 = !DISubroutineType(types: !6414)
!6414 = !{null, !6345, !283, !142}
!6415 = !DILocalVariable(name: "ptr", arg: 1, scope: !6411, file: !6412, line: 178, type: !6345)
!6416 = !DILocation(line: 178, column: 60, scope: !6411)
!6417 = !DILocalVariable(name: "size", arg: 2, scope: !6411, file: !6412, line: 178, type: !283)
!6418 = !DILocation(line: 178, column: 72, scope: !6411)
!6419 = !DILocalVariable(name: "type", arg: 3, scope: !6411, file: !6412, line: 179, type: !142)
!6420 = !DILocation(line: 179, column: 15, scope: !6411)
!6421 = !DILocation(line: 179, column: 23, scope: !6411)
!6422 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !6, file: !6, line: 263, type: !6423, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !209)
!6423 = !DISubroutineType(types: !6424)
!6424 = !{!137, !3709}
!6425 = !DILocalVariable(name: "intf", arg: 1, scope: !6422, file: !6, line: 263, type: !3709)
!6426 = !DILocation(line: 263, column: 60, scope: !6422)
!6427 = !DILocation(line: 265, column: 26, scope: !6422)
!6428 = !DILocation(line: 265, column: 32, scope: !6422)
!6429 = !DILocation(line: 265, column: 9, scope: !6422)
!6430 = !DILocation(line: 265, column: 2, scope: !6422)
