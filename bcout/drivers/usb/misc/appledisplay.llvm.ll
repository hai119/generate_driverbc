; ModuleID = '../bcout/drivers/usb/misc/appledisplay.llvm.bc'
source_filename = "drivers/usb/misc/appledisplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_appledisplay_driver_init6:\09\09\09"
module asm ".long\09appledisplay_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

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
%struct.pid_namespace = type { %struct.kref, %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kmem_cache = type opaque
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32 }
%struct.proc_ns_operations = type opaque
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
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type opaque
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
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
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
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i64 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.backlight_ops = type { i32, i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*, %struct.fb_info*)* }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, %struct.backlight_ops*, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.fb_info = type { %struct.atomic_t, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, %struct.fb_videomode*, %struct.backlight_device*, %struct.mutex, [128 x i8], %struct.delayed_work, %struct.fb_deferred_io*, %struct.fb_ops*, %struct.device*, %struct.device*, i32, %struct.fb_tile_ops*, %union.anon.65, i64, i8*, i32, i8*, i8*, %struct.apertures_struct*, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i64, i32, i32, i32, i32, i16, i16, i16, i32, i64, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, %struct.fb_videomode*, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct.fb_info*, i8*, i8*, i32)*, void (%struct.fb_info*, i8*, i8*, i32)* }
%struct.fb_cmap = type { i32, i32, i16*, i16*, i16*, i16* }
%struct.fb_videomode = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.fb_deferred_io = type { i64, %struct.mutex, %struct.list_head, void (%struct.fb_info*)*, void (%struct.fb_info*, %struct.list_head*)* }
%struct.fb_ops = type { %struct.module*, i32 (%struct.fb_info*, i32)*, i32 (%struct.fb_info*, i32)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (i32, i32, i32, i32, i32, %struct.fb_info*)*, i32 (%struct.fb_cmap*, %struct.fb_info*)*, i32 (i32, %struct.fb_info*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, void (%struct.fb_info*, %struct.fb_fillrect*)*, void (%struct.fb_info*, %struct.fb_copyarea*)*, void (%struct.fb_info*, %struct.fb_image*)*, i32 (%struct.fb_info*, %struct.fb_cursor*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, %struct.vm_area_struct*)*, void (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)*, void (%struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)* }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, i8*, %struct.fb_cmap }
%struct.fb_cursor = type { i16, i16, i16, i8*, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.fb_blit_caps = type { i32, i32, i32, i32 }
%struct.fb_tile_ops = type { void (%struct.fb_info*, %struct.fb_tilemap*)*, void (%struct.fb_info*, %struct.fb_tilearea*)*, void (%struct.fb_info*, %struct.fb_tilerect*)*, void (%struct.fb_info*, %struct.fb_tileblit*)*, void (%struct.fb_info*, %struct.fb_tilecursor*)*, i32 (%struct.fb_info*)* }
%struct.fb_tilemap = type { i32, i32, i32, i32, i8* }
%struct.fb_tilearea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_tilerect = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_tileblit = type { i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.fb_tilecursor = type { i32, i32, i32, i32, i32, i32 }
%union.anon.65 = type { i8* }
%struct.apertures_struct = type { i32, [0 x %struct.aperture] }
%struct.aperture = type { i64, i64 }
%struct.appledisplay = type { %struct.usb_device*, %struct.urb*, %struct.backlight_device*, i8*, i8*, %struct.delayed_work, i32, %struct.mutex }
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
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.scatterlist = type opaque
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__UNIQUE_ID___addressable_appledisplay_driver_init248 = internal global i8* bitcast (i32 ()* @appledisplay_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@appledisplay_driver = internal global %struct.usb_driver { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 (%struct.usb_interface*, %struct.usb_device_id*)* @appledisplay_probe, void (%struct.usb_interface*)* @appledisplay_disconnect, i32 (%struct.usb_interface*, i32, i8*)* null, i32 (%struct.usb_interface*, i32)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, i32 (%struct.usb_interface*)* null, %struct.usb_device_id* getelementptr inbounds ([8 x %struct.usb_device_id], [8 x %struct.usb_device_id]* @appledisplay_table, i32 0, i32 0), %struct.attribute_group** null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, align 8, !dbg !4823
@__exitcall_appledisplay_driver_exit = internal global void ()* @appledisplay_driver_exit, section ".exitcall.exit", align 8, !dbg !4798
@__UNIQUE_ID_author249 = internal constant [39 x i8] c"appledisplay.author=Michael Hanselmann\00", section ".modinfo", align 1, !dbg !4803
@__UNIQUE_ID_description250 = internal constant [53 x i8] c"appledisplay.description=Apple Cinema Display driver\00", section ".modinfo", align 1, !dbg !4808
@__UNIQUE_ID_file251 = internal constant [48 x i8] c"appledisplay.file=drivers/usb/misc/appledisplay\00", section ".modinfo", align 1, !dbg !4813
@__UNIQUE_ID_license252 = internal constant [25 x i8] c"appledisplay.license=GPL\00", section ".modinfo", align 1, !dbg !4818
@.str = private unnamed_addr constant [13 x i8] c"appledisplay\00", align 1
@appledisplay_table = internal constant [8 x %struct.usb_device_id] [%struct.usb_device_id { i16 643, i16 1452, i16 -28136, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 -28135, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 -28132, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 -28131, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 -28126, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 -28122, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id { i16 643, i16 1452, i16 -28106, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i64 0 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !4891
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not find int-in endpoint\0A\00", align 1
@appledisplay_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4884
@.str.2 = private unnamed_addr constant [18 x i8] c"&pdata->sysfslock\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Allocating URB buffer failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Submitting URB failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"appledisplay%d\00", align 1
@count_displays = internal global %struct.atomic_t zeroinitializer, align 4, !dbg !4887
@appledisplay_bl_data = internal constant %struct.backlight_ops { i32 0, i32 (%struct.backlight_device*)* @appledisplay_bl_update_status, i32 (%struct.backlight_device*)* @appledisplay_bl_get_brightness, i32 (%struct.backlight_device*, %struct.fb_info*)* null }, align 8, !dbg !4889
@.str.6 = private unnamed_addr constant [31 x i8] c"Backlight registration failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Error while getting initial brightness: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"\016appledisplay: Apple Cinema Display connected\0A\00", align 1
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"OVERFLOW with data length %d, actual length is %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"%s - usb_submit_urb failed with result %d\0A\00", align 1
@__func__.appledisplay_complete = private unnamed_addr constant [22 x i8] c"appledisplay_complete\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"\016appledisplay: Apple Cinema Display disconnected\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_appledisplay_driver_init248 to i8*), i8* bitcast (void ()* @appledisplay_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_appledisplay_driver_exit to i8*), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__UNIQUE_ID_author249, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__UNIQUE_ID_description250, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__UNIQUE_ID_file251, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_license252, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @appledisplay_driver_init() #0 section ".init.text" !dbg !4899 {
entry:
  %call = call i32 @usb_register_driver(%struct.usb_driver* @appledisplay_driver, %struct.module* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)) #9, !dbg !4902
  ret i32 %call, !dbg !4902
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @appledisplay_driver_exit() #0 section ".exit.text" !dbg !4903 {
entry:
  call void @usb_deregister(%struct.usb_driver* @appledisplay_driver) #9, !dbg !4904
  ret void, !dbg !4904
}

; Function Attrs: noredzone
declare dso_local void @usb_deregister(%struct.usb_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_register_driver(%struct.usb_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @appledisplay_probe(%struct.usb_interface* %iface, %struct.usb_device_id* %id) #2 !dbg !4886 {
entry:
  %i.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i.i, metadata !4905, metadata !DIExpression()), !dbg !4911
  %v.addr.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i, metadata !4921, metadata !DIExpression()), !dbg !4922
  %__ret.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i.i, metadata !4923, metadata !DIExpression()), !dbg !4925
  %tmp.i.i.i = alloca i32, align 4
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4926, metadata !DIExpression()), !dbg !4927
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4928, metadata !DIExpression()), !dbg !4936
  %size.addr.i.i93 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i93, metadata !4938, metadata !DIExpression()), !dbg !4939
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4940, metadata !DIExpression()), !dbg !4941
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4942, metadata !DIExpression()), !dbg !4946
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4954, metadata !DIExpression()), !dbg !4955
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4956, metadata !DIExpression()), !dbg !4957
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4958, metadata !DIExpression()), !dbg !4959
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4960, metadata !DIExpression()), !dbg !4964
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4966, metadata !DIExpression()), !dbg !4970
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4972, metadata !DIExpression()), !dbg !4976
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4981, metadata !DIExpression()), !dbg !4982
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4983, metadata !DIExpression()), !dbg !4984
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4985, metadata !DIExpression()), !dbg !4986
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4987, metadata !DIExpression()), !dbg !4988
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4989, metadata !DIExpression()), !dbg !4990
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4991, metadata !DIExpression()), !dbg !4992
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4993, metadata !DIExpression()), !dbg !4994
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4995, metadata !DIExpression()), !dbg !4996
  %retval = alloca i32, align 4
  %iface.addr = alloca %struct.usb_interface*, align 8
  %id.addr = alloca %struct.usb_device_id*, align 8
  %props = alloca %struct.backlight_properties, align 4
  %pdata = alloca %struct.appledisplay*, align 8
  %udev = alloca %struct.usb_device*, align 8
  %endpoint = alloca %struct.usb_endpoint_descriptor*, align 8
  %int_in_endpointAddr = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %brightness = alloca i32, align 4
  %bl_name = alloca [20 x i8], align 16
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store %struct.usb_interface* %iface, %struct.usb_interface** %iface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %iface.addr, metadata !4997, metadata !DIExpression()), !dbg !4998
  store %struct.usb_device_id* %id, %struct.usb_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_id** %id.addr, metadata !4999, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.declare(metadata %struct.backlight_properties* %props, metadata !5001, metadata !DIExpression()), !dbg !5002
  call void @llvm.dbg.declare(metadata %struct.appledisplay** %pdata, metadata !5003, metadata !DIExpression()), !dbg !5004
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev, metadata !5005, metadata !DIExpression()), !dbg !5006
  %0 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !5007
  %call = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %0) #9, !dbg !5008
  store %struct.usb_device* %call, %struct.usb_device** %udev, align 8, !dbg !5006
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %endpoint, metadata !5009, metadata !DIExpression()), !dbg !5011
  call void @llvm.dbg.declare(metadata i32* %int_in_endpointAddr, metadata !5012, metadata !DIExpression()), !dbg !5013
  store i32 0, i32* %int_in_endpointAddr, align 4, !dbg !5013
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5014, metadata !DIExpression()), !dbg !5015
  call void @llvm.dbg.declare(metadata i32* %brightness, metadata !5016, metadata !DIExpression()), !dbg !5017
  call void @llvm.dbg.declare(metadata [20 x i8]* %bl_name, metadata !5018, metadata !DIExpression()), !dbg !5020
  %1 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !5021
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1, i32 0, i32 1, !dbg !5022
  %2 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !5022
  %call2 = call i32 @usb_find_int_in_endpoint(%struct.usb_host_interface* %2, %struct.usb_endpoint_descriptor** %endpoint) #9, !dbg !5023
  store i32 %call2, i32* %retval1, align 4, !dbg !5024
  %3 = load i32, i32* %retval1, align 4, !dbg !5025
  %tobool = icmp ne i32 %3, 0, !dbg !5025
  br i1 %tobool, label %if.then, label %if.end, !dbg !5027

if.then:                                          ; preds = %entry
  %4 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !5028
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %4, i32 0, i32 7, !dbg !5028
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)) #10, !dbg !5028
  %5 = load i32, i32* %retval1, align 4, !dbg !5030
  store i32 %5, i32* %retval, align 4, !dbg !5031
  br label %return, !dbg !5031

if.end:                                           ; preds = %entry
  %6 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %endpoint, align 8, !dbg !5032
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %6, i32 0, i32 2, !dbg !5033
  %7 = load i8, i8* %bEndpointAddress, align 1, !dbg !5033
  %conv = zext i8 %7 to i32, !dbg !5032
  store i32 %conv, i32* %int_in_endpointAddr, align 4, !dbg !5034
  %call3 = call i8* @kzalloc(i64 160, i32 3264) #9, !dbg !5035
  %8 = bitcast i8* %call3 to %struct.appledisplay*, !dbg !5035
  store %struct.appledisplay* %8, %struct.appledisplay** %pdata, align 8, !dbg !5036
  %9 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5037
  %tobool4 = icmp ne %struct.appledisplay* %9, null, !dbg !5037
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5039

if.then5:                                         ; preds = %if.end
  store i32 -12, i32* %retval1, align 4, !dbg !5040
  br label %error, !dbg !5042

if.end6:                                          ; preds = %if.end
  %10 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5043
  %11 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5044
  %udev7 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %11, i32 0, i32 0, !dbg !5045
  store %struct.usb_device* %10, %struct.usb_device** %udev7, align 8, !dbg !5046
  br label %do.body, !dbg !5047

do.body:                                          ; preds = %if.end6
  br label %do.body8, !dbg !5048

do.body8:                                         ; preds = %do.body
  %12 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5050
  %work = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %12, i32 0, i32 5, !dbg !5050
  %work9 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %work, i32 0, i32 0, !dbg !5050
  call void @__init_work(%struct.work_struct* %work9, i32 0) #9, !dbg !5050
  %13 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5050
  %work10 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %13, i32 0, i32 5, !dbg !5050
  %work11 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %work10, i32 0, i32 0, !dbg !5050
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work11, i32 0, i32 0, !dbg !5050
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral, i32 0, i32 0, !dbg !5050
  store i64 68719476704, i64* %counter, align 8, !dbg !5050
  %14 = bitcast %struct.atomic64_t* %data to i8*, !dbg !5050
  %15 = bitcast %struct.atomic64_t* %.compoundliteral to i8*, !dbg !5050
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false), !dbg !5050
  %16 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5050
  %work12 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %16, i32 0, i32 5, !dbg !5050
  %work13 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %work12, i32 0, i32 0, !dbg !5050
  %entry14 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work13, i32 0, i32 1, !dbg !5050
  call void @INIT_LIST_HEAD(%struct.list_head* %entry14) #9, !dbg !5050
  %17 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5050
  %work15 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %17, i32 0, i32 5, !dbg !5050
  %work16 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %work15, i32 0, i32 0, !dbg !5050
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work16, i32 0, i32 2, !dbg !5050
  store void (%struct.work_struct*)* @appledisplay_work, void (%struct.work_struct*)** %func, align 8, !dbg !5050
  br label %do.end, !dbg !5050

do.end:                                           ; preds = %do.body8
  %18 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5048
  %work17 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %18, i32 0, i32 5, !dbg !5048
  %timer = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %work17, i32 0, i32 1, !dbg !5048
  call void @init_timer_key(%struct.timer_list* %timer, void (%struct.timer_list*)* @delayed_work_timer_fn, i32 2097152, i8* null, %struct.lock_class_key* null) #9, !dbg !5048
  br label %do.end18, !dbg !5048

do.end18:                                         ; preds = %do.end
  br label %do.body19, !dbg !5052

do.body19:                                        ; preds = %do.end18
  %19 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5053
  %sysfslock = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %19, i32 0, i32 7, !dbg !5053
  call void @__mutex_init(%struct.mutex* %sysfslock, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* @appledisplay_probe.__key) #9, !dbg !5053
  br label %do.end20, !dbg !5053

do.end20:                                         ; preds = %do.body19
  store i64 2, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %20 = load i64, i64* %size.addr.i, align 8, !dbg !5055
  %21 = call i1 @llvm.is.constant.i64(i64 %20) #11, !dbg !5056
  br i1 %21, label %if.then.i, label %if.end9.i, !dbg !5057

if.then.i:                                        ; preds = %do.end20
  %22 = load i64, i64* %size.addr.i, align 8, !dbg !5058
  %cmp.i = icmp ugt i64 %22, 8192, !dbg !5059
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5060

if.then1.i:                                       ; preds = %if.then.i
  %23 = load i64, i64* %size.addr.i, align 8, !dbg !5061
  %24 = load i32, i32* %flags.addr.i, align 4, !dbg !5062
  store i64 %23, i64* %size.addr.i.i, align 8
  store i32 %24, i32* %flags.addr.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i, align 8, !dbg !5063
  %call.i.i = call i32 @get_order(i64 %25) #12, !dbg !5064
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4990
  %26 = load i64, i64* %size.addr.i.i, align 8, !dbg !5065
  %27 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5066
  %28 = load i32, i32* %order.i.i, align 4, !dbg !5067
  store i64 %26, i64* %size.addr.i.i.i, align 8
  store i32 %27, i32* %flags.addr.i.i.i, align 4
  store i32 %28, i32* %order.addr.i.i.i, align 4
  %29 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5068
  %30 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5069
  %31 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5070
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %29, i32 %30, i32 %31) #13, !dbg !5071
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5071
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5071
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5071
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !5071
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5072
  br label %kmalloc.exit, !dbg !5072

if.end.i:                                         ; preds = %if.then.i
  %32 = load i64, i64* %size.addr.i, align 8, !dbg !5073
  store i64 %32, i64* %size.addr.i11.i, align 8
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5074
  %tobool.i.i = icmp ne i64 %33, 0, !dbg !5074
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5076

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5077
  br label %kmalloc_index.exit.i, !dbg !5077

if.end.i.i:                                       ; preds = %if.end.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5078
  %cmp.i.i = icmp ule i64 %34, 8, !dbg !5080
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5081

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5082
  br label %kmalloc_index.exit.i, !dbg !5082

if.end2.i.i:                                      ; preds = %if.end.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5083
  %cmp3.i.i = icmp ugt i64 %35, 64, !dbg !5085
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5086

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5087
  %cmp4.i.i = icmp ule i64 %36, 96, !dbg !5088
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5089

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5090
  br label %kmalloc_index.exit.i, !dbg !5090

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5091
  %cmp7.i.i = icmp ugt i64 %37, 128, !dbg !5093
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5094

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5095
  %cmp9.i.i = icmp ule i64 %38, 192, !dbg !5096
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5097

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5098
  br label %kmalloc_index.exit.i, !dbg !5098

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5099
  %cmp12.i.i = icmp ule i64 %39, 8, !dbg !5101
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5102

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5103
  br label %kmalloc_index.exit.i, !dbg !5103

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5104
  %cmp15.i.i = icmp ule i64 %40, 16, !dbg !5106
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5107

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5108
  br label %kmalloc_index.exit.i, !dbg !5108

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5109
  %cmp18.i.i = icmp ule i64 %41, 32, !dbg !5111
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5112

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5113
  br label %kmalloc_index.exit.i, !dbg !5113

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5114
  %cmp21.i.i = icmp ule i64 %42, 64, !dbg !5116
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5117

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5118
  br label %kmalloc_index.exit.i, !dbg !5118

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5119
  %cmp24.i.i = icmp ule i64 %43, 128, !dbg !5121
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5122

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5123
  br label %kmalloc_index.exit.i, !dbg !5123

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5124
  %cmp27.i.i = icmp ule i64 %44, 256, !dbg !5126
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5127

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5128
  br label %kmalloc_index.exit.i, !dbg !5128

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5129
  %cmp30.i.i = icmp ule i64 %45, 512, !dbg !5131
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5132

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5133
  br label %kmalloc_index.exit.i, !dbg !5133

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5134
  %cmp33.i.i = icmp ule i64 %46, 1024, !dbg !5136
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5137

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5138
  br label %kmalloc_index.exit.i, !dbg !5138

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5139
  %cmp36.i.i = icmp ule i64 %47, 2048, !dbg !5141
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5142

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5143
  br label %kmalloc_index.exit.i, !dbg !5143

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5144
  %cmp39.i.i = icmp ule i64 %48, 4096, !dbg !5146
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5147

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5148
  br label %kmalloc_index.exit.i, !dbg !5148

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5149
  %cmp42.i.i = icmp ule i64 %49, 8192, !dbg !5151
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5152

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5153
  br label %kmalloc_index.exit.i, !dbg !5153

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5154
  %cmp45.i.i = icmp ule i64 %50, 16384, !dbg !5156
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5157

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5158
  br label %kmalloc_index.exit.i, !dbg !5158

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5159
  %cmp48.i.i = icmp ule i64 %51, 32768, !dbg !5161
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5162

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5163
  br label %kmalloc_index.exit.i, !dbg !5163

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5164
  %cmp51.i.i = icmp ule i64 %52, 65536, !dbg !5166
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5167

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5168
  br label %kmalloc_index.exit.i, !dbg !5168

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5169
  %cmp54.i.i = icmp ule i64 %53, 131072, !dbg !5171
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5172

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5173
  br label %kmalloc_index.exit.i, !dbg !5173

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5174
  %cmp57.i.i = icmp ule i64 %54, 262144, !dbg !5176
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5177

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5178
  br label %kmalloc_index.exit.i, !dbg !5178

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5179
  %cmp60.i.i = icmp ule i64 %55, 524288, !dbg !5181
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5182

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5183
  br label %kmalloc_index.exit.i, !dbg !5183

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5184
  %cmp63.i.i = icmp ule i64 %56, 1048576, !dbg !5186
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5187

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5188
  br label %kmalloc_index.exit.i, !dbg !5188

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5189
  %cmp66.i.i = icmp ule i64 %57, 2097152, !dbg !5191
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5192

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5193
  br label %kmalloc_index.exit.i, !dbg !5193

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5194
  %cmp69.i.i = icmp ule i64 %58, 4194304, !dbg !5196
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5197

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5198
  br label %kmalloc_index.exit.i, !dbg !5198

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %59 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5199
  %cmp72.i.i = icmp ule i64 %59, 8388608, !dbg !5201
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5202

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5203
  br label %kmalloc_index.exit.i, !dbg !5203

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %60 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5204
  %cmp75.i.i = icmp ule i64 %60, 16777216, !dbg !5206
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5207

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5208
  br label %kmalloc_index.exit.i, !dbg !5208

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %61 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5209
  %cmp78.i.i = icmp ule i64 %61, 33554432, !dbg !5211
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5212

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5213
  br label %kmalloc_index.exit.i, !dbg !5213

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %62 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5214
  %cmp81.i.i = icmp ule i64 %62, 67108864, !dbg !5216
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5217

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5218
  br label %kmalloc_index.exit.i, !dbg !5218

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5219, !srcloc !5222
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #11, !dbg !5223, !srcloc !5226
  unreachable, !dbg !5227

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %63 = load i32, i32* %retval.i.i, align 4, !dbg !5228
  store i32 %63, i32* %index.i, align 4, !dbg !5229
  %64 = load i32, i32* %index.i, align 4, !dbg !5230
  %tobool.i = icmp ne i32 %64, 0, !dbg !5230
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5232

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5233
  br label %kmalloc.exit, !dbg !5233

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %65 = load i32, i32* %flags.addr.i, align 4, !dbg !5234
  store i32 %65, i32* %flags.addr.i13.i, align 4
  %66 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5235
  %and.i.i = and i32 %66, 17, !dbg !5235
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5235
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5235
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5235
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5235
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5237

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5238
  br label %kmalloc_type.exit.i, !dbg !5238

if.end.i16.i:                                     ; preds = %if.end4.i
  %67 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5239
  %and2.i.i = and i32 %67, 1, !dbg !5240
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5239
  %68 = zext i1 %tobool3.i.i to i64, !dbg !5239
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5239
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5241
  br label %kmalloc_type.exit.i, !dbg !5241

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %69 = load i32, i32* %retval.i12.i, align 4, !dbg !5242
  %idxprom.i = zext i32 %69 to i64, !dbg !5243
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5243
  %70 = load i32, i32* %index.i, align 4, !dbg !5244
  %idxprom6.i = zext i32 %70 to i64, !dbg !5243
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5243
  %71 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5243
  %72 = load i32, i32* %flags.addr.i, align 4, !dbg !5245
  %73 = load i64, i64* %size.addr.i, align 8, !dbg !5246
  store %struct.kmem_cache* %71, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %72, i32* %flags.addr.i17.i, align 4
  store i64 %73, i64* %size.addr.i18.i, align 8
  %74 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5247
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5248
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %74, i32 %75) #13, !dbg !5249
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5249
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5249
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5249
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5249
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4959
  %76 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5250
  %77 = load i8*, i8** %ret.i.i, align 8, !dbg !5251
  %78 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5252
  %79 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5253
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %76, i8* %77, i64 %78, i32 %79) #13, !dbg !5254
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5255
  %80 = load i8*, i8** %ret.i.i, align 8, !dbg !5256
  store i8* %80, i8** %retval.i, align 8, !dbg !5257
  br label %kmalloc.exit, !dbg !5257

if.end9.i:                                        ; preds = %do.end20
  %81 = load i64, i64* %size.addr.i, align 8, !dbg !5258
  %82 = load i32, i32* %flags.addr.i, align 4, !dbg !5259
  %call10.i = call noalias i8* @__kmalloc(i64 %81, i32 %82) #13, !dbg !5260
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5260
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5260
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5260
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5260
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5261
  br label %kmalloc.exit, !dbg !5261

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %83 = load i8*, i8** %retval.i, align 8, !dbg !5262
  %84 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5263
  %msgdata = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %84, i32 0, i32 4, !dbg !5264
  store i8* %83, i8** %msgdata, align 8, !dbg !5265
  %85 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5266
  %msgdata22 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %85, i32 0, i32 4, !dbg !5268
  %86 = load i8*, i8** %msgdata22, align 8, !dbg !5268
  %tobool23 = icmp ne i8* %86, null, !dbg !5266
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !5269

if.then24:                                        ; preds = %kmalloc.exit
  store i32 -12, i32* %retval1, align 4, !dbg !5270
  br label %error, !dbg !5272

if.end25:                                         ; preds = %kmalloc.exit
  %call26 = call %struct.urb* @usb_alloc_urb(i32 0, i32 3264) #9, !dbg !5273
  %87 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5274
  %urb = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %87, i32 0, i32 1, !dbg !5275
  store %struct.urb* %call26, %struct.urb** %urb, align 8, !dbg !5276
  %88 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5277
  %urb27 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %88, i32 0, i32 1, !dbg !5279
  %89 = load %struct.urb*, %struct.urb** %urb27, align 8, !dbg !5279
  %tobool28 = icmp ne %struct.urb* %89, null, !dbg !5277
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !5280

if.then29:                                        ; preds = %if.end25
  store i32 -12, i32* %retval1, align 4, !dbg !5281
  br label %error, !dbg !5283

if.end30:                                         ; preds = %if.end25
  %90 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5284
  %udev31 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %90, i32 0, i32 0, !dbg !5285
  %91 = load %struct.usb_device*, %struct.usb_device** %udev31, align 8, !dbg !5285
  %92 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5286
  %urb32 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %92, i32 0, i32 1, !dbg !5287
  %93 = load %struct.urb*, %struct.urb** %urb32, align 8, !dbg !5287
  %transfer_dma = getelementptr inbounds %struct.urb, %struct.urb* %93, i32 0, i32 15, !dbg !5288
  %call33 = call i8* @usb_alloc_coherent(%struct.usb_device* %91, i64 2, i32 3264, i64* %transfer_dma) #9, !dbg !5289
  %94 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5290
  %urbdata = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %94, i32 0, i32 3, !dbg !5291
  store i8* %call33, i8** %urbdata, align 8, !dbg !5292
  %95 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5293
  %urbdata34 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %95, i32 0, i32 3, !dbg !5295
  %96 = load i8*, i8** %urbdata34, align 8, !dbg !5295
  %tobool35 = icmp ne i8* %96, null, !dbg !5293
  br i1 %tobool35, label %if.end38, label %if.then36, !dbg !5296

if.then36:                                        ; preds = %if.end30
  store i32 -12, i32* %retval1, align 4, !dbg !5297
  %97 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !5299
  %dev37 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %97, i32 0, i32 7, !dbg !5299
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !5299
  br label %error, !dbg !5300

if.end38:                                         ; preds = %if.end30
  %98 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5301
  %urb39 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %98, i32 0, i32 1, !dbg !5302
  %99 = load %struct.urb*, %struct.urb** %urb39, align 8, !dbg !5302
  %100 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5303
  %101 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5304
  %102 = load i32, i32* %int_in_endpointAddr, align 4, !dbg !5304
  %call40 = call i32 @__create_pipe(%struct.usb_device* %101, i32 %102) #9, !dbg !5304
  %or = or i32 1073741824, %call40, !dbg !5304
  %or41 = or i32 %or, 128, !dbg !5304
  %103 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5305
  %urbdata42 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %103, i32 0, i32 3, !dbg !5306
  %104 = load i8*, i8** %urbdata42, align 8, !dbg !5306
  %105 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5307
  %106 = bitcast %struct.appledisplay* %105 to i8*, !dbg !5307
  call void @usb_fill_int_urb(%struct.urb* %99, %struct.usb_device* %100, i32 %or41, i8* %104, i32 2, void (%struct.urb*)* @appledisplay_complete, i8* %106, i32 1) #9, !dbg !5308
  %107 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5309
  %urb43 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %107, i32 0, i32 1, !dbg !5310
  %108 = load %struct.urb*, %struct.urb** %urb43, align 8, !dbg !5310
  %transfer_flags = getelementptr inbounds %struct.urb, %struct.urb* %108, i32 0, i32 13, !dbg !5311
  store i32 4, i32* %transfer_flags, align 4, !dbg !5312
  %109 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5313
  %urb44 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %109, i32 0, i32 1, !dbg !5315
  %110 = load %struct.urb*, %struct.urb** %urb44, align 8, !dbg !5315
  %call45 = call i32 @usb_submit_urb(%struct.urb* %110, i32 3264) #9, !dbg !5316
  %tobool46 = icmp ne i32 %call45, 0, !dbg !5316
  br i1 %tobool46, label %if.then47, label %if.end49, !dbg !5317

if.then47:                                        ; preds = %if.end38
  store i32 -5, i32* %retval1, align 4, !dbg !5318
  %111 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !5320
  %dev48 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %111, i32 0, i32 7, !dbg !5320
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !5320
  br label %error, !dbg !5321

if.end49:                                         ; preds = %if.end38
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %bl_name, i64 0, i64 0, !dbg !5322
  store %struct.atomic_t* @count_displays, %struct.atomic_t** %v.addr.i, align 8
  %112 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5323
  %113 = bitcast %struct.atomic_t* %112 to i8*, !dbg !5323
  store i8* %113, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i93, align 8
  %114 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5324
  %115 = load i64, i64* %size.addr.i.i93, align 8, !dbg !5325
  %conv.i.i94 = trunc i64 %115 to i32, !dbg !5325
  %call.i.i95 = call zeroext i1 @kasan_check_write(i8* %114, i32 %conv.i.i94) #13, !dbg !5326
  %116 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5327
  %117 = load i64, i64* %size.addr.i.i93, align 8, !dbg !5327
  call void @kcsan_check_access(i8* %116, i64 %117, i32 7) #13, !dbg !5327
  %118 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5328
  store %struct.atomic_t* %118, %struct.atomic_t** %v.addr.i1.i, align 8
  %119 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5329
  store i32 1, i32* %i.addr.i.i.i, align 4
  store %struct.atomic_t* %119, %struct.atomic_t** %v.addr.i.i.i, align 8
  %120 = load i32, i32* %i.addr.i.i.i, align 4, !dbg !5330
  %121 = load i32, i32* %i.addr.i.i.i, align 4, !dbg !4925
  store i32 %121, i32* %__ret.i.i.i, align 4, !dbg !4925
  %122 = load i32, i32* %__ret.i.i.i, align 4, !dbg !4925
  %123 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !4925
  %counter.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %123, i32 0, i32 0, !dbg !4925
  %124 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i.i, i32 %122, i32* %counter.i.i.i) #11, !dbg !4925, !srcloc !5331
  store i32 %124, i32* %__ret.i.i.i, align 4, !dbg !4925
  %125 = load i32, i32* %__ret.i.i.i, align 4, !dbg !4925
  store i32 %125, i32* %tmp.i.i.i, align 4, !dbg !4925
  %126 = load i32, i32* %tmp.i.i.i, align 4, !dbg !4925
  %add.i.i.i = add i32 %120, %126, !dbg !5332
  %sub = sub i32 %add.i.i.i, 1, !dbg !5333
  %call51 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %sub) #9, !dbg !5334
  %127 = bitcast %struct.backlight_properties* %props to i8*, !dbg !5335
  call void @llvm.memset.p0i8.i64(i8* align 4 %127, i8 0, i64 28, i1 false), !dbg !5335
  %type = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props, i32 0, i32 4, !dbg !5336
  store i32 1, i32* %type, align 4, !dbg !5337
  %max_brightness = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props, i32 0, i32 1, !dbg !5338
  store i32 255, i32* %max_brightness, align 4, !dbg !5339
  %arraydecay52 = getelementptr inbounds [20 x i8], [20 x i8]* %bl_name, i64 0, i64 0, !dbg !5340
  %128 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5341
  %129 = bitcast %struct.appledisplay* %128 to i8*, !dbg !5341
  %call53 = call %struct.backlight_device* @backlight_device_register(i8* %arraydecay52, %struct.device* null, i8* %129, %struct.backlight_ops* @appledisplay_bl_data, %struct.backlight_properties* %props) #9, !dbg !5342
  %130 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5343
  %bd = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %130, i32 0, i32 2, !dbg !5344
  store %struct.backlight_device* %call53, %struct.backlight_device** %bd, align 8, !dbg !5345
  %131 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5346
  %bd54 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %131, i32 0, i32 2, !dbg !5348
  %132 = load %struct.backlight_device*, %struct.backlight_device** %bd54, align 8, !dbg !5348
  %133 = bitcast %struct.backlight_device* %132 to i8*, !dbg !5346
  %call55 = call zeroext i1 @IS_ERR(i8* %133) #9, !dbg !5349
  br i1 %call55, label %if.then56, label %if.end61, !dbg !5350

if.then56:                                        ; preds = %if.end49
  %134 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !5351
  %dev57 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %134, i32 0, i32 7, !dbg !5351
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !5351
  %135 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5353
  %bd58 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %135, i32 0, i32 2, !dbg !5354
  %136 = load %struct.backlight_device*, %struct.backlight_device** %bd58, align 8, !dbg !5354
  %137 = bitcast %struct.backlight_device* %136 to i8*, !dbg !5353
  %call59 = call i64 @PTR_ERR(i8* %137) #9, !dbg !5355
  %conv60 = trunc i64 %call59 to i32, !dbg !5355
  store i32 %conv60, i32* %retval1, align 4, !dbg !5356
  br label %error, !dbg !5357

if.end61:                                         ; preds = %if.end49
  %138 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5358
  %bd62 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %138, i32 0, i32 2, !dbg !5359
  %139 = load %struct.backlight_device*, %struct.backlight_device** %bd62, align 8, !dbg !5359
  %call63 = call i32 @appledisplay_bl_get_brightness(%struct.backlight_device* %139) #9, !dbg !5360
  store i32 %call63, i32* %brightness, align 4, !dbg !5361
  %140 = load i32, i32* %brightness, align 4, !dbg !5362
  %cmp = icmp slt i32 %140, 0, !dbg !5364
  br i1 %cmp, label %if.then65, label %if.end67, !dbg !5365

if.then65:                                        ; preds = %if.end61
  %141 = load i32, i32* %brightness, align 4, !dbg !5366
  store i32 %141, i32* %retval1, align 4, !dbg !5368
  %142 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !5369
  %dev66 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %142, i32 0, i32 7, !dbg !5369
  %143 = load i32, i32* %retval1, align 4, !dbg !5369
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev66, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %143) #10, !dbg !5369
  br label %error, !dbg !5370

if.end67:                                         ; preds = %if.end61
  %144 = load i32, i32* %brightness, align 4, !dbg !5371
  %145 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5372
  %bd68 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %145, i32 0, i32 2, !dbg !5373
  %146 = load %struct.backlight_device*, %struct.backlight_device** %bd68, align 8, !dbg !5373
  %props69 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %146, i32 0, i32 0, !dbg !5374
  %brightness70 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props69, i32 0, i32 0, !dbg !5375
  store i32 %144, i32* %brightness70, align 8, !dbg !5376
  %147 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !5377
  %148 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5378
  %149 = bitcast %struct.appledisplay* %148 to i8*, !dbg !5378
  call void @usb_set_intfdata(%struct.usb_interface* %147, i8* %149) #9, !dbg !5379
  %call71 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !5380
  store i32 0, i32* %retval, align 4, !dbg !5381
  br label %return, !dbg !5381

error:                                            ; preds = %if.then65, %if.then56, %if.then47, %if.then36, %if.then29, %if.then24, %if.then5
  call void @llvm.dbg.label(metadata !5382), !dbg !5383
  %150 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5384
  %tobool72 = icmp ne %struct.appledisplay* %150, null, !dbg !5384
  br i1 %tobool72, label %if.then73, label %if.end92, !dbg !5386

if.then73:                                        ; preds = %error
  %151 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5387
  %urb74 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %151, i32 0, i32 1, !dbg !5390
  %152 = load %struct.urb*, %struct.urb** %urb74, align 8, !dbg !5390
  %tobool75 = icmp ne %struct.urb* %152, null, !dbg !5387
  br i1 %tobool75, label %if.then76, label %if.end85, !dbg !5391

if.then76:                                        ; preds = %if.then73
  %153 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5392
  %urb77 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %153, i32 0, i32 1, !dbg !5394
  %154 = load %struct.urb*, %struct.urb** %urb77, align 8, !dbg !5394
  call void @usb_kill_urb(%struct.urb* %154) #9, !dbg !5395
  %155 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5396
  %work78 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %155, i32 0, i32 5, !dbg !5397
  %call79 = call zeroext i1 @cancel_delayed_work_sync(%struct.delayed_work* %work78) #9, !dbg !5398
  %156 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5399
  %udev80 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %156, i32 0, i32 0, !dbg !5400
  %157 = load %struct.usb_device*, %struct.usb_device** %udev80, align 8, !dbg !5400
  %158 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5401
  %urbdata81 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %158, i32 0, i32 3, !dbg !5402
  %159 = load i8*, i8** %urbdata81, align 8, !dbg !5402
  %160 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5403
  %urb82 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %160, i32 0, i32 1, !dbg !5404
  %161 = load %struct.urb*, %struct.urb** %urb82, align 8, !dbg !5404
  %transfer_dma83 = getelementptr inbounds %struct.urb, %struct.urb* %161, i32 0, i32 15, !dbg !5405
  %162 = load i64, i64* %transfer_dma83, align 8, !dbg !5405
  call void @usb_free_coherent(%struct.usb_device* %157, i64 2, i8* %159, i64 %162) #9, !dbg !5406
  %163 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5407
  %urb84 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %163, i32 0, i32 1, !dbg !5408
  %164 = load %struct.urb*, %struct.urb** %urb84, align 8, !dbg !5408
  call void @usb_free_urb(%struct.urb* %164) #9, !dbg !5409
  br label %if.end85, !dbg !5410

if.end85:                                         ; preds = %if.then76, %if.then73
  %165 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5411
  %bd86 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %165, i32 0, i32 2, !dbg !5413
  %166 = load %struct.backlight_device*, %struct.backlight_device** %bd86, align 8, !dbg !5413
  %167 = bitcast %struct.backlight_device* %166 to i8*, !dbg !5411
  %call87 = call zeroext i1 @IS_ERR(i8* %167) #9, !dbg !5414
  br i1 %call87, label %if.end90, label %if.then88, !dbg !5415

if.then88:                                        ; preds = %if.end85
  %168 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5416
  %bd89 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %168, i32 0, i32 2, !dbg !5417
  %169 = load %struct.backlight_device*, %struct.backlight_device** %bd89, align 8, !dbg !5417
  call void @backlight_device_unregister(%struct.backlight_device* %169) #9, !dbg !5418
  br label %if.end90, !dbg !5418

if.end90:                                         ; preds = %if.then88, %if.end85
  %170 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5419
  %msgdata91 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %170, i32 0, i32 4, !dbg !5420
  %171 = load i8*, i8** %msgdata91, align 8, !dbg !5420
  call void @kfree(i8* %171) #9, !dbg !5421
  br label %if.end92, !dbg !5422

if.end92:                                         ; preds = %if.end90, %error
  %172 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !5423
  call void @usb_set_intfdata(%struct.usb_interface* %172, i8* null) #9, !dbg !5424
  %173 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5425
  %174 = bitcast %struct.appledisplay* %173 to i8*, !dbg !5425
  call void @kfree(i8* %174) #9, !dbg !5426
  %175 = load i32, i32* %retval1, align 4, !dbg !5427
  store i32 %175, i32* %retval, align 4, !dbg !5428
  br label %return, !dbg !5428

return:                                           ; preds = %if.end92, %if.end67, %if.then
  %176 = load i32, i32* %retval, align 4, !dbg !5429
  ret i32 %176, !dbg !5429
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @appledisplay_disconnect(%struct.usb_interface* %iface) #2 !dbg !5430 {
entry:
  %iface.addr = alloca %struct.usb_interface*, align 8
  %pdata = alloca %struct.appledisplay*, align 8
  store %struct.usb_interface* %iface, %struct.usb_interface** %iface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %iface.addr, metadata !5431, metadata !DIExpression()), !dbg !5432
  call void @llvm.dbg.declare(metadata %struct.appledisplay** %pdata, metadata !5433, metadata !DIExpression()), !dbg !5434
  %0 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !5435
  %call = call i8* @usb_get_intfdata(%struct.usb_interface* %0) #9, !dbg !5436
  %1 = bitcast i8* %call to %struct.appledisplay*, !dbg !5436
  store %struct.appledisplay* %1, %struct.appledisplay** %pdata, align 8, !dbg !5434
  %2 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5437
  %tobool = icmp ne %struct.appledisplay* %2, null, !dbg !5437
  br i1 %tobool, label %if.then, label %if.end, !dbg !5439

if.then:                                          ; preds = %entry
  %3 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5440
  %urb = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %3, i32 0, i32 1, !dbg !5442
  %4 = load %struct.urb*, %struct.urb** %urb, align 8, !dbg !5442
  call void @usb_kill_urb(%struct.urb* %4) #9, !dbg !5443
  %5 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5444
  %work = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %5, i32 0, i32 5, !dbg !5445
  %call1 = call zeroext i1 @cancel_delayed_work_sync(%struct.delayed_work* %work) #9, !dbg !5446
  %6 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5447
  %bd = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %6, i32 0, i32 2, !dbg !5448
  %7 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5448
  call void @backlight_device_unregister(%struct.backlight_device* %7) #9, !dbg !5449
  %8 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5450
  %udev = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %8, i32 0, i32 0, !dbg !5451
  %9 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5451
  %10 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5452
  %urbdata = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %10, i32 0, i32 3, !dbg !5453
  %11 = load i8*, i8** %urbdata, align 8, !dbg !5453
  %12 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5454
  %urb2 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %12, i32 0, i32 1, !dbg !5455
  %13 = load %struct.urb*, %struct.urb** %urb2, align 8, !dbg !5455
  %transfer_dma = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 15, !dbg !5456
  %14 = load i64, i64* %transfer_dma, align 8, !dbg !5456
  call void @usb_free_coherent(%struct.usb_device* %9, i64 2, i8* %11, i64 %14) #9, !dbg !5457
  %15 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5458
  %urb3 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %15, i32 0, i32 1, !dbg !5459
  %16 = load %struct.urb*, %struct.urb** %urb3, align 8, !dbg !5459
  call void @usb_free_urb(%struct.urb* %16) #9, !dbg !5460
  %17 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5461
  %msgdata = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %17, i32 0, i32 4, !dbg !5462
  %18 = load i8*, i8** %msgdata, align 8, !dbg !5462
  call void @kfree(i8* %18) #9, !dbg !5463
  %19 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5464
  %20 = bitcast %struct.appledisplay* %19 to i8*, !dbg !5464
  call void @kfree(i8* %20) #9, !dbg !5465
  br label %if.end, !dbg !5466

if.end:                                           ; preds = %if.then, %entry
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !5467
  ret void, !dbg !5468
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %intf) #2 !dbg !5469 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5472, metadata !DIExpression()), !dbg !5473
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5474, metadata !DIExpression()), !dbg !5476
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5476
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5476
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !5476
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5476
  %2 = bitcast %struct.device* %1 to i8*, !dbg !5476
  store i8* %2, i8** %__mptr, align 8, !dbg !5476
  br label %do.body, !dbg !5476

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5477

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5476
  %add.ptr = getelementptr i8, i8* %3, i64 -160, !dbg !5476
  %4 = bitcast i8* %add.ptr to %struct.usb_device*, !dbg !5476
  store %struct.usb_device* %4, %struct.usb_device** %tmp, align 8, !dbg !5477
  %5 = load %struct.usb_device*, %struct.usb_device** %tmp, align 8, !dbg !5476
  ret %struct.usb_device* %5, !dbg !5479
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_find_int_in_endpoint(%struct.usb_host_interface* %alt, %struct.usb_endpoint_descriptor** %int_in) #2 !dbg !5480 {
entry:
  %alt.addr = alloca %struct.usb_host_interface*, align 8
  %int_in.addr = alloca %struct.usb_endpoint_descriptor**, align 8
  store %struct.usb_host_interface* %alt, %struct.usb_host_interface** %alt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %alt.addr, metadata !5484, metadata !DIExpression()), !dbg !5485
  store %struct.usb_endpoint_descriptor** %int_in, %struct.usb_endpoint_descriptor*** %int_in.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor*** %int_in.addr, metadata !5486, metadata !DIExpression()), !dbg !5487
  %0 = load %struct.usb_host_interface*, %struct.usb_host_interface** %alt.addr, align 8, !dbg !5488
  %1 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %int_in.addr, align 8, !dbg !5489
  %call = call i32 @usb_find_common_endpoints(%struct.usb_host_interface* %0, %struct.usb_endpoint_descriptor** null, %struct.usb_endpoint_descriptor** null, %struct.usb_endpoint_descriptor** %1, %struct.usb_endpoint_descriptor** null) #9, !dbg !5490
  ret i32 %call, !dbg !5491
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !5492 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4942, metadata !DIExpression()), !dbg !5493
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4954, metadata !DIExpression()), !dbg !5496
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4956, metadata !DIExpression()), !dbg !5497
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4958, metadata !DIExpression()), !dbg !5498
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4960, metadata !DIExpression()), !dbg !5499
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4966, metadata !DIExpression()), !dbg !5501
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4972, metadata !DIExpression()), !dbg !5503
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4981, metadata !DIExpression()), !dbg !5506
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4983, metadata !DIExpression()), !dbg !5507
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4985, metadata !DIExpression()), !dbg !5508
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4987, metadata !DIExpression()), !dbg !5509
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4989, metadata !DIExpression()), !dbg !5510
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4991, metadata !DIExpression()), !dbg !5511
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4993, metadata !DIExpression()), !dbg !5512
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4995, metadata !DIExpression()), !dbg !5513
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5514, metadata !DIExpression()), !dbg !5515
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5516, metadata !DIExpression()), !dbg !5517
  %0 = load i64, i64* %size.addr, align 8, !dbg !5518
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5519
  %or = or i32 %1, 256, !dbg !5520
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5521
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !5522
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5523

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5524
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5525
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5526

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5527
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5528
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5529
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !5530
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5510
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5531
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5532
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5533
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5534
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5535
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5536
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !5537
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5537
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5537
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5537
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !5537
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5538
  br label %kmalloc.exit, !dbg !5538

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5539
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5540
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5540
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5541

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5542
  br label %kmalloc_index.exit.i, !dbg !5542

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5543
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5544
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5545

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5546
  br label %kmalloc_index.exit.i, !dbg !5546

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5547
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5548
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5549

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5550
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5551
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5552

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5553
  br label %kmalloc_index.exit.i, !dbg !5553

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5554
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5555
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5556

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5557
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5558
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5559

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5560
  br label %kmalloc_index.exit.i, !dbg !5560

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5561
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5562
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5563

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5564
  br label %kmalloc_index.exit.i, !dbg !5564

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5565
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5566
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5567

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5568
  br label %kmalloc_index.exit.i, !dbg !5568

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5569
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5570
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5571

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5572
  br label %kmalloc_index.exit.i, !dbg !5572

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5573
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5574
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5575

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5576
  br label %kmalloc_index.exit.i, !dbg !5576

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5577
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5578
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5579

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5580
  br label %kmalloc_index.exit.i, !dbg !5580

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5581
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5582
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5583

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5584
  br label %kmalloc_index.exit.i, !dbg !5584

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5585
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5586
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5587

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5588
  br label %kmalloc_index.exit.i, !dbg !5588

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5589
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5590
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5591

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5592
  br label %kmalloc_index.exit.i, !dbg !5592

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5593
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5594
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5595

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5596
  br label %kmalloc_index.exit.i, !dbg !5596

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5597
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5598
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5599

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5600
  br label %kmalloc_index.exit.i, !dbg !5600

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5601
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5602
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5603

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5604
  br label %kmalloc_index.exit.i, !dbg !5604

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5605
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5606
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5607

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5608
  br label %kmalloc_index.exit.i, !dbg !5608

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5609
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5610
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5611

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5612
  br label %kmalloc_index.exit.i, !dbg !5612

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5613
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5614
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5615

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5616
  br label %kmalloc_index.exit.i, !dbg !5616

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5617
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5618
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5619

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5620
  br label %kmalloc_index.exit.i, !dbg !5620

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5621
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5622
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5623

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5624
  br label %kmalloc_index.exit.i, !dbg !5624

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5625
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5626
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5627

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5628
  br label %kmalloc_index.exit.i, !dbg !5628

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5629
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5630
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5631

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5632
  br label %kmalloc_index.exit.i, !dbg !5632

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5633
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5634
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5635

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5636
  br label %kmalloc_index.exit.i, !dbg !5636

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5637
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5638
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5639

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5640
  br label %kmalloc_index.exit.i, !dbg !5640

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5641
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5642
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5643

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5644
  br label %kmalloc_index.exit.i, !dbg !5644

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5645
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5646
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5647

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5648
  br label %kmalloc_index.exit.i, !dbg !5648

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5649
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5650
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5651

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5652
  br label %kmalloc_index.exit.i, !dbg !5652

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5653
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5654
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5655

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5656
  br label %kmalloc_index.exit.i, !dbg !5656

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5657, !srcloc !5222
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #11, !dbg !5658, !srcloc !5226
  unreachable, !dbg !5659

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5660
  store i32 %45, i32* %index.i, align 4, !dbg !5661
  %46 = load i32, i32* %index.i, align 4, !dbg !5662
  %tobool.i = icmp ne i32 %46, 0, !dbg !5662
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5663

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5664
  br label %kmalloc.exit, !dbg !5664

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5665
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5666
  %and.i.i = and i32 %48, 17, !dbg !5666
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5666
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5666
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5666
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5666
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5667

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5668
  br label %kmalloc_type.exit.i, !dbg !5668

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5669
  %and2.i.i = and i32 %49, 1, !dbg !5670
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5669
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5669
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5669
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5671
  br label %kmalloc_type.exit.i, !dbg !5671

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5672
  %idxprom.i = zext i32 %51 to i64, !dbg !5673
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5673
  %52 = load i32, i32* %index.i, align 4, !dbg !5674
  %idxprom6.i = zext i32 %52 to i64, !dbg !5673
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5673
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5673
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5675
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5676
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5677
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5678
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !5679
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5679
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5679
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5679
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5679
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5498
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5680
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5681
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5682
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5683
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !5684
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5685
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5686
  store i8* %62, i8** %retval.i, align 8, !dbg !5687
  br label %kmalloc.exit, !dbg !5687

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5688
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5689
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !5690
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5690
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5690
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5690
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5690
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5691
  br label %kmalloc.exit, !dbg !5691

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5692
  ret i8* %65, !dbg !5693
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #2 !dbg !5694 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5697, metadata !DIExpression()), !dbg !5698
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !5699, metadata !DIExpression()), !dbg !5700
  ret void, !dbg !5701
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #2 !dbg !5702 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5706, metadata !DIExpression()), !dbg !5707
  br label %do.body, !dbg !5708

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5709

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5711

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5709

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5713
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5713
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5713
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !5713
  br label %do.end3, !dbg !5713

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5709

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5715
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5716
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !5717
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !5718
  ret void, !dbg !5719
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @appledisplay_work(%struct.work_struct* %work) #2 !dbg !5720 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %pdata = alloca %struct.appledisplay*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.appledisplay*, align 8
  %retval = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5721, metadata !DIExpression()), !dbg !5722
  call void @llvm.dbg.declare(metadata %struct.appledisplay** %pdata, metadata !5723, metadata !DIExpression()), !dbg !5724
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5725, metadata !DIExpression()), !dbg !5727
  %0 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !5727
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !5727
  store i8* %1, i8** %__mptr, align 8, !dbg !5727
  br label %do.body, !dbg !5727

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5728

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5727
  %add.ptr = getelementptr i8, i8* %2, i64 -40, !dbg !5727
  %3 = bitcast i8* %add.ptr to %struct.appledisplay*, !dbg !5727
  store %struct.appledisplay* %3, %struct.appledisplay** %tmp, align 8, !dbg !5728
  %4 = load %struct.appledisplay*, %struct.appledisplay** %tmp, align 8, !dbg !5727
  store %struct.appledisplay* %4, %struct.appledisplay** %pdata, align 8, !dbg !5724
  call void @llvm.dbg.declare(metadata i32* %retval, metadata !5730, metadata !DIExpression()), !dbg !5731
  %5 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5732
  %bd = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %5, i32 0, i32 2, !dbg !5733
  %6 = load %struct.backlight_device*, %struct.backlight_device** %bd, align 8, !dbg !5733
  %call = call i32 @appledisplay_bl_get_brightness(%struct.backlight_device* %6) #9, !dbg !5734
  store i32 %call, i32* %retval, align 4, !dbg !5735
  %7 = load i32, i32* %retval, align 4, !dbg !5736
  %cmp = icmp sge i32 %7, 0, !dbg !5738
  br i1 %cmp, label %if.then, label %if.end, !dbg !5739

if.then:                                          ; preds = %do.end
  %8 = load i32, i32* %retval, align 4, !dbg !5740
  %9 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5741
  %bd1 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %9, i32 0, i32 2, !dbg !5742
  %10 = load %struct.backlight_device*, %struct.backlight_device** %bd1, align 8, !dbg !5742
  %props = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %10, i32 0, i32 0, !dbg !5743
  %brightness = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props, i32 0, i32 0, !dbg !5744
  store i32 %8, i32* %brightness, align 8, !dbg !5745
  br label %if.end, !dbg !5741

if.end:                                           ; preds = %if.then, %do.end
  %11 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5746
  %button_pressed = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %11, i32 0, i32 6, !dbg !5748
  %12 = load i32, i32* %button_pressed, align 8, !dbg !5748
  %tobool = icmp ne i32 %12, 0, !dbg !5746
  br i1 %tobool, label %if.then2, label %if.end5, !dbg !5749

if.then2:                                         ; preds = %if.end
  %13 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5750
  %work3 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %13, i32 0, i32 5, !dbg !5751
  %call4 = call zeroext i1 @schedule_delayed_work(%struct.delayed_work* %work3, i64 31) #9, !dbg !5752
  br label %if.end5, !dbg !5752

if.end5:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !5753
}

; Function Attrs: noredzone
declare dso_local void @init_timer_key(%struct.timer_list*, void (%struct.timer_list*)*, i32, i8*, %struct.lock_class_key*) #1

; Function Attrs: noredzone
declare dso_local void @delayed_work_timer_fn(%struct.timer_list*) #1

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noredzone
declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

; Function Attrs: noredzone
declare dso_local i8* @usb_alloc_coherent(%struct.usb_device*, i64, i32, i64*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_fill_int_urb(%struct.urb* %urb, %struct.usb_device* %dev, i32 %pipe, i8* %transfer_buffer, i32 %buffer_length, void (%struct.urb*)* %complete_fn, i8* %context, i32 %interval) #2 !dbg !5754 {
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
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5757, metadata !DIExpression()), !dbg !5758
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5759, metadata !DIExpression()), !dbg !5760
  store i32 %pipe, i32* %pipe.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pipe.addr, metadata !5761, metadata !DIExpression()), !dbg !5762
  store i8* %transfer_buffer, i8** %transfer_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %transfer_buffer.addr, metadata !5763, metadata !DIExpression()), !dbg !5764
  store i32 %buffer_length, i32* %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %buffer_length.addr, metadata !5765, metadata !DIExpression()), !dbg !5766
  store void (%struct.urb*)* %complete_fn, void (%struct.urb*)** %complete_fn.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.urb*)** %complete_fn.addr, metadata !5767, metadata !DIExpression()), !dbg !5768
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !5769, metadata !DIExpression()), !dbg !5770
  store i32 %interval, i32* %interval.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %interval.addr, metadata !5771, metadata !DIExpression()), !dbg !5772
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5773
  %1 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5774
  %dev1 = getelementptr inbounds %struct.urb, %struct.urb* %1, i32 0, i32 8, !dbg !5775
  store %struct.usb_device* %0, %struct.usb_device** %dev1, align 8, !dbg !5776
  %2 = load i32, i32* %pipe.addr, align 4, !dbg !5777
  %3 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5778
  %pipe2 = getelementptr inbounds %struct.urb, %struct.urb* %3, i32 0, i32 10, !dbg !5779
  store i32 %2, i32* %pipe2, align 8, !dbg !5780
  %4 = load i8*, i8** %transfer_buffer.addr, align 8, !dbg !5781
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5782
  %transfer_buffer3 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 14, !dbg !5783
  store i8* %4, i8** %transfer_buffer3, align 8, !dbg !5784
  %6 = load i32, i32* %buffer_length.addr, align 4, !dbg !5785
  %7 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5786
  %transfer_buffer_length = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 19, !dbg !5787
  store i32 %6, i32* %transfer_buffer_length, align 8, !dbg !5788
  %8 = load void (%struct.urb*)*, void (%struct.urb*)** %complete_fn.addr, align 8, !dbg !5789
  %9 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5790
  %complete = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 28, !dbg !5791
  store void (%struct.urb*)* %8, void (%struct.urb*)** %complete, align 8, !dbg !5792
  %10 = load i8*, i8** %context.addr, align 8, !dbg !5793
  %11 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5794
  %context4 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 27, !dbg !5795
  store i8* %10, i8** %context4, align 8, !dbg !5796
  %12 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5797
  %speed = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 4, !dbg !5799
  %13 = load i32, i32* %speed, align 4, !dbg !5799
  %cmp = icmp eq i32 %13, 3, !dbg !5800
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5801

lor.lhs.false:                                    ; preds = %entry
  %14 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5802
  %speed5 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 4, !dbg !5803
  %15 = load i32, i32* %speed5, align 4, !dbg !5803
  %cmp6 = icmp uge i32 %15, 5, !dbg !5804
  br i1 %cmp6, label %if.then, label %if.else, !dbg !5805

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x207, metadata !5806, metadata !DIExpression()), !dbg !5809
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x205, metadata !5810, metadata !DIExpression()), !dbg !5812
  %16 = load i32, i32* %interval.addr, align 4, !dbg !5812
  store i32 %16, i32* %__UNIQUE_ID___x205, align 4, !dbg !5812
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y206, metadata !5813, metadata !DIExpression()), !dbg !5812
  store i32 1, i32* %__UNIQUE_ID___y206, align 4, !dbg !5812
  %17 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !5812
  %18 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !5812
  %cmp7 = icmp sgt i32 %17, %18, !dbg !5812
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !5812

cond.true:                                        ; preds = %if.then
  %19 = load i32, i32* %__UNIQUE_ID___x205, align 4, !dbg !5812
  br label %cond.end, !dbg !5812

cond.false:                                       ; preds = %if.then
  %20 = load i32, i32* %__UNIQUE_ID___y206, align 4, !dbg !5812
  br label %cond.end, !dbg !5812

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !5812
  store i32 %cond, i32* %tmp, align 4, !dbg !5812
  %21 = load i32, i32* %tmp, align 4, !dbg !5812
  store i32 %21, i32* %__UNIQUE_ID___x207, align 4, !dbg !5809
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y208, metadata !5814, metadata !DIExpression()), !dbg !5809
  store i32 16, i32* %__UNIQUE_ID___y208, align 4, !dbg !5809
  %22 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !5809
  %23 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !5809
  %cmp9 = icmp slt i32 %22, %23, !dbg !5809
  br i1 %cmp9, label %cond.true10, label %cond.false11, !dbg !5809

cond.true10:                                      ; preds = %cond.end
  %24 = load i32, i32* %__UNIQUE_ID___x207, align 4, !dbg !5809
  br label %cond.end12, !dbg !5809

cond.false11:                                     ; preds = %cond.end
  %25 = load i32, i32* %__UNIQUE_ID___y208, align 4, !dbg !5809
  br label %cond.end12, !dbg !5809

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %24, %cond.true10 ], [ %25, %cond.false11 ], !dbg !5809
  store i32 %cond13, i32* %tmp8, align 4, !dbg !5809
  %26 = load i32, i32* %tmp8, align 4, !dbg !5809
  store i32 %26, i32* %interval.addr, align 4, !dbg !5815
  %27 = load i32, i32* %interval.addr, align 4, !dbg !5816
  %sub = sub i32 %27, 1, !dbg !5817
  %shl = shl i32 1, %sub, !dbg !5818
  %28 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5819
  %interval14 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 25, !dbg !5820
  store i32 %shl, i32* %interval14, align 8, !dbg !5821
  br label %if.end, !dbg !5822

if.else:                                          ; preds = %lor.lhs.false
  %29 = load i32, i32* %interval.addr, align 4, !dbg !5823
  %30 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5825
  %interval15 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 25, !dbg !5826
  store i32 %29, i32* %interval15, align 8, !dbg !5827
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end12
  %31 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5828
  %start_frame = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 23, !dbg !5829
  store i32 -1, i32* %start_frame, align 8, !dbg !5830
  ret void, !dbg !5831
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__create_pipe(%struct.usb_device* %dev, i32 %endpoint) #2 !dbg !5832 {
entry:
  %dev.addr = alloca %struct.usb_device*, align 8
  %endpoint.addr = alloca i32, align 4
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5835, metadata !DIExpression()), !dbg !5836
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !5837, metadata !DIExpression()), !dbg !5838
  %0 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5839
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %0, i32 0, i32 0, !dbg !5840
  %1 = load i32, i32* %devnum, align 8, !dbg !5840
  %shl = shl i32 %1, 8, !dbg !5841
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !5842
  %shl1 = shl i32 %2, 15, !dbg !5843
  %or = or i32 %shl, %shl1, !dbg !5844
  ret i32 %or, !dbg !5845
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @appledisplay_complete(%struct.urb* %urb) #2 !dbg !5846 {
entry:
  %urb.addr = alloca %struct.urb*, align 8
  %pdata = alloca %struct.appledisplay*, align 8
  %dev = alloca %struct.device*, align 8
  %status = alloca i32, align 4
  %retval = alloca i32, align 4
  store %struct.urb* %urb, %struct.urb** %urb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.urb** %urb.addr, metadata !5847, metadata !DIExpression()), !dbg !5848
  call void @llvm.dbg.declare(metadata %struct.appledisplay** %pdata, metadata !5849, metadata !DIExpression()), !dbg !5850
  %0 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5851
  %context = getelementptr inbounds %struct.urb, %struct.urb* %0, i32 0, i32 27, !dbg !5852
  %1 = load i8*, i8** %context, align 8, !dbg !5852
  %2 = bitcast i8* %1 to %struct.appledisplay*, !dbg !5851
  store %struct.appledisplay* %2, %struct.appledisplay** %pdata, align 8, !dbg !5850
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !5853, metadata !DIExpression()), !dbg !5854
  %3 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5855
  %udev = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %3, i32 0, i32 0, !dbg !5856
  %4 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5856
  %dev1 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %4, i32 0, i32 14, !dbg !5857
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !5854
  call void @llvm.dbg.declare(metadata i32* %status, metadata !5858, metadata !DIExpression()), !dbg !5859
  %5 = load %struct.urb*, %struct.urb** %urb.addr, align 8, !dbg !5860
  %status2 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 12, !dbg !5861
  %6 = load i32, i32* %status2, align 8, !dbg !5861
  store i32 %6, i32* %status, align 4, !dbg !5859
  call void @llvm.dbg.declare(metadata i32* %retval, metadata !5862, metadata !DIExpression()), !dbg !5863
  %7 = load i32, i32* %status, align 4, !dbg !5864
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 -75, label %sw.bb3
    i32 -104, label %sw.bb5
    i32 -2, label %sw.bb5
    i32 -108, label %sw.bb5
  ], !dbg !5865

sw.bb:                                            ; preds = %entry
  br label %sw.epilog, !dbg !5866

sw.bb3:                                           ; preds = %entry
  %8 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5868
  %9 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5868
  %urb4 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %9, i32 0, i32 1, !dbg !5868
  %10 = load %struct.urb*, %struct.urb** %urb4, align 8, !dbg !5868
  %actual_length = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 20, !dbg !5868
  %11 = load i32, i32* %actual_length, align 4, !dbg !5868
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %8, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i32 2, i32 %11) #10, !dbg !5868
  br label %sw.bb5, !dbg !5868

sw.bb5:                                           ; preds = %entry, %entry, %entry, %sw.bb3
  br label %if.end, !dbg !5869

sw.default:                                       ; preds = %entry
  br label %exit, !dbg !5870

sw.epilog:                                        ; preds = %sw.bb
  %12 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5871
  %urbdata = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %12, i32 0, i32 3, !dbg !5872
  %13 = load i8*, i8** %urbdata, align 8, !dbg !5872
  %arrayidx = getelementptr i8, i8* %13, i64 1, !dbg !5871
  %14 = load i8, i8* %arrayidx, align 1, !dbg !5871
  %conv = zext i8 %14 to i32, !dbg !5871
  switch i32 %conv, label %sw.default8 [
    i32 3, label %sw.bb6
    i32 4, label %sw.bb6
    i32 0, label %sw.bb7
  ], !dbg !5873

sw.bb6:                                           ; preds = %sw.epilog, %sw.epilog
  %15 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5874
  %button_pressed = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %15, i32 0, i32 6, !dbg !5876
  store i32 1, i32* %button_pressed, align 8, !dbg !5877
  %16 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5878
  %work = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %16, i32 0, i32 5, !dbg !5879
  %call = call zeroext i1 @schedule_delayed_work(%struct.delayed_work* %work, i64 0) #9, !dbg !5880
  br label %sw.epilog10, !dbg !5881

sw.bb7:                                           ; preds = %sw.epilog
  br label %sw.default8, !dbg !5881

sw.default8:                                      ; preds = %sw.epilog, %sw.bb7
  %17 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5882
  %button_pressed9 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %17, i32 0, i32 6, !dbg !5883
  store i32 0, i32* %button_pressed9, align 8, !dbg !5884
  br label %sw.epilog10, !dbg !5885

sw.epilog10:                                      ; preds = %sw.default8, %sw.bb6
  br label %exit, !dbg !5886

exit:                                             ; preds = %sw.epilog10, %sw.default
  call void @llvm.dbg.label(metadata !5887), !dbg !5888
  %18 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5889
  %urb11 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %18, i32 0, i32 1, !dbg !5890
  %19 = load %struct.urb*, %struct.urb** %urb11, align 8, !dbg !5890
  %call12 = call i32 @usb_submit_urb(%struct.urb* %19, i32 2592) #9, !dbg !5891
  store i32 %call12, i32* %retval, align 4, !dbg !5892
  %20 = load i32, i32* %retval, align 4, !dbg !5893
  %tobool = icmp ne i32 %20, 0, !dbg !5893
  br i1 %tobool, label %if.then, label %if.end, !dbg !5895

if.then:                                          ; preds = %exit
  %21 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5896
  %22 = load i32, i32* %retval, align 4, !dbg !5896
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.appledisplay_complete, i64 0, i64 0), i32 %22) #10, !dbg !5896
  br label %if.end, !dbg !5898

if.end:                                           ; preds = %sw.bb5, %if.then, %exit
  ret void, !dbg !5899
}

; Function Attrs: noredzone
declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noredzone
declare dso_local %struct.backlight_device* @backlight_device_register(i8*, %struct.device*, i8*, %struct.backlight_ops*, %struct.backlight_properties*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !5900 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5904, metadata !DIExpression()), !dbg !5905
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5906
  %1 = ptrtoint i8* %0 to i64, !dbg !5906
  %2 = inttoptr i64 %1 to i8*, !dbg !5906
  %3 = ptrtoint i8* %2 to i64, !dbg !5906
  %cmp = icmp uge i64 %3, -4095, !dbg !5906
  %lnot = xor i1 %cmp, true, !dbg !5906
  %lnot1 = xor i1 %lnot, true, !dbg !5906
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5906
  %conv = sext i32 %lnot.ext to i64, !dbg !5906
  %tobool = icmp ne i64 %conv, 0, !dbg !5906
  ret i1 %tobool, !dbg !5907
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !5908 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5911, metadata !DIExpression()), !dbg !5912
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5913
  %1 = ptrtoint i8* %0 to i64, !dbg !5914
  ret i64 %1, !dbg !5915
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @appledisplay_bl_get_brightness(%struct.backlight_device* %bd) #2 !dbg !5916 {
entry:
  %retval = alloca i32, align 4
  %bd.addr = alloca %struct.backlight_device*, align 8
  %pdata = alloca %struct.appledisplay*, align 8
  %retval1 = alloca i32, align 4
  %brightness = alloca i32, align 4
  store %struct.backlight_device* %bd, %struct.backlight_device** %bd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd.addr, metadata !5917, metadata !DIExpression()), !dbg !5918
  call void @llvm.dbg.declare(metadata %struct.appledisplay** %pdata, metadata !5919, metadata !DIExpression()), !dbg !5920
  %0 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !5921
  %call = call i8* @bl_get_data(%struct.backlight_device* %0) #9, !dbg !5922
  %1 = bitcast i8* %call to %struct.appledisplay*, !dbg !5922
  store %struct.appledisplay* %1, %struct.appledisplay** %pdata, align 8, !dbg !5920
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5923, metadata !DIExpression()), !dbg !5924
  call void @llvm.dbg.declare(metadata i32* %brightness, metadata !5925, metadata !DIExpression()), !dbg !5926
  %2 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5927
  %sysfslock = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %2, i32 0, i32 7, !dbg !5928
  call void @mutex_lock(%struct.mutex* %sysfslock) #9, !dbg !5929
  %3 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5930
  %udev = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %3, i32 0, i32 0, !dbg !5931
  %4 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !5931
  %5 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5932
  %udev2 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %5, i32 0, i32 0, !dbg !5932
  %6 = load %struct.usb_device*, %struct.usb_device** %udev2, align 8, !dbg !5932
  %call3 = call i32 @__create_pipe(%struct.usb_device* %6, i32 0) #9, !dbg !5932
  %or = or i32 -2147483648, %call3, !dbg !5932
  %or4 = or i32 %or, 128, !dbg !5932
  %7 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5933
  %msgdata = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %7, i32 0, i32 4, !dbg !5934
  %8 = load i8*, i8** %msgdata, align 8, !dbg !5934
  %call5 = call i32 @usb_control_msg(%struct.usb_device* %4, i32 %or4, i8 zeroext 1, i8 zeroext -95, i16 zeroext 784, i16 zeroext 0, i8* %8, i16 zeroext 2, i32 250) #9, !dbg !5935
  store i32 %call5, i32* %retval1, align 4, !dbg !5936
  %9 = load i32, i32* %retval1, align 4, !dbg !5937
  %cmp = icmp slt i32 %9, 2, !dbg !5939
  br i1 %cmp, label %if.then, label %if.else, !dbg !5940

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %retval1, align 4, !dbg !5941
  %cmp6 = icmp sge i32 %10, 0, !dbg !5944
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !5945

if.then7:                                         ; preds = %if.then
  store i32 -90, i32* %retval1, align 4, !dbg !5946
  br label %if.end, !dbg !5947

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end9, !dbg !5948

if.else:                                          ; preds = %entry
  %11 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5949
  %msgdata8 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %11, i32 0, i32 4, !dbg !5951
  %12 = load i8*, i8** %msgdata8, align 8, !dbg !5951
  %arrayidx = getelementptr i8, i8* %12, i64 1, !dbg !5949
  %13 = load i8, i8* %arrayidx, align 1, !dbg !5949
  %conv = zext i8 %13 to i32, !dbg !5949
  store i32 %conv, i32* %brightness, align 4, !dbg !5952
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end
  %14 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !5953
  %sysfslock10 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %14, i32 0, i32 7, !dbg !5954
  call void @mutex_unlock(%struct.mutex* %sysfslock10) #9, !dbg !5955
  %15 = load i32, i32* %retval1, align 4, !dbg !5956
  %cmp11 = icmp slt i32 %15, 0, !dbg !5958
  br i1 %cmp11, label %if.then13, label %if.else14, !dbg !5959

if.then13:                                        ; preds = %if.end9
  %16 = load i32, i32* %retval1, align 4, !dbg !5960
  store i32 %16, i32* %retval, align 4, !dbg !5961
  br label %return, !dbg !5961

if.else14:                                        ; preds = %if.end9
  %17 = load i32, i32* %brightness, align 4, !dbg !5962
  store i32 %17, i32* %retval, align 4, !dbg !5963
  br label %return, !dbg !5963

return:                                           ; preds = %if.else14, %if.then13
  %18 = load i32, i32* %retval, align 4, !dbg !5964
  ret i32 %18, !dbg !5964
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_set_intfdata(%struct.usb_interface* %intf, i8* %data) #2 !dbg !5965 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !5968, metadata !DIExpression()), !dbg !5969
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5970, metadata !DIExpression()), !dbg !5971
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !5972
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !5973
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5974
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !5975
  ret void, !dbg !5976
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @usb_kill_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local zeroext i1 @cancel_delayed_work_sync(%struct.delayed_work*) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_coherent(%struct.usb_device*, i64, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local void @usb_free_urb(%struct.urb*) #1

; Function Attrs: noredzone
declare dso_local void @backlight_device_unregister(%struct.backlight_device*) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_find_common_endpoints(%struct.usb_host_interface*, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_delayed_work(%struct.delayed_work* %dwork, i64 %delay) #2 !dbg !5977 {
entry:
  %dwork.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.delayed_work* %dwork, %struct.delayed_work** %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %dwork.addr, metadata !5981, metadata !DIExpression()), !dbg !5982
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !5983, metadata !DIExpression()), !dbg !5984
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !5985
  %1 = load %struct.delayed_work*, %struct.delayed_work** %dwork.addr, align 8, !dbg !5986
  %2 = load i64, i64* %delay.addr, align 8, !dbg !5987
  %call = call zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) #9, !dbg !5988
  ret i1 %call, !dbg !5989
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_delayed_work(%struct.workqueue_struct* %wq, %struct.delayed_work* %dwork, i64 %delay) #2 !dbg !5990 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %dwork.addr = alloca %struct.delayed_work*, align 8
  %delay.addr = alloca i64, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !5993, metadata !DIExpression()), !dbg !5994
  store %struct.delayed_work* %dwork, %struct.delayed_work** %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.delayed_work** %dwork.addr, metadata !5995, metadata !DIExpression()), !dbg !5996
  store i64 %delay, i64* %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delay.addr, metadata !5997, metadata !DIExpression()), !dbg !5998
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !5999
  %1 = load %struct.delayed_work*, %struct.delayed_work** %dwork.addr, align 8, !dbg !6000
  %2 = load i64, i64* %delay.addr, align 8, !dbg !6001
  %call = call zeroext i1 @queue_delayed_work_on(i32 1, %struct.workqueue_struct* %0, %struct.delayed_work* %1, i64 %2) #9, !dbg !6002
  ret i1 %call, !dbg !6003
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_delayed_work_on(i32, %struct.workqueue_struct*, %struct.delayed_work*, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !6004 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6008, metadata !DIExpression()), !dbg !6013
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6015, metadata !DIExpression()), !dbg !6016
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6017, metadata !DIExpression()), !dbg !6018
  %0 = load i64, i64* %size.addr, align 8, !dbg !6019
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6021
  br i1 %1, label %if.then, label %if.end447, !dbg !6022

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6023
  %tobool = icmp ne i64 %2, 0, !dbg !6023
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6026

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6027
  br label %return, !dbg !6027

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6028
  %cmp = icmp ult i64 %3, 4096, !dbg !6030
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6031

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6032
  br label %return, !dbg !6032

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub = sub i64 %4, 1, !dbg !6033
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6033
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6033

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub4 = sub i64 %6, 1, !dbg !6033
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6033
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6033

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub6 = sub i64 %8, 1, !dbg !6033
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6033
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6033

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6033

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub9 = sub i64 %9, 1, !dbg !6033
  %and = and i64 %sub9, -9223372036854775808, !dbg !6033
  %tobool10 = icmp ne i64 %and, 0, !dbg !6033
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6033

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6033

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub13 = sub i64 %10, 1, !dbg !6033
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6033
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6033
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6033

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6033

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub18 = sub i64 %11, 1, !dbg !6033
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6033
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6033
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6033

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6033

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub23 = sub i64 %12, 1, !dbg !6033
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6033
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6033
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6033

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6033

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub28 = sub i64 %13, 1, !dbg !6033
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6033
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6033
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6033

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6033

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub33 = sub i64 %14, 1, !dbg !6033
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6033
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6033
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6033

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6033

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub38 = sub i64 %15, 1, !dbg !6033
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6033
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6033
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6033

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6033

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub43 = sub i64 %16, 1, !dbg !6033
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6033
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6033
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6033

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6033

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub48 = sub i64 %17, 1, !dbg !6033
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6033
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6033
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6033

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6033

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub53 = sub i64 %18, 1, !dbg !6033
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6033
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6033
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6033

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6033

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub58 = sub i64 %19, 1, !dbg !6033
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6033
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6033
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6033

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6033

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub63 = sub i64 %20, 1, !dbg !6033
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6033
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6033
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6033

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6033

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub68 = sub i64 %21, 1, !dbg !6033
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6033
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6033
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6033

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6033

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub73 = sub i64 %22, 1, !dbg !6033
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6033
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6033
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6033

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6033

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub78 = sub i64 %23, 1, !dbg !6033
  %and79 = and i64 %sub78, 562949953421312, !dbg !6033
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6033
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6033

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6033

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub83 = sub i64 %24, 1, !dbg !6033
  %and84 = and i64 %sub83, 281474976710656, !dbg !6033
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6033
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6033

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6033

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub88 = sub i64 %25, 1, !dbg !6033
  %and89 = and i64 %sub88, 140737488355328, !dbg !6033
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6033
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6033

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6033

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub93 = sub i64 %26, 1, !dbg !6033
  %and94 = and i64 %sub93, 70368744177664, !dbg !6033
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6033
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6033

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6033

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub98 = sub i64 %27, 1, !dbg !6033
  %and99 = and i64 %sub98, 35184372088832, !dbg !6033
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6033
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6033

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6033

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub103 = sub i64 %28, 1, !dbg !6033
  %and104 = and i64 %sub103, 17592186044416, !dbg !6033
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6033
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6033

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6033

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub108 = sub i64 %29, 1, !dbg !6033
  %and109 = and i64 %sub108, 8796093022208, !dbg !6033
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6033
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6033

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6033

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub113 = sub i64 %30, 1, !dbg !6033
  %and114 = and i64 %sub113, 4398046511104, !dbg !6033
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6033
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6033

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6033

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub118 = sub i64 %31, 1, !dbg !6033
  %and119 = and i64 %sub118, 2199023255552, !dbg !6033
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6033
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6033

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6033

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub123 = sub i64 %32, 1, !dbg !6033
  %and124 = and i64 %sub123, 1099511627776, !dbg !6033
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6033
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6033

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6033

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub128 = sub i64 %33, 1, !dbg !6033
  %and129 = and i64 %sub128, 549755813888, !dbg !6033
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6033
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6033

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6033

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub133 = sub i64 %34, 1, !dbg !6033
  %and134 = and i64 %sub133, 274877906944, !dbg !6033
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6033
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6033

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6033

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub138 = sub i64 %35, 1, !dbg !6033
  %and139 = and i64 %sub138, 137438953472, !dbg !6033
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6033
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6033

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6033

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub143 = sub i64 %36, 1, !dbg !6033
  %and144 = and i64 %sub143, 68719476736, !dbg !6033
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6033
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6033

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6033

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub148 = sub i64 %37, 1, !dbg !6033
  %and149 = and i64 %sub148, 34359738368, !dbg !6033
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6033
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6033

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6033

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub153 = sub i64 %38, 1, !dbg !6033
  %and154 = and i64 %sub153, 17179869184, !dbg !6033
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6033
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6033

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6033

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub158 = sub i64 %39, 1, !dbg !6033
  %and159 = and i64 %sub158, 8589934592, !dbg !6033
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6033
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6033

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6033

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub163 = sub i64 %40, 1, !dbg !6033
  %and164 = and i64 %sub163, 4294967296, !dbg !6033
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6033
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6033

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6033

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub168 = sub i64 %41, 1, !dbg !6033
  %and169 = and i64 %sub168, 2147483648, !dbg !6033
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6033
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6033

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6033

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub173 = sub i64 %42, 1, !dbg !6033
  %and174 = and i64 %sub173, 1073741824, !dbg !6033
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6033
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6033

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6033

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub178 = sub i64 %43, 1, !dbg !6033
  %and179 = and i64 %sub178, 536870912, !dbg !6033
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6033
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6033

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6033

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub183 = sub i64 %44, 1, !dbg !6033
  %and184 = and i64 %sub183, 268435456, !dbg !6033
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6033
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6033

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6033

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub188 = sub i64 %45, 1, !dbg !6033
  %and189 = and i64 %sub188, 134217728, !dbg !6033
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6033
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6033

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6033

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub193 = sub i64 %46, 1, !dbg !6033
  %and194 = and i64 %sub193, 67108864, !dbg !6033
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6033
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6033

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6033

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub198 = sub i64 %47, 1, !dbg !6033
  %and199 = and i64 %sub198, 33554432, !dbg !6033
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6033
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6033

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6033

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub203 = sub i64 %48, 1, !dbg !6033
  %and204 = and i64 %sub203, 16777216, !dbg !6033
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6033
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6033

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6033

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub208 = sub i64 %49, 1, !dbg !6033
  %and209 = and i64 %sub208, 8388608, !dbg !6033
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6033
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6033

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6033

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub213 = sub i64 %50, 1, !dbg !6033
  %and214 = and i64 %sub213, 4194304, !dbg !6033
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6033
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6033

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6033

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub218 = sub i64 %51, 1, !dbg !6033
  %and219 = and i64 %sub218, 2097152, !dbg !6033
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6033
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6033

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6033

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub223 = sub i64 %52, 1, !dbg !6033
  %and224 = and i64 %sub223, 1048576, !dbg !6033
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6033
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6033

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6033

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub228 = sub i64 %53, 1, !dbg !6033
  %and229 = and i64 %sub228, 524288, !dbg !6033
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6033
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6033

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6033

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub233 = sub i64 %54, 1, !dbg !6033
  %and234 = and i64 %sub233, 262144, !dbg !6033
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6033
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6033

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6033

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub238 = sub i64 %55, 1, !dbg !6033
  %and239 = and i64 %sub238, 131072, !dbg !6033
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6033
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6033

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6033

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub243 = sub i64 %56, 1, !dbg !6033
  %and244 = and i64 %sub243, 65536, !dbg !6033
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6033
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6033

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6033

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub248 = sub i64 %57, 1, !dbg !6033
  %and249 = and i64 %sub248, 32768, !dbg !6033
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6033
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6033

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6033

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub253 = sub i64 %58, 1, !dbg !6033
  %and254 = and i64 %sub253, 16384, !dbg !6033
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6033
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6033

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6033

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub258 = sub i64 %59, 1, !dbg !6033
  %and259 = and i64 %sub258, 8192, !dbg !6033
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6033
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6033

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6033

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub263 = sub i64 %60, 1, !dbg !6033
  %and264 = and i64 %sub263, 4096, !dbg !6033
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6033
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6033

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6033

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub268 = sub i64 %61, 1, !dbg !6033
  %and269 = and i64 %sub268, 2048, !dbg !6033
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6033
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6033

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6033

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub273 = sub i64 %62, 1, !dbg !6033
  %and274 = and i64 %sub273, 1024, !dbg !6033
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6033
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6033

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6033

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub278 = sub i64 %63, 1, !dbg !6033
  %and279 = and i64 %sub278, 512, !dbg !6033
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6033
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6033

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6033

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub283 = sub i64 %64, 1, !dbg !6033
  %and284 = and i64 %sub283, 256, !dbg !6033
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6033
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6033

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6033

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub288 = sub i64 %65, 1, !dbg !6033
  %and289 = and i64 %sub288, 128, !dbg !6033
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6033
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6033

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6033

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub293 = sub i64 %66, 1, !dbg !6033
  %and294 = and i64 %sub293, 64, !dbg !6033
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6033
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6033

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6033

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub298 = sub i64 %67, 1, !dbg !6033
  %and299 = and i64 %sub298, 32, !dbg !6033
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6033
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6033

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6033

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub303 = sub i64 %68, 1, !dbg !6033
  %and304 = and i64 %sub303, 16, !dbg !6033
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6033
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6033

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6033

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub308 = sub i64 %69, 1, !dbg !6033
  %and309 = and i64 %sub308, 8, !dbg !6033
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6033
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6033

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6033

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub313 = sub i64 %70, 1, !dbg !6033
  %and314 = and i64 %sub313, 4, !dbg !6033
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6033
  %71 = zext i1 %tobool315 to i64, !dbg !6033
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6033
  br label %cond.end, !dbg !6033

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6033
  br label %cond.end317, !dbg !6033

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6033
  br label %cond.end319, !dbg !6033

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6033
  br label %cond.end321, !dbg !6033

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6033
  br label %cond.end323, !dbg !6033

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6033
  br label %cond.end325, !dbg !6033

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6033
  br label %cond.end327, !dbg !6033

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6033
  br label %cond.end329, !dbg !6033

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6033
  br label %cond.end331, !dbg !6033

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6033
  br label %cond.end333, !dbg !6033

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6033
  br label %cond.end335, !dbg !6033

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6033
  br label %cond.end337, !dbg !6033

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6033
  br label %cond.end339, !dbg !6033

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6033
  br label %cond.end341, !dbg !6033

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6033
  br label %cond.end343, !dbg !6033

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6033
  br label %cond.end345, !dbg !6033

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6033
  br label %cond.end347, !dbg !6033

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6033
  br label %cond.end349, !dbg !6033

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6033
  br label %cond.end351, !dbg !6033

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6033
  br label %cond.end353, !dbg !6033

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6033
  br label %cond.end355, !dbg !6033

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6033
  br label %cond.end357, !dbg !6033

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6033
  br label %cond.end359, !dbg !6033

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6033
  br label %cond.end361, !dbg !6033

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6033
  br label %cond.end363, !dbg !6033

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6033
  br label %cond.end365, !dbg !6033

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6033
  br label %cond.end367, !dbg !6033

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6033
  br label %cond.end369, !dbg !6033

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6033
  br label %cond.end371, !dbg !6033

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6033
  br label %cond.end373, !dbg !6033

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6033
  br label %cond.end375, !dbg !6033

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6033
  br label %cond.end377, !dbg !6033

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6033
  br label %cond.end379, !dbg !6033

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6033
  br label %cond.end381, !dbg !6033

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6033
  br label %cond.end383, !dbg !6033

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6033
  br label %cond.end385, !dbg !6033

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6033
  br label %cond.end387, !dbg !6033

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6033
  br label %cond.end389, !dbg !6033

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6033
  br label %cond.end391, !dbg !6033

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6033
  br label %cond.end393, !dbg !6033

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6033
  br label %cond.end395, !dbg !6033

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6033
  br label %cond.end397, !dbg !6033

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6033
  br label %cond.end399, !dbg !6033

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6033
  br label %cond.end401, !dbg !6033

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6033
  br label %cond.end403, !dbg !6033

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6033
  br label %cond.end405, !dbg !6033

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6033
  br label %cond.end407, !dbg !6033

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6033
  br label %cond.end409, !dbg !6033

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6033
  br label %cond.end411, !dbg !6033

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6033
  br label %cond.end413, !dbg !6033

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6033
  br label %cond.end415, !dbg !6033

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6033
  br label %cond.end417, !dbg !6033

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6033
  br label %cond.end419, !dbg !6033

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6033
  br label %cond.end421, !dbg !6033

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6033
  br label %cond.end423, !dbg !6033

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6033
  br label %cond.end425, !dbg !6033

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6033
  br label %cond.end427, !dbg !6033

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6033
  br label %cond.end429, !dbg !6033

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6033
  br label %cond.end431, !dbg !6033

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6033
  br label %cond.end433, !dbg !6033

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6033
  br label %cond.end435, !dbg !6033

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6033
  br label %cond.end437, !dbg !6033

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6033
  br label %cond.end440, !dbg !6033

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6033

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6033
  br label %cond.end444, !dbg !6033

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6033
  %sub443 = sub i64 %72, 1, !dbg !6033
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !6033
  br label %cond.end444, !dbg !6033

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6033
  %sub446 = sub i32 %cond445, 12, !dbg !6034
  %add = add i32 %sub446, 1, !dbg !6035
  store i32 %add, i32* %retval, align 4, !dbg !6036
  br label %return, !dbg !6036

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6037
  %dec = add i64 %73, -1, !dbg !6037
  store i64 %dec, i64* %size.addr, align 8, !dbg !6037
  %74 = load i64, i64* %size.addr, align 8, !dbg !6038
  %shr = lshr i64 %74, 12, !dbg !6038
  store i64 %shr, i64* %size.addr, align 8, !dbg !6038
  %75 = load i64, i64* %size.addr, align 8, !dbg !6039
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6016
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6040
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6041
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !6040, !srcloc !6042
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6040
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6043
  %add.i = add i32 %79, 1, !dbg !6044
  store i32 %add.i, i32* %retval, align 4, !dbg !6045
  br label %return, !dbg !6045

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6046
  ret i32 %80, !dbg !6046
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !6047 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6008, metadata !DIExpression()), !dbg !6051
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6015, metadata !DIExpression()), !dbg !6053
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6054, metadata !DIExpression()), !dbg !6055
  %0 = load i64, i64* %n.addr, align 8, !dbg !6056
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6053
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6057
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6058
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !6057, !srcloc !6042
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6057
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6059
  %add.i = add i32 %4, 1, !dbg !6060
  %sub = sub i32 %add.i, 1, !dbg !6061
  ret i32 %sub, !dbg !6062
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !6063 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6067, metadata !DIExpression()), !dbg !6068
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6069, metadata !DIExpression()), !dbg !6070
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6071, metadata !DIExpression()), !dbg !6072
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6073, metadata !DIExpression()), !dbg !6074
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6075
  ret i8* %0, !dbg !6076
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !6077 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6081, metadata !DIExpression()), !dbg !6082
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6083, metadata !DIExpression()), !dbg !6084
  ret i1 true, !dbg !6085
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !6086 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6090, metadata !DIExpression()), !dbg !6091
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6092, metadata !DIExpression()), !dbg !6093
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !6094, metadata !DIExpression()), !dbg !6095
  ret void, !dbg !6096
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @appledisplay_bl_update_status(%struct.backlight_device* %bd) #2 !dbg !6097 {
entry:
  %retval = alloca i32, align 4
  %bd.addr = alloca %struct.backlight_device*, align 8
  %pdata = alloca %struct.appledisplay*, align 8
  %retval1 = alloca i32, align 4
  store %struct.backlight_device* %bd, %struct.backlight_device** %bd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bd.addr, metadata !6098, metadata !DIExpression()), !dbg !6099
  call void @llvm.dbg.declare(metadata %struct.appledisplay** %pdata, metadata !6100, metadata !DIExpression()), !dbg !6101
  %0 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !6102
  %call = call i8* @bl_get_data(%struct.backlight_device* %0) #9, !dbg !6103
  %1 = bitcast i8* %call to %struct.appledisplay*, !dbg !6103
  store %struct.appledisplay* %1, %struct.appledisplay** %pdata, align 8, !dbg !6101
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !6104, metadata !DIExpression()), !dbg !6105
  %2 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !6106
  %sysfslock = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %2, i32 0, i32 7, !dbg !6107
  call void @mutex_lock(%struct.mutex* %sysfslock) #9, !dbg !6108
  %3 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !6109
  %msgdata = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %3, i32 0, i32 4, !dbg !6110
  %4 = load i8*, i8** %msgdata, align 8, !dbg !6110
  %arrayidx = getelementptr i8, i8* %4, i64 0, !dbg !6109
  store i8 16, i8* %arrayidx, align 1, !dbg !6111
  %5 = load %struct.backlight_device*, %struct.backlight_device** %bd.addr, align 8, !dbg !6112
  %props = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %5, i32 0, i32 0, !dbg !6113
  %brightness = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %props, i32 0, i32 0, !dbg !6114
  %6 = load i32, i32* %brightness, align 8, !dbg !6114
  %conv = trunc i32 %6 to i8, !dbg !6112
  %7 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !6115
  %msgdata2 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %7, i32 0, i32 4, !dbg !6116
  %8 = load i8*, i8** %msgdata2, align 8, !dbg !6116
  %arrayidx3 = getelementptr i8, i8* %8, i64 1, !dbg !6115
  store i8 %conv, i8* %arrayidx3, align 1, !dbg !6117
  %9 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !6118
  %udev = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %9, i32 0, i32 0, !dbg !6119
  %10 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !6119
  %11 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !6120
  %udev4 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %11, i32 0, i32 0, !dbg !6120
  %12 = load %struct.usb_device*, %struct.usb_device** %udev4, align 8, !dbg !6120
  %call5 = call i32 @__create_pipe(%struct.usb_device* %12, i32 0) #9, !dbg !6120
  %or = or i32 -2147483648, %call5, !dbg !6120
  %13 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !6121
  %msgdata6 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %13, i32 0, i32 4, !dbg !6122
  %14 = load i8*, i8** %msgdata6, align 8, !dbg !6122
  %call7 = call i32 @usb_control_msg(%struct.usb_device* %10, i32 %or, i8 zeroext 9, i8 zeroext 33, i16 zeroext 784, i16 zeroext 0, i8* %14, i16 zeroext 2, i32 250) #9, !dbg !6123
  store i32 %call7, i32* %retval1, align 4, !dbg !6124
  %15 = load %struct.appledisplay*, %struct.appledisplay** %pdata, align 8, !dbg !6125
  %sysfslock8 = getelementptr inbounds %struct.appledisplay, %struct.appledisplay* %15, i32 0, i32 7, !dbg !6126
  call void @mutex_unlock(%struct.mutex* %sysfslock8) #9, !dbg !6127
  %16 = load i32, i32* %retval1, align 4, !dbg !6128
  %cmp = icmp slt i32 %16, 0, !dbg !6130
  br i1 %cmp, label %if.then, label %if.else, !dbg !6131

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %retval1, align 4, !dbg !6132
  store i32 %17, i32* %retval, align 4, !dbg !6133
  br label %return, !dbg !6133

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6134
  br label %return, !dbg !6134

return:                                           ; preds = %if.else, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !6135
  ret i32 %18, !dbg !6135
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @bl_get_data(%struct.backlight_device* %bl_dev) #2 !dbg !6136 {
entry:
  %bl_dev.addr = alloca %struct.backlight_device*, align 8
  store %struct.backlight_device* %bl_dev, %struct.backlight_device** %bl_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.backlight_device** %bl_dev.addr, metadata !6139, metadata !DIExpression()), !dbg !6140
  %0 = load %struct.backlight_device*, %struct.backlight_device** %bl_dev.addr, align 8, !dbg !6141
  %dev = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %0, i32 0, i32 6, !dbg !6142
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !6143
  ret i8* %call, !dbg !6144
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i8 zeroext, i8 zeroext, i16 zeroext, i16 zeroext, i8*, i16 zeroext, i32) #1

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !6145 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6148, metadata !DIExpression()), !dbg !6149
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6150
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6151
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6151
  ret i8* %1, !dbg !6152
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !6153 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6156, metadata !DIExpression()), !dbg !6157
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6158, metadata !DIExpression()), !dbg !6159
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6160
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6161
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !6162
  store i8* %0, i8** %driver_data, align 8, !dbg !6163
  ret void, !dbg !6164
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_get_intfdata(%struct.usb_interface* %intf) #2 !dbg !6165 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !6168, metadata !DIExpression()), !dbg !6169
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !6170
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 7, !dbg !6171
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !6172
  ret i8* %call, !dbg !6173
}

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
!llvm.module.flags = !{!4894, !4895, !4896, !4897}
!llvm.ident = !{!4898}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_appledisplay_driver_init248", scope: !2, file: !3, line: 345, type: !204, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !197, globals: !4797, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/misc/appledisplay.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !20, !26, !31, !37, !44, !50, !59, !67, !73, !79, !86, !94, !100, !114, !121, !126, !138, !147, !152, !185, !192}
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
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "backlight_type", file: !115, line: 40, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/backlight.h", directory: "/home/lizy2001/genbc/linux")
!116 = !{!117, !118, !119, !120}
!117 = !DIEnumerator(name: "BACKLIGHT_RAW", value: 1, isUnsigned: true)
!118 = !DIEnumerator(name: "BACKLIGHT_PLATFORM", value: 2, isUnsigned: true)
!119 = !DIEnumerator(name: "BACKLIGHT_FIRMWARE", value: 3, isUnsigned: true)
!120 = !DIEnumerator(name: "BACKLIGHT_TYPE_MAX", value: 4, isUnsigned: true)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "backlight_scale", file: !115, line: 90, baseType: !7, size: 32, elements: !122)
!122 = !{!123, !124, !125}
!123 = !DIEnumerator(name: "BACKLIGHT_SCALE_UNKNOWN", value: 0, isUnsigned: true)
!124 = !DIEnumerator(name: "BACKLIGHT_SCALE_LINEAR", value: 1, isUnsigned: true)
!125 = !DIEnumerator(name: "BACKLIGHT_SCALE_NON_LINEAR", value: 2, isUnsigned: true)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !127, line: 1156, baseType: !7, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137}
!129 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!130 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!131 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!132 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!133 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!134 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!135 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!136 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!137 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !127, line: 1146, baseType: !7, size: 32, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145, !146}
!140 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!141 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!142 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!143 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!144 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!145 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!146 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_removable", file: !6, line: 476, baseType: !7, size: 32, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE_UNKNOWN", value: 0, isUnsigned: true)
!150 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE", value: 1, isUnsigned: true)
!151 = !DIEnumerator(name: "USB_DEVICE_FIXED", value: 2, isUnsigned: true)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !153, line: 30, baseType: !154, size: 64, elements: !155)
!153 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!154 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184}
!156 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!157 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!158 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!159 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!160 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!161 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!162 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!163 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!164 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!165 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!166 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!167 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!168 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!169 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!170 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!171 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!172 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!173 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!174 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!175 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!176 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!177 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!178 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!179 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!180 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!181 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!182 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!183 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!184 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !186, line: 305, baseType: !7, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!187 = !{!188, !189, !190, !191}
!188 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!189 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!190 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!191 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !193, line: 10, baseType: !7, size: 32, elements: !194)
!193 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!194 = !{!195, !196}
!195 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!196 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!197 = !{!198, !201, !203, !204, !205, !4266, !4268, !209, !154}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !200, line: 76, flags: DIFlagFwdDecl)
!200 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !202, line: 148, baseType: !7)
!202 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!203 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !6, line: 631, size: 10624, elements: !207)
!207 = !{!208, !210, !215, !220, !221, !222, !223, !224, !227, !228, !232, !233, !4007, !4048, !4049, !4066, !4127, !4209, !4210, !4212, !4213, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4248, !4249, !4250, !4255, !4262, !4263, !4264, !4265}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !206, file: !6, line: 632, baseType: !209, size: 32)
!209 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !206, file: !6, line: 633, baseType: !211, size: 128, offset: 32)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 128, elements: !213)
!212 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!213 = !{!214}
!214 = !DISubrange(count: 16)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !206, file: !6, line: 634, baseType: !216, size: 32, offset: 160)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !217, line: 21, baseType: !218)
!217 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !219, line: 27, baseType: !7)
!219 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!220 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !206, file: !6, line: 635, baseType: !126, size: 32, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !206, file: !6, line: 636, baseType: !138, size: 32, offset: 224)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !206, file: !6, line: 637, baseType: !7, size: 32, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !206, file: !6, line: 638, baseType: !7, size: 32, offset: 288)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !206, file: !6, line: 640, baseType: !225, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !6, line: 474, flags: DIFlagFwdDecl)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !206, file: !6, line: 641, baseType: !209, size: 32, offset: 384)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !206, file: !6, line: 643, baseType: !229, size: 64, offset: 416)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 2)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !206, file: !6, line: 645, baseType: !205, size: 64, offset: 512)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !206, file: !6, line: 646, baseType: !234, size: 64, offset: 576)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !6, line: 424, size: 960, elements: !236)
!236 = !{!237, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !4001, !4002, !4003, !4004, !4005, !4006}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !235, file: !6, line: 425, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !80, line: 461, size: 5568, elements: !240)
!240 = !{!241, !3438, !3439, !3442, !3443, !3494, !3585, !3586, !3587, !3588, !3589, !3598, !3703, !3716, !3911, !3912, !3916, !3918, !3919, !3920, !3924, !3930, !3931, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3972, !3973, !3974, !3977, !3980, !3981, !3982, !3983}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !239, file: !80, line: 462, baseType: !242, size: 512)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !243, line: 64, size: 512, elements: !244)
!243 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!244 = !{!245, !248, !254, !256, !316, !3299, !3432, !3433, !3434, !3435, !3436, !3437}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !242, file: !243, line: 65, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !242, file: !243, line: 66, baseType: !249, size: 128, offset: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !202, line: 178, size: 128, elements: !250)
!250 = !{!251, !253}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !249, file: !202, line: 179, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !249, file: !202, line: 179, baseType: !252, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !242, file: !243, line: 67, baseType: !255, size: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !242, file: !243, line: 68, baseType: !257, size: 64, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !243, line: 192, size: 704, elements: !259)
!259 = !{!260, !261, !277, !278}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !258, file: !243, line: 193, baseType: !249, size: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !258, file: !243, line: 194, baseType: !262, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !263, line: 83, baseType: !264)
!263 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !263, line: 71, elements: !265)
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, scope: !264, file: !263, line: 72, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !264, file: !263, line: 72, elements: !268)
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !267, file: !263, line: 73, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !263, line: 20, elements: !271)
!271 = !{!272}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !270, file: !263, line: 21, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !274, line: 25, baseType: !275)
!274 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !274, line: 25, elements: !276)
!276 = !{}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !258, file: !243, line: 195, baseType: !242, size: 512, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !258, file: !243, line: 196, baseType: !279, size: 64, offset: 640)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !243, line: 156, size: 192, elements: !282)
!282 = !{!283, !288, !293}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !281, file: !243, line: 157, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!209, !257, !255}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !281, file: !243, line: 158, baseType: !289, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!246, !257, !255}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !281, file: !243, line: 159, baseType: !294, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!209, !257, !255, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !243, line: 148, size: 20736, elements: !300)
!300 = !{!301, !306, !310, !311, !315}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !299, file: !243, line: 149, baseType: !302, size: 192)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 192, elements: !304)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!304 = !{!305}
!305 = !DISubrange(count: 3)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !299, file: !243, line: 150, baseType: !307, size: 4096, offset: 192)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 4096, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !299, file: !243, line: 151, baseType: !209, size: 32, offset: 4288)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !299, file: !243, line: 152, baseType: !312, size: 16384, offset: 4320)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 16384, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 2048)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !299, file: !243, line: 153, baseType: !209, size: 32, offset: 20704)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !242, file: !243, line: 69, baseType: !317, size: 64, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !243, line: 138, size: 448, elements: !319)
!319 = !{!320, !324, !352, !354, !3261, !3289, !3293}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !318, file: !243, line: 139, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !255}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !318, file: !243, line: 140, baseType: !325, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !328, line: 230, size: 128, elements: !329)
!328 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!329 = !{!330, !345}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !327, file: !328, line: 231, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!334, !255, !338, !303}
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !202, line: 60, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !336, line: 73, baseType: !337)
!336 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !336, line: 15, baseType: !154)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !328, line: 30, size: 128, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !339, file: !328, line: 31, baseType: !246, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !339, file: !328, line: 32, baseType: !343, size: 16, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !202, line: 19, baseType: !344)
!344 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !327, file: !328, line: 232, baseType: !346, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!334, !255, !338, !246, !349}
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !202, line: 55, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !336, line: 72, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !336, line: 16, baseType: !203)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !318, file: !243, line: 141, baseType: !353, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !318, file: !243, line: 142, baseType: !355, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !328, line: 84, size: 320, elements: !359)
!359 = !{!360, !361, !365, !3258, !3259}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !358, file: !328, line: 85, baseType: !246, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !358, file: !328, line: 86, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!343, !255, !338, !209}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !358, file: !328, line: 88, baseType: !366, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!343, !255, !369, !209}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !328, line: 168, size: 448, elements: !371)
!371 = !{!372, !373, !374, !375, !3253, !3254}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !370, file: !328, line: 169, baseType: !339, size: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !370, file: !328, line: 170, baseType: !349, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !370, file: !328, line: 171, baseType: !204, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !370, file: !328, line: 172, baseType: !376, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!334, !379, !255, !369, !303, !554, !349}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !51, line: 916, size: 1856, align: 32, elements: !381)
!381 = !{!382, !400, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3236, !3237, !3246, !3247, !3248, !3249, !3250, !3251, !3252}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !380, file: !51, line: 920, baseType: !383, size: 128)
!383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !51, line: 917, size: 128, elements: !384)
!384 = !{!385, !391}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !383, file: !51, line: 918, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !387, line: 58, size: 64, elements: !388)
!387 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !386, file: !387, line: 59, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !383, file: !51, line: 919, baseType: !392, size: 128, align: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !202, line: 216, size: 128, align: 64, elements: !393)
!393 = !{!394, !396}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !392, file: !202, line: 217, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !392, file: !202, line: 218, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !395}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !380, file: !51, line: 921, baseType: !401, size: 128, offset: 128)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !402, line: 8, size: 128, elements: !403)
!402 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!403 = !{!404, !408}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !401, file: !402, line: 9, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !407, line: 18, flags: DIFlagFwdDecl)
!407 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!408 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !401, file: !402, line: 10, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !407, line: 89, size: 1536, elements: !411)
!411 = !{!412, !413, !423, !431, !432, !451, !3186, !3188, !3200, !3201, !3202, !3203, !3204, !3210, !3211, !3212}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !410, file: !407, line: 91, baseType: !7, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !410, file: !407, line: 92, baseType: !414, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !415, line: 277, baseType: !416)
!415 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !415, line: 277, size: 32, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !416, file: !415, line: 277, baseType: !419, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !415, line: 70, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !415, line: 65, size: 32, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !420, file: !415, line: 66, baseType: !7, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !410, file: !407, line: 93, baseType: !424, size: 128, offset: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !425, line: 38, size: 128, elements: !426)
!425 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!426 = !{!427, !429}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !424, file: !425, line: 39, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !424, file: !425, line: 39, baseType: !430, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !410, file: !407, line: 94, baseType: !409, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !410, file: !407, line: 95, baseType: !433, size: 128, offset: 256)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !407, line: 47, size: 128, elements: !434)
!434 = !{!435, !447}
!435 = !DIDerivedType(tag: DW_TAG_member, scope: !433, file: !407, line: 48, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !433, file: !407, line: 48, size: 64, elements: !437)
!437 = !{!438, !443}
!438 = !DIDerivedType(tag: DW_TAG_member, scope: !436, file: !407, line: 49, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !436, file: !407, line: 49, size: 64, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !439, file: !407, line: 50, baseType: !216, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !439, file: !407, line: 50, baseType: !216, size: 32, offset: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !436, file: !407, line: 52, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !217, line: 23, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !219, line: 31, baseType: !446)
!446 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !433, file: !407, line: 54, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!450 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !410, file: !407, line: 96, baseType: !452, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !51, line: 610, size: 4224, elements: !454)
!454 = !{!455, !456, !457, !465, !472, !473, !621, !2897, !2898, !2899, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !3162, !3170, !3171, !3172, !3182, !3183, !3184, !3185}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !453, file: !51, line: 611, baseType: !343, size: 16)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !453, file: !51, line: 612, baseType: !344, size: 16, offset: 16)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !453, file: !51, line: 613, baseType: !458, size: 32, offset: 32)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !459, line: 23, baseType: !460)
!459 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !459, line: 21, size: 32, elements: !461)
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !460, file: !459, line: 22, baseType: !463, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !202, line: 32, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !336, line: 49, baseType: !7)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !453, file: !51, line: 614, baseType: !466, size: 32, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !459, line: 28, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !459, line: 26, size: 32, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !467, file: !459, line: 27, baseType: !470, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !202, line: 33, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !336, line: 50, baseType: !7)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !453, file: !51, line: 615, baseType: !7, size: 32, offset: 96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !453, file: !51, line: 622, baseType: !474, size: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !51, line: 1864, size: 1536, align: 512, elements: !477)
!477 = !{!478, !482, !495, !499, !505, !509, !515, !519, !523, !527, !531, !532, !538, !542, !568, !597, !601, !607, !612, !616, !617}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !476, file: !51, line: 1865, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!409, !452, !409, !7}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !476, file: !51, line: 1866, baseType: !483, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!246, !409, !452, !486}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !488, line: 10, size: 128, elements: !489)
!488 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!489 = !{!490, !494}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !487, file: !488, line: 11, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !204}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !487, file: !488, line: 12, baseType: !204, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !476, file: !51, line: 1867, baseType: !496, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!209, !452, !209}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !476, file: !51, line: 1868, baseType: !500, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!503, !452, !209}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !51, line: 581, flags: DIFlagFwdDecl)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !476, file: !51, line: 1870, baseType: !506, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!209, !409, !303, !209}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !476, file: !51, line: 1872, baseType: !510, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!209, !452, !409, !343, !513}
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !202, line: 30, baseType: !514)
!514 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !476, file: !51, line: 1873, baseType: !516, size: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!209, !409, !452, !409}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !476, file: !51, line: 1874, baseType: !520, size: 64, offset: 448)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!209, !452, !409}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !476, file: !51, line: 1875, baseType: !524, size: 64, offset: 512)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!209, !452, !409, !246}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !476, file: !51, line: 1876, baseType: !528, size: 64, offset: 576)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!209, !452, !409, !343}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !476, file: !51, line: 1877, baseType: !520, size: 64, offset: 640)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !476, file: !51, line: 1878, baseType: !533, size: 64, offset: 704)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!209, !452, !409, !343, !536}
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !202, line: 16, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !202, line: 13, baseType: !216)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !476, file: !51, line: 1879, baseType: !539, size: 64, offset: 768)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!209, !452, !409, !452, !409, !7}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !476, file: !51, line: 1881, baseType: !543, size: 64, offset: 832)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!209, !409, !546}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !51, line: 219, size: 640, elements: !548)
!548 = !{!549, !550, !551, !552, !553, !557, !565, !566, !567}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !547, file: !51, line: 220, baseType: !7, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !547, file: !51, line: 221, baseType: !343, size: 16, offset: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !547, file: !51, line: 222, baseType: !458, size: 32, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !547, file: !51, line: 223, baseType: !466, size: 32, offset: 96)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !547, file: !51, line: 224, baseType: !554, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !202, line: 46, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !336, line: 88, baseType: !556)
!556 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !547, file: !51, line: 225, baseType: !558, size: 128, offset: 192)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !559, line: 13, size: 128, elements: !560)
!559 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!560 = !{!561, !564}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !558, file: !559, line: 14, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !559, line: 8, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !219, line: 30, baseType: !556)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !558, file: !559, line: 15, baseType: !154, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !547, file: !51, line: 226, baseType: !558, size: 128, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !547, file: !51, line: 227, baseType: !558, size: 128, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !547, file: !51, line: 234, baseType: !379, size: 64, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !476, file: !51, line: 1882, baseType: !569, size: 64, offset: 896)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!209, !572, !574, !216, !7}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !576, line: 22, size: 1152, elements: !577)
!576 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!577 = !{!578, !579, !580, !581, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !575, file: !576, line: 23, baseType: !216, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !575, file: !576, line: 24, baseType: !343, size: 16, offset: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !575, file: !576, line: 25, baseType: !7, size: 32, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !575, file: !576, line: 26, baseType: !582, size: 32, offset: 96)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !202, line: 104, baseType: !216)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !575, file: !576, line: 27, baseType: !444, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !575, file: !576, line: 28, baseType: !444, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !575, file: !576, line: 37, baseType: !444, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !575, file: !576, line: 38, baseType: !536, size: 32, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !575, file: !576, line: 39, baseType: !536, size: 32, offset: 352)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !575, file: !576, line: 40, baseType: !458, size: 32, offset: 384)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !575, file: !576, line: 41, baseType: !466, size: 32, offset: 416)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !575, file: !576, line: 42, baseType: !554, size: 64, offset: 448)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !575, file: !576, line: 43, baseType: !558, size: 128, offset: 512)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !575, file: !576, line: 44, baseType: !558, size: 128, offset: 640)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !575, file: !576, line: 45, baseType: !558, size: 128, offset: 768)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !575, file: !576, line: 46, baseType: !558, size: 128, offset: 896)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !575, file: !576, line: 47, baseType: !444, size: 64, offset: 1024)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !575, file: !576, line: 48, baseType: !444, size: 64, offset: 1088)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !476, file: !51, line: 1883, baseType: !598, size: 64, offset: 960)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!334, !409, !303, !349}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !476, file: !51, line: 1884, baseType: !602, size: 64, offset: 1024)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!209, !452, !605, !444, !444}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !51, line: 50, flags: DIFlagFwdDecl)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !476, file: !51, line: 1886, baseType: !608, size: 64, offset: 1088)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!209, !452, !611, !209}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !476, file: !51, line: 1887, baseType: !613, size: 64, offset: 1152)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!209, !452, !409, !379, !7, !343}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !476, file: !51, line: 1890, baseType: !528, size: 64, offset: 1216)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !476, file: !51, line: 1891, baseType: !618, size: 64, offset: 1280)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!209, !452, !503, !209}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !453, file: !51, line: 623, baseType: !622, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !51, line: 1416, size: 9472, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630, !677, !2504, !2586, !2669, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2685, !2689, !2690, !2693, !2694, !2697, !2698, !2699, !2740, !2767, !2768, !2769, !2770, !2771, !2772, !2775, !2777, !2784, !2785, !2787, !2788, !2789, !2848, !2849, !2864, !2865, !2866, !2867, !2868, !2871, !2872, !2873, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !623, file: !51, line: 1417, baseType: !249, size: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !623, file: !51, line: 1418, baseType: !536, size: 32, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !623, file: !51, line: 1419, baseType: !450, size: 8, offset: 160)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !623, file: !51, line: 1420, baseType: !203, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !623, file: !51, line: 1421, baseType: !554, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !623, file: !51, line: 1422, baseType: !631, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !51, line: 2228, size: 576, elements: !633)
!633 = !{!634, !635, !636, !643, !647, !651, !655, !656, !657, !667, !670, !671, !672, !674, !675, !676}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !632, file: !51, line: 2229, baseType: !246, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !632, file: !51, line: 2230, baseType: !209, size: 32, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !632, file: !51, line: 2238, baseType: !637, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!209, !640}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !642, line: 28, flags: DIFlagFwdDecl)
!642 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!643 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !632, file: !51, line: 2239, baseType: !644, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !51, line: 70, flags: DIFlagFwdDecl)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !632, file: !51, line: 2240, baseType: !648, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!409, !631, !209, !246, !204}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !632, file: !51, line: 2242, baseType: !652, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !622}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !632, file: !51, line: 2243, baseType: !198, size: 64, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !632, file: !51, line: 2244, baseType: !631, size: 64, offset: 448)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !632, file: !51, line: 2245, baseType: !658, size: 64, offset: 512)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !202, line: 182, size: 64, elements: !659)
!659 = !{!660}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !658, file: !202, line: 183, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !202, line: 186, size: 128, elements: !663)
!663 = !{!664, !665}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !662, file: !202, line: 187, baseType: !661, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !662, file: !202, line: 187, baseType: !666, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !632, file: !51, line: 2247, baseType: !668, offset: 576)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !669, line: 187, elements: !276)
!669 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!670 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !632, file: !51, line: 2248, baseType: !668, offset: 576)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !632, file: !51, line: 2249, baseType: !668, offset: 576)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !632, file: !51, line: 2250, baseType: !673, offset: 576)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, elements: !304)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !632, file: !51, line: 2252, baseType: !668, offset: 576)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !632, file: !51, line: 2253, baseType: !668, offset: 576)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !632, file: !51, line: 2254, baseType: !668, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !623, file: !51, line: 1423, baseType: !678, size: 64, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !51, line: 1935, size: 1472, elements: !681)
!681 = !{!682, !686, !690, !691, !695, !701, !705, !706, !707, !711, !715, !716, !717, !718, !724, !729, !730, !737, !738, !739, !740, !2488, !2503}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !680, file: !51, line: 1936, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!452, !622}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !680, file: !51, line: 1937, baseType: !687, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !452}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !680, file: !51, line: 1938, baseType: !687, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !680, file: !51, line: 1940, baseType: !692, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !452, !209}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !680, file: !51, line: 1941, baseType: !696, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!209, !452, !699}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !51, line: 289, flags: DIFlagFwdDecl)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !680, file: !51, line: 1942, baseType: !702, size: 64, offset: 320)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!209, !452}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !680, file: !51, line: 1943, baseType: !687, size: 64, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !680, file: !51, line: 1944, baseType: !652, size: 64, offset: 448)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !680, file: !51, line: 1945, baseType: !708, size: 64, offset: 512)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!209, !622, !209}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !680, file: !51, line: 1946, baseType: !712, size: 64, offset: 576)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!209, !622}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !680, file: !51, line: 1947, baseType: !712, size: 64, offset: 640)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !680, file: !51, line: 1948, baseType: !712, size: 64, offset: 704)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !680, file: !51, line: 1949, baseType: !712, size: 64, offset: 768)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !680, file: !51, line: 1950, baseType: !719, size: 64, offset: 832)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!209, !409, !722}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !51, line: 57, flags: DIFlagFwdDecl)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !680, file: !51, line: 1951, baseType: !725, size: 64, offset: 896)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!209, !622, !728, !303}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !680, file: !51, line: 1952, baseType: !652, size: 64, offset: 960)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !680, file: !51, line: 1954, baseType: !731, size: 64, offset: 1024)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!209, !734, !409}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !736, line: 539, flags: DIFlagFwdDecl)
!736 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!737 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !680, file: !51, line: 1955, baseType: !731, size: 64, offset: 1088)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !680, file: !51, line: 1956, baseType: !731, size: 64, offset: 1152)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !680, file: !51, line: 1957, baseType: !731, size: 64, offset: 1216)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !680, file: !51, line: 1963, baseType: !741, size: 64, offset: 1280)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!209, !622, !744, !201}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !746, line: 68, size: 512, align: 128, elements: !747)
!746 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!747 = !{!748, !749, !2480, !2487}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !746, line: 69, baseType: !203, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, scope: !745, file: !746, line: 77, baseType: !750, size: 320, offset: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !745, file: !746, line: 77, size: 320, elements: !751)
!751 = !{!752, !939, !944, !972, !980, !986, !2411, !2479}
!752 = !DIDerivedType(tag: DW_TAG_member, scope: !750, file: !746, line: 78, baseType: !753, size: 320)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !750, file: !746, line: 78, size: 320, elements: !754)
!754 = !{!755, !756, !937, !938}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !753, file: !746, line: 84, baseType: !249, size: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !753, file: !746, line: 86, baseType: !757, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !51, line: 451, size: 1216, align: 64, elements: !759)
!759 = !{!760, !761, !768, !769, !774, !789, !805, !806, !807, !808, !930, !931, !934, !935, !936}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !758, file: !51, line: 452, baseType: !452, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !758, file: !51, line: 453, baseType: !762, size: 128, offset: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !763, line: 292, size: 128, elements: !764)
!763 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!764 = !{!765, !766, !767}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !762, file: !763, line: 293, baseType: !262)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !762, file: !763, line: 295, baseType: !201, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !762, file: !763, line: 296, baseType: !204, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !758, file: !51, line: 454, baseType: !201, size: 32, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !758, file: !51, line: 455, baseType: !770, size: 32, offset: 224)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !202, line: 168, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !202, line: 166, size: 32, elements: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !771, file: !202, line: 167, baseType: !209, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !758, file: !51, line: 460, baseType: !775, size: 128, offset: 256)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !776, line: 125, size: 128, elements: !777)
!776 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!777 = !{!778, !788}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !775, file: !776, line: 126, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !776, line: 31, size: 64, elements: !780)
!780 = !{!781}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !779, file: !776, line: 32, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !776, line: 24, size: 192, align: 64, elements: !784)
!784 = !{!785, !786, !787}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !783, file: !776, line: 25, baseType: !203, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !783, file: !776, line: 26, baseType: !782, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !783, file: !776, line: 27, baseType: !782, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !775, file: !776, line: 127, baseType: !782, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !758, file: !51, line: 461, baseType: !790, size: 256, offset: 384)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !791, line: 35, size: 256, elements: !792)
!791 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!792 = !{!793, !801, !802, !804}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !790, file: !791, line: 36, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !795, line: 13, baseType: !796)
!795 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !202, line: 175, baseType: !797)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !202, line: 173, size: 64, elements: !798)
!798 = !{!799}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !797, file: !202, line: 174, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !217, line: 22, baseType: !563)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !790, file: !791, line: 42, baseType: !794, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !790, file: !791, line: 46, baseType: !803, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !263, line: 29, baseType: !270)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !790, file: !791, line: 47, baseType: !249, size: 128, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !758, file: !51, line: 462, baseType: !203, size: 64, offset: 640)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !758, file: !51, line: 463, baseType: !203, size: 64, offset: 704)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !758, file: !51, line: 464, baseType: !203, size: 64, offset: 768)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !758, file: !51, line: 465, baseType: !809, size: 64, offset: 832)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !811)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !51, line: 367, size: 1408, elements: !812)
!812 = !{!813, !817, !821, !825, !829, !833, !839, !845, !849, !854, !858, !862, !866, !894, !898, !904, !905, !906, !910, !915, !919, !926}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !811, file: !51, line: 368, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!209, !744, !699}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !811, file: !51, line: 369, baseType: !818, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!209, !379, !744}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !811, file: !51, line: 372, baseType: !822, size: 64, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!209, !757, !699}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !811, file: !51, line: 375, baseType: !826, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!209, !744}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !811, file: !51, line: 381, baseType: !830, size: 64, offset: 256)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!209, !379, !757, !252, !7}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !811, file: !51, line: 383, baseType: !834, size: 64, offset: 320)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{null, !837}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !51, line: 290, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !811, file: !51, line: 385, baseType: !840, size: 64, offset: 384)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!209, !379, !757, !554, !7, !7, !843, !844}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !811, file: !51, line: 388, baseType: !846, size: 64, offset: 448)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!209, !379, !757, !554, !7, !7, !744, !204}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !811, file: !51, line: 393, baseType: !850, size: 64, offset: 512)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!853, !757, !853}
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !202, line: 125, baseType: !444)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !811, file: !51, line: 394, baseType: !855, size: 64, offset: 576)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !744, !7, !7}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !811, file: !51, line: 395, baseType: !859, size: 64, offset: 640)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!209, !744, !201}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !811, file: !51, line: 396, baseType: !863, size: 64, offset: 704)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !744}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !811, file: !51, line: 397, baseType: !867, size: 64, offset: 768)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!334, !870, !892}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !51, line: 320, size: 384, elements: !872)
!872 = !{!873, !874, !875, !879, !880, !881, !884, !885}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !871, file: !51, line: 321, baseType: !379, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !871, file: !51, line: 326, baseType: !554, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !871, file: !51, line: 327, baseType: !876, size: 64, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{null, !870, !154, !154}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !871, file: !51, line: 328, baseType: !204, size: 64, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !871, file: !51, line: 329, baseType: !209, size: 32, offset: 256)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !871, file: !51, line: 330, baseType: !882, size: 16, offset: 288)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !217, line: 19, baseType: !883)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !219, line: 24, baseType: !344)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !871, file: !51, line: 331, baseType: !882, size: 16, offset: 304)
!885 = !DIDerivedType(tag: DW_TAG_member, scope: !871, file: !51, line: 332, baseType: !886, size: 64, offset: 320)
!886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !871, file: !51, line: 332, size: 64, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !886, file: !51, line: 333, baseType: !7, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !886, file: !51, line: 334, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !51, line: 334, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !51, line: 64, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !811, file: !51, line: 402, baseType: !895, size: 64, offset: 832)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!209, !757, !744, !744, !13}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !811, file: !51, line: 404, baseType: !899, size: 64, offset: 896)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!513, !744, !902}
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !903, line: 305, baseType: !7)
!903 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!904 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !811, file: !51, line: 405, baseType: !863, size: 64, offset: 960)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !811, file: !51, line: 406, baseType: !826, size: 64, offset: 1024)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !811, file: !51, line: 407, baseType: !907, size: 64, offset: 1088)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!209, !744, !203, !203}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !811, file: !51, line: 409, baseType: !911, size: 64, offset: 1152)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{null, !744, !914, !914}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !811, file: !51, line: 410, baseType: !916, size: 64, offset: 1216)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!209, !757, !744}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !811, file: !51, line: 413, baseType: !920, size: 64, offset: 1280)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!209, !923, !379, !925}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !51, line: 61, flags: DIFlagFwdDecl)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !811, file: !51, line: 415, baseType: !927, size: 64, offset: 1344)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{null, !379}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !758, file: !51, line: 466, baseType: !203, size: 64, offset: 896)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !758, file: !51, line: 467, baseType: !932, size: 32, offset: 960)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !933, line: 8, baseType: !216)
!933 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!934 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !758, file: !51, line: 468, baseType: !262, offset: 992)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !758, file: !51, line: 469, baseType: !249, size: 128, offset: 1024)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !758, file: !51, line: 470, baseType: !204, size: 64, offset: 1152)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !753, file: !746, line: 87, baseType: !203, size: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !753, file: !746, line: 94, baseType: !203, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !750, file: !746, line: 96, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !750, file: !746, line: 96, size: 64, elements: !941)
!941 = !{!942}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !940, file: !746, line: 101, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !202, line: 143, baseType: !444)
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !750, file: !746, line: 103, baseType: !945, size: 320)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !750, file: !746, line: 103, size: 320, elements: !946)
!946 = !{!947, !957, !960, !961}
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !945, file: !746, line: 104, baseType: !948, size: 128)
!948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !945, file: !746, line: 104, size: 128, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !948, file: !746, line: 105, baseType: !249, size: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !948, file: !746, line: 106, baseType: !952, size: 128)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !948, file: !746, line: 106, size: 128, elements: !953)
!953 = !{!954, !955, !956}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !952, file: !746, line: 107, baseType: !744, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !952, file: !746, line: 109, baseType: !209, size: 32, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !952, file: !746, line: 110, baseType: !209, size: 32, offset: 96)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !945, file: !746, line: 117, baseType: !958, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !746, line: 117, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !945, file: !746, line: 119, baseType: !204, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !945, file: !746, line: 120, baseType: !962, size: 64, offset: 256)
!962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !945, file: !746, line: 120, size: 64, elements: !963)
!963 = !{!964, !965, !966}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !962, file: !746, line: 121, baseType: !204, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !962, file: !746, line: 122, baseType: !203, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !962, file: !746, line: 123, baseType: !967, size: 32)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !746, line: 123, size: 32, elements: !968)
!968 = !{!969, !970, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !967, file: !746, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !967, file: !746, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !967, file: !746, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !750, file: !746, line: 130, baseType: !973, size: 192)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !750, file: !746, line: 130, size: 192, elements: !974)
!974 = !{!975, !976, !977, !978, !979}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !973, file: !746, line: 131, baseType: !203, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !973, file: !746, line: 134, baseType: !450, size: 8, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !973, file: !746, line: 135, baseType: !450, size: 8, offset: 72)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !973, file: !746, line: 136, baseType: !770, size: 32, offset: 96)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !973, file: !746, line: 137, baseType: !7, size: 32, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !750, file: !746, line: 139, baseType: !981, size: 256)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !750, file: !746, line: 139, size: 256, elements: !982)
!982 = !{!983, !984, !985}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !981, file: !746, line: 140, baseType: !203, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !981, file: !746, line: 141, baseType: !770, size: 32, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !981, file: !746, line: 143, baseType: !249, size: 128, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, scope: !750, file: !746, line: 145, baseType: !987, size: 256)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !750, file: !746, line: 145, size: 256, elements: !988)
!988 = !{!989, !990, !992, !993, !2410}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !987, file: !746, line: 146, baseType: !203, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !987, file: !746, line: 147, baseType: !991, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !736, line: 509, baseType: !744)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !987, file: !746, line: 148, baseType: !203, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, scope: !987, file: !746, line: 149, baseType: !994, size: 64, offset: 192)
!994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !987, file: !746, line: 149, size: 64, elements: !995)
!995 = !{!996, !2409}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !994, file: !746, line: 150, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !746, line: 388, size: 7296, elements: !999)
!999 = !{!1000, !2405}
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !746, line: 389, baseType: !1001, size: 7296)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !746, line: 389, size: 7296, elements: !1002)
!1002 = !{!1003, !1121, !1122, !1123, !1127, !1128, !1129, !1130, !1131, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1172, !1180, !1183, !1229, !1230, !2389, !2390, !2393, !2394, !2395, !2398, !2399, !2400, !2403, !2404}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1001, file: !746, line: 390, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !746, line: 305, size: 1472, elements: !1006)
!1006 = !{!1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1021, !1022, !1027, !1028, !1031, !1115, !1116, !1117, !1118, !1119}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1005, file: !746, line: 308, baseType: !203, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1005, file: !746, line: 309, baseType: !203, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1005, file: !746, line: 313, baseType: !1004, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1005, file: !746, line: 313, baseType: !1004, size: 64, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1005, file: !746, line: 315, baseType: !783, size: 192, align: 64, offset: 256)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1005, file: !746, line: 323, baseType: !203, size: 64, offset: 448)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1005, file: !746, line: 327, baseType: !997, size: 64, offset: 512)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1005, file: !746, line: 333, baseType: !1015, size: 64, offset: 576)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !736, line: 284, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !736, line: 284, size: 64, elements: !1017)
!1017 = !{!1018}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1016, file: !736, line: 284, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1020, line: 19, baseType: !203)
!1020 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1005, file: !746, line: 334, baseType: !203, size: 64, offset: 640)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1005, file: !746, line: 343, baseType: !1023, size: 256, offset: 704)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !746, line: 340, size: 256, elements: !1024)
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1023, file: !746, line: 341, baseType: !783, size: 192, align: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1023, file: !746, line: 342, baseType: !203, size: 64, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1005, file: !746, line: 351, baseType: !249, size: 128, offset: 960)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1005, file: !746, line: 353, baseType: !1029, size: 64, offset: 1088)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !746, line: 353, flags: DIFlagFwdDecl)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1005, file: !746, line: 356, baseType: !1032, size: 64, offset: 1152)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1034)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !21, line: 557, size: 832, elements: !1035)
!1035 = !{!1036, !1040, !1041, !1045, !1049, !1089, !1093, !1097, !1101, !1102, !1103, !1107, !1111}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1034, file: !21, line: 558, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{null, !1004}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1034, file: !21, line: 559, baseType: !1037, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1034, file: !21, line: 560, baseType: !1042, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!209, !1004, !203}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1034, file: !21, line: 561, baseType: !1046, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!209, !1004}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1034, file: !21, line: 562, baseType: !1050, size: 64, offset: 256)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !746, line: 682, baseType: !7)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !21, line: 508, size: 768, elements: !1056)
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062, !1069, !1076, !1082, !1083, !1084, !1086, !1088}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1055, file: !21, line: 509, baseType: !1004, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1055, file: !21, line: 510, baseType: !7, size: 32, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1055, file: !21, line: 511, baseType: !201, size: 32, offset: 96)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1055, file: !21, line: 512, baseType: !203, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1055, file: !21, line: 513, baseType: !203, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1055, file: !21, line: 514, baseType: !1063, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !736, line: 385, baseType: !1065)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !736, line: 385, size: 64, elements: !1066)
!1066 = !{!1067}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1065, file: !736, line: 385, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1020, line: 15, baseType: !203)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1055, file: !21, line: 516, baseType: !1070, size: 64, offset: 320)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !736, line: 359, baseType: !1072)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !736, line: 359, size: 64, elements: !1073)
!1073 = !{!1074}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1072, file: !736, line: 359, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1020, line: 16, baseType: !203)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1055, file: !21, line: 519, baseType: !1077, size: 64, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1020, line: 21, baseType: !1078)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1020, line: 21, size: 64, elements: !1079)
!1079 = !{!1080}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1078, file: !1020, line: 21, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1020, line: 14, baseType: !203)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1055, file: !21, line: 521, baseType: !744, size: 64, offset: 448)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1055, file: !21, line: 522, baseType: !744, size: 64, offset: 512)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1055, file: !21, line: 528, baseType: !1085, size: 64, offset: 576)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1055, file: !21, line: 532, baseType: !1087, size: 64, offset: 640)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1055, file: !21, line: 536, baseType: !991, size: 64, offset: 704)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1034, file: !21, line: 563, baseType: !1090, size: 64, offset: 320)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!1053, !1054, !20}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1034, file: !21, line: 565, baseType: !1094, size: 64, offset: 384)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !1054, !203, !203}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1034, file: !21, line: 567, baseType: !1098, size: 64, offset: 448)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!203, !1004}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1034, file: !21, line: 571, baseType: !1050, size: 64, offset: 512)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1034, file: !21, line: 574, baseType: !1050, size: 64, offset: 576)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1034, file: !21, line: 579, baseType: !1104, size: 64, offset: 640)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!209, !1004, !203, !204, !209, !209}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1034, file: !21, line: 585, baseType: !1108, size: 64, offset: 704)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!246, !1004}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1034, file: !21, line: 615, baseType: !1112, size: 64, offset: 768)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!744, !1004, !203}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1005, file: !746, line: 359, baseType: !203, size: 64, offset: 1216)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1005, file: !746, line: 361, baseType: !379, size: 64, offset: 1280)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1005, file: !746, line: 362, baseType: !204, size: 64, offset: 1344)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1005, file: !746, line: 365, baseType: !794, size: 64, offset: 1408)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1005, file: !746, line: 373, baseType: !1120, offset: 1472)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !746, line: 296, elements: !276)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1001, file: !746, line: 391, baseType: !779, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1001, file: !746, line: 392, baseType: !444, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1001, file: !746, line: 394, baseType: !1124, size: 64, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!203, !379, !203, !203, !203, !203}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1001, file: !746, line: 398, baseType: !203, size: 64, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1001, file: !746, line: 399, baseType: !203, size: 64, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1001, file: !746, line: 405, baseType: !203, size: 64, offset: 384)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1001, file: !746, line: 406, baseType: !203, size: 64, offset: 448)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1001, file: !746, line: 407, baseType: !1132, size: 64, offset: 512)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !736, line: 286, baseType: !1134)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !736, line: 286, size: 64, elements: !1135)
!1135 = !{!1136}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1134, file: !736, line: 286, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1020, line: 18, baseType: !203)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1001, file: !746, line: 416, baseType: !770, size: 32, offset: 576)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1001, file: !746, line: 428, baseType: !770, size: 32, offset: 608)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1001, file: !746, line: 437, baseType: !770, size: 32, offset: 640)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1001, file: !746, line: 447, baseType: !770, size: 32, offset: 672)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1001, file: !746, line: 450, baseType: !794, size: 64, offset: 704)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1001, file: !746, line: 452, baseType: !209, size: 32, offset: 768)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1001, file: !746, line: 454, baseType: !262, offset: 800)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1001, file: !746, line: 457, baseType: !790, size: 256, offset: 832)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1001, file: !746, line: 459, baseType: !249, size: 128, offset: 1088)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1001, file: !746, line: 466, baseType: !203, size: 64, offset: 1216)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1001, file: !746, line: 467, baseType: !203, size: 64, offset: 1280)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1001, file: !746, line: 469, baseType: !203, size: 64, offset: 1344)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1001, file: !746, line: 470, baseType: !203, size: 64, offset: 1408)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1001, file: !746, line: 471, baseType: !796, size: 64, offset: 1472)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1001, file: !746, line: 472, baseType: !203, size: 64, offset: 1536)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1001, file: !746, line: 473, baseType: !203, size: 64, offset: 1600)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1001, file: !746, line: 474, baseType: !203, size: 64, offset: 1664)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1001, file: !746, line: 475, baseType: !203, size: 64, offset: 1728)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1001, file: !746, line: 477, baseType: !262, offset: 1792)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1001, file: !746, line: 478, baseType: !203, size: 64, offset: 1792)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1001, file: !746, line: 478, baseType: !203, size: 64, offset: 1856)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1001, file: !746, line: 478, baseType: !203, size: 64, offset: 1920)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1001, file: !746, line: 478, baseType: !203, size: 64, offset: 1984)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1001, file: !746, line: 479, baseType: !203, size: 64, offset: 2048)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1001, file: !746, line: 479, baseType: !203, size: 64, offset: 2112)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1001, file: !746, line: 479, baseType: !203, size: 64, offset: 2176)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1001, file: !746, line: 480, baseType: !203, size: 64, offset: 2240)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1001, file: !746, line: 480, baseType: !203, size: 64, offset: 2304)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1001, file: !746, line: 480, baseType: !203, size: 64, offset: 2368)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1001, file: !746, line: 480, baseType: !203, size: 64, offset: 2432)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1001, file: !746, line: 482, baseType: !1169, size: 2816, offset: 2496)
!1169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 2816, elements: !1170)
!1170 = !{!1171}
!1171 = !DISubrange(count: 44)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1001, file: !746, line: 488, baseType: !1173, size: 256, offset: 5312)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1174, line: 60, size: 256, elements: !1175)
!1174 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1175 = !{!1176}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1173, file: !1174, line: 61, baseType: !1177, size: 256)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, size: 256, elements: !1178)
!1178 = !{!1179}
!1179 = !DISubrange(count: 4)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1001, file: !746, line: 490, baseType: !1181, size: 64, offset: 5568)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !746, line: 490, flags: DIFlagFwdDecl)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1001, file: !746, line: 493, baseType: !1184, size: 896, offset: 5632)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1185, line: 53, baseType: !1186)
!1185 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1185, line: 13, size: 896, elements: !1187)
!1187 = !{!1188, !1189, !1190, !1191, !1194, !1195, !1202, !1203, !1223, !1224, !1225}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1186, file: !1185, line: 18, baseType: !444, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1186, file: !1185, line: 28, baseType: !796, size: 64, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1186, file: !1185, line: 31, baseType: !790, size: 256, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1186, file: !1185, line: 32, baseType: !1192, size: 64, offset: 384)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1185, line: 32, flags: DIFlagFwdDecl)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1186, file: !1185, line: 37, baseType: !344, size: 16, offset: 448)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1186, file: !1185, line: 40, baseType: !1196, size: 192, offset: 512)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1197, line: 53, size: 192, elements: !1198)
!1197 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1198 = !{!1199, !1200, !1201}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1196, file: !1197, line: 54, baseType: !794, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1196, file: !1197, line: 55, baseType: !262, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1196, file: !1197, line: 59, baseType: !249, size: 128, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1186, file: !1185, line: 41, baseType: !204, size: 64, offset: 704)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1186, file: !1185, line: 42, baseType: !1204, size: 64, offset: 768)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1206)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1207, line: 13, size: 896, elements: !1208)
!1207 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1208 = !{!1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1206, file: !1207, line: 14, baseType: !204, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1206, file: !1207, line: 15, baseType: !203, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1206, file: !1207, line: 17, baseType: !203, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1206, file: !1207, line: 17, baseType: !203, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1206, file: !1207, line: 19, baseType: !154, size: 64, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1206, file: !1207, line: 21, baseType: !154, size: 64, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1206, file: !1207, line: 22, baseType: !154, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1206, file: !1207, line: 23, baseType: !154, size: 64, offset: 448)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1206, file: !1207, line: 24, baseType: !154, size: 64, offset: 512)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1206, file: !1207, line: 25, baseType: !154, size: 64, offset: 576)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1206, file: !1207, line: 26, baseType: !154, size: 64, offset: 640)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1206, file: !1207, line: 27, baseType: !154, size: 64, offset: 704)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1206, file: !1207, line: 28, baseType: !154, size: 64, offset: 768)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1206, file: !1207, line: 29, baseType: !154, size: 64, offset: 832)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1186, file: !1185, line: 44, baseType: !770, size: 32, offset: 832)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1186, file: !1185, line: 50, baseType: !882, size: 16, offset: 864)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1186, file: !1185, line: 51, baseType: !1226, size: 16, offset: 880)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !217, line: 18, baseType: !1227)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !219, line: 23, baseType: !1228)
!1228 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1001, file: !746, line: 495, baseType: !203, size: 64, offset: 6528)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1001, file: !746, line: 497, baseType: !1231, size: 64, offset: 6592)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !746, line: 381, size: 384, elements: !1233)
!1233 = !{!1234, !1235, !2388}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1232, file: !746, line: 382, baseType: !770, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1232, file: !746, line: 383, baseType: !1236, size: 128, offset: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !746, line: 376, size: 128, elements: !1237)
!1237 = !{!1238, !2386}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1236, file: !746, line: 377, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1241, line: 640, size: 48640, elements: !1242)
!1241 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1242 = !{!1243, !1249, !1251, !1252, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1269, !1287, !1298, !1383, !1384, !1385, !1396, !1397, !1399, !1400, !1401, !1402, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1481, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1556, !1558, !1559, !1560, !1572, !1573, !1574, !1575, !1576, !1577, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1601, !1606, !1786, !1787, !1788, !1789, !1790, !1793, !1796, !1799, !1802, !1828, !1929, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1975, !1976, !1977, !1978, !1979, !1984, !1985, !1986, !1989, !1990, !1993, !1996, !1999, !2002, !2044, !2047, !2048, !2127, !2128, !2131, !2132, !2135, !2136, !2137, !2141, !2142, !2143, !2156, !2157, !2158, !2168, !2173, !2176, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1240, file: !1241, line: 646, baseType: !1244, size: 128)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1245, line: 56, size: 128, elements: !1246)
!1245 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1246 = !{!1247, !1248}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1244, file: !1245, line: 57, baseType: !203, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1244, file: !1245, line: 58, baseType: !216, size: 32, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1240, file: !1241, line: 649, baseType: !1250, size: 64, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !154)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1240, file: !1241, line: 657, baseType: !204, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1240, file: !1241, line: 658, baseType: !1253, size: 32, offset: 256)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1254, line: 113, baseType: !1255)
!1254 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1254, line: 111, size: 32, elements: !1256)
!1256 = !{!1257}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1255, file: !1254, line: 112, baseType: !770, size: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1240, file: !1241, line: 660, baseType: !7, size: 32, offset: 288)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1240, file: !1241, line: 661, baseType: !7, size: 32, offset: 320)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1240, file: !1241, line: 684, baseType: !209, size: 32, offset: 352)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1240, file: !1241, line: 686, baseType: !209, size: 32, offset: 384)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1240, file: !1241, line: 687, baseType: !209, size: 32, offset: 416)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1240, file: !1241, line: 688, baseType: !209, size: 32, offset: 448)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1240, file: !1241, line: 689, baseType: !7, size: 32, offset: 480)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1240, file: !1241, line: 691, baseType: !1266, size: 64, offset: 512)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1268)
!1268 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1241, line: 691, flags: DIFlagFwdDecl)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1240, file: !1241, line: 692, baseType: !1270, size: 832, offset: 576)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1241, line: 451, size: 832, elements: !1271)
!1271 = !{!1272, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1270, file: !1241, line: 453, baseType: !1273, size: 128)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1241, line: 325, size: 128, elements: !1274)
!1274 = !{!1275, !1276}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1273, file: !1241, line: 326, baseType: !203, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1273, file: !1241, line: 327, baseType: !216, size: 32, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1270, file: !1241, line: 454, baseType: !783, size: 192, align: 64, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1270, file: !1241, line: 455, baseType: !249, size: 128, offset: 320)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1270, file: !1241, line: 456, baseType: !7, size: 32, offset: 448)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1270, file: !1241, line: 458, baseType: !444, size: 64, offset: 512)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1270, file: !1241, line: 459, baseType: !444, size: 64, offset: 576)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1270, file: !1241, line: 460, baseType: !444, size: 64, offset: 640)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1270, file: !1241, line: 461, baseType: !444, size: 64, offset: 704)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1270, file: !1241, line: 463, baseType: !444, size: 64, offset: 768)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1270, file: !1241, line: 465, baseType: !1286, offset: 832)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1241, line: 415, elements: !276)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1240, file: !1241, line: 693, baseType: !1288, size: 384, offset: 1408)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1241, line: 489, size: 384, elements: !1289)
!1289 = !{!1290, !1291, !1292, !1293, !1294, !1295, !1296}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1288, file: !1241, line: 490, baseType: !249, size: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1288, file: !1241, line: 491, baseType: !203, size: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1288, file: !1241, line: 492, baseType: !203, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1288, file: !1241, line: 493, baseType: !7, size: 32, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1288, file: !1241, line: 494, baseType: !344, size: 16, offset: 288)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1288, file: !1241, line: 495, baseType: !344, size: 16, offset: 304)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1288, file: !1241, line: 497, baseType: !1297, size: 64, offset: 320)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1240, file: !1241, line: 697, baseType: !1299, size: 1792, offset: 1792)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1241, line: 507, size: 1792, elements: !1300)
!1300 = !{!1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1380, !1381}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1299, file: !1241, line: 508, baseType: !783, size: 192, align: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1299, file: !1241, line: 515, baseType: !444, size: 64, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1299, file: !1241, line: 516, baseType: !444, size: 64, offset: 256)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1299, file: !1241, line: 517, baseType: !444, size: 64, offset: 320)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1299, file: !1241, line: 518, baseType: !444, size: 64, offset: 384)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1299, file: !1241, line: 519, baseType: !444, size: 64, offset: 448)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1299, file: !1241, line: 526, baseType: !800, size: 64, offset: 512)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1299, file: !1241, line: 527, baseType: !444, size: 64, offset: 576)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1299, file: !1241, line: 528, baseType: !7, size: 32, offset: 640)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1299, file: !1241, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1299, file: !1241, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1299, file: !1241, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1299, file: !1241, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1299, file: !1241, line: 563, baseType: !1315, size: 512, offset: 704)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !27, line: 118, size: 512, elements: !1316)
!1316 = !{!1317, !1325, !1326, !1331, !1374, !1377, !1378, !1379}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1315, file: !27, line: 119, baseType: !1318, size: 256)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1319, line: 9, size: 256, elements: !1320)
!1319 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1320 = !{!1321, !1322}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1318, file: !1319, line: 10, baseType: !783, size: 192, align: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1318, file: !1319, line: 11, baseType: !1323, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1324, line: 29, baseType: !800)
!1324 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1315, file: !27, line: 120, baseType: !1323, size: 64, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1315, file: !27, line: 121, baseType: !1327, size: 64, offset: 320)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!26, !1330}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1315, file: !27, line: 122, baseType: !1332, size: 64, offset: 384)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !27, line: 159, size: 512, align: 512, elements: !1334)
!1334 = !{!1335, !1355, !1356, !1359, !1364, !1365, !1369, !1373}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1333, file: !27, line: 160, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !27, line: 214, size: 4608, align: 512, elements: !1338)
!1338 = !{!1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1337, file: !27, line: 215, baseType: !803)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1337, file: !27, line: 216, baseType: !7, size: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1337, file: !27, line: 217, baseType: !7, size: 32, offset: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1337, file: !27, line: 218, baseType: !7, size: 32, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1337, file: !27, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1337, file: !27, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1337, file: !27, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1337, file: !27, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1337, file: !27, line: 233, baseType: !1323, size: 64, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1337, file: !27, line: 234, baseType: !1330, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1337, file: !27, line: 235, baseType: !1323, size: 64, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1337, file: !27, line: 236, baseType: !1330, size: 64, offset: 320)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1337, file: !27, line: 237, baseType: !1352, size: 4096, offset: 512)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1333, size: 4096, elements: !1353)
!1353 = !{!1354}
!1354 = !DISubrange(count: 8)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1333, file: !27, line: 161, baseType: !7, size: 32, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1333, file: !27, line: 162, baseType: !1357, size: 32, offset: 96)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !202, line: 27, baseType: !1358)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !336, line: 96, baseType: !209)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1333, file: !27, line: 163, baseType: !1360, size: 32, offset: 128)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !415, line: 276, baseType: !1361)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !415, line: 276, size: 32, elements: !1362)
!1362 = !{!1363}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1361, file: !415, line: 276, baseType: !419, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1333, file: !27, line: 164, baseType: !1330, size: 64, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1333, file: !27, line: 165, baseType: !1366, size: 128, offset: 256)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1319, line: 14, size: 128, elements: !1367)
!1367 = !{!1368}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1366, file: !1319, line: 15, baseType: !775, size: 128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1333, file: !27, line: 166, baseType: !1370, size: 64, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!1323}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1333, file: !27, line: 167, baseType: !1323, size: 64, offset: 448)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1315, file: !27, line: 123, baseType: !1375, size: 8, offset: 448)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !217, line: 17, baseType: !1376)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !219, line: 21, baseType: !450)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1315, file: !27, line: 124, baseType: !1375, size: 8, offset: 456)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1315, file: !27, line: 125, baseType: !1375, size: 8, offset: 464)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1315, file: !27, line: 126, baseType: !1375, size: 8, offset: 472)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1299, file: !1241, line: 572, baseType: !1315, size: 512, offset: 1216)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1299, file: !1241, line: 580, baseType: !1382, size: 64, offset: 1728)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1240, file: !1241, line: 721, baseType: !7, size: 32, offset: 3584)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1240, file: !1241, line: 722, baseType: !209, size: 32, offset: 3616)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1240, file: !1241, line: 723, baseType: !1386, size: 64, offset: 3648)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1388)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1389, line: 17, baseType: !1390)
!1389 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1389, line: 17, size: 64, elements: !1391)
!1391 = !{!1392}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1390, file: !1389, line: 17, baseType: !1393, size: 64)
!1393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 64, elements: !1394)
!1394 = !{!1395}
!1395 = !DISubrange(count: 1)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1240, file: !1241, line: 724, baseType: !1388, size: 64, offset: 3712)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1240, file: !1241, line: 749, baseType: !1398, offset: 3776)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1241, line: 290, elements: !276)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1240, file: !1241, line: 751, baseType: !249, size: 128, offset: 3776)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1240, file: !1241, line: 757, baseType: !997, size: 64, offset: 3904)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1240, file: !1241, line: 758, baseType: !997, size: 64, offset: 3968)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1240, file: !1241, line: 761, baseType: !1403, size: 320, offset: 4032)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1174, line: 34, size: 320, elements: !1404)
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1403, file: !1174, line: 35, baseType: !444, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1403, file: !1174, line: 36, baseType: !1407, size: 256, offset: 64)
!1407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, size: 256, elements: !1178)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1240, file: !1241, line: 766, baseType: !209, size: 32, offset: 4352)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1240, file: !1241, line: 767, baseType: !209, size: 32, offset: 4384)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1240, file: !1241, line: 768, baseType: !209, size: 32, offset: 4416)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1240, file: !1241, line: 770, baseType: !209, size: 32, offset: 4448)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1240, file: !1241, line: 772, baseType: !203, size: 64, offset: 4480)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1240, file: !1241, line: 775, baseType: !7, size: 32, offset: 4544)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1240, file: !1241, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1240, file: !1241, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1240, file: !1241, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1240, file: !1241, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1240, file: !1241, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1240, file: !1241, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1240, file: !1241, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1240, file: !1241, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1240, file: !1241, line: 831, baseType: !203, size: 64, offset: 4672)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1240, file: !1241, line: 833, baseType: !1424, size: 384, offset: 4736)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !32, line: 25, size: 384, elements: !1425)
!1425 = !{!1426, !1431}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1424, file: !32, line: 26, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!154, !1430}
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, scope: !1424, file: !32, line: 27, baseType: !1432, size: 320, offset: 64)
!1432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1424, file: !32, line: 27, size: 320, elements: !1433)
!1433 = !{!1434, !1444, !1471}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1432, file: !32, line: 36, baseType: !1435, size: 320)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1432, file: !32, line: 29, size: 320, elements: !1436)
!1436 = !{!1437, !1439, !1440, !1441, !1442, !1443}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1435, file: !32, line: 30, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1435, file: !32, line: 31, baseType: !216, size: 32, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1435, file: !32, line: 32, baseType: !216, size: 32, offset: 96)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1435, file: !32, line: 33, baseType: !216, size: 32, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1435, file: !32, line: 34, baseType: !444, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1435, file: !32, line: 35, baseType: !1438, size: 64, offset: 256)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1432, file: !32, line: 46, baseType: !1445, size: 192)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1432, file: !32, line: 38, size: 192, elements: !1446)
!1446 = !{!1447, !1448, !1449, !1470}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1445, file: !32, line: 39, baseType: !1357, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1445, file: !32, line: 40, baseType: !31, size: 32, offset: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !32, line: 41, baseType: !1450, size: 64, offset: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1445, file: !32, line: 41, size: 64, elements: !1451)
!1451 = !{!1452, !1460}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1450, file: !32, line: 42, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1455, line: 7, size: 128, elements: !1456)
!1455 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1456 = !{!1457, !1459}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1454, file: !1455, line: 8, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !336, line: 93, baseType: !556)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1454, file: !1455, line: 9, baseType: !556, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1450, file: !32, line: 43, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1463, line: 7, size: 64, elements: !1464)
!1463 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1464 = !{!1465, !1469}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1462, file: !1463, line: 8, baseType: !1466, size: 32)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1463, line: 5, baseType: !1467)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !217, line: 20, baseType: !1468)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !219, line: 26, baseType: !209)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1462, file: !1463, line: 9, baseType: !1467, size: 32, offset: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1445, file: !32, line: 45, baseType: !444, size: 64, offset: 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1432, file: !32, line: 54, baseType: !1472, size: 256)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1432, file: !32, line: 48, size: 256, elements: !1473)
!1473 = !{!1474, !1477, !1478, !1479, !1480}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1472, file: !32, line: 49, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !32, line: 14, flags: DIFlagFwdDecl)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1472, file: !32, line: 50, baseType: !209, size: 32, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1472, file: !32, line: 51, baseType: !209, size: 32, offset: 96)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1472, file: !32, line: 52, baseType: !203, size: 64, offset: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1472, file: !32, line: 53, baseType: !203, size: 64, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1240, file: !1241, line: 835, baseType: !1482, size: 32, offset: 5120)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !202, line: 22, baseType: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !336, line: 28, baseType: !209)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1240, file: !1241, line: 836, baseType: !1482, size: 32, offset: 5152)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1240, file: !1241, line: 840, baseType: !203, size: 64, offset: 5184)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1240, file: !1241, line: 849, baseType: !1239, size: 64, offset: 5248)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1240, file: !1241, line: 852, baseType: !1239, size: 64, offset: 5312)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1240, file: !1241, line: 857, baseType: !249, size: 128, offset: 5376)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1240, file: !1241, line: 858, baseType: !249, size: 128, offset: 5504)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1240, file: !1241, line: 859, baseType: !1239, size: 64, offset: 5632)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1240, file: !1241, line: 867, baseType: !249, size: 128, offset: 5696)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1240, file: !1241, line: 868, baseType: !249, size: 128, offset: 5824)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1240, file: !1241, line: 871, baseType: !1494, size: 64, offset: 5952)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !60, line: 59, size: 768, elements: !1496)
!1496 = !{!1497, !1498, !1499, !1500, !1502, !1503, !1510, !1511}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1495, file: !60, line: 61, baseType: !1253, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1495, file: !60, line: 62, baseType: !7, size: 32, offset: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1495, file: !60, line: 63, baseType: !262, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1495, file: !60, line: 65, baseType: !1501, size: 256, offset: 64)
!1501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !658, size: 256, elements: !1178)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1495, file: !60, line: 66, baseType: !658, size: 64, offset: 320)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1495, file: !60, line: 68, baseType: !1504, size: 128, offset: 384)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1505, line: 40, baseType: !1506)
!1505 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1505, line: 36, size: 128, elements: !1507)
!1507 = !{!1508, !1509}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1506, file: !1505, line: 37, baseType: !262)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1506, file: !1505, line: 38, baseType: !249, size: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1495, file: !60, line: 69, baseType: !392, size: 128, align: 64, offset: 512)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1495, file: !60, line: 70, baseType: !1512, size: 128, offset: 640)
!1512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1513, size: 128, elements: !1394)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !60, line: 54, size: 128, elements: !1514)
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1513, file: !60, line: 55, baseType: !209, size: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1513, file: !60, line: 56, baseType: !1517, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1519, line: 20, size: 1088, elements: !1520)
!1519 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/lizy2001/genbc/linux")
!1520 = !{!1521, !1526, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1542, !1545, !1546}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1518, file: !1519, line: 21, baseType: !1522, size: 32)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1523, line: 19, size: 32, elements: !1524)
!1523 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1524 = !{!1525}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1522, file: !1523, line: 20, baseType: !1253, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1518, file: !1519, line: 22, baseType: !1527, size: 192, offset: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1528, line: 19, size: 192, elements: !1529)
!1528 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1529 = !{!1530, !1531, !1532}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1527, file: !1528, line: 20, baseType: !762, size: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1527, file: !1528, line: 21, baseType: !7, size: 32, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1527, file: !1528, line: 22, baseType: !7, size: 32, offset: 160)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1518, file: !1519, line: 23, baseType: !392, size: 128, align: 64, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1518, file: !1519, line: 24, baseType: !7, size: 32, offset: 384)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1518, file: !1519, line: 25, baseType: !1239, size: 64, offset: 448)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1518, file: !1519, line: 26, baseType: !958, size: 64, offset: 512)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1518, file: !1519, line: 27, baseType: !7, size: 32, offset: 576)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1518, file: !1519, line: 28, baseType: !1517, size: 64, offset: 640)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1518, file: !1519, line: 32, baseType: !1540, size: 64, offset: 704)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !459, line: 18, flags: DIFlagFwdDecl)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1518, file: !1519, line: 33, baseType: !1543, size: 64, offset: 768)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1519, line: 33, flags: DIFlagFwdDecl)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1518, file: !1519, line: 34, baseType: !209, size: 32, offset: 832)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1518, file: !1519, line: 35, baseType: !1547, size: 192, offset: 896)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1548, line: 7, size: 192, elements: !1549)
!1548 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!1549 = !{!1550, !1551, !1555}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1547, file: !1548, line: 8, baseType: !794, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1547, file: !1548, line: 9, baseType: !1552, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1554)
!1554 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1548, line: 5, flags: DIFlagFwdDecl)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1547, file: !1548, line: 10, baseType: !7, size: 32, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1240, file: !1241, line: 872, baseType: !1557, size: 512, offset: 6016)
!1557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !662, size: 512, elements: !1178)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1240, file: !1241, line: 873, baseType: !249, size: 128, offset: 6528)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1240, file: !1241, line: 874, baseType: !249, size: 128, offset: 6656)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1240, file: !1241, line: 876, baseType: !1561, size: 64, offset: 6784)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1563, line: 26, size: 192, elements: !1564)
!1563 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1562, file: !1563, line: 27, baseType: !7, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1562, file: !1563, line: 28, baseType: !1567, size: 128, offset: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1568, line: 43, size: 128, elements: !1569)
!1568 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1569 = !{!1570, !1571}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1567, file: !1568, line: 44, baseType: !803)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1567, file: !1568, line: 45, baseType: !249, size: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1240, file: !1241, line: 879, baseType: !728, size: 64, offset: 6848)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1240, file: !1241, line: 882, baseType: !728, size: 64, offset: 6912)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1240, file: !1241, line: 884, baseType: !444, size: 64, offset: 6976)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1240, file: !1241, line: 885, baseType: !444, size: 64, offset: 7040)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1240, file: !1241, line: 890, baseType: !444, size: 64, offset: 7104)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1240, file: !1241, line: 891, baseType: !1578, size: 128, offset: 7168)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1241, line: 242, size: 128, elements: !1579)
!1579 = !{!1580, !1581, !1582}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1578, file: !1241, line: 244, baseType: !444, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1578, file: !1241, line: 245, baseType: !444, size: 64, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1578, file: !1241, line: 246, baseType: !803, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1240, file: !1241, line: 900, baseType: !203, size: 64, offset: 7296)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1240, file: !1241, line: 901, baseType: !203, size: 64, offset: 7360)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1240, file: !1241, line: 904, baseType: !444, size: 64, offset: 7424)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1240, file: !1241, line: 907, baseType: !444, size: 64, offset: 7488)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1240, file: !1241, line: 910, baseType: !203, size: 64, offset: 7552)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1240, file: !1241, line: 911, baseType: !203, size: 64, offset: 7616)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1240, file: !1241, line: 914, baseType: !1590, size: 640, offset: 7680)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1591, line: 123, size: 640, elements: !1592)
!1591 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1592 = !{!1593, !1599, !1600}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1590, file: !1591, line: 124, baseType: !1594, size: 576)
!1594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1595, size: 576, elements: !304)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1591, line: 108, size: 192, elements: !1596)
!1596 = !{!1597, !1598}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1595, file: !1591, line: 109, baseType: !444, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1595, file: !1591, line: 110, baseType: !1366, size: 128, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1590, file: !1591, line: 125, baseType: !7, size: 32, offset: 576)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1590, file: !1591, line: 126, baseType: !7, size: 32, offset: 608)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1240, file: !1241, line: 917, baseType: !1602, size: 192, offset: 8320)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1591, line: 134, size: 192, elements: !1603)
!1603 = !{!1604, !1605}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1602, file: !1591, line: 135, baseType: !392, size: 128, align: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1602, file: !1591, line: 136, baseType: !7, size: 32, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1240, file: !1241, line: 923, baseType: !1607, size: 64, offset: 8512)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1609)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1610, line: 111, size: 1280, elements: !1611)
!1610 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1611 = !{!1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1629, !1630, !1631, !1632, !1633, !1634, !1741, !1742, !1743, !1744, !1770, !1771, !1781}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1609, file: !1610, line: 112, baseType: !770, size: 32)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1609, file: !1610, line: 120, baseType: !458, size: 32, offset: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1609, file: !1610, line: 121, baseType: !466, size: 32, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1609, file: !1610, line: 122, baseType: !458, size: 32, offset: 96)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1609, file: !1610, line: 123, baseType: !466, size: 32, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1609, file: !1610, line: 124, baseType: !458, size: 32, offset: 160)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1609, file: !1610, line: 125, baseType: !466, size: 32, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1609, file: !1610, line: 126, baseType: !458, size: 32, offset: 224)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1609, file: !1610, line: 127, baseType: !466, size: 32, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1609, file: !1610, line: 128, baseType: !7, size: 32, offset: 288)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1609, file: !1610, line: 129, baseType: !1623, size: 64, offset: 320)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1624, line: 26, baseType: !1625)
!1624 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1624, line: 24, size: 64, elements: !1626)
!1626 = !{!1627}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1625, file: !1624, line: 25, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 64, elements: !230)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1609, file: !1610, line: 130, baseType: !1623, size: 64, offset: 384)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1609, file: !1610, line: 131, baseType: !1623, size: 64, offset: 448)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1609, file: !1610, line: 132, baseType: !1623, size: 64, offset: 512)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1609, file: !1610, line: 133, baseType: !1623, size: 64, offset: 576)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1609, file: !1610, line: 135, baseType: !450, size: 8, offset: 640)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1609, file: !1610, line: 137, baseType: !1635, size: 64, offset: 704)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1637, line: 189, size: 1664, elements: !1638)
!1637 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1638 = !{!1639, !1640, !1643, !1648, !1649, !1652, !1653, !1658, !1659, !1660, !1661, !1663, !1664, !1665, !1666, !1667, !1705, !1726}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1636, file: !1637, line: 190, baseType: !1253, size: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1636, file: !1637, line: 191, baseType: !1641, size: 32, offset: 32)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1637, line: 28, baseType: !1642)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !202, line: 98, baseType: !1467)
!1643 = !DIDerivedType(tag: DW_TAG_member, scope: !1636, file: !1637, line: 192, baseType: !1644, size: 192, offset: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1636, file: !1637, line: 192, size: 192, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1644, file: !1637, line: 193, baseType: !249, size: 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1644, file: !1637, line: 194, baseType: !783, size: 192, align: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1636, file: !1637, line: 199, baseType: !790, size: 256, offset: 256)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1636, file: !1637, line: 200, baseType: !1650, size: 64, offset: 512)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1637, line: 200, flags: DIFlagFwdDecl)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1636, file: !1637, line: 201, baseType: !204, size: 64, offset: 576)
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !1636, file: !1637, line: 202, baseType: !1654, size: 64, offset: 640)
!1654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1636, file: !1637, line: 202, size: 64, elements: !1655)
!1655 = !{!1656, !1657}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1654, file: !1637, line: 203, baseType: !562, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1654, file: !1637, line: 204, baseType: !562, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1636, file: !1637, line: 206, baseType: !562, size: 64, offset: 704)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1636, file: !1637, line: 207, baseType: !458, size: 32, offset: 768)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1636, file: !1637, line: 208, baseType: !466, size: 32, offset: 800)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1636, file: !1637, line: 209, baseType: !1662, size: 32, offset: 832)
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1637, line: 31, baseType: !582)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1636, file: !1637, line: 210, baseType: !344, size: 16, offset: 864)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1636, file: !1637, line: 211, baseType: !344, size: 16, offset: 880)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1636, file: !1637, line: 215, baseType: !1228, size: 16, offset: 896)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1636, file: !1637, line: 222, baseType: !203, size: 64, offset: 960)
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1636, file: !1637, line: 239, baseType: !1668, size: 320, offset: 1024)
!1668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1636, file: !1637, line: 239, size: 320, elements: !1669)
!1669 = !{!1670, !1697}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1668, file: !1637, line: 240, baseType: !1671, size: 320)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1637, line: 108, size: 320, elements: !1672)
!1672 = !{!1673, !1674, !1686, !1689, !1696}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1671, file: !1637, line: 110, baseType: !203, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, scope: !1671, file: !1637, line: 111, baseType: !1675, size: 64, offset: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1671, file: !1637, line: 111, size: 64, elements: !1676)
!1676 = !{!1677, !1685}
!1677 = !DIDerivedType(tag: DW_TAG_member, scope: !1675, file: !1637, line: 112, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1675, file: !1637, line: 112, size: 64, elements: !1679)
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1678, file: !1637, line: 114, baseType: !882, size: 16)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1678, file: !1637, line: 115, baseType: !1682, size: 48, offset: 16)
!1682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 48, elements: !1683)
!1683 = !{!1684}
!1684 = !DISubrange(count: 6)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1675, file: !1637, line: 121, baseType: !203, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1671, file: !1637, line: 123, baseType: !1687, size: 64, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1637, line: 96, flags: DIFlagFwdDecl)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1671, file: !1637, line: 124, baseType: !1690, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1637, line: 102, size: 192, elements: !1692)
!1692 = !{!1693, !1694, !1695}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1691, file: !1637, line: 103, baseType: !392, size: 128, align: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1691, file: !1637, line: 104, baseType: !1253, size: 32, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1691, file: !1637, line: 105, baseType: !513, size: 8, offset: 160)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1671, file: !1637, line: 125, baseType: !246, size: 64, offset: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !1637, line: 241, baseType: !1698, size: 320)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1668, file: !1637, line: 241, size: 320, elements: !1699)
!1699 = !{!1700, !1701, !1702, !1703, !1704}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1698, file: !1637, line: 242, baseType: !203, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1698, file: !1637, line: 243, baseType: !203, size: 64, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1698, file: !1637, line: 244, baseType: !1687, size: 64, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1698, file: !1637, line: 245, baseType: !1690, size: 64, offset: 192)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1698, file: !1637, line: 246, baseType: !303, size: 64, offset: 256)
!1705 = !DIDerivedType(tag: DW_TAG_member, scope: !1636, file: !1637, line: 254, baseType: !1706, size: 256, offset: 1344)
!1706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1636, file: !1637, line: 254, size: 256, elements: !1707)
!1707 = !{!1708, !1714}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1706, file: !1637, line: 255, baseType: !1709, size: 256)
!1709 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1637, line: 128, size: 256, elements: !1710)
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1709, file: !1637, line: 129, baseType: !204, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1709, file: !1637, line: 130, baseType: !1713, size: 256)
!1713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 256, elements: !1178)
!1714 = !DIDerivedType(tag: DW_TAG_member, scope: !1706, file: !1637, line: 256, baseType: !1715, size: 256)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1706, file: !1637, line: 256, size: 256, elements: !1716)
!1716 = !{!1717, !1718}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1715, file: !1637, line: 258, baseType: !249, size: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1715, file: !1637, line: 259, baseType: !1719, size: 128, offset: 128)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1720, line: 22, size: 128, elements: !1721)
!1720 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1721 = !{!1722, !1725}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1719, file: !1720, line: 23, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1720, line: 23, flags: DIFlagFwdDecl)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1719, file: !1720, line: 24, baseType: !203, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1636, file: !1637, line: 274, baseType: !1727, size: 64, offset: 1600)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1637, line: 170, size: 192, elements: !1729)
!1729 = !{!1730, !1739, !1740}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1728, file: !1637, line: 171, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1637, line: 165, baseType: !1732)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!209, !1635, !1735, !1737, !1635}
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1688)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1709)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1728, file: !1637, line: 172, baseType: !1635, size: 64, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1728, file: !1637, line: 173, baseType: !1687, size: 64, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1609, file: !1610, line: 138, baseType: !1635, size: 64, offset: 768)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1609, file: !1610, line: 139, baseType: !1635, size: 64, offset: 832)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1609, file: !1610, line: 140, baseType: !1635, size: 64, offset: 896)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1609, file: !1610, line: 145, baseType: !1745, size: 64, offset: 960)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1747, line: 13, size: 896, elements: !1748)
!1747 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1748 = !{!1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1746, file: !1747, line: 14, baseType: !1253, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1746, file: !1747, line: 15, baseType: !770, size: 32, offset: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1746, file: !1747, line: 16, baseType: !770, size: 32, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1746, file: !1747, line: 21, baseType: !794, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1746, file: !1747, line: 27, baseType: !203, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1746, file: !1747, line: 28, baseType: !203, size: 64, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1746, file: !1747, line: 29, baseType: !794, size: 64, offset: 320)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1746, file: !1747, line: 32, baseType: !662, size: 128, offset: 384)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1746, file: !1747, line: 33, baseType: !458, size: 32, offset: 512)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1746, file: !1747, line: 37, baseType: !794, size: 64, offset: 576)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1746, file: !1747, line: 44, baseType: !1760, size: 256, offset: 640)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1761, line: 15, size: 256, elements: !1762)
!1761 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1762 = !{!1763, !1764, !1765, !1766, !1767, !1768, !1769}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1760, file: !1761, line: 16, baseType: !803)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1760, file: !1761, line: 18, baseType: !209, size: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1760, file: !1761, line: 19, baseType: !209, size: 32, offset: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1760, file: !1761, line: 20, baseType: !209, size: 32, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1760, file: !1761, line: 21, baseType: !209, size: 32, offset: 96)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1760, file: !1761, line: 22, baseType: !203, size: 64, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1760, file: !1761, line: 23, baseType: !203, size: 64, offset: 192)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1609, file: !1610, line: 146, baseType: !1540, size: 64, offset: 1024)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1609, file: !1610, line: 147, baseType: !1772, size: 64, offset: 1088)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1610, line: 25, size: 64, elements: !1774)
!1774 = !{!1775, !1776, !1777}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1773, file: !1610, line: 26, baseType: !770, size: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1773, file: !1610, line: 27, baseType: !209, size: 32, offset: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1773, file: !1610, line: 28, baseType: !1778, offset: 64)
!1778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, elements: !1779)
!1779 = !{!1780}
!1780 = !DISubrange(count: 0)
!1781 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !1610, line: 149, baseType: !1782, size: 128, offset: 1152)
!1782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1609, file: !1610, line: 149, size: 128, elements: !1783)
!1783 = !{!1784, !1785}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1782, file: !1610, line: 150, baseType: !209, size: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1782, file: !1610, line: 151, baseType: !392, size: 128, align: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1240, file: !1241, line: 926, baseType: !1607, size: 64, offset: 8576)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1240, file: !1241, line: 929, baseType: !1607, size: 64, offset: 8640)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1240, file: !1241, line: 933, baseType: !1635, size: 64, offset: 8704)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1240, file: !1241, line: 943, baseType: !211, size: 128, offset: 8768)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1240, file: !1241, line: 945, baseType: !1791, size: 64, offset: 8896)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1241, line: 49, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1240, file: !1241, line: 956, baseType: !1794, size: 64, offset: 8960)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1241, line: 45, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1240, file: !1241, line: 959, baseType: !1797, size: 64, offset: 9024)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1241, line: 959, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1240, file: !1241, line: 962, baseType: !1800, size: 64, offset: 9088)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1241, line: 66, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1240, file: !1241, line: 966, baseType: !1803, size: 64, offset: 9152)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1805, line: 31, size: 576, elements: !1806)
!1805 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!1806 = !{!1807, !1808, !1811, !1814, !1817, !1818, !1821, !1824, !1825}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1804, file: !1805, line: 32, baseType: !770, size: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1804, file: !1805, line: 33, baseType: !1809, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1805, line: 9, flags: DIFlagFwdDecl)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1804, file: !1805, line: 34, baseType: !1812, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1805, line: 10, flags: DIFlagFwdDecl)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1804, file: !1805, line: 35, baseType: !1815, size: 64, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1805, line: 8, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1804, file: !1805, line: 36, baseType: !1517, size: 64, offset: 256)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1804, file: !1805, line: 37, baseType: !1819, size: 64, offset: 320)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1637, line: 34, flags: DIFlagFwdDecl)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1804, file: !1805, line: 38, baseType: !1822, size: 64, offset: 384)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1805, line: 38, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1804, file: !1805, line: 39, baseType: !1822, size: 64, offset: 448)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1804, file: !1805, line: 40, baseType: !1826, size: 64, offset: 512)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1805, line: 12, flags: DIFlagFwdDecl)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1240, file: !1241, line: 969, baseType: !1829, size: 64, offset: 9216)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1831, line: 82, size: 7296, elements: !1832)
!1831 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1832 = !{!1833, !1834, !1835, !1836, !1837, !1838, !1839, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1868, !1877, !1878, !1880, !1881, !1882, !1885, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1915, !1916, !1923, !1924, !1925, !1926, !1927, !1928}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1830, file: !1831, line: 83, baseType: !1253, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1830, file: !1831, line: 84, baseType: !770, size: 32, offset: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1830, file: !1831, line: 85, baseType: !209, size: 32, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1830, file: !1831, line: 86, baseType: !249, size: 128, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1830, file: !1831, line: 88, baseType: !1504, size: 128, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1830, file: !1831, line: 91, baseType: !1239, size: 64, offset: 384)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1830, file: !1831, line: 94, baseType: !1840, size: 192, offset: 448)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1841, line: 30, size: 192, elements: !1842)
!1841 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1842 = !{!1843, !1844}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1840, file: !1841, line: 31, baseType: !249, size: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1840, file: !1841, line: 32, baseType: !1845, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1846, line: 25, baseType: !1847)
!1846 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1846, line: 23, size: 64, elements: !1848)
!1848 = !{!1849}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1847, file: !1846, line: 24, baseType: !1393, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1830, file: !1831, line: 97, baseType: !658, size: 64, offset: 640)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1830, file: !1831, line: 100, baseType: !209, size: 32, offset: 704)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1830, file: !1831, line: 106, baseType: !209, size: 32, offset: 736)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1830, file: !1831, line: 107, baseType: !1239, size: 64, offset: 768)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1830, file: !1831, line: 110, baseType: !209, size: 32, offset: 832)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1830, file: !1831, line: 111, baseType: !7, size: 32, offset: 864)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1830, file: !1831, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1830, file: !1831, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1830, file: !1831, line: 128, baseType: !209, size: 32, offset: 928)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1830, file: !1831, line: 129, baseType: !249, size: 128, offset: 960)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1830, file: !1831, line: 132, baseType: !1315, size: 512, offset: 1088)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1830, file: !1831, line: 133, baseType: !1323, size: 64, offset: 1600)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1830, file: !1831, line: 140, baseType: !1863, size: 256, offset: 1664)
!1863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1864, size: 256, elements: !230)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1831, line: 38, size: 128, elements: !1865)
!1865 = !{!1866, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1864, file: !1831, line: 39, baseType: !444, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1864, file: !1831, line: 40, baseType: !444, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1830, file: !1831, line: 146, baseType: !1869, size: 192, offset: 1920)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1831, line: 66, size: 192, elements: !1870)
!1870 = !{!1871}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1869, file: !1831, line: 67, baseType: !1872, size: 192)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1831, line: 47, size: 192, elements: !1873)
!1873 = !{!1874, !1875, !1876}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1872, file: !1831, line: 48, baseType: !796, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1872, file: !1831, line: 49, baseType: !796, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1872, file: !1831, line: 50, baseType: !796, size: 64, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1830, file: !1831, line: 150, baseType: !1590, size: 640, offset: 2112)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1830, file: !1831, line: 153, baseType: !1879, size: 256, offset: 2752)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1494, size: 256, elements: !1178)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1830, file: !1831, line: 159, baseType: !1494, size: 64, offset: 3008)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1830, file: !1831, line: 162, baseType: !209, size: 32, offset: 3072)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1830, file: !1831, line: 164, baseType: !1883, size: 64, offset: 3136)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1831, line: 164, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1830, file: !1831, line: 175, baseType: !1886, size: 32, offset: 3200)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !415, line: 805, baseType: !1887)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !415, line: 798, size: 32, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1887, file: !415, line: 803, baseType: !414, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1887, file: !415, line: 804, baseType: !262, offset: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1830, file: !1831, line: 176, baseType: !444, size: 64, offset: 3264)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1830, file: !1831, line: 176, baseType: !444, size: 64, offset: 3328)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1830, file: !1831, line: 176, baseType: !444, size: 64, offset: 3392)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1830, file: !1831, line: 176, baseType: !444, size: 64, offset: 3456)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1830, file: !1831, line: 177, baseType: !444, size: 64, offset: 3520)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1830, file: !1831, line: 178, baseType: !444, size: 64, offset: 3584)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1830, file: !1831, line: 179, baseType: !1578, size: 128, offset: 3648)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1830, file: !1831, line: 180, baseType: !203, size: 64, offset: 3776)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1830, file: !1831, line: 180, baseType: !203, size: 64, offset: 3840)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1830, file: !1831, line: 180, baseType: !203, size: 64, offset: 3904)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1830, file: !1831, line: 180, baseType: !203, size: 64, offset: 3968)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1830, file: !1831, line: 181, baseType: !203, size: 64, offset: 4032)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1830, file: !1831, line: 181, baseType: !203, size: 64, offset: 4096)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1830, file: !1831, line: 181, baseType: !203, size: 64, offset: 4160)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1830, file: !1831, line: 181, baseType: !203, size: 64, offset: 4224)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1830, file: !1831, line: 182, baseType: !203, size: 64, offset: 4288)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1830, file: !1831, line: 182, baseType: !203, size: 64, offset: 4352)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1830, file: !1831, line: 182, baseType: !203, size: 64, offset: 4416)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1830, file: !1831, line: 182, baseType: !203, size: 64, offset: 4480)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1830, file: !1831, line: 183, baseType: !203, size: 64, offset: 4544)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1830, file: !1831, line: 183, baseType: !203, size: 64, offset: 4608)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1830, file: !1831, line: 184, baseType: !1913, offset: 4672)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1914, line: 12, elements: !276)
!1914 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1830, file: !1831, line: 192, baseType: !446, size: 64, offset: 4672)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1830, file: !1831, line: 203, baseType: !1917, size: 2048, offset: 4736)
!1917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1918, size: 2048, elements: !213)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1919, line: 43, size: 128, elements: !1920)
!1919 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1920 = !{!1921, !1922}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1918, file: !1919, line: 44, baseType: !351, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1918, file: !1919, line: 45, baseType: !351, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1830, file: !1831, line: 220, baseType: !513, size: 8, offset: 6784)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1830, file: !1831, line: 221, baseType: !1228, size: 16, offset: 6800)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1830, file: !1831, line: 222, baseType: !1228, size: 16, offset: 6816)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1830, file: !1831, line: 224, baseType: !997, size: 64, offset: 6848)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1830, file: !1831, line: 227, baseType: !1196, size: 192, offset: 6912)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1830, file: !1831, line: 233, baseType: !1196, size: 192, offset: 7104)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1240, file: !1241, line: 970, baseType: !1930, size: 64, offset: 9280)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1831, line: 20, size: 16576, elements: !1932)
!1932 = !{!1933, !1934, !1935, !1936}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1931, file: !1831, line: 21, baseType: !262)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1931, file: !1831, line: 22, baseType: !1253, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1931, file: !1831, line: 23, baseType: !1504, size: 128, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1931, file: !1831, line: 24, baseType: !1937, size: 16384, offset: 192)
!1937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1938, size: 16384, elements: !308)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1841, line: 49, size: 256, elements: !1939)
!1939 = !{!1940}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1938, file: !1841, line: 50, baseType: !1941, size: 256)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1841, line: 35, size: 256, elements: !1942)
!1942 = !{!1943, !1950, !1951, !1957}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1941, file: !1841, line: 37, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1945, line: 19, baseType: !1946)
!1945 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1945, line: 18, baseType: !1948)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{null, !209}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1941, file: !1841, line: 38, baseType: !203, size: 64, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1941, file: !1841, line: 44, baseType: !1952, size: 64, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1945, line: 22, baseType: !1953)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1945, line: 21, baseType: !1955)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{null}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1941, file: !1841, line: 46, baseType: !1845, size: 64, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1240, file: !1241, line: 971, baseType: !1845, size: 64, offset: 9344)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1240, file: !1241, line: 972, baseType: !1845, size: 64, offset: 9408)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1240, file: !1241, line: 974, baseType: !1845, size: 64, offset: 9472)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1240, file: !1241, line: 975, baseType: !1840, size: 192, offset: 9536)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1240, file: !1241, line: 976, baseType: !203, size: 64, offset: 9728)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1240, file: !1241, line: 977, baseType: !349, size: 64, offset: 9792)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1240, file: !1241, line: 978, baseType: !7, size: 32, offset: 9856)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1240, file: !1241, line: 980, baseType: !395, size: 64, offset: 9920)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1240, file: !1241, line: 989, baseType: !1967, size: 128, offset: 9984)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1968, line: 35, size: 128, elements: !1969)
!1968 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1969 = !{!1970, !1971, !1972}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1967, file: !1968, line: 36, baseType: !209, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1967, file: !1968, line: 37, baseType: !770, size: 32, offset: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1967, file: !1968, line: 38, baseType: !1973, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1968, line: 23, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1240, file: !1241, line: 992, baseType: !444, size: 64, offset: 10112)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1240, file: !1241, line: 993, baseType: !444, size: 64, offset: 10176)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1240, file: !1241, line: 996, baseType: !262, offset: 10240)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1240, file: !1241, line: 999, baseType: !803, offset: 10240)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1240, file: !1241, line: 1001, baseType: !1980, size: 64, offset: 10240)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1241, line: 636, size: 64, elements: !1981)
!1981 = !{!1982}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1980, file: !1241, line: 637, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1240, file: !1241, line: 1005, baseType: !775, size: 128, offset: 10304)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1240, file: !1241, line: 1007, baseType: !1239, size: 64, offset: 10432)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1240, file: !1241, line: 1009, baseType: !1987, size: 64, offset: 10496)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1241, line: 1009, flags: DIFlagFwdDecl)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1240, file: !1241, line: 1043, baseType: !204, size: 64, offset: 10560)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1240, file: !1241, line: 1046, baseType: !1991, size: 64, offset: 10624)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1241, line: 41, flags: DIFlagFwdDecl)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1240, file: !1241, line: 1050, baseType: !1994, size: 64, offset: 10688)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1241, line: 42, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1240, file: !1241, line: 1054, baseType: !1997, size: 64, offset: 10752)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1241, line: 55, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1240, file: !1241, line: 1056, baseType: !2000, size: 64, offset: 10816)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1241, line: 40, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1240, file: !1241, line: 1058, baseType: !2003, size: 64, offset: 10880)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2005, line: 99, size: 704, elements: !2006)
!2005 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2006 = !{!2007, !2008, !2009, !2010, !2011, !2012, !2013, !2032, !2033}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2004, file: !2005, line: 100, baseType: !794, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2004, file: !2005, line: 101, baseType: !770, size: 32, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2004, file: !2005, line: 102, baseType: !770, size: 32, offset: 96)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2004, file: !2005, line: 105, baseType: !262, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2004, file: !2005, line: 107, baseType: !344, size: 16, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2004, file: !2005, line: 109, baseType: !762, size: 128, offset: 192)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2004, file: !2005, line: 110, baseType: !2014, size: 64, offset: 320)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2005, line: 73, size: 448, elements: !2016)
!2016 = !{!2017, !2020, !2021, !2026, !2031}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2015, file: !2005, line: 74, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2005, line: 74, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2015, file: !2005, line: 75, baseType: !2003, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, scope: !2015, file: !2005, line: 83, baseType: !2022, size: 128, offset: 128)
!2022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2015, file: !2005, line: 83, size: 128, elements: !2023)
!2023 = !{!2024, !2025}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2022, file: !2005, line: 84, baseType: !249, size: 128)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2022, file: !2005, line: 85, baseType: !958, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, scope: !2015, file: !2005, line: 87, baseType: !2027, size: 128, offset: 256)
!2027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2015, file: !2005, line: 87, size: 128, elements: !2028)
!2028 = !{!2029, !2030}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2027, file: !2005, line: 88, baseType: !662, size: 128)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2027, file: !2005, line: 89, baseType: !392, size: 128, align: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2015, file: !2005, line: 92, baseType: !7, size: 32, offset: 384)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2004, file: !2005, line: 111, baseType: !658, size: 64, offset: 384)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2004, file: !2005, line: 113, baseType: !2034, size: 256, offset: 448)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !153, line: 102, size: 256, elements: !2035)
!2035 = !{!2036, !2037, !2038}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2034, file: !153, line: 103, baseType: !794, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2034, file: !153, line: 104, baseType: !249, size: 128, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2034, file: !153, line: 105, baseType: !2039, size: 64, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !153, line: 21, baseType: !2040)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{null, !2043}
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1240, file: !1241, line: 1061, baseType: !2045, size: 64, offset: 10944)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1241, line: 43, flags: DIFlagFwdDecl)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1240, file: !1241, line: 1064, baseType: !203, size: 64, offset: 11008)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1240, file: !1241, line: 1065, baseType: !2049, size: 64, offset: 11072)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1841, line: 14, baseType: !2051)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1841, line: 12, size: 384, elements: !2052)
!2052 = !{!2053}
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !2051, file: !1841, line: 13, baseType: !2054, size: 384)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2051, file: !1841, line: 13, size: 384, elements: !2055)
!2055 = !{!2056, !2057, !2058, !2059}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2054, file: !1841, line: 13, baseType: !209, size: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2054, file: !1841, line: 13, baseType: !209, size: 32, offset: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2054, file: !1841, line: 13, baseType: !209, size: 32, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2054, file: !1841, line: 13, baseType: !2060, size: 256, offset: 128)
!2060 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2061, line: 32, size: 256, elements: !2062)
!2061 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2062 = !{!2063, !2068, !2081, !2087, !2096, !2116, !2121}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2060, file: !2061, line: 37, baseType: !2064, size: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2060, file: !2061, line: 34, size: 64, elements: !2065)
!2065 = !{!2066, !2067}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2064, file: !2061, line: 35, baseType: !1483, size: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2064, file: !2061, line: 36, baseType: !464, size: 32, offset: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2060, file: !2061, line: 45, baseType: !2069, size: 192)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2060, file: !2061, line: 40, size: 192, elements: !2070)
!2070 = !{!2071, !2073, !2074, !2080}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2069, file: !2061, line: 41, baseType: !2072, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !336, line: 95, baseType: !209)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2069, file: !2061, line: 42, baseType: !209, size: 32, offset: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2069, file: !2061, line: 43, baseType: !2075, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2061, line: 11, baseType: !2076)
!2076 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2061, line: 8, size: 64, elements: !2077)
!2077 = !{!2078, !2079}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2076, file: !2061, line: 9, baseType: !209, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2076, file: !2061, line: 10, baseType: !204, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2069, file: !2061, line: 44, baseType: !209, size: 32, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2060, file: !2061, line: 52, baseType: !2082, size: 128)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2060, file: !2061, line: 48, size: 128, elements: !2083)
!2083 = !{!2084, !2085, !2086}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2082, file: !2061, line: 49, baseType: !1483, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2082, file: !2061, line: 50, baseType: !464, size: 32, offset: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2082, file: !2061, line: 51, baseType: !2075, size: 64, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2060, file: !2061, line: 61, baseType: !2088, size: 256)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2060, file: !2061, line: 55, size: 256, elements: !2089)
!2089 = !{!2090, !2091, !2092, !2093, !2095}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2088, file: !2061, line: 56, baseType: !1483, size: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2088, file: !2061, line: 57, baseType: !464, size: 32, offset: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2088, file: !2061, line: 58, baseType: !209, size: 32, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2088, file: !2061, line: 59, baseType: !2094, size: 64, offset: 128)
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !336, line: 94, baseType: !337)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2088, file: !2061, line: 60, baseType: !2094, size: 64, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2060, file: !2061, line: 95, baseType: !2097, size: 256)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2060, file: !2061, line: 64, size: 256, elements: !2098)
!2098 = !{!2099, !2100}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2097, file: !2061, line: 65, baseType: !204, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, scope: !2097, file: !2061, line: 77, baseType: !2101, size: 192, offset: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2097, file: !2061, line: 77, size: 192, elements: !2102)
!2102 = !{!2103, !2104, !2111}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2101, file: !2061, line: 82, baseType: !1228, size: 16)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2101, file: !2061, line: 88, baseType: !2105, size: 192)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2101, file: !2061, line: 84, size: 192, elements: !2106)
!2106 = !{!2107, !2109, !2110}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2105, file: !2061, line: 85, baseType: !2108, size: 64)
!2108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 64, elements: !1353)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2105, file: !2061, line: 86, baseType: !204, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2105, file: !2061, line: 87, baseType: !204, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2101, file: !2061, line: 93, baseType: !2112, size: 96)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2101, file: !2061, line: 90, size: 96, elements: !2113)
!2113 = !{!2114, !2115}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2112, file: !2061, line: 91, baseType: !2108, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2112, file: !2061, line: 92, baseType: !218, size: 32, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2060, file: !2061, line: 101, baseType: !2117, size: 128)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2060, file: !2061, line: 98, size: 128, elements: !2118)
!2118 = !{!2119, !2120}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2117, file: !2061, line: 99, baseType: !154, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2117, file: !2061, line: 100, baseType: !209, size: 32, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2060, file: !2061, line: 108, baseType: !2122, size: 128)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2060, file: !2061, line: 104, size: 128, elements: !2123)
!2123 = !{!2124, !2125, !2126}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2122, file: !2061, line: 105, baseType: !204, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2122, file: !2061, line: 106, baseType: !209, size: 32, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2122, file: !2061, line: 107, baseType: !7, size: 32, offset: 96)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1240, file: !1241, line: 1067, baseType: !1913, offset: 11136)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1240, file: !1241, line: 1099, baseType: !2129, size: 64, offset: 11136)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1241, line: 56, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1240, file: !1241, line: 1103, baseType: !249, size: 128, offset: 11200)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1240, file: !1241, line: 1104, baseType: !2133, size: 64, offset: 11328)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1241, line: 46, flags: DIFlagFwdDecl)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1240, file: !1241, line: 1105, baseType: !1196, size: 192, offset: 11392)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1240, file: !1241, line: 1106, baseType: !7, size: 32, offset: 11584)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1240, file: !1241, line: 1109, baseType: !2138, size: 128, offset: 11648)
!2138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2139, size: 128, elements: !230)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1241, line: 51, flags: DIFlagFwdDecl)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1240, file: !1241, line: 1110, baseType: !1196, size: 192, offset: 11776)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1240, file: !1241, line: 1111, baseType: !249, size: 128, offset: 11968)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1240, file: !1241, line: 1173, baseType: !2144, size: 64, offset: 12096)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2146, line: 62, size: 256, align: 256, elements: !2147)
!2146 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2147 = !{!2148, !2149, !2150, !2155}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2145, file: !2146, line: 75, baseType: !218, size: 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2145, file: !2146, line: 90, baseType: !218, size: 32, offset: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2145, file: !2146, line: 124, baseType: !2151, size: 64, offset: 64)
!2151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2145, file: !2146, line: 109, size: 64, elements: !2152)
!2152 = !{!2153, !2154}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2151, file: !2146, line: 110, baseType: !445, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2151, file: !2146, line: 112, baseType: !445, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2145, file: !2146, line: 144, baseType: !218, size: 32, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1240, file: !1241, line: 1174, baseType: !216, size: 32, offset: 12160)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1240, file: !1241, line: 1179, baseType: !203, size: 64, offset: 12224)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1240, file: !1241, line: 1182, baseType: !2159, size: 128, offset: 12288)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1174, line: 76, size: 128, elements: !2160)
!2160 = !{!2161, !2166, !2167}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2159, file: !1174, line: 85, baseType: !2162, size: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2163, line: 7, size: 64, elements: !2164)
!2163 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2164 = !{!2165}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2162, file: !2163, line: 12, baseType: !1390, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2159, file: !1174, line: 88, baseType: !513, size: 8, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2159, file: !1174, line: 95, baseType: !513, size: 8, offset: 72)
!2168 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !1241, line: 1184, baseType: !2169, size: 128, offset: 12416)
!2169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1240, file: !1241, line: 1184, size: 128, elements: !2170)
!2170 = !{!2171, !2172}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2169, file: !1241, line: 1185, baseType: !1253, size: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2169, file: !1241, line: 1186, baseType: !392, size: 128, align: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1240, file: !1241, line: 1190, baseType: !2174, size: 64, offset: 12544)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1241, line: 53, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1240, file: !1241, line: 1192, baseType: !2177, size: 128, offset: 12608)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1174, line: 64, size: 128, elements: !2178)
!2178 = !{!2179, !2180, !2181}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2177, file: !1174, line: 65, baseType: !744, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2177, file: !1174, line: 67, baseType: !218, size: 32, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2177, file: !1174, line: 68, baseType: !218, size: 32, offset: 96)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1240, file: !1241, line: 1206, baseType: !209, size: 32, offset: 12736)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1240, file: !1241, line: 1207, baseType: !209, size: 32, offset: 12768)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1240, file: !1241, line: 1209, baseType: !203, size: 64, offset: 12800)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1240, file: !1241, line: 1219, baseType: !444, size: 64, offset: 12864)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1240, file: !1241, line: 1220, baseType: !444, size: 64, offset: 12928)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1240, file: !1241, line: 1317, baseType: !209, size: 32, offset: 12992)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1240, file: !1241, line: 1319, baseType: !1239, size: 64, offset: 13056)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1240, file: !1241, line: 1322, baseType: !2190, size: 64, offset: 13120)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2192, line: 56, size: 512, elements: !2193)
!2192 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2193 = !{!2194, !2195, !2196, !2197, !2198, !2199, !2200, !2202}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2191, file: !2192, line: 57, baseType: !2190, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2191, file: !2192, line: 58, baseType: !204, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2191, file: !2192, line: 59, baseType: !203, size: 64, offset: 128)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2191, file: !2192, line: 60, baseType: !203, size: 64, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2191, file: !2192, line: 61, baseType: !843, size: 64, offset: 256)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2191, file: !2192, line: 62, baseType: !7, size: 32, offset: 320)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2191, file: !2192, line: 63, baseType: !2201, size: 64, offset: 384)
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !202, line: 153, baseType: !444)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2191, file: !2192, line: 64, baseType: !2203, size: 64, offset: 448)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1240, file: !1241, line: 1326, baseType: !1253, size: 32, offset: 13184)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1240, file: !1241, line: 1342, baseType: !204, size: 64, offset: 13248)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1240, file: !1241, line: 1343, baseType: !445, size: 64, offset: 13312)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1240, file: !1241, line: 1344, baseType: !444, size: 64, offset: 13376)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1240, file: !1241, line: 1345, baseType: !445, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1240, file: !1241, line: 1346, baseType: !445, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1240, file: !1241, line: 1347, baseType: !445, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1240, file: !1241, line: 1348, baseType: !392, size: 128, align: 64, offset: 13504)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1240, file: !1241, line: 1358, baseType: !2214, size: 34816, offset: 13824)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2215, line: 485, size: 34816, elements: !2216)
!2215 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2216 = !{!2217, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2246, !2247, !2248, !2249, !2250, !2251, !2254, !2255, !2256}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2214, file: !2215, line: 487, baseType: !2218, size: 192)
!2218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2219, size: 192, elements: !304)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2220, line: 16, size: 64, elements: !2221)
!2220 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2221 = !{!2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2219, file: !2220, line: 17, baseType: !882, size: 16)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2219, file: !2220, line: 18, baseType: !882, size: 16, offset: 16)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2219, file: !2220, line: 19, baseType: !882, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2219, file: !2220, line: 19, baseType: !882, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2219, file: !2220, line: 19, baseType: !882, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2219, file: !2220, line: 19, baseType: !882, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2219, file: !2220, line: 19, baseType: !882, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2219, file: !2220, line: 20, baseType: !882, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2219, file: !2220, line: 20, baseType: !882, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2219, file: !2220, line: 20, baseType: !882, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2219, file: !2220, line: 20, baseType: !882, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2219, file: !2220, line: 20, baseType: !882, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2219, file: !2220, line: 20, baseType: !882, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2214, file: !2215, line: 491, baseType: !203, size: 64, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2214, file: !2215, line: 495, baseType: !344, size: 16, offset: 256)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2214, file: !2215, line: 496, baseType: !344, size: 16, offset: 272)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2214, file: !2215, line: 497, baseType: !344, size: 16, offset: 288)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2214, file: !2215, line: 498, baseType: !344, size: 16, offset: 304)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2214, file: !2215, line: 502, baseType: !203, size: 64, offset: 320)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2214, file: !2215, line: 503, baseType: !203, size: 64, offset: 384)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2214, file: !2215, line: 514, baseType: !2243, size: 256, offset: 448)
!2243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2244, size: 256, elements: !1178)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2215, line: 483, flags: DIFlagFwdDecl)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2214, file: !2215, line: 516, baseType: !203, size: 64, offset: 704)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2214, file: !2215, line: 518, baseType: !203, size: 64, offset: 768)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2214, file: !2215, line: 520, baseType: !203, size: 64, offset: 832)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2214, file: !2215, line: 521, baseType: !203, size: 64, offset: 896)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2214, file: !2215, line: 522, baseType: !203, size: 64, offset: 960)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2214, file: !2215, line: 528, baseType: !2252, size: 64, offset: 1024)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2215, line: 10, flags: DIFlagFwdDecl)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2214, file: !2215, line: 535, baseType: !203, size: 64, offset: 1088)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2214, file: !2215, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2214, file: !2215, line: 540, baseType: !2257, size: 33280, offset: 1536)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2258, line: 317, size: 33280, elements: !2259)
!2258 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2259 = !{!2260, !2261, !2262}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2257, file: !2258, line: 330, baseType: !7, size: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2257, file: !2258, line: 337, baseType: !203, size: 64, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2257, file: !2258, line: 348, baseType: !2263, size: 32768, offset: 512)
!2263 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2258, line: 304, size: 32768, elements: !2264)
!2264 = !{!2265, !2280, !2319, !2369, !2382}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2263, file: !2258, line: 305, baseType: !2266, size: 896)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2258, line: 12, size: 896, elements: !2267)
!2267 = !{!2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2279}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2266, file: !2258, line: 13, baseType: !216, size: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2266, file: !2258, line: 14, baseType: !216, size: 32, offset: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2266, file: !2258, line: 15, baseType: !216, size: 32, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2266, file: !2258, line: 16, baseType: !216, size: 32, offset: 96)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2266, file: !2258, line: 17, baseType: !216, size: 32, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2266, file: !2258, line: 18, baseType: !216, size: 32, offset: 160)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2266, file: !2258, line: 19, baseType: !216, size: 32, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2266, file: !2258, line: 22, baseType: !2276, size: 640, offset: 224)
!2276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 640, elements: !2277)
!2277 = !{!2278}
!2278 = !DISubrange(count: 20)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2266, file: !2258, line: 25, baseType: !216, size: 32, offset: 864)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2263, file: !2258, line: 306, baseType: !2281, size: 4096, align: 128)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2258, line: 34, size: 4096, align: 128, elements: !2282)
!2282 = !{!2283, !2284, !2285, !2286, !2287, !2302, !2303, !2304, !2308, !2310, !2314}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2281, file: !2258, line: 35, baseType: !882, size: 16)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2281, file: !2258, line: 36, baseType: !882, size: 16, offset: 16)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2281, file: !2258, line: 37, baseType: !882, size: 16, offset: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2281, file: !2258, line: 38, baseType: !882, size: 16, offset: 48)
!2287 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !2258, line: 39, baseType: !2288, size: 128, offset: 64)
!2288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2281, file: !2258, line: 39, size: 128, elements: !2289)
!2289 = !{!2290, !2295}
!2290 = !DIDerivedType(tag: DW_TAG_member, scope: !2288, file: !2258, line: 40, baseType: !2291, size: 128)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2288, file: !2258, line: 40, size: 128, elements: !2292)
!2292 = !{!2293, !2294}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2291, file: !2258, line: 41, baseType: !444, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2291, file: !2258, line: 42, baseType: !444, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, scope: !2288, file: !2258, line: 44, baseType: !2296, size: 128)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2288, file: !2258, line: 44, size: 128, elements: !2297)
!2297 = !{!2298, !2299, !2300, !2301}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2296, file: !2258, line: 45, baseType: !216, size: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2296, file: !2258, line: 46, baseType: !216, size: 32, offset: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2296, file: !2258, line: 47, baseType: !216, size: 32, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2296, file: !2258, line: 48, baseType: !216, size: 32, offset: 96)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2281, file: !2258, line: 51, baseType: !216, size: 32, offset: 192)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2281, file: !2258, line: 52, baseType: !216, size: 32, offset: 224)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2281, file: !2258, line: 55, baseType: !2305, size: 1024, offset: 256)
!2305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 1024, elements: !2306)
!2306 = !{!2307}
!2307 = !DISubrange(count: 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2281, file: !2258, line: 58, baseType: !2309, size: 2048, offset: 1280)
!2309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 2048, elements: !308)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2281, file: !2258, line: 60, baseType: !2311, size: 384, offset: 3328)
!2311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 384, elements: !2312)
!2312 = !{!2313}
!2313 = !DISubrange(count: 12)
!2314 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !2258, line: 62, baseType: !2315, size: 384, offset: 3712)
!2315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2281, file: !2258, line: 62, size: 384, elements: !2316)
!2316 = !{!2317, !2318}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2315, file: !2258, line: 63, baseType: !2311, size: 384)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2315, file: !2258, line: 64, baseType: !2311, size: 384)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2263, file: !2258, line: 307, baseType: !2320, size: 1088)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2258, line: 79, size: 1088, elements: !2321)
!2321 = !{!2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2368}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2320, file: !2258, line: 80, baseType: !216, size: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2320, file: !2258, line: 81, baseType: !216, size: 32, offset: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2320, file: !2258, line: 82, baseType: !216, size: 32, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2320, file: !2258, line: 83, baseType: !216, size: 32, offset: 96)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2320, file: !2258, line: 84, baseType: !216, size: 32, offset: 128)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2320, file: !2258, line: 85, baseType: !216, size: 32, offset: 160)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2320, file: !2258, line: 86, baseType: !216, size: 32, offset: 192)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2320, file: !2258, line: 88, baseType: !2276, size: 640, offset: 224)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2320, file: !2258, line: 89, baseType: !1375, size: 8, offset: 864)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2320, file: !2258, line: 90, baseType: !1375, size: 8, offset: 872)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2320, file: !2258, line: 91, baseType: !1375, size: 8, offset: 880)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2320, file: !2258, line: 92, baseType: !1375, size: 8, offset: 888)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2320, file: !2258, line: 93, baseType: !1375, size: 8, offset: 896)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2320, file: !2258, line: 94, baseType: !1375, size: 8, offset: 904)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2320, file: !2258, line: 95, baseType: !2337, size: 64, offset: 960)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2339, line: 11, size: 128, elements: !2340)
!2339 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2340 = !{!2341, !2342}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2338, file: !2339, line: 12, baseType: !154, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2338, file: !2339, line: 13, baseType: !2343, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2345, line: 56, size: 1344, elements: !2346)
!2345 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2346 = !{!2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2344, file: !2345, line: 61, baseType: !203, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2344, file: !2345, line: 62, baseType: !203, size: 64, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2344, file: !2345, line: 63, baseType: !203, size: 64, offset: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2344, file: !2345, line: 64, baseType: !203, size: 64, offset: 192)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2344, file: !2345, line: 65, baseType: !203, size: 64, offset: 256)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2344, file: !2345, line: 66, baseType: !203, size: 64, offset: 320)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2344, file: !2345, line: 68, baseType: !203, size: 64, offset: 384)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2344, file: !2345, line: 69, baseType: !203, size: 64, offset: 448)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2344, file: !2345, line: 70, baseType: !203, size: 64, offset: 512)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2344, file: !2345, line: 71, baseType: !203, size: 64, offset: 576)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2344, file: !2345, line: 72, baseType: !203, size: 64, offset: 640)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2344, file: !2345, line: 73, baseType: !203, size: 64, offset: 704)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2344, file: !2345, line: 74, baseType: !203, size: 64, offset: 768)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2344, file: !2345, line: 75, baseType: !203, size: 64, offset: 832)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2344, file: !2345, line: 76, baseType: !203, size: 64, offset: 896)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2344, file: !2345, line: 81, baseType: !203, size: 64, offset: 960)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2344, file: !2345, line: 83, baseType: !203, size: 64, offset: 1024)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2344, file: !2345, line: 84, baseType: !203, size: 64, offset: 1088)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2344, file: !2345, line: 85, baseType: !203, size: 64, offset: 1152)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2344, file: !2345, line: 86, baseType: !203, size: 64, offset: 1216)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2344, file: !2345, line: 87, baseType: !203, size: 64, offset: 1280)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2320, file: !2258, line: 96, baseType: !216, size: 32, offset: 1024)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2263, file: !2258, line: 308, baseType: !2370, size: 4608, align: 512)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2258, line: 289, size: 4608, align: 512, elements: !2371)
!2371 = !{!2372, !2373, !2380}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2370, file: !2258, line: 290, baseType: !2281, size: 4096, align: 128)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2370, file: !2258, line: 291, baseType: !2374, size: 512, offset: 4096)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2258, line: 268, size: 512, elements: !2375)
!2375 = !{!2376, !2377, !2378}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2374, file: !2258, line: 269, baseType: !444, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2374, file: !2258, line: 270, baseType: !444, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2374, file: !2258, line: 271, baseType: !2379, size: 384, offset: 128)
!2379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 384, elements: !1683)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2370, file: !2258, line: 292, baseType: !2381, offset: 4608)
!2381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1375, elements: !1779)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2263, file: !2258, line: 309, baseType: !2383, size: 32768)
!2383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1375, size: 32768, elements: !2384)
!2384 = !{!2385}
!2385 = !DISubrange(count: 4096)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1236, file: !746, line: 378, baseType: !2387, size: 64, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1232, file: !746, line: 384, baseType: !1562, size: 192, offset: 192)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1001, file: !746, line: 500, baseType: !262, offset: 6656)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1001, file: !746, line: 501, baseType: !2391, size: 64, offset: 6656)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !746, line: 387, flags: DIFlagFwdDecl)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1001, file: !746, line: 516, baseType: !1540, size: 64, offset: 6720)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1001, file: !746, line: 519, baseType: !379, size: 64, offset: 6784)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1001, file: !746, line: 521, baseType: !2396, size: 64, offset: 6848)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !746, line: 521, flags: DIFlagFwdDecl)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1001, file: !746, line: 545, baseType: !770, size: 32, offset: 6912)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1001, file: !746, line: 548, baseType: !513, size: 8, offset: 6944)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1001, file: !746, line: 550, baseType: !2401, offset: 6952)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2402, line: 142, elements: !276)
!2402 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1001, file: !746, line: 554, baseType: !2034, size: 256, offset: 6976)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1001, file: !746, line: 557, baseType: !216, size: 32, offset: 7232)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !998, file: !746, line: 565, baseType: !2406, offset: 7296)
!2406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, elements: !2407)
!2407 = !{!2408}
!2408 = !DISubrange(count: -1)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !994, file: !746, line: 151, baseType: !770, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !987, file: !746, line: 156, baseType: !262, offset: 256)
!2411 = !DIDerivedType(tag: DW_TAG_member, scope: !750, file: !746, line: 159, baseType: !2412, size: 128)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !750, file: !746, line: 159, size: 128, elements: !2413)
!2413 = !{!2414, !2478}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2412, file: !746, line: 161, baseType: !2415, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !38, line: 110, size: 1152, elements: !2417)
!2417 = !{!2418, !2428, !2449, !2450, !2451, !2452, !2453, !2465, !2466, !2467}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2416, file: !38, line: 111, baseType: !2419, size: 384)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !38, line: 19, size: 384, elements: !2420)
!2420 = !{!2421, !2423, !2424, !2425, !2426, !2427}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2419, file: !38, line: 20, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2419, file: !38, line: 21, baseType: !2422, size: 64, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2419, file: !38, line: 22, baseType: !2422, size: 64, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2419, file: !38, line: 23, baseType: !203, size: 64, offset: 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2419, file: !38, line: 24, baseType: !203, size: 64, offset: 256)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2419, file: !38, line: 25, baseType: !203, size: 64, offset: 320)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2416, file: !38, line: 112, baseType: !2429, size: 64, offset: 384)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2431, line: 105, size: 128, elements: !2432)
!2431 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2432 = !{!2433, !2434}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2430, file: !2431, line: 110, baseType: !203, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2430, file: !2431, line: 118, baseType: !2435, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2431, line: 95, size: 448, elements: !2437)
!2437 = !{!2438, !2439, !2444, !2445, !2446, !2447, !2448}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2436, file: !2431, line: 96, baseType: !794, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2436, file: !2431, line: 97, baseType: !2440, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2431, line: 60, baseType: !2442)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{null, !2429}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2436, file: !2431, line: 98, baseType: !2440, size: 64, offset: 128)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2436, file: !2431, line: 99, baseType: !513, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2436, file: !2431, line: 100, baseType: !513, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2436, file: !2431, line: 101, baseType: !392, size: 128, align: 64, offset: 256)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2436, file: !2431, line: 102, baseType: !2429, size: 64, offset: 384)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2416, file: !38, line: 113, baseType: !2430, size: 128, offset: 448)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2416, file: !38, line: 114, baseType: !1562, size: 192, offset: 576)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2416, file: !38, line: 115, baseType: !37, size: 32, offset: 768)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2416, file: !38, line: 116, baseType: !7, size: 32, offset: 800)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2416, file: !38, line: 117, baseType: !2454, size: 64, offset: 832)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2456)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !38, line: 67, size: 256, elements: !2457)
!2457 = !{!2458, !2459, !2463, !2464}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2456, file: !38, line: 73, baseType: !863, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2456, file: !38, line: 78, baseType: !2460, size: 64, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{null, !2415}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2456, file: !38, line: 83, baseType: !2460, size: 64, offset: 128)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2456, file: !38, line: 89, baseType: !1050, size: 64, offset: 192)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2416, file: !38, line: 118, baseType: !204, size: 64, offset: 896)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2416, file: !38, line: 119, baseType: !209, size: 32, offset: 960)
!2467 = !DIDerivedType(tag: DW_TAG_member, scope: !2416, file: !38, line: 120, baseType: !2468, size: 128, offset: 1024)
!2468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2416, file: !38, line: 120, size: 128, elements: !2469)
!2469 = !{!2470, !2476}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2468, file: !38, line: 121, baseType: !2471, size: 128)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2472, line: 6, size: 128, elements: !2473)
!2472 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2473 = !{!2474, !2475}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2471, file: !2472, line: 7, baseType: !444, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2471, file: !2472, line: 8, baseType: !444, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2468, file: !38, line: 122, baseType: !2477)
!2477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2471, elements: !1779)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2412, file: !746, line: 162, baseType: !204, size: 64, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !750, file: !746, line: 176, baseType: !392, size: 128, align: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, scope: !745, file: !746, line: 179, baseType: !2481, size: 32, offset: 384)
!2481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !745, file: !746, line: 179, size: 32, elements: !2482)
!2482 = !{!2483, !2484, !2485, !2486}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2481, file: !746, line: 184, baseType: !770, size: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2481, file: !746, line: 192, baseType: !7, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2481, file: !746, line: 194, baseType: !7, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2481, file: !746, line: 195, baseType: !209, size: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !745, file: !746, line: 199, baseType: !770, size: 32, offset: 416)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !680, file: !51, line: 1964, baseType: !2489, size: 64, offset: 1344)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!154, !622, !2492}
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2494, line: 12, size: 256, elements: !2495)
!2494 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2495 = !{!2496, !2497, !2498, !2499, !2500}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2493, file: !2494, line: 13, baseType: !201, size: 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2493, file: !2494, line: 16, baseType: !209, size: 32, offset: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2493, file: !2494, line: 23, baseType: !203, size: 64, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2493, file: !2494, line: 30, baseType: !203, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2493, file: !2494, line: 33, baseType: !2501, size: 64, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !746, line: 27, flags: DIFlagFwdDecl)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !680, file: !51, line: 1966, baseType: !2489, size: 64, offset: 1408)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !623, file: !51, line: 1424, baseType: !2505, size: 64, offset: 448)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2507)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !45, line: 322, size: 704, elements: !2508)
!2508 = !{!2509, !2555, !2559, !2563, !2564, !2565, !2566, !2567, !2572, !2577, !2581}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2507, file: !45, line: 323, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!209, !2513}
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !45, line: 294, size: 1600, elements: !2515)
!2515 = !{!2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2540, !2541, !2542}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2514, file: !45, line: 295, baseType: !662, size: 128)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2514, file: !45, line: 296, baseType: !249, size: 128, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2514, file: !45, line: 297, baseType: !249, size: 128, offset: 256)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2514, file: !45, line: 298, baseType: !249, size: 128, offset: 384)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2514, file: !45, line: 299, baseType: !1196, size: 192, offset: 512)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2514, file: !45, line: 300, baseType: !262, offset: 704)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2514, file: !45, line: 301, baseType: !770, size: 32, offset: 704)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2514, file: !45, line: 302, baseType: !622, size: 64, offset: 768)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2514, file: !45, line: 303, baseType: !2525, size: 64, offset: 832)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !45, line: 68, size: 64, elements: !2526)
!2526 = !{!2527, !2539}
!2527 = !DIDerivedType(tag: DW_TAG_member, scope: !2525, file: !45, line: 69, baseType: !2528, size: 32)
!2528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2525, file: !45, line: 69, size: 32, elements: !2529)
!2529 = !{!2530, !2531, !2532}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2528, file: !45, line: 70, baseType: !458, size: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2528, file: !45, line: 71, baseType: !466, size: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2528, file: !45, line: 72, baseType: !2533, size: 32)
!2533 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2534, line: 24, baseType: !2535)
!2534 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2534, line: 22, size: 32, elements: !2536)
!2536 = !{!2537}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2535, file: !2534, line: 23, baseType: !2538, size: 32)
!2538 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2534, line: 20, baseType: !464)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2525, file: !45, line: 74, baseType: !44, size: 32, offset: 32)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2514, file: !45, line: 304, baseType: !554, size: 64, offset: 896)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2514, file: !45, line: 305, baseType: !203, size: 64, offset: 960)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2514, file: !45, line: 306, baseType: !2543, size: 576, offset: 1024)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !45, line: 205, size: 576, elements: !2544)
!2544 = !{!2545, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2543, file: !45, line: 206, baseType: !2546, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !45, line: 66, baseType: !556)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2543, file: !45, line: 207, baseType: !2546, size: 64, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2543, file: !45, line: 208, baseType: !2546, size: 64, offset: 128)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2543, file: !45, line: 209, baseType: !2546, size: 64, offset: 192)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2543, file: !45, line: 210, baseType: !2546, size: 64, offset: 256)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2543, file: !45, line: 211, baseType: !2546, size: 64, offset: 320)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2543, file: !45, line: 212, baseType: !2546, size: 64, offset: 384)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2543, file: !45, line: 213, baseType: !562, size: 64, offset: 448)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2543, file: !45, line: 214, baseType: !562, size: 64, offset: 512)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2507, file: !45, line: 324, baseType: !2556, size: 64, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!2513, !622, !209}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2507, file: !45, line: 325, baseType: !2560, size: 64, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{null, !2513}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2507, file: !45, line: 326, baseType: !2510, size: 64, offset: 192)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2507, file: !45, line: 327, baseType: !2510, size: 64, offset: 256)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2507, file: !45, line: 328, baseType: !2510, size: 64, offset: 320)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2507, file: !45, line: 329, baseType: !708, size: 64, offset: 384)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2507, file: !45, line: 332, baseType: !2568, size: 64, offset: 448)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!2571, !452}
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2507, file: !45, line: 333, baseType: !2573, size: 64, offset: 512)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!209, !452, !2576}
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2507, file: !45, line: 335, baseType: !2578, size: 64, offset: 576)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!209, !452, !2571}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2507, file: !45, line: 337, baseType: !2582, size: 64, offset: 640)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!209, !622, !2585}
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !623, file: !51, line: 1425, baseType: !2587, size: 64, offset: 512)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2589)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !45, line: 428, size: 704, elements: !2590)
!2590 = !{!2591, !2595, !2596, !2600, !2601, !2602, !2617, !2640, !2644, !2645, !2668}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2589, file: !45, line: 429, baseType: !2592, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!209, !622, !209, !209, !572}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2589, file: !45, line: 430, baseType: !708, size: 64, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2589, file: !45, line: 431, baseType: !2597, size: 64, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!209, !622, !7}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2589, file: !45, line: 432, baseType: !2597, size: 64, offset: 192)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2589, file: !45, line: 433, baseType: !708, size: 64, offset: 256)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2589, file: !45, line: 434, baseType: !2603, size: 64, offset: 320)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!209, !622, !209, !2606}
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !45, line: 415, size: 256, elements: !2608)
!2608 = !{!2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2607, file: !45, line: 416, baseType: !209, size: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2607, file: !45, line: 417, baseType: !7, size: 32, offset: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2607, file: !45, line: 418, baseType: !7, size: 32, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2607, file: !45, line: 420, baseType: !7, size: 32, offset: 96)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2607, file: !45, line: 421, baseType: !7, size: 32, offset: 128)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2607, file: !45, line: 422, baseType: !7, size: 32, offset: 160)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2607, file: !45, line: 423, baseType: !7, size: 32, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2607, file: !45, line: 424, baseType: !7, size: 32, offset: 224)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2589, file: !45, line: 435, baseType: !2618, size: 64, offset: 384)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!209, !622, !2525, !2621}
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !45, line: 343, size: 960, elements: !2623)
!2623 = !{!2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2622, file: !45, line: 344, baseType: !209, size: 32)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2622, file: !45, line: 345, baseType: !444, size: 64, offset: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2622, file: !45, line: 346, baseType: !444, size: 64, offset: 128)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2622, file: !45, line: 347, baseType: !444, size: 64, offset: 192)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2622, file: !45, line: 348, baseType: !444, size: 64, offset: 256)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2622, file: !45, line: 349, baseType: !444, size: 64, offset: 320)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2622, file: !45, line: 350, baseType: !444, size: 64, offset: 384)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2622, file: !45, line: 351, baseType: !800, size: 64, offset: 448)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2622, file: !45, line: 353, baseType: !800, size: 64, offset: 512)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2622, file: !45, line: 354, baseType: !209, size: 32, offset: 576)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2622, file: !45, line: 355, baseType: !209, size: 32, offset: 608)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2622, file: !45, line: 356, baseType: !444, size: 64, offset: 640)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2622, file: !45, line: 357, baseType: !444, size: 64, offset: 704)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2622, file: !45, line: 358, baseType: !444, size: 64, offset: 768)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2622, file: !45, line: 359, baseType: !800, size: 64, offset: 832)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2622, file: !45, line: 360, baseType: !209, size: 32, offset: 896)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2589, file: !45, line: 436, baseType: !2641, size: 64, offset: 448)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!209, !622, !2585, !2621}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2589, file: !45, line: 438, baseType: !2618, size: 64, offset: 512)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2589, file: !45, line: 439, baseType: !2646, size: 64, offset: 576)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!209, !622, !2649}
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !45, line: 409, size: 1408, elements: !2651)
!2651 = !{!2652, !2653}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2650, file: !45, line: 410, baseType: !7, size: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2650, file: !45, line: 411, baseType: !2654, size: 1344, offset: 64)
!2654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2655, size: 1344, elements: !304)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !45, line: 395, size: 448, elements: !2656)
!2656 = !{!2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2667}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2655, file: !45, line: 396, baseType: !7, size: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2655, file: !45, line: 397, baseType: !7, size: 32, offset: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2655, file: !45, line: 399, baseType: !7, size: 32, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2655, file: !45, line: 400, baseType: !7, size: 32, offset: 96)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2655, file: !45, line: 401, baseType: !7, size: 32, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2655, file: !45, line: 402, baseType: !7, size: 32, offset: 160)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2655, file: !45, line: 403, baseType: !7, size: 32, offset: 192)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2655, file: !45, line: 404, baseType: !446, size: 64, offset: 256)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2655, file: !45, line: 405, baseType: !2666, size: 64, offset: 320)
!2666 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !202, line: 126, baseType: !444)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2655, file: !45, line: 406, baseType: !2666, size: 64, offset: 384)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2589, file: !45, line: 440, baseType: !2597, size: 64, offset: 640)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !623, file: !51, line: 1426, baseType: !2670, size: 64, offset: 576)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2672)
!2672 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !51, line: 49, flags: DIFlagFwdDecl)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !623, file: !51, line: 1427, baseType: !203, size: 64, offset: 640)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !623, file: !51, line: 1428, baseType: !203, size: 64, offset: 704)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !623, file: !51, line: 1429, baseType: !203, size: 64, offset: 768)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !623, file: !51, line: 1430, baseType: !409, size: 64, offset: 832)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !623, file: !51, line: 1431, baseType: !790, size: 256, offset: 896)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !623, file: !51, line: 1432, baseType: !209, size: 32, offset: 1152)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !623, file: !51, line: 1433, baseType: !770, size: 32, offset: 1184)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !623, file: !51, line: 1437, baseType: !2681, size: 64, offset: 1216)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2684)
!2684 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !51, line: 1437, flags: DIFlagFwdDecl)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !623, file: !51, line: 1449, baseType: !2686, size: 64, offset: 1280)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !425, line: 34, size: 64, elements: !2687)
!2687 = !{!2688}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2686, file: !425, line: 35, baseType: !428, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !623, file: !51, line: 1450, baseType: !249, size: 128, offset: 1344)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !623, file: !51, line: 1451, baseType: !2691, size: 64, offset: 1472)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !51, line: 699, flags: DIFlagFwdDecl)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !623, file: !51, line: 1452, baseType: !2000, size: 64, offset: 1536)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !623, file: !51, line: 1453, baseType: !2695, size: 64, offset: 1600)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !51, line: 1453, flags: DIFlagFwdDecl)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !623, file: !51, line: 1454, baseType: !662, size: 128, offset: 1664)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !623, file: !51, line: 1455, baseType: !7, size: 32, offset: 1792)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !623, file: !51, line: 1456, baseType: !2700, size: 2432, offset: 1856)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !45, line: 518, size: 2432, elements: !2701)
!2701 = !{!2702, !2703, !2704, !2706, !2738}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2700, file: !45, line: 519, baseType: !7, size: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2700, file: !45, line: 520, baseType: !790, size: 256, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2700, file: !45, line: 521, baseType: !2705, size: 192, offset: 320)
!2705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 192, elements: !304)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2700, file: !45, line: 522, baseType: !2707, size: 1728, offset: 512)
!2707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2708, size: 1728, elements: !304)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !45, line: 222, size: 576, elements: !2709)
!2709 = !{!2710, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2708, file: !45, line: 223, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !45, line: 443, size: 256, elements: !2713)
!2713 = !{!2714, !2715, !2728, !2729}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2712, file: !45, line: 444, baseType: !209, size: 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2712, file: !45, line: 445, baseType: !2716, size: 64, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2718)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !45, line: 310, size: 512, elements: !2719)
!2719 = !{!2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2718, file: !45, line: 311, baseType: !708, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2718, file: !45, line: 312, baseType: !708, size: 64, offset: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2718, file: !45, line: 313, baseType: !708, size: 64, offset: 128)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2718, file: !45, line: 314, baseType: !708, size: 64, offset: 192)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2718, file: !45, line: 315, baseType: !2510, size: 64, offset: 256)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2718, file: !45, line: 316, baseType: !2510, size: 64, offset: 320)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2718, file: !45, line: 317, baseType: !2510, size: 64, offset: 384)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2718, file: !45, line: 318, baseType: !2582, size: 64, offset: 448)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2712, file: !45, line: 446, baseType: !198, size: 64, offset: 128)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2712, file: !45, line: 447, baseType: !2711, size: 64, offset: 192)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2708, file: !45, line: 224, baseType: !209, size: 32, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2708, file: !45, line: 226, baseType: !249, size: 128, offset: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2708, file: !45, line: 227, baseType: !203, size: 64, offset: 256)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2708, file: !45, line: 228, baseType: !7, size: 32, offset: 320)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2708, file: !45, line: 229, baseType: !7, size: 32, offset: 352)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2708, file: !45, line: 230, baseType: !2546, size: 64, offset: 384)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2708, file: !45, line: 231, baseType: !2546, size: 64, offset: 448)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2708, file: !45, line: 232, baseType: !204, size: 64, offset: 512)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2700, file: !45, line: 523, baseType: !2739, size: 192, offset: 2240)
!2739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2716, size: 192, elements: !304)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !623, file: !51, line: 1458, baseType: !2741, size: 2112, offset: 4288)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !51, line: 1410, size: 2112, elements: !2742)
!2742 = !{!2743, !2744, !2745}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2741, file: !51, line: 1411, baseType: !209, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2741, file: !51, line: 1412, baseType: !1504, size: 128, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2741, file: !51, line: 1413, baseType: !2746, size: 1920, offset: 192)
!2746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2747, size: 1920, elements: !304)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2748, line: 12, size: 640, elements: !2749)
!2748 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2749 = !{!2750, !2758, !2760, !2765, !2766}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2747, file: !2748, line: 13, baseType: !2751, size: 320)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2752, line: 17, size: 320, elements: !2753)
!2752 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2753 = !{!2754, !2755, !2756, !2757}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2751, file: !2752, line: 18, baseType: !209, size: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2751, file: !2752, line: 19, baseType: !209, size: 32, offset: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2751, file: !2752, line: 20, baseType: !1504, size: 128, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2751, file: !2752, line: 22, baseType: !392, size: 128, align: 64, offset: 192)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2747, file: !2748, line: 14, baseType: !2759, size: 64, offset: 320)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2747, file: !2748, line: 15, baseType: !2761, size: 64, offset: 384)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2762, line: 16, size: 64, elements: !2763)
!2762 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2763 = !{!2764}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2761, file: !2762, line: 17, baseType: !1239, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2747, file: !2748, line: 16, baseType: !1504, size: 128, offset: 448)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2747, file: !2748, line: 17, baseType: !770, size: 32, offset: 576)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !623, file: !51, line: 1465, baseType: !204, size: 64, offset: 6400)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !623, file: !51, line: 1468, baseType: !216, size: 32, offset: 6464)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !623, file: !51, line: 1470, baseType: !562, size: 64, offset: 6528)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !623, file: !51, line: 1471, baseType: !562, size: 64, offset: 6592)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !623, file: !51, line: 1473, baseType: !218, size: 32, offset: 6656)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !623, file: !51, line: 1474, baseType: !2773, size: 64, offset: 6720)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !51, line: 603, flags: DIFlagFwdDecl)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !623, file: !51, line: 1477, baseType: !2776, size: 256, offset: 6784)
!2776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 256, elements: !2306)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !623, file: !51, line: 1478, baseType: !2778, size: 128, offset: 7040)
!2778 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2779, line: 18, baseType: !2780)
!2779 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2779, line: 16, size: 128, elements: !2781)
!2781 = !{!2782}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2780, file: !2779, line: 17, baseType: !2783, size: 128)
!2783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1376, size: 128, elements: !213)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !623, file: !51, line: 1480, baseType: !7, size: 32, offset: 7168)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !623, file: !51, line: 1481, baseType: !2786, size: 32, offset: 7200)
!2786 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !202, line: 150, baseType: !7)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !623, file: !51, line: 1487, baseType: !1196, size: 192, offset: 7232)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !623, file: !51, line: 1493, baseType: !246, size: 64, offset: 7424)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !623, file: !51, line: 1495, baseType: !2790, size: 64, offset: 7488)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2792)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !407, line: 135, size: 1024, align: 512, elements: !2793)
!2793 = !{!2794, !2798, !2799, !2806, !2812, !2816, !2820, !2824, !2825, !2829, !2833, !2838, !2842}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2792, file: !407, line: 136, baseType: !2795, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!209, !409, !7}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2792, file: !407, line: 137, baseType: !2795, size: 64, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2792, file: !407, line: 138, baseType: !2800, size: 64, offset: 128)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!209, !2803, !2805}
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2792, file: !407, line: 139, baseType: !2807, size: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!209, !2803, !7, !246, !2810}
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2792, file: !407, line: 141, baseType: !2813, size: 64, offset: 256)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!209, !2803}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2792, file: !407, line: 142, baseType: !2817, size: 64, offset: 320)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!209, !409}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2792, file: !407, line: 143, baseType: !2821, size: 64, offset: 384)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{null, !409}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2792, file: !407, line: 144, baseType: !2821, size: 64, offset: 448)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2792, file: !407, line: 145, baseType: !2826, size: 64, offset: 512)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{null, !409, !452}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2792, file: !407, line: 146, baseType: !2830, size: 64, offset: 576)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!303, !409, !303, !209}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2792, file: !407, line: 147, baseType: !2834, size: 64, offset: 640)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!405, !2837}
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2792, file: !407, line: 148, baseType: !2839, size: 64, offset: 704)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!209, !572, !513}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2792, file: !407, line: 149, baseType: !2843, size: 64, offset: 768)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!409, !409, !2846}
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !623, file: !51, line: 1500, baseType: !209, size: 32, offset: 7552)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !623, file: !51, line: 1502, baseType: !2850, size: 448, offset: 7616)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2494, line: 60, size: 448, elements: !2851)
!2851 = !{!2852, !2857, !2858, !2859, !2860, !2861, !2862}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2850, file: !2494, line: 61, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!203, !2856, !2492}
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2850, file: !2494, line: 63, baseType: !2853, size: 64, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2850, file: !2494, line: 66, baseType: !154, size: 64, offset: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2850, file: !2494, line: 67, baseType: !209, size: 32, offset: 192)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2850, file: !2494, line: 68, baseType: !7, size: 32, offset: 224)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2850, file: !2494, line: 71, baseType: !249, size: 128, offset: 256)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2850, file: !2494, line: 77, baseType: !2863, size: 64, offset: 384)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !623, file: !51, line: 1505, baseType: !794, size: 64, offset: 8064)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !623, file: !51, line: 1508, baseType: !794, size: 64, offset: 8128)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !623, file: !51, line: 1511, baseType: !209, size: 32, offset: 8192)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !623, file: !51, line: 1514, baseType: !932, size: 32, offset: 8224)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !623, file: !51, line: 1517, baseType: !2869, size: 64, offset: 8256)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !153, line: 18, flags: DIFlagFwdDecl)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !623, file: !51, line: 1518, baseType: !658, size: 64, offset: 8320)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !623, file: !51, line: 1525, baseType: !1540, size: 64, offset: 8384)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !623, file: !51, line: 1532, baseType: !2874, size: 64, offset: 8448)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2875, line: 52, size: 64, elements: !2876)
!2875 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2876 = !{!2877}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2874, file: !2875, line: 53, baseType: !2878, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2875, line: 40, size: 256, elements: !2880)
!2880 = !{!2881, !2882, !2887}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2879, file: !2875, line: 42, baseType: !262)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2879, file: !2875, line: 44, baseType: !2883, size: 192)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2875, line: 28, size: 192, elements: !2884)
!2884 = !{!2885, !2886}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2883, file: !2875, line: 29, baseType: !249, size: 128)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2883, file: !2875, line: 31, baseType: !154, size: 64, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2879, file: !2875, line: 49, baseType: !154, size: 64, offset: 192)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !623, file: !51, line: 1533, baseType: !2874, size: 64, offset: 8512)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !623, file: !51, line: 1534, baseType: !392, size: 128, align: 64, offset: 8576)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !623, file: !51, line: 1535, baseType: !2034, size: 256, offset: 8704)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !623, file: !51, line: 1537, baseType: !1196, size: 192, offset: 8960)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !623, file: !51, line: 1542, baseType: !209, size: 32, offset: 9152)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !623, file: !51, line: 1545, baseType: !262, offset: 9184)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !623, file: !51, line: 1546, baseType: !249, size: 128, offset: 9216)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !623, file: !51, line: 1548, baseType: !262, offset: 9344)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !623, file: !51, line: 1549, baseType: !249, size: 128, offset: 9344)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !453, file: !51, line: 624, baseType: !757, size: 64, offset: 256)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !453, file: !51, line: 631, baseType: !203, size: 64, offset: 320)
!2899 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !51, line: 639, baseType: !2900, size: 32, offset: 384)
!2900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !51, line: 639, size: 32, elements: !2901)
!2901 = !{!2902, !2904}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2900, file: !51, line: 640, baseType: !2903, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2900, file: !51, line: 641, baseType: !7, size: 32)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !453, file: !51, line: 643, baseType: !536, size: 32, offset: 416)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !453, file: !51, line: 644, baseType: !554, size: 64, offset: 448)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !453, file: !51, line: 645, baseType: !558, size: 128, offset: 512)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !453, file: !51, line: 646, baseType: !558, size: 128, offset: 640)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !453, file: !51, line: 647, baseType: !558, size: 128, offset: 768)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !453, file: !51, line: 648, baseType: !262, offset: 896)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !453, file: !51, line: 649, baseType: !344, size: 16, offset: 896)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !453, file: !51, line: 650, baseType: !1375, size: 8, offset: 912)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !453, file: !51, line: 651, baseType: !1375, size: 8, offset: 920)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !453, file: !51, line: 652, baseType: !2666, size: 64, offset: 960)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !453, file: !51, line: 659, baseType: !203, size: 64, offset: 1024)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !453, file: !51, line: 660, baseType: !790, size: 256, offset: 1088)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !453, file: !51, line: 662, baseType: !203, size: 64, offset: 1344)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !453, file: !51, line: 663, baseType: !203, size: 64, offset: 1408)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !453, file: !51, line: 665, baseType: !662, size: 128, offset: 1472)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !453, file: !51, line: 666, baseType: !249, size: 128, offset: 1600)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !453, file: !51, line: 675, baseType: !249, size: 128, offset: 1728)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !453, file: !51, line: 676, baseType: !249, size: 128, offset: 1856)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !453, file: !51, line: 677, baseType: !249, size: 128, offset: 1984)
!2924 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !51, line: 678, baseType: !2925, size: 128, offset: 2112)
!2925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !51, line: 678, size: 128, elements: !2926)
!2926 = !{!2927, !2928}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2925, file: !51, line: 679, baseType: !658, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2925, file: !51, line: 680, baseType: !392, size: 128, align: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !453, file: !51, line: 682, baseType: !796, size: 64, offset: 2240)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !453, file: !51, line: 683, baseType: !796, size: 64, offset: 2304)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !453, file: !51, line: 684, baseType: !770, size: 32, offset: 2368)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !453, file: !51, line: 685, baseType: !770, size: 32, offset: 2400)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !453, file: !51, line: 686, baseType: !770, size: 32, offset: 2432)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !453, file: !51, line: 688, baseType: !770, size: 32, offset: 2464)
!2935 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !51, line: 690, baseType: !2936, size: 64, offset: 2496)
!2936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !51, line: 690, size: 64, elements: !2937)
!2937 = !{!2938, !3161}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2936, file: !51, line: 691, baseType: !2939, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2941)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !51, line: 1822, size: 2048, elements: !2942)
!2942 = !{!2943, !2944, !2948, !2953, !2957, !2958, !2959, !2963, !2976, !2977, !2985, !2989, !2990, !2994, !2995, !2999, !3004, !3005, !3009, !3013, !3121, !3125, !3126, !3130, !3131, !3135, !3139, !3144, !3148, !3152, !3156, !3160}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2941, file: !51, line: 1823, baseType: !198, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2941, file: !51, line: 1824, baseType: !2945, size: 64, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!554, !379, !554, !209}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2941, file: !51, line: 1825, baseType: !2949, size: 64, offset: 128)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!334, !379, !303, !349, !2952}
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2941, file: !51, line: 1826, baseType: !2954, size: 64, offset: 192)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!334, !379, !246, !349, !2952}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2941, file: !51, line: 1827, baseType: !867, size: 64, offset: 256)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2941, file: !51, line: 1828, baseType: !867, size: 64, offset: 320)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2941, file: !51, line: 1829, baseType: !2960, size: 64, offset: 384)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!209, !870, !513}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2941, file: !51, line: 1830, baseType: !2964, size: 64, offset: 448)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!209, !379, !2967}
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !51, line: 1776, size: 128, elements: !2969)
!2969 = !{!2970, !2975}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2968, file: !51, line: 1777, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !51, line: 1773, baseType: !2972)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!209, !2967, !246, !209, !554, !444, !7}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2968, file: !51, line: 1778, baseType: !554, size: 64, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2941, file: !51, line: 1831, baseType: !2964, size: 64, offset: 512)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2941, file: !51, line: 1832, baseType: !2978, size: 64, offset: 576)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!2981, !379, !2983}
!2981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2982, line: 52, baseType: !7)
!2982 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !642, line: 27, flags: DIFlagFwdDecl)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2941, file: !51, line: 1833, baseType: !2986, size: 64, offset: 640)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!154, !379, !7, !203}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2941, file: !51, line: 1834, baseType: !2986, size: 64, offset: 704)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2941, file: !51, line: 1835, baseType: !2991, size: 64, offset: 768)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!209, !379, !1004}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2941, file: !51, line: 1836, baseType: !203, size: 64, offset: 832)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2941, file: !51, line: 1837, baseType: !2996, size: 64, offset: 896)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!209, !452, !379}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2941, file: !51, line: 1838, baseType: !3000, size: 64, offset: 960)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!209, !379, !3003}
!3003 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !51, line: 1007, baseType: !204)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2941, file: !51, line: 1839, baseType: !2996, size: 64, offset: 1024)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2941, file: !51, line: 1840, baseType: !3006, size: 64, offset: 1088)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!209, !379, !554, !554, !209}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2941, file: !51, line: 1841, baseType: !3010, size: 64, offset: 1152)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!209, !209, !379, !209}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2941, file: !51, line: 1842, baseType: !3014, size: 64, offset: 1216)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!209, !379, !209, !3017}
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !51, line: 1062, size: 1664, elements: !3019)
!3019 = !{!3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3051, !3052, !3053, !3066, !3097}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3018, file: !51, line: 1063, baseType: !3017, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3018, file: !51, line: 1064, baseType: !249, size: 128, offset: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3018, file: !51, line: 1065, baseType: !662, size: 128, offset: 192)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3018, file: !51, line: 1066, baseType: !249, size: 128, offset: 320)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3018, file: !51, line: 1069, baseType: !249, size: 128, offset: 448)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3018, file: !51, line: 1072, baseType: !3003, size: 64, offset: 576)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3018, file: !51, line: 1073, baseType: !7, size: 32, offset: 640)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3018, file: !51, line: 1074, baseType: !450, size: 8, offset: 672)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3018, file: !51, line: 1075, baseType: !7, size: 32, offset: 704)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3018, file: !51, line: 1076, baseType: !209, size: 32, offset: 736)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3018, file: !51, line: 1077, baseType: !1504, size: 128, offset: 768)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3018, file: !51, line: 1078, baseType: !379, size: 64, offset: 896)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3018, file: !51, line: 1079, baseType: !554, size: 64, offset: 960)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3018, file: !51, line: 1080, baseType: !554, size: 64, offset: 1024)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3018, file: !51, line: 1082, baseType: !3035, size: 64, offset: 1088)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !51, line: 1314, size: 320, elements: !3037)
!3037 = !{!3038, !3046, !3047, !3048, !3049, !3050}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3036, file: !51, line: 1315, baseType: !3039)
!3039 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3040, line: 20, baseType: !3041)
!3040 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3040, line: 11, elements: !3042)
!3042 = !{!3043}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3041, file: !3040, line: 12, baseType: !3044)
!3044 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !274, line: 33, baseType: !3045)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !274, line: 31, elements: !276)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3036, file: !51, line: 1316, baseType: !209, size: 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3036, file: !51, line: 1317, baseType: !209, size: 32, offset: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3036, file: !51, line: 1318, baseType: !3035, size: 64, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3036, file: !51, line: 1319, baseType: !379, size: 64, offset: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3036, file: !51, line: 1320, baseType: !392, size: 128, align: 64, offset: 192)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3018, file: !51, line: 1084, baseType: !203, size: 64, offset: 1152)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3018, file: !51, line: 1085, baseType: !203, size: 64, offset: 1216)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3018, file: !51, line: 1087, baseType: !3054, size: 64, offset: 1280)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3056)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !51, line: 1011, size: 128, elements: !3057)
!3057 = !{!3058, !3062}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3056, file: !51, line: 1012, baseType: !3059, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{null, !3017, !3017}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3056, file: !51, line: 1013, baseType: !3063, size: 64, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{null, !3017}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3018, file: !51, line: 1088, baseType: !3067, size: 64, offset: 1344)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3069)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !51, line: 1016, size: 512, elements: !3070)
!3070 = !{!3071, !3075, !3079, !3080, !3084, !3088, !3092, !3096}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3069, file: !51, line: 1017, baseType: !3072, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!3003, !3003}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3069, file: !51, line: 1018, baseType: !3076, size: 64, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{null, !3003}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3069, file: !51, line: 1019, baseType: !3063, size: 64, offset: 128)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3069, file: !51, line: 1020, baseType: !3081, size: 64, offset: 192)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!209, !3017, !209}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3069, file: !51, line: 1021, baseType: !3085, size: 64, offset: 256)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!513, !3017}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3069, file: !51, line: 1022, baseType: !3089, size: 64, offset: 320)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!209, !3017, !209, !252}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3069, file: !51, line: 1023, baseType: !3093, size: 64, offset: 384)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{null, !3017, !844}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3069, file: !51, line: 1024, baseType: !3085, size: 64, offset: 448)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3018, file: !51, line: 1097, baseType: !3098, size: 256, offset: 1408)
!3098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3018, file: !51, line: 1089, size: 256, elements: !3099)
!3099 = !{!3100, !3109, !3115}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3098, file: !51, line: 1090, baseType: !3101, size: 256)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3102, line: 10, size: 256, elements: !3103)
!3102 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3103 = !{!3104, !3105, !3108}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3101, file: !3102, line: 11, baseType: !216, size: 32)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3101, file: !3102, line: 12, baseType: !3106, size: 64, offset: 64)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3102, line: 5, flags: DIFlagFwdDecl)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3101, file: !3102, line: 13, baseType: !249, size: 128, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3098, file: !51, line: 1091, baseType: !3110, size: 64)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3102, line: 17, size: 64, elements: !3111)
!3111 = !{!3112}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3110, file: !3102, line: 18, baseType: !3113, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3102, line: 16, flags: DIFlagFwdDecl)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3098, file: !51, line: 1096, baseType: !3116, size: 192)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3098, file: !51, line: 1092, size: 192, elements: !3117)
!3117 = !{!3118, !3119, !3120}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3116, file: !51, line: 1093, baseType: !249, size: 128)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3116, file: !51, line: 1094, baseType: !209, size: 32, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3116, file: !51, line: 1095, baseType: !7, size: 32, offset: 160)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2941, file: !51, line: 1843, baseType: !3122, size: 64, offset: 1280)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!334, !379, !744, !209, !349, !2952, !209}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2941, file: !51, line: 1844, baseType: !1124, size: 64, offset: 1344)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2941, file: !51, line: 1845, baseType: !3127, size: 64, offset: 1408)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!209, !209}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2941, file: !51, line: 1846, baseType: !3014, size: 64, offset: 1472)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2941, file: !51, line: 1847, baseType: !3132, size: 64, offset: 1536)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!334, !2174, !379, !2952, !349, !7}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2941, file: !51, line: 1848, baseType: !3136, size: 64, offset: 1600)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!334, !379, !2952, !2174, !349, !7}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2941, file: !51, line: 1849, baseType: !3140, size: 64, offset: 1664)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!209, !379, !154, !3143, !844}
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2941, file: !51, line: 1850, baseType: !3145, size: 64, offset: 1728)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!154, !379, !209, !554, !554}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2941, file: !51, line: 1852, baseType: !3149, size: 64, offset: 1792)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{null, !734, !379}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2941, file: !51, line: 1856, baseType: !3153, size: 64, offset: 1856)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!334, !379, !554, !379, !554, !349, !7}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2941, file: !51, line: 1858, baseType: !3157, size: 64, offset: 1920)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!554, !379, !554, !379, !554, !554, !7}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2941, file: !51, line: 1861, baseType: !3006, size: 64, offset: 1984)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2936, file: !51, line: 692, baseType: !687, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !453, file: !51, line: 694, baseType: !3163, size: 64, offset: 2560)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !51, line: 1100, size: 384, elements: !3165)
!3165 = !{!3166, !3167, !3168, !3169}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3164, file: !51, line: 1101, baseType: !262)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3164, file: !51, line: 1102, baseType: !249, size: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3164, file: !51, line: 1103, baseType: !249, size: 128, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3164, file: !51, line: 1104, baseType: !249, size: 128, offset: 256)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !453, file: !51, line: 695, baseType: !758, size: 1216, align: 64, offset: 2624)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !453, file: !51, line: 696, baseType: !249, size: 128, offset: 3840)
!3172 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !51, line: 697, baseType: !3173, size: 64, offset: 3968)
!3173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !51, line: 697, size: 64, elements: !3174)
!3174 = !{!3175, !3176, !3177, !3180, !3181}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3173, file: !51, line: 698, baseType: !2174, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3173, file: !51, line: 699, baseType: !2691, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3173, file: !51, line: 700, baseType: !3178, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !51, line: 700, flags: DIFlagFwdDecl)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3173, file: !51, line: 701, baseType: !303, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3173, file: !51, line: 702, baseType: !7, size: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !453, file: !51, line: 705, baseType: !218, size: 32, offset: 4032)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !453, file: !51, line: 708, baseType: !218, size: 32, offset: 4064)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !453, file: !51, line: 709, baseType: !2773, size: 64, offset: 4096)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !453, file: !51, line: 720, baseType: !204, size: 64, offset: 4160)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !410, file: !407, line: 98, baseType: !3187, size: 256, offset: 448)
!3187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 256, elements: !2306)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !410, file: !407, line: 101, baseType: !3189, size: 32, offset: 704)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3190, line: 25, size: 32, elements: !3191)
!3190 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3191 = !{!3192}
!3192 = !DIDerivedType(tag: DW_TAG_member, scope: !3189, file: !3190, line: 26, baseType: !3193, size: 32)
!3193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3189, file: !3190, line: 26, size: 32, elements: !3194)
!3194 = !{!3195}
!3195 = !DIDerivedType(tag: DW_TAG_member, scope: !3193, file: !3190, line: 30, baseType: !3196, size: 32)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3193, file: !3190, line: 30, size: 32, elements: !3197)
!3197 = !{!3198, !3199}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3196, file: !3190, line: 31, baseType: !262)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3196, file: !3190, line: 32, baseType: !209, size: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !410, file: !407, line: 102, baseType: !2790, size: 64, offset: 768)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !410, file: !407, line: 103, baseType: !622, size: 64, offset: 832)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !410, file: !407, line: 104, baseType: !203, size: 64, offset: 896)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !410, file: !407, line: 105, baseType: !204, size: 64, offset: 960)
!3204 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !407, line: 107, baseType: !3205, size: 128, offset: 1024)
!3205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !407, line: 107, size: 128, elements: !3206)
!3206 = !{!3207, !3208}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3205, file: !407, line: 108, baseType: !249, size: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3205, file: !407, line: 109, baseType: !3209, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !410, file: !407, line: 111, baseType: !249, size: 128, offset: 1152)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !410, file: !407, line: 112, baseType: !249, size: 128, offset: 1280)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !410, file: !407, line: 120, baseType: !3213, size: 128, offset: 1408)
!3213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !407, line: 116, size: 128, elements: !3214)
!3214 = !{!3215, !3216, !3217}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3213, file: !407, line: 117, baseType: !662, size: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3213, file: !407, line: 118, baseType: !424, size: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3213, file: !407, line: 119, baseType: !392, size: 128, align: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !380, file: !51, line: 922, baseType: !452, size: 64, offset: 256)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !380, file: !51, line: 923, baseType: !2939, size: 64, offset: 320)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !380, file: !51, line: 929, baseType: !262, offset: 384)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !380, file: !51, line: 930, baseType: !50, size: 32, offset: 384)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !380, file: !51, line: 931, baseType: !794, size: 64, offset: 448)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !380, file: !51, line: 932, baseType: !7, size: 32, offset: 512)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !380, file: !51, line: 933, baseType: !2786, size: 32, offset: 544)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !380, file: !51, line: 934, baseType: !1196, size: 192, offset: 576)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !380, file: !51, line: 935, baseType: !554, size: 64, offset: 768)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !380, file: !51, line: 936, baseType: !3228, size: 192, offset: 832)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !51, line: 885, size: 192, elements: !3229)
!3229 = !{!3230, !3231, !3232, !3233, !3234, !3235}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3228, file: !51, line: 886, baseType: !3039)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3228, file: !51, line: 887, baseType: !1494, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3228, file: !51, line: 888, baseType: !59, size: 32, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3228, file: !51, line: 889, baseType: !458, size: 32, offset: 96)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3228, file: !51, line: 889, baseType: !458, size: 32, offset: 128)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3228, file: !51, line: 890, baseType: !209, size: 32, offset: 160)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !380, file: !51, line: 937, baseType: !1607, size: 64, offset: 1024)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !380, file: !51, line: 938, baseType: !3238, size: 256, offset: 1088)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !51, line: 896, size: 256, elements: !3239)
!3239 = !{!3240, !3241, !3242, !3243, !3244, !3245}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3238, file: !51, line: 897, baseType: !203, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3238, file: !51, line: 898, baseType: !7, size: 32, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3238, file: !51, line: 899, baseType: !7, size: 32, offset: 96)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3238, file: !51, line: 902, baseType: !7, size: 32, offset: 128)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3238, file: !51, line: 903, baseType: !7, size: 32, offset: 160)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3238, file: !51, line: 904, baseType: !554, size: 64, offset: 192)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !380, file: !51, line: 940, baseType: !444, size: 64, offset: 1344)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !380, file: !51, line: 945, baseType: !204, size: 64, offset: 1408)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !380, file: !51, line: 949, baseType: !249, size: 128, offset: 1472)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !380, file: !51, line: 950, baseType: !249, size: 128, offset: 1600)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !380, file: !51, line: 952, baseType: !757, size: 64, offset: 1728)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !380, file: !51, line: 953, baseType: !932, size: 32, offset: 1792)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !380, file: !51, line: 954, baseType: !932, size: 32, offset: 1824)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !370, file: !328, line: 174, baseType: !376, size: 64, offset: 320)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !370, file: !328, line: 176, baseType: !3255, size: 64, offset: 384)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!209, !379, !255, !369, !1004}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !358, file: !328, line: 90, baseType: !353, size: 64, offset: 192)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !358, file: !328, line: 91, baseType: !3260, size: 64, offset: 256)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !318, file: !243, line: 143, baseType: !3262, size: 64, offset: 256)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!3265, !255}
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3267)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !68, line: 39, size: 384, elements: !3268)
!3268 = !{!3269, !3270, !3274, !3278, !3284, !3288}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3267, file: !68, line: 40, baseType: !67, size: 32)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3267, file: !68, line: 41, baseType: !3271, size: 64, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!513}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3267, file: !68, line: 42, baseType: !3275, size: 64, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!204}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3267, file: !68, line: 43, baseType: !3279, size: 64, offset: 192)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!2203, !3282}
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !68, line: 19, flags: DIFlagFwdDecl)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3267, file: !68, line: 44, baseType: !3285, size: 64, offset: 256)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!2203}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3267, file: !68, line: 45, baseType: !491, size: 64, offset: 320)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !318, file: !243, line: 144, baseType: !3290, size: 64, offset: 320)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!2203, !255}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !318, file: !243, line: 145, baseType: !3294, size: 64, offset: 384)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{null, !255, !3297, !3298}
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !242, file: !243, line: 70, baseType: !3300, size: 64, offset: 384)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !642, line: 123, size: 1024, elements: !3302)
!3302 = !{!3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3425, !3426, !3427, !3428, !3429}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3301, file: !642, line: 124, baseType: !770, size: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3301, file: !642, line: 125, baseType: !770, size: 32, offset: 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3301, file: !642, line: 135, baseType: !3300, size: 64, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3301, file: !642, line: 136, baseType: !246, size: 64, offset: 128)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3301, file: !642, line: 138, baseType: !783, size: 192, align: 64, offset: 192)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3301, file: !642, line: 140, baseType: !2203, size: 64, offset: 384)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3301, file: !642, line: 141, baseType: !7, size: 32, offset: 448)
!3310 = !DIDerivedType(tag: DW_TAG_member, scope: !3301, file: !642, line: 142, baseType: !3311, size: 256, offset: 512)
!3311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3301, file: !642, line: 142, size: 256, elements: !3312)
!3312 = !{!3313, !3353, !3357}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3311, file: !642, line: 143, baseType: !3314, size: 192)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !642, line: 91, size: 192, elements: !3315)
!3315 = !{!3316, !3317, !3318}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3314, file: !642, line: 92, baseType: !203, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3314, file: !642, line: 94, baseType: !779, size: 64, offset: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3314, file: !642, line: 100, baseType: !3319, size: 64, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !642, line: 180, size: 704, elements: !3321)
!3321 = !{!3322, !3323, !3324, !3325, !3326, !3327, !3351, !3352}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3320, file: !642, line: 182, baseType: !3300, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3320, file: !642, line: 183, baseType: !7, size: 32, offset: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3320, file: !642, line: 186, baseType: !1527, size: 192, offset: 128)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3320, file: !642, line: 187, baseType: !216, size: 32, offset: 320)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3320, file: !642, line: 188, baseType: !216, size: 32, offset: 352)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3320, file: !642, line: 189, baseType: !3328, size: 64, offset: 384)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !642, line: 168, size: 320, elements: !3330)
!3330 = !{!3331, !3335, !3339, !3343, !3347}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3329, file: !642, line: 169, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!209, !734, !3319}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3329, file: !642, line: 171, baseType: !3336, size: 64, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!209, !3300, !246, !343}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3329, file: !642, line: 173, baseType: !3340, size: 64, offset: 128)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!209, !3300}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3329, file: !642, line: 174, baseType: !3344, size: 64, offset: 192)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!209, !3300, !3300, !246}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3329, file: !642, line: 176, baseType: !3348, size: 64, offset: 256)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!209, !734, !3300, !3319}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3320, file: !642, line: 192, baseType: !249, size: 128, offset: 448)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3320, file: !642, line: 194, baseType: !1504, size: 128, offset: 576)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3311, file: !642, line: 144, baseType: !3354, size: 64)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !642, line: 103, size: 64, elements: !3355)
!3355 = !{!3356}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3354, file: !642, line: 104, baseType: !3300, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3311, file: !642, line: 145, baseType: !3358, size: 256)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !642, line: 107, size: 256, elements: !3359)
!3359 = !{!3360, !3420, !3423, !3424}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3358, file: !642, line: 108, baseType: !3361, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3363)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !642, line: 217, size: 768, elements: !3364)
!3364 = !{!3365, !3385, !3389, !3393, !3397, !3401, !3405, !3409, !3410, !3411, !3412, !3416}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3363, file: !642, line: 222, baseType: !3366, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!209, !3369}
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !642, line: 197, size: 1088, elements: !3371)
!3371 = !{!3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3370, file: !642, line: 199, baseType: !3300, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3370, file: !642, line: 200, baseType: !379, size: 64, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3370, file: !642, line: 201, baseType: !734, size: 64, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3370, file: !642, line: 202, baseType: !204, size: 64, offset: 192)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3370, file: !642, line: 205, baseType: !1196, size: 192, offset: 256)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3370, file: !642, line: 206, baseType: !1196, size: 192, offset: 448)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3370, file: !642, line: 207, baseType: !209, size: 32, offset: 640)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3370, file: !642, line: 208, baseType: !249, size: 128, offset: 704)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3370, file: !642, line: 209, baseType: !303, size: 64, offset: 832)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3370, file: !642, line: 211, baseType: !349, size: 64, offset: 896)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3370, file: !642, line: 212, baseType: !513, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3370, file: !642, line: 213, baseType: !513, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3370, file: !642, line: 214, baseType: !1032, size: 64, offset: 1024)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3363, file: !642, line: 223, baseType: !3386, size: 64, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{null, !3369}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3363, file: !642, line: 236, baseType: !3390, size: 64, offset: 128)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!209, !734, !204}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3363, file: !642, line: 238, baseType: !3394, size: 64, offset: 192)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!204, !734, !2952}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3363, file: !642, line: 239, baseType: !3398, size: 64, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!204, !734, !204, !2952}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3363, file: !642, line: 240, baseType: !3402, size: 64, offset: 320)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{null, !734, !204}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3363, file: !642, line: 242, baseType: !3406, size: 64, offset: 384)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!334, !3369, !303, !349, !554}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3363, file: !642, line: 252, baseType: !349, size: 64, offset: 448)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3363, file: !642, line: 259, baseType: !513, size: 8, offset: 512)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3363, file: !642, line: 260, baseType: !3406, size: 64, offset: 576)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3363, file: !642, line: 263, baseType: !3413, size: 64, offset: 640)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!2981, !3369, !2983}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3363, file: !642, line: 266, baseType: !3417, size: 64, offset: 704)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!209, !3369, !1004}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3358, file: !642, line: 109, baseType: !3421, size: 64, offset: 64)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !642, line: 31, flags: DIFlagFwdDecl)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3358, file: !642, line: 110, baseType: !554, size: 64, offset: 128)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3358, file: !642, line: 111, baseType: !3300, size: 64, offset: 192)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3301, file: !642, line: 148, baseType: !204, size: 64, offset: 768)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3301, file: !642, line: 154, baseType: !444, size: 64, offset: 832)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3301, file: !642, line: 156, baseType: !344, size: 16, offset: 896)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3301, file: !642, line: 157, baseType: !343, size: 16, offset: 912)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3301, file: !642, line: 158, baseType: !3430, size: 64, offset: 960)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !642, line: 32, flags: DIFlagFwdDecl)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !242, file: !243, line: 71, baseType: !1522, size: 32, offset: 448)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !242, file: !243, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !242, file: !243, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !242, file: !243, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !242, file: !243, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !242, file: !243, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !239, file: !80, line: 463, baseType: !238, size: 64, offset: 512)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !239, file: !80, line: 465, baseType: !3440, size: 64, offset: 576)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !80, line: 36, flags: DIFlagFwdDecl)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !239, file: !80, line: 467, baseType: !246, size: 64, offset: 640)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !239, file: !80, line: 468, baseType: !3444, size: 64, offset: 704)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3446)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !80, line: 87, size: 384, elements: !3447)
!3447 = !{!3448, !3449, !3450, !3454, !3459, !3463}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3446, file: !80, line: 88, baseType: !246, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3446, file: !80, line: 89, baseType: !355, size: 64, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3446, file: !80, line: 90, baseType: !3451, size: 64, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!209, !238, !298}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3446, file: !80, line: 91, baseType: !3455, size: 64, offset: 192)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!303, !238, !3458, !3297, !3298}
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3446, file: !80, line: 93, baseType: !3460, size: 64, offset: 256)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{null, !238}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3446, file: !80, line: 95, baseType: !3464, size: 64, offset: 320)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3466)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !87, line: 278, size: 1472, elements: !3467)
!3467 = !{!3468, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3466, file: !87, line: 279, baseType: !3469, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!209, !238}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3466, file: !87, line: 280, baseType: !3460, size: 64, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3466, file: !87, line: 281, baseType: !3469, size: 64, offset: 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3466, file: !87, line: 282, baseType: !3469, size: 64, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3466, file: !87, line: 283, baseType: !3469, size: 64, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3466, file: !87, line: 284, baseType: !3469, size: 64, offset: 320)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3466, file: !87, line: 285, baseType: !3469, size: 64, offset: 384)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3466, file: !87, line: 286, baseType: !3469, size: 64, offset: 448)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3466, file: !87, line: 287, baseType: !3469, size: 64, offset: 512)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3466, file: !87, line: 288, baseType: !3469, size: 64, offset: 576)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3466, file: !87, line: 289, baseType: !3469, size: 64, offset: 640)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3466, file: !87, line: 290, baseType: !3469, size: 64, offset: 704)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3466, file: !87, line: 291, baseType: !3469, size: 64, offset: 768)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3466, file: !87, line: 292, baseType: !3469, size: 64, offset: 832)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3466, file: !87, line: 293, baseType: !3469, size: 64, offset: 896)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3466, file: !87, line: 294, baseType: !3469, size: 64, offset: 960)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3466, file: !87, line: 295, baseType: !3469, size: 64, offset: 1024)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3466, file: !87, line: 296, baseType: !3469, size: 64, offset: 1088)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3466, file: !87, line: 297, baseType: !3469, size: 64, offset: 1152)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3466, file: !87, line: 298, baseType: !3469, size: 64, offset: 1216)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3466, file: !87, line: 299, baseType: !3469, size: 64, offset: 1280)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3466, file: !87, line: 300, baseType: !3469, size: 64, offset: 1344)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3466, file: !87, line: 301, baseType: !3469, size: 64, offset: 1408)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !239, file: !80, line: 470, baseType: !3495, size: 64, offset: 768)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3497, line: 82, size: 1408, elements: !3498)
!3497 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3498 = !{!3499, !3500, !3501, !3502, !3503, !3504, !3505, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3580, !3583, !3584}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3496, file: !3497, line: 83, baseType: !246, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3496, file: !3497, line: 84, baseType: !246, size: 64, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3496, file: !3497, line: 85, baseType: !238, size: 64, offset: 128)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3496, file: !3497, line: 86, baseType: !355, size: 64, offset: 192)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3496, file: !3497, line: 87, baseType: !355, size: 64, offset: 256)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3496, file: !3497, line: 88, baseType: !355, size: 64, offset: 320)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3496, file: !3497, line: 90, baseType: !3506, size: 64, offset: 384)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!209, !238, !3509}
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !74, line: 95, size: 1152, elements: !3511)
!3511 = !{!3512, !3513, !3514, !3515, !3516, !3517, !3518, !3531, !3544, !3545, !3546, !3547, !3548, !3556, !3557, !3558, !3559, !3560, !3561}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3510, file: !74, line: 96, baseType: !246, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3510, file: !74, line: 97, baseType: !3495, size: 64, offset: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3510, file: !74, line: 99, baseType: !198, size: 64, offset: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3510, file: !74, line: 100, baseType: !246, size: 64, offset: 192)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3510, file: !74, line: 102, baseType: !513, size: 8, offset: 256)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3510, file: !74, line: 103, baseType: !73, size: 32, offset: 288)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3510, file: !74, line: 105, baseType: !3519, size: 64, offset: 320)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3521)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3522, line: 262, size: 1600, elements: !3523)
!3522 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3523 = !{!3524, !3525, !3526, !3530}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3521, file: !3522, line: 263, baseType: !2776, size: 256)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3521, file: !3522, line: 264, baseType: !2776, size: 256, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3521, file: !3522, line: 265, baseType: !3527, size: 1024, offset: 512)
!3527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 1024, elements: !3528)
!3528 = !{!3529}
!3529 = !DISubrange(count: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3521, file: !3522, line: 266, baseType: !2203, size: 64, offset: 1536)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3510, file: !74, line: 106, baseType: !3532, size: 64, offset: 384)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3534)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3522, line: 210, size: 256, elements: !3535)
!3535 = !{!3536, !3540, !3542, !3543}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3534, file: !3522, line: 211, baseType: !3537, size: 72)
!3537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1376, size: 72, elements: !3538)
!3538 = !{!3539}
!3539 = !DISubrange(count: 9)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3534, file: !3522, line: 212, baseType: !3541, size: 64, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3522, line: 14, baseType: !203)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3534, file: !3522, line: 213, baseType: !218, size: 32, offset: 192)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3534, file: !3522, line: 214, baseType: !218, size: 32, offset: 224)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3510, file: !74, line: 108, baseType: !3469, size: 64, offset: 448)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3510, file: !74, line: 109, baseType: !3460, size: 64, offset: 512)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3510, file: !74, line: 110, baseType: !3469, size: 64, offset: 576)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3510, file: !74, line: 111, baseType: !3460, size: 64, offset: 640)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3510, file: !74, line: 112, baseType: !3549, size: 64, offset: 704)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!209, !238, !3552}
!3552 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !87, line: 52, baseType: !3553)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !87, line: 50, size: 32, elements: !3554)
!3554 = !{!3555}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3553, file: !87, line: 51, baseType: !209, size: 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3510, file: !74, line: 113, baseType: !3469, size: 64, offset: 768)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3510, file: !74, line: 114, baseType: !355, size: 64, offset: 832)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3510, file: !74, line: 115, baseType: !355, size: 64, offset: 896)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3510, file: !74, line: 117, baseType: !3464, size: 64, offset: 960)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3510, file: !74, line: 118, baseType: !3460, size: 64, offset: 1024)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3510, file: !74, line: 120, baseType: !3562, size: 64, offset: 1088)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !74, line: 120, flags: DIFlagFwdDecl)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3496, file: !3497, line: 91, baseType: !3451, size: 64, offset: 448)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3496, file: !3497, line: 92, baseType: !3469, size: 64, offset: 512)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3496, file: !3497, line: 93, baseType: !3460, size: 64, offset: 576)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3496, file: !3497, line: 94, baseType: !3469, size: 64, offset: 640)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3496, file: !3497, line: 95, baseType: !3460, size: 64, offset: 704)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3496, file: !3497, line: 97, baseType: !3469, size: 64, offset: 768)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3496, file: !3497, line: 98, baseType: !3469, size: 64, offset: 832)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3496, file: !3497, line: 100, baseType: !3549, size: 64, offset: 896)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3496, file: !3497, line: 101, baseType: !3469, size: 64, offset: 960)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3496, file: !3497, line: 103, baseType: !3469, size: 64, offset: 1024)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3496, file: !3497, line: 105, baseType: !3469, size: 64, offset: 1088)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3496, file: !3497, line: 107, baseType: !3464, size: 64, offset: 1152)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3496, file: !3497, line: 109, baseType: !3577, size: 64, offset: 1216)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3579)
!3579 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3497, line: 109, flags: DIFlagFwdDecl)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3496, file: !3497, line: 111, baseType: !3581, size: 64, offset: 1280)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3497, line: 111, flags: DIFlagFwdDecl)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3496, file: !3497, line: 112, baseType: !668, offset: 1344)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3496, file: !3497, line: 114, baseType: !513, size: 8, offset: 1344)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !239, file: !80, line: 471, baseType: !3509, size: 64, offset: 832)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !239, file: !80, line: 473, baseType: !204, size: 64, offset: 896)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !239, file: !80, line: 475, baseType: !204, size: 64, offset: 960)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !239, file: !80, line: 480, baseType: !1196, size: 192, offset: 1024)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !239, file: !80, line: 484, baseType: !3590, size: 576, offset: 1216)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !80, line: 361, size: 576, elements: !3591)
!3591 = !{!3592, !3593, !3594, !3595, !3596, !3597}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3590, file: !80, line: 362, baseType: !249, size: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3590, file: !80, line: 363, baseType: !249, size: 128, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3590, file: !80, line: 364, baseType: !249, size: 128, offset: 256)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3590, file: !80, line: 365, baseType: !249, size: 128, offset: 384)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3590, file: !80, line: 366, baseType: !513, size: 8, offset: 512)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3590, file: !80, line: 367, baseType: !79, size: 32, offset: 544)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !239, file: !80, line: 485, baseType: !3599, size: 2304, offset: 1792)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !87, line: 565, size: 2304, elements: !3600)
!3600 = !{!3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3696, !3700}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3599, file: !87, line: 566, baseType: !3552, size: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3599, file: !87, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3599, file: !87, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3599, file: !87, line: 569, baseType: !513, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3599, file: !87, line: 570, baseType: !513, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3599, file: !87, line: 571, baseType: !513, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3599, file: !87, line: 572, baseType: !513, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3599, file: !87, line: 573, baseType: !513, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3599, file: !87, line: 574, baseType: !513, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3599, file: !87, line: 575, baseType: !513, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3599, file: !87, line: 576, baseType: !513, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3599, file: !87, line: 577, baseType: !216, size: 32, offset: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3599, file: !87, line: 578, baseType: !262, offset: 96)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3599, file: !87, line: 580, baseType: !249, size: 128, offset: 128)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3599, file: !87, line: 581, baseType: !1562, size: 192, offset: 256)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3599, file: !87, line: 582, baseType: !3617, size: 64, offset: 448)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3619, line: 43, size: 1472, elements: !3620)
!3619 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3620 = !{!3621, !3622, !3623, !3624, !3625, !3628, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3618, file: !3619, line: 44, baseType: !246, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3618, file: !3619, line: 45, baseType: !209, size: 32, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3618, file: !3619, line: 46, baseType: !249, size: 128, offset: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3618, file: !3619, line: 47, baseType: !262, offset: 256)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3618, file: !3619, line: 48, baseType: !3626, size: 64, offset: 256)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !87, line: 533, flags: DIFlagFwdDecl)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3618, file: !3619, line: 49, baseType: !3629, size: 320, offset: 320)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3630, line: 11, size: 320, elements: !3631)
!3630 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3631 = !{!3632, !3633, !3634, !3639}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3629, file: !3630, line: 16, baseType: !662, size: 128)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3629, file: !3630, line: 17, baseType: !203, size: 64, offset: 128)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3629, file: !3630, line: 18, baseType: !3635, size: 64, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{null, !3638}
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3629, file: !3630, line: 19, baseType: !216, size: 32, offset: 256)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3618, file: !3619, line: 50, baseType: !203, size: 64, offset: 640)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3618, file: !3619, line: 51, baseType: !1323, size: 64, offset: 704)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3618, file: !3619, line: 52, baseType: !1323, size: 64, offset: 768)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3618, file: !3619, line: 53, baseType: !1323, size: 64, offset: 832)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3618, file: !3619, line: 54, baseType: !1323, size: 64, offset: 896)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3618, file: !3619, line: 55, baseType: !1323, size: 64, offset: 960)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3618, file: !3619, line: 56, baseType: !203, size: 64, offset: 1024)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3618, file: !3619, line: 57, baseType: !203, size: 64, offset: 1088)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3618, file: !3619, line: 58, baseType: !203, size: 64, offset: 1152)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3618, file: !3619, line: 59, baseType: !203, size: 64, offset: 1216)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3618, file: !3619, line: 60, baseType: !203, size: 64, offset: 1280)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3618, file: !3619, line: 61, baseType: !238, size: 64, offset: 1344)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3618, file: !3619, line: 62, baseType: !513, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3618, file: !3619, line: 63, baseType: !513, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3599, file: !87, line: 583, baseType: !513, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3599, file: !87, line: 584, baseType: !513, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3599, file: !87, line: 585, baseType: !513, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3599, file: !87, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3599, file: !87, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3599, file: !87, line: 592, baseType: !1315, size: 512, offset: 576)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3599, file: !87, line: 593, baseType: !444, size: 64, offset: 1088)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3599, file: !87, line: 594, baseType: !2034, size: 256, offset: 1152)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3599, file: !87, line: 595, baseType: !1504, size: 128, offset: 1408)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3599, file: !87, line: 596, baseType: !3626, size: 64, offset: 1536)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3599, file: !87, line: 597, baseType: !770, size: 32, offset: 1600)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3599, file: !87, line: 598, baseType: !770, size: 32, offset: 1632)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3599, file: !87, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3599, file: !87, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3599, file: !87, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3599, file: !87, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3599, file: !87, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3599, file: !87, line: 604, baseType: !513, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3599, file: !87, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3599, file: !87, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3599, file: !87, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3599, file: !87, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3599, file: !87, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3599, file: !87, line: 610, baseType: !7, size: 32, offset: 1696)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3599, file: !87, line: 611, baseType: !86, size: 32, offset: 1728)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3599, file: !87, line: 612, baseType: !94, size: 32, offset: 1760)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3599, file: !87, line: 613, baseType: !209, size: 32, offset: 1792)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3599, file: !87, line: 614, baseType: !209, size: 32, offset: 1824)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3599, file: !87, line: 615, baseType: !444, size: 64, offset: 1856)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3599, file: !87, line: 616, baseType: !444, size: 64, offset: 1920)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3599, file: !87, line: 617, baseType: !444, size: 64, offset: 1984)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3599, file: !87, line: 618, baseType: !444, size: 64, offset: 2048)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3599, file: !87, line: 620, baseType: !3687, size: 64, offset: 2112)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !87, line: 536, size: 256, elements: !3689)
!3689 = !{!3690, !3691, !3692, !3693}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3688, file: !87, line: 537, baseType: !262)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3688, file: !87, line: 538, baseType: !7, size: 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3688, file: !87, line: 540, baseType: !249, size: 128, offset: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3688, file: !87, line: 543, baseType: !3694, size: 64, offset: 192)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !87, line: 534, flags: DIFlagFwdDecl)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3599, file: !87, line: 621, baseType: !3697, size: 64, offset: 2176)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{null, !238, !1467}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3599, file: !87, line: 622, baseType: !3701, size: 64, offset: 2240)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !87, line: 622, flags: DIFlagFwdDecl)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !239, file: !80, line: 486, baseType: !3704, size: 64, offset: 4096)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !87, line: 642, size: 1792, elements: !3706)
!3706 = !{!3707, !3708, !3709, !3713, !3714, !3715}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3705, file: !87, line: 643, baseType: !3466, size: 1472)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3705, file: !87, line: 644, baseType: !3469, size: 64, offset: 1472)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3705, file: !87, line: 645, baseType: !3710, size: 64, offset: 1536)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{null, !238, !513}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3705, file: !87, line: 646, baseType: !3469, size: 64, offset: 1600)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3705, file: !87, line: 647, baseType: !3460, size: 64, offset: 1664)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3705, file: !87, line: 648, baseType: !3460, size: 64, offset: 1728)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !239, file: !80, line: 493, baseType: !3717, size: 64, offset: 4160)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !101, line: 162, size: 1088, elements: !3719)
!3719 = !{!3720, !3721, !3722, !3895, !3896, !3897, !3898, !3899, !3900, !3903, !3904, !3905, !3906, !3907, !3908, !3909}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3718, file: !101, line: 163, baseType: !249, size: 128)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3718, file: !101, line: 164, baseType: !246, size: 64, offset: 128)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3718, file: !101, line: 165, baseType: !3723, size: 64, offset: 192)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3725)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !101, line: 105, size: 640, elements: !3726)
!3726 = !{!3727, !3845, !3856, !3861, !3865, !3872, !3876, !3880, !3887, !3891}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3725, file: !101, line: 106, baseType: !3728, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!209, !3717, !3731, !100}
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3733, line: 51, size: 1344, elements: !3734)
!3733 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3734 = !{!3735, !3736, !3738, !3739, !3829, !3838, !3839, !3840, !3841, !3842, !3843, !3844}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3732, file: !3733, line: 52, baseType: !246, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3732, file: !3733, line: 53, baseType: !3737, size: 32, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3733, line: 28, baseType: !216)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3732, file: !3733, line: 54, baseType: !246, size: 64, offset: 128)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3732, file: !3733, line: 55, baseType: !3740, size: 192, offset: 192)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3741, line: 17, size: 192, elements: !3742)
!3741 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3742 = !{!3743, !3745, !3828}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3740, file: !3741, line: 18, baseType: !3744, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3740, file: !3741, line: 19, baseType: !3746, size: 64, offset: 64)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3748)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3741, line: 110, size: 1152, elements: !3749)
!3749 = !{!3750, !3754, !3758, !3764, !3770, !3774, !3778, !3783, !3787, !3788, !3792, !3796, !3800, !3811, !3812, !3813, !3814, !3824}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3748, file: !3741, line: 111, baseType: !3751, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!3744, !3744}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3748, file: !3741, line: 112, baseType: !3755, size: 64, offset: 64)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{null, !3744}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3748, file: !3741, line: 113, baseType: !3759, size: 64, offset: 128)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!513, !3762}
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3740)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3748, file: !3741, line: 114, baseType: !3765, size: 64, offset: 192)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!2203, !3762, !3768}
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3748, file: !3741, line: 116, baseType: !3771, size: 64, offset: 256)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!513, !3762, !246}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3748, file: !3741, line: 118, baseType: !3775, size: 64, offset: 320)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!209, !3762, !246, !7, !204, !349}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3748, file: !3741, line: 123, baseType: !3779, size: 64, offset: 384)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!209, !3762, !246, !3782, !349}
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3748, file: !3741, line: 126, baseType: !3784, size: 64, offset: 448)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!246, !3762}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3748, file: !3741, line: 127, baseType: !3784, size: 64, offset: 512)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3748, file: !3741, line: 128, baseType: !3789, size: 64, offset: 576)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!3744, !3762}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3748, file: !3741, line: 130, baseType: !3793, size: 64, offset: 640)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!3744, !3762, !3744}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3748, file: !3741, line: 133, baseType: !3797, size: 64, offset: 704)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!3744, !3762, !246}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3748, file: !3741, line: 135, baseType: !3801, size: 64, offset: 768)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!209, !3762, !246, !246, !7, !7, !3804}
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3741, line: 43, size: 640, elements: !3806)
!3806 = !{!3807, !3808, !3809}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3805, file: !3741, line: 44, baseType: !3744, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3805, file: !3741, line: 45, baseType: !7, size: 32, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3805, file: !3741, line: 46, baseType: !3810, size: 512, offset: 128)
!3810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 512, elements: !1353)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3748, file: !3741, line: 140, baseType: !3793, size: 64, offset: 832)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3748, file: !3741, line: 143, baseType: !3789, size: 64, offset: 896)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3748, file: !3741, line: 145, baseType: !3751, size: 64, offset: 960)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3748, file: !3741, line: 146, baseType: !3815, size: 64, offset: 1024)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!209, !3762, !3818}
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3741, line: 29, size: 128, elements: !3820)
!3820 = !{!3821, !3822, !3823}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3819, file: !3741, line: 30, baseType: !7, size: 32)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3819, file: !3741, line: 31, baseType: !7, size: 32, offset: 32)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3819, file: !3741, line: 32, baseType: !3762, size: 64, offset: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3748, file: !3741, line: 148, baseType: !3825, size: 64, offset: 1088)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!209, !3762, !238}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3740, file: !3741, line: 20, baseType: !238, size: 64, offset: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3732, file: !3733, line: 57, baseType: !3830, size: 64, offset: 384)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3733, line: 31, size: 704, elements: !3832)
!3832 = !{!3833, !3834, !3835, !3836, !3837}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3831, file: !3733, line: 32, baseType: !303, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3831, file: !3733, line: 33, baseType: !209, size: 32, offset: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3831, file: !3733, line: 34, baseType: !204, size: 64, offset: 128)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3831, file: !3733, line: 35, baseType: !3830, size: 64, offset: 192)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3831, file: !3733, line: 43, baseType: !370, size: 448, offset: 256)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3732, file: !3733, line: 58, baseType: !3830, size: 64, offset: 448)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3732, file: !3733, line: 59, baseType: !3731, size: 64, offset: 512)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3732, file: !3733, line: 60, baseType: !3731, size: 64, offset: 576)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3732, file: !3733, line: 61, baseType: !3731, size: 64, offset: 640)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3732, file: !3733, line: 63, baseType: !242, size: 512, offset: 704)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3732, file: !3733, line: 65, baseType: !203, size: 64, offset: 1216)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3732, file: !3733, line: 66, baseType: !204, size: 64, offset: 1280)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3725, file: !101, line: 108, baseType: !3846, size: 64, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!209, !3717, !3849, !100}
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !101, line: 63, size: 640, elements: !3851)
!3851 = !{!3852, !3853, !3854}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3850, file: !101, line: 64, baseType: !3744, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3850, file: !101, line: 65, baseType: !209, size: 32, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3850, file: !101, line: 66, baseType: !3855, size: 512, offset: 96)
!3855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 512, elements: !213)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3725, file: !101, line: 110, baseType: !3857, size: 64, offset: 128)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!209, !3717, !7, !3860}
!3860 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !202, line: 164, baseType: !203)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3725, file: !101, line: 111, baseType: !3862, size: 64, offset: 192)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{null, !3717, !7}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3725, file: !101, line: 112, baseType: !3866, size: 64, offset: 256)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!209, !3717, !3731, !3869, !7, !3871, !2759}
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3725, file: !101, line: 117, baseType: !3873, size: 64, offset: 320)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!209, !3717, !7, !7, !204}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3725, file: !101, line: 119, baseType: !3877, size: 64, offset: 384)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{null, !3717, !7, !7}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3725, file: !101, line: 121, baseType: !3881, size: 64, offset: 448)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!209, !3717, !3884, !513}
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3886, line: 11, flags: DIFlagFwdDecl)
!3886 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3725, file: !101, line: 122, baseType: !3888, size: 64, offset: 512)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{null, !3717, !3884}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3725, file: !101, line: 123, baseType: !3892, size: 64, offset: 576)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!209, !3717, !3849, !3871, !2759}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3718, file: !101, line: 166, baseType: !204, size: 64, offset: 256)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3718, file: !101, line: 167, baseType: !7, size: 32, offset: 320)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3718, file: !101, line: 168, baseType: !7, size: 32, offset: 352)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3718, file: !101, line: 171, baseType: !3744, size: 64, offset: 384)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3718, file: !101, line: 172, baseType: !100, size: 32, offset: 448)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3718, file: !101, line: 173, baseType: !3901, size: 64, offset: 512)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !101, line: 134, flags: DIFlagFwdDecl)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3718, file: !101, line: 175, baseType: !3717, size: 64, offset: 576)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3718, file: !101, line: 182, baseType: !3860, size: 64, offset: 640)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3718, file: !101, line: 183, baseType: !7, size: 32, offset: 704)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3718, file: !101, line: 184, baseType: !7, size: 32, offset: 736)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3718, file: !101, line: 185, baseType: !762, size: 128, offset: 768)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3718, file: !101, line: 186, baseType: !1196, size: 192, offset: 896)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3718, file: !101, line: 187, baseType: !3910, offset: 1088)
!3910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2407)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !239, file: !80, line: 499, baseType: !249, size: 128, offset: 4224)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !239, file: !80, line: 502, baseType: !3913, size: 64, offset: 4352)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3915)
!3915 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !80, line: 502, flags: DIFlagFwdDecl)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !239, file: !80, line: 504, baseType: !3917, size: 64, offset: 4416)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !239, file: !80, line: 505, baseType: !444, size: 64, offset: 4480)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !239, file: !80, line: 510, baseType: !444, size: 64, offset: 4544)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !239, file: !80, line: 511, baseType: !3921, size: 64, offset: 4608)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3923)
!3923 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !80, line: 511, flags: DIFlagFwdDecl)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !239, file: !80, line: 513, baseType: !3925, size: 64, offset: 4672)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !80, line: 288, size: 128, elements: !3927)
!3927 = !{!3928, !3929}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3926, file: !80, line: 293, baseType: !7, size: 32)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3926, file: !80, line: 294, baseType: !203, size: 64, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !239, file: !80, line: 515, baseType: !249, size: 128, offset: 4736)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !239, file: !80, line: 526, baseType: !3932, offset: 4864)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3933, line: 5, elements: !276)
!3933 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !239, file: !80, line: 528, baseType: !3731, size: 64, offset: 4864)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !239, file: !80, line: 529, baseType: !3744, size: 64, offset: 4928)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !239, file: !80, line: 534, baseType: !536, size: 32, offset: 4992)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !239, file: !80, line: 535, baseType: !216, size: 32, offset: 5024)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !239, file: !80, line: 537, baseType: !262, offset: 5056)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !239, file: !80, line: 538, baseType: !249, size: 128, offset: 5056)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !239, file: !80, line: 540, baseType: !3941, size: 64, offset: 5184)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3943, line: 54, size: 960, elements: !3944)
!3943 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3944 = !{!3945, !3946, !3947, !3948, !3949, !3950, !3951, !3955, !3959, !3960, !3961, !3962, !3966, !3970, !3971}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3942, file: !3943, line: 55, baseType: !246, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3942, file: !3943, line: 56, baseType: !198, size: 64, offset: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3942, file: !3943, line: 58, baseType: !355, size: 64, offset: 128)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3942, file: !3943, line: 59, baseType: !355, size: 64, offset: 192)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3942, file: !3943, line: 60, baseType: !255, size: 64, offset: 256)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3942, file: !3943, line: 62, baseType: !3451, size: 64, offset: 320)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3942, file: !3943, line: 63, baseType: !3952, size: 64, offset: 384)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!303, !238, !3458}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3942, file: !3943, line: 65, baseType: !3956, size: 64, offset: 448)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{null, !3941}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3942, file: !3943, line: 66, baseType: !3460, size: 64, offset: 512)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3942, file: !3943, line: 68, baseType: !3469, size: 64, offset: 576)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3942, file: !3943, line: 70, baseType: !3265, size: 64, offset: 640)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3942, file: !3943, line: 71, baseType: !3963, size: 64, offset: 704)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!2203, !238}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3942, file: !3943, line: 73, baseType: !3967, size: 64, offset: 768)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{null, !238, !3297, !3298}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3942, file: !3943, line: 75, baseType: !3464, size: 64, offset: 832)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3942, file: !3943, line: 77, baseType: !3581, size: 64, offset: 896)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !239, file: !80, line: 541, baseType: !355, size: 64, offset: 5248)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !239, file: !80, line: 543, baseType: !3460, size: 64, offset: 5312)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !239, file: !80, line: 544, baseType: !3975, size: 64, offset: 5376)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !80, line: 45, flags: DIFlagFwdDecl)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !239, file: !80, line: 545, baseType: !3978, size: 64, offset: 5440)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !80, line: 47, flags: DIFlagFwdDecl)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !239, file: !80, line: 547, baseType: !513, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !239, file: !80, line: 548, baseType: !513, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !239, file: !80, line: 549, baseType: !513, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !239, file: !80, line: 550, baseType: !513, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !235, file: !6, line: 426, baseType: !238, size: 64, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !235, file: !6, line: 427, baseType: !209, size: 32, offset: 128)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !235, file: !6, line: 428, baseType: !246, size: 64, offset: 192)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !235, file: !6, line: 429, baseType: !1375, size: 8, offset: 256)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !235, file: !6, line: 433, baseType: !1375, size: 8, offset: 264)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !235, file: !6, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !235, file: !6, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !235, file: !6, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !235, file: !6, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !235, file: !6, line: 442, baseType: !7, size: 32, offset: 288)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !235, file: !6, line: 444, baseType: !209, size: 32, offset: 320)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !235, file: !6, line: 446, baseType: !1196, size: 192, offset: 384)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !235, file: !6, line: 448, baseType: !3997, size: 128, offset: 576)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !6, line: 417, size: 128, elements: !3998)
!3998 = !{!3999}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3997, file: !6, line: 418, baseType: !4000, size: 128)
!4000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 128, elements: !230)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !235, file: !6, line: 449, baseType: !205, size: 64, offset: 704)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !235, file: !6, line: 450, baseType: !234, size: 64, offset: 768)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !235, file: !6, line: 452, baseType: !209, size: 32, offset: 832)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !235, file: !6, line: 459, baseType: !209, size: 32, offset: 864)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !235, file: !6, line: 460, baseType: !209, size: 32, offset: 896)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !235, file: !6, line: 462, baseType: !7, size: 32, offset: 928)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !206, file: !6, line: 647, baseType: !4008, size: 640, offset: 640)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !6, line: 67, size: 640, elements: !4009)
!4009 = !{!4010, !4022, !4030, !4038, !4039, !4040, !4043, !4045, !4046, !4047}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4008, file: !6, line: 68, baseType: !4011, size: 72)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !127, line: 407, size: 72, elements: !4012)
!4012 = !{!4013, !4014, !4015, !4016, !4017, !4019, !4020, !4021}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4011, file: !127, line: 408, baseType: !1376, size: 8)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4011, file: !127, line: 409, baseType: !1376, size: 8, offset: 8)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !4011, file: !127, line: 411, baseType: !1376, size: 8, offset: 16)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4011, file: !127, line: 412, baseType: !1376, size: 8, offset: 24)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !4011, file: !127, line: 413, baseType: !4018, size: 16, offset: 32)
!4018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2982, line: 29, baseType: !883)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !4011, file: !127, line: 414, baseType: !1376, size: 8, offset: 48)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !4011, file: !127, line: 418, baseType: !1376, size: 8, offset: 56)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !4011, file: !127, line: 419, baseType: !1376, size: 8, offset: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !4008, file: !6, line: 69, baseType: !4023, size: 48, offset: 72)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !127, line: 689, size: 48, elements: !4024)
!4024 = !{!4025, !4026, !4027, !4028, !4029}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4023, file: !127, line: 690, baseType: !1376, size: 8)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4023, file: !127, line: 691, baseType: !1376, size: 8, offset: 8)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !4023, file: !127, line: 693, baseType: !1376, size: 8, offset: 16)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4023, file: !127, line: 694, baseType: !1376, size: 8, offset: 24)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !4023, file: !127, line: 695, baseType: !4018, size: 16, offset: 32)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !4008, file: !6, line: 70, baseType: !4031, size: 64, offset: 120)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !127, line: 677, size: 64, elements: !4032)
!4032 = !{!4033, !4034, !4035, !4036}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4031, file: !127, line: 678, baseType: !1376, size: 8)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4031, file: !127, line: 679, baseType: !1376, size: 8, offset: 8)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !4031, file: !127, line: 680, baseType: !4018, size: 16, offset: 16)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !4031, file: !127, line: 681, baseType: !4037, size: 32, offset: 32)
!4037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2982, line: 31, baseType: !218)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4008, file: !6, line: 71, baseType: !249, size: 128, offset: 192)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4008, file: !6, line: 72, baseType: !204, size: 64, offset: 320)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !4008, file: !6, line: 73, baseType: !4041, size: 64, offset: 384)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !6, line: 48, flags: DIFlagFwdDecl)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4008, file: !6, line: 75, baseType: !4044, size: 64, offset: 448)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4008, file: !6, line: 76, baseType: !209, size: 32, offset: 512)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4008, file: !6, line: 77, baseType: !209, size: 32, offset: 544)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !4008, file: !6, line: 78, baseType: !209, size: 32, offset: 576)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !206, file: !6, line: 649, baseType: !239, size: 5568, offset: 1280)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !206, file: !6, line: 651, baseType: !4050, size: 144, offset: 6848)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !127, line: 289, size: 144, elements: !4051)
!4051 = !{!4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4050, file: !127, line: 290, baseType: !1376, size: 8)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4050, file: !127, line: 291, baseType: !1376, size: 8, offset: 8)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !4050, file: !127, line: 293, baseType: !4018, size: 16, offset: 16)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4050, file: !127, line: 294, baseType: !1376, size: 8, offset: 32)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4050, file: !127, line: 295, baseType: !1376, size: 8, offset: 40)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4050, file: !127, line: 296, baseType: !1376, size: 8, offset: 48)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !4050, file: !127, line: 297, baseType: !1376, size: 8, offset: 56)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4050, file: !127, line: 298, baseType: !4018, size: 16, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4050, file: !127, line: 299, baseType: !4018, size: 16, offset: 80)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !4050, file: !127, line: 300, baseType: !4018, size: 16, offset: 96)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !4050, file: !127, line: 301, baseType: !1376, size: 8, offset: 112)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !4050, file: !127, line: 302, baseType: !1376, size: 8, offset: 120)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !4050, file: !127, line: 303, baseType: !1376, size: 8, offset: 128)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !4050, file: !127, line: 304, baseType: !1376, size: 8, offset: 136)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !206, file: !6, line: 652, baseType: !4067, size: 64, offset: 7040)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !6, line: 396, size: 384, elements: !4069)
!4069 = !{!4070, !4078, !4086, !4098, !4111, !4120}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4068, file: !6, line: 397, baseType: !4071, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !127, line: 844, size: 40, elements: !4073)
!4073 = !{!4074, !4075, !4076, !4077}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4072, file: !127, line: 845, baseType: !1376, size: 8)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4072, file: !127, line: 846, baseType: !1376, size: 8, offset: 8)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4072, file: !127, line: 848, baseType: !4018, size: 16, offset: 16)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !4072, file: !127, line: 849, baseType: !1376, size: 8, offset: 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !4068, file: !6, line: 400, baseType: !4079, size: 64, offset: 64)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !127, line: 895, size: 56, elements: !4081)
!4081 = !{!4082, !4083, !4084, !4085}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4080, file: !127, line: 896, baseType: !1376, size: 8)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4080, file: !127, line: 897, baseType: !1376, size: 8, offset: 8)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4080, file: !127, line: 898, baseType: !1376, size: 8, offset: 16)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4080, file: !127, line: 899, baseType: !4037, size: 32, offset: 24)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !4068, file: !6, line: 401, baseType: !4087, size: 64, offset: 128)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !127, line: 917, size: 80, elements: !4089)
!4089 = !{!4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4088, file: !127, line: 918, baseType: !1376, size: 8)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4088, file: !127, line: 919, baseType: !1376, size: 8, offset: 8)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4088, file: !127, line: 920, baseType: !1376, size: 8, offset: 16)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4088, file: !127, line: 921, baseType: !1376, size: 8, offset: 24)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !4088, file: !127, line: 923, baseType: !4018, size: 16, offset: 32)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !4088, file: !127, line: 928, baseType: !1376, size: 8, offset: 48)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !4088, file: !127, line: 929, baseType: !1376, size: 8, offset: 56)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !4088, file: !127, line: 930, baseType: !4018, size: 16, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !4068, file: !6, line: 402, baseType: !4099, size: 64, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !127, line: 955, size: 128, elements: !4101)
!4101 = !{!4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4100, file: !127, line: 956, baseType: !1376, size: 8)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4100, file: !127, line: 957, baseType: !1376, size: 8, offset: 8)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4100, file: !127, line: 958, baseType: !1376, size: 8, offset: 16)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4100, file: !127, line: 959, baseType: !1376, size: 8, offset: 24)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4100, file: !127, line: 960, baseType: !4037, size: 32, offset: 32)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !4100, file: !127, line: 963, baseType: !4018, size: 16, offset: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !4100, file: !127, line: 967, baseType: !4018, size: 16, offset: 80)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !4100, file: !127, line: 968, baseType: !4110, size: 32, offset: 96)
!4110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4037, size: 32, elements: !1394)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !4068, file: !6, line: 403, baseType: !4112, size: 64, offset: 256)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !127, line: 940, size: 160, elements: !4114)
!4114 = !{!4115, !4116, !4117, !4118, !4119}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4113, file: !127, line: 941, baseType: !1376, size: 8)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4113, file: !127, line: 942, baseType: !1376, size: 8, offset: 8)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4113, file: !127, line: 943, baseType: !1376, size: 8, offset: 16)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4113, file: !127, line: 944, baseType: !1376, size: 8, offset: 24)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !4113, file: !127, line: 945, baseType: !2783, size: 128, offset: 32)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !4068, file: !6, line: 404, baseType: !4121, size: 64, offset: 320)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !127, line: 1080, size: 24, elements: !4123)
!4123 = !{!4124, !4125, !4126}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4122, file: !127, line: 1081, baseType: !1376, size: 8)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4122, file: !127, line: 1082, baseType: !1376, size: 8, offset: 8)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4122, file: !127, line: 1083, baseType: !1376, size: 8, offset: 16)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !206, file: !6, line: 653, baseType: !4128, size: 64, offset: 7104)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !6, line: 374, size: 5440, elements: !4130)
!4130 = !{!4131, !4142, !4143, !4156, !4198, !4207, !4208}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4129, file: !6, line: 375, baseType: !4132, size: 72)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !127, line: 349, size: 72, elements: !4133)
!4133 = !{!4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4132, file: !127, line: 350, baseType: !1376, size: 8)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4132, file: !127, line: 351, baseType: !1376, size: 8, offset: 8)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4132, file: !127, line: 353, baseType: !4018, size: 16, offset: 16)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !4132, file: !127, line: 354, baseType: !1376, size: 8, offset: 32)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !4132, file: !127, line: 355, baseType: !1376, size: 8, offset: 40)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !4132, file: !127, line: 356, baseType: !1376, size: 8, offset: 48)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4132, file: !127, line: 357, baseType: !1376, size: 8, offset: 56)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !4132, file: !127, line: 358, baseType: !1376, size: 8, offset: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4129, file: !6, line: 377, baseType: !303, size: 64, offset: 128)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4129, file: !6, line: 381, baseType: !4144, size: 1024, offset: 192)
!4144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4145, size: 1024, elements: !213)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !127, line: 783, size: 64, elements: !4147)
!4147 = !{!4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4146, file: !127, line: 784, baseType: !1376, size: 8)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4146, file: !127, line: 785, baseType: !1376, size: 8, offset: 8)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !4146, file: !127, line: 787, baseType: !1376, size: 8, offset: 16)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !4146, file: !127, line: 788, baseType: !1376, size: 8, offset: 24)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !4146, file: !127, line: 789, baseType: !1376, size: 8, offset: 32)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !4146, file: !127, line: 790, baseType: !1376, size: 8, offset: 40)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !4146, file: !127, line: 791, baseType: !1376, size: 8, offset: 48)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !4146, file: !127, line: 792, baseType: !1376, size: 8, offset: 56)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !4129, file: !6, line: 385, baseType: !4157, size: 2048, offset: 1216)
!4157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4158, size: 2048, elements: !2306)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !6, line: 232, size: 6272, elements: !4160)
!4160 = !{!4161, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4159, file: !6, line: 235, baseType: !4162, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !6, line: 82, size: 320, elements: !4164)
!4164 = !{!4165, !4177, !4178, !4179, !4181}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4163, file: !6, line: 83, baseType: !4166, size: 72)
!4166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !127, line: 389, size: 72, elements: !4167)
!4167 = !{!4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4166, file: !127, line: 390, baseType: !1376, size: 8)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4166, file: !127, line: 391, baseType: !1376, size: 8, offset: 8)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4166, file: !127, line: 393, baseType: !1376, size: 8, offset: 16)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !4166, file: !127, line: 394, baseType: !1376, size: 8, offset: 24)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !4166, file: !127, line: 395, baseType: !1376, size: 8, offset: 32)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4166, file: !127, line: 396, baseType: !1376, size: 8, offset: 40)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4166, file: !127, line: 397, baseType: !1376, size: 8, offset: 48)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4166, file: !127, line: 398, baseType: !1376, size: 8, offset: 56)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !4166, file: !127, line: 399, baseType: !1376, size: 8, offset: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4163, file: !6, line: 85, baseType: !209, size: 32, offset: 96)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4163, file: !6, line: 86, baseType: !4044, size: 64, offset: 128)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !4163, file: !6, line: 91, baseType: !4180, size: 64, offset: 192)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4163, file: !6, line: 93, baseType: !303, size: 64, offset: 256)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !4159, file: !6, line: 237, baseType: !4162, size: 64, offset: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4159, file: !6, line: 239, baseType: !7, size: 32, offset: 128)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4159, file: !6, line: 243, baseType: !4145, size: 64, offset: 192)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4159, file: !6, line: 245, baseType: !209, size: 32, offset: 256)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4159, file: !6, line: 247, baseType: !5, size: 32, offset: 288)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !4159, file: !6, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !4159, file: !6, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !4159, file: !6, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !4159, file: !6, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !4159, file: !6, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !4159, file: !6, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !4159, file: !6, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4159, file: !6, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4159, file: !6, line: 257, baseType: !239, size: 5568, offset: 384)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !4159, file: !6, line: 258, baseType: !238, size: 64, offset: 5952)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !4159, file: !6, line: 259, baseType: !2034, size: 256, offset: 6016)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !4129, file: !6, line: 389, baseType: !4199, size: 2048, offset: 3264)
!4199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4200, size: 2048, elements: !2306)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !6, line: 322, size: 64, elements: !4202)
!4202 = !{!4203, !4204, !4205}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4201, file: !6, line: 323, baseType: !7, size: 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4201, file: !6, line: 324, baseType: !1522, size: 32, offset: 32)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4201, file: !6, line: 328, baseType: !4206, offset: 64)
!4206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4163, elements: !2407)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4129, file: !6, line: 391, baseType: !4044, size: 64, offset: 5312)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4129, file: !6, line: 392, baseType: !209, size: 32, offset: 5376)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !206, file: !6, line: 655, baseType: !4128, size: 64, offset: 7168)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !206, file: !6, line: 656, baseType: !4211, size: 1024, offset: 7232)
!4211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4180, size: 1024, elements: !213)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !206, file: !6, line: 657, baseType: !4211, size: 1024, offset: 8256)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !206, file: !6, line: 659, baseType: !4214, size: 64, offset: 9280)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !206, file: !6, line: 661, baseType: !344, size: 16, offset: 9344)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !206, file: !6, line: 662, baseType: !1375, size: 8, offset: 9360)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !206, file: !6, line: 663, baseType: !1375, size: 8, offset: 9368)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !206, file: !6, line: 664, baseType: !1375, size: 8, offset: 9376)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !206, file: !6, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !206, file: !6, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !206, file: !6, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !206, file: !6, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !206, file: !6, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !206, file: !6, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !206, file: !6, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !206, file: !6, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !206, file: !6, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !206, file: !6, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !206, file: !6, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !206, file: !6, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !206, file: !6, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !206, file: !6, line: 679, baseType: !209, size: 32, offset: 9408)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !206, file: !6, line: 682, baseType: !303, size: 64, offset: 9472)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !206, file: !6, line: 683, baseType: !303, size: 64, offset: 9536)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !206, file: !6, line: 684, baseType: !303, size: 64, offset: 9600)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !206, file: !6, line: 686, baseType: !249, size: 128, offset: 9664)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !206, file: !6, line: 688, baseType: !209, size: 32, offset: 9792)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !206, file: !6, line: 690, baseType: !216, size: 32, offset: 9824)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !206, file: !6, line: 691, baseType: !770, size: 32, offset: 9856)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !206, file: !6, line: 693, baseType: !203, size: 64, offset: 9920)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !206, file: !6, line: 696, baseType: !203, size: 64, offset: 9984)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !206, file: !6, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !206, file: !6, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !206, file: !6, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !206, file: !6, line: 702, baseType: !4246, size: 64, offset: 10112)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !6, line: 28, flags: DIFlagFwdDecl)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !206, file: !6, line: 703, baseType: !209, size: 32, offset: 10176)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !206, file: !6, line: 704, baseType: !147, size: 32, offset: 10208)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !206, file: !6, line: 705, baseType: !4251, size: 64, offset: 10240)
!4251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !6, line: 502, size: 64, elements: !4252)
!4252 = !{!4253, !4254}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !4251, file: !6, line: 506, baseType: !7, size: 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4251, file: !6, line: 512, baseType: !209, size: 32, offset: 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !206, file: !6, line: 706, baseType: !4256, size: 128, offset: 10304)
!4256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !6, line: 522, size: 128, elements: !4257)
!4257 = !{!4258, !4259, !4260, !4261}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !4256, file: !6, line: 529, baseType: !7, size: 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !4256, file: !6, line: 535, baseType: !7, size: 32, offset: 32)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !4256, file: !6, line: 545, baseType: !7, size: 32, offset: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4256, file: !6, line: 551, baseType: !209, size: 32, offset: 96)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !206, file: !6, line: 707, baseType: !4256, size: 128, offset: 10432)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !206, file: !6, line: 708, baseType: !7, size: 32, offset: 10560)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !206, file: !6, line: 710, baseType: !882, size: 16, offset: 10592)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !206, file: !6, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !252)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "appledisplay", file: !3, line: 63, size: 1280, elements: !4270)
!4270 = !{!4271, !4272, !4327, !4792, !4793, !4794, !4795, !4796}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "udev", scope: !4269, file: !3, line: 64, baseType: !205, size: 64)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "urb", scope: !4269, file: !3, line: 65, baseType: !4273, size: 64, offset: 64)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !6, line: 1561, size: 1472, elements: !4275)
!4275 = !{!4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4319}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4274, file: !6, line: 1563, baseType: !1522, size: 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !4274, file: !6, line: 1564, baseType: !209, size: 32, offset: 32)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4274, file: !6, line: 1565, baseType: !204, size: 64, offset: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4274, file: !6, line: 1566, baseType: !770, size: 32, offset: 128)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !4274, file: !6, line: 1567, baseType: !770, size: 32, offset: 160)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4274, file: !6, line: 1570, baseType: !249, size: 128, offset: 192)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !4274, file: !6, line: 1572, baseType: !249, size: 128, offset: 320)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !4274, file: !6, line: 1573, baseType: !4284, size: 64, offset: 448)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !6, line: 1360, size: 320, elements: !4286)
!4286 = !{!4287, !4288, !4289, !4290, !4291}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4285, file: !6, line: 1361, baseType: !249, size: 128)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4285, file: !6, line: 1362, baseType: !1504, size: 128, offset: 128)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4285, file: !6, line: 1363, baseType: !262, offset: 256)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !4285, file: !6, line: 1364, baseType: !770, size: 32, offset: 256)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !4285, file: !6, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4274, file: !6, line: 1574, baseType: !205, size: 64, offset: 512)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !4274, file: !6, line: 1575, baseType: !4180, size: 64, offset: 576)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4274, file: !6, line: 1576, baseType: !7, size: 32, offset: 640)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4274, file: !6, line: 1577, baseType: !7, size: 32, offset: 672)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4274, file: !6, line: 1578, baseType: !209, size: 32, offset: 704)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !4274, file: !6, line: 1579, baseType: !7, size: 32, offset: 736)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !4274, file: !6, line: 1580, baseType: !204, size: 64, offset: 768)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !4274, file: !6, line: 1581, baseType: !943, size: 64, offset: 832)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4274, file: !6, line: 1582, baseType: !4301, size: 64, offset: 896)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !6, line: 1582, flags: DIFlagFwdDecl)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !4274, file: !6, line: 1583, baseType: !209, size: 32, offset: 960)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !4274, file: !6, line: 1584, baseType: !209, size: 32, offset: 992)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !4274, file: !6, line: 1585, baseType: !216, size: 32, offset: 1024)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4274, file: !6, line: 1586, baseType: !216, size: 32, offset: 1056)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !4274, file: !6, line: 1587, baseType: !4044, size: 64, offset: 1088)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !4274, file: !6, line: 1588, baseType: !943, size: 64, offset: 1152)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !4274, file: !6, line: 1589, baseType: !209, size: 32, offset: 1216)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !4274, file: !6, line: 1590, baseType: !209, size: 32, offset: 1248)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4274, file: !6, line: 1591, baseType: !209, size: 32, offset: 1280)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !4274, file: !6, line: 1593, baseType: !209, size: 32, offset: 1312)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4274, file: !6, line: 1594, baseType: !204, size: 64, offset: 1344)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4274, file: !6, line: 1595, baseType: !4315, size: 64, offset: 1408)
!4315 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !6, line: 1376, baseType: !4316)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{null, !4273}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !4274, file: !6, line: 1596, baseType: !4320, offset: 1472)
!4320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4321, elements: !2407)
!4321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !6, line: 1351, size: 128, elements: !4322)
!4322 = !{!4323, !4324, !4325, !4326}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4321, file: !6, line: 1352, baseType: !7, size: 32)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4321, file: !6, line: 1353, baseType: !7, size: 32, offset: 32)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4321, file: !6, line: 1354, baseType: !7, size: 32, offset: 64)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4321, file: !6, line: 1355, baseType: !209, size: 32, offset: 96)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "bd", scope: !4269, file: !3, line: 66, baseType: !4328, size: 64, offset: 128)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_device", file: !115, line: 280, size: 6912, elements: !4330)
!4330 = !{!4331, !4341, !4342, !4343, !4775, !4787, !4788, !4789, !4791}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "props", scope: !4329, file: !115, line: 284, baseType: !4332, size: 224)
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_properties", file: !115, line: 182, size: 224, elements: !4333)
!4333 = !{!4334, !4335, !4336, !4337, !4338, !4339, !4340}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !4332, file: !115, line: 194, baseType: !209, size: 32)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !4332, file: !115, line: 203, baseType: !209, size: 32, offset: 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4332, file: !115, line: 219, baseType: !209, size: 32, offset: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !4332, file: !115, line: 238, baseType: !209, size: 32, offset: 96)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4332, file: !115, line: 249, baseType: !114, size: 32, offset: 128)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4332, file: !115, line: 264, baseType: !7, size: 32, offset: 160)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4332, file: !115, line: 272, baseType: !121, size: 32, offset: 192)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "update_lock", scope: !4329, file: !115, line: 294, baseType: !1196, size: 192, offset: 256)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "ops_lock", scope: !4329, file: !115, line: 303, baseType: !1196, size: 192, offset: 448)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4329, file: !115, line: 312, baseType: !4344, size: 64, offset: 640)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4346)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_ops", file: !115, line: 120, size: 256, elements: !4347)
!4347 = !{!4348, !4349, !4353, !4354}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4346, file: !115, line: 128, baseType: !7, size: 32)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "update_status", scope: !4346, file: !115, line: 146, baseType: !4350, size: 64, offset: 64)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!209, !4328}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "get_brightness", scope: !4346, file: !115, line: 160, baseType: !4350, size: 64, offset: 128)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "check_fb", scope: !4346, file: !115, line: 174, baseType: !4355, size: 64, offset: 192)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!209, !4328, !4358}
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_info", file: !4360, line: 437, size: 8128, elements: !4361)
!4360 = !DIFile(filename: "./include/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!4361 = !{!4362, !4363, !4364, !4365, !4366, !4367, !4368, !4407, !4426, !4487, !4488, !4506, !4507, !4517, !4518, !4519, !4520, !4521, !4523, !4530, !4545, !4673, !4674, !4675, !4676, !4752, !4757, !4758, !4759, !4760, !4761, !4762, !4774}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4359, file: !4360, line: 438, baseType: !770, size: 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4359, file: !4360, line: 439, baseType: !209, size: 32, offset: 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4359, file: !4360, line: 440, baseType: !209, size: 32, offset: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_rotate_hint", scope: !4359, file: !4360, line: 445, baseType: !209, size: 32, offset: 96)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4359, file: !4360, line: 446, baseType: !1196, size: 192, offset: 128)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock", scope: !4359, file: !4360, line: 447, baseType: !1196, size: 192, offset: 320)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !4359, file: !4360, line: 448, baseType: !4369, size: 1280, offset: 512)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_var_screeninfo", file: !4370, line: 242, size: 1280, elements: !4371)
!4370 = !DIFile(filename: "./include/uapi/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!4371 = !{!4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !4369, file: !4370, line: 243, baseType: !218, size: 32)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !4369, file: !4370, line: 244, baseType: !218, size: 32, offset: 32)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "xres_virtual", scope: !4369, file: !4370, line: 245, baseType: !218, size: 32, offset: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "yres_virtual", scope: !4369, file: !4370, line: 246, baseType: !218, size: 32, offset: 96)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "xoffset", scope: !4369, file: !4370, line: 247, baseType: !218, size: 32, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "yoffset", scope: !4369, file: !4370, line: 248, baseType: !218, size: 32, offset: 160)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel", scope: !4369, file: !4370, line: 250, baseType: !218, size: 32, offset: 192)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "grayscale", scope: !4369, file: !4370, line: 251, baseType: !218, size: 32, offset: 224)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !4369, file: !4370, line: 253, baseType: !4381, size: 96, offset: 256)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_bitfield", file: !4370, line: 188, size: 96, elements: !4382)
!4382 = !{!4383, !4384, !4385}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4381, file: !4370, line: 189, baseType: !218, size: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4381, file: !4370, line: 190, baseType: !218, size: 32, offset: 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "msb_right", scope: !4381, file: !4370, line: 191, baseType: !218, size: 32, offset: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !4369, file: !4370, line: 254, baseType: !4381, size: 96, offset: 352)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !4369, file: !4370, line: 255, baseType: !4381, size: 96, offset: 448)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !4369, file: !4370, line: 256, baseType: !4381, size: 96, offset: 544)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "nonstd", scope: !4369, file: !4370, line: 258, baseType: !218, size: 32, offset: 640)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4369, file: !4370, line: 260, baseType: !218, size: 32, offset: 672)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4369, file: !4370, line: 262, baseType: !218, size: 32, offset: 704)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4369, file: !4370, line: 263, baseType: !218, size: 32, offset: 736)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "accel_flags", scope: !4369, file: !4370, line: 265, baseType: !218, size: 32, offset: 768)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !4369, file: !4370, line: 268, baseType: !218, size: 32, offset: 800)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !4369, file: !4370, line: 269, baseType: !218, size: 32, offset: 832)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !4369, file: !4370, line: 270, baseType: !218, size: 32, offset: 864)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !4369, file: !4370, line: 271, baseType: !218, size: 32, offset: 896)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !4369, file: !4370, line: 272, baseType: !218, size: 32, offset: 928)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !4369, file: !4370, line: 273, baseType: !218, size: 32, offset: 960)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !4369, file: !4370, line: 274, baseType: !218, size: 32, offset: 992)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4369, file: !4370, line: 275, baseType: !218, size: 32, offset: 1024)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !4369, file: !4370, line: 276, baseType: !218, size: 32, offset: 1056)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "rotate", scope: !4369, file: !4370, line: 277, baseType: !218, size: 32, offset: 1088)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !4369, file: !4370, line: 278, baseType: !218, size: 32, offset: 1120)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4369, file: !4370, line: 279, baseType: !4406, size: 128, offset: 1152)
!4406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 128, elements: !1178)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "fix", scope: !4359, file: !4360, line: 449, baseType: !4408, size: 640, offset: 1792)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fix_screeninfo", file: !4370, line: 157, size: 640, elements: !4409)
!4409 = !{!4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4408, file: !4370, line: 158, baseType: !211, size: 128)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "smem_start", scope: !4408, file: !4370, line: 159, baseType: !203, size: 64, offset: 128)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "smem_len", scope: !4408, file: !4370, line: 161, baseType: !218, size: 32, offset: 192)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4408, file: !4370, line: 162, baseType: !218, size: 32, offset: 224)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "type_aux", scope: !4408, file: !4370, line: 163, baseType: !218, size: 32, offset: 256)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "visual", scope: !4408, file: !4370, line: 164, baseType: !218, size: 32, offset: 288)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "xpanstep", scope: !4408, file: !4370, line: 165, baseType: !883, size: 16, offset: 320)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "ypanstep", scope: !4408, file: !4370, line: 166, baseType: !883, size: 16, offset: 336)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "ywrapstep", scope: !4408, file: !4370, line: 167, baseType: !883, size: 16, offset: 352)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !4408, file: !4370, line: 168, baseType: !218, size: 32, offset: 384)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_start", scope: !4408, file: !4370, line: 169, baseType: !203, size: 64, offset: 448)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_len", scope: !4408, file: !4370, line: 171, baseType: !218, size: 32, offset: 512)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !4408, file: !4370, line: 172, baseType: !218, size: 32, offset: 544)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4408, file: !4370, line: 174, baseType: !883, size: 16, offset: 576)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4408, file: !4370, line: 175, baseType: !4425, size: 32, offset: 592)
!4425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 32, elements: !230)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "monspecs", scope: !4359, file: !4360, line: 450, baseType: !4427, size: 1152, offset: 2432)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_monspecs", file: !4360, line: 63, size: 1152, elements: !4428)
!4428 = !{!4429, !4440, !4458, !4460, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "chroma", scope: !4427, file: !4360, line: 64, baseType: !4430, size: 256)
!4430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_chroma", file: !4360, line: 52, size: 256, elements: !4431)
!4431 = !{!4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "redx", scope: !4430, file: !4360, line: 53, baseType: !218, size: 32)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "greenx", scope: !4430, file: !4360, line: 54, baseType: !218, size: 32, offset: 32)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "bluex", scope: !4430, file: !4360, line: 55, baseType: !218, size: 32, offset: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "whitex", scope: !4430, file: !4360, line: 56, baseType: !218, size: 32, offset: 96)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "redy", scope: !4430, file: !4360, line: 57, baseType: !218, size: 32, offset: 128)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "greeny", scope: !4430, file: !4360, line: 58, baseType: !218, size: 32, offset: 160)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "bluey", scope: !4430, file: !4360, line: 59, baseType: !218, size: 32, offset: 192)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "whitey", scope: !4430, file: !4360, line: 60, baseType: !218, size: 32, offset: 224)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "modedb", scope: !4427, file: !4360, line: 65, baseType: !4441, size: 64, offset: 256)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_videomode", file: !4360, line: 766, size: 512, elements: !4443)
!4443 = !{!4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4442, file: !4360, line: 767, baseType: !246, size: 64)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !4442, file: !4360, line: 768, baseType: !216, size: 32, offset: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !4442, file: !4360, line: 769, baseType: !216, size: 32, offset: 96)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !4442, file: !4360, line: 770, baseType: !216, size: 32, offset: 128)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !4442, file: !4360, line: 771, baseType: !216, size: 32, offset: 160)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !4442, file: !4360, line: 772, baseType: !216, size: 32, offset: 192)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !4442, file: !4360, line: 773, baseType: !216, size: 32, offset: 224)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !4442, file: !4360, line: 774, baseType: !216, size: 32, offset: 256)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !4442, file: !4360, line: 775, baseType: !216, size: 32, offset: 288)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !4442, file: !4360, line: 776, baseType: !216, size: 32, offset: 320)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !4442, file: !4360, line: 777, baseType: !216, size: 32, offset: 352)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4442, file: !4360, line: 778, baseType: !216, size: 32, offset: 384)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !4442, file: !4360, line: 779, baseType: !216, size: 32, offset: 416)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !4442, file: !4360, line: 780, baseType: !216, size: 32, offset: 448)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !4427, file: !4360, line: 66, baseType: !4459, size: 32, offset: 320)
!4459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1376, size: 32, elements: !1178)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "monitor", scope: !4427, file: !4360, line: 67, baseType: !4461, size: 112, offset: 352)
!4461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1376, size: 112, elements: !4462)
!4462 = !{!4463}
!4463 = !DISubrange(count: 14)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "serial_no", scope: !4427, file: !4360, line: 68, baseType: !4461, size: 112, offset: 464)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !4427, file: !4360, line: 69, baseType: !4461, size: 112, offset: 576)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "modedb_len", scope: !4427, file: !4360, line: 70, baseType: !218, size: 32, offset: 704)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !4427, file: !4360, line: 71, baseType: !218, size: 32, offset: 736)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !4427, file: !4360, line: 72, baseType: !218, size: 32, offset: 768)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !4427, file: !4360, line: 73, baseType: !218, size: 32, offset: 800)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "week", scope: !4427, file: !4360, line: 74, baseType: !218, size: 32, offset: 832)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "hfmin", scope: !4427, file: !4360, line: 75, baseType: !218, size: 32, offset: 864)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "hfmax", scope: !4427, file: !4360, line: 76, baseType: !218, size: 32, offset: 896)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmin", scope: !4427, file: !4360, line: 77, baseType: !218, size: 32, offset: 928)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmax", scope: !4427, file: !4360, line: 78, baseType: !218, size: 32, offset: 960)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !4427, file: !4360, line: 79, baseType: !883, size: 16, offset: 992)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !4427, file: !4360, line: 80, baseType: !883, size: 16, offset: 1008)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4427, file: !4360, line: 81, baseType: !883, size: 16, offset: 1024)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "vfmin", scope: !4427, file: !4360, line: 82, baseType: !883, size: 16, offset: 1040)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "vfmax", scope: !4427, file: !4360, line: 83, baseType: !883, size: 16, offset: 1056)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !4427, file: !4360, line: 84, baseType: !883, size: 16, offset: 1072)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "gtf", scope: !4427, file: !4360, line: 85, baseType: !883, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !4427, file: !4360, line: 86, baseType: !883, size: 16, offset: 1104)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4427, file: !4360, line: 87, baseType: !1376, size: 8, offset: 1120)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4427, file: !4360, line: 88, baseType: !1376, size: 8, offset: 1128)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "max_x", scope: !4427, file: !4360, line: 89, baseType: !1376, size: 8, offset: 1136)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "max_y", scope: !4427, file: !4360, line: 90, baseType: !1376, size: 8, offset: 1144)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4359, file: !4360, line: 451, baseType: !2034, size: 256, offset: 3584)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "pixmap", scope: !4359, file: !4360, line: 452, baseType: !4489, size: 448, offset: 3840)
!4489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_pixmap", file: !4360, line: 185, size: 448, elements: !4490)
!4490 = !{!4491, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4505}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4489, file: !4360, line: 186, baseType: !4492, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4489, file: !4360, line: 187, baseType: !216, size: 32, offset: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4489, file: !4360, line: 188, baseType: !216, size: 32, offset: 96)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "buf_align", scope: !4489, file: !4360, line: 189, baseType: !216, size: 32, offset: 128)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "scan_align", scope: !4489, file: !4360, line: 190, baseType: !216, size: 32, offset: 160)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "access_align", scope: !4489, file: !4360, line: 191, baseType: !216, size: 32, offset: 192)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4489, file: !4360, line: 192, baseType: !216, size: 32, offset: 224)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "blit_x", scope: !4489, file: !4360, line: 193, baseType: !216, size: 32, offset: 256)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "blit_y", scope: !4489, file: !4360, line: 194, baseType: !216, size: 32, offset: 288)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "writeio", scope: !4489, file: !4360, line: 198, baseType: !4502, size: 64, offset: 320)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{null, !4358, !204, !204, !7}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "readio", scope: !4489, file: !4360, line: 199, baseType: !4502, size: 64, offset: 384)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "sprite", scope: !4359, file: !4360, line: 453, baseType: !4489, size: 448, offset: 4288)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !4359, file: !4360, line: 454, baseType: !4508, size: 320, offset: 4736)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cmap", file: !4370, line: 282, size: 320, elements: !4509)
!4509 = !{!4510, !4511, !4512, !4514, !4515, !4516}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4508, file: !4370, line: 283, baseType: !218, size: 32)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4508, file: !4370, line: 284, baseType: !218, size: 32, offset: 32)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !4508, file: !4370, line: 285, baseType: !4513, size: 64, offset: 64)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !4508, file: !4370, line: 286, baseType: !4513, size: 64, offset: 128)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !4508, file: !4370, line: 287, baseType: !4513, size: 64, offset: 192)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !4508, file: !4370, line: 288, baseType: !4513, size: 64, offset: 256)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "modelist", scope: !4359, file: !4360, line: 455, baseType: !249, size: 128, offset: 5056)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4359, file: !4360, line: 456, baseType: !4441, size: 64, offset: 5184)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "bl_dev", scope: !4359, file: !4360, line: 462, baseType: !4328, size: 64, offset: 5248)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve_mutex", scope: !4359, file: !4360, line: 465, baseType: !1196, size: 192, offset: 5312)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve", scope: !4359, file: !4360, line: 466, baseType: !4522, size: 1024, offset: 5504)
!4522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1375, size: 1024, elements: !3528)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_work", scope: !4359, file: !4360, line: 469, baseType: !4524, size: 704, offset: 6528)
!4524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !153, line: 115, size: 704, elements: !4525)
!4525 = !{!4526, !4527, !4528, !4529}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4524, file: !153, line: 116, baseType: !2034, size: 256)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4524, file: !153, line: 117, baseType: !3629, size: 320, offset: 256)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4524, file: !153, line: 120, baseType: !2869, size: 64, offset: 576)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4524, file: !153, line: 121, baseType: !209, size: 32, offset: 640)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "fbdefio", scope: !4359, file: !4360, line: 470, baseType: !4531, size: 64, offset: 7232)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_deferred_io", file: !4360, line: 203, size: 512, elements: !4533)
!4533 = !{!4534, !4535, !4536, !4537, !4541}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4532, file: !4360, line: 205, baseType: !203, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4532, file: !4360, line: 206, baseType: !1196, size: 192, offset: 64)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "pagelist", scope: !4532, file: !4360, line: 207, baseType: !249, size: 128, offset: 256)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "first_io", scope: !4532, file: !4360, line: 209, baseType: !4538, size: 64, offset: 384)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{null, !4358}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_io", scope: !4532, file: !4360, line: 210, baseType: !4542, size: 64, offset: 448)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{null, !4358, !252}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "fbops", scope: !4359, file: !4360, line: 473, baseType: !4546, size: 64, offset: 7296)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4548)
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_ops", file: !4360, line: 228, size: 1472, elements: !4549)
!4549 = !{!4550, !4551, !4555, !4556, !4560, !4564, !4569, !4573, !4577, !4582, !4586, !4587, !4601, !4615, !4632, !4649, !4650, !4654, !4655, !4659, !4670, !4671, !4672}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4548, file: !4360, line: 230, baseType: !198, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "fb_open", scope: !4548, file: !4360, line: 231, baseType: !4552, size: 64, offset: 64)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!209, !4358, !209}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "fb_release", scope: !4548, file: !4360, line: 232, baseType: !4552, size: 64, offset: 128)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "fb_read", scope: !4548, file: !4360, line: 237, baseType: !4557, size: 64, offset: 192)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!334, !4358, !303, !349, !2952}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "fb_write", scope: !4548, file: !4360, line: 239, baseType: !4561, size: 64, offset: 256)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!334, !4358, !246, !349, !2952}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "fb_check_var", scope: !4548, file: !4360, line: 244, baseType: !4565, size: 64, offset: 320)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!209, !4568, !4358}
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "fb_set_par", scope: !4548, file: !4360, line: 247, baseType: !4570, size: 64, offset: 384)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!209, !4358}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcolreg", scope: !4548, file: !4360, line: 250, baseType: !4574, size: 64, offset: 448)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!209, !7, !7, !7, !7, !7, !4358}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcmap", scope: !4548, file: !4360, line: 254, baseType: !4578, size: 64, offset: 512)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!209, !4581, !4358}
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !4548, file: !4360, line: 257, baseType: !4583, size: 64, offset: 576)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!209, !209, !4358}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "fb_pan_display", scope: !4548, file: !4360, line: 260, baseType: !4565, size: 64, offset: 640)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "fb_fillrect", scope: !4548, file: !4360, line: 263, baseType: !4588, size: 64, offset: 704)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{null, !4358, !4591}
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4593)
!4593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fillrect", file: !4370, line: 351, size: 192, elements: !4594)
!4594 = !{!4595, !4596, !4597, !4598, !4599, !4600}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4593, file: !4370, line: 352, baseType: !218, size: 32)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4593, file: !4370, line: 353, baseType: !218, size: 32, offset: 32)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4593, file: !4370, line: 354, baseType: !218, size: 32, offset: 64)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4593, file: !4370, line: 355, baseType: !218, size: 32, offset: 96)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !4593, file: !4370, line: 356, baseType: !218, size: 32, offset: 128)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4593, file: !4370, line: 357, baseType: !218, size: 32, offset: 160)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "fb_copyarea", scope: !4548, file: !4360, line: 265, baseType: !4602, size: 64, offset: 768)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{null, !4358, !4605}
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4607)
!4607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_copyarea", file: !4370, line: 342, size: 192, elements: !4608)
!4608 = !{!4609, !4610, !4611, !4612, !4613, !4614}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4607, file: !4370, line: 343, baseType: !218, size: 32)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4607, file: !4370, line: 344, baseType: !218, size: 32, offset: 32)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4607, file: !4370, line: 345, baseType: !218, size: 32, offset: 64)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4607, file: !4370, line: 346, baseType: !218, size: 32, offset: 96)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4607, file: !4370, line: 347, baseType: !218, size: 32, offset: 128)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4607, file: !4370, line: 348, baseType: !218, size: 32, offset: 160)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "fb_imageblit", scope: !4548, file: !4360, line: 267, baseType: !4616, size: 64, offset: 832)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{null, !4358, !4619}
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4621)
!4621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_image", file: !4370, line: 360, size: 640, elements: !4622)
!4622 = !{!4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4621, file: !4370, line: 361, baseType: !218, size: 32)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4621, file: !4370, line: 362, baseType: !218, size: 32, offset: 32)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4621, file: !4370, line: 363, baseType: !218, size: 32, offset: 64)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4621, file: !4370, line: 364, baseType: !218, size: 32, offset: 96)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "fg_color", scope: !4621, file: !4370, line: 365, baseType: !218, size: 32, offset: 128)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "bg_color", scope: !4621, file: !4370, line: 366, baseType: !218, size: 32, offset: 160)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4621, file: !4370, line: 367, baseType: !1376, size: 8, offset: 192)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4621, file: !4370, line: 368, baseType: !246, size: 64, offset: 256)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !4621, file: !4370, line: 369, baseType: !4508, size: 320, offset: 320)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "fb_cursor", scope: !4548, file: !4360, line: 270, baseType: !4633, size: 64, offset: 896)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{!209, !4358, !4636}
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cursor", file: !4370, line: 388, size: 832, elements: !4638)
!4638 = !{!4639, !4640, !4641, !4642, !4643, !4648}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4637, file: !4370, line: 389, baseType: !883, size: 16)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4637, file: !4370, line: 390, baseType: !883, size: 16, offset: 16)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4637, file: !4370, line: 391, baseType: !883, size: 16, offset: 32)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4637, file: !4370, line: 392, baseType: !246, size: 64, offset: 64)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "hot", scope: !4637, file: !4370, line: 393, baseType: !4644, size: 32, offset: 128)
!4644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fbcurpos", file: !4370, line: 384, size: 32, elements: !4645)
!4645 = !{!4646, !4647}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4644, file: !4370, line: 385, baseType: !883, size: 16)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4644, file: !4370, line: 385, baseType: !883, size: 16, offset: 16)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "image", scope: !4637, file: !4370, line: 394, baseType: !4621, size: 640, offset: 192)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "fb_sync", scope: !4548, file: !4360, line: 273, baseType: !4570, size: 64, offset: 960)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "fb_ioctl", scope: !4548, file: !4360, line: 276, baseType: !4651, size: 64, offset: 1024)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!209, !4358, !7, !203}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "fb_compat_ioctl", scope: !4548, file: !4360, line: 280, baseType: !4651, size: 64, offset: 1088)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "fb_mmap", scope: !4548, file: !4360, line: 284, baseType: !4656, size: 64, offset: 1152)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{!209, !4358, !1004}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_caps", scope: !4548, file: !4360, line: 287, baseType: !4660, size: 64, offset: 1216)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{null, !4358, !4663, !4568}
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_blit_caps", file: !4360, line: 144, size: 128, elements: !4665)
!4665 = !{!4666, !4667, !4668, !4669}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4664, file: !4360, line: 145, baseType: !216, size: 32)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4664, file: !4360, line: 146, baseType: !216, size: 32, offset: 32)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4664, file: !4360, line: 147, baseType: !216, size: 32, offset: 64)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4664, file: !4360, line: 148, baseType: !216, size: 32, offset: 96)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "fb_destroy", scope: !4548, file: !4360, line: 291, baseType: !4538, size: 64, offset: 1280)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_enter", scope: !4548, file: !4360, line: 294, baseType: !4570, size: 64, offset: 1344)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_leave", scope: !4548, file: !4360, line: 295, baseType: !4570, size: 64, offset: 1408)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4359, file: !4360, line: 474, baseType: !238, size: 64, offset: 7360)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4359, file: !4360, line: 475, baseType: !238, size: 64, offset: 7424)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "class_flag", scope: !4359, file: !4360, line: 476, baseType: !209, size: 32, offset: 7488)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "tileops", scope: !4359, file: !4360, line: 478, baseType: !4677, size: 64, offset: 7552)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tile_ops", file: !4360, line: 355, size: 384, elements: !4679)
!4679 = !{!4680, !4694, !4707, !4722, !4738, !4751}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "fb_settile", scope: !4678, file: !4360, line: 357, baseType: !4681, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DISubroutineType(types: !4683)
!4683 = !{null, !4358, !4684}
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilemap", file: !4360, line: 306, size: 192, elements: !4686)
!4686 = !{!4687, !4688, !4689, !4690, !4691}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4685, file: !4360, line: 307, baseType: !218, size: 32)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4685, file: !4360, line: 308, baseType: !218, size: 32, offset: 32)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4685, file: !4360, line: 309, baseType: !218, size: 32, offset: 64)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4685, file: !4360, line: 310, baseType: !218, size: 32, offset: 96)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4685, file: !4360, line: 311, baseType: !4692, size: 64, offset: 128)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1376)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecopy", scope: !4678, file: !4360, line: 362, baseType: !4695, size: 64, offset: 64)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DISubroutineType(types: !4697)
!4697 = !{null, !4358, !4698}
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilearea", file: !4360, line: 326, size: 192, elements: !4700)
!4700 = !{!4701, !4702, !4703, !4704, !4705, !4706}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4699, file: !4360, line: 327, baseType: !218, size: 32)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4699, file: !4360, line: 328, baseType: !218, size: 32, offset: 32)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4699, file: !4360, line: 329, baseType: !218, size: 32, offset: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4699, file: !4360, line: 330, baseType: !218, size: 32, offset: 96)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4699, file: !4360, line: 331, baseType: !218, size: 32, offset: 128)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4699, file: !4360, line: 332, baseType: !218, size: 32, offset: 160)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilefill", scope: !4678, file: !4360, line: 364, baseType: !4708, size: 64, offset: 128)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{null, !4358, !4711}
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilerect", file: !4360, line: 315, size: 256, elements: !4713)
!4713 = !{!4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4712, file: !4360, line: 316, baseType: !218, size: 32)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4712, file: !4360, line: 317, baseType: !218, size: 32, offset: 32)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4712, file: !4360, line: 318, baseType: !218, size: 32, offset: 64)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4712, file: !4360, line: 319, baseType: !218, size: 32, offset: 96)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4712, file: !4360, line: 320, baseType: !218, size: 32, offset: 128)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4712, file: !4360, line: 321, baseType: !218, size: 32, offset: 160)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4712, file: !4360, line: 322, baseType: !218, size: 32, offset: 192)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4712, file: !4360, line: 323, baseType: !218, size: 32, offset: 224)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tileblit", scope: !4678, file: !4360, line: 366, baseType: !4723, size: 64, offset: 192)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{null, !4358, !4726}
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tileblit", file: !4360, line: 335, size: 320, elements: !4728)
!4728 = !{!4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4727, file: !4360, line: 336, baseType: !218, size: 32)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4727, file: !4360, line: 337, baseType: !218, size: 32, offset: 32)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4727, file: !4360, line: 338, baseType: !218, size: 32, offset: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4727, file: !4360, line: 339, baseType: !218, size: 32, offset: 96)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4727, file: !4360, line: 340, baseType: !218, size: 32, offset: 128)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4727, file: !4360, line: 341, baseType: !218, size: 32, offset: 160)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4727, file: !4360, line: 342, baseType: !218, size: 32, offset: 192)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !4727, file: !4360, line: 343, baseType: !4737, size: 64, offset: 256)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecursor", scope: !4678, file: !4360, line: 368, baseType: !4739, size: 64, offset: 256)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{null, !4358, !4742}
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilecursor", file: !4360, line: 346, size: 192, elements: !4744)
!4744 = !{!4745, !4746, !4747, !4748, !4749, !4750}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4743, file: !4360, line: 347, baseType: !218, size: 32)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4743, file: !4360, line: 348, baseType: !218, size: 32, offset: 32)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4743, file: !4360, line: 349, baseType: !218, size: 32, offset: 64)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !4743, file: !4360, line: 350, baseType: !218, size: 32, offset: 96)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4743, file: !4360, line: 351, baseType: !218, size: 32, offset: 128)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4743, file: !4360, line: 352, baseType: !218, size: 32, offset: 160)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_tilemax", scope: !4678, file: !4360, line: 371, baseType: !4570, size: 64, offset: 320)
!4752 = !DIDerivedType(tag: DW_TAG_member, scope: !4359, file: !4360, line: 480, baseType: !4753, size: 64, offset: 7616)
!4753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4359, file: !4360, line: 480, size: 64, elements: !4754)
!4754 = !{!4755, !4756}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "screen_base", scope: !4753, file: !4360, line: 481, baseType: !303, size: 64)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "screen_buffer", scope: !4753, file: !4360, line: 482, baseType: !303, size: 64)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "screen_size", scope: !4359, file: !4360, line: 484, baseType: !203, size: 64, offset: 7680)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "pseudo_palette", scope: !4359, file: !4360, line: 485, baseType: !204, size: 64, offset: 7744)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4359, file: !4360, line: 488, baseType: !216, size: 32, offset: 7808)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_par", scope: !4359, file: !4360, line: 489, baseType: !204, size: 64, offset: 7872)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !4359, file: !4360, line: 491, baseType: !204, size: 64, offset: 7936)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "apertures", scope: !4359, file: !4360, line: 501, baseType: !4763, size: 64, offset: 8000)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apertures_struct", file: !4360, line: 495, size: 64, elements: !4765)
!4765 = !{!4766, !4767}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4764, file: !4360, line: 496, baseType: !7, size: 32)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4764, file: !4360, line: 500, baseType: !4768, offset: 64)
!4768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4769, elements: !1779)
!4769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aperture", file: !4360, line: 497, size: 128, elements: !4770)
!4770 = !{!4771, !4773}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4769, file: !4360, line: 498, baseType: !4772, size: 64)
!4772 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !202, line: 158, baseType: !2201)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4769, file: !4360, line: 499, baseType: !4772, size: 64, offset: 64)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "skip_vt_switch", scope: !4359, file: !4360, line: 503, baseType: !513, size: 8, offset: 8064)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "fb_notif", scope: !4329, file: !115, line: 317, baseType: !4776, size: 192, offset: 704)
!4776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4777, line: 54, size: 192, elements: !4778)
!4777 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!4778 = !{!4779, !4785, !4786}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4776, file: !4777, line: 55, baseType: !4780, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4777, line: 51, baseType: !4781)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!209, !4784, !203, !204}
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4776, file: !4777, line: 56, baseType: !4784, size: 64, offset: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4776, file: !4777, line: 57, baseType: !209, size: 32, offset: 128)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4329, file: !115, line: 322, baseType: !249, size: 128, offset: 896)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4329, file: !115, line: 327, baseType: !239, size: 5568, offset: 1024)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "fb_bl_on", scope: !4329, file: !115, line: 335, baseType: !4790, size: 256, offset: 6592)
!4790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 256, elements: !2306)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4329, file: !115, line: 340, baseType: !209, size: 32, offset: 6848)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "urbdata", scope: !4269, file: !3, line: 67, baseType: !4492, size: 64, offset: 192)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "msgdata", scope: !4269, file: !3, line: 68, baseType: !4492, size: 64, offset: 256)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4269, file: !3, line: 70, baseType: !4524, size: 704, offset: 320)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "button_pressed", scope: !4269, file: !3, line: 71, baseType: !209, size: 32, offset: 1024)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "sysfslock", scope: !4269, file: !3, line: 72, baseType: !1196, size: 192, offset: 1088)
!4797 = !{!0, !4798, !4803, !4808, !4813, !4818, !4823, !4884, !4887, !4889, !4891}
!4798 = !DIGlobalVariableExpression(var: !4799, expr: !DIExpression())
!4799 = distinct !DIGlobalVariable(name: "__exitcall_appledisplay_driver_exit", scope: !2, file: !3, line: 345, type: !4800, isLocal: true, isDefinition: true)
!4800 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4801, line: 117, baseType: !4802)
!4801 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!4803 = !DIGlobalVariableExpression(var: !4804, expr: !DIExpression())
!4804 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author249", scope: !2, file: !3, line: 347, type: !4805, isLocal: true, isDefinition: true, align: 8)
!4805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 312, elements: !4806)
!4806 = !{!4807}
!4807 = !DISubrange(count: 39)
!4808 = !DIGlobalVariableExpression(var: !4809, expr: !DIExpression())
!4809 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description250", scope: !2, file: !3, line: 348, type: !4810, isLocal: true, isDefinition: true, align: 8)
!4810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 424, elements: !4811)
!4811 = !{!4812}
!4812 = !DISubrange(count: 53)
!4813 = !DIGlobalVariableExpression(var: !4814, expr: !DIExpression())
!4814 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file251", scope: !2, file: !3, line: 349, type: !4815, isLocal: true, isDefinition: true, align: 8)
!4815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 384, elements: !4816)
!4816 = !{!4817}
!4817 = !DISubrange(count: 48)
!4818 = !DIGlobalVariableExpression(var: !4819, expr: !DIExpression())
!4819 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license252", scope: !2, file: !3, line: 349, type: !4820, isLocal: true, isDefinition: true, align: 8)
!4820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 200, elements: !4821)
!4821 = !{!4822}
!4822 = !DISubrange(count: 25)
!4823 = !DIGlobalVariableExpression(var: !4824, expr: !DIExpression())
!4824 = distinct !DIGlobalVariable(name: "appledisplay_driver", scope: !2, file: !3, line: 339, type: !4825, isLocal: true, isDefinition: true)
!4825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_driver", file: !6, line: 1184, size: 2112, elements: !4826)
!4826 = !{!4827, !4828, !4849, !4853, !4857, !4861, !4865, !4866, !4867, !4868, !4869, !4870, !4875, !4880, !4881, !4882, !4883}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4825, file: !6, line: 1185, baseType: !246, size: 64)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4825, file: !6, line: 1187, baseType: !4829, size: 64, offset: 64)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!209, !4158, !4832}
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4834)
!4834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !3522, line: 121, size: 256, elements: !4835)
!4835 = !{!4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !4834, file: !3522, line: 123, baseType: !883, size: 16)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4834, file: !3522, line: 126, baseType: !883, size: 16, offset: 16)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4834, file: !3522, line: 127, baseType: !883, size: 16, offset: 32)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !4834, file: !3522, line: 128, baseType: !883, size: 16, offset: 48)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !4834, file: !3522, line: 129, baseType: !883, size: 16, offset: 64)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4834, file: !3522, line: 132, baseType: !1376, size: 8, offset: 80)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4834, file: !3522, line: 133, baseType: !1376, size: 8, offset: 88)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4834, file: !3522, line: 134, baseType: !1376, size: 8, offset: 96)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4834, file: !3522, line: 137, baseType: !1376, size: 8, offset: 104)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4834, file: !3522, line: 138, baseType: !1376, size: 8, offset: 112)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4834, file: !3522, line: 139, baseType: !1376, size: 8, offset: 120)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4834, file: !3522, line: 142, baseType: !1376, size: 8, offset: 128)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4834, file: !3522, line: 145, baseType: !3541, size: 64, align: 64, offset: 192)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4825, file: !6, line: 1190, baseType: !4850, size: 64, offset: 128)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{null, !4158}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4825, file: !6, line: 1192, baseType: !4854, size: 64, offset: 192)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!209, !4158, !7, !204}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4825, file: !6, line: 1195, baseType: !4858, size: 64, offset: 256)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!209, !4158, !3552}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4825, file: !6, line: 1196, baseType: !4862, size: 64, offset: 320)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!209, !4158}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4825, file: !6, line: 1197, baseType: !4862, size: 64, offset: 384)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "pre_reset", scope: !4825, file: !6, line: 1199, baseType: !4862, size: 64, offset: 448)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "post_reset", scope: !4825, file: !6, line: 1200, baseType: !4862, size: 64, offset: 512)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4825, file: !6, line: 1202, baseType: !4832, size: 64, offset: 576)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4825, file: !6, line: 1203, baseType: !355, size: 64, offset: 640)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4825, file: !6, line: 1205, baseType: !4871, size: 128, offset: 704)
!4871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dynids", file: !6, line: 1091, size: 128, elements: !4872)
!4872 = !{!4873, !4874}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4871, file: !6, line: 1092, baseType: !262)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4871, file: !6, line: 1093, baseType: !249, size: 128)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "drvwrap", scope: !4825, file: !6, line: 1206, baseType: !4876, size: 1216, offset: 832)
!4876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usbdrv_wrap", file: !6, line: 1113, size: 1216, elements: !4877)
!4877 = !{!4878, !4879}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4876, file: !6, line: 1114, baseType: !3510, size: 1152)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "for_devices", scope: !4876, file: !6, line: 1115, baseType: !209, size: 32, offset: 1152)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "no_dynamic_id", scope: !4825, file: !6, line: 1207, baseType: !7, size: 1, offset: 2048, flags: DIFlagBitField, extraData: i64 2048)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "supports_autosuspend", scope: !4825, file: !6, line: 1208, baseType: !7, size: 1, offset: 2049, flags: DIFlagBitField, extraData: i64 2048)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "disable_hub_initiated_lpm", scope: !4825, file: !6, line: 1209, baseType: !7, size: 1, offset: 2050, flags: DIFlagBitField, extraData: i64 2048)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "soft_unbind", scope: !4825, file: !6, line: 1210, baseType: !7, size: 1, offset: 2051, flags: DIFlagBitField, extraData: i64 2048)
!4884 = !DIGlobalVariableExpression(var: !4885, expr: !DIExpression())
!4885 = distinct !DIGlobalVariable(name: "__key", scope: !4886, file: !3, line: 232, type: !668, isLocal: true, isDefinition: true)
!4886 = distinct !DISubprogram(name: "appledisplay_probe", scope: !3, file: !3, line: 201, type: !4830, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!4887 = !DIGlobalVariableExpression(var: !4888, expr: !DIExpression())
!4888 = distinct !DIGlobalVariable(name: "count_displays", scope: !2, file: !3, line: 75, type: !770, isLocal: true, isDefinition: true)
!4889 = !DIGlobalVariableExpression(var: !4890, expr: !DIExpression())
!4890 = distinct !DIGlobalVariable(name: "appledisplay_bl_data", scope: !2, file: !3, line: 181, type: !4345, isLocal: true, isDefinition: true)
!4891 = !DIGlobalVariableExpression(var: !4892, expr: !DIExpression())
!4892 = distinct !DIGlobalVariable(name: "appledisplay_table", scope: !2, file: !3, line: 48, type: !4893, isLocal: true, isDefinition: true)
!4893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4833, size: 2048, elements: !1353)
!4894 = !{i32 7, !"Dwarf Version", i32 4}
!4895 = !{i32 2, !"Debug Info Version", i32 3}
!4896 = !{i32 1, !"wchar_size", i32 2}
!4897 = !{i32 1, !"Code Model", i32 2}
!4898 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4899 = distinct !DISubprogram(name: "appledisplay_driver_init", scope: !3, file: !3, line: 345, type: !4900, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!209}
!4902 = !DILocation(line: 345, column: 1, scope: !4899)
!4903 = distinct !DISubprogram(name: "appledisplay_driver_exit", scope: !3, file: !3, line: 345, type: !1955, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!4904 = !DILocation(line: 345, column: 1, scope: !4903)
!4905 = !DILocalVariable(name: "i", arg: 1, scope: !4906, file: !4907, line: 163, type: !209)
!4906 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !4907, file: !4907, line: 163, type: !4908, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!4907 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!4908 = !DISubroutineType(types: !4909)
!4909 = !{!209, !209, !4910}
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!4911 = !DILocation(line: 163, column: 55, scope: !4906, inlinedAt: !4912)
!4912 = distinct !DILocation(line: 286, column: 9, scope: !4913, inlinedAt: !4917)
!4913 = distinct !DISubprogram(name: "arch_atomic_inc_return", scope: !4914, file: !4914, line: 284, type: !4915, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!4914 = !DIFile(filename: "./include/linux/atomic-arch-fallback.h", directory: "/home/lizy2001/genbc/linux")
!4915 = !DISubroutineType(types: !4916)
!4916 = !{!209, !4910}
!4917 = distinct !DILocation(line: 251, column: 9, scope: !4918, inlinedAt: !4920)
!4918 = distinct !DISubprogram(name: "atomic_inc_return", scope: !4919, file: !4919, line: 248, type: !4915, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!4919 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4920 = distinct !DILocation(line: 271, column: 3, scope: !4886)
!4921 = !DILocalVariable(name: "v", arg: 2, scope: !4906, file: !4907, line: 163, type: !4910)
!4922 = !DILocation(line: 163, column: 68, scope: !4906, inlinedAt: !4912)
!4923 = !DILocalVariable(name: "__ret", scope: !4924, file: !4907, line: 165, type: !209)
!4924 = distinct !DILexicalBlock(scope: !4906, file: !4907, line: 165, column: 13)
!4925 = !DILocation(line: 165, column: 13, scope: !4924, inlinedAt: !4912)
!4926 = !DILocalVariable(name: "v", arg: 1, scope: !4913, file: !4914, line: 284, type: !4910)
!4927 = !DILocation(line: 284, column: 34, scope: !4913, inlinedAt: !4917)
!4928 = !DILocalVariable(name: "v", arg: 1, scope: !4929, file: !4930, line: 99, type: !4933)
!4929 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4930, file: !4930, line: 99, type: !4931, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!4930 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4931 = !DISubroutineType(types: !4932)
!4932 = !{null, !4933, !349}
!4933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4934, size: 64)
!4934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4935)
!4935 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4936 = !DILocation(line: 99, column: 79, scope: !4929, inlinedAt: !4937)
!4937 = distinct !DILocation(line: 250, column: 2, scope: !4918, inlinedAt: !4920)
!4938 = !DILocalVariable(name: "size", arg: 2, scope: !4929, file: !4930, line: 99, type: !349)
!4939 = !DILocation(line: 99, column: 89, scope: !4929, inlinedAt: !4937)
!4940 = !DILocalVariable(name: "v", arg: 1, scope: !4918, file: !4919, line: 248, type: !4910)
!4941 = !DILocation(line: 248, column: 29, scope: !4918, inlinedAt: !4920)
!4942 = !DILocalVariable(name: "s", arg: 1, scope: !4943, file: !186, line: 445, type: !958)
!4943 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !186, file: !186, line: 445, type: !4944, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{!204, !958, !201, !349}
!4946 = !DILocation(line: 445, column: 72, scope: !4943, inlinedAt: !4947)
!4947 = distinct !DILocation(line: 552, column: 10, scope: !4948, inlinedAt: !4953)
!4948 = distinct !DILexicalBlock(scope: !4949, file: !186, line: 540, column: 34)
!4949 = distinct !DILexicalBlock(scope: !4950, file: !186, line: 540, column: 6)
!4950 = distinct !DISubprogram(name: "kmalloc", scope: !186, file: !186, line: 538, type: !4951, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{!204, !349, !201}
!4953 = distinct !DILocation(line: 235, column: 19, scope: !4886)
!4954 = !DILocalVariable(name: "flags", arg: 2, scope: !4943, file: !186, line: 446, type: !201)
!4955 = !DILocation(line: 446, column: 9, scope: !4943, inlinedAt: !4947)
!4956 = !DILocalVariable(name: "size", arg: 3, scope: !4943, file: !186, line: 446, type: !349)
!4957 = !DILocation(line: 446, column: 23, scope: !4943, inlinedAt: !4947)
!4958 = !DILocalVariable(name: "ret", scope: !4943, file: !186, line: 448, type: !204)
!4959 = !DILocation(line: 448, column: 8, scope: !4943, inlinedAt: !4947)
!4960 = !DILocalVariable(name: "flags", arg: 1, scope: !4961, file: !186, line: 318, type: !201)
!4961 = distinct !DISubprogram(name: "kmalloc_type", scope: !186, file: !186, line: 318, type: !4962, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!185, !201}
!4964 = !DILocation(line: 318, column: 67, scope: !4961, inlinedAt: !4965)
!4965 = distinct !DILocation(line: 553, column: 20, scope: !4948, inlinedAt: !4953)
!4966 = !DILocalVariable(name: "size", arg: 1, scope: !4967, file: !186, line: 346, type: !349)
!4967 = distinct !DISubprogram(name: "kmalloc_index", scope: !186, file: !186, line: 346, type: !4968, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!4968 = !DISubroutineType(types: !4969)
!4969 = !{!7, !349}
!4970 = !DILocation(line: 346, column: 58, scope: !4967, inlinedAt: !4971)
!4971 = distinct !DILocation(line: 547, column: 11, scope: !4948, inlinedAt: !4953)
!4972 = !DILocalVariable(name: "size", arg: 1, scope: !4973, file: !186, line: 472, type: !349)
!4973 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !186, file: !186, line: 472, type: !4974, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!204, !349, !201, !7}
!4976 = !DILocation(line: 472, column: 28, scope: !4973, inlinedAt: !4977)
!4977 = distinct !DILocation(line: 481, column: 9, scope: !4978, inlinedAt: !4979)
!4978 = distinct !DISubprogram(name: "kmalloc_large", scope: !186, file: !186, line: 478, type: !4951, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!4979 = distinct !DILocation(line: 545, column: 11, scope: !4980, inlinedAt: !4953)
!4980 = distinct !DILexicalBlock(scope: !4948, file: !186, line: 544, column: 7)
!4981 = !DILocalVariable(name: "flags", arg: 2, scope: !4973, file: !186, line: 472, type: !201)
!4982 = !DILocation(line: 472, column: 40, scope: !4973, inlinedAt: !4977)
!4983 = !DILocalVariable(name: "order", arg: 3, scope: !4973, file: !186, line: 472, type: !7)
!4984 = !DILocation(line: 472, column: 60, scope: !4973, inlinedAt: !4977)
!4985 = !DILocalVariable(name: "size", arg: 1, scope: !4978, file: !186, line: 478, type: !349)
!4986 = !DILocation(line: 478, column: 51, scope: !4978, inlinedAt: !4979)
!4987 = !DILocalVariable(name: "flags", arg: 2, scope: !4978, file: !186, line: 478, type: !201)
!4988 = !DILocation(line: 478, column: 63, scope: !4978, inlinedAt: !4979)
!4989 = !DILocalVariable(name: "order", scope: !4978, file: !186, line: 480, type: !7)
!4990 = !DILocation(line: 480, column: 15, scope: !4978, inlinedAt: !4979)
!4991 = !DILocalVariable(name: "size", arg: 1, scope: !4950, file: !186, line: 538, type: !349)
!4992 = !DILocation(line: 538, column: 45, scope: !4950, inlinedAt: !4953)
!4993 = !DILocalVariable(name: "flags", arg: 2, scope: !4950, file: !186, line: 538, type: !201)
!4994 = !DILocation(line: 538, column: 57, scope: !4950, inlinedAt: !4953)
!4995 = !DILocalVariable(name: "index", scope: !4948, file: !186, line: 542, type: !7)
!4996 = !DILocation(line: 542, column: 16, scope: !4948, inlinedAt: !4953)
!4997 = !DILocalVariable(name: "iface", arg: 1, scope: !4886, file: !3, line: 201, type: !4158)
!4998 = !DILocation(line: 201, column: 53, scope: !4886)
!4999 = !DILocalVariable(name: "id", arg: 2, scope: !4886, file: !3, line: 202, type: !4832)
!5000 = !DILocation(line: 202, column: 30, scope: !4886)
!5001 = !DILocalVariable(name: "props", scope: !4886, file: !3, line: 204, type: !4332)
!5002 = !DILocation(line: 204, column: 30, scope: !4886)
!5003 = !DILocalVariable(name: "pdata", scope: !4886, file: !3, line: 205, type: !4268)
!5004 = !DILocation(line: 205, column: 23, scope: !4886)
!5005 = !DILocalVariable(name: "udev", scope: !4886, file: !3, line: 206, type: !205)
!5006 = !DILocation(line: 206, column: 21, scope: !4886)
!5007 = !DILocation(line: 206, column: 48, scope: !4886)
!5008 = !DILocation(line: 206, column: 28, scope: !4886)
!5009 = !DILocalVariable(name: "endpoint", scope: !4886, file: !3, line: 207, type: !5010)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!5011 = !DILocation(line: 207, column: 34, scope: !4886)
!5012 = !DILocalVariable(name: "int_in_endpointAddr", scope: !4886, file: !3, line: 208, type: !209)
!5013 = !DILocation(line: 208, column: 6, scope: !4886)
!5014 = !DILocalVariable(name: "retval", scope: !4886, file: !3, line: 209, type: !209)
!5015 = !DILocation(line: 209, column: 6, scope: !4886)
!5016 = !DILocalVariable(name: "brightness", scope: !4886, file: !3, line: 209, type: !209)
!5017 = !DILocation(line: 209, column: 14, scope: !4886)
!5018 = !DILocalVariable(name: "bl_name", scope: !4886, file: !3, line: 210, type: !5019)
!5019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 160, elements: !2277)
!5020 = !DILocation(line: 210, column: 7, scope: !4886)
!5021 = !DILocation(line: 214, column: 36, scope: !4886)
!5022 = !DILocation(line: 214, column: 43, scope: !4886)
!5023 = !DILocation(line: 214, column: 11, scope: !4886)
!5024 = !DILocation(line: 214, column: 9, scope: !4886)
!5025 = !DILocation(line: 215, column: 6, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 215, column: 6)
!5027 = !DILocation(line: 215, column: 6, scope: !4886)
!5028 = !DILocation(line: 216, column: 3, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 215, column: 14)
!5030 = !DILocation(line: 217, column: 10, scope: !5029)
!5031 = !DILocation(line: 217, column: 3, scope: !5029)
!5032 = !DILocation(line: 220, column: 24, scope: !4886)
!5033 = !DILocation(line: 220, column: 34, scope: !4886)
!5034 = !DILocation(line: 220, column: 22, scope: !4886)
!5035 = !DILocation(line: 223, column: 10, scope: !4886)
!5036 = !DILocation(line: 223, column: 8, scope: !4886)
!5037 = !DILocation(line: 224, column: 7, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 224, column: 6)
!5039 = !DILocation(line: 224, column: 6, scope: !4886)
!5040 = !DILocation(line: 225, column: 10, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 224, column: 14)
!5042 = !DILocation(line: 226, column: 3, scope: !5041)
!5043 = !DILocation(line: 229, column: 16, scope: !4886)
!5044 = !DILocation(line: 229, column: 2, scope: !4886)
!5045 = !DILocation(line: 229, column: 9, scope: !4886)
!5046 = !DILocation(line: 229, column: 14, scope: !4886)
!5047 = !DILocation(line: 231, column: 2, scope: !4886)
!5048 = !DILocation(line: 231, column: 2, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 231, column: 2)
!5050 = !DILocation(line: 231, column: 2, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 231, column: 2)
!5052 = !DILocation(line: 232, column: 2, scope: !4886)
!5053 = !DILocation(line: 232, column: 2, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 232, column: 2)
!5055 = !DILocation(line: 540, column: 27, scope: !4949, inlinedAt: !4953)
!5056 = !DILocation(line: 540, column: 6, scope: !4949, inlinedAt: !4953)
!5057 = !DILocation(line: 540, column: 6, scope: !4950, inlinedAt: !4953)
!5058 = !DILocation(line: 544, column: 7, scope: !4980, inlinedAt: !4953)
!5059 = !DILocation(line: 544, column: 12, scope: !4980, inlinedAt: !4953)
!5060 = !DILocation(line: 544, column: 7, scope: !4948, inlinedAt: !4953)
!5061 = !DILocation(line: 545, column: 25, scope: !4980, inlinedAt: !4953)
!5062 = !DILocation(line: 545, column: 31, scope: !4980, inlinedAt: !4953)
!5063 = !DILocation(line: 480, column: 33, scope: !4978, inlinedAt: !4979)
!5064 = !DILocation(line: 480, column: 23, scope: !4978, inlinedAt: !4979)
!5065 = !DILocation(line: 481, column: 29, scope: !4978, inlinedAt: !4979)
!5066 = !DILocation(line: 481, column: 35, scope: !4978, inlinedAt: !4979)
!5067 = !DILocation(line: 481, column: 42, scope: !4978, inlinedAt: !4979)
!5068 = !DILocation(line: 474, column: 23, scope: !4973, inlinedAt: !4977)
!5069 = !DILocation(line: 474, column: 29, scope: !4973, inlinedAt: !4977)
!5070 = !DILocation(line: 474, column: 36, scope: !4973, inlinedAt: !4977)
!5071 = !DILocation(line: 474, column: 9, scope: !4973, inlinedAt: !4977)
!5072 = !DILocation(line: 545, column: 4, scope: !4980, inlinedAt: !4953)
!5073 = !DILocation(line: 547, column: 25, scope: !4948, inlinedAt: !4953)
!5074 = !DILocation(line: 348, column: 7, scope: !5075, inlinedAt: !4971)
!5075 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 348, column: 6)
!5076 = !DILocation(line: 348, column: 6, scope: !4967, inlinedAt: !4971)
!5077 = !DILocation(line: 349, column: 3, scope: !5075, inlinedAt: !4971)
!5078 = !DILocation(line: 351, column: 6, scope: !5079, inlinedAt: !4971)
!5079 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 351, column: 6)
!5080 = !DILocation(line: 351, column: 11, scope: !5079, inlinedAt: !4971)
!5081 = !DILocation(line: 351, column: 6, scope: !4967, inlinedAt: !4971)
!5082 = !DILocation(line: 352, column: 3, scope: !5079, inlinedAt: !4971)
!5083 = !DILocation(line: 354, column: 32, scope: !5084, inlinedAt: !4971)
!5084 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 354, column: 6)
!5085 = !DILocation(line: 354, column: 37, scope: !5084, inlinedAt: !4971)
!5086 = !DILocation(line: 354, column: 42, scope: !5084, inlinedAt: !4971)
!5087 = !DILocation(line: 354, column: 45, scope: !5084, inlinedAt: !4971)
!5088 = !DILocation(line: 354, column: 50, scope: !5084, inlinedAt: !4971)
!5089 = !DILocation(line: 354, column: 6, scope: !4967, inlinedAt: !4971)
!5090 = !DILocation(line: 355, column: 3, scope: !5084, inlinedAt: !4971)
!5091 = !DILocation(line: 356, column: 32, scope: !5092, inlinedAt: !4971)
!5092 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 356, column: 6)
!5093 = !DILocation(line: 356, column: 37, scope: !5092, inlinedAt: !4971)
!5094 = !DILocation(line: 356, column: 43, scope: !5092, inlinedAt: !4971)
!5095 = !DILocation(line: 356, column: 46, scope: !5092, inlinedAt: !4971)
!5096 = !DILocation(line: 356, column: 51, scope: !5092, inlinedAt: !4971)
!5097 = !DILocation(line: 356, column: 6, scope: !4967, inlinedAt: !4971)
!5098 = !DILocation(line: 357, column: 3, scope: !5092, inlinedAt: !4971)
!5099 = !DILocation(line: 358, column: 6, scope: !5100, inlinedAt: !4971)
!5100 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 358, column: 6)
!5101 = !DILocation(line: 358, column: 11, scope: !5100, inlinedAt: !4971)
!5102 = !DILocation(line: 358, column: 6, scope: !4967, inlinedAt: !4971)
!5103 = !DILocation(line: 358, column: 26, scope: !5100, inlinedAt: !4971)
!5104 = !DILocation(line: 359, column: 6, scope: !5105, inlinedAt: !4971)
!5105 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 359, column: 6)
!5106 = !DILocation(line: 359, column: 11, scope: !5105, inlinedAt: !4971)
!5107 = !DILocation(line: 359, column: 6, scope: !4967, inlinedAt: !4971)
!5108 = !DILocation(line: 359, column: 26, scope: !5105, inlinedAt: !4971)
!5109 = !DILocation(line: 360, column: 6, scope: !5110, inlinedAt: !4971)
!5110 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 360, column: 6)
!5111 = !DILocation(line: 360, column: 11, scope: !5110, inlinedAt: !4971)
!5112 = !DILocation(line: 360, column: 6, scope: !4967, inlinedAt: !4971)
!5113 = !DILocation(line: 360, column: 26, scope: !5110, inlinedAt: !4971)
!5114 = !DILocation(line: 361, column: 6, scope: !5115, inlinedAt: !4971)
!5115 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 361, column: 6)
!5116 = !DILocation(line: 361, column: 11, scope: !5115, inlinedAt: !4971)
!5117 = !DILocation(line: 361, column: 6, scope: !4967, inlinedAt: !4971)
!5118 = !DILocation(line: 361, column: 26, scope: !5115, inlinedAt: !4971)
!5119 = !DILocation(line: 362, column: 6, scope: !5120, inlinedAt: !4971)
!5120 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 362, column: 6)
!5121 = !DILocation(line: 362, column: 11, scope: !5120, inlinedAt: !4971)
!5122 = !DILocation(line: 362, column: 6, scope: !4967, inlinedAt: !4971)
!5123 = !DILocation(line: 362, column: 26, scope: !5120, inlinedAt: !4971)
!5124 = !DILocation(line: 363, column: 6, scope: !5125, inlinedAt: !4971)
!5125 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 363, column: 6)
!5126 = !DILocation(line: 363, column: 11, scope: !5125, inlinedAt: !4971)
!5127 = !DILocation(line: 363, column: 6, scope: !4967, inlinedAt: !4971)
!5128 = !DILocation(line: 363, column: 26, scope: !5125, inlinedAt: !4971)
!5129 = !DILocation(line: 364, column: 6, scope: !5130, inlinedAt: !4971)
!5130 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 364, column: 6)
!5131 = !DILocation(line: 364, column: 11, scope: !5130, inlinedAt: !4971)
!5132 = !DILocation(line: 364, column: 6, scope: !4967, inlinedAt: !4971)
!5133 = !DILocation(line: 364, column: 26, scope: !5130, inlinedAt: !4971)
!5134 = !DILocation(line: 365, column: 6, scope: !5135, inlinedAt: !4971)
!5135 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 365, column: 6)
!5136 = !DILocation(line: 365, column: 11, scope: !5135, inlinedAt: !4971)
!5137 = !DILocation(line: 365, column: 6, scope: !4967, inlinedAt: !4971)
!5138 = !DILocation(line: 365, column: 26, scope: !5135, inlinedAt: !4971)
!5139 = !DILocation(line: 366, column: 6, scope: !5140, inlinedAt: !4971)
!5140 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 366, column: 6)
!5141 = !DILocation(line: 366, column: 11, scope: !5140, inlinedAt: !4971)
!5142 = !DILocation(line: 366, column: 6, scope: !4967, inlinedAt: !4971)
!5143 = !DILocation(line: 366, column: 26, scope: !5140, inlinedAt: !4971)
!5144 = !DILocation(line: 367, column: 6, scope: !5145, inlinedAt: !4971)
!5145 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 367, column: 6)
!5146 = !DILocation(line: 367, column: 11, scope: !5145, inlinedAt: !4971)
!5147 = !DILocation(line: 367, column: 6, scope: !4967, inlinedAt: !4971)
!5148 = !DILocation(line: 367, column: 26, scope: !5145, inlinedAt: !4971)
!5149 = !DILocation(line: 368, column: 6, scope: !5150, inlinedAt: !4971)
!5150 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 368, column: 6)
!5151 = !DILocation(line: 368, column: 11, scope: !5150, inlinedAt: !4971)
!5152 = !DILocation(line: 368, column: 6, scope: !4967, inlinedAt: !4971)
!5153 = !DILocation(line: 368, column: 26, scope: !5150, inlinedAt: !4971)
!5154 = !DILocation(line: 369, column: 6, scope: !5155, inlinedAt: !4971)
!5155 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 369, column: 6)
!5156 = !DILocation(line: 369, column: 11, scope: !5155, inlinedAt: !4971)
!5157 = !DILocation(line: 369, column: 6, scope: !4967, inlinedAt: !4971)
!5158 = !DILocation(line: 369, column: 26, scope: !5155, inlinedAt: !4971)
!5159 = !DILocation(line: 370, column: 6, scope: !5160, inlinedAt: !4971)
!5160 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 370, column: 6)
!5161 = !DILocation(line: 370, column: 11, scope: !5160, inlinedAt: !4971)
!5162 = !DILocation(line: 370, column: 6, scope: !4967, inlinedAt: !4971)
!5163 = !DILocation(line: 370, column: 26, scope: !5160, inlinedAt: !4971)
!5164 = !DILocation(line: 371, column: 6, scope: !5165, inlinedAt: !4971)
!5165 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 371, column: 6)
!5166 = !DILocation(line: 371, column: 11, scope: !5165, inlinedAt: !4971)
!5167 = !DILocation(line: 371, column: 6, scope: !4967, inlinedAt: !4971)
!5168 = !DILocation(line: 371, column: 26, scope: !5165, inlinedAt: !4971)
!5169 = !DILocation(line: 372, column: 6, scope: !5170, inlinedAt: !4971)
!5170 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 372, column: 6)
!5171 = !DILocation(line: 372, column: 11, scope: !5170, inlinedAt: !4971)
!5172 = !DILocation(line: 372, column: 6, scope: !4967, inlinedAt: !4971)
!5173 = !DILocation(line: 372, column: 26, scope: !5170, inlinedAt: !4971)
!5174 = !DILocation(line: 373, column: 6, scope: !5175, inlinedAt: !4971)
!5175 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 373, column: 6)
!5176 = !DILocation(line: 373, column: 11, scope: !5175, inlinedAt: !4971)
!5177 = !DILocation(line: 373, column: 6, scope: !4967, inlinedAt: !4971)
!5178 = !DILocation(line: 373, column: 26, scope: !5175, inlinedAt: !4971)
!5179 = !DILocation(line: 374, column: 6, scope: !5180, inlinedAt: !4971)
!5180 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 374, column: 6)
!5181 = !DILocation(line: 374, column: 11, scope: !5180, inlinedAt: !4971)
!5182 = !DILocation(line: 374, column: 6, scope: !4967, inlinedAt: !4971)
!5183 = !DILocation(line: 374, column: 26, scope: !5180, inlinedAt: !4971)
!5184 = !DILocation(line: 375, column: 6, scope: !5185, inlinedAt: !4971)
!5185 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 375, column: 6)
!5186 = !DILocation(line: 375, column: 11, scope: !5185, inlinedAt: !4971)
!5187 = !DILocation(line: 375, column: 6, scope: !4967, inlinedAt: !4971)
!5188 = !DILocation(line: 375, column: 27, scope: !5185, inlinedAt: !4971)
!5189 = !DILocation(line: 376, column: 6, scope: !5190, inlinedAt: !4971)
!5190 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 376, column: 6)
!5191 = !DILocation(line: 376, column: 11, scope: !5190, inlinedAt: !4971)
!5192 = !DILocation(line: 376, column: 6, scope: !4967, inlinedAt: !4971)
!5193 = !DILocation(line: 376, column: 32, scope: !5190, inlinedAt: !4971)
!5194 = !DILocation(line: 377, column: 6, scope: !5195, inlinedAt: !4971)
!5195 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 377, column: 6)
!5196 = !DILocation(line: 377, column: 11, scope: !5195, inlinedAt: !4971)
!5197 = !DILocation(line: 377, column: 6, scope: !4967, inlinedAt: !4971)
!5198 = !DILocation(line: 377, column: 32, scope: !5195, inlinedAt: !4971)
!5199 = !DILocation(line: 378, column: 6, scope: !5200, inlinedAt: !4971)
!5200 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 378, column: 6)
!5201 = !DILocation(line: 378, column: 11, scope: !5200, inlinedAt: !4971)
!5202 = !DILocation(line: 378, column: 6, scope: !4967, inlinedAt: !4971)
!5203 = !DILocation(line: 378, column: 32, scope: !5200, inlinedAt: !4971)
!5204 = !DILocation(line: 379, column: 6, scope: !5205, inlinedAt: !4971)
!5205 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 379, column: 6)
!5206 = !DILocation(line: 379, column: 11, scope: !5205, inlinedAt: !4971)
!5207 = !DILocation(line: 379, column: 6, scope: !4967, inlinedAt: !4971)
!5208 = !DILocation(line: 379, column: 33, scope: !5205, inlinedAt: !4971)
!5209 = !DILocation(line: 380, column: 6, scope: !5210, inlinedAt: !4971)
!5210 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 380, column: 6)
!5211 = !DILocation(line: 380, column: 11, scope: !5210, inlinedAt: !4971)
!5212 = !DILocation(line: 380, column: 6, scope: !4967, inlinedAt: !4971)
!5213 = !DILocation(line: 380, column: 33, scope: !5210, inlinedAt: !4971)
!5214 = !DILocation(line: 381, column: 6, scope: !5215, inlinedAt: !4971)
!5215 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 381, column: 6)
!5216 = !DILocation(line: 381, column: 11, scope: !5215, inlinedAt: !4971)
!5217 = !DILocation(line: 381, column: 6, scope: !4967, inlinedAt: !4971)
!5218 = !DILocation(line: 381, column: 33, scope: !5215, inlinedAt: !4971)
!5219 = !DILocation(line: 382, column: 2, scope: !5220, inlinedAt: !4971)
!5220 = distinct !DILexicalBlock(scope: !5221, file: !186, line: 382, column: 2)
!5221 = distinct !DILexicalBlock(scope: !4967, file: !186, line: 382, column: 2)
!5222 = !{i32 -2144238851, i32 -2144238822, i32 -2144238776, i32 -2144238718, i32 -2144238664, i32 -2144238610, i32 -2144238555, i32 -2144238524}
!5223 = !DILocation(line: 382, column: 2, scope: !5224, inlinedAt: !4971)
!5224 = distinct !DILexicalBlock(scope: !5225, file: !186, line: 382, column: 2)
!5225 = distinct !DILexicalBlock(scope: !5221, file: !186, line: 382, column: 2)
!5226 = !{i32 -2144238081, i32 -2144238074, i32 -2144238020, i32 -2144237989, i32 -2144237959}
!5227 = !DILocation(line: 382, column: 2, scope: !5225, inlinedAt: !4971)
!5228 = !DILocation(line: 386, column: 1, scope: !4967, inlinedAt: !4971)
!5229 = !DILocation(line: 547, column: 9, scope: !4948, inlinedAt: !4953)
!5230 = !DILocation(line: 549, column: 8, scope: !5231, inlinedAt: !4953)
!5231 = distinct !DILexicalBlock(scope: !4948, file: !186, line: 549, column: 7)
!5232 = !DILocation(line: 549, column: 7, scope: !4948, inlinedAt: !4953)
!5233 = !DILocation(line: 550, column: 4, scope: !5231, inlinedAt: !4953)
!5234 = !DILocation(line: 553, column: 33, scope: !4948, inlinedAt: !4953)
!5235 = !DILocation(line: 325, column: 6, scope: !5236, inlinedAt: !4965)
!5236 = distinct !DILexicalBlock(scope: !4961, file: !186, line: 325, column: 6)
!5237 = !DILocation(line: 325, column: 6, scope: !4961, inlinedAt: !4965)
!5238 = !DILocation(line: 326, column: 3, scope: !5236, inlinedAt: !4965)
!5239 = !DILocation(line: 332, column: 9, scope: !4961, inlinedAt: !4965)
!5240 = !DILocation(line: 332, column: 15, scope: !4961, inlinedAt: !4965)
!5241 = !DILocation(line: 332, column: 2, scope: !4961, inlinedAt: !4965)
!5242 = !DILocation(line: 336, column: 1, scope: !4961, inlinedAt: !4965)
!5243 = !DILocation(line: 553, column: 5, scope: !4948, inlinedAt: !4953)
!5244 = !DILocation(line: 553, column: 41, scope: !4948, inlinedAt: !4953)
!5245 = !DILocation(line: 554, column: 5, scope: !4948, inlinedAt: !4953)
!5246 = !DILocation(line: 554, column: 12, scope: !4948, inlinedAt: !4953)
!5247 = !DILocation(line: 448, column: 31, scope: !4943, inlinedAt: !4947)
!5248 = !DILocation(line: 448, column: 34, scope: !4943, inlinedAt: !4947)
!5249 = !DILocation(line: 448, column: 14, scope: !4943, inlinedAt: !4947)
!5250 = !DILocation(line: 450, column: 22, scope: !4943, inlinedAt: !4947)
!5251 = !DILocation(line: 450, column: 25, scope: !4943, inlinedAt: !4947)
!5252 = !DILocation(line: 450, column: 30, scope: !4943, inlinedAt: !4947)
!5253 = !DILocation(line: 450, column: 36, scope: !4943, inlinedAt: !4947)
!5254 = !DILocation(line: 450, column: 8, scope: !4943, inlinedAt: !4947)
!5255 = !DILocation(line: 450, column: 6, scope: !4943, inlinedAt: !4947)
!5256 = !DILocation(line: 451, column: 9, scope: !4943, inlinedAt: !4947)
!5257 = !DILocation(line: 552, column: 3, scope: !4948, inlinedAt: !4953)
!5258 = !DILocation(line: 557, column: 19, scope: !4950, inlinedAt: !4953)
!5259 = !DILocation(line: 557, column: 25, scope: !4950, inlinedAt: !4953)
!5260 = !DILocation(line: 557, column: 9, scope: !4950, inlinedAt: !4953)
!5261 = !DILocation(line: 557, column: 2, scope: !4950, inlinedAt: !4953)
!5262 = !DILocation(line: 558, column: 1, scope: !4950, inlinedAt: !4953)
!5263 = !DILocation(line: 235, column: 2, scope: !4886)
!5264 = !DILocation(line: 235, column: 9, scope: !4886)
!5265 = !DILocation(line: 235, column: 17, scope: !4886)
!5266 = !DILocation(line: 236, column: 7, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 236, column: 6)
!5268 = !DILocation(line: 236, column: 14, scope: !5267)
!5269 = !DILocation(line: 236, column: 6, scope: !4886)
!5270 = !DILocation(line: 237, column: 10, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5267, file: !3, line: 236, column: 23)
!5272 = !DILocation(line: 238, column: 3, scope: !5271)
!5273 = !DILocation(line: 242, column: 15, scope: !4886)
!5274 = !DILocation(line: 242, column: 2, scope: !4886)
!5275 = !DILocation(line: 242, column: 9, scope: !4886)
!5276 = !DILocation(line: 242, column: 13, scope: !4886)
!5277 = !DILocation(line: 243, column: 7, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 243, column: 6)
!5279 = !DILocation(line: 243, column: 14, scope: !5278)
!5280 = !DILocation(line: 243, column: 6, scope: !4886)
!5281 = !DILocation(line: 244, column: 10, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 243, column: 19)
!5283 = !DILocation(line: 245, column: 3, scope: !5282)
!5284 = !DILocation(line: 249, column: 38, scope: !4886)
!5285 = !DILocation(line: 249, column: 45, scope: !4886)
!5286 = !DILocation(line: 250, column: 16, scope: !4886)
!5287 = !DILocation(line: 250, column: 23, scope: !4886)
!5288 = !DILocation(line: 250, column: 28, scope: !4886)
!5289 = !DILocation(line: 249, column: 19, scope: !4886)
!5290 = !DILocation(line: 249, column: 2, scope: !4886)
!5291 = !DILocation(line: 249, column: 9, scope: !4886)
!5292 = !DILocation(line: 249, column: 17, scope: !4886)
!5293 = !DILocation(line: 251, column: 7, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 251, column: 6)
!5295 = !DILocation(line: 251, column: 14, scope: !5294)
!5296 = !DILocation(line: 251, column: 6, scope: !4886)
!5297 = !DILocation(line: 252, column: 10, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 251, column: 23)
!5299 = !DILocation(line: 253, column: 3, scope: !5298)
!5300 = !DILocation(line: 254, column: 3, scope: !5298)
!5301 = !DILocation(line: 258, column: 19, scope: !4886)
!5302 = !DILocation(line: 258, column: 26, scope: !4886)
!5303 = !DILocation(line: 258, column: 31, scope: !4886)
!5304 = !DILocation(line: 259, column: 3, scope: !4886)
!5305 = !DILocation(line: 260, column: 3, scope: !4886)
!5306 = !DILocation(line: 260, column: 10, scope: !4886)
!5307 = !DILocation(line: 261, column: 3, scope: !4886)
!5308 = !DILocation(line: 258, column: 2, scope: !4886)
!5309 = !DILocation(line: 262, column: 2, scope: !4886)
!5310 = !DILocation(line: 262, column: 9, scope: !4886)
!5311 = !DILocation(line: 262, column: 14, scope: !4886)
!5312 = !DILocation(line: 262, column: 29, scope: !4886)
!5313 = !DILocation(line: 263, column: 21, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 263, column: 6)
!5315 = !DILocation(line: 263, column: 28, scope: !5314)
!5316 = !DILocation(line: 263, column: 6, scope: !5314)
!5317 = !DILocation(line: 263, column: 6, scope: !4886)
!5318 = !DILocation(line: 264, column: 10, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 263, column: 46)
!5320 = !DILocation(line: 265, column: 3, scope: !5319)
!5321 = !DILocation(line: 266, column: 3, scope: !5319)
!5322 = !DILocation(line: 270, column: 11, scope: !4886)
!5323 = !DILocation(line: 250, column: 31, scope: !4918, inlinedAt: !4920)
!5324 = !DILocation(line: 101, column: 20, scope: !4929, inlinedAt: !4937)
!5325 = !DILocation(line: 101, column: 23, scope: !4929, inlinedAt: !4937)
!5326 = !DILocation(line: 101, column: 2, scope: !4929, inlinedAt: !4937)
!5327 = !DILocation(line: 102, column: 2, scope: !4929, inlinedAt: !4937)
!5328 = !DILocation(line: 251, column: 32, scope: !4918, inlinedAt: !4920)
!5329 = !DILocation(line: 286, column: 35, scope: !4913, inlinedAt: !4917)
!5330 = !DILocation(line: 165, column: 9, scope: !4906, inlinedAt: !4912)
!5331 = !{i32 -2146609527}
!5332 = !DILocation(line: 165, column: 11, scope: !4906, inlinedAt: !4912)
!5333 = !DILocation(line: 271, column: 38, scope: !4886)
!5334 = !DILocation(line: 270, column: 2, scope: !4886)
!5335 = !DILocation(line: 272, column: 2, scope: !4886)
!5336 = !DILocation(line: 273, column: 8, scope: !4886)
!5337 = !DILocation(line: 273, column: 13, scope: !4886)
!5338 = !DILocation(line: 274, column: 8, scope: !4886)
!5339 = !DILocation(line: 274, column: 23, scope: !4886)
!5340 = !DILocation(line: 275, column: 40, scope: !4886)
!5341 = !DILocation(line: 275, column: 55, scope: !4886)
!5342 = !DILocation(line: 275, column: 14, scope: !4886)
!5343 = !DILocation(line: 275, column: 2, scope: !4886)
!5344 = !DILocation(line: 275, column: 9, scope: !4886)
!5345 = !DILocation(line: 275, column: 12, scope: !4886)
!5346 = !DILocation(line: 277, column: 13, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 277, column: 6)
!5348 = !DILocation(line: 277, column: 20, scope: !5347)
!5349 = !DILocation(line: 277, column: 6, scope: !5347)
!5350 = !DILocation(line: 277, column: 6, scope: !4886)
!5351 = !DILocation(line: 278, column: 3, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 277, column: 25)
!5353 = !DILocation(line: 279, column: 20, scope: !5352)
!5354 = !DILocation(line: 279, column: 27, scope: !5352)
!5355 = !DILocation(line: 279, column: 12, scope: !5352)
!5356 = !DILocation(line: 279, column: 10, scope: !5352)
!5357 = !DILocation(line: 280, column: 3, scope: !5352)
!5358 = !DILocation(line: 284, column: 46, scope: !4886)
!5359 = !DILocation(line: 284, column: 53, scope: !4886)
!5360 = !DILocation(line: 284, column: 15, scope: !4886)
!5361 = !DILocation(line: 284, column: 13, scope: !4886)
!5362 = !DILocation(line: 286, column: 6, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 286, column: 6)
!5364 = !DILocation(line: 286, column: 17, scope: !5363)
!5365 = !DILocation(line: 286, column: 6, scope: !4886)
!5366 = !DILocation(line: 287, column: 12, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5363, file: !3, line: 286, column: 22)
!5368 = !DILocation(line: 287, column: 10, scope: !5367)
!5369 = !DILocation(line: 288, column: 3, scope: !5367)
!5370 = !DILocation(line: 290, column: 3, scope: !5367)
!5371 = !DILocation(line: 294, column: 32, scope: !4886)
!5372 = !DILocation(line: 294, column: 2, scope: !4886)
!5373 = !DILocation(line: 294, column: 9, scope: !4886)
!5374 = !DILocation(line: 294, column: 13, scope: !4886)
!5375 = !DILocation(line: 294, column: 19, scope: !4886)
!5376 = !DILocation(line: 294, column: 30, scope: !4886)
!5377 = !DILocation(line: 297, column: 19, scope: !4886)
!5378 = !DILocation(line: 297, column: 26, scope: !4886)
!5379 = !DILocation(line: 297, column: 2, scope: !4886)
!5380 = !DILocation(line: 299, column: 2, scope: !4886)
!5381 = !DILocation(line: 301, column: 2, scope: !4886)
!5382 = !DILabel(scope: !4886, name: "error", file: !3, line: 303)
!5383 = !DILocation(line: 303, column: 1, scope: !4886)
!5384 = !DILocation(line: 304, column: 6, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 304, column: 6)
!5386 = !DILocation(line: 304, column: 6, scope: !4886)
!5387 = !DILocation(line: 305, column: 7, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 305, column: 7)
!5389 = distinct !DILexicalBlock(scope: !5385, file: !3, line: 304, column: 13)
!5390 = !DILocation(line: 305, column: 14, scope: !5388)
!5391 = !DILocation(line: 305, column: 7, scope: !5389)
!5392 = !DILocation(line: 306, column: 17, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 305, column: 19)
!5394 = !DILocation(line: 306, column: 24, scope: !5393)
!5395 = !DILocation(line: 306, column: 4, scope: !5393)
!5396 = !DILocation(line: 307, column: 30, scope: !5393)
!5397 = !DILocation(line: 307, column: 37, scope: !5393)
!5398 = !DILocation(line: 307, column: 4, scope: !5393)
!5399 = !DILocation(line: 308, column: 22, scope: !5393)
!5400 = !DILocation(line: 308, column: 29, scope: !5393)
!5401 = !DILocation(line: 309, column: 6, scope: !5393)
!5402 = !DILocation(line: 309, column: 13, scope: !5393)
!5403 = !DILocation(line: 309, column: 22, scope: !5393)
!5404 = !DILocation(line: 309, column: 29, scope: !5393)
!5405 = !DILocation(line: 309, column: 34, scope: !5393)
!5406 = !DILocation(line: 308, column: 4, scope: !5393)
!5407 = !DILocation(line: 310, column: 17, scope: !5393)
!5408 = !DILocation(line: 310, column: 24, scope: !5393)
!5409 = !DILocation(line: 310, column: 4, scope: !5393)
!5410 = !DILocation(line: 311, column: 3, scope: !5393)
!5411 = !DILocation(line: 312, column: 15, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 312, column: 7)
!5413 = !DILocation(line: 312, column: 22, scope: !5412)
!5414 = !DILocation(line: 312, column: 8, scope: !5412)
!5415 = !DILocation(line: 312, column: 7, scope: !5389)
!5416 = !DILocation(line: 313, column: 32, scope: !5412)
!5417 = !DILocation(line: 313, column: 39, scope: !5412)
!5418 = !DILocation(line: 313, column: 4, scope: !5412)
!5419 = !DILocation(line: 314, column: 9, scope: !5389)
!5420 = !DILocation(line: 314, column: 16, scope: !5389)
!5421 = !DILocation(line: 314, column: 3, scope: !5389)
!5422 = !DILocation(line: 315, column: 2, scope: !5389)
!5423 = !DILocation(line: 316, column: 19, scope: !4886)
!5424 = !DILocation(line: 316, column: 2, scope: !4886)
!5425 = !DILocation(line: 317, column: 8, scope: !4886)
!5426 = !DILocation(line: 317, column: 2, scope: !4886)
!5427 = !DILocation(line: 318, column: 9, scope: !4886)
!5428 = !DILocation(line: 318, column: 2, scope: !4886)
!5429 = !DILocation(line: 319, column: 1, scope: !4886)
!5430 = distinct !DISubprogram(name: "appledisplay_disconnect", scope: !3, file: !3, line: 321, type: !4851, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!5431 = !DILocalVariable(name: "iface", arg: 1, scope: !5430, file: !3, line: 321, type: !4158)
!5432 = !DILocation(line: 321, column: 59, scope: !5430)
!5433 = !DILocalVariable(name: "pdata", scope: !5430, file: !3, line: 323, type: !4268)
!5434 = !DILocation(line: 323, column: 23, scope: !5430)
!5435 = !DILocation(line: 323, column: 48, scope: !5430)
!5436 = !DILocation(line: 323, column: 31, scope: !5430)
!5437 = !DILocation(line: 325, column: 6, scope: !5438)
!5438 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 325, column: 6)
!5439 = !DILocation(line: 325, column: 6, scope: !5430)
!5440 = !DILocation(line: 326, column: 16, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5438, file: !3, line: 325, column: 13)
!5442 = !DILocation(line: 326, column: 23, scope: !5441)
!5443 = !DILocation(line: 326, column: 3, scope: !5441)
!5444 = !DILocation(line: 327, column: 29, scope: !5441)
!5445 = !DILocation(line: 327, column: 36, scope: !5441)
!5446 = !DILocation(line: 327, column: 3, scope: !5441)
!5447 = !DILocation(line: 328, column: 31, scope: !5441)
!5448 = !DILocation(line: 328, column: 38, scope: !5441)
!5449 = !DILocation(line: 328, column: 3, scope: !5441)
!5450 = !DILocation(line: 329, column: 21, scope: !5441)
!5451 = !DILocation(line: 329, column: 28, scope: !5441)
!5452 = !DILocation(line: 330, column: 4, scope: !5441)
!5453 = !DILocation(line: 330, column: 11, scope: !5441)
!5454 = !DILocation(line: 330, column: 20, scope: !5441)
!5455 = !DILocation(line: 330, column: 27, scope: !5441)
!5456 = !DILocation(line: 330, column: 32, scope: !5441)
!5457 = !DILocation(line: 329, column: 3, scope: !5441)
!5458 = !DILocation(line: 331, column: 16, scope: !5441)
!5459 = !DILocation(line: 331, column: 23, scope: !5441)
!5460 = !DILocation(line: 331, column: 3, scope: !5441)
!5461 = !DILocation(line: 332, column: 9, scope: !5441)
!5462 = !DILocation(line: 332, column: 16, scope: !5441)
!5463 = !DILocation(line: 332, column: 3, scope: !5441)
!5464 = !DILocation(line: 333, column: 9, scope: !5441)
!5465 = !DILocation(line: 333, column: 3, scope: !5441)
!5466 = !DILocation(line: 334, column: 2, scope: !5441)
!5467 = !DILocation(line: 336, column: 2, scope: !5430)
!5468 = !DILocation(line: 337, column: 1, scope: !5430)
!5469 = distinct !DISubprogram(name: "interface_to_usbdev", scope: !6, file: !6, line: 715, type: !5470, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!5470 = !DISubroutineType(types: !5471)
!5471 = !{!205, !4158}
!5472 = !DILocalVariable(name: "intf", arg: 1, scope: !5469, file: !6, line: 715, type: !4158)
!5473 = !DILocation(line: 715, column: 76, scope: !5469)
!5474 = !DILocalVariable(name: "__mptr", scope: !5475, file: !6, line: 717, type: !204)
!5475 = distinct !DILexicalBlock(scope: !5469, file: !6, line: 717, column: 9)
!5476 = !DILocation(line: 717, column: 9, scope: !5475)
!5477 = !DILocation(line: 717, column: 9, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5475, file: !6, line: 717, column: 9)
!5479 = !DILocation(line: 717, column: 2, scope: !5469)
!5480 = distinct !DISubprogram(name: "usb_find_int_in_endpoint", scope: !6, file: !6, line: 132, type: !5481, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!5481 = !DISubroutineType(types: !5482)
!5482 = !{!209, !4162, !5483}
!5483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5484 = !DILocalVariable(name: "alt", arg: 1, scope: !5480, file: !6, line: 132, type: !4162)
!5485 = !DILocation(line: 132, column: 53, scope: !5480)
!5486 = !DILocalVariable(name: "int_in", arg: 2, scope: !5480, file: !6, line: 133, type: !5483)
!5487 = !DILocation(line: 133, column: 36, scope: !5480)
!5488 = !DILocation(line: 135, column: 35, scope: !5480)
!5489 = !DILocation(line: 135, column: 52, scope: !5480)
!5490 = !DILocation(line: 135, column: 9, scope: !5480)
!5491 = !DILocation(line: 135, column: 2, scope: !5480)
!5492 = distinct !DISubprogram(name: "kzalloc", scope: !186, file: !186, line: 662, type: !4951, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!5493 = !DILocation(line: 445, column: 72, scope: !4943, inlinedAt: !5494)
!5494 = distinct !DILocation(line: 552, column: 10, scope: !4948, inlinedAt: !5495)
!5495 = distinct !DILocation(line: 664, column: 9, scope: !5492)
!5496 = !DILocation(line: 446, column: 9, scope: !4943, inlinedAt: !5494)
!5497 = !DILocation(line: 446, column: 23, scope: !4943, inlinedAt: !5494)
!5498 = !DILocation(line: 448, column: 8, scope: !4943, inlinedAt: !5494)
!5499 = !DILocation(line: 318, column: 67, scope: !4961, inlinedAt: !5500)
!5500 = distinct !DILocation(line: 553, column: 20, scope: !4948, inlinedAt: !5495)
!5501 = !DILocation(line: 346, column: 58, scope: !4967, inlinedAt: !5502)
!5502 = distinct !DILocation(line: 547, column: 11, scope: !4948, inlinedAt: !5495)
!5503 = !DILocation(line: 472, column: 28, scope: !4973, inlinedAt: !5504)
!5504 = distinct !DILocation(line: 481, column: 9, scope: !4978, inlinedAt: !5505)
!5505 = distinct !DILocation(line: 545, column: 11, scope: !4980, inlinedAt: !5495)
!5506 = !DILocation(line: 472, column: 40, scope: !4973, inlinedAt: !5504)
!5507 = !DILocation(line: 472, column: 60, scope: !4973, inlinedAt: !5504)
!5508 = !DILocation(line: 478, column: 51, scope: !4978, inlinedAt: !5505)
!5509 = !DILocation(line: 478, column: 63, scope: !4978, inlinedAt: !5505)
!5510 = !DILocation(line: 480, column: 15, scope: !4978, inlinedAt: !5505)
!5511 = !DILocation(line: 538, column: 45, scope: !4950, inlinedAt: !5495)
!5512 = !DILocation(line: 538, column: 57, scope: !4950, inlinedAt: !5495)
!5513 = !DILocation(line: 542, column: 16, scope: !4948, inlinedAt: !5495)
!5514 = !DILocalVariable(name: "size", arg: 1, scope: !5492, file: !186, line: 662, type: !349)
!5515 = !DILocation(line: 662, column: 36, scope: !5492)
!5516 = !DILocalVariable(name: "flags", arg: 2, scope: !5492, file: !186, line: 662, type: !201)
!5517 = !DILocation(line: 662, column: 48, scope: !5492)
!5518 = !DILocation(line: 664, column: 17, scope: !5492)
!5519 = !DILocation(line: 664, column: 23, scope: !5492)
!5520 = !DILocation(line: 664, column: 29, scope: !5492)
!5521 = !DILocation(line: 540, column: 27, scope: !4949, inlinedAt: !5495)
!5522 = !DILocation(line: 540, column: 6, scope: !4949, inlinedAt: !5495)
!5523 = !DILocation(line: 540, column: 6, scope: !4950, inlinedAt: !5495)
!5524 = !DILocation(line: 544, column: 7, scope: !4980, inlinedAt: !5495)
!5525 = !DILocation(line: 544, column: 12, scope: !4980, inlinedAt: !5495)
!5526 = !DILocation(line: 544, column: 7, scope: !4948, inlinedAt: !5495)
!5527 = !DILocation(line: 545, column: 25, scope: !4980, inlinedAt: !5495)
!5528 = !DILocation(line: 545, column: 31, scope: !4980, inlinedAt: !5495)
!5529 = !DILocation(line: 480, column: 33, scope: !4978, inlinedAt: !5505)
!5530 = !DILocation(line: 480, column: 23, scope: !4978, inlinedAt: !5505)
!5531 = !DILocation(line: 481, column: 29, scope: !4978, inlinedAt: !5505)
!5532 = !DILocation(line: 481, column: 35, scope: !4978, inlinedAt: !5505)
!5533 = !DILocation(line: 481, column: 42, scope: !4978, inlinedAt: !5505)
!5534 = !DILocation(line: 474, column: 23, scope: !4973, inlinedAt: !5504)
!5535 = !DILocation(line: 474, column: 29, scope: !4973, inlinedAt: !5504)
!5536 = !DILocation(line: 474, column: 36, scope: !4973, inlinedAt: !5504)
!5537 = !DILocation(line: 474, column: 9, scope: !4973, inlinedAt: !5504)
!5538 = !DILocation(line: 545, column: 4, scope: !4980, inlinedAt: !5495)
!5539 = !DILocation(line: 547, column: 25, scope: !4948, inlinedAt: !5495)
!5540 = !DILocation(line: 348, column: 7, scope: !5075, inlinedAt: !5502)
!5541 = !DILocation(line: 348, column: 6, scope: !4967, inlinedAt: !5502)
!5542 = !DILocation(line: 349, column: 3, scope: !5075, inlinedAt: !5502)
!5543 = !DILocation(line: 351, column: 6, scope: !5079, inlinedAt: !5502)
!5544 = !DILocation(line: 351, column: 11, scope: !5079, inlinedAt: !5502)
!5545 = !DILocation(line: 351, column: 6, scope: !4967, inlinedAt: !5502)
!5546 = !DILocation(line: 352, column: 3, scope: !5079, inlinedAt: !5502)
!5547 = !DILocation(line: 354, column: 32, scope: !5084, inlinedAt: !5502)
!5548 = !DILocation(line: 354, column: 37, scope: !5084, inlinedAt: !5502)
!5549 = !DILocation(line: 354, column: 42, scope: !5084, inlinedAt: !5502)
!5550 = !DILocation(line: 354, column: 45, scope: !5084, inlinedAt: !5502)
!5551 = !DILocation(line: 354, column: 50, scope: !5084, inlinedAt: !5502)
!5552 = !DILocation(line: 354, column: 6, scope: !4967, inlinedAt: !5502)
!5553 = !DILocation(line: 355, column: 3, scope: !5084, inlinedAt: !5502)
!5554 = !DILocation(line: 356, column: 32, scope: !5092, inlinedAt: !5502)
!5555 = !DILocation(line: 356, column: 37, scope: !5092, inlinedAt: !5502)
!5556 = !DILocation(line: 356, column: 43, scope: !5092, inlinedAt: !5502)
!5557 = !DILocation(line: 356, column: 46, scope: !5092, inlinedAt: !5502)
!5558 = !DILocation(line: 356, column: 51, scope: !5092, inlinedAt: !5502)
!5559 = !DILocation(line: 356, column: 6, scope: !4967, inlinedAt: !5502)
!5560 = !DILocation(line: 357, column: 3, scope: !5092, inlinedAt: !5502)
!5561 = !DILocation(line: 358, column: 6, scope: !5100, inlinedAt: !5502)
!5562 = !DILocation(line: 358, column: 11, scope: !5100, inlinedAt: !5502)
!5563 = !DILocation(line: 358, column: 6, scope: !4967, inlinedAt: !5502)
!5564 = !DILocation(line: 358, column: 26, scope: !5100, inlinedAt: !5502)
!5565 = !DILocation(line: 359, column: 6, scope: !5105, inlinedAt: !5502)
!5566 = !DILocation(line: 359, column: 11, scope: !5105, inlinedAt: !5502)
!5567 = !DILocation(line: 359, column: 6, scope: !4967, inlinedAt: !5502)
!5568 = !DILocation(line: 359, column: 26, scope: !5105, inlinedAt: !5502)
!5569 = !DILocation(line: 360, column: 6, scope: !5110, inlinedAt: !5502)
!5570 = !DILocation(line: 360, column: 11, scope: !5110, inlinedAt: !5502)
!5571 = !DILocation(line: 360, column: 6, scope: !4967, inlinedAt: !5502)
!5572 = !DILocation(line: 360, column: 26, scope: !5110, inlinedAt: !5502)
!5573 = !DILocation(line: 361, column: 6, scope: !5115, inlinedAt: !5502)
!5574 = !DILocation(line: 361, column: 11, scope: !5115, inlinedAt: !5502)
!5575 = !DILocation(line: 361, column: 6, scope: !4967, inlinedAt: !5502)
!5576 = !DILocation(line: 361, column: 26, scope: !5115, inlinedAt: !5502)
!5577 = !DILocation(line: 362, column: 6, scope: !5120, inlinedAt: !5502)
!5578 = !DILocation(line: 362, column: 11, scope: !5120, inlinedAt: !5502)
!5579 = !DILocation(line: 362, column: 6, scope: !4967, inlinedAt: !5502)
!5580 = !DILocation(line: 362, column: 26, scope: !5120, inlinedAt: !5502)
!5581 = !DILocation(line: 363, column: 6, scope: !5125, inlinedAt: !5502)
!5582 = !DILocation(line: 363, column: 11, scope: !5125, inlinedAt: !5502)
!5583 = !DILocation(line: 363, column: 6, scope: !4967, inlinedAt: !5502)
!5584 = !DILocation(line: 363, column: 26, scope: !5125, inlinedAt: !5502)
!5585 = !DILocation(line: 364, column: 6, scope: !5130, inlinedAt: !5502)
!5586 = !DILocation(line: 364, column: 11, scope: !5130, inlinedAt: !5502)
!5587 = !DILocation(line: 364, column: 6, scope: !4967, inlinedAt: !5502)
!5588 = !DILocation(line: 364, column: 26, scope: !5130, inlinedAt: !5502)
!5589 = !DILocation(line: 365, column: 6, scope: !5135, inlinedAt: !5502)
!5590 = !DILocation(line: 365, column: 11, scope: !5135, inlinedAt: !5502)
!5591 = !DILocation(line: 365, column: 6, scope: !4967, inlinedAt: !5502)
!5592 = !DILocation(line: 365, column: 26, scope: !5135, inlinedAt: !5502)
!5593 = !DILocation(line: 366, column: 6, scope: !5140, inlinedAt: !5502)
!5594 = !DILocation(line: 366, column: 11, scope: !5140, inlinedAt: !5502)
!5595 = !DILocation(line: 366, column: 6, scope: !4967, inlinedAt: !5502)
!5596 = !DILocation(line: 366, column: 26, scope: !5140, inlinedAt: !5502)
!5597 = !DILocation(line: 367, column: 6, scope: !5145, inlinedAt: !5502)
!5598 = !DILocation(line: 367, column: 11, scope: !5145, inlinedAt: !5502)
!5599 = !DILocation(line: 367, column: 6, scope: !4967, inlinedAt: !5502)
!5600 = !DILocation(line: 367, column: 26, scope: !5145, inlinedAt: !5502)
!5601 = !DILocation(line: 368, column: 6, scope: !5150, inlinedAt: !5502)
!5602 = !DILocation(line: 368, column: 11, scope: !5150, inlinedAt: !5502)
!5603 = !DILocation(line: 368, column: 6, scope: !4967, inlinedAt: !5502)
!5604 = !DILocation(line: 368, column: 26, scope: !5150, inlinedAt: !5502)
!5605 = !DILocation(line: 369, column: 6, scope: !5155, inlinedAt: !5502)
!5606 = !DILocation(line: 369, column: 11, scope: !5155, inlinedAt: !5502)
!5607 = !DILocation(line: 369, column: 6, scope: !4967, inlinedAt: !5502)
!5608 = !DILocation(line: 369, column: 26, scope: !5155, inlinedAt: !5502)
!5609 = !DILocation(line: 370, column: 6, scope: !5160, inlinedAt: !5502)
!5610 = !DILocation(line: 370, column: 11, scope: !5160, inlinedAt: !5502)
!5611 = !DILocation(line: 370, column: 6, scope: !4967, inlinedAt: !5502)
!5612 = !DILocation(line: 370, column: 26, scope: !5160, inlinedAt: !5502)
!5613 = !DILocation(line: 371, column: 6, scope: !5165, inlinedAt: !5502)
!5614 = !DILocation(line: 371, column: 11, scope: !5165, inlinedAt: !5502)
!5615 = !DILocation(line: 371, column: 6, scope: !4967, inlinedAt: !5502)
!5616 = !DILocation(line: 371, column: 26, scope: !5165, inlinedAt: !5502)
!5617 = !DILocation(line: 372, column: 6, scope: !5170, inlinedAt: !5502)
!5618 = !DILocation(line: 372, column: 11, scope: !5170, inlinedAt: !5502)
!5619 = !DILocation(line: 372, column: 6, scope: !4967, inlinedAt: !5502)
!5620 = !DILocation(line: 372, column: 26, scope: !5170, inlinedAt: !5502)
!5621 = !DILocation(line: 373, column: 6, scope: !5175, inlinedAt: !5502)
!5622 = !DILocation(line: 373, column: 11, scope: !5175, inlinedAt: !5502)
!5623 = !DILocation(line: 373, column: 6, scope: !4967, inlinedAt: !5502)
!5624 = !DILocation(line: 373, column: 26, scope: !5175, inlinedAt: !5502)
!5625 = !DILocation(line: 374, column: 6, scope: !5180, inlinedAt: !5502)
!5626 = !DILocation(line: 374, column: 11, scope: !5180, inlinedAt: !5502)
!5627 = !DILocation(line: 374, column: 6, scope: !4967, inlinedAt: !5502)
!5628 = !DILocation(line: 374, column: 26, scope: !5180, inlinedAt: !5502)
!5629 = !DILocation(line: 375, column: 6, scope: !5185, inlinedAt: !5502)
!5630 = !DILocation(line: 375, column: 11, scope: !5185, inlinedAt: !5502)
!5631 = !DILocation(line: 375, column: 6, scope: !4967, inlinedAt: !5502)
!5632 = !DILocation(line: 375, column: 27, scope: !5185, inlinedAt: !5502)
!5633 = !DILocation(line: 376, column: 6, scope: !5190, inlinedAt: !5502)
!5634 = !DILocation(line: 376, column: 11, scope: !5190, inlinedAt: !5502)
!5635 = !DILocation(line: 376, column: 6, scope: !4967, inlinedAt: !5502)
!5636 = !DILocation(line: 376, column: 32, scope: !5190, inlinedAt: !5502)
!5637 = !DILocation(line: 377, column: 6, scope: !5195, inlinedAt: !5502)
!5638 = !DILocation(line: 377, column: 11, scope: !5195, inlinedAt: !5502)
!5639 = !DILocation(line: 377, column: 6, scope: !4967, inlinedAt: !5502)
!5640 = !DILocation(line: 377, column: 32, scope: !5195, inlinedAt: !5502)
!5641 = !DILocation(line: 378, column: 6, scope: !5200, inlinedAt: !5502)
!5642 = !DILocation(line: 378, column: 11, scope: !5200, inlinedAt: !5502)
!5643 = !DILocation(line: 378, column: 6, scope: !4967, inlinedAt: !5502)
!5644 = !DILocation(line: 378, column: 32, scope: !5200, inlinedAt: !5502)
!5645 = !DILocation(line: 379, column: 6, scope: !5205, inlinedAt: !5502)
!5646 = !DILocation(line: 379, column: 11, scope: !5205, inlinedAt: !5502)
!5647 = !DILocation(line: 379, column: 6, scope: !4967, inlinedAt: !5502)
!5648 = !DILocation(line: 379, column: 33, scope: !5205, inlinedAt: !5502)
!5649 = !DILocation(line: 380, column: 6, scope: !5210, inlinedAt: !5502)
!5650 = !DILocation(line: 380, column: 11, scope: !5210, inlinedAt: !5502)
!5651 = !DILocation(line: 380, column: 6, scope: !4967, inlinedAt: !5502)
!5652 = !DILocation(line: 380, column: 33, scope: !5210, inlinedAt: !5502)
!5653 = !DILocation(line: 381, column: 6, scope: !5215, inlinedAt: !5502)
!5654 = !DILocation(line: 381, column: 11, scope: !5215, inlinedAt: !5502)
!5655 = !DILocation(line: 381, column: 6, scope: !4967, inlinedAt: !5502)
!5656 = !DILocation(line: 381, column: 33, scope: !5215, inlinedAt: !5502)
!5657 = !DILocation(line: 382, column: 2, scope: !5220, inlinedAt: !5502)
!5658 = !DILocation(line: 382, column: 2, scope: !5224, inlinedAt: !5502)
!5659 = !DILocation(line: 382, column: 2, scope: !5225, inlinedAt: !5502)
!5660 = !DILocation(line: 386, column: 1, scope: !4967, inlinedAt: !5502)
!5661 = !DILocation(line: 547, column: 9, scope: !4948, inlinedAt: !5495)
!5662 = !DILocation(line: 549, column: 8, scope: !5231, inlinedAt: !5495)
!5663 = !DILocation(line: 549, column: 7, scope: !4948, inlinedAt: !5495)
!5664 = !DILocation(line: 550, column: 4, scope: !5231, inlinedAt: !5495)
!5665 = !DILocation(line: 553, column: 33, scope: !4948, inlinedAt: !5495)
!5666 = !DILocation(line: 325, column: 6, scope: !5236, inlinedAt: !5500)
!5667 = !DILocation(line: 325, column: 6, scope: !4961, inlinedAt: !5500)
!5668 = !DILocation(line: 326, column: 3, scope: !5236, inlinedAt: !5500)
!5669 = !DILocation(line: 332, column: 9, scope: !4961, inlinedAt: !5500)
!5670 = !DILocation(line: 332, column: 15, scope: !4961, inlinedAt: !5500)
!5671 = !DILocation(line: 332, column: 2, scope: !4961, inlinedAt: !5500)
!5672 = !DILocation(line: 336, column: 1, scope: !4961, inlinedAt: !5500)
!5673 = !DILocation(line: 553, column: 5, scope: !4948, inlinedAt: !5495)
!5674 = !DILocation(line: 553, column: 41, scope: !4948, inlinedAt: !5495)
!5675 = !DILocation(line: 554, column: 5, scope: !4948, inlinedAt: !5495)
!5676 = !DILocation(line: 554, column: 12, scope: !4948, inlinedAt: !5495)
!5677 = !DILocation(line: 448, column: 31, scope: !4943, inlinedAt: !5494)
!5678 = !DILocation(line: 448, column: 34, scope: !4943, inlinedAt: !5494)
!5679 = !DILocation(line: 448, column: 14, scope: !4943, inlinedAt: !5494)
!5680 = !DILocation(line: 450, column: 22, scope: !4943, inlinedAt: !5494)
!5681 = !DILocation(line: 450, column: 25, scope: !4943, inlinedAt: !5494)
!5682 = !DILocation(line: 450, column: 30, scope: !4943, inlinedAt: !5494)
!5683 = !DILocation(line: 450, column: 36, scope: !4943, inlinedAt: !5494)
!5684 = !DILocation(line: 450, column: 8, scope: !4943, inlinedAt: !5494)
!5685 = !DILocation(line: 450, column: 6, scope: !4943, inlinedAt: !5494)
!5686 = !DILocation(line: 451, column: 9, scope: !4943, inlinedAt: !5494)
!5687 = !DILocation(line: 552, column: 3, scope: !4948, inlinedAt: !5495)
!5688 = !DILocation(line: 557, column: 19, scope: !4950, inlinedAt: !5495)
!5689 = !DILocation(line: 557, column: 25, scope: !4950, inlinedAt: !5495)
!5690 = !DILocation(line: 557, column: 9, scope: !4950, inlinedAt: !5495)
!5691 = !DILocation(line: 557, column: 2, scope: !4950, inlinedAt: !5495)
!5692 = !DILocation(line: 558, column: 1, scope: !4950, inlinedAt: !5495)
!5693 = !DILocation(line: 664, column: 2, scope: !5492)
!5694 = distinct !DISubprogram(name: "__init_work", scope: !153, file: !153, line: 215, type: !5695, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!5695 = !DISubroutineType(types: !5696)
!5696 = !{null, !2043, !209}
!5697 = !DILocalVariable(name: "work", arg: 1, scope: !5694, file: !153, line: 215, type: !2043)
!5698 = !DILocation(line: 215, column: 52, scope: !5694)
!5699 = !DILocalVariable(name: "onstack", arg: 2, scope: !5694, file: !153, line: 215, type: !209)
!5700 = !DILocation(line: 215, column: 62, scope: !5694)
!5701 = !DILocation(line: 215, column: 73, scope: !5694)
!5702 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5703, file: !5703, line: 33, type: !5704, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!5703 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5704 = !DISubroutineType(types: !5705)
!5705 = !{null, !252}
!5706 = !DILocalVariable(name: "list", arg: 1, scope: !5702, file: !5703, line: 33, type: !252)
!5707 = !DILocation(line: 33, column: 53, scope: !5702)
!5708 = !DILocation(line: 35, column: 2, scope: !5702)
!5709 = !DILocation(line: 35, column: 2, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5702, file: !5703, line: 35, column: 2)
!5711 = !DILocation(line: 35, column: 2, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5710, file: !5703, line: 35, column: 2)
!5713 = !DILocation(line: 35, column: 2, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5710, file: !5703, line: 35, column: 2)
!5715 = !DILocation(line: 36, column: 15, scope: !5702)
!5716 = !DILocation(line: 36, column: 2, scope: !5702)
!5717 = !DILocation(line: 36, column: 8, scope: !5702)
!5718 = !DILocation(line: 36, column: 13, scope: !5702)
!5719 = !DILocation(line: 37, column: 1, scope: !5702)
!5720 = distinct !DISubprogram(name: "appledisplay_work", scope: !3, file: !3, line: 186, type: !2041, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!5721 = !DILocalVariable(name: "work", arg: 1, scope: !5720, file: !3, line: 186, type: !2043)
!5722 = !DILocation(line: 186, column: 51, scope: !5720)
!5723 = !DILocalVariable(name: "pdata", scope: !5720, file: !3, line: 188, type: !4268)
!5724 = !DILocation(line: 188, column: 23, scope: !5720)
!5725 = !DILocalVariable(name: "__mptr", scope: !5726, file: !3, line: 189, type: !204)
!5726 = distinct !DILexicalBlock(scope: !5720, file: !3, line: 189, column: 3)
!5727 = !DILocation(line: 189, column: 3, scope: !5726)
!5728 = !DILocation(line: 189, column: 3, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5726, file: !3, line: 189, column: 3)
!5730 = !DILocalVariable(name: "retval", scope: !5720, file: !3, line: 190, type: !209)
!5731 = !DILocation(line: 190, column: 6, scope: !5720)
!5732 = !DILocation(line: 192, column: 42, scope: !5720)
!5733 = !DILocation(line: 192, column: 49, scope: !5720)
!5734 = !DILocation(line: 192, column: 11, scope: !5720)
!5735 = !DILocation(line: 192, column: 9, scope: !5720)
!5736 = !DILocation(line: 193, column: 6, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5720, file: !3, line: 193, column: 6)
!5738 = !DILocation(line: 193, column: 13, scope: !5737)
!5739 = !DILocation(line: 193, column: 6, scope: !5720)
!5740 = !DILocation(line: 194, column: 33, scope: !5737)
!5741 = !DILocation(line: 194, column: 3, scope: !5737)
!5742 = !DILocation(line: 194, column: 10, scope: !5737)
!5743 = !DILocation(line: 194, column: 14, scope: !5737)
!5744 = !DILocation(line: 194, column: 20, scope: !5737)
!5745 = !DILocation(line: 194, column: 31, scope: !5737)
!5746 = !DILocation(line: 197, column: 6, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5720, file: !3, line: 197, column: 6)
!5748 = !DILocation(line: 197, column: 13, scope: !5747)
!5749 = !DILocation(line: 197, column: 6, scope: !5720)
!5750 = !DILocation(line: 198, column: 26, scope: !5747)
!5751 = !DILocation(line: 198, column: 33, scope: !5747)
!5752 = !DILocation(line: 198, column: 3, scope: !5747)
!5753 = !DILocation(line: 199, column: 1, scope: !5720)
!5754 = distinct !DISubprogram(name: "usb_fill_int_urb", scope: !6, file: !6, line: 1688, type: !5755, scopeLine: 1696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!5755 = !DISubroutineType(types: !5756)
!5756 = !{null, !4273, !205, !7, !204, !209, !4315, !204, !209}
!5757 = !DILocalVariable(name: "urb", arg: 1, scope: !5754, file: !6, line: 1688, type: !4273)
!5758 = !DILocation(line: 1688, column: 49, scope: !5754)
!5759 = !DILocalVariable(name: "dev", arg: 2, scope: !5754, file: !6, line: 1689, type: !205)
!5760 = !DILocation(line: 1689, column: 28, scope: !5754)
!5761 = !DILocalVariable(name: "pipe", arg: 3, scope: !5754, file: !6, line: 1690, type: !7)
!5762 = !DILocation(line: 1690, column: 22, scope: !5754)
!5763 = !DILocalVariable(name: "transfer_buffer", arg: 4, scope: !5754, file: !6, line: 1691, type: !204)
!5764 = !DILocation(line: 1691, column: 15, scope: !5754)
!5765 = !DILocalVariable(name: "buffer_length", arg: 5, scope: !5754, file: !6, line: 1692, type: !209)
!5766 = !DILocation(line: 1692, column: 13, scope: !5754)
!5767 = !DILocalVariable(name: "complete_fn", arg: 6, scope: !5754, file: !6, line: 1693, type: !4315)
!5768 = !DILocation(line: 1693, column: 24, scope: !5754)
!5769 = !DILocalVariable(name: "context", arg: 7, scope: !5754, file: !6, line: 1694, type: !204)
!5770 = !DILocation(line: 1694, column: 15, scope: !5754)
!5771 = !DILocalVariable(name: "interval", arg: 8, scope: !5754, file: !6, line: 1695, type: !209)
!5772 = !DILocation(line: 1695, column: 13, scope: !5754)
!5773 = !DILocation(line: 1697, column: 13, scope: !5754)
!5774 = !DILocation(line: 1697, column: 2, scope: !5754)
!5775 = !DILocation(line: 1697, column: 7, scope: !5754)
!5776 = !DILocation(line: 1697, column: 11, scope: !5754)
!5777 = !DILocation(line: 1698, column: 14, scope: !5754)
!5778 = !DILocation(line: 1698, column: 2, scope: !5754)
!5779 = !DILocation(line: 1698, column: 7, scope: !5754)
!5780 = !DILocation(line: 1698, column: 12, scope: !5754)
!5781 = !DILocation(line: 1699, column: 25, scope: !5754)
!5782 = !DILocation(line: 1699, column: 2, scope: !5754)
!5783 = !DILocation(line: 1699, column: 7, scope: !5754)
!5784 = !DILocation(line: 1699, column: 23, scope: !5754)
!5785 = !DILocation(line: 1700, column: 32, scope: !5754)
!5786 = !DILocation(line: 1700, column: 2, scope: !5754)
!5787 = !DILocation(line: 1700, column: 7, scope: !5754)
!5788 = !DILocation(line: 1700, column: 30, scope: !5754)
!5789 = !DILocation(line: 1701, column: 18, scope: !5754)
!5790 = !DILocation(line: 1701, column: 2, scope: !5754)
!5791 = !DILocation(line: 1701, column: 7, scope: !5754)
!5792 = !DILocation(line: 1701, column: 16, scope: !5754)
!5793 = !DILocation(line: 1702, column: 17, scope: !5754)
!5794 = !DILocation(line: 1702, column: 2, scope: !5754)
!5795 = !DILocation(line: 1702, column: 7, scope: !5754)
!5796 = !DILocation(line: 1702, column: 15, scope: !5754)
!5797 = !DILocation(line: 1704, column: 6, scope: !5798)
!5798 = distinct !DILexicalBlock(scope: !5754, file: !6, line: 1704, column: 6)
!5799 = !DILocation(line: 1704, column: 11, scope: !5798)
!5800 = !DILocation(line: 1704, column: 17, scope: !5798)
!5801 = !DILocation(line: 1704, column: 35, scope: !5798)
!5802 = !DILocation(line: 1704, column: 38, scope: !5798)
!5803 = !DILocation(line: 1704, column: 43, scope: !5798)
!5804 = !DILocation(line: 1704, column: 49, scope: !5798)
!5805 = !DILocation(line: 1704, column: 6, scope: !5754)
!5806 = !DILocalVariable(name: "__UNIQUE_ID___x207", scope: !5807, file: !6, line: 1706, type: !209)
!5807 = distinct !DILexicalBlock(scope: !5808, file: !6, line: 1706, column: 14)
!5808 = distinct !DILexicalBlock(scope: !5798, file: !6, line: 1704, column: 69)
!5809 = !DILocation(line: 1706, column: 14, scope: !5807)
!5810 = !DILocalVariable(name: "__UNIQUE_ID___x205", scope: !5811, file: !6, line: 1706, type: !209)
!5811 = distinct !DILexicalBlock(scope: !5807, file: !6, line: 1706, column: 14)
!5812 = !DILocation(line: 1706, column: 14, scope: !5811)
!5813 = !DILocalVariable(name: "__UNIQUE_ID___y206", scope: !5811, file: !6, line: 1706, type: !209)
!5814 = !DILocalVariable(name: "__UNIQUE_ID___y208", scope: !5807, file: !6, line: 1706, type: !209)
!5815 = !DILocation(line: 1706, column: 12, scope: !5808)
!5816 = !DILocation(line: 1708, column: 25, scope: !5808)
!5817 = !DILocation(line: 1708, column: 34, scope: !5808)
!5818 = !DILocation(line: 1708, column: 21, scope: !5808)
!5819 = !DILocation(line: 1708, column: 3, scope: !5808)
!5820 = !DILocation(line: 1708, column: 8, scope: !5808)
!5821 = !DILocation(line: 1708, column: 17, scope: !5808)
!5822 = !DILocation(line: 1709, column: 2, scope: !5808)
!5823 = !DILocation(line: 1710, column: 19, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5798, file: !6, line: 1709, column: 9)
!5825 = !DILocation(line: 1710, column: 3, scope: !5824)
!5826 = !DILocation(line: 1710, column: 8, scope: !5824)
!5827 = !DILocation(line: 1710, column: 17, scope: !5824)
!5828 = !DILocation(line: 1713, column: 2, scope: !5754)
!5829 = !DILocation(line: 1713, column: 7, scope: !5754)
!5830 = !DILocation(line: 1713, column: 19, scope: !5754)
!5831 = !DILocation(line: 1714, column: 1, scope: !5754)
!5832 = distinct !DISubprogram(name: "__create_pipe", scope: !6, file: !6, line: 1945, type: !5833, scopeLine: 1947, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!5833 = !DISubroutineType(types: !5834)
!5834 = !{!7, !205, !7}
!5835 = !DILocalVariable(name: "dev", arg: 1, scope: !5832, file: !6, line: 1945, type: !205)
!5836 = !DILocation(line: 1945, column: 61, scope: !5832)
!5837 = !DILocalVariable(name: "endpoint", arg: 2, scope: !5832, file: !6, line: 1946, type: !7)
!5838 = !DILocation(line: 1946, column: 16, scope: !5832)
!5839 = !DILocation(line: 1948, column: 10, scope: !5832)
!5840 = !DILocation(line: 1948, column: 15, scope: !5832)
!5841 = !DILocation(line: 1948, column: 22, scope: !5832)
!5842 = !DILocation(line: 1948, column: 31, scope: !5832)
!5843 = !DILocation(line: 1948, column: 40, scope: !5832)
!5844 = !DILocation(line: 1948, column: 28, scope: !5832)
!5845 = !DILocation(line: 1948, column: 2, scope: !5832)
!5846 = distinct !DISubprogram(name: "appledisplay_complete", scope: !3, file: !3, line: 77, type: !4317, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!5847 = !DILocalVariable(name: "urb", arg: 1, scope: !5846, file: !3, line: 77, type: !4273)
!5848 = !DILocation(line: 77, column: 47, scope: !5846)
!5849 = !DILocalVariable(name: "pdata", scope: !5846, file: !3, line: 79, type: !4268)
!5850 = !DILocation(line: 79, column: 23, scope: !5846)
!5851 = !DILocation(line: 79, column: 31, scope: !5846)
!5852 = !DILocation(line: 79, column: 36, scope: !5846)
!5853 = !DILocalVariable(name: "dev", scope: !5846, file: !3, line: 80, type: !238)
!5854 = !DILocation(line: 80, column: 17, scope: !5846)
!5855 = !DILocation(line: 80, column: 24, scope: !5846)
!5856 = !DILocation(line: 80, column: 31, scope: !5846)
!5857 = !DILocation(line: 80, column: 37, scope: !5846)
!5858 = !DILocalVariable(name: "status", scope: !5846, file: !3, line: 81, type: !209)
!5859 = !DILocation(line: 81, column: 6, scope: !5846)
!5860 = !DILocation(line: 81, column: 15, scope: !5846)
!5861 = !DILocation(line: 81, column: 20, scope: !5846)
!5862 = !DILocalVariable(name: "retval", scope: !5846, file: !3, line: 82, type: !209)
!5863 = !DILocation(line: 82, column: 6, scope: !5846)
!5864 = !DILocation(line: 84, column: 10, scope: !5846)
!5865 = !DILocation(line: 84, column: 2, scope: !5846)
!5866 = !DILocation(line: 87, column: 3, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5846, file: !3, line: 84, column: 18)
!5868 = !DILocation(line: 89, column: 3, scope: !5867)
!5869 = !DILocation(line: 99, column: 3, scope: !5867)
!5870 = !DILocation(line: 103, column: 3, scope: !5867)
!5871 = !DILocation(line: 106, column: 9, scope: !5846)
!5872 = !DILocation(line: 106, column: 16, scope: !5846)
!5873 = !DILocation(line: 106, column: 2, scope: !5846)
!5874 = !DILocation(line: 109, column: 3, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5846, file: !3, line: 106, column: 28)
!5876 = !DILocation(line: 109, column: 10, scope: !5875)
!5877 = !DILocation(line: 109, column: 25, scope: !5875)
!5878 = !DILocation(line: 110, column: 26, scope: !5875)
!5879 = !DILocation(line: 110, column: 33, scope: !5875)
!5880 = !DILocation(line: 110, column: 3, scope: !5875)
!5881 = !DILocation(line: 111, column: 3, scope: !5875)
!5882 = !DILocation(line: 114, column: 3, scope: !5875)
!5883 = !DILocation(line: 114, column: 10, scope: !5875)
!5884 = !DILocation(line: 114, column: 25, scope: !5875)
!5885 = !DILocation(line: 115, column: 3, scope: !5875)
!5886 = !DILocation(line: 116, column: 2, scope: !5875)
!5887 = !DILabel(scope: !5846, name: "exit", file: !3, line: 118)
!5888 = !DILocation(line: 118, column: 1, scope: !5846)
!5889 = !DILocation(line: 119, column: 26, scope: !5846)
!5890 = !DILocation(line: 119, column: 33, scope: !5846)
!5891 = !DILocation(line: 119, column: 11, scope: !5846)
!5892 = !DILocation(line: 119, column: 9, scope: !5846)
!5893 = !DILocation(line: 120, column: 6, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5846, file: !3, line: 120, column: 6)
!5895 = !DILocation(line: 120, column: 6, scope: !5846)
!5896 = !DILocation(line: 121, column: 3, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5894, file: !3, line: 120, column: 14)
!5898 = !DILocation(line: 123, column: 2, scope: !5897)
!5899 = !DILocation(line: 124, column: 1, scope: !5846)
!5900 = distinct !DISubprogram(name: "IS_ERR", scope: !5901, file: !5901, line: 34, type: !5902, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!5901 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5902 = !DISubroutineType(types: !5903)
!5903 = !{!513, !2203}
!5904 = !DILocalVariable(name: "ptr", arg: 1, scope: !5900, file: !5901, line: 34, type: !2203)
!5905 = !DILocation(line: 34, column: 60, scope: !5900)
!5906 = !DILocation(line: 36, column: 9, scope: !5900)
!5907 = !DILocation(line: 36, column: 2, scope: !5900)
!5908 = distinct !DISubprogram(name: "PTR_ERR", scope: !5901, file: !5901, line: 29, type: !5909, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!5909 = !DISubroutineType(types: !5910)
!5910 = !{!154, !2203}
!5911 = !DILocalVariable(name: "ptr", arg: 1, scope: !5908, file: !5901, line: 29, type: !2203)
!5912 = !DILocation(line: 29, column: 61, scope: !5908)
!5913 = !DILocation(line: 31, column: 16, scope: !5908)
!5914 = !DILocation(line: 31, column: 9, scope: !5908)
!5915 = !DILocation(line: 31, column: 2, scope: !5908)
!5916 = distinct !DISubprogram(name: "appledisplay_bl_get_brightness", scope: !3, file: !3, line: 152, type: !4351, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!5917 = !DILocalVariable(name: "bd", arg: 1, scope: !5916, file: !3, line: 152, type: !4328)
!5918 = !DILocation(line: 152, column: 68, scope: !5916)
!5919 = !DILocalVariable(name: "pdata", scope: !5916, file: !3, line: 154, type: !4268)
!5920 = !DILocation(line: 154, column: 23, scope: !5916)
!5921 = !DILocation(line: 154, column: 43, scope: !5916)
!5922 = !DILocation(line: 154, column: 31, scope: !5916)
!5923 = !DILocalVariable(name: "retval", scope: !5916, file: !3, line: 155, type: !209)
!5924 = !DILocation(line: 155, column: 6, scope: !5916)
!5925 = !DILocalVariable(name: "brightness", scope: !5916, file: !3, line: 155, type: !209)
!5926 = !DILocation(line: 155, column: 14, scope: !5916)
!5927 = !DILocation(line: 157, column: 14, scope: !5916)
!5928 = !DILocation(line: 157, column: 21, scope: !5916)
!5929 = !DILocation(line: 157, column: 2, scope: !5916)
!5930 = !DILocation(line: 159, column: 3, scope: !5916)
!5931 = !DILocation(line: 159, column: 10, scope: !5916)
!5932 = !DILocation(line: 160, column: 3, scope: !5916)
!5933 = !DILocation(line: 165, column: 3, scope: !5916)
!5934 = !DILocation(line: 165, column: 10, scope: !5916)
!5935 = !DILocation(line: 158, column: 11, scope: !5916)
!5936 = !DILocation(line: 158, column: 9, scope: !5916)
!5937 = !DILocation(line: 167, column: 6, scope: !5938)
!5938 = distinct !DILexicalBlock(scope: !5916, file: !3, line: 167, column: 6)
!5939 = !DILocation(line: 167, column: 13, scope: !5938)
!5940 = !DILocation(line: 167, column: 6, scope: !5916)
!5941 = !DILocation(line: 168, column: 7, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 168, column: 7)
!5943 = distinct !DILexicalBlock(scope: !5938, file: !3, line: 167, column: 18)
!5944 = !DILocation(line: 168, column: 14, scope: !5942)
!5945 = !DILocation(line: 168, column: 7, scope: !5943)
!5946 = !DILocation(line: 169, column: 11, scope: !5942)
!5947 = !DILocation(line: 169, column: 4, scope: !5942)
!5948 = !DILocation(line: 170, column: 2, scope: !5943)
!5949 = !DILocation(line: 171, column: 16, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5938, file: !3, line: 170, column: 9)
!5951 = !DILocation(line: 171, column: 23, scope: !5950)
!5952 = !DILocation(line: 171, column: 14, scope: !5950)
!5953 = !DILocation(line: 173, column: 16, scope: !5916)
!5954 = !DILocation(line: 173, column: 23, scope: !5916)
!5955 = !DILocation(line: 173, column: 2, scope: !5916)
!5956 = !DILocation(line: 175, column: 6, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5916, file: !3, line: 175, column: 6)
!5958 = !DILocation(line: 175, column: 13, scope: !5957)
!5959 = !DILocation(line: 175, column: 6, scope: !5916)
!5960 = !DILocation(line: 176, column: 10, scope: !5957)
!5961 = !DILocation(line: 176, column: 3, scope: !5957)
!5962 = !DILocation(line: 178, column: 10, scope: !5957)
!5963 = !DILocation(line: 178, column: 3, scope: !5957)
!5964 = !DILocation(line: 179, column: 1, scope: !5916)
!5965 = distinct !DISubprogram(name: "usb_set_intfdata", scope: !6, file: !6, line: 268, type: !5966, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!5966 = !DISubroutineType(types: !5967)
!5967 = !{null, !4158, !204}
!5968 = !DILocalVariable(name: "intf", arg: 1, scope: !5965, file: !6, line: 268, type: !4158)
!5969 = !DILocation(line: 268, column: 59, scope: !5965)
!5970 = !DILocalVariable(name: "data", arg: 2, scope: !5965, file: !6, line: 268, type: !204)
!5971 = !DILocation(line: 268, column: 71, scope: !5965)
!5972 = !DILocation(line: 270, column: 19, scope: !5965)
!5973 = !DILocation(line: 270, column: 25, scope: !5965)
!5974 = !DILocation(line: 270, column: 30, scope: !5965)
!5975 = !DILocation(line: 270, column: 2, scope: !5965)
!5976 = !DILocation(line: 271, column: 1, scope: !5965)
!5977 = distinct !DISubprogram(name: "schedule_delayed_work", scope: !153, file: !153, line: 623, type: !5978, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!5978 = !DISubroutineType(types: !5979)
!5979 = !{!513, !5980, !203}
!5980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!5981 = !DILocalVariable(name: "dwork", arg: 1, scope: !5977, file: !153, line: 623, type: !5980)
!5982 = !DILocation(line: 623, column: 63, scope: !5977)
!5983 = !DILocalVariable(name: "delay", arg: 2, scope: !5977, file: !153, line: 624, type: !203)
!5984 = !DILocation(line: 624, column: 21, scope: !5977)
!5985 = !DILocation(line: 626, column: 28, scope: !5977)
!5986 = !DILocation(line: 626, column: 39, scope: !5977)
!5987 = !DILocation(line: 626, column: 46, scope: !5977)
!5988 = !DILocation(line: 626, column: 9, scope: !5977)
!5989 = !DILocation(line: 626, column: 2, scope: !5977)
!5990 = distinct !DISubprogram(name: "queue_delayed_work", scope: !153, file: !153, line: 518, type: !5991, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!5991 = !DISubroutineType(types: !5992)
!5992 = !{!513, !2869, !5980, !203}
!5993 = !DILocalVariable(name: "wq", arg: 1, scope: !5990, file: !153, line: 518, type: !2869)
!5994 = !DILocation(line: 518, column: 64, scope: !5990)
!5995 = !DILocalVariable(name: "dwork", arg: 2, scope: !5990, file: !153, line: 519, type: !5980)
!5996 = !DILocation(line: 519, column: 32, scope: !5990)
!5997 = !DILocalVariable(name: "delay", arg: 3, scope: !5990, file: !153, line: 520, type: !203)
!5998 = !DILocation(line: 520, column: 25, scope: !5990)
!5999 = !DILocation(line: 522, column: 49, scope: !5990)
!6000 = !DILocation(line: 522, column: 53, scope: !5990)
!6001 = !DILocation(line: 522, column: 60, scope: !5990)
!6002 = !DILocation(line: 522, column: 9, scope: !5990)
!6003 = !DILocation(line: 522, column: 2, scope: !5990)
!6004 = distinct !DISubprogram(name: "get_order", scope: !6005, file: !6005, line: 29, type: !6006, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!6005 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6006 = !DISubroutineType(types: !6007)
!6007 = !{!209, !203}
!6008 = !DILocalVariable(name: "x", arg: 1, scope: !6009, file: !6010, line: 366, type: !445)
!6009 = distinct !DISubprogram(name: "fls64", scope: !6010, file: !6010, line: 366, type: !6011, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!6010 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6011 = !DISubroutineType(types: !6012)
!6012 = !{!209, !445}
!6013 = !DILocation(line: 366, column: 40, scope: !6009, inlinedAt: !6014)
!6014 = distinct !DILocation(line: 46, column: 9, scope: !6004)
!6015 = !DILocalVariable(name: "bitpos", scope: !6009, file: !6010, line: 368, type: !209)
!6016 = !DILocation(line: 368, column: 6, scope: !6009, inlinedAt: !6014)
!6017 = !DILocalVariable(name: "size", arg: 1, scope: !6004, file: !6005, line: 29, type: !203)
!6018 = !DILocation(line: 29, column: 63, scope: !6004)
!6019 = !DILocation(line: 31, column: 27, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !6004, file: !6005, line: 31, column: 6)
!6021 = !DILocation(line: 31, column: 6, scope: !6020)
!6022 = !DILocation(line: 31, column: 6, scope: !6004)
!6023 = !DILocation(line: 32, column: 8, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !6025, file: !6005, line: 32, column: 7)
!6025 = distinct !DILexicalBlock(scope: !6020, file: !6005, line: 31, column: 34)
!6026 = !DILocation(line: 32, column: 7, scope: !6025)
!6027 = !DILocation(line: 33, column: 4, scope: !6024)
!6028 = !DILocation(line: 35, column: 7, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !6025, file: !6005, line: 35, column: 7)
!6030 = !DILocation(line: 35, column: 12, scope: !6029)
!6031 = !DILocation(line: 35, column: 7, scope: !6025)
!6032 = !DILocation(line: 36, column: 4, scope: !6029)
!6033 = !DILocation(line: 38, column: 10, scope: !6025)
!6034 = !DILocation(line: 38, column: 28, scope: !6025)
!6035 = !DILocation(line: 38, column: 41, scope: !6025)
!6036 = !DILocation(line: 38, column: 3, scope: !6025)
!6037 = !DILocation(line: 41, column: 6, scope: !6004)
!6038 = !DILocation(line: 42, column: 7, scope: !6004)
!6039 = !DILocation(line: 46, column: 15, scope: !6004)
!6040 = !DILocation(line: 374, column: 2, scope: !6009, inlinedAt: !6014)
!6041 = !DILocation(line: 376, column: 14, scope: !6009, inlinedAt: !6014)
!6042 = !{i32 247905}
!6043 = !DILocation(line: 377, column: 9, scope: !6009, inlinedAt: !6014)
!6044 = !DILocation(line: 377, column: 16, scope: !6009, inlinedAt: !6014)
!6045 = !DILocation(line: 46, column: 2, scope: !6004)
!6046 = !DILocation(line: 48, column: 1, scope: !6004)
!6047 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6048, file: !6048, line: 30, type: !6049, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!6048 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6049 = !DISubroutineType(types: !6050)
!6050 = !{!209, !444}
!6051 = !DILocation(line: 366, column: 40, scope: !6009, inlinedAt: !6052)
!6052 = distinct !DILocation(line: 32, column: 9, scope: !6047)
!6053 = !DILocation(line: 368, column: 6, scope: !6009, inlinedAt: !6052)
!6054 = !DILocalVariable(name: "n", arg: 1, scope: !6047, file: !6048, line: 30, type: !444)
!6055 = !DILocation(line: 30, column: 21, scope: !6047)
!6056 = !DILocation(line: 32, column: 15, scope: !6047)
!6057 = !DILocation(line: 374, column: 2, scope: !6009, inlinedAt: !6052)
!6058 = !DILocation(line: 376, column: 14, scope: !6009, inlinedAt: !6052)
!6059 = !DILocation(line: 377, column: 9, scope: !6009, inlinedAt: !6052)
!6060 = !DILocation(line: 377, column: 16, scope: !6009, inlinedAt: !6052)
!6061 = !DILocation(line: 32, column: 18, scope: !6047)
!6062 = !DILocation(line: 32, column: 2, scope: !6047)
!6063 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6064, file: !6064, line: 137, type: !6065, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!6064 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6065 = !DISubroutineType(types: !6066)
!6066 = !{!204, !958, !2203, !349, !201}
!6067 = !DILocalVariable(name: "s", arg: 1, scope: !6063, file: !6064, line: 137, type: !958)
!6068 = !DILocation(line: 137, column: 54, scope: !6063)
!6069 = !DILocalVariable(name: "object", arg: 2, scope: !6063, file: !6064, line: 137, type: !2203)
!6070 = !DILocation(line: 137, column: 69, scope: !6063)
!6071 = !DILocalVariable(name: "size", arg: 3, scope: !6063, file: !6064, line: 138, type: !349)
!6072 = !DILocation(line: 138, column: 12, scope: !6063)
!6073 = !DILocalVariable(name: "flags", arg: 4, scope: !6063, file: !6064, line: 138, type: !201)
!6074 = !DILocation(line: 138, column: 24, scope: !6063)
!6075 = !DILocation(line: 140, column: 17, scope: !6063)
!6076 = !DILocation(line: 140, column: 2, scope: !6063)
!6077 = distinct !DISubprogram(name: "kasan_check_write", scope: !6078, file: !6078, line: 38, type: !6079, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!6078 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6079 = !DISubroutineType(types: !6080)
!6080 = !{!513, !4933, !7}
!6081 = !DILocalVariable(name: "p", arg: 1, scope: !6077, file: !6078, line: 38, type: !4933)
!6082 = !DILocation(line: 38, column: 59, scope: !6077)
!6083 = !DILocalVariable(name: "size", arg: 2, scope: !6077, file: !6078, line: 38, type: !7)
!6084 = !DILocation(line: 38, column: 75, scope: !6077)
!6085 = !DILocation(line: 40, column: 2, scope: !6077)
!6086 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6087, file: !6087, line: 178, type: !6088, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!6087 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!6088 = !DISubroutineType(types: !6089)
!6089 = !{null, !4933, !349, !209}
!6090 = !DILocalVariable(name: "ptr", arg: 1, scope: !6086, file: !6087, line: 178, type: !4933)
!6091 = !DILocation(line: 178, column: 60, scope: !6086)
!6092 = !DILocalVariable(name: "size", arg: 2, scope: !6086, file: !6087, line: 178, type: !349)
!6093 = !DILocation(line: 178, column: 72, scope: !6086)
!6094 = !DILocalVariable(name: "type", arg: 3, scope: !6086, file: !6087, line: 179, type: !209)
!6095 = !DILocation(line: 179, column: 15, scope: !6086)
!6096 = !DILocation(line: 179, column: 23, scope: !6086)
!6097 = distinct !DISubprogram(name: "appledisplay_bl_update_status", scope: !3, file: !3, line: 126, type: !4351, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!6098 = !DILocalVariable(name: "bd", arg: 1, scope: !6097, file: !3, line: 126, type: !4328)
!6099 = !DILocation(line: 126, column: 67, scope: !6097)
!6100 = !DILocalVariable(name: "pdata", scope: !6097, file: !3, line: 128, type: !4268)
!6101 = !DILocation(line: 128, column: 23, scope: !6097)
!6102 = !DILocation(line: 128, column: 43, scope: !6097)
!6103 = !DILocation(line: 128, column: 31, scope: !6097)
!6104 = !DILocalVariable(name: "retval", scope: !6097, file: !3, line: 129, type: !209)
!6105 = !DILocation(line: 129, column: 6, scope: !6097)
!6106 = !DILocation(line: 131, column: 14, scope: !6097)
!6107 = !DILocation(line: 131, column: 21, scope: !6097)
!6108 = !DILocation(line: 131, column: 2, scope: !6097)
!6109 = !DILocation(line: 132, column: 2, scope: !6097)
!6110 = !DILocation(line: 132, column: 9, scope: !6097)
!6111 = !DILocation(line: 132, column: 20, scope: !6097)
!6112 = !DILocation(line: 133, column: 22, scope: !6097)
!6113 = !DILocation(line: 133, column: 26, scope: !6097)
!6114 = !DILocation(line: 133, column: 32, scope: !6097)
!6115 = !DILocation(line: 133, column: 2, scope: !6097)
!6116 = !DILocation(line: 133, column: 9, scope: !6097)
!6117 = !DILocation(line: 133, column: 20, scope: !6097)
!6118 = !DILocation(line: 136, column: 3, scope: !6097)
!6119 = !DILocation(line: 136, column: 10, scope: !6097)
!6120 = !DILocation(line: 137, column: 3, scope: !6097)
!6121 = !DILocation(line: 142, column: 3, scope: !6097)
!6122 = !DILocation(line: 142, column: 10, scope: !6097)
!6123 = !DILocation(line: 135, column: 11, scope: !6097)
!6124 = !DILocation(line: 135, column: 9, scope: !6097)
!6125 = !DILocation(line: 144, column: 16, scope: !6097)
!6126 = !DILocation(line: 144, column: 23, scope: !6097)
!6127 = !DILocation(line: 144, column: 2, scope: !6097)
!6128 = !DILocation(line: 146, column: 6, scope: !6129)
!6129 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 146, column: 6)
!6130 = !DILocation(line: 146, column: 13, scope: !6129)
!6131 = !DILocation(line: 146, column: 6, scope: !6097)
!6132 = !DILocation(line: 147, column: 10, scope: !6129)
!6133 = !DILocation(line: 147, column: 3, scope: !6129)
!6134 = !DILocation(line: 149, column: 3, scope: !6129)
!6135 = !DILocation(line: 150, column: 1, scope: !6097)
!6136 = distinct !DISubprogram(name: "bl_get_data", scope: !115, file: !115, line: 464, type: !6137, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!6137 = !DISubroutineType(types: !6138)
!6138 = !{!204, !4328}
!6139 = !DILocalVariable(name: "bl_dev", arg: 1, scope: !6136, file: !115, line: 464, type: !4328)
!6140 = !DILocation(line: 464, column: 59, scope: !6136)
!6141 = !DILocation(line: 466, column: 26, scope: !6136)
!6142 = !DILocation(line: 466, column: 34, scope: !6136)
!6143 = !DILocation(line: 466, column: 9, scope: !6136)
!6144 = !DILocation(line: 466, column: 2, scope: !6136)
!6145 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !80, file: !80, line: 655, type: !6146, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!6146 = !DISubroutineType(types: !6147)
!6147 = !{!204, !3768}
!6148 = !DILocalVariable(name: "dev", arg: 1, scope: !6145, file: !80, line: 655, type: !3768)
!6149 = !DILocation(line: 655, column: 58, scope: !6145)
!6150 = !DILocation(line: 657, column: 9, scope: !6145)
!6151 = !DILocation(line: 657, column: 14, scope: !6145)
!6152 = !DILocation(line: 657, column: 2, scope: !6145)
!6153 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !80, file: !80, line: 660, type: !6154, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!6154 = !DISubroutineType(types: !6155)
!6155 = !{null, !238, !204}
!6156 = !DILocalVariable(name: "dev", arg: 1, scope: !6153, file: !80, line: 660, type: !238)
!6157 = !DILocation(line: 660, column: 51, scope: !6153)
!6158 = !DILocalVariable(name: "data", arg: 2, scope: !6153, file: !80, line: 660, type: !204)
!6159 = !DILocation(line: 660, column: 62, scope: !6153)
!6160 = !DILocation(line: 662, column: 21, scope: !6153)
!6161 = !DILocation(line: 662, column: 2, scope: !6153)
!6162 = !DILocation(line: 662, column: 7, scope: !6153)
!6163 = !DILocation(line: 662, column: 19, scope: !6153)
!6164 = !DILocation(line: 663, column: 1, scope: !6153)
!6165 = distinct !DISubprogram(name: "usb_get_intfdata", scope: !6, file: !6, line: 263, type: !6166, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !276)
!6166 = !DISubroutineType(types: !6167)
!6167 = !{!204, !4158}
!6168 = !DILocalVariable(name: "intf", arg: 1, scope: !6165, file: !6, line: 263, type: !4158)
!6169 = !DILocation(line: 263, column: 60, scope: !6165)
!6170 = !DILocation(line: 265, column: 26, scope: !6165)
!6171 = !DILocation(line: 265, column: 32, scope: !6165)
!6172 = !DILocation(line: 265, column: 9, scope: !6165)
!6173 = !DILocation(line: 265, column: 2, scope: !6165)
